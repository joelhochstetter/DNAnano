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
	<24.524742, 34.957535, 34.885414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272541, 35.057396, 35.179390>,  <24.121220, 35.117313, 35.355774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272541, 35.057396, 35.179390>,  <24.524742, 34.957535, 34.885414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.272541, 35.057396, 35.179390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178068, -0.875084, 0.450023,
		0.755484, 0.414610, 0.507289,
		-0.630504, 0.249653, 0.734940,
		24.083389, 35.132294, 35.399872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.756672, 34.784245, 35.517429>,  <24.524742, 34.957535, 34.885414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.756672, 34.784245, 35.517429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357079, 34.783520, 35.535450>,  <24.117323, 34.783085, 35.546265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357079, 34.783520, 35.535450>,  <24.756672, 34.784245, 35.517429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.357079, 34.783520, 35.535450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013222, -0.967018, 0.254363,
		0.043110, 0.254700, 0.966059,
		-0.998983, -0.001808, 0.045056,
		24.057384, 34.782978, 35.548965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.389305, 34.552578, 36.214466>,  <24.756672, 34.784245, 35.517429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.389305, 34.552578, 36.214466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.229883, 34.457073, 35.860256>,  <24.134230, 34.399773, 35.647732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.229883, 34.457073, 35.860256>,  <24.389305, 34.552578, 36.214466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.229883, 34.457073, 35.860256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209131, -0.963742, 0.165725,
		-0.892982, -0.119139, 0.434037,
		-0.398556, -0.238760, -0.885521,
		24.110317, 34.385445, 35.594601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.119419, 33.815819, 36.159225>,  <24.389305, 34.552578, 36.214466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.119419, 33.815819, 36.159225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.424641, 33.854305, 36.414879>,  <24.607773, 33.877396, 36.568272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.424641, 33.854305, 36.414879>,  <24.119419, 33.815819, 36.159225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.424641, 33.854305, 36.414879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126932, -0.991909, -0.002220,
		0.633751, 0.082821, -0.769091,
		0.763052, 0.096215, 0.639136,
		24.653557, 33.883171, 36.606621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.710453, 33.500835, 35.889477>,  <24.119419, 33.815819, 36.159225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.710453, 33.500835, 35.889477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676439, 33.474770, 36.287174>,  <24.656031, 33.459129, 36.525791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676439, 33.474770, 36.287174>,  <24.710453, 33.500835, 35.889477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.676439, 33.474770, 36.287174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110762, -0.991056, -0.074426,
		0.990202, -0.116453, 0.077059,
		-0.085037, -0.065161, 0.994245,
		24.650928, 33.455223, 36.585449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.037203, 33.399799, 35.313797>,  <24.710453, 33.500835, 35.889477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.037203, 33.399799, 35.313797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.317530, 33.279575, 35.572567>,  <25.485725, 33.207439, 35.727829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.317530, 33.279575, 35.572567>,  <25.037203, 33.399799, 35.313797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.317530, 33.279575, 35.572567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325339, -0.672413, -0.664842,
		0.634830, 0.676405, -0.373454,
		0.700818, -0.300562, 0.646928,
		25.527775, 33.189407, 35.766647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704165, 33.362751, 34.953098>,  <25.037203, 33.399799, 35.313797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704165, 33.362751, 34.953098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721407, 33.135460, 35.281796>,  <25.731752, 32.999084, 35.479015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721407, 33.135460, 35.281796>,  <25.704165, 33.362751, 34.953098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.721407, 33.135460, 35.281796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181349, -0.804394, -0.565741,
		0.982473, 0.173410, 0.068370,
		0.043109, -0.568224, 0.821744,
		25.734339, 32.964993, 35.528320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347075, 33.088711, 35.021851>,  <25.704165, 33.362751, 34.953098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347075, 33.088711, 35.021851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.135830, 32.854630, 35.267982>,  <26.009083, 32.714180, 35.415661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.135830, 32.854630, 35.267982>,  <26.347075, 33.088711, 35.021851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.135830, 32.854630, 35.267982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290910, -0.805456, -0.516345,
		0.797790, -0.093682, 0.595613,
		-0.528113, -0.585204, 0.615332,
		25.977396, 32.679070, 35.452583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738855, 32.520973, 35.111294>,  <26.347075, 33.088711, 35.021851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738855, 32.520973, 35.111294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385614, 32.369610, 35.222240>,  <26.173670, 32.278790, 35.288811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385614, 32.369610, 35.222240>,  <26.738855, 32.520973, 35.111294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385614, 32.369610, 35.222240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163177, -0.801992, -0.574615,
		0.439889, -0.462184, 0.769989,
		-0.883103, -0.378412, 0.277370,
		26.120684, 32.256084, 35.305450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868685, 31.893938, 34.931114>,  <26.738855, 32.520973, 35.111294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868685, 31.893938, 34.931114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482313, 31.855974, 35.027424>,  <26.250490, 31.833197, 35.085209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482313, 31.855974, 35.027424>,  <26.868685, 31.893938, 34.931114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482313, 31.855974, 35.027424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015009, -0.908225, -0.418214,
		0.258369, -0.407579, 0.875857,
		-0.965929, -0.094908, 0.240775,
		26.192533, 31.827501, 35.099655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628422, 31.290270, 35.334339>,  <26.868685, 31.893938, 34.931114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628422, 31.290270, 35.334339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306948, 31.411961, 35.129776>,  <26.114063, 31.484976, 35.007038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306948, 31.411961, 35.129776>,  <26.628422, 31.290270, 35.334339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306948, 31.411961, 35.129776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131415, -0.928950, -0.346094,
		-0.580364, -0.210944, 0.786562,
		-0.803684, 0.304227, -0.511409,
		26.065844, 31.503229, 34.976353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203529, 30.755690, 35.381454>,  <26.628422, 31.290270, 35.334339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203529, 30.755690, 35.381454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035137, 30.953222, 35.077110>,  <25.934101, 31.071741, 34.894505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035137, 30.953222, 35.077110>,  <26.203529, 30.755690, 35.381454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.035137, 30.953222, 35.077110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198105, -0.868617, -0.454158,
		-0.885174, -0.040459, 0.463497,
		-0.420976, 0.493830, -0.760862,
		25.908844, 31.101372, 34.848854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557472, 30.372164, 35.085804>,  <26.203529, 30.755690, 35.381454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.557472, 30.372164, 35.085804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665773, 30.600117, 34.775471>,  <25.730755, 30.736889, 34.589272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665773, 30.600117, 34.775471>,  <25.557472, 30.372164, 35.085804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665773, 30.600117, 34.775471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013403, -0.803631, -0.594977,
		-0.962555, 0.171491, -0.209949,
		0.270755, 0.569885, -0.775837,
		25.747000, 30.771082, 34.542721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.056074, 30.351877, 34.504566>,  <25.557472, 30.372164, 35.085804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.056074, 30.351877, 34.504566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411390, 30.445944, 34.346764>,  <25.624580, 30.502384, 34.252083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411390, 30.445944, 34.346764>,  <25.056074, 30.351877, 34.504566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.411390, 30.445944, 34.346764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200884, -0.573504, -0.794191,
		-0.413019, 0.784722, -0.462197,
		0.888291, 0.235168, -0.394507,
		25.677877, 30.516495, 34.228413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.873114, 30.424362, 33.802303>,  <25.056074, 30.351877, 34.504566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.873114, 30.424362, 33.802303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270699, 30.385101, 33.821918>,  <25.509249, 30.361546, 33.833687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270699, 30.385101, 33.821918>,  <24.873114, 30.424362, 33.802303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.270699, 30.385101, 33.821918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011898, -0.540707, -0.841127,
		0.109070, 0.835466, -0.538610,
		0.993963, -0.098150, 0.049035,
		25.568888, 30.355656, 33.836628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.127855, 30.352365, 33.128761>,  <24.873114, 30.424362, 33.802303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.127855, 30.352365, 33.128761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478325, 30.247454, 33.290516>,  <25.688606, 30.184505, 33.387569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478325, 30.247454, 33.290516>,  <25.127855, 30.352365, 33.128761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478325, 30.247454, 33.290516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226645, -0.516251, -0.825904,
		0.425383, 0.815288, -0.392881,
		0.876174, -0.262281, 0.404385,
		25.741177, 30.168770, 33.411831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.725788, 30.583746, 32.711571>,  <25.127855, 30.352365, 33.128761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.725788, 30.583746, 32.711571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.856674, 30.253859, 32.896080>,  <25.935205, 30.055927, 33.006786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.856674, 30.253859, 32.896080>,  <25.725788, 30.583746, 32.711571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.856674, 30.253859, 32.896080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082896, -0.461210, -0.883410,
		0.941307, 0.327302, -0.082549,
		0.327215, -0.824717, 0.461272,
		25.954838, 30.006443, 33.034462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.257307, 30.109503, 32.247303>,  <25.725788, 30.583746, 32.711571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.257307, 30.109503, 32.247303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153568, 29.850883, 32.534279>,  <26.091324, 29.695711, 32.706463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153568, 29.850883, 32.534279>,  <26.257307, 30.109503, 32.247303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.153568, 29.850883, 32.534279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094935, -0.756323, -0.647274,
		0.961107, -0.099759, 0.257531,
		-0.259348, -0.646548, 0.717436,
		26.075764, 29.656919, 32.749508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808422, 29.755470, 32.233128>,  <26.257307, 30.109503, 32.247303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808422, 29.755470, 32.233128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518610, 29.533573, 32.396744>,  <26.344723, 29.400434, 32.494911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518610, 29.533573, 32.396744>,  <26.808422, 29.755470, 32.233128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518610, 29.533573, 32.396744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127536, -0.691116, -0.711402,
		0.677339, -0.463267, 0.571486,
		-0.724532, -0.554745, 0.409037,
		26.301250, 29.367149, 32.519455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041912, 28.975000, 32.192783>,  <26.808422, 29.755470, 32.233128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041912, 28.975000, 32.192783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643713, 28.978287, 32.230545>,  <26.404793, 28.980259, 32.253204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643713, 28.978287, 32.230545>,  <27.041912, 28.975000, 32.192783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643713, 28.978287, 32.230545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062198, -0.808255, -0.585538,
		0.071496, -0.588775, 0.805129,
		-0.995500, 0.008214, 0.094408,
		26.345062, 28.980751, 32.258869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783985, 28.239191, 32.239799>,  <27.041912, 28.975000, 32.192783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783985, 28.239191, 32.239799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456694, 28.451790, 32.152149>,  <26.260319, 28.579350, 32.099560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456694, 28.451790, 32.152149>,  <26.783985, 28.239191, 32.239799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456694, 28.451790, 32.152149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230283, -0.652254, -0.722174,
		-0.526756, -0.540443, 0.656087,
		-0.818229, 0.531495, -0.219124,
		26.211226, 28.611238, 32.086411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098314, 27.810650, 32.393307>,  <26.783985, 28.239191, 32.239799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098314, 27.810650, 32.393307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973164, 28.089102, 32.134846>,  <25.898073, 28.256172, 31.979769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973164, 28.089102, 32.134846>,  <26.098314, 27.810650, 32.393307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.973164, 28.089102, 32.134846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419886, -0.711595, -0.563318,
		-0.851942, 0.095063, 0.514935,
		-0.312875, 0.696129, -0.646153,
		25.879301, 28.297941, 31.941000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.366703, 27.726341, 32.404362>,  <26.098314, 27.810650, 32.393307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.366703, 27.726341, 32.404362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496826, 27.853630, 32.048180>,  <25.574900, 27.930004, 31.834471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496826, 27.853630, 32.048180>,  <25.366703, 27.726341, 32.404362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.496826, 27.853630, 32.048180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550397, -0.702001, -0.451948,
		-0.768921, 0.637125, -0.053217,
		0.325306, 0.318222, -0.890455,
		25.594418, 27.949097, 31.781042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.782198, 27.619661, 32.062874>,  <25.366703, 27.726341, 32.404362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.782198, 27.619661, 32.062874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060995, 27.665939, 31.779800>,  <25.228273, 27.693707, 31.609957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060995, 27.665939, 31.779800>,  <24.782198, 27.619661, 32.062874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.060995, 27.665939, 31.779800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342159, -0.813645, -0.470009,
		-0.630181, 0.569733, -0.527519,
		0.696993, 0.115695, -0.707683,
		25.270092, 27.700647, 31.567495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.422531, 27.509624, 31.420927>,  <24.782198, 27.619661, 32.062874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.422531, 27.509624, 31.420927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.814110, 27.475464, 31.346767>,  <25.049057, 27.454967, 31.302271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.814110, 27.475464, 31.346767>,  <24.422531, 27.509624, 31.420927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.814110, 27.475464, 31.346767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157048, -0.895310, -0.416839,
		-0.130393, 0.437180, -0.889872,
		0.978945, -0.085400, -0.185401,
		25.107794, 27.449844, 31.291147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.500307, 27.291103, 30.716410>,  <24.422531, 27.509624, 31.420927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.500307, 27.291103, 30.716410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.842188, 27.189018, 30.897232>,  <25.047316, 27.127768, 31.005726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.842188, 27.189018, 30.897232>,  <24.500307, 27.291103, 30.716410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.842188, 27.189018, 30.897232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173218, -0.961107, -0.215101,
		0.489370, 0.105543, -0.865666,
		0.854700, -0.255213, 0.452055,
		25.098598, 27.112453, 31.032848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.014631, 26.832121, 30.316219>,  <24.500307, 27.291103, 30.716410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.014631, 26.832121, 30.316219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.993172, 26.731527, 30.702768>,  <24.980295, 26.671171, 30.934698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.993172, 26.731527, 30.702768>,  <25.014631, 26.832121, 30.316219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.993172, 26.731527, 30.702768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283935, -0.923978, -0.256214,
		0.957341, -0.288133, -0.021834,
		-0.053649, -0.251484, 0.966374,
		24.977077, 26.656082, 30.992680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.314672, 26.126175, 30.317711>,  <25.014631, 26.832121, 30.316219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.314672, 26.126175, 30.317711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081310, 26.203476, 30.633251>,  <24.941292, 26.249857, 30.822577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081310, 26.203476, 30.633251>,  <25.314672, 26.126175, 30.317711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081310, 26.203476, 30.633251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372290, -0.926860, -0.048271,
		0.721828, -0.321843, 0.612684,
		-0.583408, 0.193253, 0.788853,
		24.906288, 26.261452, 30.869907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.431814, 25.723753, 31.041586>,  <25.314672, 26.126175, 30.317711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.431814, 25.723753, 31.041586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.045538, 25.666712, 30.954771>,  <24.813772, 25.632486, 30.902681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.045538, 25.666712, 30.954771>,  <25.431814, 25.723753, 31.041586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.045538, 25.666712, 30.954771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175434, -0.974438, -0.140333,
		-0.191477, -0.173594, 0.966024,
		-0.965691, -0.142603, -0.217037,
		24.755831, 25.623932, 30.889660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.076275, 24.989317, 31.002550>,  <25.431814, 25.723753, 31.041586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.076275, 24.989317, 31.002550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.726503, 25.019634, 30.810871>,  <24.516640, 25.037825, 30.695864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.726503, 25.019634, 30.810871>,  <25.076275, 24.989317, 31.002550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.726503, 25.019634, 30.810871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321369, -0.649454, -0.689152,
		-0.363449, -0.756614, 0.543545,
		-0.874430, 0.075793, -0.479196,
		24.464174, 25.042372, 30.667112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.666546, 24.558697, 30.660263>,  <25.076275, 24.989317, 31.002550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.666546, 24.558697, 30.660263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.792284, 24.240414, 30.867353>,  <25.867727, 24.049444, 30.991608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.792284, 24.240414, 30.867353>,  <25.666546, 24.558697, 30.660263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.792284, 24.240414, 30.867353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564624, 0.595131, 0.571856,
		-0.763144, 0.112560, 0.636351,
		0.314344, -0.795707, 0.517725,
		25.886587, 24.001701, 31.022671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.516495, 24.608284, 31.418650>,  <25.666546, 24.558697, 30.660263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.516495, 24.608284, 31.418650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851856, 24.392841, 31.385229>,  <26.053074, 24.263577, 31.365177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851856, 24.392841, 31.385229>,  <25.516495, 24.608284, 31.418650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851856, 24.392841, 31.385229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453481, 0.604271, 0.655142,
		-0.302376, -0.587163, 0.750871,
		0.838405, -0.538606, -0.083550,
		26.103378, 24.231260, 31.360165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.888515, 24.482599, 32.058960>,  <25.516495, 24.608284, 31.418650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.888515, 24.482599, 32.058960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164518, 24.489708, 31.769526>,  <26.330120, 24.493973, 31.595865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164518, 24.489708, 31.769526>,  <25.888515, 24.482599, 32.058960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164518, 24.489708, 31.769526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537933, 0.656273, 0.529089,
		0.484269, -0.754315, 0.443275,
		0.690009, 0.017769, -0.723583,
		26.371521, 24.495039, 31.552450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549919, 24.372187, 32.328308>,  <25.888515, 24.482599, 32.058960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549919, 24.372187, 32.328308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609062, 24.596092, 32.002167>,  <26.644548, 24.730436, 31.806482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609062, 24.596092, 32.002167>,  <26.549919, 24.372187, 32.328308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609062, 24.596092, 32.002167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414582, 0.713406, 0.564955,
		0.897919, -0.421565, -0.126585,
		0.147858, 0.559764, -0.815354,
		26.653419, 24.764021, 31.757561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238926, 24.431065, 32.433136>,  <26.549919, 24.372187, 32.328308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238926, 24.431065, 32.433136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029655, 24.711208, 32.238903>,  <26.904093, 24.879293, 32.122364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029655, 24.711208, 32.238903>,  <27.238926, 24.431065, 32.433136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029655, 24.711208, 32.238903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236151, 0.666603, 0.707018,
		0.818853, 0.255225, -0.514140,
		-0.523176, 0.700358, -0.485578,
		26.872704, 24.921316, 32.093231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582777, 25.065691, 32.674320>,  <27.238926, 24.431065, 32.433136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582777, 25.065691, 32.674320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231464, 25.196802, 32.535076>,  <27.020678, 25.275469, 32.451530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231464, 25.196802, 32.535076>,  <27.582777, 25.065691, 32.674320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231464, 25.196802, 32.535076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009993, 0.715306, 0.698740,
		0.478038, 0.617169, -0.624965,
		-0.878282, 0.327779, -0.348111,
		26.967979, 25.295135, 32.430641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716501, 25.715666, 32.580090>,  <27.582777, 25.065691, 32.674320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716501, 25.715666, 32.580090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319353, 25.760124, 32.597332>,  <27.081064, 25.786798, 32.607677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319353, 25.760124, 32.597332>,  <27.716501, 25.715666, 32.580090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319353, 25.760124, 32.597332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110257, 0.718620, 0.686607,
		0.045334, 0.686464, -0.725750,
		-0.992869, 0.111145, 0.043110,
		27.021492, 25.793468, 32.610264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591753, 26.504709, 32.538769>,  <27.716501, 25.715666, 32.580090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591753, 26.504709, 32.538769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275429, 26.334789, 32.715027>,  <27.085634, 26.232838, 32.820782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275429, 26.334789, 32.715027>,  <27.591753, 26.504709, 32.538769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275429, 26.334789, 32.715027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053261, 0.669439, 0.740956,
		-0.609742, 0.609423, -0.506773,
		-0.790808, -0.424801, 0.440643,
		27.038187, 26.207350, 32.847221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.256248, 27.036613, 32.850929>,  <27.591753, 26.504709, 32.538769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.256248, 27.036613, 32.850929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.073702, 26.742996, 33.052090>,  <26.964174, 26.566826, 33.172787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.073702, 26.742996, 33.052090>,  <27.256248, 27.036613, 32.850929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.073702, 26.742996, 33.052090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006691, 0.562343, 0.826877,
		-0.889766, 0.380724, -0.251724,
		-0.456367, -0.734043, 0.502901,
		26.936792, 26.522783, 33.202961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673893, 27.362133, 33.033344>,  <27.256248, 27.036613, 32.850929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673893, 27.362133, 33.033344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720676, 27.044916, 33.272476>,  <26.748747, 26.854586, 33.415955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720676, 27.044916, 33.272476>,  <26.673893, 27.362133, 33.033344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720676, 27.044916, 33.272476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129900, 0.584579, 0.800871,
		-0.984605, -0.171329, -0.034643,
		0.116961, -0.793041, 0.597835,
		26.755764, 26.807003, 33.451828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177963, 27.386948, 33.494305>,  <26.673893, 27.362133, 33.033344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177963, 27.386948, 33.494305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458803, 27.153616, 33.657661>,  <26.627308, 27.013617, 33.755676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458803, 27.153616, 33.657661>,  <26.177963, 27.386948, 33.494305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.458803, 27.153616, 33.657661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089690, 0.496505, 0.863388,
		-0.706407, -0.642813, 0.296278,
		0.702101, -0.583330, 0.408388,
		26.669434, 26.978617, 33.780178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956469, 27.248880, 34.193550>,  <26.177963, 27.386948, 33.494305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956469, 27.248880, 34.193550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348345, 27.168928, 34.187157>,  <26.583471, 27.120956, 34.183319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348345, 27.168928, 34.187157>,  <25.956469, 27.248880, 34.193550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.348345, 27.168928, 34.187157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100333, 0.419639, 0.902129,
		-0.173610, -0.885410, 0.431171,
		0.979690, -0.199880, -0.015982,
		26.642252, 27.108965, 34.182362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061789, 27.153927, 34.834045>,  <25.956469, 27.248880, 34.193550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061789, 27.153927, 34.834045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431086, 27.213224, 34.692257>,  <26.652664, 27.248802, 34.607185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431086, 27.213224, 34.692257>,  <26.061789, 27.153927, 34.834045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431086, 27.213224, 34.692257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247860, 0.475143, 0.844278,
		0.293581, -0.867331, 0.401929,
		0.923242, 0.148242, -0.354470,
		26.708057, 27.257696, 34.585915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581623, 26.904823, 35.317211>,  <26.061789, 27.153927, 34.834045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.581623, 26.904823, 35.317211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749027, 27.187454, 35.088966>,  <26.849470, 27.357033, 34.952019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749027, 27.187454, 35.088966>,  <26.581623, 26.904823, 35.317211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749027, 27.187454, 35.088966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256937, 0.510497, 0.820595,
		0.871109, -0.490039, 0.032102,
		0.418511, 0.706580, -0.570608,
		26.874580, 27.399427, 34.917786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165602, 27.149588, 35.721031>,  <26.581623, 26.904823, 35.317211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165602, 27.149588, 35.721031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111538, 27.431484, 35.442444>,  <27.079100, 27.600622, 35.275291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111538, 27.431484, 35.442444>,  <27.165602, 27.149588, 35.721031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111538, 27.431484, 35.442444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220200, 0.706706, 0.672368,
		0.966046, -0.062487, -0.250701,
		-0.135158, 0.704743, -0.696470,
		27.070992, 27.642906, 35.233501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810448, 27.515417, 35.554947>,  <27.165602, 27.149588, 35.721031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810448, 27.515417, 35.554947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492216, 27.749489, 35.492180>,  <27.301277, 27.889931, 35.454521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492216, 27.749489, 35.492180>,  <27.810448, 27.515417, 35.554947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492216, 27.749489, 35.492180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346260, 0.651708, 0.674819,
		0.497151, 0.482539, -0.721109,
		-0.795579, 0.585178, -0.156914,
		27.253542, 27.925041, 35.445107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105274, 28.197933, 35.616264>,  <27.810448, 27.515417, 35.554947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105274, 28.197933, 35.616264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715664, 28.281101, 35.580395>,  <27.481897, 28.331001, 35.558872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715664, 28.281101, 35.580395>,  <28.105274, 28.197933, 35.616264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715664, 28.281101, 35.580395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155145, 0.901270, 0.404526,
		0.164932, 0.380106, -0.910119,
		-0.974026, 0.207920, -0.089677,
		27.423456, 28.343477, 35.553493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936924, 28.829933, 35.176277>,  <28.105274, 28.197933, 35.616264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936924, 28.829933, 35.176277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601019, 28.812256, 35.392738>,  <27.399475, 28.801649, 35.522614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601019, 28.812256, 35.392738>,  <27.936924, 28.829933, 35.176277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601019, 28.812256, 35.392738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114442, 0.959883, 0.255984,
		-0.530756, 0.276896, -0.801016,
		-0.839763, -0.044195, 0.541152,
		27.349091, 28.798998, 35.555084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857935, 29.471045, 35.286617>,  <27.936924, 28.829933, 35.176277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857935, 29.471045, 35.286617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.590652, 29.308758, 35.536060>,  <27.430283, 29.211386, 35.685726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.590652, 29.308758, 35.536060>,  <27.857935, 29.471045, 35.286617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590652, 29.308758, 35.536060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163124, 0.897718, 0.409260,
		-0.725872, 0.171744, -0.666044,
		-0.668207, -0.405718, 0.623612,
		27.390190, 29.187042, 35.723145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380136, 29.997828, 35.431606>,  <27.857935, 29.471045, 35.286617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380136, 29.997828, 35.431606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316307, 29.759985, 35.746815>,  <27.278009, 29.617279, 35.935940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316307, 29.759985, 35.746815>,  <27.380136, 29.997828, 35.431606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316307, 29.759985, 35.746815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075854, 0.803276, 0.590757,
		-0.984267, 0.034495, -0.173286,
		-0.159575, -0.594607, 0.788022,
		27.268435, 29.581602, 35.983223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.788361, 30.294926, 35.757030>,  <27.380136, 29.997828, 35.431606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.788361, 30.294926, 35.757030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979742, 30.081612, 36.036083>,  <27.094570, 29.953623, 36.203514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979742, 30.081612, 36.036083>,  <26.788361, 30.294926, 35.757030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979742, 30.081612, 36.036083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051356, 0.810102, 0.584035,
		-0.876611, -0.243605, 0.414982,
		0.478451, -0.533283, 0.697634,
		27.123278, 29.921627, 36.245373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442019, 30.447674, 36.299122>,  <26.788361, 30.294926, 35.757030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442019, 30.447674, 36.299122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791899, 30.305136, 36.430527>,  <27.001827, 30.219612, 36.509369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791899, 30.305136, 36.430527>,  <26.442019, 30.447674, 36.299122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791899, 30.305136, 36.430527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053934, 0.745164, 0.664697,
		-0.481658, -0.563691, 0.671013,
		0.874698, -0.356347, 0.328512,
		27.054308, 30.198231, 36.529079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353912, 30.653023, 37.092773>,  <26.442019, 30.447674, 36.299122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353912, 30.653023, 37.092773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731638, 30.578171, 36.984509>,  <26.958273, 30.533260, 36.919552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731638, 30.578171, 36.984509>,  <26.353912, 30.653023, 37.092773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731638, 30.578171, 36.984509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319616, 0.717174, 0.619280,
		0.078223, -0.671301, 0.737046,
		0.944313, -0.187130, -0.270658,
		27.014933, 30.522032, 36.903313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792198, 30.577354, 37.719528>,  <26.353912, 30.653023, 37.092773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792198, 30.577354, 37.719528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035400, 30.671022, 37.416084>,  <27.181322, 30.727224, 37.234016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035400, 30.671022, 37.416084>,  <26.792198, 30.577354, 37.719528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.035400, 30.671022, 37.416084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305699, 0.812789, 0.495905,
		0.732717, -0.533421, 0.422597,
		0.608009, 0.234170, -0.758610,
		27.217802, 30.741274, 37.188499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253311, 30.848818, 38.123341>,  <26.792198, 30.577354, 37.719528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253311, 30.848818, 38.123341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307854, 30.968510, 37.745586>,  <27.340580, 31.040325, 37.518932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307854, 30.968510, 37.745586>,  <27.253311, 30.848818, 38.123341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307854, 30.968510, 37.745586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322288, 0.888035, 0.327910,
		0.936770, -0.349078, 0.024651,
		0.136356, 0.299231, -0.944387,
		27.348761, 31.058279, 37.462269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978697, 31.022318, 38.100761>,  <27.253311, 30.848818, 38.123341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978697, 31.022318, 38.100761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772243, 31.216497, 37.818501>,  <27.648371, 31.333004, 37.649143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772243, 31.216497, 37.818501>,  <27.978697, 31.022318, 38.100761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772243, 31.216497, 37.818501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279609, 0.874233, 0.396907,
		0.809584, 0.007550, -0.586956,
		-0.516133, 0.485448, -0.705654,
		27.617403, 31.362131, 37.606804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396481, 31.587364, 37.899975>,  <27.978697, 31.022318, 38.100761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396481, 31.587364, 37.899975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028179, 31.711615, 37.805550>,  <27.807198, 31.786165, 37.748894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028179, 31.711615, 37.805550>,  <28.396481, 31.587364, 37.899975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028179, 31.711615, 37.805550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166357, 0.859881, 0.482628,
		0.352899, 0.405111, -0.843414,
		-0.920754, 0.310627, -0.236058,
		27.751953, 31.804802, 37.734734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491583, 32.244579, 37.881844>,  <28.396481, 31.587364, 37.899975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491583, 32.244579, 37.881844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093914, 32.213463, 37.911705>,  <27.855312, 32.194794, 37.929623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093914, 32.213463, 37.911705>,  <28.491583, 32.244579, 37.881844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093914, 32.213463, 37.911705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024505, 0.837331, 0.546147,
		-0.104998, 0.541134, -0.834356,
		-0.994171, -0.077791, 0.074657,
		27.795662, 32.190125, 37.934101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762482, 32.454311, 37.244976>,  <28.491583, 32.244579, 37.881844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762482, 32.454311, 37.244976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583136, 32.798859, 37.149467>,  <28.475529, 33.005589, 37.092163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583136, 32.798859, 37.149467>,  <28.762482, 32.454311, 37.244976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583136, 32.798859, 37.149467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683782, -0.502574, -0.529019,
		-0.575684, -0.073921, 0.814324,
		-0.448364, 0.861368, -0.238778,
		28.448626, 33.057270, 37.077835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330595, 32.745651, 37.702518>,  <28.762482, 32.454311, 37.244976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330595, 32.745651, 37.702518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580378, 32.482147, 37.534664>,  <29.730247, 32.324043, 37.433952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580378, 32.482147, 37.534664>,  <29.330595, 32.745651, 37.702518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580378, 32.482147, 37.534664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620911, 0.744621, -0.244966,
		0.473841, -0.107584, 0.874014,
		0.624455, -0.658760, -0.419632,
		29.767714, 32.284519, 37.408775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930620, 32.954792, 37.935421>,  <29.330595, 32.745651, 37.702518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930620, 32.954792, 37.935421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999136, 32.748634, 37.599556>,  <30.040245, 32.624939, 37.398037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999136, 32.748634, 37.599556>,  <29.930620, 32.954792, 37.935421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999136, 32.748634, 37.599556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714452, 0.651818, -0.254347,
		0.678394, -0.556329, 0.479874,
		0.171290, -0.515395, -0.839660,
		30.050524, 32.594017, 37.347656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713631, 32.915001, 37.813755>,  <29.930620, 32.954792, 37.935421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713631, 32.915001, 37.813755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535311, 32.871216, 37.458389>,  <30.428320, 32.844944, 37.245171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535311, 32.871216, 37.458389>,  <30.713631, 32.915001, 37.813755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535311, 32.871216, 37.458389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631350, 0.665123, -0.398758,
		0.634556, -0.738666, -0.227400,
		-0.445799, -0.109465, -0.888415,
		30.401571, 32.838375, 37.191864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286322, 32.840885, 37.354614>,  <30.713631, 32.915001, 37.813755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286322, 32.840885, 37.354614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949228, 32.989590, 37.198872>,  <30.746973, 33.078812, 37.105427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949228, 32.989590, 37.198872>,  <31.286322, 32.840885, 37.354614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949228, 32.989590, 37.198872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516060, 0.763789, -0.387696,
		0.153253, -0.527653, -0.835521,
		-0.842731, 0.371763, -0.389353,
		30.696409, 33.101120, 37.082066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524979, 32.584915, 37.974499>,  <31.286322, 32.840885, 37.354614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524979, 32.584915, 37.974499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683746, 32.218224, 37.992691>,  <31.779007, 31.998209, 38.003609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683746, 32.218224, 37.992691>,  <31.524979, 32.584915, 37.974499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683746, 32.218224, 37.992691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368361, 0.204486, 0.906915,
		-0.840694, -0.343217, 0.418850,
		0.396918, -0.916727, 0.045483,
		31.802822, 31.943205, 38.006336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446102, 32.280609, 38.723816>,  <31.524979, 32.584915, 37.974499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446102, 32.280609, 38.723816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738922, 32.082821, 38.536369>,  <31.914614, 31.964148, 38.423901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738922, 32.082821, 38.536369>,  <31.446102, 32.280609, 38.723816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738922, 32.082821, 38.536369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551719, 0.026799, 0.833599,
		-0.399634, -0.868780, 0.292428,
		0.732051, -0.494473, -0.468613,
		31.958538, 31.934479, 38.395786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640100, 31.849813, 39.304165>,  <31.446102, 32.280609, 38.723816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640100, 31.849813, 39.304165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938765, 31.834600, 39.038517>,  <32.117962, 31.825472, 38.879128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938765, 31.834600, 39.038517>,  <31.640100, 31.849813, 39.304165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938765, 31.834600, 39.038517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665189, 0.049929, 0.745004,
		0.004821, -0.998028, 0.062582,
		0.746659, -0.038037, -0.664119,
		32.162762, 31.823191, 38.839283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075104, 31.277020, 39.418636>,  <31.640100, 31.849813, 39.304165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075104, 31.277020, 39.418636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326759, 31.524918, 39.230976>,  <32.477753, 31.673656, 39.118382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326759, 31.524918, 39.230976>,  <32.075104, 31.277020, 39.418636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326759, 31.524918, 39.230976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519222, 0.114088, 0.846990,
		0.578445, -0.776464, -0.250010,
		0.629134, 0.619748, -0.469151,
		32.515499, 31.710842, 39.090229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766647, 30.948341, 39.501869>,  <32.075104, 31.277020, 39.418636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766647, 30.948341, 39.501869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816860, 31.340219, 39.439335>,  <32.846989, 31.575346, 39.401814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816860, 31.340219, 39.439335>,  <32.766647, 30.948341, 39.501869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816860, 31.340219, 39.439335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494085, 0.074913, 0.866181,
		0.860304, -0.185971, -0.474649,
		0.125528, 0.979695, -0.156334,
		32.854519, 31.634129, 39.392433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451214, 31.004446, 39.742615>,  <32.766647, 30.948341, 39.501869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451214, 31.004446, 39.742615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351940, 31.391584, 39.726227>,  <33.292374, 31.623867, 39.716393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351940, 31.391584, 39.726227>,  <33.451214, 31.004446, 39.742615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351940, 31.391584, 39.726227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469055, 0.157074, 0.869089,
		0.847579, 0.196478, -0.492956,
		-0.248187, 0.967845, -0.040973,
		33.277485, 31.681938, 39.713936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048054, 31.399399, 39.943138>,  <33.451214, 31.004446, 39.742615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048054, 31.399399, 39.943138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730209, 31.638519, 39.985531>,  <33.539505, 31.781992, 40.010967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730209, 31.638519, 39.985531>,  <34.048054, 31.399399, 39.943138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730209, 31.638519, 39.985531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282954, 0.210192, 0.935819,
		0.537157, 0.773597, -0.336170,
		-0.794607, 0.597802, 0.105986,
		33.491829, 31.817860, 40.017326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308594, 31.973125, 40.334538>,  <34.048054, 31.399399, 39.943138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308594, 31.973125, 40.334538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910313, 31.957863, 40.368279>,  <33.671345, 31.948706, 40.388523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910313, 31.957863, 40.368279>,  <34.308594, 31.973125, 40.334538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910313, 31.957863, 40.368279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066436, 0.340099, 0.938040,
		-0.064483, 0.939615, -0.336103,
		-0.995705, -0.038158, 0.084355,
		33.611603, 31.946415, 40.393585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128754, 32.615177, 40.673878>,  <34.308594, 31.973125, 40.334538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128754, 32.615177, 40.673878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824963, 32.360386, 40.726719>,  <33.642689, 32.207512, 40.758423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824963, 32.360386, 40.726719>,  <34.128754, 32.615177, 40.673878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824963, 32.360386, 40.726719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062129, 0.273163, 0.959959,
		-0.647557, 0.720862, -0.247036,
		-0.759480, -0.636977, 0.132102,
		33.597118, 32.169292, 40.766350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894897, 32.771442, 41.351635>,  <34.128754, 32.615177, 40.673878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894897, 32.771442, 41.351635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653812, 32.458996, 41.286400>,  <33.509159, 32.271530, 41.247261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653812, 32.458996, 41.286400>,  <33.894897, 32.771442, 41.351635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653812, 32.458996, 41.286400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115319, -0.116969, 0.986418,
		-0.789578, 0.613337, -0.019578,
		-0.602717, -0.781112, -0.163086,
		33.472996, 32.224663, 41.237473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314831, 32.897339, 41.654179>,  <33.894897, 32.771442, 41.351635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314831, 32.897339, 41.654179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414455, 32.510624, 41.631222>,  <33.474232, 32.278595, 41.617447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414455, 32.510624, 41.631222>,  <33.314831, 32.897339, 41.654179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414455, 32.510624, 41.631222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059761, -0.074490, 0.995430,
		-0.966642, -0.244494, -0.076328,
		0.249062, -0.966785, -0.057394,
		33.489174, 32.220589, 41.614002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025211, 32.671272, 42.174725>,  <33.314831, 32.897339, 41.654179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025211, 32.671272, 42.174725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278904, 32.369122, 42.108810>,  <33.431122, 32.187832, 42.069260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278904, 32.369122, 42.108810>,  <33.025211, 32.671272, 42.174725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278904, 32.369122, 42.108810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013743, -0.202094, 0.979270,
		-0.773019, -0.623351, -0.117794,
		0.634234, -0.755375, -0.164789,
		33.469173, 32.142509, 42.059372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784817, 32.166107, 42.552826>,  <33.025211, 32.671272, 42.174725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784817, 32.166107, 42.552826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163731, 32.050846, 42.496807>,  <33.391079, 31.981688, 42.463196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163731, 32.050846, 42.496807>,  <32.784817, 32.166107, 42.552826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163731, 32.050846, 42.496807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034732, -0.342191, 0.938988,
		-0.318490, -0.894358, -0.314147,
		0.947290, -0.288147, -0.140047,
		33.447918, 31.964399, 42.454792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806076, 31.472628, 42.773083>,  <32.784817, 32.166107, 42.552826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806076, 31.472628, 42.773083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184406, 31.601538, 42.788837>,  <33.411404, 31.678885, 42.798290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184406, 31.601538, 42.788837>,  <32.806076, 31.472628, 42.773083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184406, 31.601538, 42.788837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096420, -0.394658, 0.913755,
		0.310029, -0.860455, -0.404352,
		0.945825, 0.322278, 0.039390,
		33.468155, 31.698221, 42.800655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175610, 30.931034, 42.985023>,  <32.806076, 31.472628, 42.773083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175610, 30.931034, 42.985023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417503, 31.243738, 43.045872>,  <33.562641, 31.431360, 43.082378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417503, 31.243738, 43.045872>,  <33.175610, 30.931034, 42.985023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417503, 31.243738, 43.045872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132897, -0.287376, 0.948553,
		0.785258, -0.553411, -0.277681,
		0.604738, 0.781762, 0.152118,
		33.598927, 31.478266, 43.091507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730225, 30.623186, 43.214603>,  <33.175610, 30.931034, 42.985023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730225, 30.623186, 43.214603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753391, 31.004519, 43.333134>,  <33.767292, 31.233318, 43.404251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753391, 31.004519, 43.333134>,  <33.730225, 30.623186, 43.214603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753391, 31.004519, 43.333134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300682, -0.299696, 0.905413,
		0.951964, 0.036660, -0.304006,
		0.057916, 0.953330, 0.296323,
		33.770767, 31.290518, 43.422031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364029, 30.639275, 43.535393>,  <33.730225, 30.623186, 43.214603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364029, 30.639275, 43.535393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161205, 30.961788, 43.657238>,  <34.039509, 31.155296, 43.730347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161205, 30.961788, 43.657238>,  <34.364029, 30.639275, 43.535393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161205, 30.961788, 43.657238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303252, -0.163934, 0.938703,
		0.806800, 0.568357, -0.161383,
		-0.507063, 0.806285, 0.304617,
		34.009087, 31.203674, 43.748623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751362, 31.029280, 43.981689>,  <34.364029, 30.639275, 43.535393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751362, 31.029280, 43.981689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380936, 31.131968, 44.092319>,  <34.158680, 31.193581, 44.158695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380936, 31.131968, 44.092319>,  <34.751362, 31.029280, 43.981689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380936, 31.131968, 44.092319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228113, -0.202994, 0.952238,
		0.300603, 0.944927, 0.129425,
		-0.926068, 0.256722, 0.276571,
		34.103115, 31.208984, 44.175289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797626, 31.470999, 44.508945>,  <34.751362, 31.029280, 43.981689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797626, 31.470999, 44.508945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419685, 31.354939, 44.569706>,  <34.192921, 31.285301, 44.606163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419685, 31.354939, 44.569706>,  <34.797626, 31.470999, 44.508945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419685, 31.354939, 44.569706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169482, -0.036300, 0.984865,
		-0.280246, 0.956292, 0.083474,
		-0.944848, -0.290152, 0.151901,
		34.136230, 31.267893, 44.615276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532711, 31.964695, 45.108383>,  <34.797626, 31.470999, 44.508945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532711, 31.964695, 45.108383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304432, 31.636623, 45.092339>,  <34.167465, 31.439779, 45.082710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304432, 31.636623, 45.092339>,  <34.532711, 31.964695, 45.108383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304432, 31.636623, 45.092339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107042, -0.122738, 0.986649,
		-0.814155, 0.558783, 0.157840,
		-0.570696, -0.820181, -0.040115,
		34.133224, 31.390570, 45.080303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129005, 31.986792, 45.630547>,  <34.532711, 31.964695, 45.108383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129005, 31.986792, 45.630547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105976, 31.598879, 45.535713>,  <34.092159, 31.366131, 45.478813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105976, 31.598879, 45.535713>,  <34.129005, 31.986792, 45.630547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105976, 31.598879, 45.535713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216527, -0.243956, 0.945305,
		-0.974578, 0.003085, 0.224028,
		-0.057569, -0.969782, -0.237086,
		34.088707, 31.307945, 45.464588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670292, 31.636559, 46.146870>,  <34.129005, 31.986792, 45.630547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670292, 31.636559, 46.146870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909405, 31.355238, 45.992973>,  <34.052872, 31.186445, 45.900635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909405, 31.355238, 45.992973>,  <33.670292, 31.636559, 46.146870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909405, 31.355238, 45.992973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103930, -0.407891, 0.907096,
		-0.794894, -0.582231, -0.170735,
		0.597781, -0.703301, -0.384741,
		34.088737, 31.144247, 45.877552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603626, 31.015306, 46.563591>,  <33.670292, 31.636559, 46.146870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603626, 31.015306, 46.563591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952137, 30.940527, 46.382072>,  <34.161243, 30.895658, 46.273159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952137, 30.940527, 46.382072>,  <33.603626, 31.015306, 46.563591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952137, 30.940527, 46.382072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333392, -0.453110, 0.826765,
		-0.360186, -0.871631, -0.332454,
		0.871273, -0.186951, -0.453799,
		34.213520, 30.884441, 46.245934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736404, 30.335430, 46.723083>,  <33.603626, 31.015306, 46.563591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736404, 30.335430, 46.723083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091499, 30.487341, 46.619011>,  <34.304554, 30.578487, 46.556568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091499, 30.487341, 46.619011>,  <33.736404, 30.335430, 46.723083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091499, 30.487341, 46.619011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432405, -0.493946, 0.754350,
		0.157968, -0.782168, -0.602711,
		0.887735, 0.379778, -0.260185,
		34.357819, 30.601274, 46.540955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188538, 29.747463, 46.778233>,  <33.736404, 30.335430, 46.723083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188538, 29.747463, 46.778233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415634, 30.074875, 46.813286>,  <34.551891, 30.271322, 46.834316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415634, 30.074875, 46.813286>,  <34.188538, 29.747463, 46.778233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415634, 30.074875, 46.813286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443669, -0.393914, 0.804978,
		0.693415, -0.418143, -0.586798,
		0.567743, 0.818528, 0.087629,
		34.585957, 30.320433, 46.839573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815784, 29.471455, 46.965820>,  <34.188538, 29.747463, 46.778233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815784, 29.471455, 46.965820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884655, 29.857246, 47.045959>,  <34.925976, 30.088720, 47.094044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884655, 29.857246, 47.045959>,  <34.815784, 29.471455, 46.965820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884655, 29.857246, 47.045959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507118, -0.261146, 0.821361,
		0.844505, -0.039815, -0.534066,
		0.172172, 0.964478, 0.200349,
		34.936306, 30.146589, 47.106064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449451, 29.502853, 47.267639>,  <34.815784, 29.471455, 46.965820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449451, 29.502853, 47.267639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246002, 29.827641, 47.382191>,  <35.123932, 30.022512, 47.450920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246002, 29.827641, 47.382191>,  <35.449451, 29.502853, 47.267639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246002, 29.827641, 47.382191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264246, -0.169352, 0.949470,
		0.819439, 0.558594, -0.128424,
		-0.508620, 0.811968, 0.286380,
		35.093414, 30.071232, 47.468105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884361, 30.074202, 47.638798>,  <35.449451, 29.502853, 47.267639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884361, 30.074202, 47.638798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499992, 30.096140, 47.747326>,  <35.269371, 30.109303, 47.812443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499992, 30.096140, 47.747326>,  <35.884361, 30.074202, 47.638798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499992, 30.096140, 47.747326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268170, -0.058494, 0.961594,
		0.068609, 0.996780, 0.041500,
		-0.960925, 0.054845, 0.271320,
		35.211716, 30.112593, 47.828720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798157, 30.572815, 48.242470>,  <35.884361, 30.074202, 47.638798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798157, 30.572815, 48.242470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475834, 30.336021, 48.236469>,  <35.282440, 30.193945, 48.232868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475834, 30.336021, 48.236469>,  <35.798157, 30.572815, 48.242470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475834, 30.336021, 48.236469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058837, -0.105247, 0.992704,
		-0.589241, 0.799050, 0.119640,
		-0.805812, -0.591982, -0.015002,
		35.234089, 30.158426, 48.231968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345757, 30.794424, 48.704720>,  <35.798157, 30.572815, 48.242470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345757, 30.794424, 48.704720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265636, 30.405558, 48.656094>,  <35.217564, 30.172237, 48.626919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265636, 30.405558, 48.656094>,  <35.345757, 30.794424, 48.704720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265636, 30.405558, 48.656094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105221, -0.144704, 0.983865,
		-0.974068, 0.184278, 0.131276,
		-0.200301, -0.972164, -0.121561,
		35.205547, 30.113909, 48.619625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160225, 30.634260, 49.364727>,  <35.345757, 30.794424, 48.704720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160225, 30.634260, 49.364727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122856, 30.272652, 49.197865>,  <35.100433, 30.055687, 49.097748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122856, 30.272652, 49.197865>,  <35.160225, 30.634260, 49.364727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122856, 30.272652, 49.197865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011624, -0.419951, 0.907472,
		-0.995558, 0.079933, 0.049742,
		-0.093426, -0.904020, -0.417157,
		35.094830, 30.001446, 49.072716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623096, 30.205711, 49.736572>,  <35.160225, 30.634260, 49.364727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623096, 30.205711, 49.736572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842773, 29.947229, 49.524609>,  <34.974579, 29.792141, 49.397430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842773, 29.947229, 49.524609>,  <34.623096, 30.205711, 49.736572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842773, 29.947229, 49.524609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328241, -0.416334, 0.847894,
		-0.768532, -0.639598, -0.016538,
		0.549196, -0.646206, -0.529908,
		35.007534, 29.753368, 49.365635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507893, 29.563257, 49.934967>,  <34.623096, 30.205711, 49.736572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507893, 29.563257, 49.934967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877876, 29.547228, 49.783791>,  <35.099869, 29.537611, 49.693085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877876, 29.547228, 49.783791>,  <34.507893, 29.563257, 49.934967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877876, 29.547228, 49.783791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332416, -0.396769, 0.855613,
		-0.184241, -0.917043, -0.353676,
		0.924962, -0.040071, -0.377941,
		35.155365, 29.535206, 49.670410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825188, 28.883223, 50.181160>,  <34.507893, 29.563257, 49.934967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825188, 28.883223, 50.181160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141174, 29.090679, 50.050343>,  <35.330769, 29.215153, 49.971851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141174, 29.090679, 50.050343>,  <34.825188, 28.883223, 50.181160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141174, 29.090679, 50.050343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587350, -0.487010, 0.646406,
		0.175980, -0.702731, -0.689348,
		0.789969, 0.518643, -0.327045,
		35.378166, 29.246271, 49.952229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479023, 28.440645, 50.245316>,  <34.825188, 28.883223, 50.181160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479023, 28.440645, 50.245316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645500, 28.802282, 50.206532>,  <35.745388, 29.019264, 50.183262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645500, 28.802282, 50.206532>,  <35.479023, 28.440645, 50.245316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645500, 28.802282, 50.206532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761313, -0.288173, 0.580826,
		0.497179, -0.315552, -0.808233,
		0.416192, 0.904093, -0.096960,
		35.770359, 29.073509, 50.177444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147758, 28.267937, 50.164261>,  <35.479023, 28.440645, 50.245316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147758, 28.267937, 50.164261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145428, 28.653622, 50.270287>,  <36.144028, 28.885033, 50.333900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145428, 28.653622, 50.270287>,  <36.147758, 28.267937, 50.164261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145428, 28.653622, 50.270287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701828, -0.184870, 0.687939,
		0.712322, 0.190037, -0.675635,
		-0.005830, 0.964214, 0.265061,
		36.143681, 28.942886, 50.349804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855236, 28.544329, 50.246006>,  <36.147758, 28.267937, 50.164261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855236, 28.544329, 50.246006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634521, 28.787834, 50.474022>,  <36.502094, 28.933937, 50.610832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634521, 28.787834, 50.474022>,  <36.855236, 28.544329, 50.246006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634521, 28.787834, 50.474022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556034, -0.240894, 0.795485,
		0.621580, 0.755896, -0.205571,
		-0.551783, 0.608762, 0.570039,
		36.468987, 28.970463, 50.645035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329208, 29.069757, 50.552528>,  <36.855236, 28.544329, 50.246006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329208, 29.069757, 50.552528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994953, 29.006531, 50.762943>,  <36.794399, 28.968596, 50.889194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994953, 29.006531, 50.762943>,  <37.329208, 29.069757, 50.552528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994953, 29.006531, 50.762943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549069, -0.214092, 0.807891,
		-0.015078, 0.963940, 0.265692,
		-0.835641, -0.158065, 0.526041,
		36.744263, 28.959112, 50.920757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532143, 29.385277, 51.146873>,  <37.329208, 29.069757, 50.552528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532143, 29.385277, 51.146873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204502, 29.178514, 51.246376>,  <37.007919, 29.054457, 51.306080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204502, 29.178514, 51.246376>,  <37.532143, 29.385277, 51.146873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204502, 29.178514, 51.246376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412473, -0.229334, 0.881630,
		-0.398670, 0.824751, 0.401057,
		-0.819102, -0.516905, 0.248759,
		36.958771, 29.023443, 51.321003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380039, 29.533998, 51.879421>,  <37.532143, 29.385277, 51.146873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380039, 29.533998, 51.879421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201607, 29.182362, 51.812237>,  <37.094547, 28.971380, 51.771927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201607, 29.182362, 51.812237>,  <37.380039, 29.533998, 51.879421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201607, 29.182362, 51.812237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339832, -0.339980, 0.876885,
		-0.827967, 0.334079, 0.450401,
		-0.446077, -0.879093, -0.167962,
		37.067783, 28.918634, 51.761848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005310, 29.410809, 52.472122>,  <37.380039, 29.533998, 51.879421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005310, 29.410809, 52.472122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019093, 29.053785, 52.292278>,  <37.027363, 28.839571, 52.184372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019093, 29.053785, 52.292278>,  <37.005310, 29.410809, 52.472122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019093, 29.053785, 52.292278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439178, -0.390594, 0.809048,
		-0.897739, -0.225333, 0.378535,
		0.034452, -0.892558, -0.449613,
		37.029427, 28.786018, 52.157394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682640, 28.753323, 52.938297>,  <37.005310, 29.410809, 52.472122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682640, 28.753323, 52.938297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920128, 28.574800, 52.670471>,  <37.062618, 28.467688, 52.509777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920128, 28.574800, 52.670471>,  <36.682640, 28.753323, 52.938297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920128, 28.574800, 52.670471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560627, -0.367475, 0.742064,
		-0.577235, -0.815949, 0.032036,
		0.593714, -0.446306, -0.669563,
		37.098244, 28.440908, 52.469601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651546, 27.951241, 53.058624>,  <36.682640, 28.753323, 52.938297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651546, 27.951241, 53.058624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995399, 28.078730, 52.898903>,  <37.201714, 28.155224, 52.803070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995399, 28.078730, 52.898903>,  <36.651546, 27.951241, 53.058624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995399, 28.078730, 52.898903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510906, -0.533722, 0.673882,
		0.001664, -0.783299, -0.621643,
		0.859635, 0.318722, -0.399304,
		37.253288, 28.174347, 52.779110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137417, 27.344328, 52.813015>,  <36.651546, 27.951241, 53.058624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137417, 27.344328, 52.813015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299774, 27.688648, 52.935829>,  <37.397190, 27.895241, 53.009518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299774, 27.688648, 52.935829>,  <37.137417, 27.344328, 52.813015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299774, 27.688648, 52.935829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335255, -0.452772, 0.826197,
		0.850209, -0.232414, -0.472365,
		0.405893, 0.860803, 0.307033,
		37.421543, 27.946890, 53.027939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757572, 27.190613, 53.033005>,  <37.137417, 27.344328, 52.813015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757572, 27.190613, 53.033005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640858, 27.528191, 53.213055>,  <37.570827, 27.730738, 53.321083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640858, 27.528191, 53.213055>,  <37.757572, 27.190613, 53.033005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640858, 27.528191, 53.213055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073706, -0.449367, 0.890302,
		0.953638, 0.292958, 0.068917,
		-0.291790, 0.843946, 0.450126,
		37.553322, 27.781374, 53.348091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266209, 27.428968, 52.635254>,  <37.757572, 27.190613, 53.033005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266209, 27.428968, 52.635254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248936, 27.825594, 52.684147>,  <38.238571, 28.063568, 52.713482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248936, 27.825594, 52.684147>,  <38.266209, 27.428968, 52.635254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248936, 27.825594, 52.684147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718426, -0.115839, 0.685890,
		0.694262, -0.058197, 0.717366,
		-0.043182, 0.991562, 0.122233,
		38.235981, 28.123062, 52.720818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382824, 27.652048, 53.372993>,  <38.266209, 27.428968, 52.635254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382824, 27.652048, 53.372993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145027, 27.886244, 53.152527>,  <38.002350, 28.026760, 53.020248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145027, 27.886244, 53.152527>,  <38.382824, 27.652048, 53.372993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145027, 27.886244, 53.152527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788837, -0.291717, 0.540960,
		0.155941, 0.756376, 0.635278,
		-0.594490, 0.585489, -0.551167,
		37.966679, 28.061890, 52.987175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169601, 27.466724, 53.332241>,  <38.382824, 27.652048, 53.372993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169601, 27.466724, 53.332241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276218, 27.537344, 53.711246>,  <39.340187, 27.579716, 53.938652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276218, 27.537344, 53.711246>,  <39.169601, 27.466724, 53.332241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276218, 27.537344, 53.711246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711976, -0.626564, 0.317029,
		0.649651, -0.759109, -0.041304,
		0.266539, 0.176551, 0.947516,
		39.356182, 27.590309, 53.995502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575775, 26.809031, 53.804619>,  <39.169601, 27.466724, 53.332241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575775, 26.809031, 53.804619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376278, 27.082277, 54.018013>,  <39.256580, 27.246225, 54.146049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376278, 27.082277, 54.018013>,  <39.575775, 26.809031, 53.804619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376278, 27.082277, 54.018013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531184, -0.727268, 0.434655,
		0.684906, -0.066597, 0.725581,
		-0.498746, 0.683115, 0.533486,
		39.226654, 27.287212, 54.178059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235352, 26.731752, 53.061497>,  <39.575775, 26.809031, 53.804619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235352, 26.731752, 53.061497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305187, 26.937449, 52.725620>,  <39.347088, 27.060867, 52.524094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305187, 26.937449, 52.725620>,  <39.235352, 26.731752, 53.061497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305187, 26.937449, 52.725620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982516, -0.146979, 0.114275,
		-0.064651, -0.844957, -0.530912,
		0.174591, 0.514242, -0.839687,
		39.357563, 27.091721, 52.473713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774921, 26.282465, 52.712292>,  <39.235352, 26.731752, 53.061497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774921, 26.282465, 52.712292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789104, 26.663017, 52.589901>,  <39.797615, 26.891348, 52.516468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789104, 26.663017, 52.589901>,  <39.774921, 26.282465, 52.712292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789104, 26.663017, 52.589901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999260, -0.029190, 0.025048,
		0.014899, -0.306634, -0.951711,
		0.035461, 0.951380, -0.305972,
		39.799744, 26.948431, 52.498108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261402, 26.296305, 52.181530>,  <39.774921, 26.282465, 52.712292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261402, 26.296305, 52.181530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221313, 26.647844, 52.368111>,  <40.197258, 26.858768, 52.480061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221313, 26.647844, 52.368111>,  <40.261402, 26.296305, 52.181530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221313, 26.647844, 52.368111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994781, 0.097530, 0.029986,
		-0.019140, 0.467026, -0.884036,
		-0.100225, 0.878848, 0.466456,
		40.191246, 26.911499, 52.508049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991077, 26.735806, 51.714592>,  <40.261402, 26.296305, 52.181530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991077, 26.735806, 51.714592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700626, 27.002039, 51.645615>,  <39.526356, 27.161779, 51.604229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700626, 27.002039, 51.645615>,  <39.991077, 26.735806, 51.714592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700626, 27.002039, 51.645615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170021, -0.416835, -0.892940,
		-0.666207, -0.619069, 0.415838,
		-0.726127, 0.665584, -0.172444,
		39.482788, 27.201714, 51.593880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436607, 26.323162, 51.526646>,  <39.991077, 26.735806, 51.714592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436607, 26.323162, 51.526646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349041, 26.686407, 51.383869>,  <39.296501, 26.904354, 51.298203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349041, 26.686407, 51.383869>,  <39.436607, 26.323162, 51.526646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349041, 26.686407, 51.383869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316566, -0.412128, -0.854363,
		-0.922964, -0.074035, 0.377698,
		-0.218912, 0.908113, -0.356942,
		39.283367, 26.958841, 51.276787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933155, 26.162012, 50.885975>,  <39.436607, 26.323162, 51.526646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933155, 26.162012, 50.885975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003105, 26.554790, 50.857128>,  <39.045074, 26.790457, 50.839821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003105, 26.554790, 50.857128>,  <38.933155, 26.162012, 50.885975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003105, 26.554790, 50.857128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279007, -0.020822, -0.960063,
		-0.944232, 0.188014, 0.270328,
		0.174876, 0.981946, -0.072118,
		39.055569, 26.849375, 50.835491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339783, 26.461905, 50.610596>,  <38.933155, 26.162012, 50.885975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339783, 26.461905, 50.610596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641735, 26.709457, 50.523758>,  <38.822906, 26.857990, 50.471653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641735, 26.709457, 50.523758>,  <38.339783, 26.461905, 50.610596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641735, 26.709457, 50.523758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212551, -0.082298, -0.973678,
		-0.620461, 0.781159, 0.069419,
		0.754885, 0.618884, -0.217099,
		38.868202, 26.895123, 50.458630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017750, 27.042931, 50.106247>,  <38.339783, 26.461905, 50.610596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017750, 27.042931, 50.106247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415031, 27.049149, 50.060108>,  <38.653400, 27.052879, 50.032425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415031, 27.049149, 50.060108>,  <38.017750, 27.042931, 50.106247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415031, 27.049149, 50.060108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114153, -0.063306, -0.991444,
		-0.022715, 0.997873, -0.061101,
		0.993203, 0.015546, -0.115348,
		38.712994, 27.053812, 50.025505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256695, 27.661098, 49.699387>,  <38.017750, 27.042931, 50.106247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256695, 27.661098, 49.699387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526001, 27.370365, 49.645092>,  <38.687584, 27.195925, 49.612514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526001, 27.370365, 49.645092>,  <38.256695, 27.661098, 49.699387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526001, 27.370365, 49.645092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063072, 0.126458, -0.989965,
		0.736703, 0.675073, 0.039297,
		0.673268, -0.726832, -0.135740,
		38.727982, 27.152315, 49.604370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594543, 27.854374, 49.190434>,  <38.256695, 27.661098, 49.699387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594543, 27.854374, 49.190434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726650, 27.478104, 49.159321>,  <38.805916, 27.252340, 49.140652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726650, 27.478104, 49.159321>,  <38.594543, 27.854374, 49.190434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726650, 27.478104, 49.159321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034247, 0.094293, -0.994955,
		0.943267, 0.325936, 0.063358,
		0.330266, -0.940678, -0.077781,
		38.825729, 27.195900, 49.135986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218121, 27.832804, 48.709507>,  <38.594543, 27.854374, 49.190434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218121, 27.832804, 48.709507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143768, 27.440289, 48.689438>,  <39.099155, 27.204779, 48.677399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143768, 27.440289, 48.689438>,  <39.218121, 27.832804, 48.709507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143768, 27.440289, 48.689438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030754, 0.045225, -0.998503,
		0.982090, -0.187149, 0.021772,
		-0.185885, -0.981290, -0.050171,
		39.088001, 27.145901, 48.674385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759819, 27.533289, 48.241547>,  <39.218121, 27.832804, 48.709507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759819, 27.533289, 48.241547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436909, 27.297218, 48.240643>,  <39.243164, 27.155577, 48.240101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436909, 27.297218, 48.240643>,  <39.759819, 27.533289, 48.241547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436909, 27.297218, 48.240643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091556, 0.129023, -0.987406,
		0.583034, -0.796898, -0.158191,
		-0.807272, -0.590175, -0.002264,
		39.194729, 27.120167, 48.239964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739376, 27.097784, 47.613697>,  <39.759819, 27.533289, 48.241547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739376, 27.097784, 47.613697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363468, 27.119038, 47.748756>,  <39.137924, 27.131790, 47.829792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363468, 27.119038, 47.748756>,  <39.739376, 27.097784, 47.613697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363468, 27.119038, 47.748756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322577, 0.188804, -0.927522,
		-0.113035, -0.980576, -0.160291,
		-0.939770, 0.053136, 0.337653,
		39.081535, 27.134977, 47.850052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442062, 26.886101, 47.042961>,  <39.739376, 27.097784, 47.613697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442062, 26.886101, 47.042961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147530, 27.045086, 47.261993>,  <38.970810, 27.140476, 47.393414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147530, 27.045086, 47.261993>,  <39.442062, 26.886101, 47.042961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147530, 27.045086, 47.261993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475065, 0.272573, -0.836670,
		-0.481799, -0.876201, -0.011884,
		-0.736331, 0.397461, 0.547578,
		38.926632, 27.164324, 47.426266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800148, 26.704569, 46.708122>,  <39.442062, 26.886101, 47.042961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800148, 26.704569, 46.708122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723885, 27.017080, 46.945862>,  <38.678127, 27.204588, 47.088505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723885, 27.017080, 46.945862>,  <38.800148, 26.704569, 46.708122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723885, 27.017080, 46.945862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473490, 0.457181, -0.752856,
		-0.859917, -0.424956, 0.282764,
		-0.190656, 0.781280, 0.594350,
		38.666687, 27.251465, 47.124168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103561, 26.860229, 46.628899>,  <38.800148, 26.704569, 46.708122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103561, 26.860229, 46.628899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272511, 27.195564, 46.766762>,  <38.373882, 27.396765, 46.849480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272511, 27.195564, 46.766762>,  <38.103561, 26.860229, 46.628899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272511, 27.195564, 46.766762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490207, 0.531108, -0.691102,
		-0.762428, 0.122949, 0.635285,
		0.422375, 0.838337, 0.344661,
		38.399223, 27.447065, 46.870159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409786, 27.368282, 46.748474>,  <38.103561, 26.860229, 46.628899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409786, 27.368282, 46.748474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766964, 27.542805, 46.704136>,  <37.981270, 27.647518, 46.677532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766964, 27.542805, 46.704136>,  <37.409786, 27.368282, 46.748474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766964, 27.542805, 46.704136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440792, 0.797450, -0.412040,
		-0.091382, 0.416789, 0.904399,
		0.892946, 0.436305, -0.110845,
		38.034847, 27.673697, 46.670883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319420, 28.082243, 46.913292>,  <37.409786, 27.368282, 46.748474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319420, 28.082243, 46.913292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668861, 28.111599, 46.720863>,  <37.878529, 28.129211, 46.605408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668861, 28.111599, 46.720863>,  <37.319420, 28.082243, 46.913292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668861, 28.111599, 46.720863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472399, 0.365251, -0.802141,
		0.116843, 0.928012, 0.353753,
		0.873605, 0.073388, -0.481069,
		37.930943, 28.133615, 46.576542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226116, 28.595718, 46.546364>,  <37.319420, 28.082243, 46.913292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226116, 28.595718, 46.546364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564159, 28.466612, 46.375900>,  <37.766983, 28.389147, 46.273621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564159, 28.466612, 46.375900>,  <37.226116, 28.595718, 46.546364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564159, 28.466612, 46.375900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331685, 0.308609, -0.891485,
		0.419261, 0.894752, 0.153749,
		0.845107, -0.322769, -0.426164,
		37.817692, 28.369781, 46.248051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471260, 29.170198, 46.086533>,  <37.226116, 28.595718, 46.546364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471260, 29.170198, 46.086533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667168, 28.847506, 45.954285>,  <37.784714, 28.653889, 45.874935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667168, 28.847506, 45.954285>,  <37.471260, 29.170198, 46.086533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667168, 28.847506, 45.954285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057051, 0.348746, -0.935479,
		0.869984, 0.477030, 0.124780,
		0.489769, -0.806733, -0.330619,
		37.814098, 28.605486, 45.855099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874332, 29.423855, 45.629765>,  <37.471260, 29.170198, 46.086533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874332, 29.423855, 45.629765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902946, 29.032616, 45.551582>,  <37.920116, 28.797873, 45.504673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902946, 29.032616, 45.551582>,  <37.874332, 29.423855, 45.629765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902946, 29.032616, 45.551582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073402, 0.200587, -0.976922,
		0.994733, 0.055541, 0.086145,
		0.071539, -0.978100, -0.195454,
		37.924408, 28.739185, 45.492947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417110, 29.368971, 45.210735>,  <37.874332, 29.423855, 45.629765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417110, 29.368971, 45.210735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143387, 29.085144, 45.143524>,  <37.979153, 28.914848, 45.103199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143387, 29.085144, 45.143524>,  <38.417110, 29.368971, 45.210735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143387, 29.085144, 45.143524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126239, 0.342230, -0.931097,
		0.718180, -0.615948, -0.323767,
		-0.684310, -0.709568, -0.168026,
		37.938095, 28.872274, 45.093117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670097, 29.116796, 44.607628>,  <38.417110, 29.368971, 45.210735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670097, 29.116796, 44.607628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288834, 28.996511, 44.620621>,  <38.060074, 28.924339, 44.628418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288834, 28.996511, 44.620621>,  <38.670097, 29.116796, 44.607628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288834, 28.996511, 44.620621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137918, 0.336531, -0.931518,
		0.269188, -0.892367, -0.362242,
		-0.953162, -0.300713, 0.032483,
		38.002884, 28.906298, 44.630367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659519, 28.697922, 44.088688>,  <38.670097, 29.116796, 44.607628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659519, 28.697922, 44.088688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280758, 28.798153, 44.169262>,  <38.053501, 28.858292, 44.217606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280758, 28.798153, 44.169262>,  <38.659519, 28.697922, 44.088688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280758, 28.798153, 44.169262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203533, 0.017810, -0.978906,
		-0.248883, -0.967932, 0.034137,
		-0.946906, 0.250581, 0.201439,
		37.996685, 28.873327, 44.229694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283195, 28.456112, 43.530640>,  <38.659519, 28.697922, 44.088688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283195, 28.456112, 43.530640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983700, 28.679920, 43.672810>,  <37.804005, 28.814205, 43.758110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983700, 28.679920, 43.672810>,  <38.283195, 28.456112, 43.530640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983700, 28.679920, 43.672810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413631, 0.024621, -0.910112,
		-0.517979, -0.828449, 0.213001,
		-0.748737, 0.559523, 0.355425,
		37.759079, 28.847776, 43.779438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683811, 28.120049, 43.351788>,  <38.283195, 28.456112, 43.530640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683811, 28.120049, 43.351788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593708, 28.504379, 43.416378>,  <37.539646, 28.734978, 43.455132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593708, 28.504379, 43.416378>,  <37.683811, 28.120049, 43.351788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593708, 28.504379, 43.416378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362113, 0.071299, -0.929403,
		-0.904507, -0.267825, 0.331867,
		-0.225256, 0.960826, 0.161474,
		37.526131, 28.792627, 43.464821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891773, 28.199198, 43.258049>,  <37.683811, 28.120049, 43.351788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891773, 28.199198, 43.258049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061634, 28.557133, 43.203011>,  <37.163551, 28.771894, 43.169987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061634, 28.557133, 43.203011>,  <36.891773, 28.199198, 43.258049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061634, 28.557133, 43.203011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646141, 0.193095, -0.738388,
		-0.634169, 0.402465, 0.660191,
		0.424654, 0.894839, -0.137594,
		37.189030, 28.825584, 43.161732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318546, 28.590832, 43.092049>,  <36.891773, 28.199198, 43.258049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318546, 28.590832, 43.092049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624027, 28.815935, 42.965519>,  <36.807316, 28.950996, 42.889603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624027, 28.815935, 42.965519>,  <36.318546, 28.590832, 43.092049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624027, 28.815935, 42.965519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590842, 0.411870, -0.693735,
		-0.260120, 0.716706, 0.647048,
		0.763704, 0.562757, -0.316324,
		36.853138, 28.984762, 42.870621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005604, 29.260077, 42.809677>,  <36.318546, 28.590832, 43.092049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005604, 29.260077, 42.809677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368900, 29.275452, 42.643005>,  <36.586880, 29.284678, 42.543003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368900, 29.275452, 42.643005>,  <36.005604, 29.260077, 42.809677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368900, 29.275452, 42.643005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411704, 0.260120, -0.873406,
		0.074814, 0.964811, 0.252077,
		0.908242, 0.038438, -0.416677,
		36.641373, 29.286983, 42.518002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095871, 29.865507, 42.392624>,  <36.005604, 29.260077, 42.809677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095871, 29.865507, 42.392624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387836, 29.628616, 42.256100>,  <36.563015, 29.486483, 42.174187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387836, 29.628616, 42.256100>,  <36.095871, 29.865507, 42.392624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387836, 29.628616, 42.256100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397951, 0.037788, -0.916628,
		0.555748, 0.804885, -0.208095,
		0.729917, -0.592226, -0.341306,
		36.606812, 29.450949, 42.153709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369934, 30.237095, 41.945107>,  <36.095871, 29.865507, 42.392624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369934, 30.237095, 41.945107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465218, 29.869453, 41.819569>,  <36.522388, 29.648869, 41.744244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465218, 29.869453, 41.819569>,  <36.369934, 30.237095, 41.945107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465218, 29.869453, 41.819569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265763, 0.249129, -0.931292,
		0.934144, 0.305253, -0.184919,
		0.238211, -0.919106, -0.313848,
		36.536682, 29.593721, 41.725414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802673, 30.379646, 41.482395>,  <36.369934, 30.237095, 41.945107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802673, 30.379646, 41.482395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674942, 30.014088, 41.382137>,  <36.598305, 29.794752, 41.321983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674942, 30.014088, 41.382137>,  <36.802673, 30.379646, 41.482395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674942, 30.014088, 41.382137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181189, 0.318488, -0.930449,
		0.930162, -0.251703, -0.267290,
		-0.319326, -0.913898, -0.250640,
		36.579144, 29.739918, 41.306946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135918, 30.232302, 40.918255>,  <36.802673, 30.379646, 41.482395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135918, 30.232302, 40.918255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817806, 29.990374, 40.901653>,  <36.626938, 29.845217, 40.891693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817806, 29.990374, 40.901653>,  <37.135918, 30.232302, 40.918255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817806, 29.990374, 40.901653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166776, 0.284089, -0.944182,
		0.582852, -0.743967, -0.326800,
		-0.795280, -0.604820, -0.041506,
		36.579224, 29.808928, 40.889202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211025, 29.867990, 40.210312>,  <37.135918, 30.232302, 40.918255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211025, 29.867990, 40.210312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831127, 29.813217, 40.322906>,  <36.603188, 29.780354, 40.390465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831127, 29.813217, 40.322906>,  <37.211025, 29.867990, 40.210312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831127, 29.813217, 40.322906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302509, 0.170385, -0.937794,
		0.080450, -0.975817, -0.203244,
		-0.949745, -0.136928, 0.281486,
		36.546204, 29.772137, 40.407352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920586, 29.443808, 39.719753>,  <37.211025, 29.867990, 40.210312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920586, 29.443808, 39.719753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610142, 29.639814, 39.878513>,  <36.423874, 29.757420, 39.973770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610142, 29.639814, 39.878513>,  <36.920586, 29.443808, 39.719753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610142, 29.639814, 39.878513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319701, 0.236766, -0.917460,
		-0.543545, -0.838942, -0.027098,
		-0.776112, 0.490018, 0.396904,
		36.377308, 29.786819, 39.997585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368851, 29.415775, 39.183350>,  <36.920586, 29.443808, 39.719753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368851, 29.415775, 39.183350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249954, 29.707329, 39.430046>,  <36.178616, 29.882261, 39.578064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249954, 29.707329, 39.430046>,  <36.368851, 29.415775, 39.183350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249954, 29.707329, 39.430046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436447, 0.470783, -0.766731,
		-0.849211, -0.497084, 0.178181,
		-0.297245, 0.728883, 0.616745,
		36.160782, 29.925993, 39.615070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672131, 29.500593, 39.076229>,  <36.368851, 29.415775, 39.183350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672131, 29.500593, 39.076229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812531, 29.844213, 39.225269>,  <35.896770, 30.050386, 39.314693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812531, 29.844213, 39.225269>,  <35.672131, 29.500593, 39.076229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812531, 29.844213, 39.225269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464960, 0.505292, -0.726975,
		-0.812779, 0.081927, 0.576783,
		0.351002, 0.859051, 0.372598,
		35.917831, 30.101929, 39.337048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198013, 29.997227, 39.011917>,  <35.672131, 29.500593, 39.076229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198013, 29.997227, 39.011917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499790, 30.253572, 39.068645>,  <35.680855, 30.407381, 39.102684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499790, 30.253572, 39.068645>,  <35.198013, 29.997227, 39.011917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499790, 30.253572, 39.068645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352638, 0.577988, -0.735918,
		-0.553596, 0.505194, 0.662050,
		0.754439, 0.640865, 0.141822,
		35.726120, 30.445831, 39.111191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937492, 30.639837, 38.852264>,  <35.198013, 29.997227, 39.011917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937492, 30.639837, 38.852264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332764, 30.688591, 38.815083>,  <35.569927, 30.717842, 38.792774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332764, 30.688591, 38.815083>,  <34.937492, 30.639837, 38.852264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332764, 30.688591, 38.815083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152654, 0.727491, -0.668920,
		-0.013904, 0.675205, 0.737499,
		0.988182, 0.121883, -0.092957,
		35.629219, 30.725155, 38.787197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071663, 31.369450, 38.728664>,  <34.937492, 30.639837, 38.852264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071663, 31.369450, 38.728664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410702, 31.196547, 38.605549>,  <35.614124, 31.092806, 38.531681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410702, 31.196547, 38.605549>,  <35.071663, 31.369450, 38.728664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410702, 31.196547, 38.605549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060313, 0.497795, -0.865195,
		0.527200, 0.751901, 0.395860,
		0.847598, -0.432255, -0.307787,
		35.664982, 31.066870, 38.513214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405693, 31.898651, 38.462662>,  <35.071663, 31.369450, 38.728664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405693, 31.898651, 38.462662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602596, 31.587162, 38.307087>,  <35.720737, 31.400269, 38.213741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602596, 31.587162, 38.307087>,  <35.405693, 31.898651, 38.462662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602596, 31.587162, 38.307087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231495, 0.547849, -0.803910,
		0.839100, 0.305698, 0.449956,
		0.492261, -0.778723, -0.388933,
		35.750275, 31.353544, 38.190407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117256, 32.164993, 38.297352>,  <35.405693, 31.898651, 38.462662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117256, 32.164993, 38.297352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015591, 31.840786, 38.086273>,  <35.954594, 31.646263, 37.959625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015591, 31.840786, 38.086273>,  <36.117256, 32.164993, 38.297352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015591, 31.840786, 38.086273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165054, 0.501263, -0.849407,
		0.952974, -0.302985, 0.006378,
		-0.254160, -0.810516, -0.527699,
		35.939342, 31.597631, 37.927963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678600, 32.109760, 37.957951>,  <36.117256, 32.164993, 38.297352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678600, 32.109760, 37.957951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355366, 31.959244, 37.776665>,  <36.161423, 31.868935, 37.667892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355366, 31.959244, 37.776665>,  <36.678600, 32.109760, 37.957951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355366, 31.959244, 37.776665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341354, 0.327896, -0.880887,
		0.480072, -0.866541, -0.136522,
		-0.808089, -0.376287, -0.453211,
		36.112938, 31.846357, 37.640701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119141, 31.589043, 37.452271>,  <36.678600, 32.109760, 37.957951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119141, 31.589043, 37.452271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350540, 31.899981, 37.353413>,  <37.489380, 32.086544, 37.294098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350540, 31.899981, 37.353413>,  <37.119141, 31.589043, 37.452271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350540, 31.899981, 37.353413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457428, -0.058301, 0.887334,
		0.675354, -0.626370, -0.389305,
		0.578496, 0.777343, -0.247145,
		37.524090, 32.133183, 37.279270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761833, 31.397053, 37.472401>,  <37.119141, 31.589043, 37.452271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761833, 31.397053, 37.472401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755253, 31.794544, 37.516636>,  <37.751305, 32.033039, 37.543179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755253, 31.794544, 37.516636>,  <37.761833, 31.397053, 37.472401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755253, 31.794544, 37.516636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654806, -0.072882, 0.752274,
		0.755618, 0.084791, -0.649502,
		-0.016449, 0.993730, 0.110592,
		37.750317, 32.092663, 37.549812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454418, 31.654457, 37.444233>,  <37.761833, 31.397053, 37.472401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454418, 31.654457, 37.444233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219162, 31.914766, 37.636311>,  <38.078007, 32.070953, 37.751556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219162, 31.914766, 37.636311>,  <38.454418, 31.654457, 37.444233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219162, 31.914766, 37.636311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572515, -0.084355, 0.815543,
		0.571239, 0.754573, -0.322964,
		-0.588143, 0.650772, 0.480191,
		38.042721, 32.109997, 37.780369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904778, 32.159008, 37.838303>,  <38.454418, 31.654457, 37.444233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904778, 32.159008, 37.838303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551640, 32.204632, 38.020542>,  <38.339756, 32.232006, 38.129887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551640, 32.204632, 38.020542>,  <38.904778, 32.159008, 37.838303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551640, 32.204632, 38.020542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467987, 0.131783, 0.873854,
		0.039632, 0.984695, -0.169723,
		-0.882846, 0.114061, 0.455602,
		38.286785, 32.238850, 38.157223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072571, 32.720802, 38.309402>,  <38.904778, 32.159008, 37.838303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072571, 32.720802, 38.309402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729424, 32.567204, 38.445995>,  <38.523537, 32.475044, 38.527950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729424, 32.567204, 38.445995>,  <39.072571, 32.720802, 38.309402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729424, 32.567204, 38.445995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330992, 0.095402, 0.938798,
		-0.393078, 0.918390, 0.045259,
		-0.857866, -0.384002, 0.341480,
		38.472065, 32.452003, 38.548439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036549, 33.000294, 38.973469>,  <39.072571, 32.720802, 38.309402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036549, 33.000294, 38.973469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771217, 32.701298, 38.987640>,  <38.612019, 32.521900, 38.996143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771217, 32.701298, 38.987640>,  <39.036549, 33.000294, 38.973469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771217, 32.701298, 38.987640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227556, -0.156378, 0.961126,
		-0.712892, 0.645604, 0.273826,
		-0.663328, -0.747490, 0.035430,
		38.572220, 32.477051, 38.998268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677311, 33.052246, 39.644424>,  <39.036549, 33.000294, 38.973469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677311, 33.052246, 39.644424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586040, 32.678070, 39.536434>,  <38.531277, 32.453564, 39.471638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586040, 32.678070, 39.536434>,  <38.677311, 33.052246, 39.644424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586040, 32.678070, 39.536434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192160, -0.315109, 0.929398,
		-0.954468, 0.160192, 0.251655,
		-0.228181, -0.935438, -0.269979,
		38.517586, 32.397438, 39.455441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981453, 32.917343, 40.004997>,  <38.677311, 33.052246, 39.644424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981453, 32.917343, 40.004997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208984, 32.604523, 39.903152>,  <38.345501, 32.416828, 39.842045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208984, 32.604523, 39.903152>,  <37.981453, 32.917343, 40.004997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208984, 32.604523, 39.903152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063671, -0.266775, 0.961653,
		-0.819989, -0.563226, -0.101955,
		0.568827, -0.782054, -0.254614,
		38.379631, 32.369907, 39.826767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665337, 32.317806, 40.398823>,  <37.981453, 32.917343, 40.004997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665337, 32.317806, 40.398823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022327, 32.185814, 40.275791>,  <38.236523, 32.106617, 40.201973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022327, 32.185814, 40.275791>,  <37.665337, 32.317806, 40.398823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022327, 32.185814, 40.275791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191323, -0.340595, 0.920538,
		-0.408523, -0.880401, -0.240838,
		0.892471, -0.329983, -0.307582,
		38.290070, 32.086819, 40.183517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725315, 31.628944, 40.490562>,  <37.665337, 32.317806, 40.398823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725315, 31.628944, 40.490562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092960, 31.785711, 40.506702>,  <38.313549, 31.879770, 40.516388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092960, 31.785711, 40.506702>,  <37.725315, 31.628944, 40.490562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092960, 31.785711, 40.506702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137079, -0.414117, 0.899843,
		0.369371, -0.821529, -0.434345,
		0.919116, 0.391915, 0.040349,
		38.368694, 31.903286, 40.518806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083355, 31.119558, 40.730278>,  <37.725315, 31.628944, 40.490562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083355, 31.119558, 40.730278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321430, 31.433123, 40.800968>,  <38.464275, 31.621262, 40.843384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321430, 31.433123, 40.800968>,  <38.083355, 31.119558, 40.730278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321430, 31.433123, 40.800968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132568, -0.312696, 0.940557,
		0.792573, -0.536384, -0.290035,
		0.595192, 0.783909, 0.176727,
		38.499989, 31.668295, 40.853985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703537, 30.800920, 41.121128>,  <38.083355, 31.119558, 40.730278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703537, 30.800920, 41.121128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700157, 31.197849, 41.170479>,  <38.698132, 31.436007, 41.200089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700157, 31.197849, 41.170479>,  <38.703537, 30.800920, 41.121128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700157, 31.197849, 41.170479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230867, -0.118116, 0.965789,
		0.972949, 0.036641, -0.228097,
		-0.008446, 0.992324, 0.123380,
		38.697624, 31.495546, 41.207493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293648, 31.026442, 41.478603>,  <38.703537, 30.800920, 41.121128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293648, 31.026442, 41.478603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017441, 31.305353, 41.555534>,  <38.851715, 31.472700, 41.601692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017441, 31.305353, 41.555534>,  <39.293648, 31.026442, 41.478603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017441, 31.305353, 41.555534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190355, -0.081343, 0.978340,
		0.697818, 0.712172, -0.076562,
		-0.690518, 0.697277, 0.192328,
		38.810284, 31.514536, 41.613232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711838, 31.511368, 41.783916>,  <39.293648, 31.026442, 41.478603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711838, 31.511368, 41.783916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335701, 31.569897, 41.906784>,  <39.110020, 31.605015, 41.980503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335701, 31.569897, 41.906784>,  <39.711838, 31.511368, 41.783916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335701, 31.569897, 41.906784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307779, -0.019012, 0.951268,
		0.145032, 0.989054, -0.027157,
		-0.940339, 0.146323, 0.307168,
		39.053600, 31.613794, 41.998936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801678, 32.011665, 42.314606>,  <39.711838, 31.511368, 41.783916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801678, 32.011665, 42.314606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441383, 31.848148, 42.373333>,  <39.225204, 31.750038, 42.408569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441383, 31.848148, 42.373333>,  <39.801678, 32.011665, 42.314606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441383, 31.848148, 42.373333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197555, -0.084532, 0.976640,
		-0.386832, 0.908704, 0.156900,
		-0.900740, -0.408792, 0.146820,
		39.171162, 31.725512, 42.417377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527565, 32.299992, 42.968754>,  <39.801678, 32.011665, 42.314606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527565, 32.299992, 42.968754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346989, 31.945988, 42.923206>,  <39.238644, 31.733585, 42.895878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346989, 31.945988, 42.923206>,  <39.527565, 32.299992, 42.968754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346989, 31.945988, 42.923206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182503, -0.216489, 0.959075,
		-0.873438, 0.412184, 0.259248,
		-0.451440, -0.885006, -0.113865,
		39.211555, 31.680487, 42.889046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261162, 32.229538, 43.593933>,  <39.527565, 32.299992, 42.968754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261162, 32.229538, 43.593933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223125, 31.858244, 43.450081>,  <39.200302, 31.635468, 43.363770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223125, 31.858244, 43.450081>,  <39.261162, 32.229538, 43.593933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223125, 31.858244, 43.450081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196847, -0.371669, 0.907256,
		-0.975812, 0.015478, 0.218063,
		-0.095090, -0.928236, -0.359633,
		39.194599, 31.579773, 43.342190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810123, 31.931458, 44.086433>,  <39.261162, 32.229538, 43.593933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810123, 31.931458, 44.086433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998795, 31.637211, 43.891953>,  <39.111996, 31.460663, 43.775265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998795, 31.637211, 43.891953>,  <38.810123, 31.931458, 44.086433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998795, 31.637211, 43.891953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171189, -0.464505, 0.868867,
		-0.864996, -0.493054, -0.093165,
		0.471674, -0.735617, -0.486201,
		39.140297, 31.416525, 43.746094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615612, 31.223576, 44.364956>,  <38.810123, 31.931458, 44.086433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615612, 31.223576, 44.364956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960686, 31.131374, 44.184891>,  <39.167728, 31.076054, 44.076851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960686, 31.131374, 44.184891>,  <38.615612, 31.223576, 44.364956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960686, 31.131374, 44.184891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086259, -0.809991, 0.580063,
		-0.498332, -0.539242, -0.678884,
		0.862685, -0.230504, -0.450159,
		39.219490, 31.062223, 44.049843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540798, 30.583443, 44.269016>,  <38.615612, 31.223576, 44.364956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540798, 30.583443, 44.269016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929111, 30.671988, 44.231953>,  <39.162098, 30.725115, 44.209717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929111, 30.671988, 44.231953>,  <38.540798, 30.583443, 44.269016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929111, 30.671988, 44.231953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230094, -0.749018, 0.621312,
		0.068133, -0.624477, -0.778066,
		0.970780, 0.221361, -0.092656,
		39.220345, 30.738396, 44.204155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882282, 30.009069, 44.291378>,  <38.540798, 30.583443, 44.269016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882282, 30.009069, 44.291378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153618, 30.287411, 44.385731>,  <39.316422, 30.454416, 44.442345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153618, 30.287411, 44.385731>,  <38.882282, 30.009069, 44.291378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153618, 30.287411, 44.385731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293651, -0.551043, 0.781102,
		0.673516, -0.460586, -0.578133,
		0.678341, 0.695854, 0.235885,
		39.357121, 30.496166, 44.456497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356354, 29.589161, 44.617477>,  <38.882282, 30.009069, 44.291378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356354, 29.589161, 44.617477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441319, 29.964853, 44.725349>,  <39.492298, 30.190269, 44.790073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441319, 29.964853, 44.725349>,  <39.356354, 29.589161, 44.617477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441319, 29.964853, 44.725349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368498, -0.332589, 0.868098,
		0.905036, -0.085019, -0.416751,
		0.212412, 0.939232, 0.269676,
		39.505043, 30.246622, 44.806252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895008, 29.480536, 44.930092>,  <39.356354, 29.589161, 44.617477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895008, 29.480536, 44.930092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799911, 29.847157, 45.058720>,  <39.742851, 30.067129, 45.135895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799911, 29.847157, 45.058720>,  <39.895008, 29.480536, 44.930092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799911, 29.847157, 45.058720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180747, -0.283535, 0.941774,
		0.954363, 0.282024, -0.098255,
		-0.237745, 0.916553, 0.321570,
		39.728588, 30.122122, 45.155190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507904, 29.758190, 45.320789>,  <39.895008, 29.480536, 44.930092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507904, 29.758190, 45.320789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181236, 29.954166, 45.442780>,  <39.985237, 30.071753, 45.515972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181236, 29.954166, 45.442780>,  <40.507904, 29.758190, 45.320789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181236, 29.954166, 45.442780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172050, -0.297727, 0.939019,
		0.550862, 0.819340, 0.158851,
		-0.816670, 0.489940, 0.304974,
		39.936234, 30.101149, 45.534271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553455, 30.406673, 45.781494>,  <40.507904, 29.758190, 45.320789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553455, 30.406673, 45.781494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205498, 30.220909, 45.847946>,  <39.996723, 30.109451, 45.887817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205498, 30.220909, 45.847946>,  <40.553455, 30.406673, 45.781494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205498, 30.220909, 45.847946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165734, 0.042025, 0.985275,
		-0.464554, 0.884622, 0.040411,
		-0.869897, -0.464411, 0.166135,
		39.944527, 30.081585, 45.897785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181835, 30.699842, 46.380577>,  <40.553455, 30.406673, 45.781494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181835, 30.699842, 46.380577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979908, 30.355339, 46.357269>,  <39.858753, 30.148636, 46.343285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979908, 30.355339, 46.357269>,  <40.181835, 30.699842, 46.380577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979908, 30.355339, 46.357269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146239, -0.151849, 0.977525,
		-0.850751, 0.484947, 0.202606,
		-0.504814, -0.861259, -0.058267,
		39.828465, 30.096962, 46.339790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745686, 30.648388, 46.855244>,  <40.181835, 30.699842, 46.380577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745686, 30.648388, 46.855244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772499, 30.255703, 46.783974>,  <39.788586, 30.020092, 46.741211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772499, 30.255703, 46.783974>,  <39.745686, 30.648388, 46.855244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772499, 30.255703, 46.783974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081791, -0.172574, 0.981595,
		-0.994393, -0.080372, 0.068728,
		0.067032, -0.981712, -0.178180,
		39.792610, 29.961189, 46.730518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317081, 30.431438, 47.302814>,  <39.745686, 30.648388, 46.855244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317081, 30.431438, 47.302814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554062, 30.116018, 47.236858>,  <39.696251, 29.926765, 47.197285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554062, 30.116018, 47.236858>,  <39.317081, 30.431438, 47.302814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554062, 30.116018, 47.236858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046885, -0.170577, 0.984228,
		-0.804239, -0.590840, -0.064088,
		0.592453, -0.788550, -0.164886,
		39.731796, 29.879454, 47.187393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070366, 29.946869, 47.760044>,  <39.317081, 30.431438, 47.302814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070366, 29.946869, 47.760044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392536, 29.734814, 47.654026>,  <39.585838, 29.607580, 47.590416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392536, 29.734814, 47.654026>,  <39.070366, 29.946869, 47.760044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392536, 29.734814, 47.654026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057978, -0.374571, 0.925384,
		-0.589859, -0.760692, -0.270952,
		0.805422, -0.530137, -0.265048,
		39.634163, 29.575773, 47.574512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977898, 29.230711, 48.055862>,  <39.070366, 29.946869, 47.760044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977898, 29.230711, 48.055862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365974, 29.291267, 47.980171>,  <39.598820, 29.327602, 47.934757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365974, 29.291267, 47.980171>,  <38.977898, 29.230711, 48.055862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365974, 29.291267, 47.980171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227454, -0.299460, 0.926601,
		0.083615, -0.942021, -0.324969,
		0.970192, 0.151393, -0.189227,
		39.657032, 29.336685, 47.923405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152397, 28.843412, 48.566387>,  <38.977898, 29.230711, 48.055862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152397, 28.843412, 48.566387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477768, 29.035204, 48.434662>,  <39.672989, 29.150278, 48.355629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477768, 29.035204, 48.434662>,  <39.152397, 28.843412, 48.566387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477768, 29.035204, 48.434662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447778, -0.154813, 0.880641,
		0.371267, -0.863790, -0.340628,
		0.813422, 0.479479, -0.329309,
		39.721794, 29.179047, 48.335869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808941, 28.405409, 48.650459>,  <39.152397, 28.843412, 48.566387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808941, 28.405409, 48.650459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871452, 28.800028, 48.669655>,  <39.908958, 29.036798, 48.681171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871452, 28.800028, 48.669655>,  <39.808941, 28.405409, 48.650459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871452, 28.800028, 48.669655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337775, -0.099038, 0.936002,
		0.928162, -0.130066, -0.348709,
		0.156277, 0.986547, 0.047990,
		39.918335, 29.095991, 48.684052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520554, 28.441818, 48.916428>,  <39.808941, 28.405409, 48.650459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520554, 28.441818, 48.916428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376122, 28.809376, 48.979988>,  <40.289463, 29.029911, 49.018124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376122, 28.809376, 48.979988>,  <40.520554, 28.441818, 48.916428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376122, 28.809376, 48.979988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272383, -0.059044, 0.960376,
		0.891867, 0.390058, -0.228971,
		-0.361083, 0.918895, 0.158905,
		40.267796, 29.085045, 49.027660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150227, 28.840277, 49.258709>,  <40.520554, 28.441818, 48.916428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150227, 28.840277, 49.258709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804817, 29.027561, 49.333664>,  <40.597572, 29.139931, 49.378635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804817, 29.027561, 49.333664>,  <41.150227, 28.840277, 49.258709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804817, 29.027561, 49.333664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311136, 0.202188, 0.928609,
		0.396897, 0.860174, -0.320270,
		-0.863520, 0.468209, 0.187383,
		40.545761, 29.168024, 49.389877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293678, 29.578955, 49.391407>,  <41.150227, 28.840277, 49.258709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293678, 29.578955, 49.391407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948212, 29.500784, 49.577267>,  <40.740932, 29.453880, 49.688782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948212, 29.500784, 49.577267>,  <41.293678, 29.578955, 49.391407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948212, 29.500784, 49.577267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371602, 0.375980, 0.848853,
		-0.340587, 0.905785, -0.252098,
		-0.863662, -0.195428, 0.464646,
		40.689114, 29.442156, 49.716660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128628, 30.193319, 49.746639>,  <41.293678, 29.578955, 49.391407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128628, 30.193319, 49.746639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935776, 29.883329, 49.910084>,  <40.820065, 29.697334, 50.008152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935776, 29.883329, 49.910084>,  <41.128628, 30.193319, 49.746639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935776, 29.883329, 49.910084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345687, 0.260280, 0.901529,
		-0.805017, 0.575905, 0.142411,
		-0.482129, -0.774976, 0.408613,
		40.791138, 29.650837, 50.032669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773178, 30.479197, 50.291943>,  <41.128628, 30.193319, 49.746639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773178, 30.479197, 50.291943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805023, 30.086769, 50.362564>,  <40.824131, 29.851313, 50.404938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805023, 30.086769, 50.362564>,  <40.773178, 30.479197, 50.291943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805023, 30.086769, 50.362564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405352, 0.193670, 0.893410,
		-0.910687, 0.000440, 0.413096,
		0.079611, -0.981067, 0.176551,
		40.828907, 29.792450, 50.415531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652958, 30.457647, 50.989975>,  <40.773178, 30.479197, 50.291943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652958, 30.457647, 50.989975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831413, 30.115067, 50.886089>,  <40.938488, 29.909519, 50.823757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831413, 30.115067, 50.886089>,  <40.652958, 30.457647, 50.989975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831413, 30.115067, 50.886089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429994, -0.049378, 0.901481,
		-0.784898, -0.513862, 0.346239,
		0.446140, -0.856451, -0.259714,
		40.965256, 29.858131, 50.808174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494926, 31.014668, 51.457764>,  <40.652958, 30.457647, 50.989975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494926, 31.014668, 51.457764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670578, 31.356018, 51.570133>,  <40.775967, 31.560829, 51.637554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670578, 31.356018, 51.570133>,  <40.494926, 31.014668, 51.457764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670578, 31.356018, 51.570133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510888, 0.494395, -0.703255,
		-0.739028, 0.165296, 0.653081,
		0.439125, 0.853377, 0.280923,
		40.802315, 31.612030, 51.654411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984272, 31.525967, 51.588856>,  <40.494926, 31.014668, 51.457764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984272, 31.525967, 51.588856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331627, 31.698965, 51.491821>,  <40.540039, 31.802765, 51.433601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331627, 31.698965, 51.491821>,  <39.984272, 31.525967, 51.588856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331627, 31.698965, 51.491821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449462, 0.479802, -0.753508,
		-0.209496, 0.763371, 0.611045,
		0.868387, 0.432498, -0.242589,
		40.592144, 31.828714, 51.419044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680458, 31.987661, 51.330933>,  <39.984272, 31.525967, 51.588856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680458, 31.987661, 51.330933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052753, 32.070381, 51.210300>,  <40.276131, 32.120014, 51.137920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052753, 32.070381, 51.210300>,  <39.680458, 31.987661, 51.330933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052753, 32.070381, 51.210300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365627, 0.539765, -0.758268,
		0.005973, 0.816019, 0.577994,
		0.930742, 0.206801, -0.301583,
		40.331978, 32.132420, 51.119827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855377, 32.765503, 51.271366>,  <39.680458, 31.987661, 51.330933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855377, 32.765503, 51.271366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097500, 32.562355, 51.026196>,  <40.242771, 32.440468, 50.879093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097500, 32.562355, 51.026196>,  <39.855377, 32.765503, 51.271366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097500, 32.562355, 51.026196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221608, 0.632047, -0.742568,
		0.764524, 0.585308, 0.270033,
		0.605304, -0.507869, -0.612924,
		40.279091, 32.409996, 50.842319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220985, 33.295944, 50.786381>,  <39.855377, 32.765503, 51.271366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220985, 33.295944, 50.786381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301422, 32.959827, 50.584995>,  <40.349686, 32.758156, 50.464165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301422, 32.959827, 50.584995>,  <40.220985, 33.295944, 50.786381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301422, 32.959827, 50.584995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160800, 0.478670, -0.863145,
		0.966284, 0.254531, -0.038860,
		0.201096, -0.840291, -0.503460,
		40.361752, 32.707741, 50.433956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606167, 33.441273, 50.169647>,  <40.220985, 33.295944, 50.786381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606167, 33.441273, 50.169647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449402, 33.084557, 50.079220>,  <40.355343, 32.870525, 50.024963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449402, 33.084557, 50.079220>,  <40.606167, 33.441273, 50.169647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449402, 33.084557, 50.079220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038453, 0.229635, -0.972517,
		0.919198, -0.389836, -0.055704,
		-0.391914, -0.891794, -0.226070,
		40.331829, 32.817017, 50.011398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967979, 33.281971, 49.450554>,  <40.606167, 33.441273, 50.169647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967979, 33.281971, 49.450554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629211, 33.075851, 49.503006>,  <40.425953, 32.952179, 49.534477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629211, 33.075851, 49.503006>,  <40.967979, 33.281971, 49.450554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629211, 33.075851, 49.503006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276493, 0.216138, -0.936395,
		0.454185, -0.829305, -0.325529,
		-0.846917, -0.515303, 0.131130,
		40.375137, 32.921261, 49.542347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861462, 32.862850, 48.796551>,  <40.967979, 33.281971, 49.450554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861462, 32.862850, 48.796551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506821, 32.844593, 48.980659>,  <40.294037, 32.833637, 49.091125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506821, 32.844593, 48.980659>,  <40.861462, 32.862850, 48.796551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506821, 32.844593, 48.980659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462211, 0.050739, -0.885317,
		0.017043, -0.997669, -0.066076,
		-0.886606, -0.045629, 0.460269,
		40.240837, 32.830898, 49.118740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408234, 32.429070, 48.373180>,  <40.861462, 32.862850, 48.796551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408234, 32.429070, 48.373180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168407, 32.672394, 48.581207>,  <40.024509, 32.818390, 48.706024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168407, 32.672394, 48.581207>,  <40.408234, 32.429070, 48.373180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168407, 32.672394, 48.581207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497975, 0.225152, -0.837453,
		-0.626528, -0.761092, 0.167931,
		-0.599569, 0.608313, 0.520069,
		39.988537, 32.854889, 48.737228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783051, 32.398308, 48.045830>,  <40.408234, 32.429070, 48.373180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783051, 32.398308, 48.045830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714241, 32.721981, 48.270554>,  <39.672955, 32.916183, 48.405388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714241, 32.721981, 48.270554>,  <39.783051, 32.398308, 48.045830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714241, 32.721981, 48.270554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746630, 0.264934, -0.610208,
		-0.642612, -0.524436, 0.558584,
		-0.172027, 0.809182, 0.561809,
		39.662632, 32.964737, 48.439095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132668, 32.478378, 48.004120>,  <39.783051, 32.398308, 48.045830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132668, 32.478378, 48.004120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256527, 32.840488, 48.120461>,  <39.330841, 33.057755, 48.190266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256527, 32.840488, 48.120461>,  <39.132668, 32.478378, 48.004120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256527, 32.840488, 48.120461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585242, 0.422527, -0.692072,
		-0.749408, 0.044080, 0.660640,
		0.309645, 0.905278, 0.290848,
		39.349419, 33.112072, 48.207714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532200, 32.967331, 48.203415>,  <39.132668, 32.478378, 48.004120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532200, 32.967331, 48.203415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834599, 33.195427, 48.074856>,  <39.016037, 33.332283, 47.997719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834599, 33.195427, 48.074856>,  <38.532200, 32.967331, 48.203415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834599, 33.195427, 48.074856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575916, 0.346082, -0.740641,
		-0.311110, 0.745022, 0.590045,
		0.755997, 0.570237, -0.321400,
		39.061398, 33.366497, 47.978436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249039, 33.472549, 47.742531>,  <38.532200, 32.967331, 48.203415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249039, 33.472549, 47.742531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639870, 33.500816, 47.662205>,  <38.874367, 33.517776, 47.614010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639870, 33.500816, 47.662205>,  <38.249039, 33.472549, 47.742531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639870, 33.500816, 47.662205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212822, 0.301675, -0.929354,
		-0.005096, 0.950788, 0.309799,
		0.977078, 0.070668, -0.200811,
		38.932995, 33.522018, 47.601963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412346, 34.147957, 47.436512>,  <38.249039, 33.472549, 47.742531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412346, 34.147957, 47.436512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694801, 33.895397, 47.308323>,  <38.864273, 33.743862, 47.231407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694801, 33.895397, 47.308323>,  <38.412346, 34.147957, 47.436512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694801, 33.895397, 47.308323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216574, 0.238319, -0.946731,
		0.674138, 0.737931, 0.031543,
		0.706140, -0.631396, -0.320477,
		38.906643, 33.705978, 47.212181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641846, 34.428185, 46.804863>,  <38.412346, 34.147957, 47.436512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641846, 34.428185, 46.804863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816578, 34.072800, 46.748550>,  <38.921417, 33.859570, 46.714764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816578, 34.072800, 46.748550>,  <38.641846, 34.428185, 46.804863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816578, 34.072800, 46.748550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016831, 0.164546, -0.986226,
		0.899386, 0.428445, 0.086833,
		0.436831, -0.888459, -0.140779,
		38.947628, 33.806263, 46.706318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182434, 34.551483, 46.362259>,  <38.641846, 34.428185, 46.804863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182434, 34.551483, 46.362259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168652, 34.152073, 46.345459>,  <39.160381, 33.912426, 46.335381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168652, 34.152073, 46.345459>,  <39.182434, 34.551483, 46.362259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168652, 34.152073, 46.345459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116245, 0.045741, -0.992167,
		0.992623, -0.029302, -0.117650,
		-0.034454, -0.998524, -0.041997,
		39.158314, 33.852516, 46.332859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681442, 34.323711, 45.839092>,  <39.182434, 34.551483, 46.362259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681442, 34.323711, 45.839092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416122, 34.028393, 45.888008>,  <39.256931, 33.851200, 45.917358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416122, 34.028393, 45.888008>,  <39.681442, 34.323711, 45.839092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416122, 34.028393, 45.888008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020935, -0.145047, -0.989203,
		0.748064, -0.658695, 0.080753,
		-0.663296, -0.738297, 0.122294,
		39.217133, 33.806904, 45.924698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901760, 33.741489, 45.407104>,  <39.681442, 34.323711, 45.839092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901760, 33.741489, 45.407104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512703, 33.709091, 45.494194>,  <39.279270, 33.689651, 45.546448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512703, 33.709091, 45.494194>,  <39.901760, 33.741489, 45.407104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512703, 33.709091, 45.494194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220656, 0.029053, -0.974919,
		0.072640, -0.996291, -0.046130,
		-0.972643, -0.080997, 0.217727,
		39.220909, 33.684792, 45.559513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591557, 33.090164, 45.004257>,  <39.901760, 33.741489, 45.407104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591557, 33.090164, 45.004257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279804, 33.330177, 45.076397>,  <39.092751, 33.474186, 45.119682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279804, 33.330177, 45.076397>,  <39.591557, 33.090164, 45.004257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279804, 33.330177, 45.076397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349885, -0.178029, -0.919721,
		-0.519752, -0.779917, 0.348694,
		-0.779384, 0.600029, 0.180350,
		39.045990, 33.510185, 45.130501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154144, 32.744095, 44.583412>,  <39.591557, 33.090164, 45.004257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154144, 32.744095, 44.583412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946854, 33.071148, 44.683750>,  <38.822479, 33.267380, 44.743954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946854, 33.071148, 44.683750>,  <39.154144, 32.744095, 44.583412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946854, 33.071148, 44.683750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526937, -0.074229, -0.846657,
		-0.673632, -0.570939, 0.469307,
		-0.518225, 0.817630, 0.250845,
		38.791386, 33.316437, 44.759003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476734, 32.590408, 44.433933>,  <39.154144, 32.744095, 44.583412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476734, 32.590408, 44.433933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541882, 32.985043, 44.429348>,  <38.580971, 33.221821, 44.426598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541882, 32.985043, 44.429348>,  <38.476734, 32.590408, 44.433933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541882, 32.985043, 44.429348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290419, 0.036829, -0.956191,
		-0.942937, 0.159064, 0.292520,
		0.162869, 0.986581, -0.011468,
		38.590744, 33.281017, 44.425907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956017, 32.794453, 43.870720>,  <38.476734, 32.590408, 44.433933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956017, 32.794453, 43.870720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167732, 33.127029, 43.938309>,  <38.294762, 33.326576, 43.978863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167732, 33.127029, 43.938309>,  <37.956017, 32.794453, 43.870720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167732, 33.127029, 43.938309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156226, 0.291264, -0.943800,
		-0.833933, 0.473147, 0.284056,
		0.529292, 0.831443, 0.168977,
		38.326519, 33.376461, 43.989002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556118, 33.351421, 43.585812>,  <37.956017, 32.794453, 43.870720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556118, 33.351421, 43.585812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933048, 33.485298, 43.585819>,  <38.159206, 33.565624, 43.585823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933048, 33.485298, 43.585819>,  <37.556118, 33.351421, 43.585812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933048, 33.485298, 43.585819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081495, 0.229503, -0.969890,
		-0.324623, 0.913951, 0.243543,
		0.942326, 0.334696, 0.000020,
		38.215748, 33.585709, 43.585827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538490, 33.970554, 43.263374>,  <37.556118, 33.351421, 43.585812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538490, 33.970554, 43.263374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922142, 33.861576, 43.232777>,  <38.152332, 33.796188, 43.214420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922142, 33.861576, 43.232777>,  <37.538490, 33.970554, 43.263374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922142, 33.861576, 43.232777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051419, 0.098022, -0.993855,
		0.278267, 0.957166, 0.080006,
		0.959127, -0.272443, -0.076492,
		38.209881, 33.779842, 43.209827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753029, 34.427486, 42.701832>,  <37.538490, 33.970554, 43.263374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753029, 34.427486, 42.701832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046703, 34.159740, 42.747307>,  <38.222908, 33.999092, 42.774593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046703, 34.159740, 42.747307>,  <37.753029, 34.427486, 42.701832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046703, 34.159740, 42.747307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250774, 0.111743, -0.961575,
		0.630939, 0.734484, 0.249899,
		0.734186, -0.669363, 0.113686,
		38.266960, 33.958931, 42.781414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311134, 34.722923, 42.413551>,  <37.753029, 34.427486, 42.701832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311134, 34.722923, 42.413551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342171, 34.324669, 42.392826>,  <38.360794, 34.085716, 42.380390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342171, 34.324669, 42.392826>,  <38.311134, 34.722923, 42.413551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342171, 34.324669, 42.392826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351171, 0.075933, -0.933228,
		0.933091, 0.054219, 0.355531,
		0.077595, -0.995638, -0.051812,
		38.365448, 34.025978, 42.377281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885143, 34.706024, 42.151112>,  <38.311134, 34.722923, 42.413551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885143, 34.706024, 42.151112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731403, 34.346733, 42.065823>,  <38.639160, 34.131157, 42.014648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731403, 34.346733, 42.065823>,  <38.885143, 34.706024, 42.151112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731403, 34.346733, 42.065823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345206, 0.074372, -0.935576,
		0.856218, -0.433190, 0.281490,
		-0.384347, -0.898229, -0.213219,
		38.616100, 34.077263, 42.001858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376129, 34.276306, 42.047203>,  <38.885143, 34.706024, 42.151112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376129, 34.276306, 42.047203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061562, 34.147930, 41.836094>,  <38.872822, 34.070904, 41.709427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061562, 34.147930, 41.836094>,  <39.376129, 34.276306, 42.047203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061562, 34.147930, 41.836094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421617, 0.345535, -0.838358,
		0.451424, -0.881819, -0.136423,
		-0.786419, -0.320937, -0.527773,
		38.825634, 34.051651, 41.677761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555893, 34.021229, 41.461388>,  <39.376129, 34.276306, 42.047203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555893, 34.021229, 41.461388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175949, 34.100376, 41.364540>,  <38.947983, 34.147865, 41.306431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175949, 34.100376, 41.364540>,  <39.555893, 34.021229, 41.461388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175949, 34.100376, 41.364540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288673, 0.257321, -0.922201,
		-0.120170, -0.945852, -0.301536,
		-0.949857, 0.197866, -0.242119,
		38.890991, 34.159737, 41.291904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490314, 33.773338, 40.707195>,  <39.555893, 34.021229, 41.461388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490314, 33.773338, 40.707195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170662, 34.000729, 40.785397>,  <38.978870, 34.137165, 40.832317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170662, 34.000729, 40.785397>,  <39.490314, 33.773338, 40.707195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170662, 34.000729, 40.785397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173753, 0.529746, -0.830168,
		-0.575498, -0.629444, -0.522112,
		-0.799132, 0.568479, 0.195500,
		38.930923, 34.171272, 40.844048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100567, 33.870995, 40.015217>,  <39.490314, 33.773338, 40.707195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100567, 33.870995, 40.015217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002625, 34.169437, 40.262882>,  <38.943859, 34.348503, 40.411480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002625, 34.169437, 40.262882>,  <39.100567, 33.870995, 40.015217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002625, 34.169437, 40.262882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061516, 0.649271, -0.758065,
		-0.967607, -0.147526, -0.204875,
		-0.244854, 0.746112, 0.619164,
		38.929169, 34.393272, 40.448631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618454, 34.323200, 39.601521>,  <39.100567, 33.870995, 40.015217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618454, 34.323200, 39.601521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747662, 34.536591, 39.914204>,  <38.825188, 34.664623, 40.101814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747662, 34.536591, 39.914204>,  <38.618454, 34.323200, 39.601521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747662, 34.536591, 39.914204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141184, 0.789579, -0.597186,
		-0.935802, 0.303268, 0.179733,
		0.323021, 0.533472, 0.781706,
		38.844566, 34.696632, 40.148716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152428, 34.955513, 39.645103>,  <38.618454, 34.323200, 39.601521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152428, 34.955513, 39.645103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482838, 35.044453, 39.852272>,  <38.681084, 35.097816, 39.976574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482838, 35.044453, 39.852272>,  <38.152428, 34.955513, 39.645103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482838, 35.044453, 39.852272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070196, 0.871159, -0.485958,
		-0.559242, 0.437771, 0.703992,
		0.826027, 0.222351, 0.517919,
		38.730644, 35.111156, 40.007648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151218, 35.748341, 39.659248>,  <38.152428, 34.955513, 39.645103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151218, 35.748341, 39.659248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517208, 35.627460, 39.766205>,  <38.736801, 35.554932, 39.830379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517208, 35.627460, 39.766205>,  <38.151218, 35.748341, 39.659248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517208, 35.627460, 39.766205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396301, 0.797725, -0.454511,
		-0.075956, 0.521835, 0.849658,
		0.914973, -0.302197, 0.267396,
		38.791698, 35.536800, 39.846424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442776, 36.406063, 39.757412>,  <38.151218, 35.748341, 39.659248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442776, 36.406063, 39.757412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722374, 36.127239, 39.693523>,  <38.890133, 35.959946, 39.655190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722374, 36.127239, 39.693523>,  <38.442776, 36.406063, 39.757412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722374, 36.127239, 39.693523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515207, 0.645762, -0.563519,
		0.495952, 0.311605, 0.810515,
		0.698994, -0.697061, -0.159726,
		38.932072, 35.918121, 39.645607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022709, 36.780136, 39.696327>,  <38.442776, 36.406063, 39.757412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022709, 36.780136, 39.696327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147263, 36.433182, 39.541054>,  <39.221992, 36.225010, 39.447891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147263, 36.433182, 39.541054>,  <39.022709, 36.780136, 39.696327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147263, 36.433182, 39.541054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683599, 0.488207, -0.542536,
		0.660100, -0.096424, 0.744963,
		0.311383, -0.867384, -0.388182,
		39.240677, 36.172966, 39.424599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821930, 36.823322, 39.730309>,  <39.022709, 36.780136, 39.696327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821930, 36.823322, 39.730309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768719, 36.532154, 39.461258>,  <39.736794, 36.357452, 39.299828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768719, 36.532154, 39.461258>,  <39.821930, 36.823322, 39.730309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768719, 36.532154, 39.461258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732915, 0.384605, -0.561173,
		0.667188, -0.567631, 0.482343,
		-0.133027, -0.727925, -0.672629,
		39.728809, 36.313778, 39.259468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465027, 36.584202, 39.532021>,  <39.821930, 36.823322, 39.730309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465027, 36.584202, 39.532021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247902, 36.454769, 39.222015>,  <40.117626, 36.377110, 39.036011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247902, 36.454769, 39.222015>,  <40.465027, 36.584202, 39.532021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247902, 36.454769, 39.222015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779828, 0.148402, -0.608149,
		0.311800, -0.934490, 0.171784,
		-0.542816, -0.323583, -0.775013,
		40.085056, 36.357693, 38.989510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815563, 36.014099, 39.155468>,  <40.465027, 36.584202, 39.532021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815563, 36.014099, 39.155468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555107, 36.187462, 38.906254>,  <40.398834, 36.291481, 38.756725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555107, 36.187462, 38.906254>,  <40.815563, 36.014099, 39.155468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555107, 36.187462, 38.906254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687408, -0.011174, -0.726186,
		-0.321696, -0.901129, -0.290652,
		-0.651139, 0.433407, -0.623037,
		40.359764, 36.317486, 38.719341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545372, 35.586651, 38.529171>,  <40.815563, 36.014099, 39.155468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545372, 35.586651, 38.529171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573002, 35.978371, 38.453056>,  <40.589581, 36.213402, 38.407387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573002, 35.978371, 38.453056>,  <40.545372, 35.586651, 38.529171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573002, 35.978371, 38.453056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766012, -0.174264, -0.618756,
		-0.639104, -0.103018, -0.762190,
		0.069079, 0.979295, -0.190286,
		40.593727, 36.272160, 38.395969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408379, 35.834095, 37.795601>,  <40.545372, 35.586651, 38.529171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408379, 35.834095, 37.795601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679096, 36.070126, 37.971676>,  <40.841526, 36.211742, 38.077320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679096, 36.070126, 37.971676>,  <40.408379, 35.834095, 37.795601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679096, 36.070126, 37.971676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701383, -0.335193, -0.629053,
		-0.223639, 0.734479, -0.640723,
		0.676792, 0.590073, 0.440189,
		40.882133, 36.247147, 38.103733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801048, 36.131924, 37.259640>,  <40.408379, 35.834095, 37.795601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801048, 36.131924, 37.259640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022800, 36.111656, 37.591927>,  <41.155853, 36.099495, 37.791298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022800, 36.111656, 37.591927>,  <40.801048, 36.131924, 37.259640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022800, 36.111656, 37.591927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661920, -0.578211, -0.477005,
		0.504501, 0.814312, -0.287010,
		0.554384, -0.050672, 0.830717,
		41.189117, 36.096455, 37.841141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539093, 36.404839, 37.201107>,  <40.801048, 36.131924, 37.259640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539093, 36.404839, 37.201107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495369, 36.103859, 37.460915>,  <41.469135, 35.923271, 37.616798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495369, 36.103859, 37.460915>,  <41.539093, 36.404839, 37.201107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495369, 36.103859, 37.460915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683790, -0.531177, -0.500283,
		0.721445, 0.389447, 0.572580,
		-0.109308, -0.752451, 0.649514,
		41.462578, 35.878124, 37.655769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233822, 36.027763, 37.406204>,  <41.539093, 36.404839, 37.201107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233822, 36.027763, 37.406204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932739, 35.782761, 37.502754>,  <41.752090, 35.635757, 37.560684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932739, 35.782761, 37.502754>,  <42.233822, 36.027763, 37.406204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932739, 35.782761, 37.502754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440248, -0.740894, -0.507206,
		0.489504, -0.275511, 0.827333,
		-0.752707, -0.612511, 0.241378,
		41.706928, 35.599007, 37.575169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459805, 35.370060, 37.726288>,  <42.233822, 36.027763, 37.406204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459805, 35.370060, 37.726288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114597, 35.292919, 37.539520>,  <41.907475, 35.246635, 37.427460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114597, 35.292919, 37.539520>,  <42.459805, 35.370060, 37.726288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114597, 35.292919, 37.539520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414935, -0.797808, -0.437414,
		-0.288158, -0.571236, 0.768540,
		-0.863014, -0.192850, -0.466921,
		41.855694, 35.235065, 37.399445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272732, 34.663601, 38.009029>,  <42.459805, 35.370060, 37.726288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272732, 34.663601, 38.009029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110294, 34.783566, 37.663742>,  <42.012833, 34.855545, 37.456570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110294, 34.783566, 37.663742>,  <42.272732, 34.663601, 38.009029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110294, 34.783566, 37.663742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148446, -0.910416, -0.386144,
		-0.901692, -0.284953, 0.325198,
		-0.406098, 0.299909, -0.863214,
		41.988468, 34.873539, 37.404778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721035, 34.141666, 37.831203>,  <42.272732, 34.663601, 38.009029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721035, 34.141666, 37.831203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914284, 34.328735, 37.535130>,  <42.030235, 34.440975, 37.357487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914284, 34.328735, 37.535130>,  <41.721035, 34.141666, 37.831203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914284, 34.328735, 37.535130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232312, -0.883562, -0.406632,
		-0.844169, 0.024501, -0.535517,
		0.483125, 0.467673, -0.740184,
		42.059223, 34.469036, 37.313076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405643, 33.937958, 37.204082>,  <41.721035, 34.141666, 37.831203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405643, 33.937958, 37.204082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788460, 34.029968, 37.133476>,  <42.018150, 34.085175, 37.091110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788460, 34.029968, 37.133476>,  <41.405643, 33.937958, 37.204082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788460, 34.029968, 37.133476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130308, -0.885064, -0.446858,
		-0.259020, 0.404660, -0.877017,
		0.957042, 0.230027, -0.176518,
		42.075573, 34.098976, 37.080521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454903, 33.644863, 36.528965>,  <41.405643, 33.937958, 37.204082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454903, 33.644863, 36.528965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830002, 33.732201, 36.637005>,  <42.055061, 33.784603, 36.701828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830002, 33.732201, 36.637005>,  <41.454903, 33.644863, 36.528965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830002, 33.732201, 36.637005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331485, -0.794757, -0.508408,
		0.103659, 0.566293, -0.817659,
		0.937749, 0.218341, 0.270101,
		42.111328, 33.797703, 36.718037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745968, 33.530212, 35.848770>,  <41.454903, 33.644863, 36.528965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745968, 33.530212, 35.848770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027153, 33.519089, 36.133041>,  <42.195866, 33.512413, 36.303604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027153, 33.519089, 36.133041>,  <41.745968, 33.530212, 35.848770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027153, 33.519089, 36.133041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391846, -0.818757, -0.419636,
		0.593545, 0.573466, -0.564659,
		0.702966, -0.027814, 0.710680,
		42.238041, 33.510746, 36.346245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413494, 33.501373, 35.483315>,  <41.745968, 33.530212, 35.848770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413494, 33.501373, 35.483315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456459, 33.356472, 35.853664>,  <42.482239, 33.269531, 36.075874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456459, 33.356472, 35.853664>,  <42.413494, 33.501373, 35.483315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456459, 33.356472, 35.853664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432029, -0.821732, -0.371627,
		0.895440, 0.439920, 0.068239,
		0.107412, -0.362251, 0.925871,
		42.488682, 33.247795, 36.131424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154316, 33.213303, 35.521111>,  <42.413494, 33.501373, 35.483315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.154316, 33.213303, 35.521111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.931068, 33.029793, 35.797668>,  <42.797119, 32.919685, 35.963604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.931068, 33.029793, 35.797668>,  <43.154316, 33.213303, 35.521111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.931068, 33.029793, 35.797668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344368, -0.886167, -0.310032,
		0.754924, 0.065058, 0.652577,
		-0.558122, -0.458777, 0.691393,
		42.763634, 32.892159, 36.005085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552998, 32.712543, 35.823830>,  <43.154316, 33.213303, 35.521111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552998, 32.712543, 35.823830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180367, 32.590034, 35.902172>,  <42.956787, 32.516529, 35.949177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180367, 32.590034, 35.902172>,  <43.552998, 32.712543, 35.823830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180367, 32.590034, 35.902172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178307, -0.854428, -0.488016,
		0.316808, -0.419703, 0.850578,
		-0.931579, -0.306271, 0.195853,
		42.900894, 32.498154, 35.960930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620415, 31.953007, 35.967262>,  <43.552998, 32.712543, 35.823830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620415, 31.953007, 35.967262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224178, 31.967987, 35.914597>,  <42.986439, 31.976974, 35.882996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224178, 31.967987, 35.914597>,  <43.620415, 31.953007, 35.967262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224178, 31.967987, 35.914597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024949, -0.896344, -0.442657,
		-0.134592, -0.441775, 0.886972,
		-0.990587, 0.037449, -0.131663,
		42.927002, 31.979221, 35.875099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387264, 31.226372, 36.286926>,  <43.620415, 31.953007, 35.967262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387264, 31.226372, 36.286926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.131584, 31.396070, 36.030350>,  <42.978176, 31.497890, 35.876404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.131584, 31.396070, 36.030350>,  <43.387264, 31.226372, 36.286926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131584, 31.396070, 36.030350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035392, -0.816960, -0.575607,
		-0.768227, -0.390629, 0.507186,
		-0.639199, 0.424246, -0.641436,
		42.939827, 31.523344, 35.837917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.893116, 30.721359, 36.211216>,  <43.387264, 31.226372, 36.286926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.893116, 30.721359, 36.211216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863419, 30.958118, 35.890182>,  <42.845600, 31.100174, 35.697563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863419, 30.958118, 35.890182>,  <42.893116, 30.721359, 36.211216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863419, 30.958118, 35.890182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064899, -0.800233, -0.596167,
		-0.995126, -0.096346, 0.020996,
		-0.074240, 0.591899, -0.802586,
		42.841148, 31.135689, 35.649406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481243, 30.231165, 35.882061>,  <42.893116, 30.721359, 36.211216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481243, 30.231165, 35.882061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531017, 30.496990, 35.587341>,  <42.560883, 30.656485, 35.410511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531017, 30.496990, 35.587341>,  <42.481243, 30.231165, 35.882061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531017, 30.496990, 35.587341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184036, -0.714225, -0.675287,
		-0.975011, 0.219630, 0.033426,
		0.124440, 0.664564, -0.736797,
		42.568348, 30.696360, 35.366302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912437, 30.178513, 35.374420>,  <42.481243, 30.231165, 35.882061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912437, 30.178513, 35.374420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239555, 30.332972, 35.203724>,  <42.435825, 30.425646, 35.101307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239555, 30.332972, 35.203724>,  <41.912437, 30.178513, 35.374420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239555, 30.332972, 35.203724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152882, -0.569090, -0.807938,
		-0.554834, 0.725967, -0.406363,
		0.817793, 0.386146, -0.426738,
		42.484894, 30.448816, 35.075703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771168, 30.266710, 34.622765>,  <41.912437, 30.178513, 35.374420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771168, 30.266710, 34.622765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167572, 30.243031, 34.670757>,  <42.405415, 30.228823, 34.699554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167572, 30.243031, 34.670757>,  <41.771168, 30.266710, 34.622765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167572, 30.243031, 34.670757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045596, -0.693663, -0.718855,
		0.125781, 0.717863, -0.684727,
		0.991010, -0.059198, 0.119981,
		42.464874, 30.225271, 34.706753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984352, 30.156319, 34.038822>,  <41.771168, 30.266710, 34.622765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984352, 30.156319, 34.038822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304684, 30.027393, 34.240730>,  <42.496883, 29.950039, 34.361874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304684, 30.027393, 34.240730>,  <41.984352, 30.156319, 34.038822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304684, 30.027393, 34.240730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176975, -0.677836, -0.713595,
		0.572151, 0.660798, -0.485788,
		0.800827, -0.322312, 0.504769,
		42.544933, 29.930700, 34.392162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481461, 29.917696, 33.514324>,  <41.984352, 30.156319, 34.038822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481461, 29.917696, 33.514324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645538, 29.759680, 33.843124>,  <42.743984, 29.664871, 34.040405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645538, 29.759680, 33.843124>,  <42.481461, 29.917696, 33.514324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645538, 29.759680, 33.843124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447995, -0.697798, -0.558908,
		0.794380, 0.597514, -0.109259,
		0.410196, -0.395038, 0.822000,
		42.768597, 29.641169, 34.089725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152481, 29.796421, 33.311752>,  <42.481461, 29.917696, 33.514324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152481, 29.796421, 33.311752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084881, 29.546709, 33.616833>,  <43.044319, 29.396881, 33.799881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084881, 29.546709, 33.616833>,  <43.152481, 29.796421, 33.311752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084881, 29.546709, 33.616833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576411, -0.690305, -0.437298,
		0.799492, 0.365725, 0.476505,
		-0.169003, -0.624279, 0.762702,
		43.034180, 29.359425, 33.845642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824566, 29.370331, 33.406273>,  <43.152481, 29.796421, 33.311752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824566, 29.370331, 33.406273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564796, 29.166248, 33.631817>,  <43.408936, 29.043798, 33.767143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564796, 29.166248, 33.631817>,  <43.824566, 29.370331, 33.406273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564796, 29.166248, 33.631817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500028, -0.845168, -0.188846,
		0.572907, 0.159305, 0.803990,
		-0.649423, -0.510208, 0.563859,
		43.369968, 29.013186, 33.800976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.101933, 29.017410, 34.013950>,  <43.824566, 29.370331, 33.406273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.101933, 29.017410, 34.013950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780533, 28.827480, 33.870327>,  <43.587692, 28.713522, 33.784153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780533, 28.827480, 33.870327>,  <44.101933, 29.017410, 34.013950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.780533, 28.827480, 33.870327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586770, -0.733450, -0.343149,
		-0.100418, -0.486408, 0.867942,
		-0.803503, -0.474824, -0.359061,
		43.539482, 28.685034, 33.762608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.405106, 28.289980, 33.942318>,  <44.101933, 29.017410, 34.013950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.405106, 28.289980, 33.942318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055397, 28.236799, 33.755569>,  <43.845573, 28.204891, 33.643520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055397, 28.236799, 33.755569>,  <44.405106, 28.289980, 33.942318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.055397, 28.236799, 33.755569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454465, -0.562202, -0.690934,
		-0.170616, -0.816243, 0.551940,
		-0.874272, -0.132953, -0.466875,
		43.793114, 28.196913, 33.615505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305645, 27.524963, 33.773201>,  <44.405106, 28.289980, 33.942318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305645, 27.524963, 33.773201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068855, 27.733875, 33.527668>,  <43.926781, 27.859222, 33.380348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068855, 27.733875, 33.527668>,  <44.305645, 27.524963, 33.773201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068855, 27.733875, 33.527668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402193, -0.468571, -0.786563,
		-0.698429, -0.712505, 0.067326,
		-0.591977, 0.522281, -0.613828,
		43.891262, 27.890560, 33.343521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013622, 27.026304, 33.275936>,  <44.305645, 27.524963, 33.773201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013622, 27.026304, 33.275936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.988171, 27.391117, 33.113876>,  <43.972900, 27.610004, 33.016640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.988171, 27.391117, 33.113876>,  <44.013622, 27.026304, 33.275936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.988171, 27.391117, 33.113876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246887, -0.378968, -0.891869,
		-0.966953, -0.156773, -0.201057,
		-0.063627, 0.912033, -0.405150,
		43.969082, 27.664726, 32.992332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627537, 26.999657, 32.769165>,  <44.013622, 27.026304, 33.275936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627537, 26.999657, 32.769165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846802, 27.322441, 32.681229>,  <43.978359, 27.516111, 32.628468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846802, 27.322441, 32.681229>,  <43.627537, 26.999657, 32.769165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846802, 27.322441, 32.681229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225579, -0.395759, -0.890218,
		-0.805377, 0.438392, -0.398974,
		0.548163, 0.806961, -0.219843,
		44.011250, 27.564529, 32.615276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395100, 27.302519, 32.062698>,  <43.627537, 26.999657, 32.769165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395100, 27.302519, 32.062698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779167, 27.366035, 32.154663>,  <44.009609, 27.404144, 32.209843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779167, 27.366035, 32.154663>,  <43.395100, 27.302519, 32.062698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779167, 27.366035, 32.154663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277982, -0.459593, -0.843504,
		-0.028275, 0.873819, -0.485429,
		0.960170, 0.158791, 0.229911,
		44.067219, 27.413673, 32.223637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854210, 27.713812, 31.505812>,  <43.395100, 27.302519, 32.062698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854210, 27.713812, 31.505812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086590, 27.464439, 31.715126>,  <44.226017, 27.314816, 31.840715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086590, 27.464439, 31.715126>,  <43.854210, 27.713812, 31.505812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086590, 27.464439, 31.715126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338096, -0.399983, -0.851883,
		0.740395, 0.671825, -0.021592,
		0.580953, -0.623430, 0.523287,
		44.260876, 27.277411, 31.872112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573662, 27.716970, 31.355865>,  <43.854210, 27.713812, 31.505812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573662, 27.716970, 31.355865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502956, 27.349970, 31.498384>,  <44.460533, 27.129770, 31.583897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502956, 27.349970, 31.498384>,  <44.573662, 27.716970, 31.355865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502956, 27.349970, 31.498384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327556, -0.396200, -0.857748,
		0.928150, -0.034910, 0.370566,
		-0.176763, -0.917500, 0.356298,
		44.449928, 27.074720, 31.605274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.144417, 27.547640, 30.728815>,  <44.573662, 27.716970, 31.355865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.144417, 27.547640, 30.728815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998360, 27.587652, 30.358591>,  <44.910725, 27.611660, 30.136457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998360, 27.587652, 30.358591>,  <45.144417, 27.547640, 30.728815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.998360, 27.587652, 30.358591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689593, -0.638838, -0.341097,
		-0.625402, -0.762811, 0.164293,
		-0.365149, 0.100028, -0.925560,
		44.888817, 27.617661, 30.080923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294327, 26.911938, 30.443806>,  <45.144417, 27.547640, 30.728815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294327, 26.911938, 30.443806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.233303, 27.180870, 30.154062>,  <45.196690, 27.342230, 29.980217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.233303, 27.180870, 30.154062>,  <45.294327, 26.911938, 30.443806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.233303, 27.180870, 30.154062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846631, -0.289199, -0.446742,
		-0.509843, -0.681420, -0.525097,
		-0.152561, 0.672332, -0.724358,
		45.187534, 27.382570, 29.936754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288403, 26.554636, 31.183111>,  <45.294327, 26.911938, 30.443806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.288403, 26.554636, 31.183111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.625683, 26.676140, 31.005688>,  <45.828053, 26.749043, 30.899233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.625683, 26.676140, 31.005688>,  <45.288403, 26.554636, 31.183111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.625683, 26.676140, 31.005688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030403, 0.796808, 0.603467,
		0.536739, -0.522329, 0.662634,
		0.843200, 0.303758, -0.443558,
		45.878643, 26.767267, 30.872620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.811115, 26.621378, 31.704887>,  <45.288403, 26.554636, 31.183111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.811115, 26.621378, 31.704887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.837086, 26.852352, 31.379347>,  <45.852669, 26.990936, 31.184023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.837086, 26.852352, 31.379347>,  <45.811115, 26.621378, 31.704887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.837086, 26.852352, 31.379347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028299, 0.816308, 0.576923,
		0.997488, -0.014429, 0.069344,
		0.064930, 0.577437, -0.813850,
		45.856564, 27.025583, 31.135193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.362595, 27.130905, 31.628124>,  <45.811115, 26.621378, 31.704887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.362595, 27.130905, 31.628124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.043919, 27.275560, 31.434423>,  <45.852715, 27.362354, 31.318203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.043919, 27.275560, 31.434423>,  <46.362595, 27.130905, 31.628124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.043919, 27.275560, 31.434423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051318, 0.838814, 0.541994,
		0.602204, 0.406951, -0.686834,
		-0.796691, 0.361638, -0.484254,
		45.804913, 27.384052, 31.289146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.284172, 27.703201, 31.974859>,  <46.362595, 27.130905, 31.628124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.284172, 27.703201, 31.974859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.960022, 27.737604, 31.743032>,  <45.765533, 27.758245, 31.603935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.960022, 27.737604, 31.743032>,  <46.284172, 27.703201, 31.974859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.960022, 27.737604, 31.743032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297003, 0.792366, 0.532865,
		0.505061, 0.603953, -0.616566,
		-0.810372, 0.086008, -0.579569,
		45.716911, 27.763407, 31.569162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.164265, 28.336563, 31.600658>,  <46.284172, 27.703201, 31.974859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.164265, 28.336563, 31.600658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.792171, 28.204977, 31.665705>,  <45.568916, 28.126026, 31.704733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.792171, 28.204977, 31.665705>,  <46.164265, 28.336563, 31.600658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.792171, 28.204977, 31.665705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215211, 0.847993, 0.484347,
		-0.297228, 0.415561, -0.859630,
		-0.930236, -0.328963, 0.162614,
		45.513100, 28.106289, 31.714489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.650177, 28.881247, 31.458654>,  <46.164265, 28.336563, 31.600658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.650177, 28.881247, 31.458654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519363, 28.625189, 31.736723>,  <45.440876, 28.471554, 31.903564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519363, 28.625189, 31.736723>,  <45.650177, 28.881247, 31.458654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.519363, 28.625189, 31.736723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232172, 0.767500, 0.597528,
		-0.916049, 0.034012, -0.399622,
		-0.327033, -0.640146, 0.695171,
		45.421253, 28.433146, 31.945274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.023865, 29.048546, 31.607788>,  <45.650177, 28.881247, 31.458654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.023865, 29.048546, 31.607788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173988, 28.848415, 31.919895>,  <45.264061, 28.728338, 32.107159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173988, 28.848415, 31.919895>,  <45.023865, 29.048546, 31.607788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173988, 28.848415, 31.919895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200307, 0.778134, 0.595302,
		-0.904999, -0.379714, 0.191820,
		0.375306, -0.500324, 0.780270,
		45.286579, 28.698318, 32.153976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.602695, 29.384150, 32.131119>,  <45.023865, 29.048546, 31.607788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.602695, 29.384150, 32.131119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900002, 29.191805, 32.317162>,  <45.078384, 29.076399, 32.428787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900002, 29.191805, 32.317162>,  <44.602695, 29.384150, 32.131119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900002, 29.191805, 32.317162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113059, 0.775522, 0.621115,
		-0.659372, -0.409070, 0.630786,
		0.743267, -0.480861, 0.465109,
		45.122982, 29.047546, 32.456696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415222, 29.511433, 32.804081>,  <44.602695, 29.384150, 32.131119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415222, 29.511433, 32.804081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811253, 29.460814, 32.779640>,  <45.048870, 29.430443, 32.764977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811253, 29.460814, 32.779640>,  <44.415222, 29.511433, 32.804081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811253, 29.460814, 32.779640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140490, 0.881647, 0.450512,
		-0.003140, -0.454626, 0.890677,
		0.990077, -0.126546, -0.061102,
		45.108276, 29.422850, 32.761311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.615658, 29.839567, 33.303043>,  <44.415222, 29.511433, 32.804081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.615658, 29.839567, 33.303043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.980202, 29.775410, 33.151413>,  <45.198929, 29.736916, 33.060436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.980202, 29.775410, 33.151413>,  <44.615658, 29.839567, 33.303043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980202, 29.775410, 33.151413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355651, 0.770465, 0.529053,
		0.207207, -0.616975, 0.759215,
		0.911361, -0.160392, -0.379073,
		45.253609, 29.727293, 33.037689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.133915, 29.769960, 33.870144>,  <44.615658, 29.839567, 33.303043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.133915, 29.769960, 33.870144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332001, 29.919060, 33.556248>,  <45.450851, 30.008520, 33.367908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332001, 29.919060, 33.556248>,  <45.133915, 29.769960, 33.870144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.332001, 29.919060, 33.556248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230544, 0.814510, 0.532375,
		0.837625, -0.444556, 0.317420,
		0.495212, 0.372751, -0.784743,
		45.480564, 30.030884, 33.320824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.701210, 30.005215, 34.202118>,  <45.133915, 29.769960, 33.870144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.701210, 30.005215, 34.202118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704247, 30.183846, 33.844234>,  <45.706066, 30.291023, 33.629501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704247, 30.183846, 33.844234>,  <45.701210, 30.005215, 34.202118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.704247, 30.183846, 33.844234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551013, 0.744780, 0.376413,
		0.834462, -0.495855, -0.240418,
		0.007588, 0.446576, -0.894713,
		45.706524, 30.317818, 33.575821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.253525, 30.270563, 34.264076>,  <45.701210, 30.005215, 34.202118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.253525, 30.270563, 34.264076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.083462, 30.489447, 33.975685>,  <45.981426, 30.620777, 33.802650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.083462, 30.489447, 33.975685>,  <46.253525, 30.270563, 34.264076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.083462, 30.489447, 33.975685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269498, 0.836956, 0.476314,
		0.864068, 0.008206, -0.503309,
		-0.425156, 0.547208, -0.720975,
		45.955914, 30.653608, 33.759392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.705002, 30.823170, 34.243931>,  <46.253525, 30.270563, 34.264076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.705002, 30.823170, 34.243931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.353817, 30.928688, 34.084133>,  <46.143105, 30.991999, 33.988255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.353817, 30.928688, 34.084133>,  <46.705002, 30.823170, 34.243931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.353817, 30.928688, 34.084133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060518, 0.888947, 0.453993,
		0.474890, 0.374412, -0.796426,
		-0.877962, 0.263795, -0.399493,
		46.090427, 31.007826, 33.964287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.869129, 31.402201, 33.979053>,  <46.705002, 30.823170, 34.243931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.869129, 31.402201, 33.979053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.470627, 31.425955, 34.004189>,  <46.231525, 31.440207, 34.019268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.470627, 31.425955, 34.004189>,  <46.869129, 31.402201, 33.979053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.470627, 31.425955, 34.004189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076160, 0.946774, 0.312761,
		-0.040917, 0.316376, -0.947751,
		-0.996256, 0.059384, 0.062835,
		46.171749, 31.443769, 34.023041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.702457, 32.088207, 33.780994>,  <46.869129, 31.402201, 33.979053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.702457, 32.088207, 33.780994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.364704, 31.967075, 33.957771>,  <46.162052, 31.894398, 34.063839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.364704, 31.967075, 33.957771>,  <46.702457, 32.088207, 33.780994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.364704, 31.967075, 33.957771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099436, 0.899175, 0.426141,
		-0.526434, 0.315880, -0.789358,
		-0.844381, -0.302826, 0.441947,
		46.111389, 31.876228, 34.090355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.217762, 32.642975, 33.762203>,  <46.702457, 32.088207, 33.780994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.217762, 32.642975, 33.762203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.103123, 32.401871, 34.060074>,  <46.034340, 32.257210, 34.238796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.103123, 32.401871, 34.060074>,  <46.217762, 32.642975, 33.762203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.103123, 32.401871, 34.060074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070692, 0.788471, 0.610996,
		-0.955438, 0.122469, -0.268586,
		-0.286601, -0.602756, 0.744678,
		46.017143, 32.221043, 34.283478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.643696, 33.001602, 34.011955>,  <46.217762, 32.642975, 33.762203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.643696, 33.001602, 34.011955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758926, 32.744980, 34.296326>,  <45.828064, 32.591007, 34.466949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758926, 32.744980, 34.296326>,  <45.643696, 33.001602, 34.011955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.758926, 32.744980, 34.296326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194670, 0.687665, 0.699443,
		-0.937612, -0.339887, 0.073207,
		0.288074, -0.641555, 0.710929,
		45.845348, 32.552513, 34.509605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.115387, 33.098969, 34.515968>,  <45.643696, 33.001602, 34.011955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.115387, 33.098969, 34.515968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.412930, 32.910751, 34.705814>,  <45.591457, 32.797821, 34.819721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.412930, 32.910751, 34.705814>,  <45.115387, 33.098969, 34.515968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.412930, 32.910751, 34.705814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197286, 0.523908, 0.828613,
		-0.638552, -0.710008, 0.296883,
		0.743861, -0.470542, 0.474617,
		45.636089, 32.769588, 34.848198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.779793, 32.762798, 35.119061>,  <45.115387, 33.098969, 34.515968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.779793, 32.762798, 35.119061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173203, 32.816654, 35.167309>,  <45.409248, 32.848969, 35.196259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173203, 32.816654, 35.167309>,  <44.779793, 32.762798, 35.119061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173203, 32.816654, 35.167309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178553, 0.619455, 0.764457,
		0.028208, -0.773400, 0.633291,
		0.983526, 0.134639, 0.120619,
		45.468262, 32.857044, 35.203495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.906311, 32.714508, 35.805801>,  <44.779793, 32.762798, 35.119061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.906311, 32.714508, 35.805801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.225124, 32.921810, 35.681767>,  <45.416412, 33.046192, 35.607346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.225124, 32.921810, 35.681767>,  <44.906311, 32.714508, 35.805801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.225124, 32.921810, 35.681767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186381, 0.699457, 0.689944,
		0.574458, -0.492113, 0.654082,
		0.797032, 0.518252, -0.310088,
		45.464233, 33.077286, 35.588741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.191097, 32.948345, 36.458965>,  <44.906311, 32.714508, 35.805801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.191097, 32.948345, 36.458965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.347683, 33.177437, 36.170872>,  <45.441635, 33.314892, 35.998016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.347683, 33.177437, 36.170872>,  <45.191097, 32.948345, 36.458965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.347683, 33.177437, 36.170872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084733, 0.801809, 0.591542,
		0.916285, -0.170537, 0.362406,
		0.391461, 0.572729, -0.720236,
		45.465122, 33.349255, 35.954800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.627712, 33.379486, 36.901344>,  <45.191097, 32.948345, 36.458965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.627712, 33.379486, 36.901344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.587494, 33.582760, 36.559200>,  <45.563362, 33.704723, 36.353912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.587494, 33.582760, 36.559200>,  <45.627712, 33.379486, 36.901344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.587494, 33.582760, 36.559200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113605, 0.848229, 0.517302,
		0.988425, 0.149187, -0.027557,
		-0.100550, 0.508184, -0.855359,
		45.557327, 33.735214, 36.302593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.886814, 34.096088, 37.025658>,  <45.627712, 33.379486, 36.901344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.886814, 34.096088, 37.025658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.637859, 34.116119, 36.713215>,  <45.488487, 34.128136, 36.525749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.637859, 34.116119, 36.713215>,  <45.886814, 34.096088, 37.025658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.637859, 34.116119, 36.713215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253849, 0.931096, 0.261957,
		0.740401, 0.361321, -0.566792,
		-0.622388, 0.050073, -0.781105,
		45.451141, 34.131142, 36.478882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.928871, 34.831131, 36.736885>,  <45.886814, 34.096088, 37.025658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.928871, 34.831131, 36.736885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.598248, 34.658497, 36.592365>,  <45.399872, 34.554916, 36.505653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.598248, 34.658497, 36.592365>,  <45.928871, 34.831131, 36.736885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.598248, 34.658497, 36.592365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464464, 0.885580, 0.004718,
		0.317922, 0.171709, -0.932438,
		-0.826558, -0.431584, -0.361298,
		45.350281, 34.529022, 36.483974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.652714, 35.354622, 36.372517>,  <45.928871, 34.831131, 36.736885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.652714, 35.354622, 36.372517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356525, 35.091820, 36.429153>,  <45.178810, 34.934139, 36.463135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356525, 35.091820, 36.429153>,  <45.652714, 35.354622, 36.372517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356525, 35.091820, 36.429153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616323, 0.747816, 0.246816,
		-0.268040, 0.095496, -0.958663,
		-0.740473, -0.657002, 0.141588,
		45.134384, 34.894718, 36.471630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.288033, 35.335327, 35.854431>,  <45.652714, 35.354622, 36.372517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.288033, 35.335327, 35.854431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.438534, 34.980225, 35.748356>,  <46.528835, 34.767162, 35.684711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.438534, 34.980225, 35.748356>,  <46.288033, 35.335327, 35.854431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.438534, 34.980225, 35.748356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668105, 0.458267, -0.586197,
		0.641925, 0.043389, 0.765539,
		0.376255, -0.887755, -0.265185,
		46.551411, 34.713898, 35.668800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.971405, 35.371933, 35.919903>,  <46.288033, 35.335327, 35.854431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.971405, 35.371933, 35.919903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.927181, 35.103134, 35.627003>,  <46.900646, 34.941856, 35.451263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.927181, 35.103134, 35.627003>,  <46.971405, 35.371933, 35.919903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.927181, 35.103134, 35.627003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668992, 0.494548, -0.554862,
		0.735000, -0.551218, 0.394883,
		-0.110562, -0.671998, -0.732254,
		46.894012, 34.901535, 35.407326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.677223, 35.044674, 35.722488>,  <46.971405, 35.371933, 35.919903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.677223, 35.044674, 35.722488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.400013, 35.044968, 35.434124>,  <47.233685, 35.045143, 35.261105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.400013, 35.044968, 35.434124>,  <47.677223, 35.044674, 35.722488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.400013, 35.044968, 35.434124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505096, 0.714011, -0.484836,
		0.514381, -0.700134, -0.495201,
		-0.693029, 0.000734, -0.720909,
		47.192104, 35.045189, 35.217850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.926525, 34.849373, 35.026371>,  <47.677223, 35.044674, 35.722488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.926525, 34.849373, 35.026371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.609909, 35.088688, 34.976547>,  <47.419937, 35.232277, 34.946655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.609909, 35.088688, 34.976547>,  <47.926525, 34.849373, 35.026371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.609909, 35.088688, 34.976547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597560, 0.715059, -0.362784,
		-0.127982, -0.361590, -0.923512,
		-0.791544, 0.598284, -0.124557,
		47.372444, 35.268173, 34.939178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.903305, 33.831333, 46.953270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699646, 33.487064, 46.951561>,  <35.577450, 33.280502, 46.950535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699646, 33.487064, 46.951561>,  <35.903305, 33.831333, 46.953270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699646, 33.487064, 46.951561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118110, -0.064952, -0.990874,
		0.852537, -0.505005, 0.134723,
		-0.509146, -0.860669, -0.004272,
		35.546902, 33.228863, 46.950279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198795, 33.574184, 46.415642>,  <35.903305, 33.831333, 46.953270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198795, 33.574184, 46.415642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.872135, 33.345482, 46.447105>,  <35.676140, 33.208260, 46.465984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.872135, 33.345482, 46.447105>,  <36.198795, 33.574184, 46.415642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872135, 33.345482, 46.447105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078910, -0.024388, -0.996583,
		0.571718, -0.820063, -0.025201,
		-0.816647, -0.571753, 0.078654,
		35.627140, 33.173958, 46.470703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267052, 32.968128, 45.983444>,  <36.198795, 33.574184, 46.415642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267052, 32.968128, 45.983444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.880947, 33.069031, 46.010693>,  <35.649284, 33.129574, 46.027042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.880947, 33.069031, 46.010693>,  <36.267052, 32.968128, 45.983444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880947, 33.069031, 46.010693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082959, -0.048642, -0.995365,
		-0.247780, -0.966435, 0.067880,
		-0.965258, 0.252262, 0.068122,
		35.591370, 33.144711, 46.031128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972736, 32.610748, 45.443813>,  <36.267052, 32.968128, 45.983444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972736, 32.610748, 45.443813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.709564, 32.886684, 45.564636>,  <35.551659, 33.052246, 45.637131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.709564, 32.886684, 45.564636>,  <35.972736, 32.610748, 45.443813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709564, 32.886684, 45.564636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296504, 0.131414, -0.945947,
		-0.692250, -0.711932, 0.118080,
		-0.657932, 0.689843, 0.302062,
		35.512184, 33.093636, 45.655254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411690, 32.412113, 44.992722>,  <35.972736, 32.610748, 45.443813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411690, 32.412113, 44.992722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.298599, 32.766327, 45.140175>,  <35.230747, 32.978855, 45.228645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.298599, 32.766327, 45.140175>,  <35.411690, 32.412113, 44.992722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298599, 32.766327, 45.140175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399656, 0.240614, -0.884523,
		-0.871976, -0.397403, 0.285882,
		-0.282725, 0.885537, 0.368634,
		35.213783, 33.031986, 45.250767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810524, 32.611145, 44.600754>,  <35.411690, 32.412113, 44.992722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810524, 32.611145, 44.600754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.931755, 32.962002, 44.749760>,  <35.004494, 33.172516, 44.839165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.931755, 32.962002, 44.749760>,  <34.810524, 32.611145, 44.600754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931755, 32.962002, 44.749760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372827, 0.468885, -0.800717,
		-0.877008, 0.103798, 0.469131,
		0.303081, 0.877139, 0.372517,
		35.022678, 33.225143, 44.861515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247005, 33.068939, 44.510601>,  <34.810524, 32.611145, 44.600754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247005, 33.068939, 44.510601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.583538, 33.284637, 44.525471>,  <34.785458, 33.414055, 44.534393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.583538, 33.284637, 44.525471>,  <34.247005, 33.068939, 44.510601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583538, 33.284637, 44.525471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241798, 0.436981, -0.866361,
		-0.483426, 0.719904, 0.498033,
		0.841328, 0.539245, 0.037177,
		34.835938, 33.446411, 44.536625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022820, 33.781071, 44.378918>,  <34.247005, 33.068939, 44.510601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022820, 33.781071, 44.378918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.413570, 33.730247, 44.310127>,  <34.648022, 33.699753, 44.268852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.413570, 33.730247, 44.310127>,  <34.022820, 33.781071, 44.378918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413570, 33.730247, 44.310127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097662, 0.450350, -0.887495,
		0.190214, 0.883765, 0.427526,
		0.976873, -0.127060, -0.171973,
		34.706631, 33.692131, 44.258533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136307, 34.405495, 43.977474>,  <34.022820, 33.781071, 44.378918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136307, 34.405495, 43.977474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.463360, 34.180092, 43.930244>,  <34.659592, 34.044849, 43.901909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.463360, 34.180092, 43.930244>,  <34.136307, 34.405495, 43.977474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463360, 34.180092, 43.930244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093507, 0.332327, -0.938517,
		0.568096, 0.756322, 0.324414,
		0.817633, -0.563503, -0.118072,
		34.708649, 34.011040, 43.894821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605087, 34.793068, 43.496887>,  <34.136307, 34.405495, 43.977474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605087, 34.793068, 43.496887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.698330, 34.407047, 43.449001>,  <34.754276, 34.175434, 43.420269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.698330, 34.407047, 43.449001>,  <34.605087, 34.793068, 43.496887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698330, 34.407047, 43.449001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082753, 0.142350, -0.986351,
		0.968923, 0.220021, 0.113044,
		0.233110, -0.965053, -0.119718,
		34.768265, 34.117531, 43.413086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159328, 34.816200, 43.170715>,  <34.605087, 34.793068, 43.496887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159328, 34.816200, 43.170715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.059757, 34.435326, 43.099865>,  <35.000015, 34.206799, 43.057354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.059757, 34.435326, 43.099865>,  <35.159328, 34.816200, 43.170715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059757, 34.435326, 43.099865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062636, 0.166670, -0.984021,
		0.966496, -0.256041, 0.018154,
		-0.248924, -0.952189, -0.177123,
		34.985081, 34.149670, 43.046726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753048, 34.488583, 42.834660>,  <35.159328, 34.816200, 43.170715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753048, 34.488583, 42.834660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.407631, 34.306011, 42.748898>,  <35.200382, 34.196468, 42.697441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.407631, 34.306011, 42.748898>,  <35.753048, 34.488583, 42.834660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407631, 34.306011, 42.748898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214080, 0.053143, -0.975369,
		0.456582, -0.888171, 0.051822,
		-0.863541, -0.456430, -0.214404,
		35.148567, 34.169083, 42.684578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891331, 34.062737, 42.279293>,  <35.753048, 34.488583, 42.834660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891331, 34.062737, 42.279293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.491695, 34.066238, 42.262539>,  <35.251915, 34.068340, 42.252487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.491695, 34.066238, 42.262539>,  <35.891331, 34.062737, 42.279293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491695, 34.066238, 42.262539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042608, 0.293861, -0.954898,
		0.003947, -0.955808, -0.293965,
		-0.999084, 0.008756, -0.041885,
		35.191971, 34.068867, 42.249973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698055, 33.625500, 41.689365>,  <35.891331, 34.062737, 42.279293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698055, 33.625500, 41.689365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.395660, 33.867516, 41.789299>,  <35.214222, 34.012726, 41.849258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.395660, 33.867516, 41.789299>,  <35.698055, 33.625500, 41.689365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395660, 33.867516, 41.789299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275705, 0.051852, -0.959843,
		-0.593694, -0.794508, 0.127612,
		-0.755986, 0.605036, 0.249834,
		35.168865, 34.049026, 41.864250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557945, 33.522499, 41.106045>,  <35.698055, 33.625500, 41.689365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557945, 33.522499, 41.106045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.293983, 33.780155, 41.260761>,  <35.135605, 33.934750, 41.353592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.293983, 33.780155, 41.260761>,  <35.557945, 33.522499, 41.106045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293983, 33.780155, 41.260761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410561, 0.122001, -0.903635,
		-0.629259, -0.755113, 0.183951,
		-0.659904, 0.644143, 0.386790,
		35.096012, 33.973396, 41.376797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823696, 33.346569, 40.956280>,  <35.557945, 33.522499, 41.106045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823696, 33.346569, 40.956280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.876400, 33.741875, 40.987190>,  <34.908024, 33.979057, 41.005737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.876400, 33.741875, 40.987190>,  <34.823696, 33.346569, 40.956280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876400, 33.741875, 40.987190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347029, 0.119009, -0.930273,
		-0.928553, 0.095757, 0.358637,
		0.131762, 0.988265, 0.077275,
		34.915928, 34.038353, 41.010372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225407, 33.663033, 40.728371>,  <34.823696, 33.346569, 40.956280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225407, 33.663033, 40.728371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.494240, 33.957989, 40.701355>,  <34.655540, 34.134964, 40.685146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.494240, 33.957989, 40.701355>,  <34.225407, 33.663033, 40.728371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494240, 33.957989, 40.701355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319804, 0.206790, -0.924642,
		-0.667856, 0.643035, 0.374800,
		0.672082, 0.737390, -0.067540,
		34.695866, 34.179207, 40.681091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857819, 34.226871, 40.410984>,  <34.225407, 33.663033, 40.728371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857819, 34.226871, 40.410984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.244301, 34.304173, 40.342739>,  <34.476189, 34.350555, 40.301792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.244301, 34.304173, 40.342739>,  <33.857819, 34.226871, 40.410984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244301, 34.304173, 40.342739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224816, 0.307820, -0.924502,
		-0.126149, 0.931611, 0.340863,
		0.966201, 0.193256, -0.170610,
		34.534161, 34.362148, 40.291557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854374, 34.833908, 40.090599>,  <33.857819, 34.226871, 40.410984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854374, 34.833908, 40.090599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.208057, 34.672878, 39.995842>,  <34.420265, 34.576260, 39.938988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.208057, 34.672878, 39.995842>,  <33.854374, 34.833908, 40.090599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208057, 34.672878, 39.995842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006503, 0.496489, -0.868019,
		0.467053, 0.769047, 0.436380,
		0.884205, -0.402573, -0.236888,
		34.473320, 34.552105, 39.924774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187725, 35.324539, 39.812916>,  <33.854374, 34.833908, 40.090599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187725, 35.324539, 39.812916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.395557, 35.017849, 39.662094>,  <34.520256, 34.833836, 39.571602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.395557, 35.017849, 39.662094>,  <34.187725, 35.324539, 39.812916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395557, 35.017849, 39.662094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099352, 0.492517, -0.864613,
		0.848623, 0.411779, 0.332080,
		0.519585, -0.766723, -0.377051,
		34.551434, 34.787830, 39.548981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623226, 35.651314, 39.405544>,  <34.187725, 35.324539, 39.812916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623226, 35.651314, 39.405544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.655003, 35.277733, 39.266159>,  <34.674068, 35.053585, 39.182529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.655003, 35.277733, 39.266159>,  <34.623226, 35.651314, 39.405544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655003, 35.277733, 39.266159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266078, 0.356747, -0.895508,
		0.960673, -0.021579, 0.276844,
		0.079439, -0.933952, -0.348459,
		34.678833, 34.997547, 39.161621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378513, 35.576172, 39.118290>,  <34.623226, 35.651314, 39.405544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378513, 35.576172, 39.118290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.081066, 35.346798, 38.980762>,  <34.902599, 35.209175, 38.898247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.081066, 35.346798, 38.980762>,  <35.378513, 35.576172, 39.118290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081066, 35.346798, 38.980762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084121, 0.429909, -0.898944,
		0.663295, -0.697391, -0.271449,
		-0.743615, -0.573431, -0.343823,
		34.857983, 35.174770, 38.877617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934319, 35.783955, 39.421734>,  <35.378513, 35.576172, 39.118290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934319, 35.783955, 39.421734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.219082, 36.064377, 39.405216>,  <36.389942, 36.232628, 39.395306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.219082, 36.064377, 39.405216>,  <35.934319, 35.783955, 39.421734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219082, 36.064377, 39.405216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080778, -0.023328, 0.996459,
		0.697608, -0.712727, -0.073237,
		0.711912, 0.701054, -0.041298,
		36.432655, 36.274693, 39.392826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502178, 35.524315, 39.740425>,  <35.934319, 35.783955, 39.421734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502178, 35.524315, 39.740425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.546753, 35.921284, 39.761105>,  <36.573498, 36.159466, 39.773514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.546753, 35.921284, 39.761105>,  <36.502178, 35.524315, 39.740425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546753, 35.921284, 39.761105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027675, -0.055105, 0.998097,
		0.993386, -0.109793, -0.033606,
		0.111436, 0.992426, 0.051702,
		36.580185, 36.219013, 39.776615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048210, 35.633587, 40.184254>,  <36.502178, 35.524315, 39.740425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048210, 35.633587, 40.184254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.907066, 36.007854, 40.185726>,  <36.822380, 36.232414, 40.186607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.907066, 36.007854, 40.185726>,  <37.048210, 35.633587, 40.184254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907066, 36.007854, 40.185726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370856, 0.136247, 0.918642,
		0.859044, 0.325515, -0.395075,
		-0.352859, 0.935669, 0.003678,
		36.801208, 36.288555, 40.186829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572021, 36.013538, 40.481724>,  <37.048210, 35.633587, 40.184254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572021, 36.013538, 40.481724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247204, 36.238102, 40.545471>,  <37.052311, 36.372841, 40.583721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247204, 36.238102, 40.545471>,  <37.572021, 36.013538, 40.481724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247204, 36.238102, 40.545471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256068, 0.097375, 0.961742,
		0.524411, 0.821790, -0.222832,
		-0.812048, 0.561408, 0.159370,
		37.003590, 36.406525, 40.593281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765984, 36.566746, 40.931992>,  <37.572021, 36.013538, 40.481724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765984, 36.566746, 40.931992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.367386, 36.540619, 40.952896>,  <37.128227, 36.524944, 40.965439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.367386, 36.540619, 40.952896>,  <37.765984, 36.566746, 40.931992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367386, 36.540619, 40.952896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050305, 0.031286, 0.998244,
		-0.066837, 0.997374, -0.027890,
		-0.996495, -0.065316, 0.052264,
		37.068436, 36.521023, 40.968575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462990, 37.082043, 41.376957>,  <37.765984, 36.566746, 40.931992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462990, 37.082043, 41.376957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.202175, 36.778774, 41.374737>,  <37.045689, 36.596813, 41.373405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.202175, 36.778774, 41.374737>,  <37.462990, 37.082043, 41.376957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202175, 36.778774, 41.374737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082014, 0.063248, 0.994622,
		-0.753741, 0.648983, -0.103420,
		-0.652034, -0.758169, -0.005553,
		37.006565, 36.551323, 41.373070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965012, 37.280758, 41.900826>,  <37.462990, 37.082043, 41.376957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965012, 37.280758, 41.900826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.902897, 36.886509, 41.874168>,  <36.865627, 36.649960, 41.858173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.902897, 36.886509, 41.874168>,  <36.965012, 37.280758, 41.900826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902897, 36.886509, 41.874168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127054, -0.046975, 0.990783,
		-0.979666, 0.162318, -0.117933,
		-0.155282, -0.985620, -0.066643,
		36.856312, 36.590824, 41.854176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710983, 37.187534, 42.587688>,  <36.965012, 37.280758, 41.900826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710983, 37.187534, 42.587688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.724434, 36.812599, 42.448971>,  <36.732502, 36.587639, 42.365738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.724434, 36.812599, 42.448971>,  <36.710983, 37.187534, 42.587688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724434, 36.812599, 42.448971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131005, -0.348132, 0.928247,
		-0.990811, 0.014221, -0.134501,
		0.033624, -0.937338, -0.346796,
		36.734520, 36.531399, 42.344933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161602, 36.861069, 42.891685>,  <36.710983, 37.187534, 42.587688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161602, 36.861069, 42.891685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.410522, 36.565331, 42.788834>,  <36.559875, 36.387890, 42.727123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.410522, 36.565331, 42.788834>,  <36.161602, 36.861069, 42.891685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410522, 36.565331, 42.788834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074386, -0.382853, 0.920810,
		-0.779236, -0.553893, -0.293246,
		0.622300, -0.739342, -0.257131,
		36.597214, 36.343529, 42.711693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864655, 36.288567, 43.170967>,  <36.161602, 36.861069, 42.891685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864655, 36.288567, 43.170967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.253208, 36.207886, 43.120796>,  <36.486340, 36.159477, 43.090694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.253208, 36.207886, 43.120796>,  <35.864655, 36.288567, 43.170967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253208, 36.207886, 43.120796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061150, -0.297893, 0.952639,
		-0.229515, -0.933046, -0.277033,
		0.971382, -0.201705, -0.125427,
		36.544624, 36.147373, 43.083168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004929, 35.666046, 43.555069>,  <35.864655, 36.288567, 43.170967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004929, 35.666046, 43.555069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.370060, 35.818413, 43.496227>,  <36.589138, 35.909832, 43.460922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.370060, 35.818413, 43.496227>,  <36.004929, 35.666046, 43.555069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370060, 35.818413, 43.496227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199742, -0.102333, 0.974490,
		0.356150, -0.918927, -0.169499,
		0.912831, 0.380920, -0.147102,
		36.643909, 35.932690, 43.452095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460831, 35.180664, 43.801937>,  <36.004929, 35.666046, 43.555069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460831, 35.180664, 43.801937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.663017, 35.525631, 43.812809>,  <36.784328, 35.732613, 43.819332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.663017, 35.525631, 43.812809>,  <36.460831, 35.180664, 43.801937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663017, 35.525631, 43.812809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268660, -0.187246, 0.944860,
		0.819953, -0.470294, -0.326343,
		0.505468, 0.862417, 0.027184,
		36.814659, 35.784355, 43.820965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135582, 35.082691, 44.187698>,  <36.460831, 35.180664, 43.801937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135582, 35.082691, 44.187698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016014, 35.463028, 44.220085>,  <36.944275, 35.691231, 44.239517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016014, 35.463028, 44.220085>,  <37.135582, 35.082691, 44.187698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016014, 35.463028, 44.220085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217435, -0.014756, 0.975963,
		0.929178, 0.309337, -0.202335,
		-0.298916, 0.950838, 0.080971,
		36.926338, 35.748280, 44.244377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732178, 35.435959, 44.407784>,  <37.135582, 35.082691, 44.187698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732178, 35.435959, 44.407784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.404079, 35.639481, 44.512333>,  <37.207222, 35.761593, 44.575062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.404079, 35.639481, 44.512333>,  <37.732178, 35.435959, 44.407784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404079, 35.639481, 44.512333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247823, -0.095721, 0.964065,
		0.515537, 0.855545, -0.047578,
		-0.820247, 0.508802, 0.261371,
		37.158005, 35.792122, 44.590744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954857, 35.845078, 44.917362>,  <37.732178, 35.435959, 44.407784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954857, 35.845078, 44.917362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.556240, 35.853710, 44.949478>,  <37.317070, 35.858891, 44.968750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.556240, 35.853710, 44.949478>,  <37.954857, 35.845078, 44.917362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556240, 35.853710, 44.949478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081538, 0.064841, 0.994559,
		0.016258, 0.997662, -0.066376,
		-0.996538, 0.021582, 0.080293,
		37.257278, 35.860184, 44.973564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827942, 36.258762, 45.602913>,  <37.954857, 35.845078, 44.917362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827942, 36.258762, 45.602913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.489033, 36.062126, 45.522449>,  <37.285686, 35.944145, 45.474171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.489033, 36.062126, 45.522449>,  <37.827942, 36.258762, 45.602913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489033, 36.062126, 45.522449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096201, -0.230423, 0.968324,
		-0.522369, 0.839788, 0.147940,
		-0.847276, -0.491590, -0.201154,
		37.234852, 35.914650, 45.462105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374790, 36.533463, 46.036457>,  <37.827942, 36.258762, 45.602913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374790, 36.533463, 46.036457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278778, 36.152943, 45.959087>,  <37.221172, 35.924629, 45.912666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278778, 36.152943, 45.959087>,  <37.374790, 36.533463, 46.036457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278778, 36.152943, 45.959087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140326, -0.231158, 0.962743,
		-0.960570, 0.203943, 0.188976,
		-0.240028, -0.951301, -0.193426,
		37.206768, 35.867554, 45.901058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670864, 36.508438, 46.364872>,  <37.374790, 36.533463, 46.036457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670864, 36.508438, 46.364872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.815945, 36.138844, 46.316387>,  <36.902992, 35.917088, 46.287296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.815945, 36.138844, 46.316387>,  <36.670864, 36.508438, 46.364872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815945, 36.138844, 46.316387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252678, -0.027686, 0.967154,
		-0.896998, -0.381411, 0.223431,
		0.362697, -0.923991, -0.121208,
		36.924755, 35.861645, 46.280025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.284809, 36.075294, 46.831997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.611397, 35.860325, 46.747559>,  <36.807350, 35.731342, 46.696896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.611397, 35.860325, 46.747559>,  <36.284809, 36.075294, 46.831997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611397, 35.860325, 46.747559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091929, -0.239937, 0.966426,
		-0.570026, -0.808461, -0.146496,
		0.816468, -0.537421, -0.211091,
		36.856339, 35.699100, 46.684231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175076, 35.369102, 47.219955>,  <36.284809, 36.075294, 46.831997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175076, 35.369102, 47.219955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.565342, 35.395870, 47.136436>,  <36.799503, 35.411930, 47.086327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.565342, 35.395870, 47.136436>,  <36.175076, 35.369102, 47.219955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565342, 35.395870, 47.136436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219030, -0.254232, 0.942015,
		0.009956, -0.964826, -0.262703,
		0.975667, 0.066919, -0.208795,
		36.858044, 35.415947, 47.073799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481434, 34.775734, 47.236679>,  <36.175076, 35.369102, 47.219955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481434, 34.775734, 47.236679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.794495, 35.014202, 47.308285>,  <36.982330, 35.157284, 47.351250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.794495, 35.014202, 47.308285>,  <36.481434, 34.775734, 47.236679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794495, 35.014202, 47.308285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116282, -0.422561, 0.898844,
		0.611508, -0.682662, -0.400039,
		0.782647, 0.596168, 0.179018,
		37.029289, 35.193054, 47.361992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038582, 34.366722, 47.414955>,  <36.481434, 34.775734, 47.236679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038582, 34.366722, 47.414955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.127090, 34.724342, 47.570755>,  <37.180195, 34.938915, 47.664234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.127090, 34.724342, 47.570755>,  <37.038582, 34.366722, 47.414955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127090, 34.724342, 47.570755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048715, -0.409036, 0.911217,
		0.973994, -0.182654, -0.134063,
		0.221274, 0.894051, 0.389500,
		37.193474, 34.992558, 47.687607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709873, 34.198990, 47.717117>,  <37.038582, 34.366722, 47.414955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709873, 34.198990, 47.717117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.567902, 34.534554, 47.882168>,  <37.482719, 34.735889, 47.981197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.567902, 34.534554, 47.882168>,  <37.709873, 34.198990, 47.717117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567902, 34.534554, 47.882168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157366, -0.381459, 0.910892,
		0.921553, 0.388237, 0.003376,
		-0.354930, 0.838905, 0.412630,
		37.461422, 34.786224, 48.005959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163048, 34.398819, 48.275196>,  <37.709873, 34.198990, 47.717117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163048, 34.398819, 48.275196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.822540, 34.597218, 48.343693>,  <37.618237, 34.716255, 48.384789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.822540, 34.597218, 48.343693>,  <38.163048, 34.398819, 48.275196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822540, 34.597218, 48.343693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008310, -0.313554, 0.949534,
		0.524658, 0.809735, 0.262798,
		-0.851272, 0.495997, 0.171238,
		37.567158, 34.746017, 48.395065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345085, 34.775486, 48.887608>,  <38.163048, 34.398819, 48.275196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345085, 34.775486, 48.887608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.948021, 34.731018, 48.868591>,  <37.709782, 34.704338, 48.857182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.948021, 34.731018, 48.868591>,  <38.345085, 34.775486, 48.887608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948021, 34.731018, 48.868591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014203, -0.283259, 0.958938,
		-0.120072, 0.952578, 0.279602,
		-0.992664, -0.111170, -0.047541,
		37.650223, 34.697666, 48.854328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114914, 35.042267, 49.494343>,  <38.345085, 34.775486, 48.887608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114914, 35.042267, 49.494343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.797165, 34.831360, 49.373699>,  <37.606518, 34.704815, 49.301311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.797165, 34.831360, 49.373699>,  <38.114914, 35.042267, 49.494343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797165, 34.831360, 49.373699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006637, -0.488972, 0.872274,
		-0.607398, 0.694910, 0.384925,
		-0.794370, -0.527263, -0.301613,
		37.558853, 34.673180, 49.283215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541679, 35.256645, 49.807491>,  <38.114914, 35.042267, 49.494343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541679, 35.256645, 49.807491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.461418, 34.877102, 49.709999>,  <37.413261, 34.649376, 49.651505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.461418, 34.877102, 49.709999>,  <37.541679, 35.256645, 49.807491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461418, 34.877102, 49.709999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075298, -0.233116, 0.969529,
		-0.976765, 0.212889, -0.024673,
		-0.200651, -0.948860, -0.243729,
		37.401222, 34.592445, 49.636879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126381, 35.145634, 50.420876>,  <37.541679, 35.256645, 49.807491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126381, 35.145634, 50.420876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.211128, 34.799484, 50.239220>,  <37.261978, 34.591793, 50.130226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.211128, 34.799484, 50.239220>,  <37.126381, 35.145634, 50.420876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211128, 34.799484, 50.239220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060641, -0.475432, 0.877660,
		-0.975415, -0.158409, -0.153207,
		0.211869, -0.865373, -0.454137,
		37.274689, 34.539871, 50.102978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621601, 34.575523, 50.698578>,  <37.126381, 35.145634, 50.420876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621601, 34.575523, 50.698578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.964573, 34.417309, 50.566906>,  <37.170357, 34.322380, 50.487904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.964573, 34.417309, 50.566906>,  <36.621601, 34.575523, 50.698578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964573, 34.417309, 50.566906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095961, -0.505570, 0.857432,
		-0.505570, -0.766779, -0.395536,
		-0.857432, 0.395536, 0.329183,
		37.221802, 34.298649, 50.468151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573666, 33.893631, 51.004173>,  <36.621601, 34.575523, 50.698578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573666, 33.893631, 51.004173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956108, 33.959106, 50.906963>,  <37.185574, 33.998394, 50.848637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956108, 33.959106, 50.906963>,  <36.573666, 33.893631, 51.004173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956108, 33.959106, 50.906963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292891, -0.557482, 0.776807,
		-0.008323, -0.813891, -0.580958,
		0.956109, 0.163692, -0.243022,
		37.242943, 34.008213, 50.834057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840210, 33.246445, 51.128002>,  <36.573666, 33.893631, 51.004173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840210, 33.246445, 51.128002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.151066, 33.498161, 51.125351>,  <37.337578, 33.649193, 51.123760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.151066, 33.498161, 51.125351>,  <36.840210, 33.246445, 51.128002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151066, 33.498161, 51.125351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504347, -0.616475, 0.604643,
		0.376412, -0.473234, -0.796469,
		0.777141, 0.629292, -0.006626,
		37.384209, 33.686951, 51.123363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426323, 32.841316, 51.131218>,  <36.840210, 33.246445, 51.128002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426323, 32.841316, 51.131218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.580330, 33.187614, 51.259125>,  <37.672733, 33.395393, 51.335869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.580330, 33.187614, 51.259125>,  <37.426323, 32.841316, 51.131218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580330, 33.187614, 51.259125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495993, -0.486284, 0.719388,
		0.778302, -0.118375, -0.616630,
		0.385015, 0.865746, 0.319763,
		37.695835, 33.447338, 51.355053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973007, 32.678074, 51.353931>,  <37.426323, 32.841316, 51.131218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973007, 32.678074, 51.353931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.954170, 33.037529, 51.528397>,  <37.942867, 33.253201, 51.633076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.954170, 33.037529, 51.528397>,  <37.973007, 32.678074, 51.353931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954170, 33.037529, 51.528397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550971, -0.340851, 0.761742,
		0.833195, 0.276183, -0.479072,
		-0.047088, 0.898634, 0.436164,
		37.940044, 33.307117, 51.659245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620869, 32.811489, 51.461803>,  <37.973007, 32.678074, 51.353931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620869, 32.811489, 51.461803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.408386, 33.032242, 51.718941>,  <38.280895, 33.164692, 51.873222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.408386, 33.032242, 51.718941>,  <38.620869, 32.811489, 51.461803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408386, 33.032242, 51.718941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570566, -0.327875, 0.752962,
		0.626316, 0.766765, -0.140713,
		-0.531208, 0.551878, 0.642844,
		38.249023, 33.197803, 51.911793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057121, 33.092999, 51.895184>,  <38.620869, 32.811489, 51.461803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057121, 33.092999, 51.895184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.712490, 33.103214, 52.097977>,  <38.505711, 33.109344, 52.219654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.712490, 33.103214, 52.097977>,  <39.057121, 33.092999, 51.895184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712490, 33.103214, 52.097977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488754, -0.228079, 0.842081,
		0.137141, 0.973307, 0.184024,
		-0.861576, 0.025541, 0.506986,
		38.454018, 33.110878, 52.250072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197357, 33.491451, 52.485363>,  <39.057121, 33.092999, 51.895184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197357, 33.491451, 52.485363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869038, 33.272755, 52.551517>,  <38.672047, 33.141537, 52.591209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869038, 33.272755, 52.551517>,  <39.197357, 33.491451, 52.485363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869038, 33.272755, 52.551517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418586, -0.378706, 0.825450,
		-0.388676, 0.746762, 0.539702,
		-0.820803, -0.546744, 0.165390,
		38.622795, 33.108730, 52.601135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043102, 33.638885, 53.189606>,  <39.197357, 33.491451, 52.485363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043102, 33.638885, 53.189606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.872574, 33.286861, 53.105942>,  <38.770256, 33.075645, 53.055744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.872574, 33.286861, 53.105942>,  <39.043102, 33.638885, 53.189606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872574, 33.286861, 53.105942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371687, -0.381226, 0.846472,
		-0.824682, 0.283126, 0.489631,
		-0.426318, -0.880060, -0.209156,
		38.744678, 33.022842, 53.043194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902035, 33.441952, 53.845314>,  <39.043102, 33.638885, 53.189606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902035, 33.441952, 53.845314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.874821, 33.103214, 53.634323>,  <38.858490, 32.899971, 53.507729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.874821, 33.103214, 53.634323>,  <38.902035, 33.441952, 53.845314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874821, 33.103214, 53.634323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580878, -0.463474, 0.669158,
		-0.811142, -0.260871, 0.523445,
		-0.068039, -0.846840, -0.527478,
		38.854408, 32.849163, 53.476078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670528, 32.988400, 54.269958>,  <38.902035, 33.441952, 53.845314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670528, 32.988400, 54.269958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.841961, 32.773861, 53.979126>,  <38.944820, 32.645138, 53.804626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.841961, 32.773861, 53.979126>,  <38.670528, 32.988400, 54.269958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841961, 32.773861, 53.979126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472621, -0.552766, 0.686352,
		-0.770031, -0.637791, 0.016587,
		0.428580, -0.536351, -0.727081,
		38.970535, 32.612957, 53.761002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252621, 33.024273, 54.893875>,  <38.670528, 32.988400, 54.269958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252621, 33.024273, 54.893875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.227619, 32.635117, 54.804810>,  <38.212620, 32.401623, 54.751369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.227619, 32.635117, 54.804810>,  <38.252621, 33.024273, 54.893875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227619, 32.635117, 54.804810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567964, -0.148778, 0.809495,
		-0.820677, 0.177058, -0.543268,
		-0.062501, -0.972890, -0.222661,
		38.208870, 32.343250, 54.738010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593319, 32.802555, 55.039204>,  <38.252621, 33.024273, 54.893875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593319, 32.802555, 55.039204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.758003, 32.438030, 55.039158>,  <37.856812, 32.219315, 55.039131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.758003, 32.438030, 55.039158>,  <37.593319, 32.802555, 55.039204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758003, 32.438030, 55.039158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688959, -0.311335, 0.654527,
		-0.596516, -0.269397, -0.756038,
		0.411709, -0.911315, -0.000113,
		37.881516, 32.164635, 55.039124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167385, 32.241005, 54.697830>,  <37.593319, 32.802555, 55.039204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167385, 32.241005, 54.697830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384502, 32.121655, 55.011864>,  <37.514771, 32.050045, 55.200283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384502, 32.121655, 55.011864>,  <37.167385, 32.241005, 54.697830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384502, 32.121655, 55.011864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818540, 0.021387, 0.574051,
		-0.188075, -0.954208, -0.232626,
		0.542789, -0.298379, 0.785080,
		37.547340, 32.032143, 55.247387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923328, 31.495350, 54.683163>,  <37.167385, 32.241005, 54.697830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923328, 31.495350, 54.683163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.743004, 31.139940, 54.649006>,  <36.634808, 30.926695, 54.628510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.743004, 31.139940, 54.649006>,  <36.923328, 31.495350, 54.683163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743004, 31.139940, 54.649006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016428, 0.103912, -0.994451,
		0.892466, -0.446911, -0.061442,
		-0.450816, -0.888523, -0.085396,
		36.607758, 30.873383, 54.623386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251911, 31.087578, 54.015514>,  <36.923328, 31.495350, 54.683163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251911, 31.087578, 54.015514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879478, 30.987326, 54.121552>,  <36.656017, 30.927176, 54.185173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879478, 30.987326, 54.121552>,  <37.251911, 31.087578, 54.015514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879478, 30.987326, 54.121552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267867, -0.023628, -0.963166,
		0.247662, -0.967795, -0.045136,
		-0.931081, -0.250630, 0.265092,
		36.600155, 30.912136, 54.201080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077808, 30.513899, 53.520641>,  <37.251911, 31.087578, 54.015514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077808, 30.513899, 53.520641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.737682, 30.670259, 53.661587>,  <36.533607, 30.764076, 53.746155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.737682, 30.670259, 53.661587>,  <37.077808, 30.513899, 53.520641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737682, 30.670259, 53.661587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297926, 0.194372, -0.934590,
		-0.433823, -0.899674, -0.048817,
		-0.850316, 0.390903, 0.352360,
		36.482586, 30.787531, 53.767296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573551, 30.049368, 53.152298>,  <37.077808, 30.513899, 53.520641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573551, 30.049368, 53.152298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.415161, 30.392120, 53.284332>,  <36.320126, 30.597773, 53.363552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.415161, 30.392120, 53.284332>,  <36.573551, 30.049368, 53.152298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415161, 30.392120, 53.284332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270095, 0.234877, -0.933746,
		-0.877639, -0.458898, 0.138433,
		-0.395979, 0.856882, 0.330083,
		36.296368, 30.649185, 53.383358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983513, 30.078114, 52.826389>,  <36.573551, 30.049368, 53.152298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983513, 30.078114, 52.826389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.016720, 30.460907, 52.937592>,  <36.036644, 30.690584, 53.004314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.016720, 30.460907, 52.937592>,  <35.983513, 30.078114, 52.826389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016720, 30.460907, 52.937592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375233, 0.288455, -0.880906,
		-0.923206, -0.031189, 0.383038,
		0.083015, 0.956986, 0.278006,
		36.041626, 30.748003, 53.020992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281132, 30.416685, 52.633675>,  <35.983513, 30.078114, 52.826389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281132, 30.416685, 52.633675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.569328, 30.693228, 52.655273>,  <35.742249, 30.859154, 52.668232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.569328, 30.693228, 52.655273>,  <35.281132, 30.416685, 52.633675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569328, 30.693228, 52.655273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309622, 0.390391, -0.867023,
		-0.620502, 0.607966, 0.495333,
		0.720494, 0.691356, 0.053999,
		35.785477, 30.900635, 52.671474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976559, 30.969753, 52.214333>,  <35.281132, 30.416685, 52.633675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976559, 30.969753, 52.214333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.356602, 31.093046, 52.233463>,  <35.584629, 31.167021, 52.244942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.356602, 31.093046, 52.233463>,  <34.976559, 30.969753, 52.214333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356602, 31.093046, 52.233463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139035, 0.555744, -0.819645,
		-0.279217, 0.772103, 0.570872,
		0.950109, 0.308230, 0.047823,
		35.641636, 31.185514, 52.247810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939453, 31.718105, 52.132996>,  <34.976559, 30.969753, 52.214333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939453, 31.718105, 52.132996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.312977, 31.614054, 52.034748>,  <35.537090, 31.551622, 51.975800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.312977, 31.614054, 52.034748>,  <34.939453, 31.718105, 52.132996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312977, 31.614054, 52.034748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058080, 0.567208, -0.821524,
		0.353020, 0.781414, 0.514557,
		0.933811, -0.260129, -0.245621,
		35.593121, 31.536015, 51.961063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217476, 32.271919, 51.787189>,  <34.939453, 31.718105, 52.132996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217476, 32.271919, 51.787189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.451763, 31.974129, 51.659012>,  <35.592335, 31.795454, 51.582104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.451763, 31.974129, 51.659012>,  <35.217476, 32.271919, 51.787189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451763, 31.974129, 51.659012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048718, 0.426982, -0.902946,
		0.809048, 0.513262, 0.286362,
		0.585720, -0.744478, -0.320444,
		35.627480, 31.750786, 51.562878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765903, 32.604179, 51.491508>,  <35.217476, 32.271919, 51.787189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765903, 32.604179, 51.491508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.782024, 32.229385, 51.352692>,  <35.791698, 32.004509, 51.269402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.782024, 32.229385, 51.352692>,  <35.765903, 32.604179, 51.491508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782024, 32.229385, 51.352692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043045, 0.348625, -0.936273,
		0.998260, 0.022796, 0.054383,
		0.040302, -0.936985, -0.347037,
		35.794113, 31.948290, 51.248581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302715, 32.617130, 51.078671>,  <35.765903, 32.604179, 51.491508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302715, 32.617130, 51.078671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079342, 32.302834, 50.972260>,  <35.945320, 32.114258, 50.908413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079342, 32.302834, 50.972260>,  <36.302715, 32.617130, 51.078671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079342, 32.302834, 50.972260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055718, 0.284434, -0.957075,
		0.827678, -0.549282, -0.115056,
		-0.558430, -0.785740, -0.266025,
		35.911812, 32.067112, 50.892452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670181, 32.288837, 50.510525>,  <36.302715, 32.617130, 51.078671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670181, 32.288837, 50.510525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.276585, 32.217548, 50.509811>,  <36.040428, 32.174774, 50.509384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.276585, 32.217548, 50.509811>,  <36.670181, 32.288837, 50.510525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276585, 32.217548, 50.509811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040695, 0.234407, -0.971287,
		0.173516, -0.955664, -0.237906,
		-0.983990, -0.178215, -0.001783,
		35.981388, 32.164082, 50.509277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619598, 31.959909, 49.967697>,  <36.670181, 32.288837, 50.510525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619598, 31.959909, 49.967697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.238289, 32.062252, 50.031963>,  <36.009502, 32.123657, 50.070522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.238289, 32.062252, 50.031963>,  <36.619598, 31.959909, 49.967697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238289, 32.062252, 50.031963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085044, 0.283053, -0.955326,
		-0.289905, -0.924348, -0.248066,
		-0.953269, 0.255857, 0.160669,
		35.952309, 32.139008, 50.080166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330685, 31.698498, 49.316078>,  <36.619598, 31.959909, 49.967697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330685, 31.698498, 49.316078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.086151, 31.971775, 49.475834>,  <35.939430, 32.135742, 49.571690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.086151, 31.971775, 49.475834>,  <36.330685, 31.698498, 49.316078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086151, 31.971775, 49.475834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287215, 0.278728, -0.916416,
		-0.737410, -0.674952, 0.025825,
		-0.611338, 0.683191, 0.399393,
		35.902748, 32.176731, 49.595654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671680, 31.589491, 49.049194>,  <36.330685, 31.698498, 49.316078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671680, 31.589491, 49.049194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.669659, 31.964985, 49.187038>,  <35.668446, 32.190281, 49.269745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.669659, 31.964985, 49.187038>,  <35.671680, 31.589491, 49.049194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669659, 31.964985, 49.187038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235989, 0.333757, -0.912642,
		-0.971743, -0.085938, 0.219843,
		-0.005057, 0.938733, 0.344606,
		35.668140, 32.246605, 49.290421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044582, 31.917410, 48.670799>,  <35.671680, 31.589491, 49.049194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044582, 31.917410, 48.670799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.243679, 32.236465, 48.807053>,  <35.363136, 32.427898, 48.888805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.243679, 32.236465, 48.807053>,  <35.044582, 31.917410, 48.670799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243679, 32.236465, 48.807053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314656, 0.532045, -0.786079,
		-0.808235, 0.284083, 0.515803,
		0.497742, 0.797637, 0.340629,
		35.393002, 32.475758, 48.909241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584526, 32.411430, 48.678677>,  <35.044582, 31.917410, 48.670799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584526, 32.411430, 48.678677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.940323, 32.592384, 48.652893>,  <35.153801, 32.700958, 48.637424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.940323, 32.592384, 48.652893>,  <34.584526, 32.411430, 48.678677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940323, 32.592384, 48.652893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316660, 0.508536, -0.800698,
		-0.329449, 0.732622, 0.595590,
		0.889489, 0.452389, -0.064455,
		35.207169, 32.728100, 48.633556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488468, 33.087132, 48.337563>,  <34.584526, 32.411430, 48.678677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488468, 33.087132, 48.337563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.881271, 33.024624, 48.295158>,  <35.116955, 32.987118, 48.269714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.881271, 33.024624, 48.295158>,  <34.488468, 33.087132, 48.337563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881271, 33.024624, 48.295158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037881, 0.386957, -0.921319,
		0.185000, 0.908759, 0.374075,
		0.982008, -0.156274, -0.106012,
		35.175873, 32.977741, 48.263355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717163, 33.651577, 47.919262>,  <34.488468, 33.087132, 48.337563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717163, 33.651577, 47.919262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.015591, 33.390827, 47.864948>,  <35.194649, 33.234375, 47.832359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.015591, 33.390827, 47.864948>,  <34.717163, 33.651577, 47.919262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015591, 33.390827, 47.864948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020868, 0.180934, -0.983274,
		0.665543, 0.736422, 0.121386,
		0.746068, -0.651878, -0.135787,
		35.239410, 33.195263, 47.824211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186848, 33.920395, 47.445026>,  <34.717163, 33.651577, 47.919262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186848, 33.920395, 47.445026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264851, 33.529156, 47.415928>,  <35.311653, 33.294411, 47.398468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264851, 33.529156, 47.415928>,  <35.186848, 33.920395, 47.445026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264851, 33.529156, 47.415928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033876, 0.067410, -0.997150,
		0.980216, 0.196921, -0.019988,
		0.195012, -0.978099, -0.072747,
		35.323353, 33.235725, 47.394104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.591362, 28.706488, 32.466686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.378838, 28.368320, 32.488503>,  <44.251324, 28.165421, 32.501591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.378838, 28.368320, 32.488503>,  <44.591362, 28.706488, 32.466686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.378838, 28.368320, 32.488503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689887, 0.469136, 0.551332,
		-0.491694, 0.255303, -0.832501,
		-0.531312, -0.845419, 0.054541,
		44.219444, 28.114695, 32.504864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809559, 28.754219, 32.292187>,  <44.591362, 28.706488, 32.466686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.809559, 28.754219, 32.292187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.847412, 28.421391, 32.510803>,  <43.870125, 28.221693, 32.641972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.847412, 28.421391, 32.510803>,  <43.809559, 28.754219, 32.292187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.847412, 28.421391, 32.510803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576404, 0.401817, 0.711549,
		-0.811667, -0.382366, -0.441581,
		0.094637, -0.832070, 0.546539,
		43.875805, 28.171770, 32.674767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083652, 28.582872, 32.583454>,  <43.809559, 28.754219, 32.292187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083652, 28.582872, 32.583454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.338253, 28.366385, 32.803253>,  <43.491013, 28.236492, 32.935135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.338253, 28.366385, 32.803253>,  <43.083652, 28.582872, 32.583454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338253, 28.366385, 32.803253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494558, 0.260310, 0.829247,
		-0.591844, -0.799575, -0.101977,
		0.636500, -0.541219, 0.549500,
		43.529202, 28.204020, 32.968102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675621, 28.141001, 32.955868>,  <43.083652, 28.582872, 32.583454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675621, 28.141001, 32.955868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.022305, 28.166574, 33.153751>,  <43.230312, 28.181919, 33.272480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.022305, 28.166574, 33.153751>,  <42.675621, 28.141001, 32.955868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022305, 28.166574, 33.153751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469026, 0.442065, 0.764587,
		-0.169809, -0.894702, 0.413127,
		0.866706, 0.063933, 0.494705,
		43.282318, 28.185755, 33.302162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479568, 27.993612, 33.640503>,  <42.675621, 28.141001, 32.955868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479568, 27.993612, 33.640503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.813904, 28.212872, 33.652512>,  <43.014507, 28.344427, 33.659718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.813904, 28.212872, 33.652512>,  <42.479568, 27.993612, 33.640503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.813904, 28.212872, 33.652512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519566, 0.772228, 0.365672,
		0.177261, -0.321241, 0.930260,
		0.835841, 0.548150, 0.030020,
		43.064655, 28.377317, 33.661518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452705, 28.202307, 34.376812>,  <42.479568, 27.993612, 33.640503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452705, 28.202307, 34.376812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.707657, 28.450525, 34.194092>,  <42.860630, 28.599457, 34.084461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.707657, 28.450525, 34.194092>,  <42.452705, 28.202307, 34.376812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707657, 28.450525, 34.194092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366468, 0.765613, 0.528714,
		0.677822, -0.169592, 0.715399,
		0.637384, 0.620545, -0.456800,
		42.898872, 28.636688, 34.057053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635578, 28.669598, 34.822067>,  <42.452705, 28.202307, 34.376812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635578, 28.669598, 34.822067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.800694, 28.867624, 34.516254>,  <42.899765, 28.986441, 34.332767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.800694, 28.867624, 34.516254>,  <42.635578, 28.669598, 34.822067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800694, 28.867624, 34.516254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061587, 0.852637, 0.518862,
		0.908740, -0.167096, 0.382452,
		0.412793, 0.495065, -0.764534,
		42.924530, 29.016144, 34.286896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151672, 29.058111, 35.165596>,  <42.635578, 28.669598, 34.822067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151672, 29.058111, 35.165596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.023441, 29.237522, 34.831875>,  <42.946503, 29.345169, 34.631641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.023441, 29.237522, 34.831875>,  <43.151672, 29.058111, 35.165596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023441, 29.237522, 34.831875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033168, 0.885559, 0.463340,
		0.946641, 0.120865, -0.298768,
		-0.320579, 0.448526, -0.834298,
		42.927269, 29.372080, 34.581585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586895, 29.578098, 35.068787>,  <43.151672, 29.058111, 35.165596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586895, 29.578098, 35.068787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.262703, 29.690262, 34.863071>,  <43.068188, 29.757559, 34.739643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.262703, 29.690262, 34.863071>,  <43.586895, 29.578098, 35.068787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262703, 29.690262, 34.863071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038817, 0.901757, 0.430496,
		0.584475, 0.328947, -0.741743,
		-0.810483, 0.280406, -0.514286,
		43.019558, 29.774384, 34.708786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762913, 30.284298, 34.739746>,  <43.586895, 29.578098, 35.068787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762913, 30.284298, 34.739746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.364697, 30.247803, 34.749313>,  <43.125767, 30.225904, 34.755054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.364697, 30.247803, 34.749313>,  <43.762913, 30.284298, 34.739746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364697, 30.247803, 34.749313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070999, 0.891802, 0.446820,
		-0.062096, 0.443130, -0.894304,
		-0.995542, -0.091240, 0.023916,
		43.066032, 30.220430, 34.756489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584846, 30.900297, 34.496155>,  <43.762913, 30.284298, 34.739746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584846, 30.900297, 34.496155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.252533, 30.770437, 34.676998>,  <43.053146, 30.692522, 34.785503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.252533, 30.770437, 34.676998>,  <43.584846, 30.900297, 34.496155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252533, 30.770437, 34.676998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004721, 0.816357, 0.577529,
		-0.556578, 0.477666, -0.679747,
		-0.830782, -0.324649, 0.452111,
		43.003300, 30.673042, 34.812630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192577, 31.495882, 34.455704>,  <43.584846, 30.900297, 34.496155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192577, 31.495882, 34.455704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.029091, 31.259733, 34.734104>,  <42.931000, 31.118044, 34.901142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.029091, 31.259733, 34.734104>,  <43.192577, 31.495882, 34.455704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029091, 31.259733, 34.734104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300728, 0.807131, 0.508038,
		-0.861692, -0.001663, -0.507429,
		-0.408716, -0.590370, 0.695998,
		42.906475, 31.082623, 34.942905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.487003, 31.713243, 34.559914>,  <43.192577, 31.495882, 34.455704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.487003, 31.713243, 34.559914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.628708, 31.552063, 34.897465>,  <42.713730, 31.455355, 35.099995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.628708, 31.552063, 34.897465>,  <42.487003, 31.713243, 34.559914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628708, 31.552063, 34.897465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412214, 0.742711, 0.527692,
		-0.839392, -0.534799, 0.097010,
		0.354260, -0.402952, 0.843878,
		42.734985, 31.431177, 35.150627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043976, 31.818640, 34.983624>,  <42.487003, 31.713243, 34.559914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043976, 31.818640, 34.983624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.358906, 31.760798, 35.223358>,  <42.547863, 31.726091, 35.367199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.358906, 31.760798, 35.223358>,  <42.043976, 31.818640, 34.983624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358906, 31.760798, 35.223358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323766, 0.730303, 0.601526,
		-0.524682, -0.667643, 0.528168,
		0.787327, -0.144607, 0.599337,
		42.595104, 31.717415, 35.403160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718300, 32.116142, 35.613743>,  <42.043976, 31.818640, 34.983624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718300, 32.116142, 35.613743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.097485, 32.050621, 35.722946>,  <42.324997, 32.011311, 35.788467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.097485, 32.050621, 35.722946>,  <41.718300, 32.116142, 35.613743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097485, 32.050621, 35.722946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056016, 0.929932, 0.363439,
		-0.313413, -0.329234, 0.890717,
		0.947963, -0.163801, 0.273010,
		42.381874, 32.001480, 35.804848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767681, 32.064159, 36.341442>,  <41.718300, 32.116142, 35.613743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767681, 32.064159, 36.341442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.117176, 32.195724, 36.198109>,  <42.326874, 32.274662, 36.112110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.117176, 32.195724, 36.198109>,  <41.767681, 32.064159, 36.341442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117176, 32.195724, 36.198109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005468, 0.730017, 0.683407,
		0.486371, -0.599077, 0.636043,
		0.873736, 0.328911, -0.358335,
		42.379295, 32.294399, 36.090607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173134, 32.256397, 37.008259>,  <41.767681, 32.064159, 36.341442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173134, 32.256397, 37.008259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.352051, 32.439194, 36.700729>,  <42.459400, 32.548870, 36.516212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.352051, 32.439194, 36.700729>,  <42.173134, 32.256397, 37.008259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352051, 32.439194, 36.700729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120292, 0.821060, 0.558024,
		0.886261, -0.342083, 0.312282,
		0.447293, 0.456990, -0.768823,
		42.486240, 32.576290, 36.470081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661713, 32.711525, 37.311371>,  <42.173134, 32.256397, 37.008259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661713, 32.711525, 37.311371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.604107, 32.874462, 36.950630>,  <42.569546, 32.972225, 36.734188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.604107, 32.874462, 36.950630>,  <42.661713, 32.711525, 37.311371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604107, 32.874462, 36.950630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036613, 0.908532, 0.416209,
		0.988899, 0.092957, -0.115924,
		-0.144010, 0.407344, -0.901849,
		42.560905, 32.996666, 36.680077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084827, 33.252213, 37.274342>,  <42.661713, 32.711525, 37.311371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084827, 33.252213, 37.274342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807392, 33.319550, 36.994171>,  <42.640930, 33.359951, 36.826069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807392, 33.319550, 36.994171>,  <43.084827, 33.252213, 37.274342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807392, 33.319550, 36.994171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087318, 0.945495, 0.313712,
		0.715064, 0.278746, -0.641081,
		-0.693584, 0.168346, -0.700429,
		42.599316, 33.370052, 36.784042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339462, 33.936367, 37.192627>,  <43.084827, 33.252213, 37.274342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339462, 33.936367, 37.192627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.973793, 33.887348, 37.038090>,  <42.754391, 33.857937, 36.945366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.973793, 33.887348, 37.038090>,  <43.339462, 33.936367, 37.192627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973793, 33.887348, 37.038090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227940, 0.943624, 0.240035,
		0.335149, 0.307498, -0.890573,
		-0.914176, -0.122550, -0.386346,
		42.699539, 33.850582, 36.922188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244625, 34.449768, 36.682285>,  <43.339462, 33.936367, 37.192627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244625, 34.449768, 36.682285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.887516, 34.335400, 36.821545>,  <42.673252, 34.266777, 36.905102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.887516, 34.335400, 36.821545>,  <43.244625, 34.449768, 36.682285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887516, 34.335400, 36.821545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218976, 0.950768, 0.219295,
		-0.393713, 0.119543, -0.911427,
		-0.892771, -0.285920, 0.348152,
		42.619686, 34.249622, 36.925991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.080322, 34.179596, 36.663681>,  <43.244625, 34.449768, 36.682285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.080322, 34.179596, 36.663681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.400833, 34.405140, 36.583668>,  <44.593140, 34.540466, 36.535660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.400833, 34.405140, 36.583668>,  <44.080322, 34.179596, 36.663681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400833, 34.405140, 36.583668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481256, -0.806080, -0.344423,
		-0.355449, 0.179712, -0.917257,
		0.801280, 0.563860, -0.200032,
		44.641216, 34.574299, 36.523659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324947, 33.903622, 36.074371>,  <44.080322, 34.179596, 36.663681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.324947, 33.903622, 36.074371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.648380, 34.103718, 36.198277>,  <44.842442, 34.223774, 36.272621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.648380, 34.103718, 36.198277>,  <44.324947, 33.903622, 36.074371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.648380, 34.103718, 36.198277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588378, -0.689941, -0.421655,
		0.002791, 0.523202, -0.852204,
		0.808581, 0.500241, 0.309766,
		44.890953, 34.253792, 36.291206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.618778, 34.012833, 35.474586>,  <44.324947, 33.903622, 36.074371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.618778, 34.012833, 35.474586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.888557, 34.072231, 35.763882>,  <45.050426, 34.107872, 35.937458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.888557, 34.072231, 35.763882>,  <44.618778, 34.012833, 35.474586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888557, 34.072231, 35.763882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567168, -0.731352, -0.378741,
		0.472697, 0.665636, -0.577482,
		0.674447, 0.148499, 0.723235,
		45.090893, 34.116779, 35.980854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.189236, 34.247795, 35.121948>,  <44.618778, 34.012833, 35.474586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.189236, 34.247795, 35.121948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.289703, 34.088612, 35.474888>,  <45.349983, 33.993103, 35.686653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.289703, 34.088612, 35.474888>,  <45.189236, 34.247795, 35.121948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.289703, 34.088612, 35.474888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539832, -0.699047, -0.468950,
		0.803428, 0.594106, 0.039253,
		0.251167, -0.397958, 0.882352,
		45.365055, 33.969223, 35.739594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.920715, 34.134853, 34.994854>,  <45.189236, 34.247795, 35.121948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.920715, 34.134853, 34.994854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.794956, 33.904922, 35.297039>,  <45.719501, 33.766964, 35.478352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.794956, 33.904922, 35.297039>,  <45.920715, 34.134853, 34.994854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.794956, 33.904922, 35.297039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291712, -0.815818, -0.499344,
		0.903359, 0.063386, 0.424175,
		-0.314398, -0.574824, 0.755467,
		45.700638, 33.732475, 35.523678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.520565, 33.757107, 35.227875>,  <45.920715, 34.134853, 34.994854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.520565, 33.757107, 35.227875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.189445, 33.553131, 35.321434>,  <45.990772, 33.430744, 35.377567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.189445, 33.553131, 35.321434>,  <46.520565, 33.757107, 35.227875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.189445, 33.553131, 35.321434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382242, -0.817819, -0.430189,
		0.410656, -0.266706, 0.871912,
		-0.827800, -0.509940, 0.233897,
		45.941105, 33.400150, 35.391602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.763927, 33.166721, 35.499718>,  <46.520565, 33.757107, 35.227875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.763927, 33.166721, 35.499718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.390549, 33.073589, 35.390568>,  <46.166519, 33.017712, 35.325077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.390549, 33.073589, 35.390568>,  <46.763927, 33.166721, 35.499718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.390549, 33.073589, 35.390568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323369, -0.875436, -0.359227,
		-0.155246, -0.423559, 0.892466,
		-0.933451, -0.232828, -0.272874,
		46.110512, 33.003742, 35.308704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.692940, 32.484993, 35.562332>,  <46.763927, 33.166721, 35.499718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.692940, 32.484993, 35.562332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.378922, 32.564259, 35.327579>,  <46.190510, 32.611820, 35.186729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.378922, 32.564259, 35.327579>,  <46.692940, 32.484993, 35.562332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.378922, 32.564259, 35.327579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215518, -0.800870, -0.558712,
		-0.580736, -0.565099, 0.586012,
		-0.785047, 0.198168, -0.586883,
		46.143406, 32.623711, 35.151516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.325844, 31.828655, 35.478104>,  <46.692940, 32.484993, 35.562332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.325844, 31.828655, 35.478104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.148872, 32.035721, 35.185177>,  <46.042690, 32.159962, 35.009422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.148872, 32.035721, 35.185177>,  <46.325844, 31.828655, 35.478104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.148872, 32.035721, 35.185177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143050, -0.846861, -0.512214,
		-0.885324, -0.121857, 0.448722,
		-0.442422, 0.517665, -0.732315,
		46.016144, 32.191021, 34.965485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.759136, 31.485680, 35.264553>,  <46.325844, 31.828655, 35.478104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.759136, 31.485680, 35.264553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.858105, 31.712694, 34.950436>,  <45.917488, 31.848904, 34.761967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.858105, 31.712694, 34.950436>,  <45.759136, 31.485680, 35.264553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.858105, 31.712694, 34.950436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096589, -0.792006, -0.602825,
		-0.964081, 0.225004, -0.141144,
		0.247425, 0.567539, -0.785290,
		45.932331, 31.882956, 34.714848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164822, 31.388746, 34.868313>,  <45.759136, 31.485680, 35.264553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164822, 31.388746, 34.868313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.472012, 31.522881, 34.650043>,  <45.656326, 31.603361, 34.519081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.472012, 31.522881, 34.650043>,  <45.164822, 31.388746, 34.868313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.472012, 31.522881, 34.650043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214100, -0.668556, -0.712175,
		-0.603630, 0.663764, -0.441642,
		0.767979, 0.335335, -0.545673,
		45.702404, 31.623482, 34.486343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891434, 31.282347, 34.124203>,  <45.164822, 31.388746, 34.868313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891434, 31.282347, 34.124203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.281460, 31.367981, 34.100822>,  <45.515476, 31.419361, 34.086792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.281460, 31.367981, 34.100822>,  <44.891434, 31.282347, 34.124203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.281460, 31.367981, 34.100822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087907, -0.614448, -0.784045,
		-0.203769, 0.759356, -0.617946,
		0.975065, 0.214086, -0.058453,
		45.573978, 31.432207, 34.083286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021877, 31.464157, 33.388134>,  <44.891434, 31.282347, 34.124203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.021877, 31.464157, 33.388134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.353401, 31.321686, 33.560741>,  <45.552315, 31.236202, 33.664307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.353401, 31.321686, 33.560741>,  <45.021877, 31.464157, 33.388134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.353401, 31.321686, 33.560741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100857, -0.663488, -0.741358,
		0.550366, 0.657967, -0.513982,
		0.828810, -0.356179, 0.431521,
		45.602043, 31.214832, 33.690197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.396236, 31.294651, 32.830284>,  <45.021877, 31.464157, 33.388134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.396236, 31.294651, 32.830284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.570179, 31.086958, 33.124573>,  <45.674545, 30.962341, 33.301147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.570179, 31.086958, 33.124573>,  <45.396236, 31.294651, 32.830284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.570179, 31.086958, 33.124573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165261, -0.757127, -0.632018,
		0.885204, 0.396426, -0.243435,
		0.434860, -0.519235, 0.735726,
		45.700638, 30.931187, 33.345291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.974171, 30.932592, 32.523453>,  <45.396236, 31.294651, 32.830284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.974171, 30.932592, 32.523453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.874249, 30.740122, 32.859566>,  <45.814297, 30.624640, 33.061234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.874249, 30.740122, 32.859566>,  <45.974171, 30.932592, 32.523453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.874249, 30.740122, 32.859566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041960, -0.872354, -0.487072,
		0.967388, -0.086413, 0.238105,
		-0.249801, -0.481178, 0.840278,
		45.799309, 30.595768, 33.111649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.408497, 30.405100, 32.582588>,  <45.974171, 30.932592, 32.523453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.408497, 30.405100, 32.582588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.094200, 30.299217, 32.806210>,  <45.905621, 30.235687, 32.940384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.094200, 30.299217, 32.806210>,  <46.408497, 30.405100, 32.582588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.094200, 30.299217, 32.806210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001581, -0.904663, -0.426124,
		0.618553, -0.333940, 0.711250,
		-0.785741, -0.264705, 0.559054,
		45.858479, 30.219807, 32.973927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.296738, 29.689598, 32.356590>,  <46.408497, 30.405100, 32.582588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.296738, 29.689598, 32.356590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.995659, 29.691593, 32.619930>,  <45.815014, 29.692789, 32.777935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.995659, 29.691593, 32.619930>,  <46.296738, 29.689598, 32.356590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.995659, 29.691593, 32.619930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201726, -0.953621, -0.223412,
		0.626703, -0.300967, 0.718792,
		-0.752695, 0.004986, 0.658351,
		45.769852, 29.693089, 32.817436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.358757, 29.091238, 32.805473>,  <46.296738, 29.689598, 32.356590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.358757, 29.091238, 32.805473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.972134, 29.193823, 32.805992>,  <45.740162, 29.255373, 32.806305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.972134, 29.193823, 32.805992>,  <46.358757, 29.091238, 32.805473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.972134, 29.193823, 32.805992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254395, -0.958102, -0.131622,
		-0.032514, -0.127550, 0.991299,
		-0.966554, 0.256461, 0.001296,
		45.682167, 29.270761, 32.806381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.113857, 28.425110, 33.021313>,  <46.358757, 29.091238, 32.805473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.113857, 28.425110, 33.021313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.798107, 28.610048, 32.859760>,  <45.608658, 28.721012, 32.762829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.798107, 28.610048, 32.859760>,  <46.113857, 28.425110, 33.021313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.798107, 28.610048, 32.859760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399984, -0.886416, -0.232977,
		-0.465719, -0.022363, 0.884650,
		-0.789378, 0.462348, -0.403876,
		45.561295, 28.748753, 32.738598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.535263, 28.016897, 33.217472>,  <46.113857, 28.425110, 33.021313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.535263, 28.016897, 33.217472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.442158, 28.231407, 32.892948>,  <45.386295, 28.360113, 32.698235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.442158, 28.231407, 32.892948>,  <45.535263, 28.016897, 33.217472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442158, 28.231407, 32.892948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240241, -0.840080, -0.486364,
		-0.942393, 0.081701, 0.324378,
		-0.232767, 0.536275, -0.811313,
		45.372326, 28.392290, 32.649555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.952011, 27.652163, 32.872639>,  <45.535263, 28.016897, 33.217472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.952011, 27.652163, 32.872639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.101139, 27.888485, 32.586437>,  <45.190617, 28.030279, 32.414715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.101139, 27.888485, 32.586437>,  <44.952011, 27.652163, 32.872639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.101139, 27.888485, 32.586437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173615, -0.713070, -0.679256,
		-0.911516, 0.377465, -0.163276,
		0.372823, 0.590806, -0.715508,
		45.212986, 28.065727, 32.371784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.426350, 36.924271, 43.787613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234890, 36.573673, 43.808224>,  <37.120014, 36.363316, 43.820591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234890, 36.573673, 43.808224>,  <37.426350, 36.924271, 43.787613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234890, 36.573673, 43.808224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131725, -0.129706, -0.982764,
		0.868070, -0.463610, 0.177539,
		-0.478647, -0.876494, 0.051525,
		37.091297, 36.310726, 43.823681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798363, 36.591522, 43.352619>,  <37.426350, 36.924271, 43.787613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798363, 36.591522, 43.352619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461899, 36.377399, 43.383327>,  <37.260021, 36.248924, 43.401752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461899, 36.377399, 43.383327>,  <37.798363, 36.591522, 43.352619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461899, 36.377399, 43.383327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037476, -0.083924, -0.995767,
		0.539483, -0.840479, 0.050533,
		-0.841162, -0.535305, 0.076773,
		37.209549, 36.216808, 43.406361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849991, 36.039261, 42.895439>,  <37.798363, 36.591522, 43.352619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849991, 36.039261, 42.895439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456261, 36.094097, 42.939827>,  <37.220024, 36.126999, 42.966461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456261, 36.094097, 42.939827>,  <37.849991, 36.039261, 42.895439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456261, 36.094097, 42.939827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120858, -0.066007, -0.990473,
		-0.128466, -0.988356, 0.081541,
		-0.984322, 0.137097, 0.110971,
		37.160965, 36.135227, 42.973118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540989, 35.578701, 42.423923>,  <37.849991, 36.039261, 42.895439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540989, 35.578701, 42.423923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232784, 35.813652, 42.522957>,  <37.047859, 35.954620, 42.582378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232784, 35.813652, 42.522957>,  <37.540989, 35.578701, 42.423923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232784, 35.813652, 42.522957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285673, 0.029015, -0.957888,
		-0.569824, -0.808794, 0.145441,
		-0.770514, 0.587376, 0.247584,
		37.001629, 35.989864, 42.597233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118443, 35.397823, 41.952660>,  <37.540989, 35.578701, 42.423923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118443, 35.397823, 41.952660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966827, 35.747265, 42.074745>,  <36.875858, 35.956928, 42.147995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966827, 35.747265, 42.074745>,  <37.118443, 35.397823, 41.952660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966827, 35.747265, 42.074745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320874, 0.185282, -0.928822,
		-0.867969, -0.449992, 0.210087,
		-0.379037, 0.873601, 0.305210,
		36.853115, 36.009346, 42.166309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357182, 35.383278, 41.792889>,  <37.118443, 35.397823, 41.952660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357182, 35.383278, 41.792889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507137, 35.753548, 41.813240>,  <36.597111, 35.975708, 41.825451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507137, 35.753548, 41.813240>,  <36.357182, 35.383278, 41.792889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507137, 35.753548, 41.813240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291446, 0.169775, -0.941401,
		-0.880066, 0.338094, 0.333430,
		0.374891, 0.925672, 0.050877,
		36.619606, 36.031250, 41.828503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954521, 35.746212, 41.388203>,  <36.357182, 35.383278, 41.792889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954521, 35.746212, 41.388203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274422, 35.985901, 41.402760>,  <36.466362, 36.129715, 41.411491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274422, 35.985901, 41.402760>,  <35.954521, 35.746212, 41.388203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274422, 35.985901, 41.402760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110298, 0.206253, -0.972263,
		-0.590109, 0.773556, 0.231045,
		0.799753, 0.599225, 0.036390,
		36.514347, 36.165668, 41.413677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755795, 36.452370, 41.136570>,  <35.954521, 35.746212, 41.388203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755795, 36.452370, 41.136570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152393, 36.455940, 41.084652>,  <36.390354, 36.458084, 41.053501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152393, 36.455940, 41.084652>,  <35.755795, 36.452370, 41.136570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152393, 36.455940, 41.084652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128488, 0.223720, -0.966147,
		0.020411, 0.974613, 0.222966,
		0.991501, 0.008929, -0.129793,
		36.449844, 36.458618, 41.045715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901306, 37.063831, 40.732018>,  <35.755795, 36.452370, 41.136570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901306, 37.063831, 40.732018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220009, 36.826981, 40.683758>,  <36.411232, 36.684868, 40.654800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220009, 36.826981, 40.683758>,  <35.901306, 37.063831, 40.732018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220009, 36.826981, 40.683758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040670, 0.251741, -0.966940,
		0.602925, 0.765512, 0.224660,
		0.796760, -0.592129, -0.120648,
		36.459038, 36.649342, 40.647564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291893, 37.433605, 40.289330>,  <35.901306, 37.063831, 40.732018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291893, 37.433605, 40.289330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431065, 37.059845, 40.258759>,  <36.514568, 36.835590, 40.240417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431065, 37.059845, 40.258759>,  <36.291893, 37.433605, 40.289330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431065, 37.059845, 40.258759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107122, 0.120606, -0.986904,
		0.931380, 0.335189, 0.142058,
		0.347932, -0.934400, -0.076424,
		36.535442, 36.779526, 40.235832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807045, 37.497704, 39.758835>,  <36.291893, 37.433605, 40.289330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807045, 37.497704, 39.758835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707855, 37.110683, 39.778236>,  <36.648342, 36.878471, 39.789875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707855, 37.110683, 39.778236>,  <36.807045, 37.497704, 39.758835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707855, 37.110683, 39.778236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096627, -0.074517, -0.992527,
		0.963935, -0.241439, 0.111970,
		-0.247979, -0.967551, 0.048500,
		36.633461, 36.820419, 39.792786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164867, 37.308628, 39.203541>,  <36.807045, 37.497704, 39.758835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164867, 37.308628, 39.203541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926575, 36.998318, 39.286751>,  <36.783600, 36.812130, 39.336678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926575, 36.998318, 39.286751>,  <37.164867, 37.308628, 39.203541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926575, 36.998318, 39.286751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127358, -0.164483, -0.978123,
		0.793022, -0.609193, -0.000813,
		-0.595732, -0.775777, 0.208024,
		36.747856, 36.765583, 39.349159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918461, 37.543530, 39.322006>,  <37.164867, 37.308628, 39.203541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918461, 37.543530, 39.322006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902973, 37.577400, 38.923744>,  <37.893681, 37.597725, 38.684788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902973, 37.577400, 38.923744>,  <37.918461, 37.543530, 39.322006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902973, 37.577400, 38.923744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963188, 0.268431, -0.014631,
		0.266026, -0.959570, -0.091958,
		-0.038724, 0.084680, -0.995655,
		37.891357, 37.602806, 38.625046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534428, 37.135891, 39.034325>,  <37.918461, 37.543530, 39.322006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534428, 37.135891, 39.034325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417046, 37.432919, 38.793499>,  <38.346615, 37.611134, 38.649002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417046, 37.432919, 38.793499>,  <38.534428, 37.135891, 39.034325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417046, 37.432919, 38.793499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942521, 0.330018, -0.052366,
		0.159807, -0.582825, -0.796729,
		-0.293455, 0.742565, -0.602064,
		38.329010, 37.655689, 38.612881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939537, 37.207150, 38.343765>,  <38.534428, 37.135891, 39.034325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939537, 37.207150, 38.343765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829704, 37.552742, 38.512592>,  <38.763805, 37.760098, 38.613888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829704, 37.552742, 38.512592>,  <38.939537, 37.207150, 38.343765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829704, 37.552742, 38.512592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892486, 0.392356, -0.222544,
		-0.357874, 0.315581, -0.878826,
		-0.274582, 0.863982, 0.422065,
		38.747330, 37.811935, 38.639214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452137, 36.845490, 37.982193>,  <38.939537, 37.207150, 38.343765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452137, 36.845490, 37.982193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734947, 36.666000, 38.200829>,  <39.904633, 36.558308, 38.332008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734947, 36.666000, 38.200829>,  <39.452137, 36.845490, 37.982193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734947, 36.666000, 38.200829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706827, -0.423842, 0.566351,
		-0.022471, -0.786768, -0.616840,
		0.707029, -0.448726, 0.546585,
		39.947056, 36.531384, 38.364803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462631, 36.058918, 37.923771>,  <39.452137, 36.845490, 37.982193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462631, 36.058918, 37.923771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637825, 36.154434, 38.270447>,  <39.742939, 36.211742, 38.478451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637825, 36.154434, 38.270447>,  <39.462631, 36.058918, 37.923771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637825, 36.154434, 38.270447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703058, -0.509836, 0.495759,
		0.560253, -0.826466, -0.055414,
		0.437980, 0.238791, 0.866690,
		39.769218, 36.226070, 38.530453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238621, 35.530315, 38.326607>,  <39.462631, 36.058918, 37.923771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238621, 35.530315, 38.326607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388824, 35.780937, 38.599785>,  <39.478947, 35.931313, 38.763691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388824, 35.780937, 38.599785>,  <39.238621, 35.530315, 38.326607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388824, 35.780937, 38.599785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509072, -0.476329, 0.716907,
		0.774492, -0.616875, 0.140097,
		0.375510, 0.626558, 0.682947,
		39.501476, 35.968906, 38.804668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465530, 35.074837, 38.834156>,  <39.238621, 35.530315, 38.326607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465530, 35.074837, 38.834156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433914, 35.427036, 39.021122>,  <39.414944, 35.638355, 39.133301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433914, 35.427036, 39.021122>,  <39.465530, 35.074837, 38.834156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433914, 35.427036, 39.021122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420960, -0.454509, 0.784993,
		0.903629, -0.134719, 0.406578,
		-0.079040, 0.880495, 0.467419,
		39.410202, 35.691185, 39.161346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770630, 34.972046, 39.430271>,  <39.465530, 35.074837, 38.834156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770630, 34.972046, 39.430271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526283, 35.278168, 39.511421>,  <39.379677, 35.461842, 39.560112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526283, 35.278168, 39.511421>,  <39.770630, 34.972046, 39.430271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526283, 35.278168, 39.511421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280107, -0.448570, 0.848720,
		0.740530, 0.461626, 0.488382,
		-0.610865, 0.765302, 0.202875,
		39.343025, 35.507759, 39.572285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946846, 34.997513, 40.116985>,  <39.770630, 34.972046, 39.430271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946846, 34.997513, 40.116985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597198, 35.168442, 40.024620>,  <39.387409, 35.271000, 39.969200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597198, 35.168442, 40.024620>,  <39.946846, 34.997513, 40.116985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597198, 35.168442, 40.024620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374191, -0.289331, 0.881061,
		0.309684, 0.856554, 0.412808,
		-0.874115, 0.427320, -0.230914,
		39.334965, 35.296638, 39.955345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817337, 35.398685, 40.704132>,  <39.946846, 34.997513, 40.116985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817337, 35.398685, 40.704132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487808, 35.315292, 40.493286>,  <39.290089, 35.265255, 40.366779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487808, 35.315292, 40.493286>,  <39.817337, 35.398685, 40.704132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487808, 35.315292, 40.493286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360404, -0.525101, 0.770960,
		-0.437519, 0.825109, 0.357453,
		-0.823825, -0.208482, -0.527113,
		39.240662, 35.252747, 40.335152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254967, 35.388000, 41.219227>,  <39.817337, 35.398685, 40.704132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254967, 35.388000, 41.219227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124592, 35.203148, 40.889332>,  <39.046368, 35.092236, 40.691395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124592, 35.203148, 40.889332>,  <39.254967, 35.388000, 41.219227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124592, 35.203148, 40.889332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544601, -0.621307, 0.563372,
		-0.772769, 0.632780, -0.049169,
		-0.325941, -0.462134, -0.824739,
		39.026810, 35.064507, 40.641911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500740, 35.393162, 41.193604>,  <39.254967, 35.388000, 41.219227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500740, 35.393162, 41.193604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627251, 35.075531, 40.985989>,  <38.703159, 34.884953, 40.861420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627251, 35.075531, 40.985989>,  <38.500740, 35.393162, 41.193604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627251, 35.075531, 40.985989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456462, -0.607013, 0.650522,
		-0.831630, 0.031175, -0.554454,
		0.316281, -0.794081, -0.519040,
		38.722134, 34.837307, 40.830276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964302, 34.948135, 41.159698>,  <38.500740, 35.393162, 41.193604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964302, 34.948135, 41.159698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262375, 34.712719, 41.034275>,  <38.441219, 34.571468, 40.959019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262375, 34.712719, 41.034275>,  <37.964302, 34.948135, 41.159698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262375, 34.712719, 41.034275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316379, -0.725936, 0.610673,
		-0.587033, -0.355858, -0.727157,
		0.745182, -0.588543, -0.313562,
		38.485928, 34.536156, 40.940205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596283, 34.299248, 41.019379>,  <37.964302, 34.948135, 41.159698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596283, 34.299248, 41.019379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985546, 34.256668, 41.100986>,  <38.219105, 34.231121, 41.149952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985546, 34.256668, 41.100986>,  <37.596283, 34.299248, 41.019379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985546, 34.256668, 41.100986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220406, -0.686031, 0.693385,
		0.066152, -0.719743, -0.691082,
		0.973163, -0.106450, 0.204018,
		38.277496, 34.224731, 41.162193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700047, 33.631065, 41.115479>,  <37.596283, 34.299248, 41.019379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700047, 33.631065, 41.115479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022888, 33.787609, 41.292301>,  <38.216595, 33.881535, 41.398396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022888, 33.787609, 41.292301>,  <37.700047, 33.631065, 41.115479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022888, 33.787609, 41.292301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202996, -0.519145, 0.830230,
		0.554414, -0.759819, -0.339559,
		0.807104, 0.391362, 0.442061,
		38.265018, 33.905018, 41.424919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053493, 33.063564, 41.568729>,  <37.700047, 33.631065, 41.115479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053493, 33.063564, 41.568729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261276, 33.363544, 41.732555>,  <38.385944, 33.543533, 41.830853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261276, 33.363544, 41.732555>,  <38.053493, 33.063564, 41.568729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261276, 33.363544, 41.732555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318348, -0.274951, 0.907225,
		0.792983, -0.601646, 0.095921,
		0.519455, 0.749950, 0.409564,
		38.417114, 33.588528, 41.855423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743912, 32.757309, 41.491314>,  <38.053493, 33.063564, 41.568729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743912, 32.757309, 41.491314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731873, 32.370296, 41.390934>,  <38.724648, 32.138088, 41.330708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731873, 32.370296, 41.390934>,  <38.743912, 32.757309, 41.491314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731873, 32.370296, 41.390934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034792, 0.249897, -0.967647,
		0.998941, -0.037859, 0.026140,
		-0.030102, -0.967532, -0.250949,
		38.722843, 32.080036, 41.315651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382458, 32.598877, 40.974007>,  <38.743912, 32.757309, 41.491314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382458, 32.598877, 40.974007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105370, 32.313148, 40.934223>,  <38.939117, 32.141712, 40.910355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105370, 32.313148, 40.934223>,  <39.382458, 32.598877, 40.974007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105370, 32.313148, 40.934223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050842, 0.089198, -0.994716,
		0.719415, -0.694114, -0.025472,
		-0.692718, -0.714318, -0.099460,
		38.897552, 32.098854, 40.904385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634724, 32.253803, 40.451408>,  <39.382458, 32.598877, 40.974007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634724, 32.253803, 40.451408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250332, 32.144135, 40.466118>,  <39.019699, 32.078335, 40.474945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250332, 32.144135, 40.466118>,  <39.634724, 32.253803, 40.451408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250332, 32.144135, 40.466118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022979, -0.053361, -0.998311,
		0.275670, -0.960199, 0.044979,
		-0.960977, -0.274171, 0.036775,
		38.962040, 32.061882, 40.477150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454578, 31.681248, 39.889526>,  <39.634724, 32.253803, 40.451408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454578, 31.681248, 39.889526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102425, 31.845285, 39.984818>,  <38.891132, 31.943708, 40.041992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102425, 31.845285, 39.984818>,  <39.454578, 31.681248, 39.889526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102425, 31.845285, 39.984818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237980, 0.052503, -0.969850,
		-0.410237, -0.910531, 0.051372,
		-0.880381, 0.410093, 0.238227,
		38.838310, 31.968313, 40.056286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984032, 31.240372, 39.450829>,  <39.454578, 31.681248, 39.889526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984032, 31.240372, 39.450829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777538, 31.560663, 39.572376>,  <38.653641, 31.752838, 39.645306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777538, 31.560663, 39.572376>,  <38.984032, 31.240372, 39.450829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777538, 31.560663, 39.572376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402251, 0.086550, -0.911429,
		-0.756106, -0.592744, 0.277413,
		-0.516235, 0.800727, 0.303873,
		38.622669, 31.800880, 39.663540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279926, 31.149073, 39.194294>,  <38.984032, 31.240372, 39.450829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279926, 31.149073, 39.194294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360386, 31.534203, 39.266415>,  <38.408661, 31.765280, 39.309689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360386, 31.534203, 39.266415>,  <38.279926, 31.149073, 39.194294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360386, 31.534203, 39.266415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391462, 0.247741, -0.886218,
		-0.897940, 0.107679, 0.426742,
		0.201149, 0.962824, 0.180304,
		38.420731, 31.823050, 39.320507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733444, 31.472725, 39.063843>,  <38.279926, 31.149073, 39.194294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733444, 31.472725, 39.063843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981438, 31.786022, 39.045292>,  <38.130234, 31.974001, 39.034161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981438, 31.786022, 39.045292>,  <37.733444, 31.472725, 39.063843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981438, 31.786022, 39.045292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478149, 0.330298, -0.813804,
		-0.622091, 0.526716, 0.579286,
		0.619981, 0.783246, -0.046374,
		38.167431, 32.020996, 39.031380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388966, 32.097691, 39.092072>,  <37.733444, 31.472725, 39.063843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388966, 32.097691, 39.092072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723587, 32.206352, 38.901752>,  <37.924358, 32.271549, 38.787560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723587, 32.206352, 38.901752>,  <37.388966, 32.097691, 39.092072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723587, 32.206352, 38.901752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535746, 0.223790, -0.814183,
		-0.114699, 0.936013, 0.332751,
		0.836553, 0.271656, -0.475797,
		37.974552, 32.287849, 38.759014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160793, 32.605354, 38.686249>,  <37.388966, 32.097691, 39.092072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160793, 32.605354, 38.686249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508724, 32.497528, 38.520966>,  <37.717484, 32.432831, 38.421795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508724, 32.497528, 38.520966>,  <37.160793, 32.605354, 38.686249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508724, 32.497528, 38.520966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298280, 0.379788, -0.875665,
		0.392983, 0.884926, 0.249942,
		0.869824, -0.269569, -0.413206,
		37.769672, 32.416656, 38.397003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237511, 33.060394, 38.167522>,  <37.160793, 32.605354, 38.686249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237511, 33.060394, 38.167522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496300, 32.772369, 38.067177>,  <37.651573, 32.599556, 38.006969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496300, 32.772369, 38.067177>,  <37.237511, 33.060394, 38.167522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496300, 32.772369, 38.067177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204046, 0.153510, -0.966851,
		0.734701, 0.676718, -0.047608,
		0.646977, -0.720060, -0.250865,
		37.690392, 32.556351, 37.991917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695190, 33.367306, 37.615948>,  <37.237511, 33.060394, 38.167522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695190, 33.367306, 37.615948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750828, 32.972221, 37.587433>,  <37.784210, 32.735172, 37.570324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750828, 32.972221, 37.587433>,  <37.695190, 33.367306, 37.615948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750828, 32.972221, 37.587433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254253, 0.033955, -0.966542,
		0.957083, 0.152565, -0.246406,
		0.139094, -0.987710, -0.071288,
		37.792557, 32.675907, 37.566048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110718, 33.276585, 36.992168>,  <37.695190, 33.367306, 37.615948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110718, 33.276585, 36.992168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923531, 32.937172, 37.090965>,  <37.811218, 32.733524, 37.150242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923531, 32.937172, 37.090965>,  <38.110718, 33.276585, 36.992168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923531, 32.937172, 37.090965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152405, -0.197810, -0.968320,
		0.870505, -0.490786, -0.036751,
		-0.467968, -0.848528, 0.246992,
		37.783138, 32.682613, 37.165062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.322403, 31.298979, 44.819366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.024155, 31.051477, 44.720417>,  <39.845207, 30.902977, 44.661049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.024155, 31.051477, 44.720417>,  <40.322403, 31.298979, 44.819366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024155, 31.051477, 44.720417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007588, 0.363318, -0.931634,
		0.666330, -0.696521, -0.266202,
		-0.745618, -0.618756, -0.247375,
		39.800468, 30.865850, 44.646206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472004, 31.092035, 44.234997>,  <40.322403, 31.298979, 44.819366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472004, 31.092035, 44.234997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.083073, 31.000340, 44.216972>,  <39.849712, 30.945322, 44.206158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.083073, 31.000340, 44.216972>,  <40.472004, 31.092035, 44.234997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083073, 31.000340, 44.216972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017855, 0.265247, -0.964015,
		0.232933, -0.936535, -0.262001,
		-0.972329, -0.229229, -0.045063,
		39.791374, 30.931568, 44.203453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358849, 30.813677, 43.498085>,  <40.472004, 31.092035, 44.234997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358849, 30.813677, 43.498085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.994164, 30.868757, 43.652912>,  <39.775352, 30.901806, 43.745808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.994164, 30.868757, 43.652912>,  <40.358849, 30.813677, 43.498085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994164, 30.868757, 43.652912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333842, 0.300799, -0.893348,
		-0.239444, -0.943694, -0.228271,
		-0.911710, 0.137700, 0.387069,
		39.720650, 30.910067, 43.769032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846188, 30.522762, 43.110535>,  <40.358849, 30.813677, 43.498085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846188, 30.522762, 43.110535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.627747, 30.786764, 43.316902>,  <39.496681, 30.945166, 43.440723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.627747, 30.786764, 43.316902>,  <39.846188, 30.522762, 43.110535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627747, 30.786764, 43.316902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470804, 0.267591, -0.840677,
		-0.692907, -0.701987, 0.164603,
		-0.546098, 0.660007, 0.515914,
		39.463917, 30.984766, 43.471676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166161, 30.444607, 42.759365>,  <39.846188, 30.522762, 43.110535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166161, 30.444607, 42.759365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.187805, 30.792423, 42.955719>,  <39.200794, 31.001114, 43.073532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.187805, 30.792423, 42.955719>,  <39.166161, 30.444607, 42.759365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187805, 30.792423, 42.955719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521715, 0.443790, -0.728604,
		-0.851402, -0.216675, 0.477668,
		0.054114, 0.869541, 0.490887,
		39.204041, 31.053286, 43.102985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502689, 30.639940, 42.768906>,  <39.166161, 30.444607, 42.759365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502689, 30.639940, 42.768906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.727226, 30.970284, 42.790272>,  <38.861950, 31.168489, 42.803089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.727226, 30.970284, 42.790272>,  <38.502689, 30.639940, 42.768906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727226, 30.970284, 42.790272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401047, 0.327915, -0.855356,
		-0.723918, 0.458725, 0.515280,
		0.561341, 0.825859, 0.053414,
		38.895630, 31.218040, 42.806297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029049, 31.222902, 42.694973>,  <38.502689, 30.639940, 42.768906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029049, 31.222902, 42.694973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.389900, 31.367159, 42.600220>,  <38.606411, 31.453712, 42.543369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.389900, 31.367159, 42.600220>,  <38.029049, 31.222902, 42.694973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389900, 31.367159, 42.600220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375375, 0.385270, -0.843007,
		-0.212759, 0.849415, 0.482936,
		0.902124, 0.360639, -0.236879,
		38.660538, 31.475351, 42.529156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780998, 31.846561, 42.339226>,  <38.029049, 31.222902, 42.694973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780998, 31.846561, 42.339226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.163567, 31.782080, 42.241848>,  <38.393108, 31.743391, 42.183422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.163567, 31.782080, 42.241848>,  <37.780998, 31.846561, 42.339226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163567, 31.782080, 42.241848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176756, 0.343978, -0.922191,
		0.232403, 0.925036, 0.300494,
		0.956424, -0.161206, -0.243448,
		38.450493, 31.733717, 42.168816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958740, 32.378319, 41.949718>,  <37.780998, 31.846561, 42.339226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958740, 32.378319, 41.949718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.216816, 32.094612, 41.836109>,  <38.371662, 31.924387, 41.767944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.216816, 32.094612, 41.836109>,  <37.958740, 32.378319, 41.949718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216816, 32.094612, 41.836109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177545, 0.222387, -0.958656,
		0.743110, 0.668938, 0.017553,
		0.645186, -0.709271, -0.284025,
		38.410370, 31.881830, 41.750900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527290, 32.796154, 42.179455>,  <37.958740, 32.378319, 41.949718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527290, 32.796154, 42.179455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.463493, 33.184368, 42.251713>,  <38.425217, 33.417297, 42.295067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.463493, 33.184368, 42.251713>,  <38.527290, 32.796154, 42.179455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463493, 33.184368, 42.251713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301687, -0.222148, 0.927165,
		0.939972, 0.093379, 0.328228,
		-0.159493, 0.970531, 0.180642,
		38.415646, 33.475529, 42.305904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979553, 32.868660, 42.748077>,  <38.527290, 32.796154, 42.179455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979553, 32.868660, 42.748077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.751690, 33.197163, 42.760860>,  <38.614971, 33.394264, 42.768532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.751690, 33.197163, 42.760860>,  <38.979553, 32.868660, 42.748077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751690, 33.197163, 42.760860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042044, -0.009712, 0.999069,
		0.820806, 0.570470, -0.028997,
		-0.569657, 0.821261, 0.031957,
		38.580791, 33.443542, 42.770447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403622, 33.442398, 43.150795>,  <38.979553, 32.868660, 42.748077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403622, 33.442398, 43.150795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.015083, 33.536377, 43.165150>,  <38.781960, 33.592766, 43.173763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.015083, 33.536377, 43.165150>,  <39.403622, 33.442398, 43.150795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015083, 33.536377, 43.165150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102777, 0.279083, 0.954751,
		0.214301, 0.931081, -0.295234,
		-0.971345, 0.234947, 0.035886,
		38.723679, 33.606861, 43.175915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380711, 34.102783, 43.444698>,  <39.403622, 33.442398, 43.150795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380711, 34.102783, 43.444698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.037628, 33.910751, 43.518307>,  <38.831779, 33.795532, 43.562469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.037628, 33.910751, 43.518307>,  <39.380711, 34.102783, 43.444698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037628, 33.910751, 43.518307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122897, 0.156098, 0.980066,
		-0.499239, 0.863222, -0.074885,
		-0.857704, -0.480084, 0.184018,
		38.780315, 33.766727, 43.573513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102894, 34.362743, 44.089687>,  <39.380711, 34.102783, 43.444698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102894, 34.362743, 44.089687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.875259, 34.037247, 44.042416>,  <38.738678, 33.841949, 44.014053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.875259, 34.037247, 44.042416>,  <39.102894, 34.362743, 44.089687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875259, 34.037247, 44.042416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071621, -0.094118, 0.992981,
		-0.819156, 0.573552, -0.004721,
		-0.569082, -0.813744, -0.118176,
		38.704536, 33.793125, 44.006962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505348, 34.545776, 44.408344>,  <39.102894, 34.362743, 44.089687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505348, 34.545776, 44.408344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.552696, 34.148785, 44.420822>,  <38.581104, 33.910591, 44.428307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.552696, 34.148785, 44.420822>,  <38.505348, 34.545776, 44.408344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552696, 34.148785, 44.420822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164089, 0.011428, 0.986379,
		-0.979317, -0.121879, -0.161503,
		0.118374, -0.992479, 0.031191,
		38.588207, 33.851040, 44.430180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160397, 34.438503, 44.853420>,  <38.505348, 34.545776, 44.408344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160397, 34.438503, 44.853420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.377193, 34.102669, 44.838810>,  <38.507271, 33.901169, 44.830044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.377193, 34.102669, 44.838810>,  <38.160397, 34.438503, 44.853420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377193, 34.102669, 44.838810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025859, -0.060100, 0.997857,
		-0.839985, -0.539888, -0.054285,
		0.541993, -0.839589, -0.036522,
		38.539791, 33.850792, 44.827854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944592, 34.169949, 45.374447>,  <38.160397, 34.438503, 44.853420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944592, 34.169949, 45.374447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.283436, 33.969376, 45.304050>,  <38.486740, 33.849030, 45.261814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.283436, 33.969376, 45.304050>,  <37.944592, 34.169949, 45.374447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283436, 33.969376, 45.304050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196186, -0.012689, 0.980484,
		-0.493883, -0.865102, 0.087625,
		0.847107, -0.501435, -0.175988,
		38.537567, 33.818947, 45.251255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968250, 33.583263, 45.797791>,  <37.944592, 34.169949, 45.374447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968250, 33.583263, 45.797791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.358608, 33.619923, 45.718559>,  <38.592823, 33.641918, 45.671021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.358608, 33.619923, 45.718559>,  <37.968250, 33.583263, 45.797791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358608, 33.619923, 45.718559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213817, -0.219386, 0.951920,
		0.043791, -0.971324, -0.233694,
		0.975892, 0.091653, -0.198079,
		38.651375, 33.647419, 45.659134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300232, 32.890404, 46.083332>,  <37.968250, 33.583263, 45.797791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300232, 32.890404, 46.083332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.589096, 33.162910, 46.035397>,  <38.762413, 33.326416, 46.006634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.589096, 33.162910, 46.035397>,  <38.300232, 32.890404, 46.083332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589096, 33.162910, 46.035397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386805, -0.254082, 0.886467,
		0.573474, -0.686523, -0.447006,
		0.722156, 0.681270, -0.119842,
		38.805744, 33.367290, 45.999443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915852, 32.566635, 46.220055>,  <38.300232, 32.890404, 46.083332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915852, 32.566635, 46.220055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.000061, 32.955883, 46.257420>,  <39.050587, 33.189430, 46.279839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.000061, 32.955883, 46.257420>,  <38.915852, 32.566635, 46.220055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000061, 32.955883, 46.257420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405360, -0.173850, 0.897474,
		0.889586, -0.151073, -0.431061,
		0.210524, 0.973115, 0.093416,
		39.063217, 33.247818, 46.285446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562817, 32.677338, 46.529678>,  <38.915852, 32.566635, 46.220055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562817, 32.677338, 46.529678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.377499, 33.021355, 46.615181>,  <39.266308, 33.227764, 46.666481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.377499, 33.021355, 46.615181>,  <39.562817, 32.677338, 46.529678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377499, 33.021355, 46.615181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374268, -0.028752, 0.926875,
		0.803296, 0.509414, -0.308565,
		-0.463291, 0.860041, 0.213754,
		39.238510, 33.279366, 46.679306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978966, 33.023815, 46.817631>,  <39.562817, 32.677338, 46.529678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978966, 33.023815, 46.817631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.659065, 33.230709, 46.939526>,  <39.467125, 33.354847, 47.012665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.659065, 33.230709, 46.939526>,  <39.978966, 33.023815, 46.817631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659065, 33.230709, 46.939526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346244, -0.017273, 0.937985,
		0.490426, 0.855667, -0.165277,
		-0.799748, 0.517239, 0.304741,
		39.419140, 33.385880, 47.030949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171696, 33.483463, 47.359447>,  <39.978966, 33.023815, 46.817631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171696, 33.483463, 47.359447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.782600, 33.473316, 47.451660>,  <39.549145, 33.467228, 47.506989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.782600, 33.473316, 47.451660>,  <40.171696, 33.483463, 47.359447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782600, 33.473316, 47.451660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231790, -0.139463, 0.962717,
		0.007728, 0.989902, 0.141541,
		-0.972735, -0.025368, 0.230527,
		39.490780, 33.465706, 47.520817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.991077, 30.414539, 48.029160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.371220, 30.293747, 47.999142>,  <34.599304, 30.221272, 47.981133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.371220, 30.293747, 47.999142>,  <33.991077, 30.414539, 48.029160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371220, 30.293747, 47.999142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035409, 0.344561, -0.938096,
		0.309145, 0.888867, 0.338149,
		0.950355, -0.301982, -0.075045,
		34.656326, 30.203152, 47.976627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304134, 31.020966, 47.774376>,  <33.991077, 30.414539, 48.029160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304134, 31.020966, 47.774376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.556747, 30.728985, 47.669811>,  <34.708313, 30.553797, 47.607071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.556747, 30.728985, 47.669811>,  <34.304134, 31.020966, 47.774376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556747, 30.728985, 47.669811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074939, 0.278114, -0.957620,
		0.771722, 0.624356, 0.120936,
		0.631530, -0.729954, -0.261416,
		34.746208, 30.509998, 47.591385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938457, 31.379986, 47.452568>,  <34.304134, 31.020966, 47.774376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938457, 31.379986, 47.452568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.944279, 30.996609, 47.338604>,  <34.947773, 30.766582, 47.270226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.944279, 30.996609, 47.338604>,  <34.938457, 31.379986, 47.452568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944279, 30.996609, 47.338604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230450, 0.274050, -0.933697,
		0.972975, 0.079247, -0.216884,
		0.014556, -0.958445, -0.284906,
		34.948647, 30.709076, 47.253132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359486, 31.345549, 46.849026>,  <34.938457, 31.379986, 47.452568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359486, 31.345549, 46.849026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.121384, 31.024300, 46.838737>,  <34.978523, 30.831551, 46.832565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.121384, 31.024300, 46.838737>,  <35.359486, 31.345549, 46.849026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121384, 31.024300, 46.838737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111683, 0.114395, -0.987138,
		0.795735, -0.584729, -0.157790,
		-0.595259, -0.803122, -0.025724,
		34.942806, 30.783363, 46.831020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581207, 30.833595, 46.202202>,  <35.359486, 31.345549, 46.849026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581207, 30.833595, 46.202202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.196747, 30.777267, 46.297169>,  <34.966072, 30.743471, 46.354149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.196747, 30.777267, 46.297169>,  <35.581207, 30.833595, 46.202202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196747, 30.777267, 46.297169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256285, 0.135756, -0.957020,
		0.102538, -0.980683, -0.166572,
		-0.961147, -0.140821, 0.237414,
		34.908401, 30.735022, 46.368393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261017, 30.541615, 45.669334>,  <35.581207, 30.833595, 46.202202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261017, 30.541615, 45.669334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.935814, 30.681860, 45.855274>,  <34.740692, 30.766006, 45.966839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.935814, 30.681860, 45.855274>,  <35.261017, 30.541615, 45.669334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935814, 30.681860, 45.855274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472127, 0.070253, -0.878727,
		-0.340749, -0.933882, 0.108417,
		-0.813011, 0.350612, 0.464849,
		34.691910, 30.787043, 45.994728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783127, 30.103861, 45.293732>,  <35.261017, 30.541615, 45.669334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783127, 30.103861, 45.293732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.590683, 30.400158, 45.481277>,  <34.475216, 30.577936, 45.593803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.590683, 30.400158, 45.481277>,  <34.783127, 30.103861, 45.293732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590683, 30.400158, 45.481277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599273, 0.112465, -0.792605,
		-0.639848, -0.662307, 0.389800,
		-0.481109, 0.740744, 0.468863,
		34.446350, 30.622381, 45.621937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056484, 30.023371, 45.205807>,  <34.783127, 30.103861, 45.293732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056484, 30.023371, 45.205807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.058796, 30.414150, 45.291164>,  <34.060184, 30.648619, 45.342377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.058796, 30.414150, 45.291164>,  <34.056484, 30.023371, 45.205807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058796, 30.414150, 45.291164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437722, 0.194338, -0.877856,
		-0.899092, -0.088331, 0.428756,
		0.005782, 0.976950, 0.213392,
		34.060532, 30.707235, 45.355183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352673, 30.300024, 45.153709>,  <34.056484, 30.023371, 45.205807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352673, 30.300024, 45.153709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.592545, 30.617079, 45.109684>,  <33.736465, 30.807312, 45.083271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.592545, 30.617079, 45.109684>,  <33.352673, 30.300024, 45.153709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592545, 30.617079, 45.109684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404128, 0.181256, -0.896564,
		-0.690701, 0.582127, 0.429022,
		0.599677, 0.792638, -0.110060,
		33.772449, 30.854870, 45.076668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933228, 30.820719, 44.726570>,  <33.352673, 30.300024, 45.153709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933228, 30.820719, 44.726570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.307156, 30.958147, 44.690639>,  <33.531513, 31.040604, 44.669079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.307156, 30.958147, 44.690639>,  <32.933228, 30.820719, 44.726570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307156, 30.958147, 44.690639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249447, 0.455254, -0.854705,
		-0.252755, 0.821404, 0.511283,
		0.934821, 0.343569, -0.089828,
		33.587601, 31.061218, 44.663692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895802, 31.496750, 44.448277>,  <32.933228, 30.820719, 44.726570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895802, 31.496750, 44.448277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.282269, 31.437941, 44.363518>,  <33.514149, 31.402655, 44.312660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.282269, 31.437941, 44.363518>,  <32.895802, 31.496750, 44.448277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282269, 31.437941, 44.363518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084275, 0.596536, -0.798150,
		0.243750, 0.789006, 0.563964,
		0.966170, -0.147021, -0.211899,
		33.572121, 31.393835, 44.299950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233334, 32.131618, 44.281570>,  <32.895802, 31.496750, 44.448277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233334, 32.131618, 44.281570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.456074, 31.844021, 44.115208>,  <33.589718, 31.671463, 44.015392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.456074, 31.844021, 44.115208>,  <33.233334, 32.131618, 44.281570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456074, 31.844021, 44.115208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006892, 0.504700, -0.863267,
		0.830587, 0.477841, 0.285995,
		0.556846, -0.718990, -0.415904,
		33.623127, 31.628325, 43.990437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812290, 32.477276, 43.890953>,  <33.233334, 32.131618, 44.281570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812290, 32.477276, 43.890953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.755882, 32.107208, 43.750004>,  <33.722038, 31.885166, 43.665432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.755882, 32.107208, 43.750004>,  <33.812290, 32.477276, 43.890953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755882, 32.107208, 43.750004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181619, 0.325715, -0.927860,
		0.973205, -0.194843, 0.122098,
		-0.141018, -0.925173, -0.352375,
		33.713577, 31.829657, 43.644291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368546, 32.430714, 43.436909>,  <33.812290, 32.477276, 43.890953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368546, 32.430714, 43.436909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.108856, 32.149509, 43.320778>,  <33.953041, 31.980787, 43.251099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.108856, 32.149509, 43.320778>,  <34.368546, 32.430714, 43.436909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108856, 32.149509, 43.320778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149987, 0.255884, -0.955001,
		0.745664, -0.663553, -0.060684,
		-0.649222, -0.703008, -0.290328,
		33.914089, 31.938606, 43.233681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989582, 32.862617, 43.383209>,  <34.368546, 32.430714, 43.436909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989582, 32.862617, 43.383209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.938587, 33.259342, 43.386150>,  <34.907990, 33.497375, 43.387917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.938587, 33.259342, 43.386150>,  <34.989582, 32.862617, 43.383209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938587, 33.259342, 43.386150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079548, 0.002833, 0.996827,
		0.988645, 0.127670, -0.079258,
		-0.127489, 0.991813, 0.007355,
		34.900341, 33.556885, 43.388355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647175, 33.173580, 43.614658>,  <34.989582, 32.862617, 43.383209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647175, 33.173580, 43.614658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.346745, 33.424946, 43.695633>,  <35.166485, 33.575764, 43.744217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.346745, 33.424946, 43.695633>,  <35.647175, 33.173580, 43.614658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346745, 33.424946, 43.695633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263370, 0.004018, 0.964687,
		0.605407, 0.777870, -0.168522,
		-0.751078, 0.628412, 0.202435,
		35.121422, 33.613468, 43.756363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932526, 33.712612, 43.964634>,  <35.647175, 33.173580, 43.614658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932526, 33.712612, 43.964634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.552628, 33.691170, 44.087994>,  <35.324688, 33.678303, 44.162010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.552628, 33.691170, 44.087994>,  <35.932526, 33.712612, 43.964634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552628, 33.691170, 44.087994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312434, -0.101687, 0.944481,
		-0.019269, 0.993371, 0.113325,
		-0.949744, -0.053606, 0.308404,
		35.267704, 33.675087, 44.180515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965424, 34.089779, 44.620377>,  <35.932526, 33.712612, 43.964634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965424, 34.089779, 44.620377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.607372, 33.911545, 44.614677>,  <35.392544, 33.804604, 44.611256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.607372, 33.911545, 44.614677>,  <35.965424, 34.089779, 44.620377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607372, 33.911545, 44.614677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147592, -0.326354, 0.933654,
		-0.420672, 0.833635, 0.357893,
		-0.895126, -0.445585, -0.014250,
		35.338833, 33.777870, 44.610401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630936, 34.261406, 45.298798>,  <35.965424, 34.089779, 44.620377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630936, 34.261406, 45.298798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.417789, 33.949905, 45.166374>,  <35.289902, 33.763004, 45.086922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.417789, 33.949905, 45.166374>,  <35.630936, 34.261406, 45.298798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417789, 33.949905, 45.166374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098301, -0.331611, 0.938281,
		-0.840468, 0.532524, 0.100153,
		-0.532869, -0.778750, -0.331056,
		35.257927, 33.716282, 45.067059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992825, 34.204243, 45.669796>,  <35.630936, 34.261406, 45.298798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992825, 34.204243, 45.669796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.046856, 33.824673, 45.555744>,  <35.079277, 33.596931, 45.487312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.046856, 33.824673, 45.555744>,  <34.992825, 34.204243, 45.669796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046856, 33.824673, 45.555744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029109, -0.283842, 0.958429,
		-0.990407, -0.137765, -0.010720,
		0.135081, -0.948923, -0.285129,
		35.087379, 33.539997, 45.470207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465527, 33.762814, 45.879211>,  <34.992825, 34.204243, 45.669796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465527, 33.762814, 45.879211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.814266, 33.572117, 45.834309>,  <35.023510, 33.457699, 45.807369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.814266, 33.572117, 45.834309>,  <34.465527, 33.762814, 45.879211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814266, 33.572117, 45.834309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042930, -0.302697, 0.952119,
		-0.487892, -0.825284, -0.284372,
		0.871848, -0.476739, -0.112254,
		35.075821, 33.429096, 45.800632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352886, 33.161770, 46.186043>,  <34.465527, 33.762814, 45.879211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352886, 33.161770, 46.186043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.750393, 33.163280, 46.141468>,  <34.988895, 33.164188, 46.114723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.750393, 33.163280, 46.141468>,  <34.352886, 33.161770, 46.186043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750393, 33.163280, 46.141468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107782, -0.288634, 0.951353,
		-0.028571, -0.957432, -0.287242,
		0.993764, 0.003778, -0.111440,
		35.048523, 33.164413, 46.108036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487877, 32.500019, 46.535557>,  <34.352886, 33.161770, 46.186043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487877, 32.500019, 46.535557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.820671, 32.720802, 46.513149>,  <35.020348, 32.853271, 46.499702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.820671, 32.720802, 46.513149>,  <34.487877, 32.500019, 46.535557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820671, 32.720802, 46.513149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224544, -0.242673, 0.943763,
		0.507327, -0.797776, -0.325840,
		0.831985, 0.551962, -0.056021,
		35.070267, 32.886391, 46.496342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981529, 32.046738, 46.859989>,  <34.487877, 32.500019, 46.535557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981529, 32.046738, 46.859989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.110916, 32.421268, 46.914639>,  <35.188549, 32.645985, 46.947430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.110916, 32.421268, 46.914639>,  <34.981529, 32.046738, 46.859989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110916, 32.421268, 46.914639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246504, -0.222782, 0.943188,
		0.913568, -0.271410, -0.302870,
		0.323465, 0.936325, 0.136623,
		35.207954, 32.702168, 46.955624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567547, 31.987856, 47.310295>,  <34.981529, 32.046738, 46.859989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567547, 31.987856, 47.310295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.477795, 32.376858, 47.335236>,  <35.423943, 32.610260, 47.350201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.477795, 32.376858, 47.335236>,  <35.567547, 31.987856, 47.310295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477795, 32.376858, 47.335236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362731, 0.023960, 0.931586,
		0.904477, 0.231651, -0.358133,
		-0.224384, 0.972504, 0.062356,
		35.410480, 32.668610, 47.353943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143333, 32.302124, 47.698677>,  <35.567547, 31.987856, 47.310295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143333, 32.302124, 47.698677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.859192, 32.579750, 47.745445>,  <35.688705, 32.746326, 47.773506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.859192, 32.579750, 47.745445>,  <36.143333, 32.302124, 47.698677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859192, 32.579750, 47.745445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352041, 0.206519, 0.912917,
		0.609476, 0.689657, -0.391040,
		-0.710357, 0.694063, 0.116919,
		35.646084, 32.787968, 47.780521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436520, 32.878613, 48.059933>,  <36.143333, 32.302124, 47.698677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436520, 32.878613, 48.059933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.042088, 32.896923, 48.123882>,  <35.805428, 32.907909, 48.162251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.042088, 32.896923, 48.123882>,  <36.436520, 32.878613, 48.059933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042088, 32.896923, 48.123882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160892, 0.019516, 0.986779,
		0.042052, 0.998761, -0.026610,
		-0.986076, 0.045777, 0.159872,
		35.746265, 32.910656, 48.171844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323242, 33.376003, 48.624271>,  <36.436520, 32.878613, 48.059933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323242, 33.376003, 48.624271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.969738, 33.189259, 48.636959>,  <35.757637, 33.077213, 48.644569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.969738, 33.189259, 48.636959>,  <36.323242, 33.376003, 48.624271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969738, 33.189259, 48.636959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090135, -0.103331, 0.990555,
		-0.459174, 0.878273, 0.133400,
		-0.883762, -0.466861, 0.031717,
		35.704609, 33.049202, 48.646473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528522, 34.012787, 48.878368>,  <36.323242, 33.376003, 48.624271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528522, 34.012787, 48.878368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.847538, 34.222778, 48.997250>,  <37.038948, 34.348774, 49.068581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.847538, 34.222778, 48.997250>,  <36.528522, 34.012787, 48.878368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847538, 34.222778, 48.997250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063795, 0.563291, -0.823792,
		-0.599888, 0.638044, 0.482737,
		0.797536, 0.524979, 0.297208,
		37.086800, 34.380272, 49.086411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326733, 34.711452, 48.858723>,  <36.528522, 34.012787, 48.878368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326733, 34.711452, 48.858723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.726593, 34.721394, 48.854958>,  <36.966507, 34.727360, 48.852699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.726593, 34.721394, 48.854958>,  <36.326733, 34.711452, 48.858723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726593, 34.721394, 48.854958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021783, 0.563355, -0.825928,
		-0.015228, 0.825841, 0.563698,
		0.999647, 0.024856, -0.009410,
		37.026485, 34.728851, 48.852135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513901, 35.392223, 48.679180>,  <36.326733, 34.711452, 48.858723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513901, 35.392223, 48.679180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.850021, 35.193825, 48.591660>,  <37.051693, 35.074787, 48.539146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.850021, 35.193825, 48.591660>,  <36.513901, 35.392223, 48.679180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850021, 35.193825, 48.591660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199370, 0.658067, -0.726085,
		0.504122, 0.566511, 0.651864,
		0.840305, -0.495997, -0.218800,
		37.102112, 35.045025, 48.526020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998402, 35.960804, 48.439232>,  <36.513901, 35.392223, 48.679180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998402, 35.960804, 48.439232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.169140, 35.613297, 48.338799>,  <37.271584, 35.404793, 48.278538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.169140, 35.613297, 48.338799>,  <36.998402, 35.960804, 48.439232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169140, 35.613297, 48.338799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163601, 0.347249, -0.923392,
		0.889404, 0.353066, 0.290353,
		0.426843, -0.868771, -0.251082,
		37.297192, 35.352665, 48.263474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756554, 36.079475, 48.039799>,  <36.998402, 35.960804, 48.439232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756554, 36.079475, 48.039799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.574776, 35.740147, 47.931110>,  <37.465710, 35.536549, 47.865898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.574776, 35.740147, 47.931110>,  <37.756554, 36.079475, 48.039799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574776, 35.740147, 47.931110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002494, 0.303827, -0.952724,
		0.890770, -0.433640, -0.135957,
		-0.454446, -0.848319, -0.271722,
		37.438442, 35.485649, 47.849594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060265, 36.005402, 47.354626>,  <37.756554, 36.079475, 48.039799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060265, 36.005402, 47.354626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.761974, 35.738914, 47.352013>,  <37.583000, 35.579021, 47.350445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.761974, 35.738914, 47.352013>,  <38.060265, 36.005402, 47.354626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761974, 35.738914, 47.352013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008318, 0.019113, -0.999783,
		0.666202, -0.745509, -0.019794,
		-0.745725, -0.666222, -0.006532,
		37.538258, 35.539047, 47.350052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112736, 35.460754, 46.830570>,  <38.060265, 36.005402, 47.354626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112736, 35.460754, 46.830570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.720795, 35.435375, 46.906322>,  <37.485630, 35.420147, 46.951775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.720795, 35.435375, 46.906322>,  <38.112736, 35.460754, 46.830570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720795, 35.435375, 46.906322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185183, -0.066575, -0.980446,
		0.074813, -0.995762, 0.053485,
		-0.979852, -0.063446, 0.189379,
		37.426838, 35.416344, 46.963135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703362, 34.784447, 46.389202>,  <38.112736, 35.460754, 46.830570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703362, 34.784447, 46.389202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.438583, 35.070026, 46.480507>,  <37.279716, 35.241375, 46.535290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.438583, 35.070026, 46.480507>,  <37.703362, 34.784447, 46.389202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438583, 35.070026, 46.480507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206442, 0.119102, -0.971183,
		-0.720564, -0.689992, 0.068551,
		-0.661944, 0.713951, 0.228264,
		37.240002, 35.284210, 46.548985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150406, 34.613811, 46.022022>,  <37.703362, 34.784447, 46.389202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150406, 34.613811, 46.022022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.094307, 34.999329, 46.112736>,  <37.060646, 35.230640, 46.167164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.094307, 34.999329, 46.112736>,  <37.150406, 34.613811, 46.022022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094307, 34.999329, 46.112736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457700, 0.139994, -0.878016,
		-0.877975, -0.226938, 0.421495,
		-0.140248, 0.963795, 0.226781,
		37.052231, 35.288467, 46.180771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518417, 34.796398, 45.769859>,  <37.150406, 34.613811, 46.022022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518417, 34.796398, 45.769859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.730522, 35.134834, 45.791553>,  <36.857784, 35.337898, 45.804569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.730522, 35.134834, 45.791553>,  <36.518417, 34.796398, 45.769859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730522, 35.134834, 45.791553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338432, 0.269885, -0.901458,
		-0.777355, 0.459659, 0.429457,
		0.530267, 0.846095, 0.054234,
		36.889603, 35.388664, 45.807823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065701, 35.346104, 45.446537>,  <36.518417, 34.796398, 45.769859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065701, 35.346104, 45.446537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.420063, 35.531651, 45.446869>,  <36.632679, 35.642979, 45.447067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.420063, 35.531651, 45.446869>,  <36.065701, 35.346104, 45.446537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420063, 35.531651, 45.446869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180967, 0.347271, -0.920138,
		-0.427111, 0.815003, 0.391594,
		0.885905, 0.463866, 0.000834,
		36.685833, 35.670811, 45.447121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946861, 35.919907, 45.218777>,  <36.065701, 35.346104, 45.446537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946861, 35.919907, 45.218777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.336426, 35.874302, 45.140293>,  <36.570164, 35.846939, 45.093204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.336426, 35.874302, 45.140293>,  <35.946861, 35.919907, 45.218777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336426, 35.874302, 45.140293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146175, 0.346174, -0.926713,
		0.173579, 0.931217, 0.320477,
		0.973911, -0.114012, -0.196209,
		36.628601, 35.840099, 45.081429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146358, 36.524742, 44.688648>,  <35.946861, 35.919907, 45.218777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146358, 36.524742, 44.688648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.478111, 36.301338, 44.683136>,  <36.677162, 36.167297, 44.679829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.478111, 36.301338, 44.683136>,  <36.146358, 36.524742, 44.688648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478111, 36.301338, 44.683136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130000, 0.216928, -0.967493,
		0.543340, 0.800633, 0.252522,
		0.829386, -0.558506, -0.013783,
		36.726929, 36.133785, 44.679001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703323, 37.007175, 44.435764>,  <36.146358, 36.524742, 44.688648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703323, 37.007175, 44.435764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.746761, 36.616543, 44.361477>,  <36.772823, 36.382164, 44.316906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.746761, 36.616543, 44.361477>,  <36.703323, 37.007175, 44.435764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746761, 36.616543, 44.361477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172720, 0.165443, -0.970977,
		0.978967, 0.137517, -0.150710,
		0.108592, -0.976585, -0.185715,
		36.779339, 36.323566, 44.305763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.437662, 27.224613, 31.095919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.048115, 27.314482, 31.109215>,  <25.814386, 27.368402, 31.117191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.048115, 27.314482, 31.109215>,  <26.437662, 27.224613, 31.095919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.048115, 27.314482, 31.109215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221165, 0.904854, 0.363764,
		0.051650, 0.361610, -0.930898,
		-0.973868, 0.224671, 0.033239,
		25.755955, 27.381884, 31.119186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288649, 27.857111, 30.701326>,  <26.437662, 27.224613, 31.095919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.288649, 27.857111, 30.701326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.982056, 27.800823, 30.951990>,  <25.798100, 27.767050, 31.102388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.982056, 27.800823, 30.951990>,  <26.288649, 27.857111, 30.701326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982056, 27.800823, 30.951990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211301, 0.866139, 0.452941,
		-0.606513, 0.479585, -0.634145,
		-0.766481, -0.140720, 0.626661,
		25.752111, 27.758608, 31.139988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886513, 28.496365, 30.692568>,  <26.288649, 27.857111, 30.701326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886513, 28.496365, 30.692568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.823166, 28.309402, 31.040464>,  <25.785158, 28.197226, 31.249203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.823166, 28.309402, 31.040464>,  <25.886513, 28.496365, 30.692568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.823166, 28.309402, 31.040464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078379, 0.872128, 0.482960,
		-0.984264, 0.144655, -0.101483,
		-0.158369, -0.467406, 0.869742,
		25.775656, 28.169180, 31.301388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.317377, 28.977695, 31.041950>,  <25.886513, 28.496365, 30.692568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.317377, 28.977695, 31.041950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.535362, 28.777626, 31.311125>,  <25.666153, 28.657585, 31.472630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.535362, 28.777626, 31.311125>,  <25.317377, 28.977695, 31.041950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.535362, 28.777626, 31.311125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137563, 0.845046, 0.516695,
		-0.827098, -0.189009, 0.529325,
		0.544964, -0.500173, 0.672935,
		25.698851, 28.627575, 31.513004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.132942, 29.154053, 31.741085>,  <25.317377, 28.977695, 31.041950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.132942, 29.154053, 31.741085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.493372, 28.998198, 31.817240>,  <25.709629, 28.904684, 31.862932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.493372, 28.998198, 31.817240>,  <25.132942, 29.154053, 31.741085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.493372, 28.998198, 31.817240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124549, 0.653037, 0.747014,
		-0.415393, -0.649403, 0.636965,
		0.901075, -0.389638, 0.190385,
		25.763695, 28.881306, 31.874355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.042171, 28.873299, 32.369869>,  <25.132942, 29.154053, 31.741085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.042171, 28.873299, 32.369869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.439243, 28.912653, 32.341839>,  <25.677486, 28.936266, 32.325020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.439243, 28.912653, 32.341839>,  <25.042171, 28.873299, 32.369869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.439243, 28.912653, 32.341839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022905, 0.416325, 0.908927,
		0.118600, -0.903877, 0.411023,
		0.992678, 0.098385, -0.070080,
		25.737047, 28.942169, 32.320816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.308945, 28.625772, 33.011230>,  <25.042171, 28.873299, 32.369869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.308945, 28.625772, 33.011230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.616405, 28.845490, 32.880112>,  <25.800882, 28.977320, 32.801441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.616405, 28.845490, 32.880112>,  <25.308945, 28.625772, 33.011230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616405, 28.845490, 32.880112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038192, 0.550950, 0.833664,
		0.638529, -0.628277, 0.444466,
		0.768650, 0.549294, -0.327802,
		25.847000, 29.010277, 32.781773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.611158, 28.882414, 33.640350>,  <25.308945, 28.625772, 33.011230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.611158, 28.882414, 33.640350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.797054, 29.105814, 33.365513>,  <25.908592, 29.239853, 33.200611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.797054, 29.105814, 33.365513>,  <25.611158, 28.882414, 33.640350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797054, 29.105814, 33.365513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138209, 0.720718, 0.679312,
		0.874596, -0.410664, 0.257755,
		0.464737, 0.558499, -0.687094,
		25.936476, 29.273363, 33.159386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368816, 29.065222, 33.904526>,  <25.611158, 28.882414, 33.640350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368816, 29.065222, 33.904526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.216635, 29.338531, 33.655239>,  <26.125326, 29.502518, 33.505669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.216635, 29.338531, 33.655239>,  <26.368816, 29.065222, 33.904526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.216635, 29.338531, 33.655239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125682, 0.705838, 0.697135,
		0.916220, 0.186900, -0.354414,
		-0.380454, 0.683272, -0.623213,
		26.102499, 29.543512, 33.468277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750916, 29.731503, 34.044922>,  <26.368816, 29.065222, 33.904526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.750916, 29.731503, 34.044922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.418852, 29.841972, 33.851192>,  <26.219614, 29.908255, 33.734955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.418852, 29.841972, 33.851192>,  <26.750916, 29.731503, 34.044922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.418852, 29.841972, 33.851192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053063, 0.825612, 0.561737,
		0.554999, 0.492030, -0.670733,
		-0.830157, 0.276172, -0.484323,
		26.169806, 29.924824, 33.705894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930771, 30.422581, 33.819660>,  <26.750916, 29.731503, 34.044922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930771, 30.422581, 33.819660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.531548, 30.399405, 33.810505>,  <26.292013, 30.385498, 33.805012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.531548, 30.399405, 33.810505>,  <26.930771, 30.422581, 33.819660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.531548, 30.399405, 33.810505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059540, 0.779072, 0.624101,
		-0.018329, 0.624252, -0.781008,
		-0.998058, -0.057940, -0.022889,
		26.232130, 30.382023, 33.803638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710777, 31.092854, 33.744274>,  <26.930771, 30.422581, 33.819660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710777, 31.092854, 33.744274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.370661, 30.917900, 33.861374>,  <26.166592, 30.812927, 33.931633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.370661, 30.917900, 33.861374>,  <26.710777, 31.092854, 33.744274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.370661, 30.917900, 33.861374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204633, 0.787194, 0.581765,
		-0.484903, 0.434765, -0.758847,
		-0.850291, -0.437385, 0.292745,
		26.115574, 30.786684, 33.949196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181114, 31.589539, 33.665863>,  <26.710777, 31.092854, 33.744274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.181114, 31.589539, 33.665863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.032480, 31.323740, 33.925205>,  <25.943300, 31.164261, 34.080811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.032480, 31.323740, 33.925205>,  <26.181114, 31.589539, 33.665863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032480, 31.323740, 33.925205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282873, 0.746192, 0.602645,
		-0.884256, 0.040529, -0.465241,
		-0.371583, -0.664496, 0.648360,
		25.921005, 31.124392, 34.119713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476727, 31.796524, 33.813210>,  <26.181114, 31.589539, 33.665863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476727, 31.796524, 33.813210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.619471, 31.600101, 34.131081>,  <25.705116, 31.482248, 34.321804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.619471, 31.600101, 34.131081>,  <25.476727, 31.796524, 33.813210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.619471, 31.600101, 34.131081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343820, 0.721932, 0.600502,
		-0.868584, -0.487521, 0.088794,
		0.356861, -0.491057, 0.794678,
		25.726528, 31.452784, 34.369484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.032454, 31.915260, 34.374962>,  <25.476727, 31.796524, 33.813210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.032454, 31.915260, 34.374962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.348278, 31.773783, 34.575558>,  <25.537773, 31.688896, 34.695915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.348278, 31.773783, 34.575558>,  <25.032454, 31.915260, 34.374962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.348278, 31.773783, 34.575558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175886, 0.652486, 0.737107,
		-0.587923, -0.670197, 0.452970,
		0.789563, -0.353692, 0.501490,
		25.585148, 31.667675, 34.726006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.853479, 32.007309, 35.112167>,  <25.032454, 31.915260, 34.374962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.853479, 32.007309, 35.112167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.247364, 31.937786, 35.107533>,  <25.483694, 31.896072, 35.104752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.247364, 31.937786, 35.107533>,  <24.853479, 32.007309, 35.112167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.247364, 31.937786, 35.107533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112011, 0.580840, 0.806275,
		-0.133403, -0.795247, 0.591428,
		0.984712, -0.173806, -0.011590,
		25.542778, 31.885645, 35.104053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.963289, 31.898571, 35.767723>,  <24.853479, 32.007309, 35.112167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.963289, 31.898571, 35.767723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.320837, 32.016006, 35.632195>,  <25.535366, 32.086468, 35.550877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.320837, 32.016006, 35.632195>,  <24.963289, 31.898571, 35.767723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.320837, 32.016006, 35.632195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002262, 0.758695, 0.651442,
		0.448320, -0.581538, 0.678838,
		0.893870, 0.293590, -0.338823,
		25.588999, 32.104084, 35.530548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.427027, 31.905542, 36.313568>,  <24.963289, 31.898571, 35.767723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.427027, 31.905542, 36.313568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.584845, 32.147873, 36.037220>,  <25.679535, 32.293270, 35.871410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.584845, 32.147873, 36.037220>,  <25.427027, 31.905542, 36.313568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584845, 32.147873, 36.037220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020878, 0.757585, 0.652402,
		0.918639, -0.242979, 0.311550,
		0.394546, 0.605827, -0.690875,
		25.703209, 32.329620, 35.829956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870007, 32.260498, 36.705334>,  <25.427027, 31.905542, 36.313568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870007, 32.260498, 36.705334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.850994, 32.446835, 36.351898>,  <25.839586, 32.558636, 36.139835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.850994, 32.446835, 36.351898>,  <25.870007, 32.260498, 36.705334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850994, 32.446835, 36.351898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004177, 0.884674, 0.466192,
		0.998861, 0.018468, -0.043997,
		-0.047533, 0.465845, -0.883589,
		25.836735, 32.586590, 36.086823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459009, 32.710182, 36.611492>,  <25.870007, 32.260498, 36.705334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.459009, 32.710182, 36.611492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.150293, 32.853928, 36.401653>,  <25.965063, 32.940174, 36.275749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.150293, 32.853928, 36.401653>,  <26.459009, 32.710182, 36.611492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150293, 32.853928, 36.401653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032285, 0.846073, 0.532088,
		0.635056, 0.393724, -0.664594,
		-0.771791, 0.359362, -0.524593,
		25.918756, 32.961735, 36.244274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684013, 32.283100, 37.265381>,  <26.459009, 32.710182, 36.611492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.684013, 32.283100, 37.265381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.035999, 32.140610, 37.391087>,  <27.247190, 32.055115, 37.466511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.035999, 32.140610, 37.391087>,  <26.684013, 32.283100, 37.265381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.035999, 32.140610, 37.391087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022981, -0.692705, -0.720855,
		0.474484, 0.627104, -0.617742,
		0.879964, -0.356230, 0.314265,
		27.299988, 32.033741, 37.485367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910347, 31.951708, 36.637161>,  <26.684013, 32.283100, 37.265381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.910347, 31.951708, 36.637161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135044, 31.789570, 36.925644>,  <27.269861, 31.692287, 37.098736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135044, 31.789570, 36.925644>,  <26.910347, 31.951708, 36.637161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135044, 31.789570, 36.925644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044517, -0.855676, -0.515594,
		0.826114, 0.321736, -0.462624,
		0.561741, -0.405345, 0.721209,
		27.303566, 31.667967, 37.142006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468504, 31.581171, 36.278255>,  <26.910347, 31.951708, 36.637161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468504, 31.581171, 36.278255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.412121, 31.419621, 36.639812>,  <27.378292, 31.322691, 36.856747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.412121, 31.419621, 36.639812>,  <27.468504, 31.581171, 36.278255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412121, 31.419621, 36.639812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019396, -0.911703, -0.410392,
		0.989826, -0.075379, 0.120676,
		-0.140956, -0.403876, 0.903889,
		27.369835, 31.298458, 36.910980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978697, 31.047928, 36.186447>,  <27.468504, 31.581171, 36.278255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978697, 31.047928, 36.186447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.765387, 30.937626, 36.506340>,  <27.637400, 30.871445, 36.698277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.765387, 30.937626, 36.506340>,  <27.978697, 31.047928, 36.186447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765387, 30.937626, 36.506340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215413, -0.958480, -0.186852,
		0.818054, 0.072630, 0.570536,
		-0.533277, -0.275756, 0.799734,
		27.605404, 30.854898, 36.746262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336809, 30.454729, 36.458561>,  <27.978697, 31.047928, 36.186447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336809, 30.454729, 36.458561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.957413, 30.451714, 36.585247>,  <27.729774, 30.449903, 36.661259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.957413, 30.451714, 36.585247>,  <28.336809, 30.454729, 36.458561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957413, 30.451714, 36.585247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048204, -0.984642, -0.167800,
		0.313113, -0.174423, 0.933561,
		-0.948492, -0.007539, 0.316712,
		27.672865, 30.449451, 36.680260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186029, 29.833811, 36.978565>,  <28.336809, 30.454729, 36.458561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186029, 29.833811, 36.978565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.829802, 29.951998, 36.840240>,  <27.616064, 30.022909, 36.757248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.829802, 29.951998, 36.840240>,  <28.186029, 29.833811, 36.978565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829802, 29.951998, 36.840240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162351, -0.916690, -0.365132,
		-0.424882, -0.269034, 0.864347,
		-0.890571, 0.295466, -0.345807,
		27.562630, 30.040638, 36.736500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772636, 29.250914, 37.193890>,  <28.186029, 29.833811, 36.978565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772636, 29.250914, 37.193890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.594334, 29.443850, 36.892254>,  <27.487352, 29.559610, 36.711273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.594334, 29.443850, 36.892254>,  <27.772636, 29.250914, 37.193890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594334, 29.443850, 36.892254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110886, -0.865676, -0.488169,
		-0.888261, -0.133984, 0.439363,
		-0.445753, 0.482341, -0.754090,
		27.460608, 29.588552, 36.666027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123632, 28.883574, 37.090340>,  <27.772636, 29.250914, 37.193890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123632, 28.883574, 37.090340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.166529, 29.080166, 36.744637>,  <27.192266, 29.198120, 36.537212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.166529, 29.080166, 36.744637>,  <27.123632, 28.883574, 37.090340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166529, 29.080166, 36.744637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279188, -0.819412, -0.500618,
		-0.954229, 0.294979, 0.049339,
		0.107242, 0.491479, -0.864261,
		27.198702, 29.227610, 36.485359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583029, 28.698692, 36.701824>,  <27.123632, 28.883574, 37.090340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583029, 28.698692, 36.701824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.801437, 28.837990, 36.397038>,  <26.932482, 28.921568, 36.214165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.801437, 28.837990, 36.397038>,  <26.583029, 28.698692, 36.701824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801437, 28.837990, 36.397038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314081, -0.758087, -0.571539,
		-0.776670, 0.551390, -0.304554,
		0.546020, 0.348243, -0.761964,
		26.965242, 28.942463, 36.168449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188684, 28.593534, 36.065445>,  <26.583029, 28.698692, 36.701824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188684, 28.593534, 36.065445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.556843, 28.658854, 35.923347>,  <26.777739, 28.698046, 35.838089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.556843, 28.658854, 35.923347>,  <26.188684, 28.593534, 36.065445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.556843, 28.658854, 35.923347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162510, -0.666617, -0.727470,
		-0.355609, 0.727293, -0.587015,
		0.920398, 0.163300, -0.355247,
		26.832962, 28.707844, 35.816772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140184, 28.630884, 35.364754>,  <26.188684, 28.593534, 36.065445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140184, 28.630884, 35.364754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.528372, 28.558447, 35.428493>,  <26.761284, 28.514984, 35.466736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.528372, 28.558447, 35.428493>,  <26.140184, 28.630884, 35.364754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.528372, 28.558447, 35.428493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002582, -0.652763, -0.757558,
		0.241206, 0.735599, -0.633019,
		0.970471, -0.181093, 0.159350,
		26.819513, 28.504120, 35.476299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441816, 28.714363, 34.750164>,  <26.140184, 28.630884, 35.364754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441816, 28.714363, 34.750164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.691755, 28.496693, 34.974106>,  <26.841719, 28.366091, 35.108471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.691755, 28.496693, 34.974106>,  <26.441816, 28.714363, 34.750164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691755, 28.496693, 34.974106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014657, -0.725126, -0.688460,
		0.780610, 0.421976, -0.461068,
		0.624846, -0.544177, 0.559856,
		26.879210, 28.333439, 35.142063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055096, 28.503469, 34.285774>,  <26.441816, 28.714363, 34.750164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055096, 28.503469, 34.285774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.077147, 28.253622, 34.597366>,  <27.090376, 28.103714, 34.784321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.077147, 28.253622, 34.597366>,  <27.055096, 28.503469, 34.285774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077147, 28.253622, 34.597366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013203, -0.780555, -0.624948,
		0.998392, 0.024166, -0.051276,
		0.055126, -0.624620, 0.778981,
		27.093685, 28.066236, 34.831062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624063, 28.158796, 34.162720>,  <27.055096, 28.503469, 34.285774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624063, 28.158796, 34.162720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.375130, 27.940250, 34.386929>,  <27.225769, 27.809122, 34.521454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.375130, 27.940250, 34.386929>,  <27.624063, 28.158796, 34.162720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375130, 27.940250, 34.386929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052174, -0.685545, -0.726158,
		0.781012, -0.481157, 0.398132,
		-0.622334, -0.546366, 0.560523,
		27.188429, 27.776340, 34.555084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874741, 27.548473, 34.081268>,  <27.624063, 28.158796, 34.162720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874741, 27.548473, 34.081268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.511707, 27.473917, 34.231758>,  <27.293886, 27.429184, 34.322052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.511707, 27.473917, 34.231758>,  <27.874741, 27.548473, 34.081268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511707, 27.473917, 34.231758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132031, -0.723913, -0.677139,
		0.398568, -0.664236, 0.632404,
		-0.907585, -0.186389, 0.376228,
		27.239431, 27.417999, 34.344627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916916, 26.808647, 34.274208>,  <27.874741, 27.548473, 34.081268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916916, 26.808647, 34.274208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.528877, 26.901119, 34.244625>,  <27.296055, 26.956602, 34.226875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.528877, 26.901119, 34.244625>,  <27.916916, 26.808647, 34.274208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528877, 26.901119, 34.244625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160259, -0.838901, -0.520156,
		-0.182294, -0.492748, 0.850863,
		-0.970096, 0.231180, -0.073960,
		27.237848, 26.970472, 34.222439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551849, 26.140074, 34.273796>,  <27.916916, 26.808647, 34.274208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.551849, 26.140074, 34.273796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.295118, 26.409042, 34.126335>,  <27.141079, 26.570423, 34.037861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.295118, 26.409042, 34.126335>,  <27.551849, 26.140074, 34.273796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.295118, 26.409042, 34.126335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254458, -0.640245, -0.724802,
		-0.723400, -0.371393, 0.582031,
		-0.641829, 0.672424, -0.368649,
		27.102570, 26.610769, 34.015739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989456, 25.780750, 34.183521>,  <27.551849, 26.140074, 34.273796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989456, 25.780750, 34.183521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.961535, 26.097818, 33.941265>,  <26.944782, 26.288059, 33.795910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.961535, 26.097818, 33.941265>,  <26.989456, 25.780750, 34.183521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961535, 26.097818, 33.941265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327601, -0.591666, -0.736619,
		-0.942234, 0.146991, 0.300980,
		-0.069804, 0.792669, -0.605642,
		26.940594, 26.335619, 33.759571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379225, 25.510540, 33.831558>,  <26.989456, 25.780750, 34.183521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379225, 25.510540, 33.831558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549568, 25.810583, 33.629177>,  <26.651773, 25.990608, 33.507748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549568, 25.810583, 33.629177>,  <26.379225, 25.510540, 33.831558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549568, 25.810583, 33.629177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347362, -0.380796, -0.856933,
		-0.835456, 0.540678, 0.098394,
		0.425856, 0.750108, -0.505949,
		26.677324, 26.035616, 33.477394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941389, 25.681011, 33.307018>,  <26.379225, 25.510540, 33.831558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941389, 25.681011, 33.307018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.289896, 25.834801, 33.184986>,  <26.499001, 25.927074, 33.111767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.289896, 25.834801, 33.184986>,  <25.941389, 25.681011, 33.307018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289896, 25.834801, 33.184986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119353, -0.436949, -0.891532,
		-0.476075, 0.813175, -0.334811,
		0.871267, 0.384476, -0.305076,
		26.551277, 25.950144, 33.093464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.737133, 25.705059, 32.605312>,  <25.941389, 25.681011, 33.307018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.737133, 25.705059, 32.605312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.134048, 25.754633, 32.604717>,  <26.372198, 25.784378, 32.604359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.134048, 25.754633, 32.604717>,  <25.737133, 25.705059, 32.605312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134048, 25.754633, 32.604717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053018, -0.435299, -0.898724,
		-0.112032, 0.891715, -0.438513,
		0.992289, 0.123935, -0.001490,
		26.431736, 25.791813, 32.604271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987486, 26.060314, 31.993589>,  <25.737133, 25.705059, 32.605312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.987486, 26.060314, 31.993589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.280912, 25.822527, 32.125340>,  <26.456968, 25.679855, 32.204388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.280912, 25.822527, 32.125340>,  <25.987486, 26.060314, 31.993589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280912, 25.822527, 32.125340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003108, -0.487575, -0.873076,
		0.679610, 0.639436, -0.359517,
		0.733568, -0.594468, 0.329373,
		26.500982, 25.644186, 32.224152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.009937, 34.231617, 47.934135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.693508, 33.991322, 47.980286>,  <39.503651, 33.847145, 48.007977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.693508, 33.991322, 47.980286>,  <40.009937, 34.231617, 47.934135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693508, 33.991322, 47.980286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400809, -0.366538, 0.839644,
		-0.462120, 0.710464, 0.530741,
		-0.791074, -0.600742, 0.115376,
		39.456184, 33.811100, 48.014900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840664, 34.235302, 48.627346>,  <40.009937, 34.231617, 47.934135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840664, 34.235302, 48.627346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.663410, 33.897396, 48.507343>,  <39.557056, 33.694653, 48.435341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.663410, 33.897396, 48.507343>,  <39.840664, 34.235302, 48.627346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663410, 33.897396, 48.507343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330727, -0.465116, 0.821150,
		-0.833216, 0.264662, 0.485496,
		-0.443139, -0.844761, -0.300011,
		39.530468, 33.643967, 48.417339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490452, 33.999588, 49.217449>,  <39.840664, 34.235302, 48.627346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490452, 33.999588, 49.217449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.518848, 33.675152, 48.985210>,  <39.535885, 33.480492, 48.845867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.518848, 33.675152, 48.985210>,  <39.490452, 33.999588, 49.217449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518848, 33.675152, 48.985210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263465, -0.546146, 0.795180,
		-0.962053, -0.209415, 0.174924,
		0.070989, -0.811092, -0.580595,
		39.540146, 33.431824, 48.811031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211998, 33.444122, 49.568226>,  <39.490452, 33.999588, 49.217449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211998, 33.444122, 49.568226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.428223, 33.255333, 49.289646>,  <39.557957, 33.142059, 49.122498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.428223, 33.255333, 49.289646>,  <39.211998, 33.444122, 49.568226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428223, 33.255333, 49.289646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387918, -0.594735, 0.704138,
		-0.746535, -0.650792, -0.138402,
		0.540559, -0.471975, -0.696444,
		39.590389, 33.113739, 49.080711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080746, 32.813831, 49.749882>,  <39.211998, 33.444122, 49.568226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080746, 32.813831, 49.749882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.414345, 32.810070, 49.529205>,  <39.614502, 32.807812, 49.396801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.414345, 32.810070, 49.529205>,  <39.080746, 32.813831, 49.749882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414345, 32.810070, 49.529205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405682, -0.667260, 0.624649,
		-0.373995, -0.744765, -0.552677,
		0.833996, -0.009404, -0.551690,
		39.664543, 32.807247, 49.363697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349659, 32.092564, 49.565601>,  <39.080746, 32.813831, 49.749882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349659, 32.092564, 49.565601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.666950, 32.335716, 49.579834>,  <39.857327, 32.481609, 49.588371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.666950, 32.335716, 49.579834>,  <39.349659, 32.092564, 49.565601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666950, 32.335716, 49.579834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377623, -0.536916, 0.754402,
		0.477689, -0.584980, -0.655448,
		0.793230, 0.607882, 0.035577,
		39.904919, 32.518082, 49.590508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902958, 31.643904, 49.624249>,  <39.349659, 32.092564, 49.565601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902958, 31.643904, 49.624249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.031582, 32.004856, 49.739006>,  <40.108757, 32.221428, 49.807861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.031582, 32.004856, 49.739006>,  <39.902958, 31.643904, 49.624249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031582, 32.004856, 49.739006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523252, -0.421864, 0.740431,
		0.789179, -0.087980, -0.607828,
		0.321564, 0.902380, 0.286891,
		40.128052, 32.275570, 49.825073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577740, 31.556721, 49.901611>,  <39.902958, 31.643904, 49.624249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577740, 31.556721, 49.901611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.478931, 31.906416, 50.068794>,  <40.419647, 32.116234, 50.169106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.478931, 31.906416, 50.068794>,  <40.577740, 31.556721, 49.901611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478931, 31.906416, 50.068794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404189, -0.299053, 0.864407,
		0.880688, 0.382464, -0.279483,
		-0.247024, 0.874236, 0.417960,
		40.404823, 32.168686, 50.194183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137585, 31.668537, 50.287018>,  <40.577740, 31.556721, 49.901611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137585, 31.668537, 50.287018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.868370, 31.924601, 50.435192>,  <40.706841, 32.078239, 50.524097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.868370, 31.924601, 50.435192>,  <41.137585, 31.668537, 50.287018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868370, 31.924601, 50.435192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420060, -0.081382, 0.903840,
		0.608750, 0.763918, -0.214133,
		-0.673033, 0.640161, 0.370433,
		40.666462, 32.116650, 50.546322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538559, 32.193745, 50.731998>,  <41.137585, 31.668537, 50.287018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538559, 32.193745, 50.731998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.162800, 32.193085, 50.869133>,  <40.937344, 32.192688, 50.951412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.162800, 32.193085, 50.869133>,  <41.538559, 32.193745, 50.731998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162800, 32.193085, 50.869133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339508, -0.143496, 0.929593,
		0.047658, 0.989649, 0.135360,
		-0.939395, -0.001653, 0.342832,
		40.880981, 32.192589, 50.971981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635330, 32.546410, 51.287483>,  <41.538559, 32.193745, 50.731998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635330, 32.546410, 51.287483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.298687, 32.331680, 51.311172>,  <41.096699, 32.202843, 51.325386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.298687, 32.331680, 51.311172>,  <41.635330, 32.546410, 51.287483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298687, 32.331680, 51.311172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206654, -0.218779, 0.953640,
		-0.498981, 0.814835, 0.295064,
		-0.841613, -0.536825, 0.059222,
		41.046204, 32.170631, 51.328938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469074, 32.681416, 51.948006>,  <41.635330, 32.546410, 51.287483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469074, 32.681416, 51.948006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.243301, 32.361973, 51.864445>,  <41.107838, 32.170307, 51.814308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.243301, 32.361973, 51.864445>,  <41.469074, 32.681416, 51.948006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243301, 32.361973, 51.864445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095948, -0.314826, 0.944287,
		-0.819883, 0.512944, 0.254323,
		-0.564434, -0.798607, -0.208904,
		41.073971, 32.122391, 51.801773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990417, 32.541046, 52.508244>,  <41.469074, 32.681416, 51.948006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990417, 32.541046, 52.508244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.074738, 32.211040, 52.298512>,  <41.125328, 32.013039, 52.172672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.074738, 32.211040, 52.298512>,  <40.990417, 32.541046, 52.508244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074738, 32.211040, 52.298512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246944, -0.474044, 0.845164,
		-0.945824, -0.307638, 0.103804,
		0.210797, -0.825010, -0.524331,
		41.137978, 31.963537, 52.141212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741810, 31.950605, 52.843670>,  <40.990417, 32.541046, 52.508244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741810, 31.950605, 52.843670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.047459, 31.827030, 52.617157>,  <41.230846, 31.752886, 52.481247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.047459, 31.827030, 52.617157>,  <40.741810, 31.950605, 52.843670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047459, 31.827030, 52.617157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375743, -0.500404, 0.780008,
		-0.524351, -0.808794, -0.266283,
		0.764116, -0.308944, -0.566286,
		41.276695, 31.734348, 52.447273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073112, 31.675817, 53.244072>,  <40.741810, 31.950605, 52.843670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073112, 31.675817, 53.244072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.824459, 31.872707, 53.487804>,  <39.675266, 31.990841, 53.634045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.824459, 31.872707, 53.487804>,  <40.073112, 31.675817, 53.244072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824459, 31.872707, 53.487804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613614, 0.177501, -0.769397,
		-0.486874, -0.852177, 0.191697,
		-0.621636, 0.492227, 0.609328,
		39.637970, 32.020374, 53.670605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491070, 31.882647, 52.808456>,  <40.073112, 31.675817, 53.244072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491070, 31.882647, 52.808456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.319515, 32.073406, 53.115341>,  <39.216583, 32.187862, 53.299473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.319515, 32.073406, 53.115341>,  <39.491070, 31.882647, 52.808456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319515, 32.073406, 53.115341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685014, 0.381969, -0.620367,
		-0.588906, -0.791623, 0.162860,
		-0.428889, 0.476899, 0.767217,
		39.190849, 32.216476, 53.345505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652676, 31.734522, 52.851650>,  <39.491070, 31.882647, 52.808456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652676, 31.734522, 52.851650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.733780, 32.085224, 53.026093>,  <38.782444, 32.295647, 53.130760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.733780, 32.085224, 53.026093>,  <38.652676, 31.734522, 52.851650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733780, 32.085224, 53.026093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677535, 0.447154, -0.583952,
		-0.706989, -0.177075, 0.684697,
		0.202762, 0.876754, 0.436108,
		38.794609, 32.348251, 53.156925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071114, 31.956099, 53.048996>,  <38.652676, 31.734522, 52.851650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071114, 31.956099, 53.048996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.294529, 32.286671, 53.020565>,  <38.428577, 32.485012, 53.003506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.294529, 32.286671, 53.020565>,  <38.071114, 31.956099, 53.048996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294529, 32.286671, 53.020565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653263, 0.385457, -0.651668,
		-0.511162, 0.410410, 0.755167,
		0.558536, 0.826430, -0.071075,
		38.462090, 32.534599, 52.999241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591141, 32.465260, 52.806915>,  <38.071114, 31.956099, 53.048996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591141, 32.465260, 52.806915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.921600, 32.687271, 52.768089>,  <38.119877, 32.820480, 52.744793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.921600, 32.687271, 52.768089>,  <37.591141, 32.465260, 52.806915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921600, 32.687271, 52.768089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456133, 0.557657, -0.693513,
		-0.330794, 0.617217, 0.713875,
		0.826146, 0.555032, -0.097064,
		38.169445, 32.853783, 52.738972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439461, 33.175411, 53.017807>,  <37.591141, 32.465260, 52.806915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439461, 33.175411, 53.017807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.755287, 33.207256, 52.774414>,  <37.944782, 33.226364, 52.628380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.755287, 33.207256, 52.774414>,  <37.439461, 33.175411, 53.017807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755287, 33.207256, 52.774414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519523, 0.614467, -0.593739,
		0.326621, 0.784915, 0.526523,
		0.789566, 0.079613, -0.608479,
		37.992157, 33.231140, 52.591869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474369, 33.904953, 52.785645>,  <37.439461, 33.175411, 53.017807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474369, 33.904953, 52.785645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.703403, 33.699711, 52.529873>,  <37.840824, 33.576565, 52.376411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.703403, 33.699711, 52.529873>,  <37.474369, 33.904953, 52.785645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703403, 33.699711, 52.529873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300267, 0.594498, -0.745930,
		0.762878, 0.619110, 0.186335,
		0.572588, -0.513104, -0.639427,
		37.875179, 33.545780, 52.338043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811764, 34.431892, 52.298199>,  <37.474369, 33.904953, 52.785645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811764, 34.431892, 52.298199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.869579, 34.086113, 52.105598>,  <37.904266, 33.878647, 51.990040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.869579, 34.086113, 52.105598>,  <37.811764, 34.431892, 52.298199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869579, 34.086113, 52.105598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321716, 0.419115, -0.849024,
		0.935739, 0.277621, -0.217529,
		0.144537, -0.864447, -0.481498,
		37.912941, 33.826778, 51.961147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224945, 34.561935, 51.665771>,  <37.811764, 34.431892, 52.298199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224945, 34.561935, 51.665771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.041245, 34.215683, 51.586002>,  <37.931023, 34.007931, 51.538139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.041245, 34.215683, 51.586002>,  <38.224945, 34.561935, 51.665771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041245, 34.215683, 51.586002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292429, 0.359311, -0.886217,
		0.838792, -0.348680, -0.418150,
		-0.459252, -0.865631, -0.199423,
		37.903469, 33.955994, 51.526176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456551, 34.416641, 51.062393>,  <38.224945, 34.561935, 51.665771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456551, 34.416641, 51.062393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.123749, 34.195583, 51.081810>,  <37.924068, 34.062950, 51.093460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.123749, 34.195583, 51.081810>,  <38.456551, 34.416641, 51.062393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123749, 34.195583, 51.081810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312285, 0.394216, -0.864333,
		0.458534, -0.734285, -0.500571,
		-0.832000, -0.552647, 0.048545,
		37.874149, 34.029789, 51.096375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431633, 34.169418, 50.419529>,  <38.456551, 34.416641, 51.062393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431633, 34.169418, 50.419529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.067142, 34.109295, 50.572933>,  <37.848450, 34.073223, 50.664974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.067142, 34.109295, 50.572933>,  <38.431633, 34.169418, 50.419529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067142, 34.109295, 50.572933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407588, 0.194519, -0.892208,
		0.059502, -0.969315, -0.238513,
		-0.911225, -0.150303, 0.383507,
		37.793774, 34.064205, 50.687984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180099, 33.604996, 49.995739>,  <38.431633, 34.169418, 50.419529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180099, 33.604996, 49.995739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.885391, 33.837223, 50.134373>,  <37.708569, 33.976559, 50.217552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.885391, 33.837223, 50.134373>,  <38.180099, 33.604996, 49.995739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885391, 33.837223, 50.134373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390584, 0.052970, -0.919042,
		-0.551922, -0.812489, 0.187734,
		-0.736767, 0.580566, 0.346580,
		37.664360, 34.011395, 50.238346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528385, 33.297401, 49.715576>,  <38.180099, 33.604996, 49.995739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528385, 33.297401, 49.715576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.421455, 33.669239, 49.817070>,  <37.357296, 33.892342, 49.877968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.421455, 33.669239, 49.817070>,  <37.528385, 33.297401, 49.715576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421455, 33.669239, 49.817070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185397, 0.208782, -0.960228,
		-0.945602, -0.303737, 0.116532,
		-0.267327, 0.929599, 0.253737,
		37.341259, 33.948120, 49.893192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912582, 33.470531, 49.296642>,  <37.528385, 33.297401, 49.715576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912582, 33.470531, 49.296642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.065414, 33.828575, 49.388546>,  <37.157116, 34.043404, 49.443687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.065414, 33.828575, 49.388546>,  <36.912582, 33.470531, 49.296642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065414, 33.828575, 49.388546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173534, 0.313694, -0.933532,
		-0.907689, 0.316815, 0.275189,
		0.382082, 0.895111, 0.229758,
		37.180038, 34.097107, 49.457474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093407, 33.487869, 49.322426>,  <36.912582, 33.470531, 49.296642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093407, 33.487869, 49.322426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.880028, 33.176407, 49.190292>,  <35.751999, 32.989529, 49.111012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.880028, 33.176407, 49.190292>,  <36.093407, 33.487869, 49.322426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880028, 33.176407, 49.190292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032461, -0.371407, 0.927902,
		-0.845208, 0.505713, 0.172851,
		-0.533450, -0.778660, -0.330333,
		35.719994, 32.942810, 49.091194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597797, 33.448269, 49.763714>,  <36.093407, 33.487869, 49.322426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597797, 33.448269, 49.763714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.645298, 33.077709, 49.620777>,  <35.673798, 32.855373, 49.535015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.645298, 33.077709, 49.620777>,  <35.597797, 33.448269, 49.763714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645298, 33.077709, 49.620777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117298, -0.344276, 0.931512,
		-0.985971, -0.152534, 0.067781,
		0.118752, -0.926395, -0.357338,
		35.680923, 32.799789, 49.513577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157955, 33.129463, 50.213856>,  <35.597797, 33.448269, 49.763714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157955, 33.129463, 50.213856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380783, 32.853832, 50.028450>,  <35.514481, 32.688454, 49.917206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380783, 32.853832, 50.028450>,  <35.157955, 33.129463, 50.213856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380783, 32.853832, 50.028450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097933, -0.499735, 0.860624,
		-0.824672, -0.524819, -0.210902,
		0.557068, -0.689079, -0.463515,
		35.547905, 32.647110, 49.889397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809921, 32.597862, 50.289845>,  <35.157955, 33.129463, 50.213856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809921, 32.597862, 50.289845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175346, 32.454788, 50.212414>,  <35.394600, 32.368946, 50.165955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175346, 32.454788, 50.212414>,  <34.809921, 32.597862, 50.289845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175346, 32.454788, 50.212414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031319, -0.536428, 0.843365,
		-0.405499, -0.764400, -0.501261,
		0.913559, -0.357683, -0.193580,
		35.449413, 32.347485, 50.154339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737808, 31.863329, 50.387196>,  <34.809921, 32.597862, 50.289845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737808, 31.863329, 50.387196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.116432, 31.982834, 50.435814>,  <35.343605, 32.054535, 50.464985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.116432, 31.982834, 50.435814>,  <34.737808, 31.863329, 50.387196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116432, 31.982834, 50.435814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064660, -0.544962, 0.835964,
		0.315991, -0.783428, -0.535155,
		0.946557, 0.298761, 0.121546,
		35.400398, 32.072460, 50.472279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152084, 31.122648, 50.476864>,  <34.737808, 31.863329, 50.387196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152084, 31.122648, 50.476864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.419926, 31.389521, 50.607403>,  <35.580631, 31.549644, 50.685726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.419926, 31.389521, 50.607403>,  <35.152084, 31.122648, 50.476864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419926, 31.389521, 50.607403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119881, -0.530715, 0.839029,
		0.732981, -0.522693, -0.435350,
		0.669602, 0.667183, 0.326344,
		35.620808, 31.589676, 50.705307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720161, 30.698420, 50.740662>,  <35.152084, 31.122648, 50.476864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720161, 30.698420, 50.740662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.750530, 31.069809, 50.886086>,  <35.768753, 31.292643, 50.973339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.750530, 31.069809, 50.886086>,  <35.720161, 30.698420, 50.740662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750530, 31.069809, 50.886086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038364, -0.367060, 0.929406,
		0.996375, -0.056617, -0.063489,
		0.075924, 0.928472, 0.363558,
		35.773308, 31.348351, 50.995152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069859, 30.356607, 50.183971>,  <35.720161, 30.698420, 50.740662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069859, 30.356607, 50.183971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994827, 29.963713, 50.181873>,  <35.949806, 29.727976, 50.180614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994827, 29.963713, 50.181873>,  <36.069859, 30.356607, 50.183971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994827, 29.963713, 50.181873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252227, 0.053332, -0.966197,
		0.949313, -0.179917, -0.257750,
		-0.187582, -0.982235, -0.005248,
		35.938553, 29.669043, 50.180298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335663, 30.038504, 49.585331>,  <36.069859, 30.356607, 50.183971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335663, 30.038504, 49.585331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.035461, 29.800634, 49.700642>,  <35.855339, 29.657913, 49.769829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.035461, 29.800634, 49.700642>,  <36.335663, 30.038504, 49.585331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035461, 29.800634, 49.700642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343217, -0.022045, -0.938998,
		0.564754, -0.803664, -0.187558,
		-0.750503, -0.594675, 0.288281,
		35.810310, 29.622232, 49.787125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303104, 29.498396, 49.048176>,  <36.335663, 30.038504, 49.585331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303104, 29.498396, 49.048176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.956055, 29.513708, 49.246475>,  <35.747826, 29.522896, 49.365456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.956055, 29.513708, 49.246475>,  <36.303104, 29.498396, 49.048176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956055, 29.513708, 49.246475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496546, -0.014678, -0.867886,
		-0.025956, -0.999159, 0.031748,
		-0.867622, 0.038291, 0.495748,
		35.695766, 29.525192, 49.395199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905258, 28.892406, 48.907780>,  <36.303104, 29.498396, 49.048176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905258, 28.892406, 48.907780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.671745, 29.198273, 49.016949>,  <35.531639, 29.381792, 49.082451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.671745, 29.198273, 49.016949>,  <35.905258, 28.892406, 48.907780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671745, 29.198273, 49.016949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310897, 0.099995, -0.945169,
		-0.750030, -0.636621, 0.179357,
		-0.583779, 0.764666, 0.272923,
		35.496613, 29.427673, 49.098827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303169, 28.820461, 48.534214>,  <35.905258, 28.892406, 48.907780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303169, 28.820461, 48.534214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278603, 29.194225, 48.674561>,  <35.263863, 29.418484, 48.758770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278603, 29.194225, 48.674561>,  <35.303169, 28.820461, 48.534214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278603, 29.194225, 48.674561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321796, 0.314221, -0.893148,
		-0.944815, -0.167760, 0.281392,
		-0.061415, 0.934410, 0.350865,
		35.260178, 29.474548, 48.779819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603519, 29.040998, 48.418468>,  <35.303169, 28.820461, 48.534214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603519, 29.040998, 48.418468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.838478, 29.361191, 48.466133>,  <34.979454, 29.553307, 48.494732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.838478, 29.361191, 48.466133>,  <34.603519, 29.040998, 48.418468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838478, 29.361191, 48.466133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349564, 0.383746, -0.854719,
		-0.729912, 0.460404, 0.505229,
		0.587396, 0.800479, 0.119160,
		35.014698, 29.601334, 48.501881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071175, 29.538994, 48.346264>,  <34.603519, 29.040998, 48.418468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071175, 29.538994, 48.346264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.420963, 29.726313, 48.295677>,  <34.630836, 29.838703, 48.265324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.420963, 29.726313, 48.295677>,  <34.071175, 29.538994, 48.346264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420963, 29.726313, 48.295677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373708, 0.484192, -0.791139,
		-0.309253, 0.739092, 0.598419,
		0.874474, 0.468296, -0.126466,
		34.683304, 29.866802, 48.257736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<41.203472, 28.542809, 50.822945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.109421, 28.930241, 50.855347>,  <41.052990, 29.162701, 50.874790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.109421, 28.930241, 50.855347>,  <41.203472, 28.542809, 50.822945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109421, 28.930241, 50.855347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672675, -0.102000, -0.732874,
		-0.701586, -0.226813, 0.675524,
		-0.235129, 0.968583, 0.081009,
		41.038883, 29.220816, 50.879650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505413, 28.583208, 50.846611>,  <41.203472, 28.542809, 50.822945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505413, 28.583208, 50.846611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.602901, 28.949335, 50.718365>,  <40.661396, 29.169010, 50.641415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.602901, 28.949335, 50.718365>,  <40.505413, 28.583208, 50.846611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602901, 28.949335, 50.718365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595365, -0.119762, -0.794479,
		-0.765598, 0.384517, 0.515758,
		0.243723, 0.915316, -0.320618,
		40.676018, 29.223930, 50.622181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914970, 28.789648, 50.557247>,  <40.505413, 28.583208, 50.846611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914970, 28.789648, 50.557247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.186150, 29.025949, 50.382256>,  <40.348858, 29.167730, 50.277260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.186150, 29.025949, 50.382256>,  <39.914970, 28.789648, 50.557247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186150, 29.025949, 50.382256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471466, -0.107180, -0.875347,
		-0.564005, 0.799700, 0.205858,
		0.677951, 0.590755, -0.437482,
		40.389534, 29.203176, 50.251011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498741, 29.212223, 50.193291>,  <39.914970, 28.789648, 50.557247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498741, 29.212223, 50.193291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.868729, 29.273851, 50.054329>,  <40.090721, 29.310829, 49.970951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.868729, 29.273851, 50.054329>,  <39.498741, 29.212223, 50.193291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868729, 29.273851, 50.054329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329206, -0.131874, -0.935004,
		-0.189872, 0.979220, -0.071258,
		0.924971, 0.154073, -0.347404,
		40.146221, 29.320074, 49.950108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398167, 29.723021, 49.665558>,  <39.498741, 29.212223, 50.193291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398167, 29.723021, 49.665558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.748524, 29.551836, 49.576424>,  <39.958740, 29.449125, 49.522942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.748524, 29.551836, 49.576424>,  <39.398167, 29.723021, 49.665558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748524, 29.551836, 49.576424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207698, 0.082436, -0.974713,
		0.435507, 0.900031, -0.016681,
		0.875897, -0.427959, -0.222837,
		40.011292, 29.423449, 49.509571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581520, 30.188520, 49.174507>,  <39.398167, 29.723021, 49.665558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581520, 30.188520, 49.174507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.795647, 29.854937, 49.120914>,  <39.924122, 29.654787, 49.088760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.795647, 29.854937, 49.120914>,  <39.581520, 30.188520, 49.174507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795647, 29.854937, 49.120914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143376, 0.066599, -0.987425,
		0.832394, 0.547794, -0.083918,
		0.535316, -0.833958, -0.133978,
		39.956242, 29.604750, 49.080723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062046, 30.359772, 48.608471>,  <39.581520, 30.188520, 49.174507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062046, 30.359772, 48.608471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.017487, 29.963575, 48.640759>,  <39.990749, 29.725857, 48.660130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.017487, 29.963575, 48.640759>,  <40.062046, 30.359772, 48.608471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017487, 29.963575, 48.640759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107576, -0.068728, -0.991819,
		0.987936, -0.119175, -0.098896,
		-0.111403, -0.990492, 0.080719,
		39.984066, 29.666428, 48.664974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587578, 30.114866, 48.125896>,  <40.062046, 30.359772, 48.608471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587578, 30.114866, 48.125896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.349792, 29.797760, 48.179768>,  <40.207123, 29.607496, 48.212090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.349792, 29.797760, 48.179768>,  <40.587578, 30.114866, 48.125896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349792, 29.797760, 48.179768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060003, -0.123283, -0.990556,
		0.801882, -0.596929, 0.025719,
		-0.594462, -0.792766, 0.134676,
		40.171455, 29.559931, 48.220169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934296, 29.527912, 47.837486>,  <40.587578, 30.114866, 48.125896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934296, 29.527912, 47.837486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.539524, 29.464882, 47.851025>,  <40.302662, 29.427063, 47.859146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.539524, 29.464882, 47.851025>,  <40.934296, 29.527912, 47.837486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539524, 29.464882, 47.851025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033538, -0.004606, -0.999427,
		0.157646, -0.987495, -0.000739,
		-0.986926, -0.157580, 0.033845,
		40.243446, 29.417608, 47.861179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844570, 29.074076, 47.382870>,  <40.934296, 29.527912, 47.837486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844570, 29.074076, 47.382870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.475243, 29.221674, 47.425426>,  <40.253647, 29.310232, 47.450958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.475243, 29.221674, 47.425426>,  <40.844570, 29.074076, 47.382870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475243, 29.221674, 47.425426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110879, 0.009086, -0.993792,
		-0.367672, -0.929387, 0.032525,
		-0.923322, 0.368996, 0.106390,
		40.198246, 29.332373, 47.457344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442547, 28.748495, 46.841084>,  <40.844570, 29.074076, 47.382870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442547, 28.748495, 46.841084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.217064, 29.066393, 46.931068>,  <40.081772, 29.257132, 46.985062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.217064, 29.066393, 46.931068>,  <40.442547, 28.748495, 46.841084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217064, 29.066393, 46.931068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253772, 0.092544, -0.962827,
		-0.786021, -0.599846, 0.149516,
		-0.563711, 0.794745, 0.224966,
		40.047951, 29.304817, 46.998558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802479, 28.686064, 46.560600>,  <40.442547, 28.748495, 46.841084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802479, 28.686064, 46.560600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.817314, 29.083857, 46.599846>,  <39.826214, 29.322533, 46.623394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.817314, 29.083857, 46.599846>,  <39.802479, 28.686064, 46.560600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817314, 29.083857, 46.599846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251337, 0.104309, -0.962263,
		-0.967189, 0.011026, 0.253819,
		0.037085, 0.994484, 0.098116,
		39.828442, 29.382202, 46.629280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156853, 28.506582, 46.806740>,  <39.802479, 28.686064, 46.560600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156853, 28.506582, 46.806740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.827629, 28.284090, 46.760803>,  <38.630096, 28.150595, 46.733242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.827629, 28.284090, 46.760803>,  <39.156853, 28.506582, 46.806740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827629, 28.284090, 46.760803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237819, -0.521137, 0.819670,
		-0.515773, 0.647321, 0.561207,
		-0.823055, -0.556230, -0.114843,
		38.580711, 28.117222, 46.726349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947937, 28.415567, 47.497726>,  <39.156853, 28.506582, 46.806740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947937, 28.415567, 47.497726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.749332, 28.136045, 47.291756>,  <38.630169, 27.968332, 47.168175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.749332, 28.136045, 47.291756>,  <38.947937, 28.415567, 47.497726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749332, 28.136045, 47.291756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057084, -0.618216, 0.783932,
		-0.866150, 0.359839, 0.346843,
		-0.496513, -0.698803, -0.514927,
		38.600380, 27.926405, 47.137276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361935, 28.208885, 47.906803>,  <38.947937, 28.415567, 47.497726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361935, 28.208885, 47.906803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.477844, 27.917963, 47.657948>,  <38.547390, 27.743410, 47.508633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.477844, 27.917963, 47.657948>,  <38.361935, 28.208885, 47.906803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477844, 27.917963, 47.657948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188434, -0.593950, 0.782122,
		-0.938361, -0.343874, -0.035064,
		0.289777, -0.727306, -0.622137,
		38.564777, 27.699772, 47.471306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947464, 27.664846, 48.142845>,  <38.361935, 28.208885, 47.906803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947464, 27.664846, 48.142845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.251133, 27.517385, 47.928272>,  <38.433334, 27.428909, 47.799530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.251133, 27.517385, 47.928272>,  <37.947464, 27.664846, 48.142845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251133, 27.517385, 47.928272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204201, -0.647639, 0.734074,
		-0.618036, -0.666825, -0.416386,
		0.759167, -0.368658, -0.536431,
		38.478886, 27.406790, 47.767345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878521, 26.916912, 48.166798>,  <37.947464, 27.664846, 48.142845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878521, 26.916912, 48.166798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.263107, 26.965250, 48.068024>,  <38.493858, 26.994253, 48.008759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.263107, 26.965250, 48.068024>,  <37.878521, 26.916912, 48.166798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263107, 26.965250, 48.068024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274821, -0.446117, 0.851735,
		-0.007234, -0.886779, -0.462138,
		0.961468, 0.120843, -0.246933,
		38.551548, 27.001503, 47.993942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259029, 26.227509, 48.323681>,  <37.878521, 26.916912, 48.166798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259029, 26.227509, 48.323681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.543667, 26.507275, 48.297012>,  <38.714451, 26.675135, 48.281010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.543667, 26.507275, 48.297012>,  <38.259029, 26.227509, 48.323681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543667, 26.507275, 48.297012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307108, -0.224290, 0.924867,
		0.631912, -0.678610, -0.374401,
		0.711598, 0.699416, -0.066675,
		38.757145, 26.717100, 48.277008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743908, 25.960506, 48.844025>,  <38.259029, 26.227509, 48.323681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743908, 25.960506, 48.844025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.864414, 26.338821, 48.795479>,  <38.936718, 26.565809, 48.766354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.864414, 26.338821, 48.795479>,  <38.743908, 25.960506, 48.844025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864414, 26.338821, 48.795479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311444, 0.022696, 0.949994,
		0.901245, -0.323996, -0.287722,
		0.301264, 0.945786, -0.121361,
		38.954792, 26.622557, 48.759071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322422, 26.011126, 49.089268>,  <38.743908, 25.960506, 48.844025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322422, 26.011126, 49.089268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.145664, 26.368687, 49.119389>,  <39.039612, 26.583223, 49.137463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.145664, 26.368687, 49.119389>,  <39.322422, 26.011126, 49.089268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145664, 26.368687, 49.119389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186387, 0.009374, 0.982432,
		0.877492, 0.448163, -0.170754,
		-0.441890, 0.893903, 0.075306,
		39.013096, 26.636858, 49.141979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701756, 26.291140, 49.605843>,  <39.322422, 26.011126, 49.089268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701756, 26.291140, 49.605843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.391621, 26.543543, 49.595417>,  <39.205540, 26.694984, 49.589161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.391621, 26.543543, 49.595417>,  <39.701756, 26.291140, 49.605843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391621, 26.543543, 49.595417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158626, 0.234526, 0.959081,
		0.611301, 0.739477, -0.281931,
		-0.775338, 0.631008, -0.026066,
		39.159019, 26.732845, 49.587597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004566, 26.866575, 49.877968>,  <39.701756, 26.291140, 49.605843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004566, 26.866575, 49.877968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.612465, 26.929758, 49.925556>,  <39.377205, 26.967667, 49.954109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.612465, 26.929758, 49.925556>,  <40.004566, 26.866575, 49.877968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612465, 26.929758, 49.925556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167611, 0.344417, 0.923734,
		0.104932, 0.925434, -0.364090,
		-0.980253, 0.157955, 0.118972,
		39.318390, 26.977144, 49.961246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928577, 27.541500, 50.248569>,  <40.004566, 26.866575, 49.877968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928577, 27.541500, 50.248569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.590145, 27.335238, 50.302601>,  <39.387085, 27.211479, 50.335022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.590145, 27.335238, 50.302601>,  <39.928577, 27.541500, 50.248569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590145, 27.335238, 50.302601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007213, 0.242310, 0.970172,
		-0.533007, 0.821817, -0.201294,
		-0.846080, -0.515657, 0.135081,
		39.336323, 27.180540, 50.343124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646774, 27.959322, 50.686947>,  <39.928577, 27.541500, 50.248569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646774, 27.959322, 50.686947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.441357, 27.619558, 50.735565>,  <39.318104, 27.415701, 50.764736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.441357, 27.619558, 50.735565>,  <39.646774, 27.959322, 50.686947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441357, 27.619558, 50.735565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171140, 0.240194, 0.955520,
		-0.840821, 0.469905, -0.268719,
		-0.513548, -0.849409, 0.121541,
		39.287292, 27.364735, 50.772026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983932, 28.222839, 50.933678>,  <39.646774, 27.959322, 50.686947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983932, 28.222839, 50.933678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.115959, 27.856466, 51.025002>,  <39.195175, 27.636642, 51.079796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.115959, 27.856466, 51.025002>,  <38.983932, 28.222839, 50.933678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115959, 27.856466, 51.025002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084240, 0.269483, 0.959314,
		-0.940192, -0.297403, 0.166105,
		0.330065, -0.915932, 0.228312,
		39.214977, 27.581686, 51.093494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476795, 28.012026, 51.366661>,  <38.983932, 28.222839, 50.933678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476795, 28.012026, 51.366661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.800468, 27.786726, 51.433567>,  <38.994671, 27.651546, 51.473709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.800468, 27.786726, 51.433567>,  <38.476795, 28.012026, 51.366661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800468, 27.786726, 51.433567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024865, 0.317248, 0.948017,
		-0.587035, -0.762957, 0.270715,
		0.809179, -0.563250, 0.167265,
		39.043221, 27.617750, 51.483746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851761, 27.777985, 51.658829>,  <38.476795, 28.012026, 51.366661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851761, 27.777985, 51.658829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.614250, 27.969507, 51.917492>,  <37.471745, 28.084421, 52.072689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.614250, 27.969507, 51.917492>,  <37.851761, 27.777985, 51.658829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614250, 27.969507, 51.917492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673654, 0.143672, -0.724948,
		-0.440018, -0.866084, 0.237241,
		-0.593781, 0.478808, 0.646659,
		37.436115, 28.113150, 52.111488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151020, 27.646034, 51.505482>,  <37.851761, 27.777985, 51.658829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151020, 27.646034, 51.505482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.105015, 27.990587, 51.703388>,  <37.077412, 28.197319, 51.822132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.105015, 27.990587, 51.703388>,  <37.151020, 27.646034, 51.505482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105015, 27.990587, 51.703388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667387, 0.301912, -0.680767,
		-0.735776, -0.408498, 0.540151,
		-0.115014, 0.861382, 0.494766,
		37.070511, 28.249002, 51.851818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455479, 27.793266, 51.399048>,  <37.151020, 27.646034, 51.505482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455479, 27.793266, 51.399048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.623055, 28.133734, 51.525539>,  <36.723602, 28.338015, 51.601433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.623055, 28.133734, 51.525539>,  <36.455479, 27.793266, 51.399048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623055, 28.133734, 51.525539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492491, 0.505587, -0.708403,
		-0.762850, 0.141043, 0.631005,
		0.418943, 0.851169, 0.316225,
		36.748737, 28.389084, 51.620407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912880, 28.235998, 51.390751>,  <36.455479, 27.793266, 51.399048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912880, 28.235998, 51.390751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.215027, 28.496502, 51.419811>,  <36.396317, 28.652805, 51.437248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.215027, 28.496502, 51.419811>,  <35.912880, 28.235998, 51.390751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215027, 28.496502, 51.419811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474020, 0.619587, -0.625634,
		-0.452464, 0.438146, 0.776727,
		0.755369, 0.651261, 0.072651,
		36.441639, 28.691879, 51.441605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646507, 28.816751, 51.534359>,  <35.912880, 28.235998, 51.390751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646507, 28.816751, 51.534359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.999378, 28.900045, 51.365406>,  <36.211102, 28.950022, 51.264034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.999378, 28.900045, 51.365406>,  <35.646507, 28.816751, 51.534359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999378, 28.900045, 51.365406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463971, 0.537832, -0.703894,
		0.080592, 0.816930, 0.571078,
		0.882176, 0.208235, -0.422378,
		36.264030, 28.962517, 51.238693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647621, 29.583712, 51.398018>,  <35.646507, 28.816751, 51.534359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647621, 29.583712, 51.398018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.912579, 29.396008, 51.164425>,  <36.071552, 29.283386, 51.024269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.912579, 29.396008, 51.164425>,  <35.647621, 29.583712, 51.398018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912579, 29.396008, 51.164425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456071, 0.365833, -0.811274,
		0.594337, 0.803718, 0.028310,
		0.662392, -0.469259, -0.583980,
		36.111298, 29.255230, 50.989231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034519, 30.009056, 51.042854>,  <35.647621, 29.583712, 51.398018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034519, 30.009056, 51.042854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.039776, 29.679775, 50.815815>,  <36.042931, 29.482206, 50.679592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.039776, 29.679775, 50.815815>,  <36.034519, 30.009056, 51.042854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039776, 29.679775, 50.815815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326104, 0.533078, -0.780694,
		0.945242, 0.195358, -0.261442,
		0.013146, -0.823202, -0.567595,
		36.043720, 29.432814, 50.645535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295902, 30.698643, 51.200996>,  <36.034519, 30.009056, 51.042854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295902, 30.698643, 51.200996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.109295, 31.030142, 51.324635>,  <35.997330, 31.229042, 51.398819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.109295, 31.030142, 51.324635>,  <36.295902, 30.698643, 51.200996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109295, 31.030142, 51.324635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325137, -0.164312, 0.931283,
		0.822587, 0.534956, -0.192803,
		-0.466515, 0.828749, 0.309094,
		35.969341, 31.278767, 51.417362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742073, 31.138010, 51.514328>,  <36.295902, 30.698643, 51.200996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742073, 31.138010, 51.514328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.400402, 31.293652, 51.652298>,  <36.195400, 31.387035, 51.735081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.400402, 31.293652, 51.652298>,  <36.742073, 31.138010, 51.514328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400402, 31.293652, 51.652298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307337, -0.157272, 0.938514,
		0.419426, 0.907670, 0.014753,
		-0.854182, 0.389103, 0.344925,
		36.144146, 31.410383, 51.755775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881519, 31.603714, 52.147461>,  <36.742073, 31.138010, 51.514328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881519, 31.603714, 52.147461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.510666, 31.462105, 52.196590>,  <36.288155, 31.377140, 52.226070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.510666, 31.462105, 52.196590>,  <36.881519, 31.603714, 52.147461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510666, 31.462105, 52.196590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176793, -0.124246, 0.976375,
		-0.330397, 0.926948, 0.177781,
		-0.927136, -0.354022, 0.122828,
		36.232525, 31.355898, 52.233440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677254, 31.842476, 52.722324>,  <36.881519, 31.603714, 52.147461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677254, 31.842476, 52.722324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.388302, 31.566137, 52.710327>,  <36.214931, 31.400333, 52.703129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.388302, 31.566137, 52.710327>,  <36.677254, 31.842476, 52.722324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388302, 31.566137, 52.710327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079315, -0.125863, 0.988872,
		-0.686935, 0.711960, 0.145715,
		-0.722378, -0.690848, -0.029991,
		36.171589, 31.358883, 52.701328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303890, 31.973593, 53.288681>,  <36.677254, 31.842476, 52.722324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303890, 31.973593, 53.288681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.204941, 31.595596, 53.203075>,  <36.145573, 31.368799, 53.151714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.204941, 31.595596, 53.203075>,  <36.303890, 31.973593, 53.288681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204941, 31.595596, 53.203075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051953, -0.233495, 0.970969,
		-0.967526, 0.229074, 0.106856,
		-0.247374, -0.944990, -0.214011,
		36.130730, 31.312099, 53.138870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662239, 31.800095, 53.663223>,  <36.303890, 31.973593, 53.288681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662239, 31.800095, 53.663223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.828133, 31.444412, 53.585960>,  <35.927670, 31.231003, 53.539604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.828133, 31.444412, 53.585960>,  <35.662239, 31.800095, 53.663223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828133, 31.444412, 53.585960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163437, -0.136026, 0.977131,
		-0.895147, -0.436814, 0.088915,
		0.414730, -0.889208, -0.193155,
		35.952553, 31.177650, 53.528015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365482, 31.301960, 54.087788>,  <35.662239, 31.800095, 53.663223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365482, 31.301960, 54.087788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.708351, 31.120821, 53.989662>,  <35.914074, 31.012138, 53.930786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.708351, 31.120821, 53.989662>,  <35.365482, 31.301960, 54.087788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708351, 31.120821, 53.989662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096687, -0.326356, 0.940289,
		-0.505869, -0.829710, -0.235960,
		0.857175, -0.452848, -0.245315,
		35.965504, 30.984966, 53.916069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356873, 30.663303, 54.428299>,  <35.365482, 31.301960, 54.087788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356873, 30.663303, 54.428299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.739651, 30.760914, 54.365433>,  <35.969318, 30.819479, 54.327713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.739651, 30.760914, 54.365433>,  <35.356873, 30.663303, 54.428299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739651, 30.760914, 54.365433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224481, -0.278929, 0.933706,
		0.184009, -0.928790, -0.321699,
		0.956948, 0.244025, -0.157170,
		36.026733, 30.834122, 54.318283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883358, 30.031847, 54.415951>,  <35.356873, 30.663303, 54.428299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883358, 30.031847, 54.415951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.030148, 30.378096, 54.552204>,  <36.118221, 30.585846, 54.633957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.030148, 30.378096, 54.552204>,  <35.883358, 30.031847, 54.415951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030148, 30.378096, 54.552204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169551, -0.422285, 0.890465,
		0.914649, -0.269022, -0.301734,
		0.366972, 0.865622, 0.340630,
		36.140240, 30.637783, 54.654392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.171379, 34.069229, 38.613140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430370, 34.373371, 38.633663>,  <34.585766, 34.555855, 38.645977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430370, 34.373371, 38.633663>,  <34.171379, 34.069229, 38.613140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430370, 34.373371, 38.633663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112670, -0.162090, 0.980322,
		0.753709, -0.628957, -0.190619,
		0.647478, 0.760355, 0.051304,
		34.624615, 34.601479, 38.649055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874767, 33.722252, 38.719452>,  <34.171379, 34.069229, 38.613140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874767, 33.722252, 38.719452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828182, 34.098827, 38.846024>,  <34.800232, 34.324772, 38.921967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828182, 34.098827, 38.846024>,  <34.874767, 33.722252, 38.719452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828182, 34.098827, 38.846024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191883, -0.291263, 0.937201,
		0.974483, 0.169862, -0.146727,
		-0.116458, 0.941442, 0.316425,
		34.793243, 34.381260, 38.940952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369019, 33.805370, 39.189056>,  <34.874767, 33.722252, 38.719452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369019, 33.805370, 39.189056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129425, 34.111290, 39.283970>,  <34.985668, 34.294842, 39.340916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129425, 34.111290, 39.283970>,  <35.369019, 33.805370, 39.189056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129425, 34.111290, 39.283970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290399, -0.068679, 0.954438,
		0.746248, 0.640600, -0.180959,
		-0.598985, 0.764797, 0.237281,
		34.949730, 34.340729, 39.355156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686298, 34.289349, 39.523544>,  <35.369019, 33.805370, 39.189056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686298, 34.289349, 39.523544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309078, 34.356030, 39.638691>,  <35.082745, 34.396038, 39.707779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309078, 34.356030, 39.638691>,  <35.686298, 34.289349, 39.523544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309078, 34.356030, 39.638691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307067, 0.103434, 0.946051,
		0.127938, 0.980566, -0.148734,
		-0.943049, 0.166707, 0.287866,
		35.026165, 34.406040, 39.725052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752354, 34.666668, 40.049461>,  <35.686298, 34.289349, 39.523544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752354, 34.666668, 40.049461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374096, 34.580772, 40.147148>,  <35.147141, 34.529236, 40.205761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374096, 34.580772, 40.147148>,  <35.752354, 34.666668, 40.049461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374096, 34.580772, 40.147148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275343, -0.129117, 0.952636,
		-0.173031, 0.968100, 0.181224,
		-0.945646, -0.214734, 0.244218,
		35.090401, 34.516354, 40.220413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529289, 35.143257, 40.630440>,  <35.752354, 34.666668, 40.049461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529289, 35.143257, 40.630440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285954, 34.826073, 40.643887>,  <35.139950, 34.635761, 40.651955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285954, 34.826073, 40.643887>,  <35.529289, 35.143257, 40.630440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285954, 34.826073, 40.643887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000383, 0.042654, 0.999090,
		-0.793674, 0.607777, -0.026252,
		-0.608344, -0.792961, 0.033621,
		35.103451, 34.588184, 40.653973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937321, 35.331192, 41.150158>,  <35.529289, 35.143257, 40.630440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937321, 35.331192, 41.150158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937183, 34.932690, 41.115566>,  <34.937103, 34.693588, 41.094810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937183, 34.932690, 41.115566>,  <34.937321, 35.331192, 41.150158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937183, 34.932690, 41.115566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206273, -0.084546, 0.974835,
		-0.978494, 0.018170, -0.205471,
		-0.000341, -0.996254, -0.086476,
		34.937080, 34.633812, 41.089622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405708, 35.130428, 41.524784>,  <34.937321, 35.331192, 41.150158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405708, 35.130428, 41.524784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622250, 34.794819, 41.502979>,  <34.752174, 34.593452, 41.489899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622250, 34.794819, 41.502979>,  <34.405708, 35.130428, 41.524784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622250, 34.794819, 41.502979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140091, -0.153932, 0.978100,
		-0.829043, -0.521860, -0.200871,
		0.541352, -0.839027, -0.054508,
		34.784657, 34.543110, 41.486626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170017, 34.825741, 42.104725>,  <34.405708, 35.130428, 41.524784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170017, 34.825741, 42.104725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440636, 34.557610, 41.982773>,  <34.603008, 34.396732, 41.909603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440636, 34.557610, 41.982773>,  <34.170017, 34.825741, 42.104725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440636, 34.557610, 41.982773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010628, -0.422858, 0.906134,
		-0.736324, -0.609801, -0.293207,
		0.676546, -0.670324, -0.304879,
		34.643600, 34.356514, 41.891308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854797, 34.147320, 42.406544>,  <34.170017, 34.825741, 42.104725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854797, 34.147320, 42.406544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248581, 34.123730, 42.340382>,  <34.484852, 34.109577, 42.300682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248581, 34.123730, 42.340382>,  <33.854797, 34.147320, 42.406544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248581, 34.123730, 42.340382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088703, -0.645917, 0.758237,
		-0.151558, -0.761126, -0.630648,
		0.984460, -0.058976, -0.165408,
		34.543919, 34.106037, 42.290760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049416, 33.430008, 42.443855>,  <33.854797, 34.147320, 42.406544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049416, 33.430008, 42.443855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376598, 33.644863, 42.526257>,  <34.572906, 33.773777, 42.575699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376598, 33.644863, 42.526257>,  <34.049416, 33.430008, 42.443855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376598, 33.644863, 42.526257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124648, -0.515057, 0.848044,
		0.561620, -0.667982, -0.488246,
		0.817952, 0.537137, 0.206004,
		34.621983, 33.806004, 42.588058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537308, 32.970730, 42.780888>,  <34.049416, 33.430008, 42.443855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537308, 32.970730, 42.780888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686012, 33.334999, 42.852962>,  <34.775234, 33.553562, 42.896210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686012, 33.334999, 42.852962>,  <34.537308, 32.970730, 42.780888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686012, 33.334999, 42.852962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320221, -0.307984, 0.895882,
		0.871352, -0.275352, -0.406113,
		0.371759, 0.910674, 0.180189,
		34.797539, 33.608200, 42.907021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679764, 32.216831, 42.735165>,  <34.537308, 32.970730, 42.780888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679764, 32.216831, 42.735165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310837, 32.069153, 42.780811>,  <34.089481, 31.980547, 42.808197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310837, 32.069153, 42.780811>,  <34.679764, 32.216831, 42.735165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310837, 32.069153, 42.780811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143618, 0.053347, -0.988194,
		0.358745, -0.927821, -0.102226,
		-0.922321, -0.369191, 0.114114,
		34.034142, 31.958395, 42.815044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616348, 31.506468, 42.353535>,  <34.679764, 32.216831, 42.735165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616348, 31.506468, 42.353535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258423, 31.683519, 42.376793>,  <34.043667, 31.789751, 42.390747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258423, 31.683519, 42.376793>,  <34.616348, 31.506468, 42.353535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258423, 31.683519, 42.376793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109962, -0.092291, -0.989642,
		-0.432678, -0.891943, 0.131256,
		-0.894818, 0.442629, 0.058148,
		33.989979, 31.816307, 42.394238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200222, 31.085735, 41.997730>,  <34.616348, 31.506468, 42.353535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200222, 31.085735, 41.997730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007900, 31.436464, 41.998665>,  <33.892506, 31.646902, 41.999226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007900, 31.436464, 41.998665>,  <34.200222, 31.085735, 41.997730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007900, 31.436464, 41.998665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325206, -0.175848, -0.929149,
		-0.814288, -0.447503, 0.369697,
		-0.480808, 0.876823, 0.002340,
		33.863659, 31.699511, 41.999367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770317, 30.947098, 41.543613>,  <34.200222, 31.085735, 41.997730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770317, 30.947098, 41.543613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674812, 31.334646, 41.569782>,  <33.617508, 31.567175, 41.585484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674812, 31.334646, 41.569782>,  <33.770317, 30.947098, 41.543613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674812, 31.334646, 41.569782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211787, 0.013797, -0.977219,
		-0.947702, -0.247179, 0.201900,
		-0.238763, 0.968872, 0.065425,
		33.603184, 31.625307, 41.589409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184650, 31.061529, 41.114597>,  <33.770317, 30.947098, 41.543613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184650, 31.061529, 41.114597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310196, 31.436102, 41.177315>,  <33.385525, 31.660845, 41.214947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310196, 31.436102, 41.177315>,  <33.184650, 31.061529, 41.114597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310196, 31.436102, 41.177315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270480, 0.246484, -0.930637,
		-0.910125, 0.249685, 0.330649,
		0.313866, 0.936431, 0.156797,
		33.404354, 31.717031, 41.224354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567253, 31.426664, 40.897419>,  <33.184650, 31.061529, 41.114597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567253, 31.426664, 40.897419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892513, 31.655790, 40.856117>,  <33.087669, 31.793266, 40.831337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892513, 31.655790, 40.856117>,  <32.567253, 31.426664, 40.897419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892513, 31.655790, 40.856117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224625, 0.145184, -0.963569,
		-0.536957, 0.806724, 0.246725,
		0.813155, 0.572816, -0.103253,
		33.136459, 31.827635, 40.825142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344463, 31.952309, 40.634476>,  <32.567253, 31.426664, 40.897419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344463, 31.952309, 40.634476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732494, 31.974756, 40.539982>,  <32.965313, 31.988226, 40.483288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732494, 31.974756, 40.539982>,  <32.344463, 31.952309, 40.634476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732494, 31.974756, 40.539982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242789, 0.235351, -0.941097,
		0.002782, 0.970289, 0.241934,
		0.970075, 0.056120, -0.236230,
		33.023518, 31.991592, 40.469112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410797, 32.524105, 40.171688>,  <32.344463, 31.952309, 40.634476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410797, 32.524105, 40.171688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736961, 32.298519, 40.119465>,  <32.932659, 32.163170, 40.088131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736961, 32.298519, 40.119465>,  <32.410797, 32.524105, 40.171688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736961, 32.298519, 40.119465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060888, 0.140721, -0.988175,
		0.575666, 0.813722, 0.080408,
		0.815415, -0.563963, -0.130554,
		32.981586, 32.129330, 40.080299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740906, 32.891426, 39.743568>,  <32.410797, 32.524105, 40.171688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740906, 32.891426, 39.743568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895012, 32.524895, 39.699921>,  <32.987476, 32.304974, 39.673733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895012, 32.524895, 39.699921>,  <32.740906, 32.891426, 39.743568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895012, 32.524895, 39.699921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285742, -0.006023, -0.958288,
		0.877451, 0.400377, -0.264155,
		0.385268, -0.916331, -0.109120,
		33.010593, 32.249996, 39.667183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015644, 32.948368, 39.104401>,  <32.740906, 32.891426, 39.743568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015644, 32.948368, 39.104401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984825, 32.558033, 39.186184>,  <32.966331, 32.323833, 39.235252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984825, 32.558033, 39.186184>,  <33.015644, 32.948368, 39.104401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984825, 32.558033, 39.186184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540817, -0.131371, -0.830818,
		0.837604, -0.174588, -0.517628,
		-0.077049, -0.975839, 0.204457,
		32.961712, 32.265282, 39.247520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355232, 32.526550, 38.554707>,  <33.015644, 32.948368, 39.104401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355232, 32.526550, 38.554707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105824, 32.256538, 38.712463>,  <32.956177, 32.094532, 38.807117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105824, 32.256538, 38.712463>,  <33.355232, 32.526550, 38.554707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105824, 32.256538, 38.712463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426353, -0.129254, -0.895275,
		0.655316, -0.726378, -0.207208,
		-0.623526, -0.675032, 0.394396,
		32.918766, 32.054028, 38.830784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149349, 32.150188, 38.004166>,  <33.355232, 32.526550, 38.554707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149349, 32.150188, 38.004166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848244, 32.015999, 38.230724>,  <32.667580, 31.935486, 38.366657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848244, 32.015999, 38.230724>,  <33.149349, 32.150188, 38.004166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848244, 32.015999, 38.230724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492103, -0.284707, -0.822664,
		0.437239, -0.897997, 0.049229,
		-0.752766, -0.335475, 0.566392,
		32.622414, 31.915356, 38.400642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035522, 31.423769, 37.877834>,  <33.149349, 32.150188, 38.004166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035522, 31.423769, 37.877834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692513, 31.566076, 38.026466>,  <32.486706, 31.651461, 38.115646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692513, 31.566076, 38.026466>,  <33.035522, 31.423769, 37.877834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692513, 31.566076, 38.026466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473647, -0.264131, -0.840174,
		-0.200757, -0.896474, 0.395007,
		-0.857528, 0.355765, 0.371586,
		32.435253, 31.672808, 38.137943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376438, 31.011835, 37.361618>,  <33.035522, 31.423769, 37.877834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376438, 31.011835, 37.361618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638828, 30.765207, 37.187477>,  <33.796265, 30.617231, 37.082993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638828, 30.765207, 37.187477>,  <33.376438, 31.011835, 37.361618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638828, 30.765207, 37.187477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646666, 0.756567, -0.097108,
		0.389249, -0.217829, 0.895006,
		0.655979, -0.616569, -0.435355,
		33.835621, 30.580236, 37.056870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057362, 30.878899, 37.812817>,  <33.376438, 31.011835, 37.361618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057362, 30.878899, 37.812817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076366, 30.870186, 37.413364>,  <34.087769, 30.864958, 37.173691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076366, 30.870186, 37.413364>,  <34.057362, 30.878899, 37.812817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076366, 30.870186, 37.413364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619197, 0.785139, 0.012334,
		0.783797, -0.618936, 0.050792,
		0.047513, -0.021783, -0.998633,
		34.090622, 30.863651, 37.113773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706146, 30.640284, 37.529858>,  <34.057362, 30.878899, 37.812817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706146, 30.640284, 37.529858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503204, 30.922421, 37.331833>,  <34.381439, 31.091703, 37.213020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503204, 30.922421, 37.331833>,  <34.706146, 30.640284, 37.529858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503204, 30.922421, 37.331833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724856, 0.659991, 0.197473,
		0.466021, -0.258658, -0.846120,
		-0.507354, 0.705342, -0.495060,
		34.350998, 31.134024, 37.183315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144413, 30.934637, 37.070187>,  <34.706146, 30.640284, 37.529858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144413, 30.934637, 37.070187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861771, 31.192547, 37.186783>,  <34.692184, 31.347292, 37.256741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861771, 31.192547, 37.186783>,  <35.144413, 30.934637, 37.070187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861771, 31.192547, 37.186783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705615, 0.672916, 0.222015,
		-0.053000, 0.362559, -0.930452,
		-0.706610, 0.644774, 0.291492,
		34.649788, 31.385979, 37.274231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748486, 30.580685, 37.161495>,  <35.144413, 30.934637, 37.070187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748486, 30.580685, 37.161495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834785, 30.884468, 37.406990>,  <35.886566, 31.066738, 37.554287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834785, 30.884468, 37.406990>,  <35.748486, 30.580685, 37.161495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834785, 30.884468, 37.406990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054391, -0.618218, 0.784122,
		0.974933, -0.202555, -0.092072,
		0.215749, 0.759459, 0.613739,
		35.899509, 31.112307, 37.591110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308140, 30.351051, 37.616348>,  <35.748486, 30.580685, 37.161495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308140, 30.351051, 37.616348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141369, 30.665648, 37.798603>,  <36.041306, 30.854404, 37.907955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141369, 30.665648, 37.798603>,  <36.308140, 30.351051, 37.616348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141369, 30.665648, 37.798603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123643, -0.447547, 0.885672,
		0.900489, 0.425600, 0.089352,
		-0.416931, 0.786490, 0.455634,
		36.016289, 30.901594, 37.935291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802277, 30.576075, 38.183552>,  <36.308140, 30.351051, 37.616348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802277, 30.576075, 38.183552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443703, 30.731956, 38.267971>,  <36.228558, 30.825485, 38.318623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443703, 30.731956, 38.267971>,  <36.802277, 30.576075, 38.183552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443703, 30.731956, 38.267971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076561, -0.332870, 0.939859,
		0.436518, 0.858678, 0.268560,
		-0.896432, 0.389705, 0.211045,
		36.174774, 30.848867, 38.331284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960392, 30.979033, 38.841114>,  <36.802277, 30.576075, 38.183552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960392, 30.979033, 38.841114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573845, 30.880165, 38.812721>,  <36.341915, 30.820845, 38.795685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573845, 30.880165, 38.812721>,  <36.960392, 30.979033, 38.841114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573845, 30.880165, 38.812721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016732, -0.215014, 0.976468,
		-0.256615, 0.944816, 0.203647,
		-0.966369, -0.247168, -0.070985,
		36.283936, 30.806015, 38.791428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700417, 31.190235, 39.337322>,  <36.960392, 30.979033, 38.841114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700417, 31.190235, 39.337322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401543, 30.935303, 39.261936>,  <36.222218, 30.782343, 39.216705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401543, 30.935303, 39.261936>,  <36.700417, 31.190235, 39.337322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401543, 30.935303, 39.261936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147573, -0.435593, 0.887964,
		-0.648024, 0.635662, 0.419522,
		-0.747186, -0.637333, -0.188468,
		36.177387, 30.744102, 39.205395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330017, 31.172295, 39.920666>,  <36.700417, 31.190235, 39.337322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330017, 31.172295, 39.920666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209129, 30.850800, 39.715660>,  <36.136597, 30.657904, 39.592659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209129, 30.850800, 39.715660>,  <36.330017, 31.172295, 39.920666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209129, 30.850800, 39.715660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132111, -0.567782, 0.812508,
		-0.944038, 0.177850, 0.277779,
		-0.302222, -0.803737, -0.512512,
		36.118462, 30.609678, 39.561905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783142, 30.970568, 40.311985>,  <36.330017, 31.172295, 39.920666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783142, 30.970568, 40.311985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904892, 30.641966, 40.119118>,  <35.977943, 30.444805, 40.003399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904892, 30.641966, 40.119118>,  <35.783142, 30.970568, 40.311985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904892, 30.641966, 40.119118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068592, -0.523771, 0.849093,
		-0.950080, -0.225368, -0.215770,
		0.304373, -0.821506, -0.482166,
		35.996204, 30.395514, 39.974468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361378, 30.452288, 40.577152>,  <35.783142, 30.970568, 40.311985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361378, 30.452288, 40.577152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675426, 30.267485, 40.412163>,  <35.863853, 30.156603, 40.313168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675426, 30.267485, 40.412163>,  <35.361378, 30.452288, 40.577152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675426, 30.267485, 40.412163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081465, -0.583164, 0.808259,
		-0.613965, -0.668182, -0.420215,
		0.785118, -0.462010, -0.412476,
		35.910961, 30.128881, 40.288422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334927, 29.719421, 40.741714>,  <35.361378, 30.452288, 40.577152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334927, 29.719421, 40.741714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721127, 29.732159, 40.638336>,  <35.952847, 29.739801, 40.576309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721127, 29.732159, 40.638336>,  <35.334927, 29.719421, 40.741714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721127, 29.732159, 40.638336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236309, -0.524109, 0.818210,
		-0.109400, -0.851056, -0.513552,
		0.965500, 0.031844, -0.258450,
		36.010777, 29.741713, 40.560802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576790, 28.986143, 40.782940>,  <35.334927, 29.719421, 40.741714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576790, 28.986143, 40.782940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894367, 29.227833, 40.809952>,  <36.084915, 29.372847, 40.826157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894367, 29.227833, 40.809952>,  <35.576790, 28.986143, 40.782940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894367, 29.227833, 40.809952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337022, -0.529822, 0.778270,
		0.506029, -0.595147, -0.624288,
		0.793947, 0.604226, 0.067528,
		36.132553, 29.409100, 40.830212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203938, 28.500179, 40.989845>,  <35.576790, 28.986143, 40.782940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203938, 28.500179, 40.989845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313454, 28.873289, 41.083626>,  <36.379162, 29.097155, 41.139893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313454, 28.873289, 41.083626>,  <36.203938, 28.500179, 40.989845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313454, 28.873289, 41.083626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348639, -0.323440, 0.879681,
		0.896376, -0.159110, -0.413757,
		0.273791, 0.932776, 0.234451,
		36.395592, 29.153122, 41.153961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919590, 28.450869, 41.259815>,  <36.203938, 28.500179, 40.989845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919590, 28.450869, 41.259815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819130, 28.814234, 41.393505>,  <36.758854, 29.032253, 41.473717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819130, 28.814234, 41.393505>,  <36.919590, 28.450869, 41.259815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819130, 28.814234, 41.393505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543483, -0.153380, 0.825288,
		0.800967, 0.388917, -0.455187,
		-0.251152, 0.908415, 0.334222,
		36.743786, 29.086758, 41.493771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495770, 28.627008, 41.692703>,  <36.919590, 28.450869, 41.259815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495770, 28.627008, 41.692703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233154, 28.909155, 41.799595>,  <37.075584, 29.078444, 41.863731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233154, 28.909155, 41.799595>,  <37.495770, 28.627008, 41.692703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233154, 28.909155, 41.799595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417534, 0.044799, 0.907556,
		0.628188, 0.707425, -0.323927,
		-0.656540, 0.705367, 0.267232,
		37.036194, 29.120766, 41.879765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822548, 29.127913, 42.031345>,  <37.495770, 28.627008, 41.692703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822548, 29.127913, 42.031345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454723, 29.182182, 42.178860>,  <37.234028, 29.214745, 42.267368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454723, 29.182182, 42.178860>,  <37.822548, 29.127913, 42.031345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454723, 29.182182, 42.178860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348697, -0.150938, 0.925002,
		0.181162, 0.979189, 0.091487,
		-0.919560, 0.135674, 0.368785,
		37.178856, 29.222885, 42.289494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919643, 29.689106, 42.525345>,  <37.822548, 29.127913, 42.031345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919643, 29.689106, 42.525345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582645, 29.493422, 42.615559>,  <37.380447, 29.376011, 42.669689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582645, 29.493422, 42.615559>,  <37.919643, 29.689106, 42.525345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582645, 29.493422, 42.615559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306735, -0.091478, 0.947389,
		-0.442842, 0.867354, 0.227128,
		-0.842499, -0.489212, 0.225538,
		37.329895, 29.346659, 42.683220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674515, 30.067186, 43.074360>,  <37.919643, 29.689106, 42.525345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674515, 30.067186, 43.074360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517948, 29.699329, 43.087311>,  <37.424007, 29.478615, 43.095081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517948, 29.699329, 43.087311>,  <37.674515, 30.067186, 43.074360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517948, 29.699329, 43.087311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355699, -0.118757, 0.927025,
		-0.848688, 0.374370, 0.373600,
		-0.391417, -0.919644, 0.032375,
		37.400524, 29.423437, 43.097023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297153, 30.062336, 43.722832>,  <37.674515, 30.067186, 43.074360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297153, 30.062336, 43.722832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338600, 29.680733, 43.610310>,  <37.363468, 29.451771, 43.542797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338600, 29.680733, 43.610310>,  <37.297153, 30.062336, 43.722832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338600, 29.680733, 43.610310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062163, -0.276064, 0.959127,
		-0.992673, -0.116864, 0.030701,
		0.103612, -0.954008, -0.281306,
		37.369682, 29.394529, 43.525917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852898, 29.734964, 44.144344>,  <37.297153, 30.062336, 43.722832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852898, 29.734964, 44.144344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131985, 29.466339, 44.044590>,  <37.299435, 29.305164, 43.984737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131985, 29.466339, 44.044590>,  <36.852898, 29.734964, 44.144344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131985, 29.466339, 44.044590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091087, -0.262133, 0.960723,
		-0.710560, -0.693028, -0.121723,
		0.697716, -0.671565, -0.249388,
		37.341301, 29.264870, 43.969772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755848, 29.223457, 44.606998>,  <36.852898, 29.734964, 44.144344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755848, 29.223457, 44.606998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113766, 29.107513, 44.471165>,  <37.328518, 29.037947, 44.389664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113766, 29.107513, 44.471165>,  <36.755848, 29.223457, 44.606998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113766, 29.107513, 44.471165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140058, -0.539974, 0.829947,
		-0.423935, -0.790197, -0.442571,
		0.894798, -0.289858, -0.339587,
		37.382206, 29.020555, 44.369289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787155, 28.498690, 44.722660>,  <36.755848, 29.223457, 44.606998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787155, 28.498690, 44.722660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164173, 28.626116, 44.682392>,  <37.390385, 28.702572, 44.658234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164173, 28.626116, 44.682392>,  <36.787155, 28.498690, 44.722660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164173, 28.626116, 44.682392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250917, -0.476045, 0.842866,
		0.220588, -0.819693, -0.528625,
		0.942540, 0.318567, -0.100665,
		37.446934, 28.721685, 44.652191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286278, 27.879105, 44.700943>,  <36.787155, 28.498690, 44.722660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286278, 27.879105, 44.700943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478222, 28.199844, 44.843365>,  <37.593388, 28.392288, 44.928818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478222, 28.199844, 44.843365>,  <37.286278, 27.879105, 44.700943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478222, 28.199844, 44.843365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321315, -0.538250, 0.779130,
		0.816389, -0.259468, -0.515931,
		0.479859, 0.801850, 0.356051,
		37.622181, 28.440399, 44.950180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768162, 27.501961, 45.071648>,  <37.286278, 27.879105, 44.700943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768162, 27.501961, 45.071648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797199, 27.872229, 45.220169>,  <37.814621, 28.094389, 45.309280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797199, 27.872229, 45.220169>,  <37.768162, 27.501961, 45.071648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797199, 27.872229, 45.220169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398911, -0.368157, 0.839840,
		0.914112, 0.087147, -0.395986,
		0.072595, 0.925671, 0.371300,
		37.818977, 28.149929, 45.331558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427654, 27.622187, 45.374508>,  <37.768162, 27.501961, 45.071648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427654, 27.622187, 45.374508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221966, 27.925442, 45.534912>,  <38.098553, 28.107395, 45.631153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221966, 27.925442, 45.534912>,  <38.427654, 27.622187, 45.374508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221966, 27.925442, 45.534912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571820, -0.045421, 0.819121,
		0.639220, 0.650512, -0.410161,
		-0.514218, 0.758136, 0.401010,
		38.067699, 28.152884, 45.655216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945896, 28.042994, 45.546051>,  <38.427654, 27.622187, 45.374508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945896, 28.042994, 45.546051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618843, 28.118868, 45.763489>,  <38.422611, 28.164392, 45.893951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618843, 28.118868, 45.763489>,  <38.945896, 28.042994, 45.546051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618843, 28.118868, 45.763489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541603, -0.066877, 0.837970,
		0.195305, 0.979565, -0.048053,
		-0.817632, 0.189686, 0.543597,
		38.373554, 28.175774, 45.926567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125477, 28.402475, 46.097015>,  <38.945896, 28.042994, 45.546051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125477, 28.402475, 46.097015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769955, 28.295956, 46.246204>,  <38.556641, 28.232044, 46.335716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769955, 28.295956, 46.246204>,  <39.125477, 28.402475, 46.097015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769955, 28.295956, 46.246204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406430, -0.082004, 0.909995,
		-0.211747, 0.960395, 0.181118,
		-0.888807, -0.266301, 0.372969,
		38.503311, 28.216066, 46.358097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043663, 29.119658, 46.110767>,  <39.125477, 28.402475, 46.097015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043663, 29.119658, 46.110767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308792, 29.406275, 46.197693>,  <39.467869, 29.578245, 46.249847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308792, 29.406275, 46.197693>,  <39.043663, 29.119658, 46.110767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308792, 29.406275, 46.197693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246430, 0.482816, -0.840333,
		-0.707061, 0.503440, 0.496601,
		0.662825, 0.716544, 0.217318,
		39.507641, 29.621239, 46.262890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687931, 29.891855, 46.016262>,  <39.043663, 29.119658, 46.110767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687931, 29.891855, 46.016262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082890, 29.929819, 45.965591>,  <39.319862, 29.952597, 45.935188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082890, 29.929819, 45.965591>,  <38.687931, 29.891855, 46.016262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082890, 29.929819, 45.965591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156713, 0.473658, -0.866654,
		-0.022253, 0.875580, 0.482561,
		0.987393, 0.094909, -0.126674,
		39.379108, 29.958292, 45.927589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784691, 30.635063, 45.901268>,  <38.687931, 29.891855, 46.016262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784691, 30.635063, 45.901268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131645, 30.471222, 45.788219>,  <39.339817, 30.372917, 45.720390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131645, 30.471222, 45.788219>,  <38.784691, 30.635063, 45.901268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131645, 30.471222, 45.788219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004271, 0.561768, -0.827284,
		0.497626, 0.718777, 0.485518,
		0.867381, -0.409604, -0.282620,
		39.391861, 30.348341, 45.703434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227612, 31.172663, 45.718079>,  <38.784691, 30.635063, 45.901268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227612, 31.172663, 45.718079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374008, 30.847668, 45.536568>,  <39.461845, 30.652670, 45.427662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374008, 30.847668, 45.536568>,  <39.227612, 31.172663, 45.718079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374008, 30.847668, 45.536568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004591, 0.489177, -0.872173,
		0.930607, 0.317124, 0.182765,
		0.365991, -0.812489, -0.453775,
		39.483807, 30.603920, 45.400436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692265, 31.434095, 45.236233>,  <39.227612, 31.172663, 45.718079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692265, 31.434095, 45.236233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625141, 31.065166, 45.097000>,  <39.584866, 30.843809, 45.013462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625141, 31.065166, 45.097000>,  <39.692265, 31.434095, 45.236233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625141, 31.065166, 45.097000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016550, 0.355672, -0.934464,
		0.985680, -0.151051, -0.074950,
		-0.167809, -0.922324, -0.348079,
		39.574799, 30.788469, 44.992577>
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
