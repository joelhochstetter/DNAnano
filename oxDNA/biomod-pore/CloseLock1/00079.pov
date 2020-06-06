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
	<24.305893, 35.160736, 34.631466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.560684, 35.032738, 34.911999>,  <24.713558, 34.955940, 35.080318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.560684, 35.032738, 34.911999>,  <24.305893, 35.160736, 34.631466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.560684, 35.032738, 34.911999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598353, 0.778844, -0.188085,
		-0.486040, 0.539448, 0.687576,
		0.636976, -0.319997, 0.701330,
		24.751778, 34.936737, 35.122398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.290436, 35.731041, 35.039143>,  <24.305893, 35.160736, 34.631466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.290436, 35.731041, 35.039143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.617184, 35.500793, 35.054035>,  <24.813232, 35.362644, 35.062973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.617184, 35.500793, 35.054035>,  <24.290436, 35.731041, 35.039143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.617184, 35.500793, 35.054035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576020, 0.817436, 0.000011,
		-0.030442, 0.021438, 0.999307,
		0.816869, -0.575621, 0.037233,
		24.862244, 35.328106, 35.065205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.657593, 36.036137, 35.602955>,  <24.290436, 35.731041, 35.039143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.657593, 36.036137, 35.602955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.889557, 35.853260, 35.333237>,  <25.028736, 35.743534, 35.171406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.889557, 35.853260, 35.333237>,  <24.657593, 36.036137, 35.602955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.889557, 35.853260, 35.333237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640757, 0.767120, 0.030940,
		0.503123, -0.450005, 0.737810,
		0.579912, -0.457190, -0.674299,
		25.063530, 35.716103, 35.130947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292639, 36.157829, 35.694901>,  <24.657593, 36.036137, 35.602955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292639, 36.157829, 35.694901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.325947, 36.071869, 35.305668>,  <25.345932, 36.020294, 35.072128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.325947, 36.071869, 35.305668>,  <25.292639, 36.157829, 35.694901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.325947, 36.071869, 35.305668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426705, 0.890115, -0.160061,
		0.900550, -0.401889, 0.165817,
		0.083269, -0.214898, -0.973080,
		25.350927, 36.007401, 35.013744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917469, 36.437283, 35.340954>,  <25.292639, 36.157829, 35.694901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917469, 36.437283, 35.340954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.660191, 36.387287, 35.038780>,  <25.505823, 36.357288, 34.857475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.660191, 36.387287, 35.038780>,  <25.917469, 36.437283, 35.340954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.660191, 36.387287, 35.038780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238916, 0.904573, -0.353083,
		0.727473, -0.407586, -0.551957,
		-0.643197, -0.124987, -0.755431,
		25.467232, 36.349792, 34.812153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.972599, 37.131245, 35.196896>,  <25.917469, 36.437283, 35.340954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.972599, 37.131245, 35.196896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271479, 37.168228, 34.933640>,  <26.450806, 37.190418, 34.775684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271479, 37.168228, 34.933640>,  <25.972599, 37.131245, 35.196896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271479, 37.168228, 34.933640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187984, 0.920434, 0.342727,
		0.637462, -0.379805, 0.670366,
		0.747197, 0.092457, -0.658139,
		26.495638, 37.195965, 34.736198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532921, 37.468853, 35.633553>,  <25.972599, 37.131245, 35.196896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532921, 37.468853, 35.633553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603788, 37.533573, 35.245235>,  <26.646309, 37.572403, 35.012245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603788, 37.533573, 35.245235>,  <26.532921, 37.468853, 35.633553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603788, 37.533573, 35.245235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391279, 0.893508, 0.220327,
		0.903057, -0.418885, 0.094993,
		0.177169, 0.161799, -0.970790,
		26.656939, 37.582111, 34.953999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251799, 37.640018, 35.544022>,  <26.532921, 37.468853, 35.633553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251799, 37.640018, 35.544022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099085, 37.779728, 35.201736>,  <27.007456, 37.863552, 34.996365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099085, 37.779728, 35.201736>,  <27.251799, 37.640018, 35.544022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099085, 37.779728, 35.201736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424051, 0.888844, 0.173601,
		0.821231, -0.296588, -0.487458,
		-0.381786, 0.349274, -0.855714,
		26.984549, 37.884510, 34.945023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833479, 38.043648, 35.191788>,  <27.251799, 37.640018, 35.544022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833479, 38.043648, 35.191788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.506910, 38.167973, 34.997120>,  <27.310968, 38.242569, 34.880318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.506910, 38.167973, 34.997120>,  <27.833479, 38.043648, 35.191788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506910, 38.167973, 34.997120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336291, 0.941037, 0.036852,
		0.469428, -0.133576, -0.872809,
		-0.816422, 0.310817, -0.486670,
		27.261984, 38.261219, 34.851120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055822, 38.585163, 34.857513>,  <27.833479, 38.043648, 35.191788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055822, 38.585163, 34.857513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665308, 38.671719, 34.854855>,  <27.431000, 38.723652, 34.853260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665308, 38.671719, 34.854855>,  <28.055822, 38.585163, 34.857513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665308, 38.671719, 34.854855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215855, 0.975308, 0.046700,
		0.016586, 0.044158, -0.998887,
		-0.976285, 0.216389, -0.006644,
		27.372423, 38.736637, 34.852859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901550, 39.141098, 34.301716>,  <28.055822, 38.585163, 34.857513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901550, 39.141098, 34.301716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612480, 39.156883, 34.577740>,  <27.439037, 39.166355, 34.743355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612480, 39.156883, 34.577740>,  <27.901550, 39.141098, 34.301716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612480, 39.156883, 34.577740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139816, 0.986076, 0.090030,
		-0.676897, 0.161543, -0.718132,
		-0.722677, 0.039465, 0.690058,
		27.395678, 39.168724, 34.784756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432198, 39.660374, 34.024082>,  <27.901550, 39.141098, 34.301716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432198, 39.660374, 34.024082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360882, 39.642109, 34.417248>,  <27.318092, 39.631149, 34.653149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360882, 39.642109, 34.417248>,  <27.432198, 39.660374, 34.024082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360882, 39.642109, 34.417248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006619, 0.998844, 0.047605,
		-0.983956, 0.014993, -0.177780,
		-0.178288, -0.045665, 0.982918,
		27.307396, 39.628410, 34.712124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869463, 40.104439, 34.089199>,  <27.432198, 39.660374, 34.024082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869463, 40.104439, 34.089199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041027, 40.085102, 34.450020>,  <27.143967, 40.073502, 34.666512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041027, 40.085102, 34.450020>,  <26.869463, 40.104439, 34.089199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041027, 40.085102, 34.450020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095589, 0.990532, 0.098534,
		-0.898274, -0.128488, 0.420231,
		0.428912, -0.048341, 0.902052,
		27.169701, 40.070599, 34.720634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555645, 40.645061, 34.458050>,  <26.869463, 40.104439, 34.089199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555645, 40.645061, 34.458050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859972, 40.543476, 34.696934>,  <27.042568, 40.482525, 34.840263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859972, 40.543476, 34.696934>,  <26.555645, 40.645061, 34.458050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859972, 40.543476, 34.696934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263902, 0.961798, 0.072801,
		-0.592887, 0.102217, 0.798772,
		0.760816, -0.253960, 0.597213,
		27.088217, 40.467289, 34.876099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506342, 41.083569, 35.011532>,  <26.555645, 40.645061, 34.458050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.506342, 41.083569, 35.011532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888721, 40.969173, 35.037987>,  <27.118149, 40.900536, 35.053860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888721, 40.969173, 35.037987>,  <26.506342, 41.083569, 35.011532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888721, 40.969173, 35.037987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281780, 0.957191, 0.066228,
		-0.082248, -0.044675, 0.995610,
		0.955948, -0.285990, 0.066138,
		27.175507, 40.883377, 35.057827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765636, 41.531986, 35.461246>,  <26.506342, 41.083569, 35.011532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765636, 41.531986, 35.461246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114309, 41.381237, 35.335938>,  <27.323513, 41.290787, 35.260754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114309, 41.381237, 35.335938>,  <26.765636, 41.531986, 35.461246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114309, 41.381237, 35.335938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361129, 0.926092, -0.109266,
		0.331300, -0.017887, 0.943356,
		0.871680, -0.376873, -0.313273,
		27.375813, 41.268173, 35.241955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.293766, 41.846092, 35.834599>,  <26.765636, 41.531986, 35.461246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.293766, 41.846092, 35.834599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478052, 41.706295, 35.508263>,  <27.588623, 41.622417, 35.312462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478052, 41.706295, 35.508263>,  <27.293766, 41.846092, 35.834599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478052, 41.706295, 35.508263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404391, 0.900910, -0.157573,
		0.790070, -0.257323, 0.556395,
		0.460714, -0.349495, -0.815841,
		27.616266, 41.601448, 35.263512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076845, 41.905487, 35.878391>,  <27.293766, 41.846092, 35.834599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076845, 41.905487, 35.878391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966942, 41.911076, 35.493828>,  <27.900999, 41.914429, 35.263088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966942, 41.911076, 35.493828>,  <28.076845, 41.905487, 35.878391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966942, 41.911076, 35.493828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400026, 0.910912, -0.101090,
		0.874349, -0.412365, -0.255870,
		-0.274761, 0.013967, -0.961411,
		27.884514, 41.915264, 35.205406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686497, 42.139626, 35.529591>,  <28.076845, 41.905487, 35.878391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686497, 42.139626, 35.529591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397713, 42.211185, 35.262230>,  <28.224442, 42.254120, 35.101814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397713, 42.211185, 35.262230>,  <28.686497, 42.139626, 35.529591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397713, 42.211185, 35.262230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498915, 0.803921, -0.323722,
		0.479432, -0.567192, -0.669655,
		-0.721962, 0.178898, -0.668406,
		28.181124, 42.264854, 35.061707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093149, 42.415806, 34.968960>,  <28.686497, 42.139626, 35.529591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093149, 42.415806, 34.968960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.713337, 42.503567, 34.879292>,  <28.485449, 42.556225, 34.825489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.713337, 42.503567, 34.879292>,  <29.093149, 42.415806, 34.968960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713337, 42.503567, 34.879292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290571, 0.884445, -0.365137,
		0.118154, -0.411847, -0.903560,
		-0.949530, 0.219406, -0.224172,
		28.428478, 42.569389, 34.812038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144144, 42.656418, 34.323261>,  <29.093149, 42.415806, 34.968960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144144, 42.656418, 34.323261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809229, 42.820698, 34.467636>,  <28.608280, 42.919266, 34.554260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809229, 42.820698, 34.467636>,  <29.144144, 42.656418, 34.323261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809229, 42.820698, 34.467636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236158, 0.867026, -0.438743,
		-0.493135, -0.282115, -0.822939,
		-0.837286, 0.410703, 0.360938,
		28.558043, 42.943909, 34.575916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985340, 43.154408, 33.815300>,  <29.144144, 42.656418, 34.323261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985340, 43.154408, 33.815300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757111, 43.249878, 34.129620>,  <28.620173, 43.307159, 34.318211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757111, 43.249878, 34.129620>,  <28.985340, 43.154408, 33.815300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757111, 43.249878, 34.129620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119956, 0.970796, -0.207763,
		-0.812439, -0.024283, -0.582540,
		-0.570572, 0.238674, 0.785800,
		28.585939, 43.321480, 34.365360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336494, 43.571655, 33.547543>,  <28.985340, 43.154408, 33.815300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336494, 43.571655, 33.547543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416843, 43.649937, 33.931492>,  <28.465054, 43.696907, 34.161861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416843, 43.649937, 33.931492>,  <28.336494, 43.571655, 33.547543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416843, 43.649937, 33.931492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125385, 0.966646, -0.223324,
		-0.971560, 0.165213, 0.169635,
		0.200873, 0.195703, 0.959870,
		28.477106, 43.708649, 34.219452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994942, 44.151855, 33.663216>,  <28.336494, 43.571655, 33.547543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994942, 44.151855, 33.663216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251331, 44.154999, 33.970226>,  <28.405165, 44.156887, 34.154430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251331, 44.154999, 33.970226>,  <27.994942, 44.151855, 33.663216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251331, 44.154999, 33.970226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122527, 0.986077, -0.112424,
		-0.757720, 0.166103, 0.631086,
		0.640974, 0.007861, 0.767523,
		28.443623, 44.157356, 34.200481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880793, 44.721321, 34.117302>,  <27.994942, 44.151855, 33.663216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880793, 44.721321, 34.117302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246021, 44.606888, 34.233543>,  <28.465158, 44.538227, 34.303288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246021, 44.606888, 34.233543>,  <27.880793, 44.721321, 34.117302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246021, 44.606888, 34.233543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311054, 0.949434, -0.042660,
		-0.263709, 0.129347, 0.955891,
		0.913073, -0.286084, 0.290608,
		28.519943, 44.521061, 34.320724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927532, 45.066391, 34.774223>,  <27.880793, 44.721321, 34.117302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927532, 45.066391, 34.774223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262291, 45.034744, 34.557579>,  <28.463146, 45.015759, 34.427593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262291, 45.034744, 34.557579>,  <27.927532, 45.066391, 34.774223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262291, 45.034744, 34.557579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193342, 0.968441, 0.157292,
		0.512074, -0.236353, 0.825783,
		0.836898, -0.079114, -0.541611,
		28.513361, 45.011009, 34.395096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557243, 45.262375, 35.098415>,  <27.927532, 45.066391, 34.774223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557243, 45.262375, 35.098415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544743, 45.353237, 34.709072>,  <28.537243, 45.407753, 34.475468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544743, 45.353237, 34.709072>,  <28.557243, 45.262375, 35.098415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544743, 45.353237, 34.709072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153181, 0.963417, 0.219917,
		0.987704, -0.142227, -0.064903,
		-0.031251, 0.227155, -0.973357,
		28.535368, 45.421383, 34.417065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280628, 45.653957, 34.797752>,  <28.557243, 45.262375, 35.098415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280628, 45.653957, 34.797752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917337, 45.769947, 34.677059>,  <28.699364, 45.839539, 34.604645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917337, 45.769947, 34.677059>,  <29.280628, 45.653957, 34.797752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917337, 45.769947, 34.677059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228988, 0.947859, 0.221647,
		0.350269, 0.132213, -0.927271,
		-0.908227, 0.289970, -0.301730,
		28.644869, 45.856937, 34.586540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391960, 46.295059, 34.458927>,  <29.280628, 45.653957, 34.797752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391960, 46.295059, 34.458927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997501, 46.277233, 34.522842>,  <28.760826, 46.266537, 34.561192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997501, 46.277233, 34.522842>,  <29.391960, 46.295059, 34.458927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997501, 46.277233, 34.522842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026872, 0.993429, 0.111250,
		-0.163693, 0.105415, -0.980863,
		-0.986145, -0.044569, 0.159785,
		28.701658, 46.263863, 34.570778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859388, 46.446690, 34.009506>,  <29.391960, 46.295059, 34.458927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859388, 46.446690, 34.009506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027205, 46.753880, 33.815929>,  <29.127893, 46.938194, 33.699783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027205, 46.753880, 33.815929>,  <28.859388, 46.446690, 34.009506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027205, 46.753880, 33.815929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897758, -0.272212, 0.346312,
		0.134225, -0.579753, -0.803660,
		0.419541, 0.767976, -0.483940,
		29.153067, 46.984272, 33.670746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280338, 46.247883, 33.421085>,  <28.859388, 46.446690, 34.009506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280338, 46.247883, 33.421085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351410, 46.562073, 33.658222>,  <29.394053, 46.750587, 33.800503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351410, 46.562073, 33.658222>,  <29.280338, 46.247883, 33.421085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351410, 46.562073, 33.658222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690541, -0.528723, 0.493564,
		0.701131, 0.321686, -0.636344,
		0.177678, 0.785474, 0.592841,
		29.404713, 46.797714, 33.836075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004715, 46.424133, 33.421227>,  <29.280338, 46.247883, 33.421085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004715, 46.424133, 33.421227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848278, 46.526699, 33.774792>,  <29.754416, 46.588238, 33.986931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848278, 46.526699, 33.774792>,  <30.004715, 46.424133, 33.421227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848278, 46.526699, 33.774792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839934, -0.293174, 0.456683,
		0.376241, 0.921032, -0.100714,
		-0.391092, 0.256416, 0.883910,
		29.730949, 46.603622, 34.039967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525915, 46.792141, 33.771942>,  <30.004715, 46.424133, 33.421227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525915, 46.792141, 33.771942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290510, 46.615562, 34.042873>,  <30.149267, 46.509617, 34.205433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290510, 46.615562, 34.042873>,  <30.525915, 46.792141, 33.771942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290510, 46.615562, 34.042873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808122, -0.346381, 0.476402,
		0.024309, 0.827735, 0.560592,
		-0.588514, -0.441446, 0.677331,
		30.113956, 46.483128, 34.246071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812284, 46.585423, 33.098644>,  <30.525915, 46.792141, 33.771942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812284, 46.585423, 33.098644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054844, 46.339050, 33.299801>,  <31.200380, 46.191227, 33.420494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054844, 46.339050, 33.299801>,  <30.812284, 46.585423, 33.098644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054844, 46.339050, 33.299801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423857, 0.785486, 0.450952,
		-0.672773, -0.060302, 0.737387,
		0.606401, -0.615935, 0.502894,
		31.236765, 46.154270, 33.450668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355480, 46.444244, 32.549419>,  <30.812284, 46.585423, 33.098644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355480, 46.444244, 32.549419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276951, 46.105923, 32.747845>,  <31.229834, 45.902931, 32.866901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276951, 46.105923, 32.747845>,  <31.355480, 46.444244, 32.549419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276951, 46.105923, 32.747845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257810, -0.443583, -0.858352,
		0.946040, -0.296404, -0.130970,
		-0.196323, -0.845800, 0.496064,
		31.218054, 45.852184, 32.896664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695095, 45.726429, 32.350803>,  <31.355480, 46.444244, 32.549419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695095, 45.726429, 32.350803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316008, 45.698547, 32.475361>,  <31.088554, 45.681816, 32.550095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316008, 45.698547, 32.475361>,  <31.695095, 45.726429, 32.350803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316008, 45.698547, 32.475361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278118, -0.298015, -0.913147,
		0.156456, -0.952012, 0.263047,
		-0.947719, -0.069709, 0.311398,
		31.031693, 45.677635, 32.568779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320873, 45.479496, 31.719391>,  <31.695095, 45.726429, 32.350803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320873, 45.479496, 31.719391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920940, 45.486172, 31.716362>,  <30.680981, 45.490177, 31.714544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920940, 45.486172, 31.716362>,  <31.320873, 45.479496, 31.719391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920940, 45.486172, 31.716362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018094, -0.964847, 0.262189,
		-0.002930, 0.262282, 0.964987,
		-0.999832, 0.016693, -0.007573,
		30.620991, 45.491180, 31.714090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043444, 45.062256, 32.296436>,  <31.320873, 45.479496, 31.719391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043444, 45.062256, 32.296436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772795, 45.084469, 32.002743>,  <30.610405, 45.097797, 31.826527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772795, 45.084469, 32.002743>,  <31.043444, 45.062256, 32.296436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772795, 45.084469, 32.002743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200911, -0.973240, 0.111532,
		-0.708390, 0.222981, 0.669673,
		-0.676622, 0.055537, -0.734233,
		30.569809, 45.101131, 31.782473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349459, 44.837372, 32.578522>,  <31.043444, 45.062256, 32.296436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349459, 44.837372, 32.578522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349466, 44.791286, 32.181187>,  <30.349472, 44.763634, 31.942785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349466, 44.791286, 32.181187>,  <30.349459, 44.837372, 32.578522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349466, 44.791286, 32.181187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388257, -0.915415, 0.106166,
		-0.921551, 0.385669, -0.044752,
		0.000021, -0.115213, -0.993341,
		30.349472, 44.756721, 31.883184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702997, 44.606556, 32.345352>,  <30.349459, 44.837372, 32.578522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702997, 44.606556, 32.345352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.936708, 44.476463, 32.047939>,  <30.076935, 44.398407, 31.869492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.936708, 44.476463, 32.047939>,  <29.702997, 44.606556, 32.345352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936708, 44.476463, 32.047939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265135, -0.942410, 0.203880,
		-0.767022, 0.078014, -0.636861,
		0.584279, -0.325234, -0.743533,
		30.111992, 44.378895, 31.824879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277142, 44.177902, 31.940620>,  <29.702997, 44.606556, 32.345352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277142, 44.177902, 31.940620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643612, 44.060276, 31.831701>,  <29.863495, 43.989700, 31.766350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643612, 44.060276, 31.831701>,  <29.277142, 44.177902, 31.940620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643612, 44.060276, 31.831701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317386, -0.947232, -0.044925,
		-0.244720, 0.127583, -0.961163,
		0.916176, -0.294065, -0.272300,
		29.918465, 43.972057, 31.750011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254217, 43.826443, 31.243723>,  <29.277142, 44.177902, 31.940620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254217, 43.826443, 31.243723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576729, 43.703747, 31.446039>,  <29.770235, 43.630131, 31.567429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576729, 43.703747, 31.446039>,  <29.254217, 43.826443, 31.243723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576729, 43.703747, 31.446039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368071, -0.929512, 0.023035,
		0.463074, -0.204740, -0.862348,
		0.806279, -0.306738, 0.505792,
		29.818613, 43.611725, 31.597776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438116, 43.190933, 30.928862>,  <29.254217, 43.826443, 31.243723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438116, 43.190933, 30.928862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608339, 43.196934, 31.290785>,  <29.710474, 43.200535, 31.507938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608339, 43.196934, 31.290785>,  <29.438116, 43.190933, 30.928862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608339, 43.196934, 31.290785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140281, -0.986682, 0.082334,
		0.893992, -0.161965, -0.417786,
		0.425558, 0.014998, 0.904807,
		29.736006, 43.201431, 31.562227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991985, 42.733723, 30.794733>,  <29.438116, 43.190933, 30.928862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991985, 42.733723, 30.794733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939291, 42.785378, 31.187868>,  <29.907675, 42.816372, 31.423750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939291, 42.785378, 31.187868>,  <29.991985, 42.733723, 30.794733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939291, 42.785378, 31.187868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053282, -0.990967, 0.123065,
		0.989852, -0.036155, 0.137427,
		-0.131736, 0.129138, 0.982837,
		29.899771, 42.824120, 31.482719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654238, 42.348896, 31.207750>,  <29.991985, 42.733723, 30.794733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654238, 42.348896, 31.207750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343313, 42.378326, 31.457670>,  <30.156759, 42.395985, 31.607622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343313, 42.378326, 31.457670>,  <30.654238, 42.348896, 31.207750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343313, 42.378326, 31.457670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011813, -0.994670, 0.102433,
		0.629007, 0.072241, 0.774036,
		-0.777310, 0.073575, 0.624801,
		30.110121, 42.400398, 31.645111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840517, 42.015514, 31.674452>,  <30.654238, 42.348896, 31.207750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840517, 42.015514, 31.674452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445503, 42.013905, 31.737389>,  <30.208494, 42.012939, 31.775150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445503, 42.013905, 31.737389>,  <30.840517, 42.015514, 31.674452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445503, 42.013905, 31.737389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023481, -0.992253, 0.121995,
		0.155634, 0.124169, 0.979980,
		-0.987536, -0.004024, 0.157344,
		30.149242, 42.012699, 31.784592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804310, 41.649353, 32.235325>,  <30.840517, 42.015514, 31.674452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804310, 41.649353, 32.235325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416826, 41.676086, 32.139709>,  <30.184336, 41.692127, 32.082340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416826, 41.676086, 32.139709>,  <30.804310, 41.649353, 32.235325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416826, 41.676086, 32.139709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140361, -0.941789, 0.305504,
		-0.204704, 0.329496, 0.921699,
		-0.968708, 0.066832, -0.239036,
		30.126213, 41.696136, 32.067997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459425, 41.256771, 32.741222>,  <30.804310, 41.649353, 32.235325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459425, 41.256771, 32.741222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175737, 41.286922, 32.460846>,  <30.005524, 41.305012, 32.292618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175737, 41.286922, 32.460846>,  <30.459425, 41.256771, 32.741222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175737, 41.286922, 32.460846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261743, -0.951355, 0.162524,
		-0.654596, 0.298733, 0.694451,
		-0.709221, 0.075380, -0.700944,
		29.962971, 41.309536, 32.250561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727390, 41.152134, 33.058968>,  <30.459425, 41.256771, 32.741222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727390, 41.152134, 33.058968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687284, 41.074123, 32.668705>,  <29.663221, 41.027317, 32.434547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687284, 41.074123, 32.668705>,  <29.727390, 41.152134, 33.058968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687284, 41.074123, 32.668705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462391, -0.859140, 0.219257,
		-0.880989, 0.473120, -0.004039,
		-0.100265, -0.195031, -0.975659,
		29.657206, 41.015614, 32.376007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084379, 40.790504, 32.977089>,  <29.727390, 41.152134, 33.058968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084379, 40.790504, 32.977089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238510, 40.717419, 32.615284>,  <29.330990, 40.673569, 32.398201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238510, 40.717419, 32.615284>,  <29.084379, 40.790504, 32.977089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238510, 40.717419, 32.615284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480456, -0.876584, -0.027609,
		-0.787835, 0.445216, -0.425557,
		0.385329, -0.182710, -0.904510,
		29.354109, 40.662605, 32.343929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556530, 40.527225, 32.705482>,  <29.084379, 40.790504, 32.977089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556530, 40.527225, 32.705482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.882532, 40.425636, 32.497150>,  <29.078133, 40.364685, 32.372150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.882532, 40.425636, 32.497150>,  <28.556530, 40.527225, 32.705482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882532, 40.425636, 32.497150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303836, -0.952662, -0.010904,
		-0.493407, 0.167134, -0.853590,
		0.815005, -0.253971, -0.520832,
		29.127033, 40.349445, 32.340900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256279, 39.988884, 32.228706>,  <28.556530, 40.527225, 32.705482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256279, 39.988884, 32.228706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649271, 39.914841, 32.220081>,  <28.885067, 39.870415, 32.214909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649271, 39.914841, 32.220081>,  <28.256279, 39.988884, 32.228706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649271, 39.914841, 32.220081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182874, -0.979903, 0.079672,
		-0.035875, -0.074333, -0.996588,
		0.982482, -0.185109, -0.021560,
		28.944016, 39.859306, 32.213612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483444, 39.482014, 31.702036>,  <28.256279, 39.988884, 32.228706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483444, 39.482014, 31.702036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768690, 39.456299, 31.981274>,  <28.939838, 39.440872, 32.148815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768690, 39.456299, 31.981274>,  <28.483444, 39.482014, 31.702036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768690, 39.456299, 31.981274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108884, -0.993859, 0.019707,
		0.692539, -0.090064, -0.715736,
		0.713116, -0.064284, 0.698093,
		28.982624, 39.437012, 32.190701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912191, 38.827087, 31.557327>,  <28.483444, 39.482014, 31.702036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912191, 38.827087, 31.557327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035355, 38.936157, 31.921928>,  <29.109253, 39.001598, 32.140690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035355, 38.936157, 31.921928>,  <28.912191, 38.827087, 31.557327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035355, 38.936157, 31.921928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227476, -0.951363, 0.207758,
		0.923822, 0.143375, -0.354960,
		0.307909, 0.272676, 0.911504,
		29.127728, 39.017960, 32.195381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569389, 38.547302, 31.717690>,  <28.912191, 38.827087, 31.557327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569389, 38.547302, 31.717690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443731, 38.641632, 32.085537>,  <29.368336, 38.698231, 32.306244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443731, 38.641632, 32.085537>,  <29.569389, 38.547302, 31.717690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443731, 38.641632, 32.085537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240180, -0.917406, 0.317300,
		0.918491, 0.320553, 0.231559,
		-0.314145, 0.235822, 0.919620,
		29.349487, 38.712379, 32.361423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076988, 38.243534, 32.151268>,  <29.569389, 38.547302, 31.717690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076988, 38.243534, 32.151268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769148, 38.338860, 32.388222>,  <29.584444, 38.396053, 32.530396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769148, 38.338860, 32.388222>,  <30.076988, 38.243534, 32.151268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769148, 38.338860, 32.388222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118879, -0.858045, 0.499626,
		0.627362, 0.454934, 0.632022,
		-0.769600, 0.238312, 0.592387,
		29.538267, 38.410355, 32.565937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340590, 38.292164, 32.837330>,  <30.076988, 38.243534, 32.151268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340590, 38.292164, 32.837330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964533, 38.163887, 32.791210>,  <29.738899, 38.086922, 32.763538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964533, 38.163887, 32.791210>,  <30.340590, 38.292164, 32.837330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964533, 38.163887, 32.791210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223141, -0.834995, 0.502982,
		-0.257573, 0.447147, 0.856572,
		-0.940141, -0.320691, -0.115296,
		29.682491, 38.067680, 32.756622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059181, 37.915321, 33.369019>,  <30.340590, 38.292164, 32.837330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059181, 37.915321, 33.369019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866175, 37.739410, 33.066029>,  <29.750370, 37.633865, 32.884235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866175, 37.739410, 33.066029>,  <30.059181, 37.915321, 33.369019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866175, 37.739410, 33.066029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310198, -0.894563, 0.321769,
		-0.819118, -0.079708, 0.568061,
		-0.482518, -0.439778, -0.757477,
		29.721418, 37.607475, 32.838787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459156, 37.493725, 33.552017>,  <30.059181, 37.915321, 33.369019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459156, 37.493725, 33.552017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604242, 37.344112, 33.210602>,  <29.691294, 37.254345, 33.005753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604242, 37.344112, 33.210602>,  <29.459156, 37.493725, 33.552017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604242, 37.344112, 33.210602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007200, -0.917014, 0.398789,
		-0.931873, -0.138500, -0.335306,
		0.362713, -0.374035, -0.853544,
		29.713057, 37.231903, 32.954540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028965, 37.491562, 33.942974>,  <29.459156, 37.493725, 33.552017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028965, 37.491562, 33.942974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248140, 37.522793, 33.609829>,  <30.379646, 37.541531, 33.409943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248140, 37.522793, 33.609829>,  <30.028965, 37.491562, 33.942974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248140, 37.522793, 33.609829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622733, -0.702855, 0.343800,
		-0.558540, -0.707034, -0.433746,
		0.547939, 0.078082, -0.832866,
		30.412521, 37.546219, 33.359970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213339, 36.791935, 33.616264>,  <30.028965, 37.491562, 33.942974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213339, 36.791935, 33.616264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470812, 37.084743, 33.526989>,  <30.625296, 37.260429, 33.473423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470812, 37.084743, 33.526989>,  <30.213339, 36.791935, 33.616264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470812, 37.084743, 33.526989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760136, -0.577755, 0.297308,
		0.088687, -0.361027, -0.928329,
		0.643683, 0.732023, -0.223190,
		30.663918, 37.304352, 33.460033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814745, 36.508633, 33.273983>,  <30.213339, 36.791935, 33.616264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814745, 36.508633, 33.273983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936953, 36.854366, 33.433777>,  <31.010277, 37.061806, 33.529652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936953, 36.854366, 33.433777>,  <30.814745, 36.508633, 33.273983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936953, 36.854366, 33.433777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814528, -0.454525, 0.360489,
		0.493157, 0.215253, -0.842889,
		0.305518, 0.864334, 0.399482,
		31.028608, 37.113667, 33.553623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414003, 36.641827, 33.008614>,  <30.814745, 36.508633, 33.273983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414003, 36.641827, 33.008614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393038, 36.825466, 33.363350>,  <31.380459, 36.935650, 33.576191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393038, 36.825466, 33.363350>,  <31.414003, 36.641827, 33.008614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393038, 36.825466, 33.363350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904164, -0.355202, 0.237318,
		0.423959, 0.814286, -0.396482,
		-0.052413, 0.459098, 0.886838,
		31.377314, 36.963196, 33.629402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043228, 37.012928, 33.223812>,  <31.414003, 36.641827, 33.008614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043228, 37.012928, 33.223812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870485, 36.877842, 33.558342>,  <31.766840, 36.796791, 33.759060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870485, 36.877842, 33.558342>,  <32.043228, 37.012928, 33.223812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870485, 36.877842, 33.558342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888325, -0.319783, 0.329572,
		0.156141, 0.885259, 0.438105,
		-0.431856, -0.337720, 0.836329,
		31.740929, 36.776527, 33.809242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109310, 37.402580, 33.825039>,  <32.043228, 37.012928, 33.223812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109310, 37.402580, 33.825039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169537, 37.025909, 33.945415>,  <32.205673, 36.799908, 34.017643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169537, 37.025909, 33.945415>,  <32.109310, 37.402580, 33.825039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169537, 37.025909, 33.945415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101605, 0.317542, 0.942785,
		-0.983365, -0.111376, 0.143491,
		0.150568, -0.941681, 0.300943,
		32.214706, 36.743404, 34.035698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621691, 37.188354, 34.379063>,  <32.109310, 37.402580, 33.825039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621691, 37.188354, 34.379063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975142, 37.001225, 34.386494>,  <32.187214, 36.888947, 34.390953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975142, 37.001225, 34.386494>,  <31.621691, 37.188354, 34.379063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975142, 37.001225, 34.386494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082182, 0.194040, 0.977545,
		-0.460922, -0.862259, 0.209906,
		0.883627, -0.467823, 0.018575,
		32.240231, 36.860878, 34.392067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621922, 36.785885, 35.015034>,  <31.621691, 37.188354, 34.379063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621922, 36.785885, 35.015034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007538, 36.829037, 34.917885>,  <32.238907, 36.854927, 34.859596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007538, 36.829037, 34.917885>,  <31.621922, 36.785885, 35.015034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007538, 36.829037, 34.917885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219474, 0.192144, 0.956510,
		0.149855, -0.975419, 0.161558,
		0.964041, 0.107880, -0.242873,
		32.296749, 36.861401, 34.845024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007351, 36.203796, 35.428295>,  <31.621922, 36.785885, 35.015034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007351, 36.203796, 35.428295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288235, 36.481060, 35.363266>,  <32.456764, 36.647419, 35.324249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288235, 36.481060, 35.363266>,  <32.007351, 36.203796, 35.428295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288235, 36.481060, 35.363266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224546, 0.001079, 0.974463,
		0.675636, -0.720781, -0.154889,
		0.702207, 0.693162, -0.162577,
		32.498898, 36.689007, 35.314491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684517, 35.901833, 35.744404>,  <32.007351, 36.203796, 35.428295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684517, 35.901833, 35.744404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781624, 36.289089, 35.719868>,  <32.839886, 36.521442, 35.705147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781624, 36.289089, 35.719868>,  <32.684517, 35.901833, 35.744404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781624, 36.289089, 35.719868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385677, -0.038306, 0.921838,
		0.890123, -0.247447, -0.382690,
		0.242765, 0.968144, -0.061337,
		32.854454, 36.579533, 35.701466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418758, 36.048710, 35.992043>,  <32.684517, 35.901833, 35.744404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418758, 36.048710, 35.992043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245628, 36.409302, 35.991318>,  <33.141750, 36.625656, 35.990883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245628, 36.409302, 35.991318>,  <33.418758, 36.048710, 35.992043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245628, 36.409302, 35.991318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244122, 0.119139, 0.962398,
		0.867795, 0.416108, -0.271637,
		-0.432825, 0.901476, -0.001807,
		33.115780, 36.679745, 35.990776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858631, 36.533096, 36.464920>,  <33.418758, 36.048710, 35.992043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858631, 36.533096, 36.464920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501072, 36.711327, 36.445286>,  <33.286537, 36.818264, 36.433506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501072, 36.711327, 36.445286>,  <33.858631, 36.533096, 36.464920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501072, 36.711327, 36.445286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019215, 0.147476, 0.988879,
		0.447856, 0.883015, -0.140391,
		-0.893899, 0.445572, -0.049081,
		33.232903, 36.844997, 36.430561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850868, 37.171711, 36.932224>,  <33.858631, 36.533096, 36.464920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850868, 37.171711, 36.932224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462112, 37.083591, 36.898994>,  <33.228859, 37.030720, 36.879055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462112, 37.083591, 36.898994>,  <33.850868, 37.171711, 36.932224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462112, 37.083591, 36.898994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112510, 0.124586, 0.985809,
		-0.206824, 0.967443, -0.145870,
		-0.971888, -0.220301, -0.083079,
		33.170547, 37.017502, 36.874069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678349, 37.546356, 37.451775>,  <33.850868, 37.171711, 36.932224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678349, 37.546356, 37.451775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372944, 37.305435, 37.358589>,  <33.189701, 37.160881, 37.302677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372944, 37.305435, 37.358589>,  <33.678349, 37.546356, 37.451775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372944, 37.305435, 37.358589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346349, 0.077442, 0.934904,
		-0.545058, 0.794499, -0.267736,
		-0.763514, -0.602307, -0.232964,
		33.143890, 37.124744, 37.288700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213993, 37.833241, 37.734154>,  <33.678349, 37.546356, 37.451775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213993, 37.833241, 37.734154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152908, 37.440071, 37.693077>,  <33.116257, 37.204170, 37.668430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152908, 37.440071, 37.693077>,  <33.213993, 37.833241, 37.734154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152908, 37.440071, 37.693077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307909, -0.051416, 0.950025,
		-0.939080, 0.176697, -0.294799,
		-0.152710, -0.982921, -0.102691,
		33.107094, 37.145195, 37.662270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612659, 37.733414, 38.164417>,  <33.213993, 37.833241, 37.734154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612659, 37.733414, 38.164417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757450, 37.364254, 38.111916>,  <32.844326, 37.142757, 38.080414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757450, 37.364254, 38.111916>,  <32.612659, 37.733414, 38.164417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757450, 37.364254, 38.111916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447149, -0.295451, 0.844255,
		-0.817941, -0.246913, -0.519621,
		0.361980, -0.922899, -0.131255,
		32.866043, 37.087383, 38.072540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081146, 37.218571, 38.429733>,  <32.612659, 37.733414, 38.164417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081146, 37.218571, 38.429733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447201, 37.057644, 38.440086>,  <32.666832, 36.961090, 38.446301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447201, 37.057644, 38.440086>,  <32.081146, 37.218571, 38.429733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447201, 37.057644, 38.440086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269314, -0.562295, 0.781853,
		-0.299995, -0.722473, -0.622925,
		0.915136, -0.402315, 0.025886,
		32.721741, 36.936951, 38.447853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003349, 36.490730, 38.516487>,  <32.081146, 37.218571, 38.429733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003349, 36.490730, 38.516487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382401, 36.566399, 38.619419>,  <32.609833, 36.611797, 38.681179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382401, 36.566399, 38.619419>,  <32.003349, 36.490730, 38.516487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382401, 36.566399, 38.619419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088019, -0.619824, 0.779789,
		0.307008, -0.761599, -0.570712,
		0.947628, 0.189168, 0.257326,
		32.666691, 36.623150, 38.696617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254635, 35.768917, 38.513733>,  <32.003349, 36.490730, 38.516487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254635, 35.768917, 38.513733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428787, 36.053699, 38.734116>,  <32.533279, 36.224567, 38.866344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428787, 36.053699, 38.734116>,  <32.254635, 35.768917, 38.513733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428787, 36.053699, 38.734116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037713, -0.597051, 0.801316,
		0.899455, -0.369659, -0.233096,
		0.435384, 0.711957, 0.550961,
		32.559402, 36.267288, 38.899403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829426, 35.464279, 38.918163>,  <32.254635, 35.768917, 38.513733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829426, 35.464279, 38.918163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720779, 35.791641, 39.120720>,  <32.655590, 35.988060, 39.242256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720779, 35.791641, 39.120720>,  <32.829426, 35.464279, 38.918163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720779, 35.791641, 39.120720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033438, -0.533882, 0.844897,
		0.961824, 0.212557, 0.172378,
		-0.271618, 0.818407, 0.506393,
		32.639294, 36.037163, 39.272636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116234, 35.271744, 39.524387>,  <32.829426, 35.464279, 38.918163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116234, 35.271744, 39.524387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861156, 35.569946, 39.601917>,  <32.708111, 35.748867, 39.648438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861156, 35.569946, 39.601917>,  <33.116234, 35.271744, 39.524387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861156, 35.569946, 39.601917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042049, -0.284944, 0.957621,
		0.769142, 0.602519, 0.213055,
		-0.637694, 0.745505, 0.193827,
		32.669849, 35.793598, 39.660065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311745, 35.583130, 40.137718>,  <33.116234, 35.271744, 39.524387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311745, 35.583130, 40.137718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930172, 35.694836, 40.093838>,  <32.701229, 35.761860, 40.067509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930172, 35.694836, 40.093838>,  <33.311745, 35.583130, 40.137718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930172, 35.694836, 40.093838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200236, -0.320266, 0.925924,
		0.223444, 0.905230, 0.361429,
		-0.953928, 0.279263, -0.109698,
		32.643993, 35.778614, 40.060928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146008, 35.884621, 40.796661>,  <33.311745, 35.583130, 40.137718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146008, 35.884621, 40.796661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799175, 35.789268, 40.621689>,  <32.591076, 35.732056, 40.516705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799175, 35.789268, 40.621689>,  <33.146008, 35.884621, 40.796661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799175, 35.789268, 40.621689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373657, -0.269512, 0.887549,
		-0.329468, 0.933026, 0.144616,
		-0.867082, -0.238382, -0.437427,
		32.539051, 35.717754, 40.490459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663219, 36.139103, 41.189705>,  <33.146008, 35.884621, 40.796661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663219, 36.139103, 41.189705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460915, 35.852936, 40.996883>,  <32.339531, 35.681236, 40.881191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460915, 35.852936, 40.996883>,  <32.663219, 36.139103, 41.189705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460915, 35.852936, 40.996883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432676, -0.273062, 0.859202,
		-0.746322, 0.643126, -0.171441,
		-0.505762, -0.715420, -0.482057,
		32.309185, 35.638309, 40.852264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941669, 36.202045, 41.403454>,  <32.663219, 36.139103, 41.189705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941669, 36.202045, 41.403454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961138, 35.826595, 41.266861>,  <31.972818, 35.601326, 41.184906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961138, 35.826595, 41.266861>,  <31.941669, 36.202045, 41.403454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961138, 35.826595, 41.266861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449321, -0.325911, 0.831801,
		-0.892044, 0.112951, -0.437607,
		0.048668, -0.938629, -0.341478,
		31.975739, 35.545006, 41.164417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360655, 35.899059, 41.671314>,  <31.941669, 36.202045, 41.403454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360655, 35.899059, 41.671314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582130, 35.585339, 41.559391>,  <31.715015, 35.397106, 41.492237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582130, 35.585339, 41.559391>,  <31.360655, 35.899059, 41.671314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582130, 35.585339, 41.559391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407465, -0.548218, 0.730362,
		-0.726223, -0.290382, -0.623120,
		0.553689, -0.784306, -0.279808,
		31.748238, 35.350048, 41.475449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860128, 35.370335, 41.643547>,  <31.360655, 35.899059, 41.671314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860128, 35.370335, 41.643547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227219, 35.231560, 41.720921>,  <31.447472, 35.148296, 41.767345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227219, 35.231560, 41.720921>,  <30.860128, 35.370335, 41.643547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227219, 35.231560, 41.720921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380096, -0.625566, 0.681318,
		-0.115368, -0.698786, -0.705966,
		0.917724, -0.346937, 0.193436,
		31.502535, 35.127480, 41.778950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717421, 34.700645, 41.799767>,  <30.860128, 35.370335, 41.643547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717421, 34.700645, 41.799767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089247, 34.773811, 41.927799>,  <31.312342, 34.817711, 42.004620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089247, 34.773811, 41.927799>,  <30.717421, 34.700645, 41.799767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089247, 34.773811, 41.927799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154294, -0.595504, 0.788396,
		0.334815, -0.782253, -0.525338,
		0.929566, 0.182910, 0.320080,
		31.368116, 34.828686, 42.023823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028994, 33.966007, 42.064323>,  <30.717421, 34.700645, 41.799767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028994, 33.966007, 42.064323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290459, 34.211597, 42.241299>,  <31.447338, 34.358952, 42.347485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290459, 34.211597, 42.241299>,  <31.028994, 33.966007, 42.064323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290459, 34.211597, 42.241299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082585, -0.523270, 0.848156,
		0.752268, -0.590946, -0.291336,
		0.653661, 0.613980, 0.442442,
		31.486557, 34.395790, 42.374031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590700, 33.609272, 42.362652>,  <31.028994, 33.966007, 42.064323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590700, 33.609272, 42.362652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517544, 33.953899, 42.552074>,  <31.473650, 34.160675, 42.665730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517544, 33.953899, 42.552074>,  <31.590700, 33.609272, 42.362652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517544, 33.953899, 42.552074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117443, -0.497380, 0.859547,
		0.976093, 0.101588, 0.192152,
		-0.182892, 0.861565, 0.473558,
		31.462677, 34.212368, 42.694141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881899, 33.531837, 42.992115>,  <31.590700, 33.609272, 42.362652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881899, 33.531837, 42.992115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623480, 33.828979, 43.062298>,  <31.468428, 34.007267, 43.104408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623480, 33.828979, 43.062298>,  <31.881899, 33.531837, 42.992115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623480, 33.828979, 43.062298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133521, -0.336312, 0.932237,
		0.751529, 0.578842, 0.316460,
		-0.646047, 0.742857, 0.175461,
		31.429667, 34.051838, 43.114937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155540, 33.908531, 43.621445>,  <31.881899, 33.531837, 42.992115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155540, 33.908531, 43.621445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762220, 33.971474, 43.584892>,  <31.526228, 34.009239, 43.562962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762220, 33.971474, 43.584892>,  <32.155540, 33.908531, 43.621445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762220, 33.971474, 43.584892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100409, -0.050405, 0.993669,
		0.151757, 0.986254, 0.065364,
		-0.983304, 0.157359, -0.091380,
		31.467230, 34.018681, 43.557480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045662, 34.354649, 44.080826>,  <32.155540, 33.908531, 43.621445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045662, 34.354649, 44.080826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678070, 34.207031, 44.025280>,  <31.457516, 34.118462, 43.991951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678070, 34.207031, 44.025280>,  <32.045662, 34.354649, 44.080826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678070, 34.207031, 44.025280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132031, -0.043855, 0.990275,
		-0.371549, 0.928375, -0.008424,
		-0.918977, -0.369047, -0.138869,
		31.402376, 34.096317, 43.983620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535618, 34.663799, 44.556202>,  <32.045662, 34.354649, 44.080826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535618, 34.663799, 44.556202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304991, 34.360443, 44.434605>,  <31.166615, 34.178429, 44.361649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304991, 34.360443, 44.434605>,  <31.535618, 34.663799, 44.556202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304991, 34.360443, 44.434605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385654, -0.075396, 0.919558,
		-0.720306, 0.647422, -0.249006,
		-0.576568, -0.758393, -0.303989,
		31.132021, 34.132927, 44.343407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804842, 34.807228, 44.772881>,  <31.535618, 34.663799, 44.556202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804842, 34.807228, 44.772881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898621, 34.419834, 44.739227>,  <30.954887, 34.187397, 44.719036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898621, 34.419834, 44.739227>,  <30.804842, 34.807228, 44.772881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898621, 34.419834, 44.739227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203918, -0.133612, 0.969827,
		-0.950501, -0.210217, -0.228815,
		0.234447, -0.968482, -0.084131,
		30.968954, 34.129292, 44.713989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300406, 34.384243, 45.200020>,  <30.804842, 34.807228, 44.772881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300406, 34.384243, 45.200020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574223, 34.106663, 45.110725>,  <30.738512, 33.940113, 45.057148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574223, 34.106663, 45.110725>,  <30.300406, 34.384243, 45.200020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574223, 34.106663, 45.110725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230841, -0.496829, 0.836584,
		-0.691461, -0.521143, -0.500292,
		0.684539, -0.693953, -0.223237,
		30.779585, 33.898476, 45.043755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889530, 33.772636, 45.158901>,  <30.300406, 34.384243, 45.200020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889530, 33.772636, 45.158901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260773, 33.676334, 45.272503>,  <30.483519, 33.618553, 45.340664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260773, 33.676334, 45.272503>,  <29.889530, 33.772636, 45.158901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260773, 33.676334, 45.272503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363928, -0.425555, 0.828529,
		-0.078609, -0.872320, -0.482576,
		0.928104, -0.240752, 0.284009,
		30.539204, 33.604107, 45.357704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777330, 33.223518, 45.573307>,  <29.889530, 33.772636, 45.158901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777330, 33.223518, 45.573307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154724, 33.307911, 45.675541>,  <30.381161, 33.358547, 45.736881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154724, 33.307911, 45.675541>,  <29.777330, 33.223518, 45.573307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154724, 33.307911, 45.675541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099128, -0.556239, 0.825089,
		0.316246, -0.803794, -0.503888,
		0.943484, 0.210982, 0.255587,
		30.437769, 33.371204, 45.752216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153419, 32.533127, 45.664490>,  <29.777330, 33.223518, 45.573307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153419, 32.533127, 45.664490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387369, 32.795540, 45.855297>,  <30.527739, 32.952988, 45.969780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387369, 32.795540, 45.855297>,  <30.153419, 32.533127, 45.664490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387369, 32.795540, 45.855297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143842, -0.494881, 0.856973,
		0.798268, -0.569836, -0.195078,
		0.584874, 0.656033, 0.477014,
		30.562832, 32.992352, 45.998402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501133, 32.102695, 46.054466>,  <30.153419, 32.533127, 45.664490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501133, 32.102695, 46.054466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521914, 32.458256, 46.236526>,  <30.534382, 32.671593, 46.345764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521914, 32.458256, 46.236526>,  <30.501133, 32.102695, 46.054466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521914, 32.458256, 46.236526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139201, -0.444870, 0.884711,
		0.988900, -0.109321, 0.100623,
		0.051953, 0.888898, 0.455150,
		30.537500, 32.724926, 46.373070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871111, 32.030933, 46.666492>,  <30.501133, 32.102695, 46.054466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871111, 32.030933, 46.666492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673464, 32.374306, 46.721542>,  <30.554876, 32.580330, 46.754574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673464, 32.374306, 46.721542>,  <30.871111, 32.030933, 46.666492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673464, 32.374306, 46.721542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224334, -0.278829, 0.933771,
		0.839953, 0.430520, 0.330350,
		-0.494118, 0.858433, 0.137623,
		30.525229, 32.631836, 46.762829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999468, 32.249393, 47.275120>,  <30.871111, 32.030933, 46.666492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999468, 32.249393, 47.275120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654778, 32.446411, 47.226410>,  <30.447964, 32.564621, 47.197186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654778, 32.446411, 47.226410>,  <30.999468, 32.249393, 47.275120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654778, 32.446411, 47.226410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339592, -0.381580, 0.859694,
		0.376970, 0.782174, 0.496082,
		-0.861725, 0.492545, -0.121776,
		30.396259, 32.594173, 47.189877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897026, 32.490696, 47.934341>,  <30.999468, 32.249393, 47.275120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897026, 32.490696, 47.934341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535677, 32.504753, 47.763378>,  <30.318867, 32.513187, 47.660801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535677, 32.504753, 47.763378>,  <30.897026, 32.490696, 47.934341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535677, 32.504753, 47.763378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399966, -0.428627, 0.810127,
		-0.154733, 0.902798, 0.401264,
		-0.903374, 0.035138, -0.427411,
		30.264666, 32.515293, 47.635155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484730, 32.509644, 48.449970>,  <30.897026, 32.490696, 47.934341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484730, 32.509644, 48.449970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207916, 32.458778, 48.165741>,  <30.041828, 32.428261, 47.995201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207916, 32.458778, 48.165741>,  <30.484730, 32.509644, 48.449970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207916, 32.458778, 48.165741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578560, -0.490961, 0.651326,
		-0.431690, 0.861851, 0.266190,
		-0.692034, -0.127164, -0.710576,
		30.000305, 32.420628, 47.952568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935108, 32.718788, 48.857685>,  <30.484730, 32.509644, 48.449970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935108, 32.718788, 48.857685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889463, 32.463554, 48.553101>,  <29.862078, 32.310413, 48.370350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889463, 32.463554, 48.553101>,  <29.935108, 32.718788, 48.857685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889463, 32.463554, 48.553101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394503, -0.674341, 0.624204,
		-0.911782, 0.371626, -0.174779,
		-0.114110, -0.638089, -0.761460,
		29.855230, 32.272129, 48.324661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286879, 32.482880, 48.818619>,  <29.935108, 32.718788, 48.857685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286879, 32.482880, 48.818619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509026, 32.188133, 48.664425>,  <29.642315, 32.011288, 48.571907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509026, 32.188133, 48.664425>,  <29.286879, 32.482880, 48.818619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509026, 32.188133, 48.664425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446807, -0.655349, 0.609000,
		-0.701377, -0.165982, -0.693196,
		0.555369, -0.736863, -0.385485,
		29.675636, 31.967075, 48.548779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811901, 32.044628, 48.590206>,  <29.286879, 32.482880, 48.818619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811901, 32.044628, 48.590206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156830, 31.852106, 48.653126>,  <29.363787, 31.736591, 48.690880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156830, 31.852106, 48.653126>,  <28.811901, 32.044628, 48.590206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156830, 31.852106, 48.653126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504556, -0.790524, 0.347123,
		-0.042723, -0.378699, -0.924534,
		0.862321, -0.481309, 0.157301,
		29.415525, 31.707714, 48.700317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998207, 31.355001, 48.210186>,  <28.811901, 32.044628, 48.590206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998207, 31.355001, 48.210186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156637, 31.353271, 48.577469>,  <29.251696, 31.352234, 48.797840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156637, 31.353271, 48.577469>,  <28.998207, 31.355001, 48.210186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156637, 31.353271, 48.577469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598457, -0.759633, 0.254570,
		0.696401, -0.650337, -0.303460,
		0.396074, -0.004325, 0.918208,
		29.275459, 31.351974, 48.852932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292055, 30.641928, 48.395683>,  <28.998207, 31.355001, 48.210186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292055, 30.641928, 48.395683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183187, 30.863037, 48.710735>,  <29.117867, 30.995703, 48.899769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183187, 30.863037, 48.710735>,  <29.292055, 30.641928, 48.395683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183187, 30.863037, 48.710735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656146, -0.705334, 0.268284,
		0.703845, -0.443783, 0.554670,
		-0.272168, 0.552775, 0.787632,
		29.101538, 31.028870, 48.947025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988260, 30.186960, 48.730724>,  <29.292055, 30.641928, 48.395683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988260, 30.186960, 48.730724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907616, 30.501856, 48.963825>,  <28.859228, 30.690794, 49.103687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907616, 30.501856, 48.963825>,  <28.988260, 30.186960, 48.730724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907616, 30.501856, 48.963825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674982, -0.542809, 0.499758,
		0.709755, -0.292591, 0.640811,
		-0.201613, 0.787241, 0.582755,
		28.847132, 30.738028, 49.138653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944965, 29.922058, 49.425339>,  <28.988260, 30.186960, 48.730724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944965, 29.922058, 49.425339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755678, 30.272587, 49.389282>,  <28.642105, 30.482904, 49.367649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755678, 30.272587, 49.389282>,  <28.944965, 29.922058, 49.425339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755678, 30.272587, 49.389282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790724, -0.377414, 0.481990,
		0.388356, 0.299366, 0.871527,
		-0.473218, 0.876321, -0.090145,
		28.613712, 30.535482, 49.362240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500097, 30.163273, 50.025463>,  <28.944965, 29.922058, 49.425339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500097, 30.163273, 50.025463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335665, 30.389828, 49.739746>,  <28.237005, 30.525761, 49.568314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335665, 30.389828, 49.739746>,  <28.500097, 30.163273, 50.025463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335665, 30.389828, 49.739746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911567, -0.248839, 0.327298,
		0.007633, 0.785675, 0.618592,
		-0.411080, 0.566387, -0.714297,
		28.212341, 30.559744, 49.525455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657471, 29.553001, 50.159813>,  <28.500097, 30.163273, 50.025463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657471, 29.553001, 50.159813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363438, 29.293041, 50.082577>,  <28.187017, 29.137064, 50.036236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363438, 29.293041, 50.082577>,  <28.657471, 29.553001, 50.159813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363438, 29.293041, 50.082577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116441, 0.159548, -0.980299,
		0.667906, -0.743082, -0.041606,
		-0.735081, -0.649903, -0.193088,
		28.142914, 29.098070, 50.024651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856297, 29.104334, 49.727104>,  <28.657471, 29.553001, 50.159813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856297, 29.104334, 49.727104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.458902, 29.101162, 49.681637>,  <28.220465, 29.099258, 49.654358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.458902, 29.101162, 49.681637>,  <28.856297, 29.104334, 49.727104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458902, 29.101162, 49.681637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113943, -0.070219, -0.991003,
		-0.000121, -0.997500, 0.070665,
		-0.993487, -0.007932, -0.113666,
		28.160856, 29.098783, 49.647537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405445, 29.111378, 49.248577>,  <28.856297, 29.104334, 49.727104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405445, 29.111378, 49.248577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155771, 29.307718, 49.005444>,  <29.005966, 29.425522, 48.859566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155771, 29.307718, 49.005444>,  <29.405445, 29.111378, 49.248577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155771, 29.307718, 49.005444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723260, 0.068829, -0.687137,
		-0.295445, -0.868521, -0.397974,
		-0.624185, 0.490850, -0.607832,
		28.968515, 29.454973, 48.823093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537737, 28.918077, 48.604996>,  <29.405445, 29.111378, 49.248577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537737, 28.918077, 48.604996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353958, 29.268255, 48.544991>,  <29.243690, 29.478361, 48.508987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353958, 29.268255, 48.544991>,  <29.537737, 28.918077, 48.604996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353958, 29.268255, 48.544991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667380, 0.228812, -0.708695,
		-0.586098, -0.425725, -0.689382,
		-0.459448, 0.875445, -0.150014,
		29.216124, 29.530890, 48.499985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115669, 29.025421, 47.997360>,  <29.537737, 28.918077, 48.604996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115669, 29.025421, 47.997360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304586, 29.359718, 48.109413>,  <29.417936, 29.560297, 48.176643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304586, 29.359718, 48.109413>,  <29.115669, 29.025421, 47.997360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304586, 29.359718, 48.109413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595033, -0.067835, -0.800833,
		-0.650290, 0.544913, -0.529333,
		0.472291, 0.835745, 0.280129,
		29.446274, 29.610441, 48.193451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101397, 29.493322, 47.427792>,  <29.115669, 29.025421, 47.997360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101397, 29.493322, 47.427792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393314, 29.655481, 47.647991>,  <29.568464, 29.752777, 47.780113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393314, 29.655481, 47.647991>,  <29.101397, 29.493322, 47.427792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393314, 29.655481, 47.647991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569216, 0.085693, -0.817710,
		-0.378673, 0.910115, -0.168221,
		0.729795, 0.405398, 0.550501,
		29.612253, 29.777102, 47.813141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223026, 30.353094, 47.252945>,  <29.101397, 29.493322, 47.427792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223026, 30.353094, 47.252945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547718, 30.155378, 47.377377>,  <29.742533, 30.036749, 47.452038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547718, 30.155378, 47.377377>,  <29.223026, 30.353094, 47.252945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547718, 30.155378, 47.377377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437490, 0.161758, -0.884554,
		0.386905, 0.854116, 0.347550,
		0.811731, -0.494288, 0.311083,
		29.791237, 30.007092, 47.470703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775383, 30.669090, 46.899551>,  <29.223026, 30.353094, 47.252945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775383, 30.669090, 46.899551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984810, 30.354393, 47.030342>,  <30.110466, 30.165575, 47.108818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984810, 30.354393, 47.030342>,  <29.775383, 30.669090, 46.899551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984810, 30.354393, 47.030342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573445, 0.041575, -0.818188,
		0.630109, 0.615881, 0.472921,
		0.523568, -0.786742, 0.326977,
		30.141880, 30.118370, 47.128437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441607, 30.848085, 46.775005>,  <29.775383, 30.669090, 46.899551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441607, 30.848085, 46.775005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483889, 30.455542, 46.839203>,  <30.509258, 30.220015, 46.877720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483889, 30.455542, 46.839203>,  <30.441607, 30.848085, 46.775005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483889, 30.455542, 46.839203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622156, -0.060635, -0.780542,
		0.775724, 0.182361, 0.604149,
		0.105707, -0.981360, 0.160493,
		30.515600, 30.161133, 46.887352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130806, 30.700302, 46.735241>,  <30.441607, 30.848085, 46.775005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130806, 30.700302, 46.735241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985001, 30.335951, 46.657852>,  <30.897516, 30.117340, 46.611420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985001, 30.335951, 46.657852>,  <31.130806, 30.700302, 46.735241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985001, 30.335951, 46.657852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620606, -0.082735, -0.779746,
		0.694246, -0.404299, 0.595454,
		-0.364515, -0.910877, -0.193472,
		30.875647, 30.062687, 46.599812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713587, 30.183290, 46.665863>,  <31.130806, 30.700302, 46.735241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713587, 30.183290, 46.665863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398506, 30.039507, 46.465736>,  <31.209457, 29.953238, 46.345661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398506, 30.039507, 46.465736>,  <31.713587, 30.183290, 46.665863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398506, 30.039507, 46.465736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596853, -0.244085, -0.764322,
		0.152623, -0.900673, 0.406810,
		-0.787701, -0.359459, -0.500316,
		31.162195, 29.931669, 46.315643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954233, 29.602825, 46.390640>,  <31.713587, 30.183290, 46.665863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954233, 29.602825, 46.390640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632019, 29.700188, 46.174541>,  <31.438690, 29.758606, 46.044884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632019, 29.700188, 46.174541>,  <31.954233, 29.602825, 46.390640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632019, 29.700188, 46.174541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532558, -0.102338, -0.840184,
		-0.259793, -0.964511, -0.047192,
		-0.805536, 0.243406, -0.540245,
		31.390358, 29.773211, 46.012466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137493, 29.290766, 45.811924>,  <31.954233, 29.602825, 46.390640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137493, 29.290766, 45.811924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837858, 29.530003, 45.697971>,  <31.658077, 29.673546, 45.629601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837858, 29.530003, 45.697971>,  <32.137493, 29.290766, 45.811924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837858, 29.530003, 45.697971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396265, 0.059920, -0.916178,
		-0.530890, -0.799183, -0.281888,
		-0.749085, 0.598093, -0.284878,
		31.613132, 29.709431, 45.612507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022850, 28.982166, 45.180809>,  <32.137493, 29.290766, 45.811924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022850, 28.982166, 45.180809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850397, 29.342985, 45.172523>,  <31.746925, 29.559477, 45.167553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850397, 29.342985, 45.172523>,  <32.022850, 28.982166, 45.180809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850397, 29.342985, 45.172523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399151, 0.170081, -0.900972,
		-0.809197, -0.396711, -0.433382,
		-0.431136, 0.902049, -0.020719,
		31.721056, 29.613600, 45.166309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747520, 28.998693, 44.577305>,  <32.022850, 28.982166, 45.180809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747520, 28.998693, 44.577305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760120, 29.389105, 44.663448>,  <31.767681, 29.623352, 44.715134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760120, 29.389105, 44.663448>,  <31.747520, 28.998693, 44.577305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760120, 29.389105, 44.663448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469060, 0.175832, -0.865486,
		-0.882604, 0.128280, -0.452276,
		0.031500, 0.976026, 0.215361,
		31.769569, 29.681913, 44.728058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725016, 29.311558, 43.875420>,  <31.747520, 28.998693, 44.577305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725016, 29.311558, 43.875420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866133, 29.598747, 44.115437>,  <31.950804, 29.771061, 44.259445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866133, 29.598747, 44.115437>,  <31.725016, 29.311558, 43.875420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866133, 29.598747, 44.115437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456286, 0.427855, -0.780220,
		-0.816909, 0.549047, -0.176657,
		0.352794, 0.717974, 0.600041,
		31.971972, 29.814140, 44.295448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623837, 29.857664, 43.551556>,  <31.725016, 29.311558, 43.875420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623837, 29.857664, 43.551556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900045, 29.985638, 43.811039>,  <32.065769, 30.062422, 43.966728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900045, 29.985638, 43.811039>,  <31.623837, 29.857664, 43.551556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900045, 29.985638, 43.811039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413289, 0.561519, -0.716861,
		-0.593611, 0.763111, 0.255514,
		0.690520, 0.319935, 0.648709,
		32.107201, 30.081617, 44.005653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600414, 30.708912, 43.627964>,  <31.623837, 29.857664, 43.551556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600414, 30.708912, 43.627964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966652, 30.564476, 43.698730>,  <32.186394, 30.477814, 43.741192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966652, 30.564476, 43.698730>,  <31.600414, 30.708912, 43.627964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966652, 30.564476, 43.698730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390499, 0.693548, -0.605394,
		0.095901, 0.623382, 0.776014,
		0.915595, -0.361090, 0.176918,
		32.241329, 30.456148, 43.751804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956774, 31.266171, 43.737492>,  <31.600414, 30.708912, 43.627964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956774, 31.266171, 43.737492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191715, 30.965364, 43.617832>,  <32.332680, 30.784882, 43.546036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191715, 30.965364, 43.617832>,  <31.956774, 31.266171, 43.737492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191715, 30.965364, 43.617832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282485, 0.536865, -0.794971,
		0.758431, 0.382425, 0.527763,
		0.587354, -0.752015, -0.299146,
		32.367920, 30.739759, 43.528088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555008, 31.601355, 43.438457>,  <31.956774, 31.266171, 43.737492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555008, 31.601355, 43.438457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610043, 31.222780, 43.321613>,  <32.643063, 30.995636, 43.251507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610043, 31.222780, 43.321613>,  <32.555008, 31.601355, 43.438457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610043, 31.222780, 43.321613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414494, 0.322863, -0.850855,
		0.899592, -0.004014, 0.436713,
		0.137583, -0.946437, -0.292109,
		32.651318, 30.938848, 43.233982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193764, 31.613253, 43.114136>,  <32.555008, 31.601355, 43.438457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193764, 31.613253, 43.114136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012726, 31.288393, 42.966854>,  <32.904102, 31.093477, 42.878483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012726, 31.288393, 42.966854>,  <33.193764, 31.613253, 43.114136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012726, 31.288393, 42.966854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256834, 0.276696, -0.926000,
		0.853931, -0.513667, 0.083358,
		-0.452591, -0.812149, -0.368207,
		32.876949, 31.044748, 42.856392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564289, 31.402901, 42.479801>,  <33.193764, 31.613253, 43.114136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564289, 31.402901, 42.479801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230556, 31.185297, 42.444130>,  <33.030319, 31.054735, 42.422726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230556, 31.185297, 42.444130>,  <33.564289, 31.402901, 42.479801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230556, 31.185297, 42.444130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121181, -0.023169, -0.992360,
		0.537786, -0.838760, 0.085254,
		-0.834327, -0.544008, -0.089182,
		32.980259, 31.022095, 42.417374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746719, 30.754095, 42.116604>,  <33.564289, 31.402901, 42.479801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746719, 30.754095, 42.116604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362366, 30.842134, 42.049358>,  <33.131756, 30.894958, 42.009010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362366, 30.842134, 42.049358>,  <33.746719, 30.754095, 42.116604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362366, 30.842134, 42.049358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160977, -0.050111, -0.985685,
		-0.225372, -0.974190, 0.012720,
		-0.960882, 0.220098, -0.168116,
		33.074100, 30.908163, 41.998924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519855, 30.427486, 41.509773>,  <33.746719, 30.754095, 42.116604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519855, 30.427486, 41.509773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226639, 30.694130, 41.563866>,  <33.050709, 30.854116, 41.596321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226639, 30.694130, 41.563866>,  <33.519855, 30.427486, 41.509773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226639, 30.694130, 41.563866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002520, 0.196146, -0.980571,
		-0.680182, -0.719137, -0.142103,
		-0.733038, 0.666609, 0.135227,
		33.006725, 30.894114, 41.604435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883148, 30.238266, 41.110405>,  <33.519855, 30.427486, 41.509773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883148, 30.238266, 41.110405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876919, 30.635345, 41.158249>,  <32.873180, 30.873592, 41.186954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876919, 30.635345, 41.158249>,  <32.883148, 30.238266, 41.110405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876919, 30.635345, 41.158249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315044, 0.108662, -0.942836,
		-0.948949, -0.052371, 0.311051,
		-0.015578, 0.992698, 0.119614,
		32.872246, 30.933155, 41.194134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305977, 30.388330, 40.665939>,  <32.883148, 30.238266, 41.110405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305977, 30.388330, 40.665939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471252, 30.740051, 40.760685>,  <32.570415, 30.951084, 40.817532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471252, 30.740051, 40.760685>,  <32.305977, 30.388330, 40.665939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471252, 30.740051, 40.760685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282487, 0.371034, -0.884610,
		-0.865724, 0.298598, 0.401698,
		0.413186, 0.879302, 0.236863,
		32.595207, 31.003841, 40.831745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790514, 30.912735, 40.544830>,  <32.305977, 30.388330, 40.665939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790514, 30.912735, 40.544830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146854, 31.091602, 40.512768>,  <32.360661, 31.198923, 40.493530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146854, 31.091602, 40.512768>,  <31.790514, 30.912735, 40.544830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146854, 31.091602, 40.512768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218579, 0.267224, -0.938517,
		-0.398255, 0.853600, 0.335798,
		0.890852, 0.447167, -0.080156,
		32.414108, 31.225752, 40.488720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605968, 31.519411, 40.232254>,  <31.790514, 30.912735, 40.544830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605968, 31.519411, 40.232254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998165, 31.477005, 40.166050>,  <32.233482, 31.451561, 40.126328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998165, 31.477005, 40.166050>,  <31.605968, 31.519411, 40.232254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998165, 31.477005, 40.166050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109894, 0.402460, -0.908818,
		0.162960, 0.909278, 0.382959,
		0.980494, -0.106016, -0.165509,
		32.292313, 31.445200, 40.116398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774151, 32.082306, 39.836468>,  <31.605968, 31.519411, 40.232254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774151, 32.082306, 39.836468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068943, 31.819876, 39.771442>,  <32.245819, 31.662418, 39.732430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068943, 31.819876, 39.771442>,  <31.774151, 32.082306, 39.836468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068943, 31.819876, 39.771442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111324, 0.355038, -0.928200,
		0.666685, 0.665967, 0.334693,
		0.736979, -0.656076, -0.162560,
		32.290035, 31.623053, 39.722675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382973, 32.493382, 39.609642>,  <31.774151, 32.082306, 39.836468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382973, 32.493382, 39.609642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385242, 32.113091, 39.485645>,  <32.386604, 31.884916, 39.411247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385242, 32.113091, 39.485645>,  <32.382973, 32.493382, 39.609642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385242, 32.113091, 39.485645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171181, 0.306341, -0.936404,
		0.985223, -0.047749, 0.164485,
		0.005676, -0.950724, -0.309988,
		32.386944, 31.827873, 39.392651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839954, 32.531597, 39.056747>,  <32.382973, 32.493382, 39.609642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839954, 32.531597, 39.056747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651009, 32.185619, 38.988926>,  <32.537640, 31.978033, 38.948235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651009, 32.185619, 38.988926>,  <32.839954, 32.531597, 39.056747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651009, 32.185619, 38.988926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062408, 0.159065, -0.985294,
		0.879191, -0.475999, -0.021157,
		-0.472364, -0.864941, -0.169555,
		32.509300, 31.926138, 38.938061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263218, 32.225849, 38.562050>,  <32.839954, 32.531597, 39.056747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263218, 32.225849, 38.562050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915749, 32.032944, 38.516739>,  <32.707268, 31.917200, 38.489552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915749, 32.032944, 38.516739>,  <33.263218, 32.225849, 38.562050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915749, 32.032944, 38.516739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158850, -0.054570, -0.985794,
		0.469230, -0.874326, 0.124011,
		-0.868672, -0.482263, -0.113281,
		32.655148, 31.888266, 38.482754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397324, 31.545448, 38.242031>,  <33.263218, 32.225849, 38.562050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397324, 31.545448, 38.242031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019024, 31.659172, 38.179123>,  <32.792046, 31.727407, 38.141376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019024, 31.659172, 38.179123>,  <33.397324, 31.545448, 38.242031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019024, 31.659172, 38.179123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165898, 0.006368, -0.986122,
		-0.279365, -0.958711, -0.053189,
		-0.945745, 0.284312, -0.157269,
		32.735302, 31.744465, 38.131943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132698, 31.270842, 37.558723>,  <33.397324, 31.545448, 38.242031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132698, 31.270842, 37.558723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854725, 31.548590, 37.633476>,  <32.687943, 31.715239, 37.678326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854725, 31.548590, 37.633476>,  <33.132698, 31.270842, 37.558723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854725, 31.548590, 37.633476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061778, 0.316579, -0.946552,
		-0.716418, -0.646243, -0.262897,
		-0.694931, 0.694368, 0.186879,
		32.646244, 31.756901, 37.689541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631435, 31.194105, 37.005573>,  <33.132698, 31.270842, 37.558723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631435, 31.194105, 37.005573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583359, 31.557888, 37.164791>,  <32.554512, 31.776157, 37.260323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583359, 31.557888, 37.164791>,  <32.631435, 31.194105, 37.005573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583359, 31.557888, 37.164791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009736, 0.402015, -0.915581,
		-0.992703, -0.106168, -0.057172,
		-0.120189, 0.909457, 0.398048,
		32.547302, 31.830725, 37.284206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135689, 31.511057, 36.552029>,  <32.631435, 31.194105, 37.005573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135689, 31.511057, 36.552029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283974, 31.825718, 36.749512>,  <32.372944, 32.014515, 36.868000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283974, 31.825718, 36.749512>,  <32.135689, 31.511057, 36.552029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283974, 31.825718, 36.749512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178570, 0.461296, -0.869091,
		-0.911419, 0.410345, 0.030536,
		0.370713, 0.786653, 0.493709,
		32.395187, 32.061714, 36.897625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737627, 32.105423, 36.212757>,  <32.135689, 31.511057, 36.552029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737627, 32.105423, 36.212757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092857, 32.186455, 36.377819>,  <32.305996, 32.235073, 36.476856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092857, 32.186455, 36.377819>,  <31.737627, 32.105423, 36.212757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092857, 32.186455, 36.377819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257991, 0.523329, -0.812138,
		-0.380475, 0.827701, 0.412492,
		0.888076, 0.202579, 0.412653,
		32.359280, 32.247227, 36.501614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913816, 32.711727, 35.900043>,  <31.737627, 32.105423, 36.212757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913816, 32.711727, 35.900043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262775, 32.618988, 36.072166>,  <32.472153, 32.563343, 36.175442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262775, 32.618988, 36.072166>,  <31.913816, 32.711727, 35.900043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262775, 32.618988, 36.072166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488750, 0.425469, -0.761643,
		-0.006496, 0.874769, 0.484496,
		0.872400, -0.231850, 0.430308,
		32.524494, 32.549435, 36.201260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208790, 33.366726, 36.005131>,  <31.913816, 32.711727, 35.900043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208790, 33.366726, 36.005131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499134, 33.091709, 35.997066>,  <32.673340, 32.926697, 35.992229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499134, 33.091709, 35.997066>,  <32.208790, 33.366726, 36.005131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499134, 33.091709, 35.997066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462284, 0.509330, -0.725862,
		0.509330, 0.517556, 0.687545,
		0.725862, -0.687545, -0.020159,
		32.716892, 32.885445, 35.991020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842930, 33.730473, 36.068577>,  <32.208790, 33.366726, 36.005131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842930, 33.730473, 36.068577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931549, 33.379276, 35.898849>,  <32.984722, 33.168560, 35.797012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931549, 33.379276, 35.898849>,  <32.842930, 33.730473, 36.068577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931549, 33.379276, 35.898849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474869, 0.477193, -0.739450,
		0.851713, -0.037672, 0.522652,
		0.221549, -0.877991, -0.424321,
		32.998013, 33.115879, 35.771553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556709, 33.778423, 35.889786>,  <32.842930, 33.730473, 36.068577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556709, 33.778423, 35.889786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442184, 33.468163, 35.664791>,  <33.373470, 33.282005, 35.529797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442184, 33.468163, 35.664791>,  <33.556709, 33.778423, 35.889786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442184, 33.468163, 35.664791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583472, 0.324506, -0.744484,
		0.759989, -0.541352, 0.359659,
		-0.286316, -0.775651, -0.562485,
		33.356289, 33.235466, 35.496044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241020, 33.570179, 35.602310>,  <33.556709, 33.778423, 35.889786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241020, 33.570179, 35.602310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980492, 33.372093, 35.372341>,  <33.824173, 33.253242, 35.234360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980492, 33.372093, 35.372341>,  <34.241020, 33.570179, 35.602310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980492, 33.372093, 35.372341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517626, 0.264037, -0.813847,
		0.554832, -0.827674, 0.084363,
		-0.651325, -0.495217, -0.574922,
		33.785095, 33.223530, 35.199863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522125, 33.116093, 35.141464>,  <34.241020, 33.570179, 35.602310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522125, 33.116093, 35.141464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170910, 33.193600, 34.966415>,  <33.960182, 33.240105, 34.861385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170910, 33.193600, 34.966415>,  <34.522125, 33.116093, 35.141464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170910, 33.193600, 34.966415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474433, 0.232004, -0.849169,
		-0.063009, -0.953221, -0.295635,
		-0.878034, 0.193764, -0.437621,
		33.907501, 33.251728, 34.835129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104939, 32.526939, 35.124283>,  <34.522125, 33.116093, 35.141464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104939, 32.526939, 35.124283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206429, 32.295734, 34.814049>,  <34.267323, 32.157013, 34.627911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206429, 32.295734, 34.814049>,  <34.104939, 32.526939, 35.124283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206429, 32.295734, 34.814049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758553, 0.378617, -0.530326,
		0.600182, 0.722880, -0.342384,
		0.253730, -0.578008, -0.775582,
		34.282547, 32.122334, 34.581375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045097, 31.684807, 35.241364>,  <34.104939, 32.526939, 35.124283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045097, 31.684807, 35.241364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411133, 31.621763, 35.092896>,  <34.630756, 31.583937, 35.003815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411133, 31.621763, 35.092896>,  <34.045097, 31.684807, 35.241364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411133, 31.621763, 35.092896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373662, -0.014629, 0.927450,
		-0.151604, -0.987393, 0.045506,
		0.915092, -0.157609, -0.371169,
		34.685661, 31.574482, 34.981544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352753, 31.040331, 35.459316>,  <34.045097, 31.684807, 35.241364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352753, 31.040331, 35.459316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622944, 31.327211, 35.390778>,  <34.785057, 31.499340, 35.349655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622944, 31.327211, 35.390778>,  <34.352753, 31.040331, 35.459316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622944, 31.327211, 35.390778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352045, -0.109488, 0.929557,
		0.647918, -0.688212, -0.326444,
		0.675474, 0.717200, -0.171343,
		34.825584, 31.542372, 35.339375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160858, 30.855425, 35.425385>,  <34.352753, 31.040331, 35.459316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160858, 30.855425, 35.425385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063225, 31.214216, 35.572815>,  <35.004646, 31.429491, 35.661274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063225, 31.214216, 35.572815>,  <35.160858, 30.855425, 35.425385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063225, 31.214216, 35.572815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429003, -0.240984, 0.870564,
		0.869700, 0.370613, -0.325987,
		-0.244084, 0.896980, 0.368578,
		34.989998, 31.483311, 35.683388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861099, 31.147711, 35.628365>,  <35.160858, 30.855425, 35.425385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861099, 31.147711, 35.628365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548584, 31.309813, 35.818256>,  <35.361076, 31.407074, 35.932190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548584, 31.309813, 35.818256>,  <35.861099, 31.147711, 35.628365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548584, 31.309813, 35.818256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455802, -0.149180, 0.877491,
		0.426425, 0.901951, -0.068163,
		-0.781285, 0.405253, 0.474725,
		35.314198, 31.431389, 35.960674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163429, 31.557838, 36.077774>,  <35.861099, 31.147711, 35.628365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163429, 31.557838, 36.077774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795418, 31.505486, 36.225513>,  <35.574612, 31.474073, 36.314156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795418, 31.505486, 36.225513>,  <36.163429, 31.557838, 36.077774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795418, 31.505486, 36.225513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374593, -0.017099, 0.927032,
		-0.115015, 0.991251, 0.064759,
		-0.920028, -0.130881, 0.369349,
		35.519409, 31.466221, 36.336319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105099, 32.123371, 36.710228>,  <36.163429, 31.557838, 36.077774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105099, 32.123371, 36.710228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826408, 31.841955, 36.766239>,  <35.659195, 31.673107, 36.799847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826408, 31.841955, 36.766239>,  <36.105099, 32.123371, 36.710228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826408, 31.841955, 36.766239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200072, -0.003127, 0.979776,
		-0.688871, 0.710652, 0.142937,
		-0.696727, -0.703537, 0.140027,
		35.617390, 31.630894, 36.808247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970490, 32.165569, 37.362286>,  <36.105099, 32.123371, 36.710228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970490, 32.165569, 37.362286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780205, 31.823132, 37.281487>,  <35.666035, 31.617668, 37.233006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780205, 31.823132, 37.281487>,  <35.970490, 32.165569, 37.362286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780205, 31.823132, 37.281487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211073, -0.334042, 0.918621,
		-0.853902, 0.394359, 0.339605,
		-0.475709, -0.856094, -0.202001,
		35.637493, 31.566303, 37.220886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498875, 32.018185, 37.986561>,  <35.970490, 32.165569, 37.362286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498875, 32.018185, 37.986561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567921, 31.672037, 37.798374>,  <35.609348, 31.464348, 37.685463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567921, 31.672037, 37.798374>,  <35.498875, 32.018185, 37.986561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567921, 31.672037, 37.798374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153741, -0.448108, 0.880661,
		-0.972917, -0.224347, 0.055692,
		0.172617, -0.865371, -0.470463,
		35.619705, 31.412426, 37.657234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147995, 31.431726, 38.352509>,  <35.498875, 32.018185, 37.986561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147995, 31.431726, 38.352509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441963, 31.250135, 38.150993>,  <35.618343, 31.141180, 38.030087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441963, 31.250135, 38.150993>,  <35.147995, 31.431726, 38.352509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441963, 31.250135, 38.150993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186679, -0.578747, 0.793853,
		-0.651958, -0.677462, -0.340583,
		0.734916, -0.453979, -0.503786,
		35.662437, 31.113941, 37.999859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137413, 30.803377, 38.644279>,  <35.147995, 31.431726, 38.352509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137413, 30.803377, 38.644279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480137, 30.783794, 38.438957>,  <35.685772, 30.772045, 38.315762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480137, 30.783794, 38.438957>,  <35.137413, 30.803377, 38.644279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480137, 30.783794, 38.438957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422942, -0.502729, 0.753912,
		-0.294964, -0.863057, -0.410036,
		0.856806, -0.048956, -0.513310,
		35.737179, 30.769108, 38.284966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271435, 30.176428, 38.638199>,  <35.137413, 30.803377, 38.644279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271435, 30.176428, 38.638199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620316, 30.362318, 38.577148>,  <35.829643, 30.473852, 38.540520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620316, 30.362318, 38.577148>,  <35.271435, 30.176428, 38.638199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620316, 30.362318, 38.577148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397139, -0.490626, 0.775608,
		0.285563, -0.737100, -0.612485,
		0.872201, 0.464727, -0.152626,
		35.881977, 30.501736, 38.531361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742241, 29.590267, 38.586254>,  <35.271435, 30.176428, 38.638199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742241, 29.590267, 38.586254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934753, 29.925846, 38.687866>,  <36.050262, 30.127193, 38.748833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934753, 29.925846, 38.687866>,  <35.742241, 29.590267, 38.586254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934753, 29.925846, 38.687866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297729, -0.429032, 0.852812,
		0.824452, -0.334813, -0.456266,
		0.481286, 0.838946, 0.254033,
		36.079140, 30.177530, 38.764076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406837, 29.524593, 38.606327>,  <35.742241, 29.590267, 38.586254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406837, 29.524593, 38.606327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324558, 29.822472, 38.860294>,  <36.275192, 30.001198, 39.012676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324558, 29.822472, 38.860294>,  <36.406837, 29.524593, 38.606327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324558, 29.822472, 38.860294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246092, -0.588581, 0.770072,
		0.947169, 0.314647, -0.062196,
		-0.205693, 0.744694, 0.634918,
		36.262852, 30.045879, 39.050770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834862, 29.399488, 39.188934>,  <36.406837, 29.524593, 38.606327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834862, 29.399488, 39.188934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596008, 29.680975, 39.342930>,  <36.452698, 29.849867, 39.435326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596008, 29.680975, 39.342930>,  <36.834862, 29.399488, 39.188934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596008, 29.680975, 39.342930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177653, -0.352006, 0.918984,
		0.782222, 0.617149, 0.085176,
		-0.597133, 0.703718, 0.384985,
		36.416870, 29.892090, 39.458424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077339, 29.372711, 39.807053>,  <36.834862, 29.399488, 39.188934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077339, 29.372711, 39.807053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796085, 29.651081, 39.865421>,  <36.627335, 29.818104, 39.900444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796085, 29.651081, 39.865421>,  <37.077339, 29.372711, 39.807053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796085, 29.651081, 39.865421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035673, -0.170432, 0.984723,
		0.710164, 0.697595, 0.095011,
		-0.703131, 0.695926, 0.145920,
		36.585144, 29.859859, 39.909199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266174, 29.559536, 40.473915>,  <37.077339, 29.372711, 39.807053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266174, 29.559536, 40.473915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891430, 29.673191, 40.392368>,  <36.666584, 29.741385, 40.343441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891430, 29.673191, 40.392368>,  <37.266174, 29.559536, 40.473915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891430, 29.673191, 40.392368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248784, -0.131804, 0.959549,
		0.245774, 0.949681, 0.194171,
		-0.936857, 0.284139, -0.203871,
		36.610374, 29.758432, 40.331207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172039, 30.152948, 40.801365>,  <37.266174, 29.559536, 40.473915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172039, 30.152948, 40.801365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833206, 29.946098, 40.752327>,  <36.629906, 29.821987, 40.722904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833206, 29.946098, 40.752327>,  <37.172039, 30.152948, 40.801365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833206, 29.946098, 40.752327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120902, -0.037129, 0.991970,
		-0.517526, 0.855103, -0.031070,
		-0.847083, -0.517127, -0.122599,
		36.579082, 29.790960, 40.715546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709373, 30.483036, 41.273441>,  <37.172039, 30.152948, 40.801365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709373, 30.483036, 41.273441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502056, 30.157187, 41.169315>,  <36.377666, 29.961678, 41.106842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502056, 30.157187, 41.169315>,  <36.709373, 30.483036, 41.273441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502056, 30.157187, 41.169315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484494, 0.028865, 0.874318,
		-0.704726, 0.579272, -0.409640,
		-0.518292, -0.814623, -0.260312,
		36.346569, 29.912800, 41.091221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059650, 30.660379, 41.397915>,  <36.709373, 30.483036, 41.273441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059650, 30.660379, 41.397915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092499, 30.261841, 41.407307>,  <36.112209, 30.022718, 41.412941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092499, 30.261841, 41.407307>,  <36.059650, 30.660379, 41.397915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092499, 30.261841, 41.407307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528195, -0.023534, 0.848797,
		-0.845143, -0.082109, -0.528197,
		0.082124, -0.996345, 0.023480,
		36.117138, 29.962936, 41.414352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340313, 30.399734, 41.498993>,  <36.059650, 30.660379, 41.397915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340313, 30.399734, 41.498993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588196, 30.100475, 41.593849>,  <35.736927, 29.920919, 41.650764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588196, 30.100475, 41.593849>,  <35.340313, 30.399734, 41.498993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588196, 30.100475, 41.593849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448346, -0.089466, 0.889371,
		-0.644166, -0.657472, -0.390872,
		0.619706, -0.748149, 0.237144,
		35.774109, 29.876030, 41.664993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987335, 29.895994, 41.722141>,  <35.340313, 30.399734, 41.498993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987335, 29.895994, 41.722141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335941, 29.805523, 41.896183>,  <35.545105, 29.751240, 42.000607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335941, 29.805523, 41.896183>,  <34.987335, 29.895994, 41.722141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335941, 29.805523, 41.896183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453086, -0.032014, 0.890892,
		-0.187571, -0.973560, -0.130379,
		0.871511, -0.226178, 0.435101,
		35.597393, 29.737669, 42.026714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912182, 29.242476, 42.095997>,  <34.987335, 29.895994, 41.722141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912182, 29.242476, 42.095997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225460, 29.422426, 42.267681>,  <35.413425, 29.530397, 42.370693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225460, 29.422426, 42.267681>,  <34.912182, 29.242476, 42.095997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225460, 29.422426, 42.267681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361306, -0.232511, 0.902993,
		0.506033, -0.862292, -0.019557,
		0.783191, 0.449879, 0.429210,
		35.460419, 29.557390, 42.396442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151306, 28.726063, 42.566307>,  <34.912182, 29.242476, 42.095997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151306, 28.726063, 42.566307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282207, 29.078007, 42.704147>,  <35.360748, 29.289173, 42.786850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282207, 29.078007, 42.704147>,  <35.151306, 28.726063, 42.566307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282207, 29.078007, 42.704147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213451, -0.286421, 0.934025,
		0.920513, -0.379218, 0.094075,
		0.327254, 0.879862, 0.344598,
		35.380383, 29.341965, 42.807526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462925, 28.502947, 43.115158>,  <35.151306, 28.726063, 42.566307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462925, 28.502947, 43.115158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410454, 28.896690, 43.162201>,  <35.378971, 29.132936, 43.190426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410454, 28.896690, 43.162201>,  <35.462925, 28.502947, 43.115158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410454, 28.896690, 43.162201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458515, -0.165426, 0.873154,
		0.878952, 0.060612, 0.473043,
		-0.131177, 0.984358, 0.117610,
		35.371101, 29.191998, 43.197483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496075, 28.575197, 43.837688>,  <35.462925, 28.502947, 43.115158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496075, 28.575197, 43.837688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354729, 28.928902, 43.715565>,  <35.269920, 29.141125, 43.642288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354729, 28.928902, 43.715565>,  <35.496075, 28.575197, 43.837688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354729, 28.928902, 43.715565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246844, 0.226667, 0.942173,
		0.902332, 0.408295, 0.138179,
		-0.353364, 0.884261, -0.305314,
		35.248718, 29.194180, 43.623970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896591, 29.087221, 44.035061>,  <35.496075, 28.575197, 43.837688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896591, 29.087221, 44.035061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541431, 29.268770, 44.005043>,  <35.328335, 29.377699, 43.987030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541431, 29.268770, 44.005043>,  <35.896591, 29.087221, 44.035061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541431, 29.268770, 44.005043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001306, 0.165617, 0.986189,
		0.460034, 0.875540, -0.147644,
		-0.887901, 0.453873, -0.075046,
		35.275063, 29.404932, 43.982529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939598, 29.639286, 44.411301>,  <35.896591, 29.087221, 44.035061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939598, 29.639286, 44.411301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541485, 29.605513, 44.392223>,  <35.302616, 29.585249, 44.380775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541485, 29.605513, 44.392223>,  <35.939598, 29.639286, 44.411301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541485, 29.605513, 44.392223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070543, 0.292917, 0.953532,
		-0.066541, 0.952402, -0.297493,
		-0.995287, -0.084435, -0.047695,
		35.242897, 29.580181, 44.377914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731644, 30.091499, 44.850525>,  <35.939598, 29.639286, 44.411301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731644, 30.091499, 44.850525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399227, 29.871817, 44.815323>,  <35.199776, 29.740007, 44.794201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399227, 29.871817, 44.815323>,  <35.731644, 30.091499, 44.850525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399227, 29.871817, 44.815323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256138, 0.237423, 0.937029,
		-0.493725, 0.801252, -0.337981,
		-0.831041, -0.549204, -0.088010,
		35.149914, 29.707056, 44.788921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105095, 30.533197, 45.004196>,  <35.731644, 30.091499, 44.850525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105095, 30.533197, 45.004196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990517, 30.161654, 45.098148>,  <34.921772, 29.938726, 45.154518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990517, 30.161654, 45.098148>,  <35.105095, 30.533197, 45.004196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990517, 30.161654, 45.098148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392108, 0.337334, 0.855837,
		-0.874187, 0.153049, -0.460840,
		-0.286442, -0.928861, 0.234882,
		34.904583, 29.882996, 45.168613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531582, 30.577785, 45.518253>,  <35.105095, 30.533197, 45.004196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531582, 30.577785, 45.518253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583721, 30.182219, 45.546688>,  <34.615005, 29.944880, 45.563747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583721, 30.182219, 45.546688>,  <34.531582, 30.577785, 45.518253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583721, 30.182219, 45.546688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451089, 0.004695, 0.892467,
		-0.882909, -0.148401, -0.445477,
		0.130351, -0.988916, 0.071088,
		34.622826, 29.885544, 45.568016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933781, 30.258066, 45.661758>,  <34.531582, 30.577785, 45.518253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933781, 30.258066, 45.661758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212029, 30.009686, 45.806274>,  <34.378979, 29.860657, 45.892982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212029, 30.009686, 45.806274>,  <33.933781, 30.258066, 45.661758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212029, 30.009686, 45.806274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464881, -0.005661, 0.885355,
		-0.547717, -0.783829, -0.292606,
		0.695623, -0.620951, 0.361286,
		34.420715, 29.823400, 45.914661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528793, 29.777901, 45.977726>,  <33.933781, 30.258066, 45.661758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528793, 29.777901, 45.977726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895111, 29.744230, 46.134823>,  <34.114902, 29.724028, 46.229080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895111, 29.744230, 46.134823>,  <33.528793, 29.777901, 45.977726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895111, 29.744230, 46.134823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397826, -0.055351, 0.915790,
		-0.055350, -0.994912, -0.084177,
		-0.915790, 0.084177, -0.392739,
		34.169849, 29.718977, 46.252644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422142, 29.215302, 46.491806>,  <33.528793, 29.777901, 45.977726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422142, 29.215302, 46.491806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763382, 29.398338, 46.592075>,  <33.968124, 29.508160, 46.652237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763382, 29.398338, 46.592075>,  <33.422142, 29.215302, 46.491806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763382, 29.398338, 46.592075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165539, -0.218243, 0.961752,
		0.494796, -0.861964, -0.110433,
		0.853096, 0.457590, 0.250675,
		34.019310, 29.535616, 46.667278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800110, 28.811750, 47.074944>,  <33.422142, 29.215302, 46.491806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800110, 28.811750, 47.074944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013233, 29.145588, 47.130905>,  <34.141106, 29.345890, 47.164482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013233, 29.145588, 47.130905>,  <33.800110, 28.811750, 47.074944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013233, 29.145588, 47.130905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190515, -0.042785, 0.980751,
		0.824514, -0.549203, 0.136207,
		0.532804, 0.834593, 0.139908,
		34.173073, 29.395966, 47.172878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319698, 28.721754, 47.612640>,  <33.800110, 28.811750, 47.074944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319698, 28.721754, 47.612640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212341, 29.106934, 47.602062>,  <34.147926, 29.338041, 47.595715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212341, 29.106934, 47.602062>,  <34.319698, 28.721754, 47.612640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212341, 29.106934, 47.602062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210396, -0.031804, 0.977099,
		0.940053, 0.267809, 0.211136,
		-0.268391, 0.962947, -0.026448,
		34.131824, 29.395817, 47.594128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740921, 29.037928, 48.072807>,  <34.319698, 28.721754, 47.612640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740921, 29.037928, 48.072807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426479, 29.279327, 48.019390>,  <34.237816, 29.424168, 47.987339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426479, 29.279327, 48.019390>,  <34.740921, 29.037928, 48.072807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426479, 29.279327, 48.019390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041973, 0.163432, 0.985662,
		0.616669, 0.780436, -0.103144,
		-0.786103, 0.603498, -0.133540,
		34.190647, 29.460377, 47.979328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916687, 29.700821, 48.462017>,  <34.740921, 29.037928, 48.072807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916687, 29.700821, 48.462017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520966, 29.690229, 48.404629>,  <34.283535, 29.683874, 48.370197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520966, 29.690229, 48.404629>,  <34.916687, 29.700821, 48.462017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520966, 29.690229, 48.404629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145483, 0.252776, 0.956524,
		0.010940, 0.967163, -0.253923,
		-0.989300, -0.026477, -0.143471,
		34.224174, 29.682287, 48.361588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648266, 30.380142, 48.775692>,  <34.916687, 29.700821, 48.462017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648266, 30.380142, 48.775692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379135, 30.085274, 48.750748>,  <34.217659, 29.908354, 48.735779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379135, 30.085274, 48.750748>,  <34.648266, 30.380142, 48.775692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379135, 30.085274, 48.750748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349532, 0.242461, 0.905008,
		-0.652024, 0.630708, -0.420798,
		-0.672823, -0.737170, -0.062362,
		34.177288, 29.864122, 48.732040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462822, 30.998774, 49.165020>,  <34.648266, 30.380142, 48.775692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462822, 30.998774, 49.165020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781609, 31.111835, 49.378540>,  <34.972881, 31.179672, 49.506653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781609, 31.111835, 49.378540>,  <34.462822, 30.998774, 49.165020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781609, 31.111835, 49.378540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510433, 0.157348, -0.845399,
		-0.322950, 0.946228, -0.018875,
		0.796970, 0.282656, 0.533802,
		35.020699, 31.196632, 49.538681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569927, 31.605307, 48.884949>,  <34.462822, 30.998774, 49.165020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569927, 31.605307, 48.884949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901253, 31.435293, 49.030960>,  <35.100048, 31.333284, 49.118565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901253, 31.435293, 49.030960>,  <34.569927, 31.605307, 48.884949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901253, 31.435293, 49.030960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474246, 0.185005, -0.860734,
		0.298312, 0.886069, 0.354813,
		0.828312, -0.425036, 0.365026,
		35.149746, 31.307783, 49.140469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038296, 31.961508, 48.659863>,  <34.569927, 31.605307, 48.884949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038296, 31.961508, 48.659863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264385, 31.651310, 48.772385>,  <35.400040, 31.465191, 48.839897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264385, 31.651310, 48.772385>,  <35.038296, 31.961508, 48.659863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264385, 31.651310, 48.772385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472543, 0.024853, -0.880957,
		0.676187, 0.630864, 0.380502,
		0.565221, -0.775495, 0.281305,
		35.433952, 31.418661, 48.856777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793316, 32.159889, 48.514503>,  <35.038296, 31.961508, 48.659863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793316, 32.159889, 48.514503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785305, 31.760550, 48.536037>,  <35.780499, 31.520947, 48.548958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785305, 31.760550, 48.536037>,  <35.793316, 32.159889, 48.514503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785305, 31.760550, 48.536037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717788, -0.051842, -0.694328,
		0.695973, 0.024734, 0.717642,
		-0.020030, -0.998349, 0.053835,
		35.779297, 31.461044, 48.552189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525593, 31.913916, 48.635426>,  <35.793316, 32.159889, 48.514503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525593, 31.913916, 48.635426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293724, 31.628578, 48.477882>,  <36.154602, 31.457375, 48.383358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293724, 31.628578, 48.477882>,  <36.525593, 31.913916, 48.635426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293724, 31.628578, 48.477882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548457, 0.015916, -0.836027,
		0.602645, -0.700632, 0.382013,
		-0.579667, -0.713345, -0.393858,
		36.119823, 31.414576, 48.359726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978474, 31.455488, 48.317421>,  <36.525593, 31.913916, 48.635426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978474, 31.455488, 48.317421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629379, 31.365692, 48.144012>,  <36.419922, 31.311815, 48.039967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629379, 31.365692, 48.144012>,  <36.978474, 31.455488, 48.317421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629379, 31.365692, 48.144012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451714, -0.034468, -0.891497,
		0.185188, -0.973867, 0.131486,
		-0.872731, -0.224489, -0.433526,
		36.367561, 31.298346, 48.013954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081745, 30.949871, 47.817772>,  <36.978474, 31.455488, 48.317421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081745, 30.949871, 47.817772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737579, 31.086411, 47.666420>,  <36.531078, 31.168333, 47.575611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737579, 31.086411, 47.666420>,  <37.081745, 30.949871, 47.817772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737579, 31.086411, 47.666420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350712, -0.142046, -0.925648,
		-0.369714, -0.929142, 0.002503,
		-0.860414, 0.341347, -0.378378,
		36.479454, 31.188814, 47.552906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019802, 30.525957, 47.282940>,  <37.081745, 30.949871, 47.817772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019802, 30.525957, 47.282940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766537, 30.822931, 47.195404>,  <36.614578, 31.001116, 47.142883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766537, 30.822931, 47.195404>,  <37.019802, 30.525957, 47.282940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766537, 30.822931, 47.195404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243301, -0.077492, -0.966850,
		-0.734784, -0.665418, -0.131570,
		-0.633164, 0.742437, -0.218837,
		36.576588, 31.045662, 47.129753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854454, 30.333055, 46.553032>,  <37.019802, 30.525957, 47.282940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854454, 30.333055, 46.553032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747265, 30.717007, 46.586067>,  <36.682949, 30.947378, 46.605888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747265, 30.717007, 46.586067>,  <36.854454, 30.333055, 46.553032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747265, 30.717007, 46.586067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049378, 0.099299, -0.993832,
		-0.962159, -0.262246, -0.074007,
		-0.267977, 0.959878, 0.082592,
		36.666870, 31.004971, 46.610844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397621, 30.505316, 46.040119>,  <36.854454, 30.333055, 46.553032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397621, 30.505316, 46.040119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503422, 30.877947, 46.139881>,  <36.566902, 31.101526, 46.199738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503422, 30.877947, 46.139881>,  <36.397621, 30.505316, 46.040119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503422, 30.877947, 46.139881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087308, 0.280681, -0.955822,
		-0.960425, 0.231043, 0.155575,
		0.264503, 0.931578, 0.249401,
		36.582771, 31.157421, 46.214703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873806, 30.973722, 45.775673>,  <36.397621, 30.505316, 46.040119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873806, 30.973722, 45.775673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216808, 31.175852, 45.814312>,  <36.422611, 31.297129, 45.837498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216808, 31.175852, 45.814312>,  <35.873806, 30.973722, 45.775673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216808, 31.175852, 45.814312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045570, 0.261632, -0.964091,
		-0.512451, 0.822312, 0.247378,
		0.857506, 0.505323, 0.096600,
		36.474060, 31.327448, 45.843292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833000, 31.455292, 45.337265>,  <35.873806, 30.973722, 45.775673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833000, 31.455292, 45.337265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227242, 31.454958, 45.404896>,  <36.463787, 31.454758, 45.445473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227242, 31.454958, 45.404896>,  <35.833000, 31.455292, 45.337265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227242, 31.454958, 45.404896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162864, 0.273335, -0.948031,
		-0.045425, 0.961919, 0.269535,
		0.985602, -0.000834, 0.169078,
		36.522923, 31.454708, 45.455620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063778, 32.139137, 45.051609>,  <35.833000, 31.455292, 45.337265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063778, 32.139137, 45.051609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396385, 31.921217, 45.095009>,  <36.595951, 31.790464, 45.121048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396385, 31.921217, 45.095009>,  <36.063778, 32.139137, 45.051609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396385, 31.921217, 45.095009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300680, 0.277184, -0.912557,
		0.467087, 0.791431, 0.394294,
		0.831517, -0.544800, 0.108499,
		36.645840, 31.757776, 45.127560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518501, 32.563206, 44.936176>,  <36.063778, 32.139137, 45.051609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518501, 32.563206, 44.936176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698627, 32.210014, 44.883175>,  <36.806702, 31.998098, 44.851372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698627, 32.210014, 44.883175>,  <36.518501, 32.563206, 44.936176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698627, 32.210014, 44.883175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314049, 0.295558, -0.902230,
		0.835817, 0.364673, 0.410394,
		0.450314, -0.882983, -0.132507,
		36.833721, 31.945120, 44.843422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987812, 32.730206, 44.486187>,  <36.518501, 32.563206, 44.936176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987812, 32.730206, 44.486187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009899, 32.330986, 44.474533>,  <37.023151, 32.091454, 44.467541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009899, 32.330986, 44.474533>,  <36.987812, 32.730206, 44.486187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009899, 32.330986, 44.474533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258440, 0.042468, -0.965094,
		0.964448, 0.045766, 0.260281,
		0.055222, -0.998049, -0.029130,
		37.026466, 32.031570, 44.465794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641319, 32.544426, 44.241985>,  <36.987812, 32.730206, 44.486187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641319, 32.544426, 44.241985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388760, 32.244431, 44.163151>,  <37.237225, 32.064434, 44.115849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388760, 32.244431, 44.163151>,  <37.641319, 32.544426, 44.241985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388760, 32.244431, 44.163151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235970, 0.056283, -0.970129,
		0.738683, -0.659047, 0.141438,
		-0.631400, -0.749993, -0.197090,
		37.199341, 32.019432, 44.104023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940369, 32.286819, 43.725876>,  <37.641319, 32.544426, 44.241985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940369, 32.286819, 43.725876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563126, 32.160324, 43.684788>,  <37.336781, 32.084427, 43.660137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563126, 32.160324, 43.684788>,  <37.940369, 32.286819, 43.725876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563126, 32.160324, 43.684788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095620, 0.037927, -0.994695,
		0.318455, -0.947922, -0.005531,
		-0.943103, -0.316237, -0.102718,
		37.280193, 32.065453, 43.653973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995529, 31.644674, 43.210777>,  <37.940369, 32.286819, 43.725876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995529, 31.644674, 43.210777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617096, 31.773756, 43.199577>,  <37.390034, 31.851204, 43.192856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617096, 31.773756, 43.199577>,  <37.995529, 31.644674, 43.210777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617096, 31.773756, 43.199577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025357, -0.012391, -0.999602,
		-0.322921, -0.946419, 0.003540,
		-0.946086, 0.322703, -0.028000,
		37.333271, 31.870567, 43.191177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750629, 31.353497, 42.633377>,  <37.995529, 31.644674, 43.210777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750629, 31.353497, 42.633377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474442, 31.631006, 42.715286>,  <37.308731, 31.797512, 42.764431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474442, 31.631006, 42.715286>,  <37.750629, 31.353497, 42.633377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474442, 31.631006, 42.715286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179065, 0.110346, -0.977630,
		-0.700849, -0.711690, 0.048041,
		-0.690468, 0.693774, 0.204775,
		37.267300, 31.839138, 42.776718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256405, 31.179161, 42.191727>,  <37.750629, 31.353497, 42.633377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256405, 31.179161, 42.191727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182365, 31.560881, 42.285576>,  <37.137943, 31.789913, 42.341885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182365, 31.560881, 42.285576>,  <37.256405, 31.179161, 42.191727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182365, 31.560881, 42.285576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121533, 0.214691, -0.969091,
		-0.975176, -0.207893, 0.076239,
		-0.185100, 0.954300, 0.234627,
		37.126835, 31.847170, 42.355965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603901, 31.294413, 41.858604>,  <37.256405, 31.179161, 42.191727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603901, 31.294413, 41.858604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790802, 31.645712, 41.899319>,  <36.902943, 31.856491, 41.923748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790802, 31.645712, 41.899319>,  <36.603901, 31.294413, 41.858604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790802, 31.645712, 41.899319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090408, 0.161985, -0.982643,
		-0.879490, 0.449938, 0.155088,
		0.467250, 0.878246, 0.101786,
		36.930977, 31.909185, 41.929855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208771, 31.630615, 41.453274>,  <36.603901, 31.294413, 41.858604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208771, 31.630615, 41.453274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520344, 31.875069, 41.509533>,  <36.707287, 32.021740, 41.543289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520344, 31.875069, 41.509533>,  <36.208771, 31.630615, 41.453274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520344, 31.875069, 41.509533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092324, 0.333589, -0.938187,
		-0.620275, 0.717799, 0.316265,
		0.778932, 0.611133, 0.140646,
		36.754025, 32.058407, 41.551727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044365, 32.072418, 41.006050>,  <36.208771, 31.630615, 41.453274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044365, 32.072418, 41.006050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429501, 32.128658, 41.098282>,  <36.660583, 32.162403, 41.153622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429501, 32.128658, 41.098282>,  <36.044365, 32.072418, 41.006050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429501, 32.128658, 41.098282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185070, 0.278277, -0.942503,
		-0.196680, 0.950155, 0.241916,
		0.962843, 0.140600, 0.230577,
		36.718353, 32.170837, 41.167454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196247, 32.703651, 40.778790>,  <36.044365, 32.072418, 41.006050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196247, 32.703651, 40.778790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570850, 32.566250, 40.806931>,  <36.795612, 32.483807, 40.823814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570850, 32.566250, 40.806931>,  <36.196247, 32.703651, 40.778790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570850, 32.566250, 40.806931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202849, 0.367103, -0.907793,
		0.286005, 0.864430, 0.413476,
		0.936511, -0.343506, 0.070356,
		36.851803, 32.463200, 40.828037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580067, 33.171200, 40.451023>,  <36.196247, 32.703651, 40.778790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580067, 33.171200, 40.451023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782349, 32.826611, 40.469467>,  <36.903717, 32.619858, 40.480534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782349, 32.826611, 40.469467>,  <36.580067, 33.171200, 40.451023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782349, 32.826611, 40.469467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400495, 0.187090, -0.896995,
		0.764113, 0.472078, 0.439628,
		0.505702, -0.861475, 0.046107,
		36.934059, 32.568169, 40.483299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279842, 33.314869, 40.277657>,  <36.580067, 33.171200, 40.451023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279842, 33.314869, 40.277657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223034, 32.924919, 40.209007>,  <37.188950, 32.690948, 40.167816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223034, 32.924919, 40.209007>,  <37.279842, 33.314869, 40.277657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223034, 32.924919, 40.209007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454009, 0.089915, -0.886449,
		0.879606, -0.203812, 0.429831,
		-0.142020, -0.974872, -0.171622,
		37.180428, 32.632458, 40.157520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012169, 33.024796, 40.185070>,  <37.279842, 33.314869, 40.277657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012169, 33.024796, 40.185070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724159, 32.791744, 40.034279>,  <37.551353, 32.651913, 39.943802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724159, 32.791744, 40.034279>,  <38.012169, 33.024796, 40.185070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724159, 32.791744, 40.034279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510185, -0.076191, -0.856683,
		0.470403, -0.809162, 0.352106,
		-0.720023, -0.582625, -0.376982,
		37.508152, 32.616959, 39.921185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318718, 32.494049, 39.840069>,  <38.012169, 33.024796, 40.185070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318718, 32.494049, 39.840069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966820, 32.513248, 39.650860>,  <37.755680, 32.524769, 39.537334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966820, 32.513248, 39.650860>,  <38.318718, 32.494049, 39.840069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966820, 32.513248, 39.650860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473992, 0.166430, -0.864657,
		0.037223, -0.984884, -0.169166,
		-0.879742, 0.047998, -0.473023,
		37.702896, 32.527649, 39.508953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394276, 32.176910, 39.163567>,  <38.318718, 32.494049, 39.840069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394276, 32.176910, 39.163567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077023, 32.417370, 39.124462>,  <37.886669, 32.561646, 39.100998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077023, 32.417370, 39.124462>,  <38.394276, 32.176910, 39.163567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077023, 32.417370, 39.124462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392038, 0.381075, -0.837310,
		-0.466094, -0.702425, -0.537917,
		-0.793134, 0.601149, -0.097761,
		37.839081, 32.597713, 39.095135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411358, 32.382561, 38.482765>,  <38.394276, 32.176910, 39.163567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411358, 32.382561, 38.482765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116177, 32.627338, 38.596565>,  <37.939068, 32.774204, 38.664845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116177, 32.627338, 38.596565>,  <38.411358, 32.382561, 38.482765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116177, 32.627338, 38.596565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238186, 0.630631, -0.738628,
		-0.631418, -0.477310, -0.611135,
		-0.737956, 0.611947, 0.284503,
		37.894791, 32.810921, 38.681915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049805, 32.499573, 37.793633>,  <38.411358, 32.382561, 38.482765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049805, 32.499573, 37.793633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972298, 32.797554, 38.048977>,  <37.925793, 32.976341, 38.202183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972298, 32.797554, 38.048977>,  <38.049805, 32.499573, 37.793633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972298, 32.797554, 38.048977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421019, 0.650868, -0.631754,
		-0.886114, 0.146349, -0.439755,
		-0.193766, 0.744951, 0.638359,
		37.914169, 33.021038, 38.240486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835297, 33.011417, 37.367985>,  <38.049805, 32.499573, 37.793633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835297, 33.011417, 37.367985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953739, 33.206188, 37.696674>,  <38.024807, 33.323051, 37.893887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953739, 33.206188, 37.696674>,  <37.835297, 33.011417, 37.367985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953739, 33.206188, 37.696674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491437, 0.660027, -0.568202,
		-0.819029, 0.572074, -0.043853,
		0.296109, 0.486925, 0.821720,
		38.042572, 33.352264, 37.943192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720016, 33.702072, 37.269749>,  <37.835297, 33.011417, 37.367985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720016, 33.702072, 37.269749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956356, 33.752533, 37.588490>,  <38.098160, 33.782810, 37.779736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956356, 33.752533, 37.588490>,  <37.720016, 33.702072, 37.269749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956356, 33.752533, 37.588490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446439, 0.771575, -0.453171,
		-0.672001, 0.623505, 0.399570,
		0.590852, 0.126148, 0.796857,
		38.133614, 33.790379, 37.827545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792210, 34.469433, 37.451706>,  <37.720016, 33.702072, 37.269749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792210, 34.469433, 37.451706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101765, 34.283497, 37.623764>,  <38.287498, 34.171936, 37.726997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101765, 34.283497, 37.623764>,  <37.792210, 34.469433, 37.451706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101765, 34.283497, 37.623764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633316, 0.565188, -0.528652,
		0.002626, 0.681535, 0.731781,
		0.773889, -0.464837, 0.430143,
		38.333931, 34.144047, 37.752808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139278, 34.911320, 37.862850>,  <37.792210, 34.469433, 37.451706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139278, 34.911320, 37.862850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406105, 34.628773, 37.768139>,  <38.566200, 34.459244, 37.711311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406105, 34.628773, 37.768139>,  <38.139278, 34.911320, 37.862850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406105, 34.628773, 37.768139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552394, 0.682221, -0.478993,
		0.499879, 0.188728, 0.845282,
		0.667070, -0.706368, -0.236776,
		38.606224, 34.416862, 37.697105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831913, 35.254036, 37.866295>,  <38.139278, 34.911320, 37.862850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831913, 35.254036, 37.866295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931911, 34.921051, 37.668503>,  <38.991909, 34.721260, 37.549828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931911, 34.921051, 37.668503>,  <38.831913, 35.254036, 37.866295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931911, 34.921051, 37.668503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507557, 0.547576, -0.665242,
		0.824553, -0.084669, 0.559413,
		0.249996, -0.832461, -0.494480,
		39.006908, 34.671314, 37.520161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630020, 35.295818, 37.716114>,  <38.831913, 35.254036, 37.866295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630020, 35.295818, 37.716114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448902, 35.039799, 37.467819>,  <39.340233, 34.886185, 37.318844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448902, 35.039799, 37.467819>,  <39.630020, 35.295818, 37.716114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448902, 35.039799, 37.467819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507456, 0.387439, -0.769662,
		0.733121, -0.663492, 0.149369,
		-0.452793, -0.640054, -0.620733,
		39.313065, 34.847782, 37.281601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227219, 35.188435, 37.214951>,  <39.630020, 35.295818, 37.716114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227219, 35.188435, 37.214951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905178, 35.040833, 37.029202>,  <39.711952, 34.952271, 36.917751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905178, 35.040833, 37.029202>,  <40.227219, 35.188435, 37.214951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905178, 35.040833, 37.029202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353255, 0.330613, -0.875160,
		0.476467, -0.868638, -0.135825,
		-0.805103, -0.369004, -0.464377,
		39.663647, 34.930130, 36.889889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485119, 34.853352, 36.641197>,  <40.227219, 35.188435, 37.214951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485119, 34.853352, 36.641197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104958, 34.956554, 36.571732>,  <39.876862, 35.018475, 36.530052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104958, 34.956554, 36.571732>,  <40.485119, 34.853352, 36.641197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104958, 34.956554, 36.571732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281313, 0.475039, -0.833787,
		-0.132627, -0.841290, -0.524062,
		-0.950407, 0.258008, -0.173663,
		39.819836, 35.033958, 36.519634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317688, 34.513802, 35.996120>,  <40.485119, 34.853352, 36.641197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317688, 34.513802, 35.996120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068199, 34.823551, 36.038681>,  <39.918507, 35.009399, 36.064217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068199, 34.823551, 36.038681>,  <40.317688, 34.513802, 35.996120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068199, 34.823551, 36.038681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137145, 0.242434, -0.960425,
		-0.769524, -0.584441, -0.257412,
		-0.623718, 0.774374, 0.106406,
		39.881084, 35.055862, 36.070602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740757, 34.439934, 35.519096>,  <40.317688, 34.513802, 35.996120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740757, 34.439934, 35.519096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860649, 34.806503, 35.625175>,  <39.932583, 35.026443, 35.688824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860649, 34.806503, 35.625175>,  <39.740757, 34.439934, 35.519096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860649, 34.806503, 35.625175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318167, 0.166039, -0.933381,
		-0.899406, 0.364139, -0.241809,
		0.299731, 0.916425, 0.265194,
		39.950569, 35.081432, 35.704735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433064, 34.909996, 34.994389>,  <39.740757, 34.439934, 35.519096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433064, 34.909996, 34.994389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723843, 35.096382, 35.196152>,  <39.898312, 35.208214, 35.317207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723843, 35.096382, 35.196152>,  <39.433064, 34.909996, 34.994389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723843, 35.096382, 35.196152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313446, 0.428392, -0.847486,
		-0.610982, 0.774181, 0.165363,
		0.726947, 0.465967, 0.504403,
		39.941925, 35.236172, 35.347473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626823, 35.451965, 34.672966>,  <39.433064, 34.909996, 34.994389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626823, 35.451965, 34.672966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947807, 35.340355, 34.883945>,  <40.140400, 35.273388, 35.010532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947807, 35.340355, 34.883945>,  <39.626823, 35.451965, 34.672966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947807, 35.340355, 34.883945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577621, 0.141492, -0.803949,
		0.149696, 0.949801, 0.274715,
		0.802462, -0.279029, 0.527445,
		40.188545, 35.256645, 35.042179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121166, 35.945606, 34.550770>,  <39.626823, 35.451965, 34.672966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121166, 35.945606, 34.550770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304016, 35.604462, 34.651703>,  <40.413727, 35.399776, 34.712261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304016, 35.604462, 34.651703>,  <40.121166, 35.945606, 34.550770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304016, 35.604462, 34.651703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659718, 0.134867, -0.739313,
		0.596497, 0.504426, 0.624296,
		0.457126, -0.852857, 0.252331,
		40.441154, 35.348606, 34.727402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713562, 36.153549, 34.789795>,  <40.121166, 35.945606, 34.550770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713562, 36.153549, 34.789795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726215, 35.780254, 34.646648>,  <40.733807, 35.556278, 34.560760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726215, 35.780254, 34.646648>,  <40.713562, 36.153549, 34.789795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726215, 35.780254, 34.646648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696180, 0.277482, -0.662071,
		0.717171, -0.228201, 0.658476,
		0.031630, -0.933235, -0.357871,
		40.735706, 35.500282, 34.539288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446884, 35.869324, 34.974434>,  <40.713562, 36.153549, 34.789795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446884, 35.869324, 34.974434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231117, 35.759014, 34.656193>,  <41.101658, 35.692829, 34.465248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231117, 35.759014, 34.656193>,  <41.446884, 35.869324, 34.974434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231117, 35.759014, 34.656193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648277, 0.466971, -0.601394,
		0.537370, -0.840171, -0.073115,
		-0.539417, -0.275772, -0.795600,
		41.069290, 35.676281, 34.417511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788998, 35.342255, 34.528133>,  <41.446884, 35.869324, 34.974434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788998, 35.342255, 34.528133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536526, 35.582676, 34.332031>,  <41.385044, 35.726929, 34.214371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536526, 35.582676, 34.332031>,  <41.788998, 35.342255, 34.528133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536526, 35.582676, 34.332031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734730, 0.260756, -0.626241,
		-0.248565, -0.755476, -0.606194,
		-0.631179, 0.601051, -0.490256,
		41.347172, 35.762993, 34.184956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193520, 34.828480, 34.327911>,  <41.788998, 35.342255, 34.528133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193520, 34.828480, 34.327911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565762, 34.819283, 34.474030>,  <41.789108, 34.813763, 34.561703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565762, 34.819283, 34.474030>,  <41.193520, 34.828480, 34.327911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565762, 34.819283, 34.474030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074419, -0.989065, 0.127330,
		0.358378, -0.145679, -0.922140,
		0.930606, -0.022993, 0.365300,
		41.844944, 34.812386, 34.583618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513775, 34.273281, 34.023697>,  <41.193520, 34.828480, 34.327911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513775, 34.273281, 34.023697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737572, 34.340946, 34.348251>,  <41.871849, 34.381546, 34.542984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737572, 34.340946, 34.348251>,  <41.513775, 34.273281, 34.023697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737572, 34.340946, 34.348251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010931, -0.977361, 0.211298,
		0.828763, -0.127089, -0.544977,
		0.559493, 0.169159, 0.811390,
		41.905418, 34.391693, 34.591667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109718, 33.898548, 33.907124>,  <41.513775, 34.273281, 34.023697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109718, 33.898548, 33.907124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059727, 33.978329, 34.295887>,  <42.029732, 34.026196, 34.529144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059727, 33.978329, 34.295887>,  <42.109718, 33.898548, 33.907124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059727, 33.978329, 34.295887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192883, -0.956011, 0.220994,
		0.973230, 0.215084, 0.081012,
		-0.124981, 0.199452, 0.971905,
		42.022232, 34.038166, 34.587460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605282, 33.478485, 34.160828>,  <42.109718, 33.898548, 33.907124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605282, 33.478485, 34.160828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.359993, 33.590908, 34.456116>,  <42.212818, 33.658360, 34.633289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.359993, 33.590908, 34.456116>,  <42.605282, 33.478485, 34.160828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359993, 33.590908, 34.456116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117127, -0.956582, 0.266893,
		0.781179, 0.077200, 0.619516,
		-0.613222, 0.281053, 0.738219,
		42.176025, 33.675224, 34.677582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790939, 33.113396, 34.759174>,  <42.605282, 33.478485, 34.160828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790939, 33.113396, 34.759174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421345, 33.230919, 34.857086>,  <42.199589, 33.301434, 34.915833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421345, 33.230919, 34.857086>,  <42.790939, 33.113396, 34.759174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421345, 33.230919, 34.857086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215972, -0.929163, 0.300022,
		0.315591, 0.224351, 0.921992,
		-0.923990, 0.293809, 0.244782,
		42.144146, 33.319061, 34.930519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605965, 32.730900, 35.366859>,  <42.790939, 33.113396, 34.759174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605965, 32.730900, 35.366859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261047, 32.853916, 35.205925>,  <42.054096, 32.927727, 35.109364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261047, 32.853916, 35.205925>,  <42.605965, 32.730900, 35.366859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261047, 32.853916, 35.205925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433078, -0.859626, 0.271083,
		-0.262486, 0.407994, 0.874438,
		-0.862290, 0.307545, -0.402333,
		42.002361, 32.946178, 35.085224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121761, 32.592224, 35.822727>,  <42.605965, 32.730900, 35.366859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121761, 32.592224, 35.822727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928871, 32.612164, 35.472878>,  <41.813137, 32.624126, 35.262966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928871, 32.612164, 35.472878>,  <42.121761, 32.592224, 35.822727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928871, 32.612164, 35.472878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357016, -0.922894, 0.144244,
		-0.799999, 0.381814, 0.462838,
		-0.482225, 0.049845, -0.874628,
		41.784203, 32.627117, 35.210487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461067, 32.238846, 35.986359>,  <42.121761, 32.592224, 35.822727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461067, 32.238846, 35.986359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496296, 32.247818, 35.588013>,  <41.517433, 32.253201, 35.349007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496296, 32.247818, 35.588013>,  <41.461067, 32.238846, 35.986359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496296, 32.247818, 35.588013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574087, -0.815869, -0.069153,
		-0.814044, 0.577801, -0.058979,
		0.088076, 0.022435, -0.995861,
		41.522720, 32.254547, 35.289253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822144, 32.025352, 35.710430>,  <41.461067, 32.238846, 35.986359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822144, 32.025352, 35.710430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107651, 31.959021, 35.438244>,  <41.278954, 31.919220, 35.274933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107651, 31.959021, 35.438244>,  <40.822144, 32.025352, 35.710430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107651, 31.959021, 35.438244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399602, -0.894336, -0.201200,
		-0.575203, 0.415527, -0.704613,
		0.713764, -0.165834, -0.680470,
		41.321781, 31.909271, 35.234104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504154, 31.723665, 35.106583>,  <40.822144, 32.025352, 35.710430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504154, 31.723665, 35.106583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881905, 31.610771, 35.039066>,  <41.108555, 31.543036, 34.998554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881905, 31.610771, 35.039066>,  <40.504154, 31.723665, 35.106583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881905, 31.610771, 35.039066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316491, -0.919444, -0.233360,
		-0.089336, 0.273802, -0.957628,
		0.944380, -0.282233, -0.168795,
		41.165218, 31.526102, 34.988426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416271, 31.159822, 34.653103>,  <40.504154, 31.723665, 35.106583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416271, 31.159822, 34.653103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802162, 31.142246, 34.756931>,  <41.033695, 31.131701, 34.819229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802162, 31.142246, 34.756931>,  <40.416271, 31.159822, 34.653103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802162, 31.142246, 34.756931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022598, -0.968514, -0.247933,
		0.262291, 0.245053, -0.933356,
		0.964724, -0.043939, 0.259570,
		41.091579, 31.129065, 34.834801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839748, 30.866652, 34.041695>,  <40.416271, 31.159822, 34.653103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839748, 30.866652, 34.041695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025440, 30.803658, 34.390335>,  <41.136856, 30.765862, 34.599518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025440, 30.803658, 34.390335>,  <40.839748, 30.866652, 34.041695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025440, 30.803658, 34.390335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064473, -0.987463, -0.144083,
		0.883365, 0.010693, -0.468564,
		0.464230, -0.157487, 0.871601,
		41.164711, 30.756411, 34.651814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366600, 30.388336, 33.915543>,  <40.839748, 30.866652, 34.041695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366600, 30.388336, 33.915543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277531, 30.374043, 34.305237>,  <41.224091, 30.365467, 34.539055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277531, 30.374043, 34.305237>,  <41.366600, 30.388336, 33.915543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277531, 30.374043, 34.305237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017919, -0.999009, -0.040737,
		0.974729, -0.026528, 0.221810,
		-0.222671, -0.035733, 0.974239,
		41.210728, 30.363323, 34.597507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882870, 30.004728, 34.182484>,  <41.366600, 30.388336, 33.915543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882870, 30.004728, 34.182484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589691, 29.996613, 34.454475>,  <41.413784, 29.991743, 34.617672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589691, 29.996613, 34.454475>,  <41.882870, 30.004728, 34.182484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589691, 29.996613, 34.454475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048993, -0.998534, 0.023014,
		0.678515, 0.050182, 0.732871,
		-0.732951, -0.020290, 0.679979,
		41.369804, 29.990526, 34.658470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179253, 29.571922, 34.722797>,  <41.882870, 30.004728, 34.182484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179253, 29.571922, 34.722797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779808, 29.575632, 34.743534>,  <41.540142, 29.577858, 34.755978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779808, 29.575632, 34.743534>,  <42.179253, 29.571922, 34.722797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779808, 29.575632, 34.743534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009310, -0.999957, -0.000446,
		0.051835, -0.000928, 0.998655,
		-0.998612, 0.009274, 0.051842,
		41.480225, 29.578415, 34.759087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097591, 29.192532, 35.316406>,  <42.179253, 29.571922, 34.722797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097591, 29.192532, 35.316406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736126, 29.205015, 35.145561>,  <41.519249, 29.212505, 35.043053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736126, 29.205015, 35.145561>,  <42.097591, 29.192532, 35.316406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736126, 29.205015, 35.145561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101367, -0.984588, 0.142519,
		-0.416081, 0.172084, 0.892896,
		-0.903660, 0.031211, -0.427112,
		41.465027, 29.214378, 35.017429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619839, 28.900509, 35.773964>,  <42.097591, 29.192532, 35.316406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619839, 28.900509, 35.773964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444572, 28.883917, 35.414787>,  <41.339413, 28.873962, 35.199284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444572, 28.883917, 35.414787>,  <41.619839, 28.900509, 35.773964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444572, 28.883917, 35.414787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059616, -0.995395, 0.075072,
		-0.896916, 0.086425, 0.433673,
		-0.438164, -0.041479, -0.897938,
		41.313122, 28.871473, 35.145405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053658, 28.472786, 35.841450>,  <41.619839, 28.900509, 35.773964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053658, 28.472786, 35.841450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133293, 28.464054, 35.449554>,  <41.181076, 28.458815, 35.214417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133293, 28.464054, 35.449554>,  <41.053658, 28.472786, 35.841450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133293, 28.464054, 35.449554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127250, -0.991864, -0.003758,
		-0.971685, 0.125420, -0.200247,
		0.199089, -0.021830, -0.979738,
		41.193020, 28.457504, 35.155632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478733, 28.033436, 35.580406>,  <41.053658, 28.472786, 35.841450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478733, 28.033436, 35.580406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785976, 28.019447, 35.324661>,  <40.970322, 28.011055, 35.171215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785976, 28.019447, 35.324661>,  <40.478733, 28.033436, 35.580406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785976, 28.019447, 35.324661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050063, -0.998731, -0.005517,
		-0.638360, 0.036246, -0.768884,
		0.768108, -0.034970, -0.639365,
		41.016407, 28.008957, 35.132851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275223, 27.712343, 34.974197>,  <40.478733, 28.033436, 35.580406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275223, 27.712343, 34.974197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672379, 27.665949, 34.984947>,  <40.910671, 27.638111, 34.991398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672379, 27.665949, 34.984947>,  <40.275223, 27.712343, 34.974197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672379, 27.665949, 34.984947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106846, -0.967622, -0.228676,
		0.052531, 0.224177, -0.973132,
		0.992887, -0.115988, 0.026878,
		40.970245, 27.631153, 34.993011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505291, 27.398434, 34.296951>,  <40.275223, 27.712343, 34.974197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505291, 27.398434, 34.296951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711670, 27.287468, 34.621132>,  <40.835499, 27.220888, 34.815643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711670, 27.287468, 34.621132>,  <40.505291, 27.398434, 34.296951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711670, 27.287468, 34.621132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229060, -0.956336, -0.181527,
		0.825427, -0.091985, -0.556964,
		0.515947, -0.277416, 0.810456,
		40.866455, 27.204243, 34.864269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021313, 26.774141, 34.215893>,  <40.505291, 27.398434, 34.296951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021313, 26.774141, 34.215893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859100, 26.761435, 34.581306>,  <40.761772, 26.753811, 34.800552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859100, 26.761435, 34.581306>,  <41.021313, 26.774141, 34.215893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859100, 26.761435, 34.581306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296449, -0.940808, -0.164313,
		0.864675, -0.337449, 0.372109,
		-0.405530, -0.031766, 0.913530,
		40.737442, 26.751905, 34.855366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406212, 26.347149, 34.636002>,  <41.021313, 26.774141, 34.215893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406212, 26.347149, 34.636002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035114, 26.339987, 34.785118>,  <40.812454, 26.335690, 34.874588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035114, 26.339987, 34.785118>,  <41.406212, 26.347149, 34.636002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035114, 26.339987, 34.785118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022536, -0.999713, 0.008067,
		0.372537, 0.015886, 0.927882,
		-0.927744, -0.017906, 0.372788,
		40.756790, 26.334616, 34.896954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183510, 25.812233, 34.126225>,  <41.406212, 26.347149, 34.636002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183510, 25.812233, 34.126225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374271, 25.972178, 33.813129>,  <41.488728, 26.068144, 33.625271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374271, 25.972178, 33.813129>,  <41.183510, 25.812233, 34.126225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374271, 25.972178, 33.813129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670486, 0.410329, 0.618126,
		0.568344, -0.819598, -0.072416,
		0.476900, 0.399862, -0.782736,
		41.517342, 26.092136, 33.578308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857132, 25.575527, 34.078888>,  <41.183510, 25.812233, 34.126225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857132, 25.575527, 34.078888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882477, 25.930826, 33.896900>,  <41.897682, 26.144007, 33.787708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882477, 25.930826, 33.896900>,  <41.857132, 25.575527, 34.078888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882477, 25.930826, 33.896900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887672, 0.158186, 0.432452,
		0.456096, -0.431265, -0.778452,
		0.063361, 0.888250, -0.454970,
		41.901485, 26.197302, 33.760410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387878, 25.629826, 33.602287>,  <41.857132, 25.575527, 34.078888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387878, 25.629826, 33.602287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340172, 25.993429, 33.762024>,  <42.311550, 26.211592, 33.857868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340172, 25.993429, 33.762024>,  <42.387878, 25.629826, 33.602287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340172, 25.993429, 33.762024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961615, 0.005639, 0.274345,
		0.247131, 0.416735, -0.874790,
		-0.119263, 0.909011, 0.399345,
		42.304394, 26.266132, 33.881828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892414, 26.133833, 33.391563>,  <42.387878, 25.629826, 33.602287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892414, 26.133833, 33.391563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786186, 26.316320, 33.731289>,  <42.722450, 26.425812, 33.935123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786186, 26.316320, 33.731289>,  <42.892414, 26.133833, 33.391563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786186, 26.316320, 33.731289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950673, 0.270391, 0.152018,
		-0.160295, 0.847794, -0.505521,
		-0.265568, 0.456217, 0.849317,
		42.706516, 26.453186, 33.986084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987175, 25.777504, 33.949463>,  <42.892414, 26.133833, 33.391563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987175, 25.777504, 33.949463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046341, 25.630058, 34.316559>,  <43.081841, 25.541592, 34.536816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046341, 25.630058, 34.316559>,  <42.987175, 25.777504, 33.949463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046341, 25.630058, 34.316559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729964, -0.585407, -0.352777,
		0.667289, 0.722097, 0.182485,
		0.147911, -0.368612, 0.917741,
		43.090714, 25.519474, 34.591881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722923, 25.786726, 34.219208>,  <42.987175, 25.777504, 33.949463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.722923, 25.786726, 34.219208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.533306, 25.494251, 34.415432>,  <43.419537, 25.318766, 34.533165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.533306, 25.494251, 34.415432>,  <43.722923, 25.786726, 34.219208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.533306, 25.494251, 34.415432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592325, -0.677045, -0.436762,
		0.651484, 0.083525, 0.754050,
		-0.474045, -0.731187, 0.490558,
		43.391094, 25.274895, 34.562599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735260, 26.312298, 34.738838>,  <43.722923, 25.786726, 34.219208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735260, 26.312298, 34.738838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776165, 26.456654, 34.368046>,  <43.800709, 26.543268, 34.145569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776165, 26.456654, 34.368046>,  <43.735260, 26.312298, 34.738838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776165, 26.456654, 34.368046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656988, 0.675209, 0.335349,
		0.746933, -0.643311, -0.168052,
		0.102264, 0.360891, -0.926984,
		43.806843, 26.564920, 34.089951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479713, 26.475481, 34.558849>,  <43.735260, 26.312298, 34.738838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479713, 26.475481, 34.558849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274780, 26.725161, 34.322918>,  <44.151821, 26.874968, 34.181358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274780, 26.725161, 34.322918>,  <44.479713, 26.475481, 34.558849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274780, 26.725161, 34.322918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560774, 0.763330, 0.320718,
		0.650424, -0.166447, -0.741110,
		-0.512329, 0.624198, -0.589828,
		44.121082, 26.912420, 34.145969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991756, 26.844521, 34.244198>,  <44.479713, 26.475481, 34.558849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991756, 26.844521, 34.244198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643364, 27.038324, 34.276814>,  <44.434330, 27.154606, 34.296383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643364, 27.038324, 34.276814>,  <44.991756, 26.844521, 34.244198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643364, 27.038324, 34.276814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489588, 0.841941, 0.226803,
		0.041234, 0.237462, -0.970521,
		-0.870978, 0.484508, 0.081542,
		44.382069, 27.183678, 34.301277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.148380, 27.408115, 33.994644>,  <44.991756, 26.844521, 34.244198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.148380, 27.408115, 33.994644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811710, 27.502419, 34.188965>,  <44.609711, 27.559000, 34.305557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811710, 27.502419, 34.188965>,  <45.148380, 27.408115, 33.994644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811710, 27.502419, 34.188965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316612, 0.944246, 0.090307,
		-0.437429, 0.229821, -0.869390,
		-0.841673, 0.235757, 0.485804,
		44.559208, 27.573145, 34.334705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.844936, 28.025038, 33.647976>,  <45.148380, 27.408115, 33.994644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.844936, 28.025038, 33.647976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641373, 28.023590, 33.992302>,  <44.519234, 28.022722, 34.198898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641373, 28.023590, 33.992302>,  <44.844936, 28.025038, 33.647976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641373, 28.023590, 33.992302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134270, 0.987418, 0.083530,
		-0.850284, 0.158091, -0.502020,
		-0.508909, -0.003618, 0.860813,
		44.488701, 28.022505, 34.250546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.282715, 28.513708, 33.556107>,  <44.844936, 28.025038, 33.647976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.282715, 28.513708, 33.556107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371265, 28.457359, 33.942089>,  <44.424397, 28.423550, 34.173679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371265, 28.457359, 33.942089>,  <44.282715, 28.513708, 33.556107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371265, 28.457359, 33.942089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135528, 0.984353, 0.112610,
		-0.965726, 0.105851, 0.237001,
		0.221372, -0.140870, 0.964961,
		44.437675, 28.415098, 34.231579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014175, 29.026894, 33.854595>,  <44.282715, 28.513708, 33.556107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014175, 29.026894, 33.854595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.250908, 28.899193, 34.150654>,  <44.392948, 28.822573, 34.328289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.250908, 28.899193, 34.150654>,  <44.014175, 29.026894, 33.854595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.250908, 28.899193, 34.150654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163394, 0.946675, 0.277686,
		-0.789330, -0.043406, 0.612432,
		0.591828, -0.319253, 0.740147,
		44.428455, 28.803417, 34.372700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716900, 29.255470, 34.516186>,  <44.014175, 29.026894, 33.854595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716900, 29.255470, 34.516186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109909, 29.200842, 34.566780>,  <44.345715, 29.168066, 34.597137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109909, 29.200842, 34.566780>,  <43.716900, 29.255470, 34.516186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109909, 29.200842, 34.566780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095187, 0.952555, 0.289099,
		-0.159965, -0.272007, 0.948906,
		0.982523, -0.136569, 0.126484,
		44.404667, 29.159872, 34.604725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031933, 29.619627, 35.204124>,  <43.716900, 29.255470, 34.516186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031933, 29.619627, 35.204124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367393, 29.572123, 34.991501>,  <44.568668, 29.543621, 34.863926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367393, 29.572123, 34.991501>,  <44.031933, 29.619627, 35.204124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367393, 29.572123, 34.991501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313060, 0.903727, 0.292012,
		0.445709, -0.411307, 0.795091,
		0.838652, -0.118759, -0.531563,
		44.618988, 29.536495, 34.832031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.472713, 29.740250, 35.760906>,  <44.031933, 29.619627, 35.204124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.472713, 29.740250, 35.760906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651604, 29.812357, 35.410480>,  <44.758938, 29.855621, 35.200226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651604, 29.812357, 35.410480>,  <44.472713, 29.740250, 35.760906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.651604, 29.812357, 35.410480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378593, 0.849251, 0.368022,
		0.810342, -0.496262, 0.311560,
		0.447228, 0.180269, -0.876065,
		44.785770, 29.866438, 35.147659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.059177, 30.094013, 35.955318>,  <44.472713, 29.740250, 35.760906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.059177, 30.094013, 35.955318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.006218, 30.172558, 35.566696>,  <44.974442, 30.219685, 35.333523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.006218, 30.172558, 35.566696>,  <45.059177, 30.094013, 35.955318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.006218, 30.172558, 35.566696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228877, 0.959748, 0.162786,
		0.964409, -0.200813, -0.172015,
		-0.132402, 0.196363, -0.971551,
		44.966499, 30.231466, 35.275230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.650398, 30.458097, 35.852409>,  <45.059177, 30.094013, 35.955318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.650398, 30.458097, 35.852409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420639, 30.559298, 35.541008>,  <45.282784, 30.620018, 35.354168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420639, 30.559298, 35.541008>,  <45.650398, 30.458097, 35.852409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.420639, 30.559298, 35.541008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391835, 0.919982, 0.009873,
		0.718703, -0.299372, -0.627569,
		-0.574396, 0.252999, -0.778499,
		45.248322, 30.635197, 35.307457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.010246, 30.931494, 35.414665>,  <45.650398, 30.458097, 35.852409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.010246, 30.931494, 35.414665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.631618, 30.993473, 35.301537>,  <45.404442, 31.030661, 35.233658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.631618, 30.993473, 35.301537>,  <46.010246, 30.931494, 35.414665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.631618, 30.993473, 35.301537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175434, 0.983299, -0.048443,
		0.270596, -0.095472, -0.957947,
		-0.946573, 0.154948, -0.282825,
		45.347645, 31.039957, 35.216690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.027351, 31.420259, 34.869328>,  <46.010246, 30.931494, 35.414665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.027351, 31.420259, 34.869328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653404, 31.438557, 35.010143>,  <45.429035, 31.449535, 35.094631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653404, 31.438557, 35.010143>,  <46.027351, 31.420259, 34.869328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653404, 31.438557, 35.010143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036877, 0.998812, -0.031856,
		-0.353075, -0.016799, -0.935444,
		-0.934868, 0.045744, 0.352036,
		45.372944, 31.452280, 35.115753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.620255, 31.863029, 34.389336>,  <46.027351, 31.420259, 34.869328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.620255, 31.863029, 34.389336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420414, 31.873808, 34.735668>,  <45.300510, 31.880276, 34.943470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420414, 31.873808, 34.735668>,  <45.620255, 31.863029, 34.389336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.420414, 31.873808, 34.735668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173559, 0.976135, -0.130526,
		-0.848689, -0.215485, -0.483005,
		-0.499604, 0.026946, 0.865834,
		45.270531, 31.881891, 34.995419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.934601, 32.226814, 34.320892>,  <45.620255, 31.863029, 34.389336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.934601, 32.226814, 34.320892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.010616, 32.265396, 34.711704>,  <45.056225, 32.288544, 34.946190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.010616, 32.265396, 34.711704>,  <44.934601, 32.226814, 34.320892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.010616, 32.265396, 34.711704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027737, 0.995293, -0.092860,
		-0.981384, -0.009453, 0.191822,
		0.190042, 0.096452, 0.977027,
		45.067627, 32.294331, 35.004814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332664, 32.713955, 34.568901>,  <44.934601, 32.226814, 34.320892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332664, 32.713955, 34.568901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583916, 32.710419, 34.880127>,  <44.734665, 32.708298, 35.066860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583916, 32.710419, 34.880127>,  <44.332664, 32.713955, 34.568901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583916, 32.710419, 34.880127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166475, 0.975255, 0.145476,
		-0.760094, -0.220905, 0.611112,
		0.628127, -0.008840, 0.778061,
		44.772354, 32.707767, 35.113544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.011517, 32.947426, 35.183212>,  <44.332664, 32.713955, 34.568901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.011517, 32.947426, 35.183212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403496, 33.018864, 35.218563>,  <44.638683, 33.061726, 35.239773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403496, 33.018864, 35.218563>,  <44.011517, 32.947426, 35.183212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.403496, 33.018864, 35.218563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197641, 0.927658, 0.316840,
		-0.025394, -0.327952, 0.944353,
		0.979945, 0.178598, 0.088374,
		44.697479, 33.072441, 35.245075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.097443, 33.225121, 35.761440>,  <44.011517, 32.947426, 35.183212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.097443, 33.225121, 35.761440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.440792, 33.341621, 35.592510>,  <44.646801, 33.411522, 35.491150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.440792, 33.341621, 35.592510>,  <44.097443, 33.225121, 35.761440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.440792, 33.341621, 35.592510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100869, 0.902970, 0.417698,
		0.503005, -0.315942, 0.804466,
		0.858377, 0.291249, -0.422330,
		44.698307, 33.428997, 35.465813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.527824, 33.425667, 36.307983>,  <44.097443, 33.225121, 35.761440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.527824, 33.425667, 36.307983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.673771, 33.604233, 35.981159>,  <44.761341, 33.711372, 35.785065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.673771, 33.604233, 35.981159>,  <44.527824, 33.425667, 36.307983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.673771, 33.604233, 35.981159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164421, 0.894661, 0.415387,
		0.916426, -0.017220, 0.399834,
		0.364869, 0.446413, -0.817059,
		44.783230, 33.738155, 35.736042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.789173, 34.081165, 36.561256>,  <44.527824, 33.425667, 36.307983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.789173, 34.081165, 36.561256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808514, 34.146637, 36.167126>,  <44.820118, 34.185921, 35.930649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808514, 34.146637, 36.167126>,  <44.789173, 34.081165, 36.561256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.808514, 34.146637, 36.167126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012741, 0.986503, 0.163250,
		0.998749, 0.004661, 0.049779,
		0.048347, 0.163680, -0.985328,
		44.823017, 34.195740, 35.871529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.427948, 34.459335, 36.330811>,  <44.789173, 34.081165, 36.561256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.427948, 34.459335, 36.330811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142921, 34.538296, 36.061504>,  <44.971905, 34.585670, 35.899921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142921, 34.538296, 36.061504>,  <45.427948, 34.459335, 36.330811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.142921, 34.538296, 36.061504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267423, 0.963579, -0.000517,
		0.648645, -0.180415, -0.739399,
		-0.712562, 0.197396, -0.673268,
		44.929153, 34.597515, 35.859524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.664371, 34.935104, 35.774521>,  <45.427948, 34.459335, 36.330811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.664371, 34.935104, 35.774521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.268051, 34.972179, 35.735069>,  <45.030258, 34.994423, 35.711399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.268051, 34.972179, 35.735069>,  <45.664371, 34.935104, 35.774521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.268051, 34.972179, 35.735069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074541, 0.981928, 0.173958,
		0.112973, 0.165005, -0.979801,
		-0.990798, 0.092688, -0.098632,
		44.970810, 34.999985, 35.705479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.859520, 34.941299, 34.998791>,  <45.664371, 34.935104, 35.774521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.859520, 34.941299, 34.998791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140625, 34.805798, 34.748554>,  <46.309288, 34.724495, 34.598412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140625, 34.805798, 34.748554>,  <45.859520, 34.941299, 34.998791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.140625, 34.805798, 34.748554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700539, 0.482731, 0.525563,
		0.123954, -0.807598, 0.576559,
		0.702766, -0.338756, -0.625591,
		46.351456, 34.704170, 34.560879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.507107, 34.570694, 35.377098>,  <45.859520, 34.941299, 34.998791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.507107, 34.570694, 35.377098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.622276, 34.799847, 35.070137>,  <46.691376, 34.937340, 34.885960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.622276, 34.799847, 35.070137>,  <46.507107, 34.570694, 35.377098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.622276, 34.799847, 35.070137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778466, 0.326703, 0.535963,
		0.557756, -0.751713, -0.351904,
		0.287922, 0.572882, -0.767403,
		46.708652, 34.971710, 34.839916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.231419, 34.457333, 35.317493>,  <46.507107, 34.570694, 35.377098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.231419, 34.457333, 35.317493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.169888, 34.812572, 35.144234>,  <47.132969, 35.025715, 35.040279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.169888, 34.812572, 35.144234>,  <47.231419, 34.457333, 35.317493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.169888, 34.812572, 35.144234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784241, 0.376401, 0.493243,
		0.601086, -0.263820, -0.754384,
		-0.153824, 0.888100, -0.433148,
		47.123741, 35.079002, 35.014290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.929676, 34.680191, 35.174480>,  <47.231419, 34.457333, 35.317493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.929676, 34.680191, 35.174480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.672764, 34.982994, 35.222496>,  <47.518616, 35.164677, 35.251305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.672764, 34.982994, 35.222496>,  <47.929676, 34.680191, 35.174480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.672764, 34.982994, 35.222496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685804, 0.497661, 0.531042,
		0.342268, 0.423399, -0.838800,
		-0.642281, 0.757012, 0.120035,
		47.480080, 35.210098, 35.258507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.683723, 35.394779, 43.497570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.294498, 35.483936, 43.474026>,  <34.060963, 35.537430, 43.459900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.294498, 35.483936, 43.474026>,  <34.683723, 35.394779, 43.497570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294498, 35.483936, 43.474026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142116, 0.378926, -0.914450,
		-0.181524, -0.898183, -0.400396,
		-0.973063, 0.222897, -0.058862,
		34.002579, 35.550804, 43.456367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549305, 35.159744, 42.852295>,  <34.683723, 35.394779, 43.497570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549305, 35.159744, 42.852295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.257675, 35.416344, 42.947739>,  <34.082699, 35.570305, 43.005005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.257675, 35.416344, 42.947739>,  <34.549305, 35.159744, 42.852295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257675, 35.416344, 42.947739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136933, 0.478287, -0.867463,
		-0.670599, -0.599769, -0.436547,
		-0.729072, 0.641497, 0.238611,
		34.038952, 35.608791, 43.019321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109051, 35.185600, 42.297264>,  <34.549305, 35.159744, 42.852295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109051, 35.185600, 42.297264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.017582, 35.520733, 42.495552>,  <33.962700, 35.721813, 42.614525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.017582, 35.520733, 42.495552>,  <34.109051, 35.185600, 42.297264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017582, 35.520733, 42.495552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047282, 0.499057, -0.865278,
		-0.972355, -0.221301, -0.074504,
		-0.228669, 0.837835, 0.495724,
		33.948982, 35.772083, 42.644268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541271, 35.365360, 41.868679>,  <34.109051, 35.185600, 42.297264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541271, 35.365360, 41.868679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.671440, 35.674000, 42.087303>,  <33.749542, 35.859184, 42.218479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.671440, 35.674000, 42.087303>,  <33.541271, 35.365360, 41.868679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671440, 35.674000, 42.087303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013412, 0.574202, -0.818604,
		-0.945475, 0.273719, 0.176507,
		0.325418, 0.771602, 0.546565,
		33.769066, 35.905479, 42.251274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064693, 36.012646, 41.818600>,  <33.541271, 35.365360, 41.868679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064693, 36.012646, 41.818600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.437866, 36.125511, 41.908058>,  <33.661770, 36.193230, 41.961735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.437866, 36.125511, 41.908058>,  <33.064693, 36.012646, 41.818600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437866, 36.125511, 41.908058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069023, 0.469482, -0.880240,
		-0.353374, 0.836641, 0.418519,
		0.932932, 0.282166, 0.223651,
		33.717747, 36.210159, 41.975155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132351, 36.735115, 41.882286>,  <33.064693, 36.012646, 41.818600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132351, 36.735115, 41.882286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.491714, 36.583252, 41.794003>,  <33.707333, 36.492134, 41.741032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.491714, 36.583252, 41.794003>,  <33.132351, 36.735115, 41.882286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491714, 36.583252, 41.794003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015220, 0.529204, -0.848358,
		0.438888, 0.758816, 0.481222,
		0.898413, -0.379658, -0.220713,
		33.761238, 36.469353, 41.727787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351986, 37.134697, 41.406765>,  <33.132351, 36.735115, 41.882286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351986, 37.134697, 41.406765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.665833, 36.891781, 41.356838>,  <33.854141, 36.746033, 41.326881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.665833, 36.891781, 41.356838>,  <33.351986, 37.134697, 41.406765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665833, 36.891781, 41.356838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239750, 0.482856, -0.842241,
		0.571751, 0.630911, 0.524454,
		0.784615, -0.607290, -0.124813,
		33.901218, 36.709595, 41.319393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855946, 37.661228, 41.289711>,  <33.351986, 37.134697, 41.406765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855946, 37.661228, 41.289711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.991665, 37.307034, 41.162724>,  <34.073097, 37.094517, 41.086533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.991665, 37.307034, 41.162724>,  <33.855946, 37.661228, 41.289711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991665, 37.307034, 41.162724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375111, 0.436856, -0.817587,
		0.862653, 0.158317, 0.480380,
		0.339295, -0.885490, -0.317468,
		34.093452, 37.041386, 41.067482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527855, 37.818707, 41.131817>,  <33.855946, 37.661228, 41.289711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527855, 37.818707, 41.131817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.461449, 37.476059, 40.936413>,  <34.421604, 37.270470, 40.819172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.461449, 37.476059, 40.936413>,  <34.527855, 37.818707, 41.131817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461449, 37.476059, 40.936413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407184, 0.391631, -0.825122,
		0.898132, -0.335893, 0.283787,
		-0.166013, -0.856622, -0.488507,
		34.411644, 37.219074, 40.789860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124882, 37.566265, 40.746754>,  <34.527855, 37.818707, 41.131817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124882, 37.566265, 40.746754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.834602, 37.372326, 40.551495>,  <34.660435, 37.255962, 40.434338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.834602, 37.372326, 40.551495>,  <35.124882, 37.566265, 40.746754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834602, 37.372326, 40.551495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597476, -0.092290, -0.796558,
		0.341160, -0.869715, 0.356660,
		-0.725695, -0.484849, -0.488148,
		34.616894, 37.226871, 40.405048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388004, 36.951328, 40.451382>,  <35.124882, 37.566265, 40.746754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388004, 36.951328, 40.451382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.074924, 37.063580, 40.229164>,  <34.887077, 37.130932, 40.095833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.074924, 37.063580, 40.229164>,  <35.388004, 36.951328, 40.451382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074924, 37.063580, 40.229164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593112, 0.065706, -0.802434,
		-0.188685, -0.957564, -0.217874,
		-0.782698, 0.280631, -0.555545,
		34.840115, 37.147770, 40.062500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412266, 36.458019, 39.924763>,  <35.388004, 36.951328, 40.451382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412266, 36.458019, 39.924763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.182076, 36.755768, 39.789272>,  <35.043961, 36.934418, 39.707977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.182076, 36.755768, 39.789272>,  <35.412266, 36.458019, 39.924763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182076, 36.755768, 39.789272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462713, -0.045157, -0.885357,
		-0.674331, -0.666237, -0.318444,
		-0.575478, 0.744372, -0.338728,
		35.009434, 36.979080, 39.687653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387077, 36.370308, 39.073627>,  <35.412266, 36.458019, 39.924763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387077, 36.370308, 39.073627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.250309, 36.741180, 39.134857>,  <35.168247, 36.963703, 39.171597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.250309, 36.741180, 39.134857>,  <35.387077, 36.370308, 39.073627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250309, 36.741180, 39.134857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540254, 0.327230, -0.775272,
		-0.768905, -0.182383, -0.612798,
		-0.341922, 0.927177, 0.153076,
		35.147732, 37.019333, 39.180779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075279, 36.601322, 38.454487>,  <35.387077, 36.370308, 39.073627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075279, 36.601322, 38.454487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.184654, 36.933914, 38.647926>,  <35.250278, 37.133469, 38.763988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.184654, 36.933914, 38.647926>,  <35.075279, 36.601322, 38.454487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184654, 36.933914, 38.647926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469152, 0.323616, -0.821687,
		-0.839719, 0.451561, -0.301603,
		0.273438, 0.831484, 0.483598,
		35.266685, 37.183361, 38.793007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944393, 37.168442, 38.003525>,  <35.075279, 36.601322, 38.454487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944393, 37.168442, 38.003525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.217602, 37.291561, 38.268475>,  <35.381527, 37.365433, 38.427444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.217602, 37.291561, 38.268475>,  <34.944393, 37.168442, 38.003525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217602, 37.291561, 38.268475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482967, 0.489975, -0.725718,
		-0.547923, 0.815587, 0.186006,
		0.683025, 0.307803, 0.662370,
		35.422508, 37.383904, 38.467186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036324, 37.889904, 37.858116>,  <34.944393, 37.168442, 38.003525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036324, 37.889904, 37.858116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.362431, 37.784950, 38.064606>,  <35.558094, 37.721977, 38.188499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.362431, 37.784950, 38.064606>,  <35.036324, 37.889904, 37.858116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362431, 37.784950, 38.064606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572773, 0.496580, -0.652181,
		-0.085225, 0.827384, 0.555133,
		0.815272, -0.262383, 0.516223,
		35.607014, 37.706234, 38.219471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406647, 38.476101, 37.819378>,  <35.036324, 37.889904, 37.858116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406647, 38.476101, 37.819378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.663628, 38.189110, 37.927063>,  <35.817818, 38.016914, 37.991676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.663628, 38.189110, 37.927063>,  <35.406647, 38.476101, 37.819378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663628, 38.189110, 37.927063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729237, 0.464425, -0.502517,
		0.235514, 0.519166, 0.821583,
		0.642453, -0.717479, 0.269217,
		35.856365, 37.973866, 38.007828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943970, 38.839470, 37.797920>,  <35.406647, 38.476101, 37.819378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943970, 38.839470, 37.797920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.077732, 38.462513, 37.801113>,  <36.157990, 38.236340, 37.803028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.077732, 38.462513, 37.801113>,  <35.943970, 38.839470, 37.797920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077732, 38.462513, 37.801113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801604, 0.279973, -0.528248,
		0.495585, 0.183045, 0.849052,
		0.334405, -0.942396, 0.007980,
		36.178055, 38.179794, 37.803509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706158, 38.786594, 38.010422>,  <35.943970, 38.839470, 37.797920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706158, 38.786594, 38.010422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.616364, 38.455269, 37.805092>,  <36.562489, 38.256474, 37.681896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.616364, 38.455269, 37.805092>,  <36.706158, 38.786594, 38.010422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616364, 38.455269, 37.805092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814278, 0.129923, -0.565748,
		0.535311, -0.544986, 0.645316,
		-0.224483, -0.828318, -0.513320,
		36.549019, 38.206772, 37.651096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337296, 38.406631, 37.974903>,  <36.706158, 38.786594, 38.010422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337296, 38.406631, 37.974903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.118237, 38.279156, 37.665447>,  <36.986801, 38.202671, 37.479774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.118237, 38.279156, 37.665447>,  <37.337296, 38.406631, 37.974903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118237, 38.279156, 37.665447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725304, 0.280163, -0.628843,
		0.417152, -0.905507, 0.077719,
		-0.547648, -0.318693, -0.773638,
		36.953941, 38.183548, 37.433357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775574, 38.495312, 37.376812>,  <37.337296, 38.406631, 37.974903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775574, 38.495312, 37.376812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.445015, 38.410717, 37.168068>,  <37.246677, 38.359962, 37.042824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.445015, 38.410717, 37.168068>,  <37.775574, 38.495312, 37.376812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445015, 38.410717, 37.168068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461035, 0.277957, -0.842726,
		0.323275, -0.937025, -0.132204,
		-0.826402, -0.211481, -0.521857,
		37.197094, 38.347271, 37.011509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111046, 38.138008, 36.793346>,  <37.775574, 38.495312, 37.376812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111046, 38.138008, 36.793346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.749756, 38.282436, 36.700546>,  <37.532982, 38.369091, 36.644867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.749756, 38.282436, 36.700546>,  <38.111046, 38.138008, 36.793346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749756, 38.282436, 36.700546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371726, 0.387978, -0.843382,
		-0.214506, -0.848000, -0.484647,
		-0.903221, 0.361066, -0.232000,
		37.478790, 38.390755, 36.630947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774982, 37.780952, 36.228428>,  <38.111046, 38.138008, 36.793346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774982, 37.780952, 36.228428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.693684, 38.170933, 36.264561>,  <37.644905, 38.404922, 36.286240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.693684, 38.170933, 36.264561>,  <37.774982, 37.780952, 36.228428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693684, 38.170933, 36.264561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518166, 0.185381, -0.834948,
		-0.830779, -0.122897, -0.542866,
		-0.203250, 0.974951, 0.090330,
		37.632710, 38.463417, 36.291660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734360, 37.221470, 36.780052>,  <37.774982, 37.780952, 36.228428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734360, 37.221470, 36.780052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.127213, 37.158798, 36.738354>,  <38.362923, 37.121197, 36.713333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.127213, 37.158798, 36.738354>,  <37.734360, 37.221470, 36.780052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127213, 37.158798, 36.738354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046563, -0.334415, 0.941275,
		-0.182340, -0.929311, -0.321145,
		0.982132, -0.156678, -0.104249,
		38.421852, 37.111794, 36.707081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049759, 36.541958, 36.966408>,  <37.734360, 37.221470, 36.780052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049759, 36.541958, 36.966408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303593, 36.848915, 37.003101>,  <38.455891, 37.033089, 37.025120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303593, 36.848915, 37.003101>,  <38.049759, 36.541958, 36.966408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303593, 36.848915, 37.003101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001155, -0.117758, 0.993042,
		0.772854, -0.630273, -0.073841,
		0.634583, 0.767391, 0.091738,
		38.493969, 37.079132, 37.030624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595905, 36.290493, 37.311085>,  <38.049759, 36.541958, 36.966408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595905, 36.290493, 37.311085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.593220, 36.678631, 37.407745>,  <38.591606, 36.911514, 37.465740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.593220, 36.678631, 37.407745>,  <38.595905, 36.290493, 37.311085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593220, 36.678631, 37.407745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046406, -0.241090, 0.969392,
		0.998900, 0.017726, -0.043410,
		-0.006718, 0.970341, 0.241648,
		38.591206, 36.969734, 37.480240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218895, 36.430962, 37.733955>,  <38.595905, 36.290493, 37.311085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218895, 36.430962, 37.733955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.920555, 36.686749, 37.808563>,  <38.741550, 36.840221, 37.853329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.920555, 36.686749, 37.808563>,  <39.218895, 36.430962, 37.733955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920555, 36.686749, 37.808563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057021, -0.217689, 0.974351,
		0.663672, 0.737352, 0.125899,
		-0.745847, 0.639471, 0.186519,
		38.696800, 36.878590, 37.864517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350811, 36.672337, 38.440830>,  <39.218895, 36.430962, 37.733955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350811, 36.672337, 38.440830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.987980, 36.814186, 38.350094>,  <38.770283, 36.899296, 38.295654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.987980, 36.814186, 38.350094>,  <39.350811, 36.672337, 38.440830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987980, 36.814186, 38.350094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216175, 0.069983, 0.973843,
		0.361226, 0.932385, 0.013182,
		-0.907074, 0.354628, -0.226838,
		38.715858, 36.920574, 38.282043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201443, 37.247883, 38.999660>,  <39.350811, 36.672337, 38.440830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201443, 37.247883, 38.999660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.852013, 37.151638, 38.830437>,  <38.642353, 37.093891, 38.728905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.852013, 37.151638, 38.830437>,  <39.201443, 37.247883, 38.999660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852013, 37.151638, 38.830437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432377, -0.015365, 0.901562,
		-0.223423, 0.970501, -0.090611,
		-0.873574, -0.240608, -0.423056,
		38.589939, 37.079456, 38.703522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643196, 37.742046, 39.238552>,  <39.201443, 37.247883, 38.999660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643196, 37.742046, 39.238552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.468456, 37.407738, 39.105495>,  <38.363613, 37.207153, 39.025661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.468456, 37.407738, 39.105495>,  <38.643196, 37.742046, 39.238552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468456, 37.407738, 39.105495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585183, -0.016802, 0.810727,
		-0.683173, 0.548819, -0.481740,
		-0.436848, -0.835773, -0.332638,
		38.337402, 37.157005, 39.005703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932041, 37.822632, 39.305115>,  <38.643196, 37.742046, 39.238552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932041, 37.822632, 39.305115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.962948, 37.423893, 39.297829>,  <37.981491, 37.184650, 39.293457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.962948, 37.423893, 39.297829>,  <37.932041, 37.822632, 39.305115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962948, 37.423893, 39.297829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550774, -0.057904, 0.832643,
		-0.831070, -0.054304, -0.553510,
		0.077267, -0.996844, -0.018213,
		37.986130, 37.124840, 39.292366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285641, 37.543320, 39.425968>,  <37.932041, 37.822632, 39.305115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285641, 37.543320, 39.425968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.543976, 37.261646, 39.543972>,  <37.698975, 37.092644, 39.614773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.543976, 37.261646, 39.543972>,  <37.285641, 37.543320, 39.425968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543976, 37.261646, 39.543972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386595, 0.031575, 0.921709,
		-0.658363, -0.709320, -0.251840,
		0.645834, -0.704179, 0.295007,
		37.737724, 37.050392, 39.632473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817902, 37.125381, 39.891659>,  <37.285641, 37.543320, 39.425968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817902, 37.125381, 39.891659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.187817, 37.001022, 39.979389>,  <37.409767, 36.926407, 40.032028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.187817, 37.001022, 39.979389>,  <36.817902, 37.125381, 39.891659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187817, 37.001022, 39.979389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233695, -0.009242, 0.972266,
		-0.300249, -0.950398, -0.081203,
		0.924790, -0.310899, 0.219328,
		37.465252, 36.907753, 40.045189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758366, 36.502850, 40.379372>,  <36.817902, 37.125381, 39.891659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758366, 36.502850, 40.379372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.137268, 36.624378, 40.420174>,  <37.364609, 36.697296, 40.444656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.137268, 36.624378, 40.420174>,  <36.758366, 36.502850, 40.379372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137268, 36.624378, 40.420174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028215, -0.238000, 0.970855,
		0.319243, -0.922524, -0.216874,
		0.947253, 0.303820, 0.102008,
		37.421444, 36.715523, 40.450775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246746, 35.956577, 40.469448>,  <36.758366, 36.502850, 40.379372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246746, 35.956577, 40.469448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.320080, 36.294247, 40.670948>,  <37.364082, 36.496849, 40.791847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.320080, 36.294247, 40.670948>,  <37.246746, 35.956577, 40.469448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320080, 36.294247, 40.670948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044486, -0.519031, 0.853597,
		0.982043, -0.134087, -0.132712,
		0.183337, 0.844173, 0.503746,
		37.375080, 36.547497, 40.822071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687260, 35.794624, 40.981094>,  <37.246746, 35.956577, 40.469448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687260, 35.794624, 40.981094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.518665, 36.138355, 41.096962>,  <37.417511, 36.344593, 41.166485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.518665, 36.138355, 41.096962>,  <37.687260, 35.794624, 40.981094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518665, 36.138355, 41.096962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120510, -0.369675, 0.921313,
		0.898794, 0.353409, 0.259369,
		-0.421482, 0.859327, 0.289672,
		37.392220, 36.396152, 41.183865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113274, 36.051105, 41.619530>,  <37.687260, 35.794624, 40.981094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113274, 36.051105, 41.619530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.733391, 36.174675, 41.599018>,  <37.505463, 36.248817, 41.586712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.733391, 36.174675, 41.599018>,  <38.113274, 36.051105, 41.619530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733391, 36.174675, 41.599018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138270, -0.266762, 0.953792,
		0.280966, 0.912911, 0.296060,
		-0.949705, 0.308919, -0.051277,
		37.448479, 36.267349, 41.583633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987370, 36.370209, 42.213001>,  <38.113274, 36.051105, 41.619530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987370, 36.370209, 42.213001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.605892, 36.316742, 42.105217>,  <37.377007, 36.284660, 42.040546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.605892, 36.316742, 42.105217>,  <37.987370, 36.370209, 42.213001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605892, 36.316742, 42.105217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212571, -0.334301, 0.918181,
		-0.212814, 0.932939, 0.290405,
		-0.953690, -0.133671, -0.269459,
		37.319786, 36.276642, 42.024380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614624, 36.637280, 42.749374>,  <37.987370, 36.370209, 42.213001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614624, 36.637280, 42.749374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.362263, 36.378120, 42.578640>,  <37.210846, 36.222626, 42.476200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.362263, 36.378120, 42.578640>,  <37.614624, 36.637280, 42.749374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362263, 36.378120, 42.578640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264148, -0.337915, 0.903349,
		-0.729512, 0.682674, 0.042051,
		-0.630902, -0.647897, -0.426840,
		37.172993, 36.183750, 42.450588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952991, 36.715176, 43.052605>,  <37.614624, 36.637280, 42.749374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952991, 36.715176, 43.052605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.952644, 36.348797, 42.892082>,  <36.952438, 36.128971, 42.795769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.952644, 36.348797, 42.892082>,  <36.952991, 36.715176, 43.052605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952644, 36.348797, 42.892082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444531, -0.359125, 0.820622,
		-0.895763, 0.179105, -0.406854,
		-0.000866, -0.915943, -0.401309,
		36.952385, 36.074013, 42.771690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.129063, 36.638233, 43.142239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.274178, 36.278358, 43.045128>,  <36.361248, 36.062431, 42.986862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.274178, 36.278358, 43.045128>,  <36.129063, 36.638233, 43.142239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274178, 36.278358, 43.045128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538712, -0.415065, 0.733152,
		-0.760379, -0.135190, -0.635254,
		0.362786, -0.899691, -0.242778,
		36.383015, 36.008450, 42.972294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570168, 36.202454, 43.086266>,  <36.129063, 36.638233, 43.142239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570168, 36.202454, 43.086266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.878605, 35.954655, 43.145115>,  <36.063667, 35.805977, 43.180424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.878605, 35.954655, 43.145115>,  <35.570168, 36.202454, 43.086266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878605, 35.954655, 43.145115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544743, -0.522213, 0.656162,
		-0.329659, -0.586105, -0.740139,
		0.771091, -0.619495, 0.147125,
		36.109932, 35.768806, 43.189251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382038, 35.515656, 43.069321>,  <35.570168, 36.202454, 43.086266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382038, 35.515656, 43.069321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.725163, 35.504482, 43.274601>,  <35.931038, 35.497776, 43.397770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.725163, 35.504482, 43.274601>,  <35.382038, 35.515656, 43.069321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725163, 35.504482, 43.274601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473060, -0.433264, 0.767135,
		0.200919, -0.900834, -0.384876,
		0.857814, -0.027937, 0.513199,
		35.982506, 35.496101, 43.428562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450218, 34.823982, 43.325619>,  <35.382038, 35.515656, 43.069321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450218, 34.823982, 43.325619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.683250, 35.066605, 43.542023>,  <35.823071, 35.212177, 43.671864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.683250, 35.066605, 43.542023>,  <35.450218, 34.823982, 43.325619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683250, 35.066605, 43.542023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378606, -0.386479, 0.841006,
		0.719208, -0.694780, 0.004493,
		0.582578, 0.606559, 0.541007,
		35.858025, 35.248573, 43.704327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855713, 34.278915, 43.758858>,  <35.450218, 34.823982, 43.325619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855713, 34.278915, 43.758858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.849915, 34.640488, 43.929829>,  <35.846436, 34.857433, 44.032410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.849915, 34.640488, 43.929829>,  <35.855713, 34.278915, 43.758858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849915, 34.640488, 43.929829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352035, -0.404716, 0.843965,
		0.935874, -0.138234, 0.324084,
		-0.014497, 0.903934, 0.427426,
		35.845566, 34.911667, 44.058056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077915, 34.110035, 44.334904>,  <35.855713, 34.278915, 43.758858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077915, 34.110035, 44.334904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.905109, 34.465054, 44.398926>,  <35.801426, 34.678066, 44.437340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.905109, 34.465054, 44.398926>,  <36.077915, 34.110035, 44.334904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905109, 34.465054, 44.398926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381175, -0.340535, 0.859500,
		0.817352, 0.310312, 0.485429,
		-0.432019, 0.887549, 0.160054,
		35.775505, 34.731319, 44.446941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406437, 34.308334, 44.991665>,  <36.077915, 34.110035, 44.334904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406437, 34.308334, 44.991665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.059517, 34.506588, 44.973183>,  <35.851364, 34.625542, 44.962093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.059517, 34.506588, 44.973183>,  <36.406437, 34.308334, 44.991665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059517, 34.506588, 44.973183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079341, -0.046010, 0.995785,
		0.491419, 0.867312, 0.079229,
		-0.867302, 0.495634, -0.046203,
		35.799328, 34.655277, 44.959320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438374, 34.865379, 45.509480>,  <36.406437, 34.308334, 44.991665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438374, 34.865379, 45.509480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.055565, 34.814941, 45.405018>,  <35.825878, 34.784679, 45.342342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.055565, 34.814941, 45.405018>,  <36.438374, 34.865379, 45.509480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055565, 34.814941, 45.405018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270294, 0.061550, 0.960808,
		-0.105082, 0.990106, -0.092989,
		-0.957026, -0.126098, -0.261152,
		35.768456, 34.777111, 45.326672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044895, 35.305847, 45.982452>,  <36.438374, 34.865379, 45.509480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044895, 35.305847, 45.982452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.771904, 35.057224, 45.828629>,  <35.608109, 34.908051, 45.736336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.771904, 35.057224, 45.828629>,  <36.044895, 35.305847, 45.982452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771904, 35.057224, 45.828629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337414, -0.198795, 0.920126,
		-0.648363, 0.757722, -0.074050,
		-0.682479, -0.621561, -0.384557,
		35.567162, 34.870754, 45.713261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248802, 35.493408, 46.180622>,  <36.044895, 35.305847, 45.982452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248802, 35.493408, 46.180622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264572, 35.099220, 46.114525>,  <35.274036, 34.862709, 46.074867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264572, 35.099220, 46.114525>,  <35.248802, 35.493408, 46.180622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264572, 35.099220, 46.114525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375613, -0.167857, 0.911449,
		-0.925938, 0.026130, -0.376771,
		0.039427, -0.985465, -0.165240,
		35.276402, 34.803581, 46.064953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590561, 35.247112, 46.430481>,  <35.248802, 35.493408, 46.180622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590561, 35.247112, 46.430481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.813347, 34.916264, 46.400410>,  <34.947018, 34.717754, 46.382366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.813347, 34.916264, 46.400410>,  <34.590561, 35.247112, 46.430481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813347, 34.916264, 46.400410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375202, -0.331339, 0.865701,
		-0.740952, -0.453960, -0.494884,
		0.556968, -0.827125, -0.075180,
		34.980438, 34.668125, 46.377857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170975, 34.701057, 46.541389>,  <34.590561, 35.247112, 46.430481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170975, 34.701057, 46.541389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.521160, 34.518101, 46.603817>,  <34.731270, 34.408325, 46.641273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.521160, 34.518101, 46.603817>,  <34.170975, 34.701057, 46.541389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521160, 34.518101, 46.603817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341674, -0.357377, 0.869218,
		-0.341774, -0.814305, -0.469145,
		0.875471, -0.457371, 0.156085,
		34.783798, 34.380882, 46.650639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998772, 33.989323, 46.755768>,  <34.170975, 34.701057, 46.541389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998772, 33.989323, 46.755768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.383305, 34.015255, 46.862827>,  <34.614025, 34.030815, 46.927063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.383305, 34.015255, 46.862827>,  <33.998772, 33.989323, 46.755768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383305, 34.015255, 46.862827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204518, -0.482780, 0.851526,
		0.184416, -0.873339, -0.450854,
		0.961334, 0.064828, 0.267646,
		34.671703, 34.034702, 46.943119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990822, 33.385742, 47.200806>,  <33.998772, 33.989323, 46.755768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990822, 33.385742, 47.200806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.319191, 33.596218, 47.289543>,  <34.516212, 33.722504, 47.342785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.319191, 33.596218, 47.289543>,  <33.990822, 33.385742, 47.200806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319191, 33.596218, 47.289543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044975, -0.327712, 0.943707,
		0.569268, -0.784686, -0.245360,
		0.820921, 0.526187, 0.221847,
		34.565468, 33.754074, 47.356098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574757, 32.910461, 47.478672>,  <33.990822, 33.385742, 47.200806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574757, 32.910461, 47.478672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.630554, 33.283279, 47.612438>,  <34.664032, 33.506969, 47.692696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.630554, 33.283279, 47.612438>,  <34.574757, 32.910461, 47.478672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630554, 33.283279, 47.612438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067847, -0.345916, 0.935809,
		0.987895, -0.107855, -0.111491,
		0.139499, 0.932046, 0.334411,
		34.672405, 33.562893, 47.712761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037582, 32.870682, 48.050755>,  <34.574757, 32.910461, 47.478672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037582, 32.870682, 48.050755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.840912, 33.214336, 48.107529>,  <34.722912, 33.420528, 48.141594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.840912, 33.214336, 48.107529>,  <35.037582, 32.870682, 48.050755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840912, 33.214336, 48.107529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237841, -0.289297, 0.927221,
		0.837669, 0.422131, 0.346577,
		-0.491673, 0.859135, 0.141935,
		34.693409, 33.472076, 48.150108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343189, 33.128330, 48.630806>,  <35.037582, 32.870682, 48.050755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343189, 33.128330, 48.630806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.993225, 33.318474, 48.593796>,  <34.783245, 33.432560, 48.571590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.993225, 33.318474, 48.593796>,  <35.343189, 33.128330, 48.630806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993225, 33.318474, 48.593796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227544, -0.234868, 0.945019,
		0.427493, 0.847862, 0.313655,
		-0.874913, 0.475359, -0.092521,
		34.730751, 33.461082, 48.566040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268528, 33.450729, 49.230282>,  <35.343189, 33.128330, 48.630806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268528, 33.450729, 49.230282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.900780, 33.403816, 49.080078>,  <34.680130, 33.375668, 48.989956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.900780, 33.403816, 49.080078>,  <35.268528, 33.450729, 49.230282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900780, 33.403816, 49.080078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314970, -0.352475, 0.881224,
		-0.235707, 0.928443, 0.287115,
		-0.919367, -0.117278, -0.375513,
		34.624969, 33.368633, 48.967422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870689, 33.462566, 49.839157>,  <35.268528, 33.450729, 49.230282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870689, 33.462566, 49.839157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.584431, 33.342403, 49.586933>,  <34.412678, 33.270306, 49.435596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.584431, 33.342403, 49.586933>,  <34.870689, 33.462566, 49.839157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584431, 33.342403, 49.586933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609596, -0.172052, 0.773816,
		-0.340947, 0.938166, -0.059998,
		-0.715645, -0.300405, -0.630563,
		34.369736, 33.252281, 49.397762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284969, 33.865734, 50.050373>,  <34.870689, 33.462566, 49.839157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284969, 33.865734, 50.050373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.153992, 33.543938, 49.852150>,  <34.075405, 33.350861, 49.733215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.153992, 33.543938, 49.852150>,  <34.284969, 33.865734, 50.050373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153992, 33.543938, 49.852150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736336, -0.111396, 0.667383,
		-0.592108, 0.583422, -0.555902,
		-0.327440, -0.804494, -0.495553,
		34.055759, 33.302589, 49.703484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574696, 33.920105, 49.868553>,  <34.284969, 33.865734, 50.050373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574696, 33.920105, 49.868553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.649910, 33.529861, 49.913860>,  <33.695038, 33.295715, 49.941044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.649910, 33.529861, 49.913860>,  <33.574696, 33.920105, 49.868553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649910, 33.529861, 49.913860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737647, -0.064139, 0.672133,
		-0.648474, -0.209938, -0.731716,
		0.188038, -0.975609, 0.113268,
		33.706322, 33.237179, 49.947842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948479, 33.722000, 50.016289>,  <33.574696, 33.920105, 49.868553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948479, 33.722000, 50.016289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179775, 33.409187, 50.109299>,  <33.318554, 33.221500, 50.165104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179775, 33.409187, 50.109299>,  <32.948479, 33.722000, 50.016289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179775, 33.409187, 50.109299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600887, -0.215433, 0.769756,
		-0.551877, -0.584826, -0.594483,
		0.578244, -0.782028, 0.232522,
		33.353249, 33.174580, 50.179054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566013, 33.073555, 50.068665>,  <32.948479, 33.722000, 50.016289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566013, 33.073555, 50.068665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.880085, 33.050095, 50.315258>,  <33.068527, 33.036018, 50.463215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.880085, 33.050095, 50.315258>,  <32.566013, 33.073555, 50.068665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880085, 33.050095, 50.315258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617151, -0.156414, 0.771141,
		0.051196, -0.985949, -0.159011,
		0.785177, -0.058655, 0.616487,
		33.115639, 33.032497, 50.500206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731380, 32.418758, 50.328606>,  <32.566013, 33.073555, 50.068665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731380, 32.418758, 50.328606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.795395, 32.722942, 50.580349>,  <32.833805, 32.905453, 50.731396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.795395, 32.722942, 50.580349>,  <32.731380, 32.418758, 50.328606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795395, 32.722942, 50.580349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797506, -0.276113, 0.536420,
		0.581698, -0.587767, 0.562279,
		0.160037, 0.760456, 0.629362,
		32.843407, 32.951080, 50.769157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224621, 32.906429, 50.673779>,  <32.731380, 32.418758, 50.328606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224621, 32.906429, 50.673779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.897352, 33.129990, 50.727776>,  <31.700991, 33.264126, 50.760174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.897352, 33.129990, 50.727776>,  <32.224621, 32.906429, 50.673779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897352, 33.129990, 50.727776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032706, 0.189162, -0.981401,
		-0.574045, -0.807369, -0.136487,
		-0.818171, 0.558904, 0.134993,
		31.651901, 33.297661, 50.768272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787640, 32.687847, 50.202911>,  <32.224621, 32.906429, 50.673779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787640, 32.687847, 50.202911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.645950, 33.047722, 50.304958>,  <31.560936, 33.263649, 50.366188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.645950, 33.047722, 50.304958>,  <31.787640, 32.687847, 50.202911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645950, 33.047722, 50.304958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049658, 0.254329, -0.965842,
		-0.933841, -0.354792, -0.045412,
		-0.354223, 0.899688, 0.255121,
		31.539684, 33.317627, 50.381496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136761, 32.841351, 49.830193>,  <31.787640, 32.687847, 50.202911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136761, 32.841351, 49.830193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.279516, 33.199154, 49.937881>,  <31.365170, 33.413837, 50.002495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.279516, 33.199154, 49.937881>,  <31.136761, 32.841351, 49.830193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279516, 33.199154, 49.937881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136736, 0.335117, -0.932202,
		-0.924086, 0.295878, 0.241911,
		0.356887, 0.894512, 0.269220,
		31.386581, 33.467506, 50.018646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707638, 33.347221, 49.452770>,  <31.136761, 32.841351, 49.830193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707638, 33.347221, 49.452770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.049311, 33.534382, 49.543491>,  <31.254314, 33.646679, 49.597923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.049311, 33.534382, 49.543491>,  <30.707638, 33.347221, 49.452770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049311, 33.534382, 49.543491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007785, 0.447649, -0.894176,
		-0.519912, 0.762025, 0.386017,
		0.854184, 0.467898, 0.226806,
		31.305567, 33.674751, 49.611534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580362, 33.992142, 49.115952>,  <30.707638, 33.347221, 49.452770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580362, 33.992142, 49.115952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.973106, 34.021561, 49.185863>,  <31.208752, 34.039211, 49.227810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.973106, 34.021561, 49.185863>,  <30.580362, 33.992142, 49.115952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973106, 34.021561, 49.185863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109444, 0.532900, -0.839070,
		-0.154846, 0.842976, 0.515184,
		0.981858, 0.073543, 0.174776,
		31.267664, 34.043625, 49.238297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859903, 34.705544, 48.970905>,  <30.580362, 33.992142, 49.115952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859903, 34.705544, 48.970905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.163568, 34.446377, 48.945999>,  <31.345768, 34.290878, 48.931057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.163568, 34.446377, 48.945999>,  <30.859903, 34.705544, 48.970905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163568, 34.446377, 48.945999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254506, 0.383516, -0.887774,
		0.599080, 0.658120, 0.456050,
		0.759164, -0.647915, -0.062262,
		31.391317, 34.252003, 48.927322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475504, 35.238865, 48.690506>,  <30.859903, 34.705544, 48.970905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475504, 35.238865, 48.690506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.566515, 34.855282, 48.622814>,  <31.621122, 34.625134, 48.582199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.566515, 34.855282, 48.622814>,  <31.475504, 35.238865, 48.690506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566515, 34.855282, 48.622814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333132, 0.239956, -0.911836,
		0.915016, 0.151093, 0.374055,
		0.227529, -0.958954, -0.169230,
		31.634773, 34.567596, 48.572044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096539, 35.345760, 48.266811>,  <31.475504, 35.238865, 48.690506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096539, 35.345760, 48.266811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.011070, 34.957245, 48.224983>,  <31.959787, 34.724136, 48.199886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.011070, 34.957245, 48.224983>,  <32.096539, 35.345760, 48.266811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011070, 34.957245, 48.224983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474237, -0.009547, -0.880346,
		0.854074, -0.237699, 0.462662,
		-0.213675, -0.971292, -0.104572,
		31.946968, 34.665855, 48.193611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701244, 35.102592, 48.183121>,  <32.096539, 35.345760, 48.266811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701244, 35.102592, 48.183121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.445484, 34.832817, 48.035446>,  <32.292027, 34.670952, 47.946842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.445484, 34.832817, 48.035446>,  <32.701244, 35.102592, 48.183121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445484, 34.832817, 48.035446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395514, 0.123252, -0.910153,
		0.659346, -0.727970, 0.187943,
		-0.639400, -0.674439, -0.369188,
		32.253666, 34.630486, 47.924690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097023, 34.612804, 47.853519>,  <32.701244, 35.102592, 48.183121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097023, 34.612804, 47.853519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.739674, 34.594501, 47.674728>,  <32.525265, 34.583519, 47.567455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.739674, 34.594501, 47.674728>,  <33.097023, 34.612804, 47.853519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739674, 34.594501, 47.674728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444996, 0.047428, -0.894276,
		0.062126, -0.997826, -0.022006,
		-0.893375, -0.045765, -0.446975,
		32.471661, 34.580772, 47.540634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026787, 33.948380, 47.388451>,  <33.097023, 34.612804, 47.853519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026787, 33.948380, 47.388451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.740589, 34.196053, 47.259026>,  <32.568871, 34.344654, 47.181370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.740589, 34.196053, 47.259026>,  <33.026787, 33.948380, 47.388451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740589, 34.196053, 47.259026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283019, -0.166545, -0.944544,
		-0.638728, -0.767386, -0.056078,
		-0.715490, 0.619178, -0.323562,
		32.525944, 34.381805, 47.161957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766312, 33.619678, 46.772400>,  <33.026787, 33.948380, 47.388451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766312, 33.619678, 46.772400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.667480, 34.006744, 46.752125>,  <32.608181, 34.238983, 46.739960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.667480, 34.006744, 46.752125>,  <32.766312, 33.619678, 46.772400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667480, 34.006744, 46.752125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426005, 0.061492, -0.902629,
		-0.870329, -0.244613, -0.427425,
		-0.247078, 0.967669, -0.050688,
		32.593357, 34.297047, 46.736919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459072, 33.673027, 46.150005>,  <32.766312, 33.619678, 46.772400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459072, 33.673027, 46.150005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.580654, 34.043140, 46.240742>,  <32.653603, 34.265209, 46.295185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.580654, 34.043140, 46.240742>,  <32.459072, 33.673027, 46.150005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580654, 34.043140, 46.240742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292963, 0.135791, -0.946432,
		-0.906522, 0.354132, -0.229799,
		0.303957, 0.925284, 0.226845,
		32.671841, 34.320724, 46.308796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137939, 34.124809, 45.683468>,  <32.459072, 33.673027, 46.150005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137939, 34.124809, 45.683468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.450825, 34.349079, 45.792118>,  <32.638557, 34.483643, 45.857307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.450825, 34.349079, 45.792118>,  <32.137939, 34.124809, 45.683468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450825, 34.349079, 45.792118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200997, 0.185558, -0.961857,
		-0.589692, 0.806976, 0.032453,
		0.782217, 0.560676, 0.271622,
		32.685490, 34.517281, 45.873604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193039, 34.490433, 45.057640>,  <32.137939, 34.124809, 45.683468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193039, 34.490433, 45.057640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.522079, 34.608517, 45.252029>,  <32.719505, 34.679367, 45.368664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.522079, 34.608517, 45.252029>,  <32.193039, 34.490433, 45.057640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522079, 34.608517, 45.252029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381894, 0.346385, -0.856840,
		-0.421286, 0.890431, 0.172197,
		0.822603, 0.295213, 0.485977,
		32.768860, 34.697083, 45.397823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250546, 35.195839, 44.961651>,  <32.193039, 34.490433, 45.057640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250546, 35.195839, 44.961651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.622402, 35.081734, 45.054943>,  <32.845516, 35.013271, 45.110920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.622402, 35.081734, 45.054943>,  <32.250546, 35.195839, 44.961651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622402, 35.081734, 45.054943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345086, 0.452104, -0.822507,
		0.129189, 0.845118, 0.518735,
		0.929637, -0.285267, 0.233232,
		32.901295, 34.996155, 45.124912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675915, 35.621235, 44.856022>,  <32.250546, 35.195839, 44.961651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675915, 35.621235, 44.856022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.962425, 35.342312, 44.845394>,  <33.134331, 35.174957, 44.839020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.962425, 35.342312, 44.845394>,  <32.675915, 35.621235, 44.856022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962425, 35.342312, 44.845394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392238, 0.433815, -0.811143,
		0.577141, 0.570586, 0.584244,
		0.716280, -0.697307, -0.026567,
		33.177311, 35.133121, 44.837425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364525, 36.002647, 44.756863>,  <32.675915, 35.621235, 44.856022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364525, 36.002647, 44.756863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.420353, 35.619595, 44.656090>,  <33.453850, 35.389763, 44.595627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.420353, 35.619595, 44.656090>,  <33.364525, 36.002647, 44.756863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420353, 35.619595, 44.656090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461239, 0.288005, -0.839233,
		0.876230, 0.000935, 0.481893,
		0.139572, -0.957628, -0.251928,
		33.462223, 35.332306, 44.580513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082825, 35.902935, 44.614731>,  <33.364525, 36.002647, 44.756863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082825, 35.902935, 44.614731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.873463, 35.627716, 44.413677>,  <33.747845, 35.462585, 44.293045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.873463, 35.627716, 44.413677>,  <34.082825, 35.902935, 44.614731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873463, 35.627716, 44.413677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503694, 0.225958, -0.833808,
		0.687271, -0.689594, 0.228296,
		-0.523404, -0.688043, -0.502639,
		33.716442, 35.421303, 44.262886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541893, 35.689461, 44.147404>,  <34.082825, 35.902935, 44.614731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541893, 35.689461, 44.147404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.190815, 35.582676, 43.988213>,  <33.980167, 35.518604, 43.892700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.190815, 35.582676, 43.988213>,  <34.541893, 35.689461, 44.147404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190815, 35.582676, 43.988213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287059, 0.372107, -0.882686,
		0.383740, -0.888968, -0.249960,
		-0.877691, -0.266968, -0.397978,
		33.927505, 35.502586, 43.868820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.035923, 27.399651, 35.495163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.780121, 27.342400, 35.193024>,  <41.626640, 27.308048, 35.011742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.780121, 27.342400, 35.193024>,  <42.035923, 27.399651, 35.495163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780121, 27.342400, 35.193024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139585, 0.944570, -0.297160,
		0.756012, -0.295470, -0.584075,
		-0.639502, -0.143128, -0.755349,
		41.588272, 27.299461, 34.966419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346577, 27.627714, 34.825336>,  <42.035923, 27.399651, 35.495163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346577, 27.627714, 34.825336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.949043, 27.662184, 34.853241>,  <41.710522, 27.682865, 34.869984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.949043, 27.662184, 34.853241>,  <42.346577, 27.627714, 34.825336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949043, 27.662184, 34.853241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071329, 0.978656, -0.192730,
		-0.084882, -0.186566, -0.978769,
		-0.993835, 0.086174, 0.069763,
		41.650894, 27.688036, 34.874168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049477, 28.047647, 34.304493>,  <42.346577, 27.627714, 34.825336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049477, 28.047647, 34.304493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.746006, 28.034277, 34.564739>,  <41.563923, 28.026255, 34.720886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.746006, 28.034277, 34.564739>,  <42.049477, 28.047647, 34.304493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746006, 28.034277, 34.564739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262107, 0.929949, -0.257865,
		-0.596418, -0.366166, -0.714289,
		-0.758674, -0.033425, 0.650613,
		41.518402, 28.024250, 34.759922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541721, 28.441702, 33.847687>,  <42.049477, 28.047647, 34.304493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541721, 28.441702, 33.847687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.439610, 28.447758, 34.234386>,  <41.378342, 28.451391, 34.466408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.439610, 28.447758, 34.234386>,  <41.541721, 28.441702, 33.847687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439610, 28.447758, 34.234386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404933, 0.906289, -0.121119,
		-0.877988, -0.422387, -0.225227,
		-0.255280, 0.015139, 0.966749,
		41.363026, 28.452299, 34.524410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826054, 28.665722, 33.967014>,  <41.541721, 28.441702, 33.847687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826054, 28.665722, 33.967014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.986069, 28.734852, 34.327038>,  <41.082077, 28.776329, 34.543053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.986069, 28.734852, 34.327038>,  <40.826054, 28.665722, 33.967014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986069, 28.734852, 34.327038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395612, 0.918418, -0.000520,
		-0.826719, -0.355866, 0.435770,
		0.400033, 0.172826, 0.900058,
		41.106079, 28.786699, 34.597054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364883, 29.250193, 34.285549>,  <40.826054, 28.665722, 33.967014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364883, 29.250193, 34.285549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.705135, 29.251455, 34.495850>,  <40.909286, 29.252213, 34.622028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.705135, 29.251455, 34.495850>,  <40.364883, 29.250193, 34.285549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705135, 29.251455, 34.495850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171717, 0.946811, 0.272144,
		-0.496925, -0.321775, 0.805932,
		0.850634, 0.003157, 0.525748,
		40.960327, 29.252403, 34.653576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226154, 29.635321, 34.896034>,  <40.364883, 29.250193, 34.285549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226154, 29.635321, 34.896034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.620651, 29.637709, 34.829956>,  <40.857349, 29.639141, 34.790310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.620651, 29.637709, 34.829956>,  <40.226154, 29.635321, 34.896034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620651, 29.637709, 34.829956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075920, 0.871352, 0.484749,
		0.146839, -0.490622, 0.858912,
		0.986243, 0.005972, -0.165196,
		40.916523, 29.639500, 34.780396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451477, 29.953861, 35.555798>,  <40.226154, 29.635321, 34.896034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451477, 29.953861, 35.555798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.754253, 29.966015, 35.294685>,  <40.935921, 29.973307, 35.138020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.754253, 29.966015, 35.294685>,  <40.451477, 29.953861, 35.555798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754253, 29.966015, 35.294685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171260, 0.954781, 0.243029,
		0.630644, -0.295753, 0.717508,
		0.756940, 0.030385, -0.652778,
		40.981335, 29.975130, 35.098850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084801, 30.331486, 35.855320>,  <40.451477, 29.953861, 35.555798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084801, 30.331486, 35.855320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.130329, 30.336546, 35.457951>,  <41.157646, 30.339582, 35.219528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.130329, 30.336546, 35.457951>,  <41.084801, 30.331486, 35.855320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130329, 30.336546, 35.457951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328233, 0.943293, 0.049619,
		0.937714, -0.331721, 0.103219,
		0.113826, 0.012649, -0.993420,
		41.164478, 30.340340, 35.159924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733395, 30.495192, 35.775379>,  <41.084801, 30.331486, 35.855320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733395, 30.495192, 35.775379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.550228, 30.590868, 35.432896>,  <41.440327, 30.648273, 35.227406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.550228, 30.590868, 35.432896>,  <41.733395, 30.495192, 35.775379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550228, 30.590868, 35.432896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293243, 0.949859, 0.108519,
		0.839238, -0.201385, -0.505098,
		-0.457917, 0.239190, -0.856213,
		41.412853, 30.662624, 35.176033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263733, 30.786779, 35.272575>,  <41.733395, 30.495192, 35.775379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.263733, 30.786779, 35.272575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.908173, 30.920053, 35.146820>,  <41.694836, 31.000017, 35.071365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.908173, 30.920053, 35.146820>,  <42.263733, 30.786779, 35.272575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908173, 30.920053, 35.146820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365654, 0.929470, -0.048817,
		0.275951, -0.158352, -0.948038,
		-0.888903, 0.333183, -0.314390,
		41.641502, 31.020008, 35.052502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417339, 31.278217, 34.777103>,  <42.263733, 30.786779, 35.272575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417339, 31.278217, 34.777103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.028934, 31.357241, 34.830933>,  <41.795891, 31.404655, 34.863232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.028934, 31.357241, 34.830933>,  <42.417339, 31.278217, 34.777103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028934, 31.357241, 34.830933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161247, 0.956944, -0.241367,
		-0.176462, -0.212670, -0.961058,
		-0.971010, 0.197560, 0.134572,
		41.737633, 31.416510, 34.871304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156944, 31.672592, 34.253258>,  <42.417339, 31.278217, 34.777103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156944, 31.672592, 34.253258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.900009, 31.769073, 34.544250>,  <41.745850, 31.826963, 34.718845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.900009, 31.769073, 34.544250>,  <42.156944, 31.672592, 34.253258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900009, 31.769073, 34.544250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192660, 0.969524, -0.151347,
		-0.741814, 0.042941, -0.669229,
		-0.642335, 0.241205, 0.727479,
		41.707310, 31.841434, 34.762493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696838, 32.312454, 34.022602>,  <42.156944, 31.672592, 34.253258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696838, 32.312454, 34.022602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.659035, 32.300846, 34.420643>,  <41.636353, 32.293880, 34.659466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.659035, 32.300846, 34.420643>,  <41.696838, 32.312454, 34.022602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659035, 32.300846, 34.420643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052619, 0.998032, 0.034103,
		-0.994133, 0.055584, -0.092795,
		-0.094508, -0.029020, 0.995101,
		41.630684, 32.292141, 34.719173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091724, 32.763870, 34.138138>,  <41.696838, 32.312454, 34.022602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091724, 32.763870, 34.138138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.320282, 32.717678, 34.463142>,  <41.457417, 32.689960, 34.658146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.320282, 32.717678, 34.463142>,  <41.091724, 32.763870, 34.138138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320282, 32.717678, 34.463142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189514, 0.981858, 0.006279,
		-0.798497, 0.150395, 0.582909,
		0.571390, -0.115483, 0.812513,
		41.491699, 32.683033, 34.706898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976727, 33.377567, 34.477585>,  <41.091724, 32.763870, 34.138138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976727, 33.377567, 34.477585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.306694, 33.244713, 34.660534>,  <41.504677, 33.165001, 34.770306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.306694, 33.244713, 34.660534>,  <40.976727, 33.377567, 34.477585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306694, 33.244713, 34.660534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344430, 0.936946, 0.059168,
		-0.448188, 0.108725, 0.887303,
		0.824921, -0.332132, 0.457376,
		41.554169, 33.145073, 34.797749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916695, 33.648842, 35.139900>,  <40.976727, 33.377567, 34.477585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916695, 33.648842, 35.139900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.296886, 33.545677, 35.070534>,  <41.525002, 33.483780, 35.028915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.296886, 33.545677, 35.070534>,  <40.916695, 33.648842, 35.139900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296886, 33.545677, 35.070534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280241, 0.952473, 0.119413,
		0.134375, -0.162097, 0.977583,
		0.950478, -0.257913, -0.173415,
		41.582031, 33.468304, 35.018509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403107, 33.985264, 35.621353>,  <40.916695, 33.648842, 35.139900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403107, 33.985264, 35.621353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.668118, 33.876202, 35.342293>,  <41.827126, 33.810764, 35.174858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.668118, 33.876202, 35.342293>,  <41.403107, 33.985264, 35.621353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668118, 33.876202, 35.342293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389814, 0.920836, 0.010310,
		0.639611, -0.278785, 0.716364,
		0.662528, -0.272654, -0.697651,
		41.866875, 33.794407, 35.132999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059391, 34.194748, 35.886551>,  <41.403107, 33.985264, 35.621353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059391, 34.194748, 35.886551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.054691, 34.152771, 35.488789>,  <42.051872, 34.127586, 35.250130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.054691, 34.152771, 35.488789>,  <42.059391, 34.194748, 35.886551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054691, 34.152771, 35.488789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239981, 0.965117, -0.104684,
		0.970707, -0.239869, 0.013846,
		-0.011747, -0.104940, -0.994409,
		42.051167, 34.121288, 35.190464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600174, 34.603840, 35.668606>,  <42.059391, 34.194748, 35.886551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600174, 34.603840, 35.668606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.380383, 34.531155, 35.342403>,  <42.248508, 34.487545, 35.146683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.380383, 34.531155, 35.342403>,  <42.600174, 34.603840, 35.668606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380383, 34.531155, 35.342403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092043, 0.956958, -0.275244,
		0.830419, -0.226304, -0.509107,
		-0.549483, -0.181708, -0.815506,
		42.215538, 34.476643, 35.097752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018581, 34.881165, 35.115616>,  <42.600174, 34.603840, 35.668606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018581, 34.881165, 35.115616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.633114, 34.855141, 35.011990>,  <42.401833, 34.839527, 34.949814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.633114, 34.855141, 35.011990>,  <43.018581, 34.881165, 35.115616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.633114, 34.855141, 35.011990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019329, 0.984327, -0.175290,
		0.266413, -0.163914, -0.949819,
		-0.963665, -0.065058, -0.259069,
		42.344013, 34.835625, 34.934269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721333, 34.967972, 35.413349>,  <43.018581, 34.881165, 35.115616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721333, 34.967972, 35.413349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.107830, 34.991806, 35.513611>,  <44.339729, 35.006107, 35.573769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.107830, 34.991806, 35.513611>,  <43.721333, 34.967972, 35.413349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107830, 34.991806, 35.513611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123591, -0.960841, -0.248010,
		0.226061, 0.270616, -0.935769,
		0.966241, 0.059587, 0.250654,
		44.397701, 35.009682, 35.588806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.048817, 34.642097, 34.856163>,  <43.721333, 34.967972, 35.413349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.048817, 34.642097, 34.856163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.313614, 34.651192, 35.155830>,  <44.472492, 34.656647, 35.335632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.313614, 34.651192, 35.155830>,  <44.048817, 34.642097, 34.856163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313614, 34.651192, 35.155830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140974, -0.985477, -0.094661,
		0.736135, 0.168278, -0.655582,
		0.661991, 0.022737, 0.749167,
		44.512211, 34.658012, 35.380581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.680733, 34.394382, 34.608528>,  <44.048817, 34.642097, 34.856163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.680733, 34.394382, 34.608528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.719864, 34.331104, 35.001549>,  <44.743343, 34.293137, 35.237362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.719864, 34.331104, 35.001549>,  <44.680733, 34.394382, 34.608528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719864, 34.331104, 35.001549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419404, -0.888779, -0.184859,
		0.902513, 0.430169, -0.020601,
		0.097831, -0.158197, 0.982549,
		44.749214, 34.283646, 35.296314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.298389, 34.268097, 34.682610>,  <44.680733, 34.394382, 34.608528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.298389, 34.268097, 34.682610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.152958, 34.093086, 35.011578>,  <45.065697, 33.988079, 35.208958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.152958, 34.093086, 35.011578>,  <45.298389, 34.268097, 34.682610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.152958, 34.093086, 35.011578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428444, -0.862467, -0.269419,
		0.827191, 0.254407, 0.501031,
		-0.363580, -0.437525, 0.822424,
		45.043884, 33.961830, 35.258305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.814209, 33.758816, 34.940258>,  <45.298389, 34.268097, 34.682610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.814209, 33.758816, 34.940258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.463097, 33.648533, 35.096970>,  <45.252430, 33.582363, 35.190998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.463097, 33.648533, 35.096970>,  <45.814209, 33.758816, 34.940258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.463097, 33.648533, 35.096970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282406, -0.958387, -0.041730,
		0.386981, 0.074011, 0.919112,
		-0.877777, -0.275712, 0.391779,
		45.199764, 33.565819, 35.214504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.947414, 33.183319, 35.349640>,  <45.814209, 33.758816, 34.940258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.947414, 33.183319, 35.349640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.551247, 33.156334, 35.301437>,  <45.313545, 33.140144, 35.272514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.551247, 33.156334, 35.301437>,  <45.947414, 33.183319, 35.349640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.551247, 33.156334, 35.301437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048097, -0.986437, 0.156933,
		-0.129458, 0.149633, 0.980230,
		-0.990418, -0.067463, -0.120505,
		45.254120, 33.136097, 35.265285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.830074, 32.702507, 35.817589>,  <45.947414, 33.183319, 35.349640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.830074, 32.702507, 35.817589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.466080, 32.720230, 35.652683>,  <45.247684, 32.730865, 35.553741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.466080, 32.720230, 35.652683>,  <45.830074, 32.702507, 35.817589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.466080, 32.720230, 35.652683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103304, -0.987149, 0.121923,
		-0.401561, 0.153536, 0.902871,
		-0.909987, 0.044311, -0.412261,
		45.193085, 32.733524, 35.529003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.261429, 32.386211, 36.264946>,  <45.830074, 32.702507, 35.817589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.261429, 32.386211, 36.264946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.191223, 32.372639, 35.871391>,  <45.149097, 32.364494, 35.635258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.191223, 32.372639, 35.871391>,  <45.261429, 32.386211, 36.264946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.191223, 32.372639, 35.871391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179666, -0.981518, 0.065899,
		-0.967943, 0.188338, 0.166179,
		-0.175519, -0.033930, -0.983891,
		45.138569, 32.362461, 35.576225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769775, 31.838053, 36.144283>,  <45.261429, 32.386211, 36.264946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769775, 31.838053, 36.144283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.909100, 31.859701, 35.769958>,  <44.992695, 31.872690, 35.545364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.909100, 31.859701, 35.769958>,  <44.769775, 31.838053, 36.144283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.909100, 31.859701, 35.769958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141044, -0.983940, -0.109400,
		-0.926707, 0.170096, -0.335083,
		0.348310, 0.054120, -0.935815,
		45.013592, 31.875937, 35.489212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.235672, 31.507479, 35.736534>,  <44.769775, 31.838053, 36.144283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.235672, 31.507479, 35.736534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.581005, 31.489893, 35.535446>,  <44.788204, 31.479342, 35.414791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.581005, 31.489893, 35.535446>,  <44.235672, 31.507479, 35.736534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.581005, 31.489893, 35.535446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181833, -0.956384, -0.228620,
		-0.470744, 0.288786, -0.833669,
		0.863329, -0.043967, -0.502722,
		44.840004, 31.476704, 35.384628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054764, 31.193815, 35.057793>,  <44.235672, 31.507479, 35.736534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054764, 31.193815, 35.057793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.451553, 31.153748, 35.088661>,  <44.689629, 31.129707, 35.107182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.451553, 31.153748, 35.088661>,  <44.054764, 31.193815, 35.057793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.451553, 31.153748, 35.088661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079101, -0.967715, -0.239311,
		0.098651, 0.231286, -0.967871,
		0.991973, -0.100168, 0.077171,
		44.749146, 31.123697, 35.111813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286449, 30.959339, 34.443951>,  <44.054764, 31.193815, 35.057793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286449, 30.959339, 34.443951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.580509, 30.872248, 34.700745>,  <44.756947, 30.819994, 34.854820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.580509, 30.872248, 34.700745>,  <44.286449, 30.959339, 34.443951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.580509, 30.872248, 34.700745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181871, -0.975647, -0.122623,
		0.653050, -0.026613, -0.756847,
		0.735152, -0.217728, 0.641986,
		44.801056, 30.806929, 34.893341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.804073, 30.572634, 34.019905>,  <44.286449, 30.959339, 34.443951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.804073, 30.572634, 34.019905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.878136, 30.457314, 34.395691>,  <44.922573, 30.388123, 34.621162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.878136, 30.457314, 34.395691>,  <44.804073, 30.572634, 34.019905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.878136, 30.457314, 34.395691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010591, -0.956528, -0.291447,
		0.982653, 0.044012, -0.180156,
		0.185152, -0.288300, 0.939469,
		44.933681, 30.370823, 34.677532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.338303, 29.999134, 33.957916>,  <44.804073, 30.572634, 34.019905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.338303, 29.999134, 33.957916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.189838, 29.961878, 34.327469>,  <45.100758, 29.939524, 34.549202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.189838, 29.961878, 34.327469>,  <45.338303, 29.999134, 33.957916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.189838, 29.961878, 34.327469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022546, -0.995568, -0.091307,
		0.928294, -0.013060, 0.371618,
		-0.371163, -0.093138, 0.923885,
		45.078491, 29.933937, 34.604633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.744530, 29.377264, 34.204678>,  <45.338303, 29.999134, 33.957916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.744530, 29.377264, 34.204678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.405880, 29.408945, 34.415184>,  <45.202690, 29.427954, 34.541489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.405880, 29.408945, 34.415184>,  <45.744530, 29.377264, 34.204678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.405880, 29.408945, 34.415184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133788, -0.988782, -0.066417,
		0.515101, -0.126638, 0.847723,
		-0.846624, 0.079204, 0.526265,
		45.151894, 29.432707, 34.573063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.707447, 28.911417, 34.785843>,  <45.744530, 29.377264, 34.204678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.707447, 28.911417, 34.785843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.315357, 28.970438, 34.733089>,  <45.080105, 29.005850, 34.701435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.315357, 28.970438, 34.733089>,  <45.707447, 28.911417, 34.785843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.315357, 28.970438, 34.733089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135619, -0.986164, -0.095335,
		-0.144130, -0.075563, 0.986670,
		-0.980222, 0.147552, -0.131888,
		45.021290, 29.014704, 34.693523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.356144, 28.389654, 35.194824>,  <45.707447, 28.911417, 34.785843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.356144, 28.389654, 35.194824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.056469, 28.523726, 34.966309>,  <44.876663, 28.604168, 34.829201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.056469, 28.523726, 34.966309>,  <45.356144, 28.389654, 35.194824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.056469, 28.523726, 34.966309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458732, -0.884736, 0.082501,
		-0.477785, 0.323876, 0.816594,
		-0.749191, 0.335180, -0.571286,
		44.831711, 28.624279, 34.794922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633644, 28.380495, 35.481918>,  <45.356144, 28.389654, 35.194824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633644, 28.380495, 35.481918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.597721, 28.376986, 35.083549>,  <44.576168, 28.374880, 34.844528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.597721, 28.376986, 35.083549>,  <44.633644, 28.380495, 35.481918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597721, 28.376986, 35.083549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518035, -0.853638, 0.054235,
		-0.850632, 0.520793, 0.072117,
		-0.089807, -0.008775, -0.995921,
		44.570778, 28.374353, 34.784775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020786, 28.052536, 35.466873>,  <44.633644, 28.380495, 35.481918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020786, 28.052536, 35.466873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.170570, 28.050060, 35.095985>,  <44.260441, 28.048574, 34.873451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.170570, 28.050060, 35.095985>,  <44.020786, 28.052536, 35.466873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.170570, 28.050060, 35.095985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405637, -0.900309, -0.157805,
		-0.833810, 0.435207, -0.339641,
		0.374460, -0.006191, -0.927222,
		44.282909, 28.048203, 34.817818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481567, 27.856817, 35.061863>,  <44.020786, 28.052536, 35.466873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481567, 27.856817, 35.061863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.805725, 27.787119, 34.838112>,  <44.000217, 27.745300, 34.703861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.805725, 27.787119, 34.838112>,  <43.481567, 27.856817, 35.061863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805725, 27.787119, 34.838112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417803, -0.841201, -0.343250,
		-0.410740, 0.511877, -0.754503,
		0.810391, -0.174248, -0.559379,
		44.048843, 27.734844, 34.670300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249363, 27.784140, 34.345280>,  <43.481567, 27.856817, 35.061863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249363, 27.784140, 34.345280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.607079, 27.605469, 34.356052>,  <43.821709, 27.498266, 34.362514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.607079, 27.605469, 34.356052>,  <43.249363, 27.784140, 34.345280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607079, 27.605469, 34.356052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406639, -0.836296, -0.367768,
		0.186796, 0.317940, -0.929527,
		0.894289, -0.446680, 0.026930,
		43.875366, 27.471464, 34.364132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.633675, 37.095295, 40.779167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256187, 37.001320, 40.686047>,  <38.029694, 36.944935, 40.630177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256187, 37.001320, 40.686047>,  <38.633675, 37.095295, 40.779167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256187, 37.001320, 40.686047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300225, -0.313190, -0.900987,
		0.138763, -0.920173, 0.366097,
		-0.943721, -0.234935, -0.232799,
		37.973072, 36.930840, 40.616207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696259, 36.490921, 40.344105>,  <38.633675, 37.095295, 40.779167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696259, 36.490921, 40.344105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327499, 36.618584, 40.256245>,  <38.106243, 36.695183, 40.203529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327499, 36.618584, 40.256245>,  <38.696259, 36.490921, 40.344105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327499, 36.618584, 40.256245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195181, -0.107164, -0.974895,
		-0.334684, -0.941623, 0.036501,
		-0.921895, 0.319157, -0.219653,
		38.050930, 36.714333, 40.190350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633759, 36.161026, 39.815327>,  <38.696259, 36.490921, 40.344105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633759, 36.161026, 39.815327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330925, 36.419067, 39.774010>,  <38.149223, 36.573891, 39.749218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330925, 36.419067, 39.774010>,  <38.633759, 36.161026, 39.815327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330925, 36.419067, 39.774010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217944, 0.100334, -0.970790,
		-0.615892, -0.757483, -0.216557,
		-0.757085, 0.645100, -0.103294,
		38.103798, 36.612598, 39.743023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141544, 35.827446, 39.357361>,  <38.633759, 36.161026, 39.815327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141544, 35.827446, 39.357361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119209, 36.226025, 39.332115>,  <38.105808, 36.465172, 39.316967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119209, 36.226025, 39.332115>,  <38.141544, 35.827446, 39.357361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119209, 36.226025, 39.332115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178319, -0.052246, -0.982585,
		-0.982387, -0.066123, -0.174767,
		-0.055841, 0.996443, -0.063117,
		38.102455, 36.524956, 39.313179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882473, 35.989666, 38.634804>,  <38.141544, 35.827446, 39.357361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882473, 35.989666, 38.634804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027592, 36.338646, 38.765774>,  <38.114662, 36.548035, 38.844357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027592, 36.338646, 38.765774>,  <37.882473, 35.989666, 38.634804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027592, 36.338646, 38.765774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164487, 0.285891, -0.944039,
		-0.917236, 0.396352, -0.039786,
		0.362797, 0.872451, 0.327424,
		38.136433, 36.600380, 38.864002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445324, 36.613865, 38.364353>,  <37.882473, 35.989666, 38.634804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445324, 36.613865, 38.364353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804447, 36.763550, 38.457230>,  <38.019920, 36.853359, 38.512955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804447, 36.763550, 38.457230>,  <37.445324, 36.613865, 38.364353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804447, 36.763550, 38.457230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071104, 0.397148, -0.914996,
		-0.434614, 0.837998, 0.329954,
		0.897806, 0.374209, 0.232191,
		38.073788, 36.875813, 38.526886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478939, 37.314880, 38.140385>,  <37.445324, 36.613865, 38.364353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478939, 37.314880, 38.140385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864697, 37.223541, 38.193748>,  <38.096153, 37.168739, 38.225765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864697, 37.223541, 38.193748>,  <37.478939, 37.314880, 38.140385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864697, 37.223541, 38.193748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221683, 0.422928, -0.878628,
		0.144212, 0.876920, 0.458492,
		0.964396, -0.228349, 0.133407,
		38.154015, 37.155037, 38.233772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875443, 37.879154, 37.981503>,  <37.478939, 37.314880, 38.140385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875443, 37.879154, 37.981503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129627, 37.572250, 37.946838>,  <38.282139, 37.388107, 37.926041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129627, 37.572250, 37.946838>,  <37.875443, 37.879154, 37.981503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129627, 37.572250, 37.946838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329361, 0.370856, -0.868324,
		0.698366, 0.523241, 0.488368,
		0.635457, -0.767258, -0.086658,
		38.320263, 37.342072, 37.920841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505287, 38.243347, 37.774662>,  <37.875443, 37.879154, 37.981503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505287, 38.243347, 37.774662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514580, 37.856773, 37.672321>,  <38.520157, 37.624828, 37.610916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514580, 37.856773, 37.672321>,  <38.505287, 38.243347, 37.774662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514580, 37.856773, 37.672321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259822, 0.252965, -0.931934,
		0.965377, -0.044827, 0.256978,
		0.023231, -0.966436, -0.255854,
		38.521549, 37.566841, 37.595566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179260, 38.153618, 37.451527>,  <38.505287, 38.243347, 37.774662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179260, 38.153618, 37.451527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952534, 37.853313, 37.315830>,  <38.816498, 37.673130, 37.234413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952534, 37.853313, 37.315830>,  <39.179260, 38.153618, 37.451527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952534, 37.853313, 37.315830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393272, 0.115258, -0.912169,
		0.723920, -0.650442, 0.229924,
		-0.566812, -0.750760, -0.339238,
		38.782490, 37.628086, 37.214058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527126, 37.649311, 37.101833>,  <39.179260, 38.153618, 37.451527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527126, 37.649311, 37.101833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155167, 37.642277, 36.954880>,  <38.931992, 37.638054, 36.866707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155167, 37.642277, 36.954880>,  <39.527126, 37.649311, 37.101833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155167, 37.642277, 36.954880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367789, -0.055020, -0.928280,
		-0.003880, -0.998330, 0.057634,
		-0.929901, -0.017595, -0.367388,
		38.876198, 37.637001, 36.844662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306782, 36.965088, 36.793537>,  <39.527126, 37.649311, 37.101833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306782, 36.965088, 36.793537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172832, 37.318226, 36.661819>,  <39.092461, 37.530109, 36.582787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172832, 37.318226, 36.661819>,  <39.306782, 36.965088, 36.793537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172832, 37.318226, 36.661819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471875, -0.145366, -0.869599,
		-0.815592, -0.446596, -0.367915,
		-0.334877, 0.882848, -0.329297,
		39.072369, 37.583080, 36.563030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592373, 36.329483, 36.274815>,  <39.306782, 36.965088, 36.793537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592373, 36.329483, 36.274815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615883, 35.979897, 36.081848>,  <39.629990, 35.770145, 35.966068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615883, 35.979897, 36.081848>,  <39.592373, 36.329483, 36.274815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615883, 35.979897, 36.081848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296469, -0.476727, 0.827549,
		-0.953232, 0.094382, -0.287124,
		0.058773, -0.873970, -0.482413,
		39.633514, 35.717705, 35.937126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948330, 36.619495, 35.953785>,  <39.592373, 36.329483, 36.274815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948330, 36.619495, 35.953785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672787, 36.411144, 35.752129>,  <38.507462, 36.286133, 35.631134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672787, 36.411144, 35.752129>,  <38.948330, 36.619495, 35.953785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672787, 36.411144, 35.752129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525247, -0.120648, 0.842354,
		-0.499588, 0.845062, -0.190480,
		-0.688860, -0.520879, -0.504140,
		38.466129, 36.254879, 35.600887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926662, 35.880852, 36.220638>,  <38.948330, 36.619495, 35.953785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926662, 35.880852, 36.220638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229626, 35.625351, 36.166500>,  <39.411404, 35.472050, 36.134018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229626, 35.625351, 36.166500>,  <38.926662, 35.880852, 36.220638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229626, 35.625351, 36.166500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276351, -0.501417, 0.819885,
		-0.591573, -0.583585, -0.556300,
		0.757411, -0.638756, -0.135350,
		39.456848, 35.433723, 36.125896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604931, 35.231243, 36.128162>,  <38.926662, 35.880852, 36.220638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604931, 35.231243, 36.128162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978466, 35.156067, 36.249905>,  <39.202587, 35.110962, 36.322948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978466, 35.156067, 36.249905>,  <38.604931, 35.231243, 36.128162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978466, 35.156067, 36.249905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353521, -0.614681, 0.705117,
		0.054557, -0.766058, -0.640452,
		0.933834, -0.187944, 0.304353,
		39.258617, 35.099682, 36.341209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566303, 34.535034, 36.218868>,  <38.604931, 35.231243, 36.128162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566303, 34.535034, 36.218868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891201, 34.656410, 36.418140>,  <39.086140, 34.729237, 36.537704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891201, 34.656410, 36.418140>,  <38.566303, 34.535034, 36.218868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891201, 34.656410, 36.418140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194399, -0.664410, 0.721643,
		0.549969, -0.682997, -0.480676,
		0.812245, 0.303438, 0.498179,
		39.134876, 34.747440, 36.567593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910553, 33.925900, 36.463825>,  <38.566303, 34.535034, 36.218868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910553, 33.925900, 36.463825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018066, 34.230713, 36.699474>,  <39.082577, 34.413601, 36.840862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018066, 34.230713, 36.699474>,  <38.910553, 33.925900, 36.463825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018066, 34.230713, 36.699474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214113, -0.549055, 0.807895,
		0.939100, -0.343290, 0.015581,
		0.268788, 0.762030, 0.589121,
		39.098701, 34.459324, 36.876209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322613, 33.567287, 36.928375>,  <38.910553, 33.925900, 36.463825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322613, 33.567287, 36.928375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204140, 33.907387, 37.102432>,  <39.133057, 34.111446, 37.206867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204140, 33.907387, 37.102432>,  <39.322613, 33.567287, 36.928375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204140, 33.907387, 37.102432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213236, -0.502949, 0.837599,
		0.931023, 0.155298, 0.330271,
		-0.296187, 0.850250, 0.435142,
		39.115284, 34.162460, 37.232975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418472, 33.359695, 37.610222>,  <39.322613, 33.567287, 36.928375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418472, 33.359695, 37.610222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186810, 33.685753, 37.606079>,  <39.047810, 33.881390, 37.603592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186810, 33.685753, 37.606079>,  <39.418472, 33.359695, 37.610222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186810, 33.685753, 37.606079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479013, -0.329997, 0.813418,
		0.659637, 0.476062, 0.581588,
		-0.579160, 0.815148, -0.010361,
		39.013062, 33.930298, 37.602970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347359, 33.570698, 38.247349>,  <39.418472, 33.359695, 37.610222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347359, 33.570698, 38.247349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027279, 33.760502, 38.100639>,  <38.835232, 33.874386, 38.012615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027279, 33.760502, 38.100639>,  <39.347359, 33.570698, 38.247349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027279, 33.760502, 38.100639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564883, -0.390899, 0.726708,
		0.201459, 0.788695, 0.580840,
		-0.800201, 0.474509, -0.366770,
		38.787220, 33.902855, 37.990608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982803, 33.713696, 38.826561>,  <39.347359, 33.570698, 38.247349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982803, 33.713696, 38.826561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725769, 33.749508, 38.522175>,  <38.571548, 33.770996, 38.339542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725769, 33.749508, 38.522175>,  <38.982803, 33.713696, 38.826561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725769, 33.749508, 38.522175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728539, -0.378977, 0.570620,
		-0.237297, 0.921064, 0.308756,
		-0.642590, 0.089534, -0.760961,
		38.532993, 33.776367, 38.293888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396851, 33.905121, 39.099995>,  <38.982803, 33.713696, 38.826561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396851, 33.905121, 39.099995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276081, 33.760742, 38.747051>,  <38.203621, 33.674114, 38.535286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276081, 33.760742, 38.747051>,  <38.396851, 33.905121, 39.099995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276081, 33.760742, 38.747051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733949, -0.502676, 0.456766,
		-0.608409, 0.785517, -0.113144,
		-0.301923, -0.360942, -0.882362,
		38.185505, 33.652458, 38.482342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703640, 34.031792, 38.994797>,  <38.396851, 33.905121, 39.099995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703640, 34.031792, 38.994797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757259, 33.708447, 38.765511>,  <37.789433, 33.514439, 38.627937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757259, 33.708447, 38.765511>,  <37.703640, 34.031792, 38.994797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757259, 33.708447, 38.765511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733509, -0.469876, 0.491102,
		-0.666330, 0.354628, -0.655929,
		0.134048, -0.808366, -0.573215,
		37.797474, 33.465939, 38.593548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041100, 33.722450, 39.053905>,  <37.703640, 34.031792, 38.994797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041100, 33.722450, 39.053905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305618, 33.448555, 38.931389>,  <37.464329, 33.284218, 38.857880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305618, 33.448555, 38.931389>,  <37.041100, 33.722450, 39.053905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305618, 33.448555, 38.931389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436257, -0.683239, 0.585547,
		-0.610218, -0.253599, -0.750548,
		0.661298, -0.684743, -0.306290,
		37.504009, 33.243134, 38.839500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696346, 33.124218, 38.873123>,  <37.041100, 33.722450, 39.053905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696346, 33.124218, 38.873123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057495, 32.973316, 38.955589>,  <37.274185, 32.882774, 39.005070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057495, 32.973316, 38.955589>,  <36.696346, 33.124218, 38.873123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057495, 32.973316, 38.955589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425331, -0.713986, 0.556163,
		-0.062613, -0.589833, -0.805094,
		0.902869, -0.377254, 0.206170,
		37.328358, 32.860138, 39.017441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572006, 32.390789, 38.880283>,  <36.696346, 33.124218, 38.873123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572006, 32.390789, 38.880283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902412, 32.455990, 39.096107>,  <37.100658, 32.495110, 39.225601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902412, 32.455990, 39.096107>,  <36.572006, 32.390789, 38.880283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902412, 32.455990, 39.096107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430657, -0.435063, 0.790731,
		0.363630, -0.885523, -0.289174,
		0.826019, 0.162999, 0.539559,
		37.150219, 32.504890, 39.257977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509830, 31.918518, 39.363838>,  <36.572006, 32.390789, 38.880283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509830, 31.918518, 39.363838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827240, 32.097881, 39.528400>,  <37.017685, 32.205498, 39.627136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827240, 32.097881, 39.528400>,  <36.509830, 31.918518, 39.363838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827240, 32.097881, 39.528400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378497, -0.165693, 0.910651,
		0.476510, -0.878337, 0.038240,
		0.793523, 0.448408, 0.411402,
		37.065296, 32.232403, 39.651821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736404, 31.201342, 39.106499>,  <36.509830, 31.918518, 39.363838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736404, 31.201342, 39.106499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525501, 30.880232, 38.995106>,  <36.398960, 30.687567, 38.928268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525501, 30.880232, 38.995106>,  <36.736404, 31.201342, 39.106499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525501, 30.880232, 38.995106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116323, 0.392848, -0.912217,
		0.841705, -0.448581, -0.300513,
		-0.527259, -0.802774, -0.278481,
		36.367325, 30.639400, 38.911560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968685, 31.193142, 38.376560>,  <36.736404, 31.201342, 39.106499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968685, 31.193142, 38.376560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643200, 30.962122, 38.402794>,  <36.447906, 30.823509, 38.418533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643200, 30.962122, 38.402794>,  <36.968685, 31.193142, 38.376560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643200, 30.962122, 38.402794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299653, 0.320133, -0.898734,
		0.498069, -0.750966, -0.433562,
		-0.813716, -0.577550, 0.065581,
		36.399086, 30.788857, 38.422470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959751, 30.701649, 37.779415>,  <36.968685, 31.193142, 38.376560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959751, 30.701649, 37.779415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590607, 30.741100, 37.928329>,  <36.369122, 30.764771, 38.017677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590607, 30.741100, 37.928329>,  <36.959751, 30.701649, 37.779415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590607, 30.741100, 37.928329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353788, 0.164874, -0.920679,
		-0.152188, -0.981371, -0.117261,
		-0.922861, 0.098631, 0.372289,
		36.313747, 30.770689, 38.040016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547985, 30.442228, 37.307892>,  <36.959751, 30.701649, 37.779415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547985, 30.442228, 37.307892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278038, 30.655033, 37.512444>,  <36.116070, 30.782717, 37.635174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278038, 30.655033, 37.512444>,  <36.547985, 30.442228, 37.307892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278038, 30.655033, 37.512444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382573, 0.340344, -0.858955,
		-0.631020, -0.775325, -0.026155,
		-0.674871, 0.532012, 0.511383,
		36.075577, 30.814636, 37.665859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851234, 30.284191, 36.975353>,  <36.547985, 30.442228, 37.307892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851234, 30.284191, 36.975353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773788, 30.612669, 37.190071>,  <35.727322, 30.809755, 37.318901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773788, 30.612669, 37.190071>,  <35.851234, 30.284191, 36.975353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773788, 30.612669, 37.190071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509010, 0.383664, -0.770527,
		-0.838702, -0.422421, 0.343714,
		-0.193616, 0.821196, 0.536796,
		35.715702, 30.859028, 37.351109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128803, 30.391306, 36.957710>,  <35.851234, 30.284191, 36.975353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128803, 30.391306, 36.957710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287788, 30.750145, 37.034893>,  <35.383179, 30.965448, 37.081203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287788, 30.750145, 37.034893>,  <35.128803, 30.391306, 36.957710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287788, 30.750145, 37.034893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499254, 0.387851, -0.774802,
		-0.769914, 0.211622, 0.602038,
		0.397466, 0.897100, 0.192959,
		35.407028, 31.019276, 37.092781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621864, 30.836643, 36.961712>,  <35.128803, 30.391306, 36.957710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621864, 30.836643, 36.961712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954880, 31.048784, 36.897705>,  <35.154690, 31.176069, 36.859299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954880, 31.048784, 36.897705>,  <34.621864, 30.836643, 36.961712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954880, 31.048784, 36.897705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419740, 0.415405, -0.807005,
		-0.361523, 0.739030, 0.568450,
		0.832538, 0.530352, -0.160022,
		35.204639, 31.207890, 36.849697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280720, 31.418331, 36.718521>,  <34.621864, 30.836643, 36.961712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280720, 31.418331, 36.718521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665615, 31.459553, 36.617737>,  <34.896553, 31.484285, 36.557266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665615, 31.459553, 36.617737>,  <34.280720, 31.418331, 36.718521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665615, 31.459553, 36.617737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271371, 0.436071, -0.858021,
		0.021448, 0.893992, 0.447569,
		0.962236, 0.103054, -0.251956,
		34.954285, 31.490469, 36.542149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450943, 32.139866, 36.668343>,  <34.280720, 31.418331, 36.718521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450943, 32.139866, 36.668343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720810, 31.955078, 36.438072>,  <34.882732, 31.844206, 36.299908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720810, 31.955078, 36.438072>,  <34.450943, 32.139866, 36.668343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720810, 31.955078, 36.438072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338883, 0.499002, -0.797594,
		0.655728, 0.733199, 0.180108,
		0.674669, -0.461969, -0.575678,
		34.923210, 31.816486, 36.265369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779724, 32.594276, 36.285366>,  <34.450943, 32.139866, 36.668343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779724, 32.594276, 36.285366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840954, 32.254173, 36.083920>,  <34.877689, 32.050110, 35.963051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840954, 32.254173, 36.083920>,  <34.779724, 32.594276, 36.285366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840954, 32.254173, 36.083920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173572, 0.478564, -0.860726,
		0.972853, 0.219164, -0.074328,
		0.153070, -0.850261, -0.503613,
		34.886875, 31.999096, 35.932835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885578, 32.845036, 35.702095>,  <34.779724, 32.594276, 36.285366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885578, 32.845036, 35.702095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826481, 32.453949, 35.642445>,  <34.791023, 32.219296, 35.606655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826481, 32.453949, 35.642445>,  <34.885578, 32.845036, 35.702095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826481, 32.453949, 35.642445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358085, 0.193431, -0.913433,
		0.921926, -0.081552, -0.378684,
		-0.147742, -0.977719, -0.149126,
		34.782158, 32.160633, 35.597706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339497, 32.625042, 35.159111>,  <34.885578, 32.845036, 35.702095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339497, 32.625042, 35.159111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997013, 32.426891, 35.217773>,  <34.791523, 32.308002, 35.252972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997013, 32.426891, 35.217773>,  <35.339497, 32.625042, 35.159111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997013, 32.426891, 35.217773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247643, 0.144404, -0.958030,
		0.453408, -0.856592, -0.246316,
		-0.856209, -0.495377, 0.146655,
		34.740150, 32.278278, 35.261768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.738274, 29.453197, 42.512955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.382690, 29.561432, 42.365150>,  <36.169342, 29.626373, 42.276466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.382690, 29.561432, 42.365150>,  <36.738274, 29.453197, 42.512955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382690, 29.561432, 42.365150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353001, -0.109234, -0.929224,
		-0.291801, -0.956478, 0.001586,
		-0.888956, 0.270588, -0.369512,
		36.116005, 29.642609, 42.254295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590660, 28.939137, 42.057831>,  <36.738274, 29.453197, 42.512955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590660, 28.939137, 42.057831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.325642, 29.214010, 41.938633>,  <36.166630, 29.378935, 41.867115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.325642, 29.214010, 41.938633>,  <36.590660, 28.939137, 42.057831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325642, 29.214010, 41.938633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334149, -0.084891, -0.938689,
		-0.670351, -0.721505, -0.173378,
		-0.662550, 0.687186, -0.297997,
		36.126877, 29.420166, 41.849236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227707, 28.634441, 41.429291>,  <36.590660, 28.939137, 42.057831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227707, 28.634441, 41.429291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.180935, 29.031683, 41.425903>,  <36.152870, 29.270027, 41.423870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.180935, 29.031683, 41.425903>,  <36.227707, 28.634441, 41.429291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180935, 29.031683, 41.425903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231469, 0.018961, -0.972657,
		-0.965789, -0.115694, -0.232090,
		-0.116931, 0.993104, -0.008467,
		36.145855, 29.329615, 41.423363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927521, 28.646313, 40.913231>,  <36.227707, 28.634441, 41.429291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927521, 28.646313, 40.913231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.044434, 29.025049, 40.966988>,  <36.114582, 29.252291, 40.999241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.044434, 29.025049, 40.966988>,  <35.927521, 28.646313, 40.913231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044434, 29.025049, 40.966988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039532, 0.128443, -0.990929,
		-0.955514, 0.294947, 0.000111,
		0.292286, 0.946841, 0.134389,
		36.132118, 29.309101, 41.007305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471237, 29.088793, 40.587463>,  <35.927521, 28.646313, 40.913231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471237, 29.088793, 40.587463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.820587, 29.281836, 40.613689>,  <36.030197, 29.397661, 40.629425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.820587, 29.281836, 40.613689>,  <35.471237, 29.088793, 40.587463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820587, 29.281836, 40.613689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100956, 0.311091, -0.945003,
		-0.476464, 0.818725, 0.320422,
		0.873378, 0.482609, 0.065568,
		36.082600, 29.426619, 40.633358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357704, 29.500183, 39.973957>,  <35.471237, 29.088793, 40.587463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357704, 29.500183, 39.973957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.713020, 29.616512, 40.116146>,  <35.926208, 29.686310, 40.201458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.713020, 29.616512, 40.116146>,  <35.357704, 29.500183, 39.973957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713020, 29.616512, 40.116146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094218, 0.642131, -0.760783,
		-0.449513, 0.709289, 0.542999,
		0.888291, 0.290822, 0.355474,
		35.979507, 29.703758, 40.222790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360676, 30.216759, 40.084042>,  <35.357704, 29.500183, 39.973957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360676, 30.216759, 40.084042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.753540, 30.147041, 40.055824>,  <35.989258, 30.105211, 40.038895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.753540, 30.147041, 40.055824>,  <35.360676, 30.216759, 40.084042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753540, 30.147041, 40.055824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007164, 0.409583, -0.912245,
		0.187890, 0.895468, 0.403526,
		0.982164, -0.174293, -0.070541,
		36.048191, 30.094753, 40.034660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810604, 30.895372, 40.065056>,  <35.360676, 30.216759, 40.084042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810604, 30.895372, 40.065056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.988262, 30.589645, 39.878056>,  <36.094856, 30.406208, 39.765858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.988262, 30.589645, 39.878056>,  <35.810604, 30.895372, 40.065056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988262, 30.589645, 39.878056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045961, 0.501663, -0.863842,
		0.894777, 0.405154, 0.187681,
		0.444141, -0.764320, -0.467497,
		36.121506, 30.360350, 39.737808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245712, 31.214373, 39.689316>,  <35.810604, 30.895372, 40.065056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245712, 31.214373, 39.689316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.250599, 30.859015, 39.505749>,  <36.253529, 30.645800, 39.395607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.250599, 30.859015, 39.505749>,  <36.245712, 31.214373, 39.689316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250599, 30.859015, 39.505749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013407, 0.458768, -0.888455,
		0.999836, 0.017005, -0.006307,
		0.012215, -0.888393, -0.458921,
		36.254265, 30.592497, 39.368073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933895, 31.365160, 40.000664>,  <36.245712, 31.214373, 39.689316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933895, 31.365160, 40.000664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.013866, 31.754118, 40.048786>,  <37.061852, 31.987494, 40.077660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.013866, 31.754118, 40.048786>,  <36.933895, 31.365160, 40.000664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013866, 31.754118, 40.048786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218275, -0.075498, 0.972963,
		0.955188, -0.220785, 0.197155,
		0.199931, 0.972396, 0.120306,
		37.073845, 32.045837, 40.084877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514393, 31.406260, 40.408894>,  <36.933895, 31.365160, 40.000664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514393, 31.406260, 40.408894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.351402, 31.770439, 40.437302>,  <37.253609, 31.988947, 40.454346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.351402, 31.770439, 40.437302>,  <37.514393, 31.406260, 40.408894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351402, 31.770439, 40.437302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085866, -0.039224, 0.995534,
		0.909171, 0.411753, -0.062195,
		-0.407475, 0.910451, 0.071017,
		37.229160, 32.043575, 40.458607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888596, 31.681580, 40.906319>,  <37.514393, 31.406260, 40.408894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888596, 31.681580, 40.906319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.570316, 31.923321, 40.890244>,  <37.379349, 32.068367, 40.880596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.570316, 31.923321, 40.890244>,  <37.888596, 31.681580, 40.906319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570316, 31.923321, 40.890244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058030, -0.010015, 0.998265,
		0.602901, 0.796654, 0.043040,
		-0.795702, 0.604353, -0.040192,
		37.331604, 32.104626, 40.878185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036869, 32.237926, 41.293472>,  <37.888596, 31.681580, 40.906319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036869, 32.237926, 41.293472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.637665, 32.227421, 41.270527>,  <37.398144, 32.221115, 41.256760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.637665, 32.227421, 41.270527>,  <38.036869, 32.237926, 41.293472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637665, 32.227421, 41.270527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059792, 0.103417, 0.992839,
		-0.020147, 0.994291, -0.104782,
		-0.998007, -0.026268, -0.057367,
		37.338261, 32.219540, 41.253315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791035, 32.792183, 41.819237>,  <38.036869, 32.237926, 41.293472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791035, 32.792183, 41.819237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.475399, 32.559216, 41.741135>,  <37.286018, 32.419434, 41.694275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.475399, 32.559216, 41.741135>,  <37.791035, 32.792183, 41.819237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475399, 32.559216, 41.741135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203404, -0.052195, 0.977703,
		-0.579623, 0.811212, -0.077280,
		-0.789091, -0.582418, -0.195257,
		37.238670, 32.384491, 41.682556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264797, 33.112415, 42.121357>,  <37.791035, 32.792183, 41.819237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264797, 33.112415, 42.121357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.128418, 32.740150, 42.068253>,  <37.046589, 32.516792, 42.036392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.128418, 32.740150, 42.068253>,  <37.264797, 33.112415, 42.121357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128418, 32.740150, 42.068253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138682, -0.089879, 0.986250,
		-0.929795, 0.354675, -0.098421,
		-0.340952, -0.930659, -0.132756,
		37.026131, 32.460953, 42.028427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662945, 33.050148, 42.522591>,  <37.264797, 33.112415, 42.121357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662945, 33.050148, 42.522591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.804699, 32.677643, 42.488724>,  <36.889751, 32.454140, 42.468403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.804699, 32.677643, 42.488724>,  <36.662945, 33.050148, 42.522591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804699, 32.677643, 42.488724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125861, -0.137220, 0.982512,
		-0.926590, -0.337533, -0.165838,
		0.354386, -0.931258, -0.084665,
		36.911015, 32.398266, 42.463326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404228, 32.751686, 43.122845>,  <36.662945, 33.050148, 42.522591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404228, 32.751686, 43.122845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.647331, 32.456413, 43.005737>,  <36.793194, 32.279251, 42.935471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.647331, 32.456413, 43.005737>,  <36.404228, 32.751686, 43.122845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647331, 32.456413, 43.005737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149837, -0.468646, 0.870586,
		-0.779858, -0.485238, -0.395431,
		0.607759, -0.738184, -0.292771,
		36.829659, 32.234959, 42.917908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013771, 32.150703, 43.139874>,  <36.404228, 32.751686, 43.122845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013771, 32.150703, 43.139874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.409412, 32.105656, 43.177799>,  <36.646797, 32.078629, 43.200554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.409412, 32.105656, 43.177799>,  <36.013771, 32.150703, 43.139874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409412, 32.105656, 43.177799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131427, -0.385320, 0.913376,
		-0.066329, -0.915885, -0.395923,
		0.989104, -0.112619, 0.094814,
		36.706142, 32.071869, 43.206242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048496, 31.554359, 43.570332>,  <36.013771, 32.150703, 43.139874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048496, 31.554359, 43.570332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.409279, 31.726585, 43.583504>,  <36.625748, 31.829922, 43.591408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.409279, 31.726585, 43.583504>,  <36.048496, 31.554359, 43.570332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409279, 31.726585, 43.583504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164671, -0.413451, 0.895512,
		0.399192, -0.802292, -0.443817,
		0.901958, 0.430565, 0.032932,
		36.679867, 31.855755, 43.593384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347500, 31.061293, 43.884647>,  <36.048496, 31.554359, 43.570332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347500, 31.061293, 43.884647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.590286, 31.374834, 43.937046>,  <36.735958, 31.562960, 43.968487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.590286, 31.374834, 43.937046>,  <36.347500, 31.061293, 43.884647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590286, 31.374834, 43.937046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211604, -0.318289, 0.924076,
		0.766036, -0.533166, -0.359058,
		0.606970, 0.783853, 0.131001,
		36.772377, 31.609989, 43.976345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863407, 30.715271, 44.321594>,  <36.347500, 31.061293, 43.884647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863407, 30.715271, 44.321594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.941868, 31.106991, 44.341599>,  <36.988945, 31.342022, 44.353603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.941868, 31.106991, 44.341599>,  <36.863407, 30.715271, 44.321594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941868, 31.106991, 44.341599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177884, -0.085696, 0.980313,
		0.964304, -0.183392, -0.191011,
		0.196150, 0.979298, 0.050014,
		37.000713, 31.400780, 44.356602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391010, 30.761513, 44.717499>,  <36.863407, 30.715271, 44.321594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391010, 30.761513, 44.717499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.269192, 31.140783, 44.753746>,  <37.196098, 31.368345, 44.775494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.269192, 31.140783, 44.753746>,  <37.391010, 30.761513, 44.717499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269192, 31.140783, 44.753746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095441, -0.064285, 0.993357,
		0.947703, 0.311174, -0.070917,
		-0.304548, 0.948176, 0.090622,
		37.177826, 31.425236, 44.780933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728905, 30.898756, 45.278347>,  <37.391010, 30.761513, 44.717499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728905, 30.898756, 45.278347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.434101, 31.165947, 45.237114>,  <37.257221, 31.326262, 45.212372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.434101, 31.165947, 45.237114>,  <37.728905, 30.898756, 45.278347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434101, 31.165947, 45.237114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141402, -0.003243, 0.989947,
		0.660928, 0.744174, 0.096844,
		-0.737007, 0.667977, -0.103085,
		37.212997, 31.366341, 45.206188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.246462, 34.462353, 43.381901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.613604, 34.328197, 43.466808>,  <30.833889, 34.247704, 43.517754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.613604, 34.328197, 43.466808>,  <30.246462, 34.462353, 43.381901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613604, 34.328197, 43.466808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361459, 0.485341, -0.796111,
		0.163988, 0.807438, 0.566702,
		0.917854, -0.335392, 0.212266,
		30.888960, 34.227581, 43.530487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638783, 35.076752, 43.185486>,  <30.246462, 34.462353, 43.381901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638783, 35.076752, 43.185486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.892508, 34.768158, 43.205292>,  <31.044743, 34.583000, 43.217175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.892508, 34.768158, 43.205292>,  <30.638783, 35.076752, 43.185486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892508, 34.768158, 43.205292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547721, 0.403287, -0.733050,
		0.545572, 0.492103, 0.678371,
		0.634314, -0.771489, 0.049513,
		31.082802, 34.536713, 43.220146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407204, 35.342743, 43.266876>,  <30.638783, 35.076752, 43.185486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407204, 35.342743, 43.266876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.394535, 34.992615, 43.073872>,  <31.386934, 34.782539, 42.958069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.394535, 34.992615, 43.073872>,  <31.407204, 35.342743, 43.266876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394535, 34.992615, 43.073872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562303, 0.383507, -0.732624,
		0.826325, -0.294519, 0.480048,
		-0.031670, -0.875318, -0.482510,
		31.385035, 34.730019, 42.929119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152718, 35.304527, 43.036961>,  <31.407204, 35.342743, 43.266876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152718, 35.304527, 43.036961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.958967, 35.020405, 42.832668>,  <31.842718, 34.849930, 42.710094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.958967, 35.020405, 42.832668>,  <32.152718, 35.304527, 43.036961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958967, 35.020405, 42.832668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476412, 0.275475, -0.834952,
		0.733768, -0.647745, 0.204968,
		-0.484372, -0.710310, -0.510728,
		31.813656, 34.807312, 42.679451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606224, 35.043163, 42.493389>,  <32.152718, 35.304527, 43.036961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606224, 35.043163, 42.493389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.231514, 35.002930, 42.359322>,  <32.006687, 34.978790, 42.278881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.231514, 35.002930, 42.359322>,  <32.606224, 35.043163, 42.493389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231514, 35.002930, 42.359322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311848, 0.194600, -0.929990,
		0.158762, -0.975712, -0.150931,
		-0.936774, -0.100579, -0.335169,
		31.950481, 34.972755, 42.258770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680946, 34.606094, 41.926453>,  <32.606224, 35.043163, 42.493389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680946, 34.606094, 41.926453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.314503, 34.757988, 41.875008>,  <32.094635, 34.849125, 41.844139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.314503, 34.757988, 41.875008>,  <32.680946, 34.606094, 41.926453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314503, 34.757988, 41.875008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160216, 0.052676, -0.985675,
		-0.367518, -0.923595, -0.109097,
		-0.916112, 0.379732, -0.128616,
		32.039669, 34.871906, 41.836422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462620, 34.266769, 41.363995>,  <32.680946, 34.606094, 41.926453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462620, 34.266769, 41.363995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.244335, 34.600632, 41.393795>,  <32.113365, 34.800949, 41.411674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.244335, 34.600632, 41.393795>,  <32.462620, 34.266769, 41.363995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244335, 34.600632, 41.393795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161816, 0.192193, -0.967924,
		-0.822200, -0.516154, -0.239943,
		-0.545713, 0.834654, 0.074499,
		32.080620, 34.851028, 41.416145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080173, 34.343330, 40.717426>,  <32.462620, 34.266769, 41.363995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080173, 34.343330, 40.717426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.047096, 34.718262, 40.852821>,  <32.027252, 34.943222, 40.934059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.047096, 34.718262, 40.852821>,  <32.080173, 34.343330, 40.717426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047096, 34.718262, 40.852821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254183, 0.348253, -0.902281,
		-0.963615, 0.011429, -0.267050,
		-0.082689, 0.937331, 0.338487,
		32.022289, 34.999462, 40.954369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702431, 34.703506, 40.166004>,  <32.080173, 34.343330, 40.717426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702431, 34.703506, 40.166004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.879765, 34.985950, 40.386860>,  <31.986166, 35.155418, 40.519375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.879765, 34.985950, 40.386860>,  <31.702431, 34.703506, 40.166004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879765, 34.985950, 40.386860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308963, 0.457852, -0.833614,
		-0.841424, 0.540162, -0.015181,
		0.443336, 0.706113, 0.552138,
		32.012764, 35.197784, 40.552502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370695, 35.425312, 40.045296>,  <31.702431, 34.703506, 40.166004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370695, 35.425312, 40.045296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.747452, 35.482170, 40.167038>,  <31.973505, 35.516285, 40.240086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.747452, 35.482170, 40.167038>,  <31.370695, 35.425312, 40.045296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747452, 35.482170, 40.167038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186587, 0.532043, -0.825903,
		-0.279331, 0.834701, 0.474604,
		0.941891, 0.142146, 0.304360,
		32.030018, 35.524815, 40.258347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397682, 36.058247, 39.908382>,  <31.370695, 35.425312, 40.045296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397682, 36.058247, 39.908382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.785669, 35.975410, 39.959412>,  <32.018463, 35.925709, 39.990028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.785669, 35.975410, 39.959412>,  <31.397682, 36.058247, 39.908382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785669, 35.975410, 39.959412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222836, 0.546380, -0.807349,
		0.097493, 0.811531, 0.576119,
		0.969969, -0.207091, 0.127570,
		32.076660, 35.913284, 39.997684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734125, 36.711414, 39.962742>,  <31.397682, 36.058247, 39.908382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734125, 36.711414, 39.962742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.015522, 36.449284, 39.852730>,  <32.184361, 36.292004, 39.786724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.015522, 36.449284, 39.852730>,  <31.734125, 36.711414, 39.962742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015522, 36.449284, 39.852730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202005, 0.555398, -0.806677,
		0.681391, 0.511934, 0.523098,
		0.703492, -0.655330, -0.275030,
		32.226570, 36.252686, 39.770222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414627, 37.145493, 39.830639>,  <31.734125, 36.711414, 39.962742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414627, 37.145493, 39.830639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.454910, 36.790112, 39.651527>,  <32.479080, 36.576881, 39.544060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.454910, 36.790112, 39.651527>,  <32.414627, 37.145493, 39.830639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454910, 36.790112, 39.651527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303227, 0.456059, -0.836698,
		0.947582, -0.051519, 0.315331,
		0.100703, -0.888457, -0.447775,
		32.485123, 36.523575, 39.517197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084000, 37.194218, 39.593056>,  <32.414627, 37.145493, 39.830639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084000, 37.194218, 39.593056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.885887, 36.914993, 39.386211>,  <32.767021, 36.747459, 39.262104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.885887, 36.914993, 39.386211>,  <33.084000, 37.194218, 39.593056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885887, 36.914993, 39.386211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202024, 0.486376, -0.850073,
		0.844916, -0.525494, -0.099868,
		-0.495282, -0.698064, -0.517109,
		32.737301, 36.705574, 39.231079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741879, 36.682007, 39.684872>,  <33.084000, 37.194218, 39.593056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741879, 36.682007, 39.684872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.006817, 36.861584, 39.924789>,  <34.165779, 36.969330, 40.068741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.006817, 36.861584, 39.924789>,  <33.741879, 36.682007, 39.684872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006817, 36.861584, 39.924789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343691, -0.529302, 0.775703,
		0.665718, -0.719926, -0.196282,
		0.662341, 0.448939, 0.599798,
		34.205521, 36.996265, 40.104729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042892, 36.131371, 40.107662>,  <33.741879, 36.682007, 39.684872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042892, 36.131371, 40.107662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.151417, 36.456951, 40.313141>,  <34.216530, 36.652298, 40.436428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.151417, 36.456951, 40.313141>,  <34.042892, 36.131371, 40.107662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151417, 36.456951, 40.313141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006927, -0.535350, 0.844602,
		0.962467, -0.225591, -0.150884,
		0.271310, 0.813947, 0.513694,
		34.232811, 36.701134, 40.467251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572933, 35.917675, 40.503201>,  <34.042892, 36.131371, 40.107662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572933, 35.917675, 40.503201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.439796, 36.247025, 40.687057>,  <34.359913, 36.444633, 40.797371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.439796, 36.247025, 40.687057>,  <34.572933, 35.917675, 40.503201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439796, 36.247025, 40.687057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019325, -0.481381, 0.876298,
		0.942785, 0.300551, 0.144312,
		-0.332841, 0.823372, 0.459647,
		34.339943, 36.494038, 40.824951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837818, 35.869328, 41.253036>,  <34.572933, 35.917675, 40.503201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837818, 35.869328, 41.253036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.584076, 36.176796, 41.285862>,  <34.431831, 36.361279, 41.305557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.584076, 36.176796, 41.285862>,  <34.837818, 35.869328, 41.253036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584076, 36.176796, 41.285862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123340, -0.205438, 0.970867,
		0.763139, 0.605752, 0.225129,
		-0.634355, 0.768674, 0.082064,
		34.393768, 36.407398, 41.310482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983833, 36.224159, 41.860073>,  <34.837818, 35.869328, 41.253036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983833, 36.224159, 41.860073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.607277, 36.340561, 41.791836>,  <34.381344, 36.410400, 41.750893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.607277, 36.340561, 41.791836>,  <34.983833, 36.224159, 41.860073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607277, 36.340561, 41.791836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189562, -0.038059, 0.981131,
		0.279016, 0.955966, 0.090991,
		-0.941390, 0.291000, -0.170596,
		34.324860, 36.427860, 41.740658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806221, 36.853039, 42.336021>,  <34.983833, 36.224159, 41.860073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806221, 36.853039, 42.336021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.497524, 36.623997, 42.225361>,  <34.312305, 36.486572, 42.158966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.497524, 36.623997, 42.225361>,  <34.806221, 36.853039, 42.336021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497524, 36.623997, 42.225361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225351, -0.160555, 0.960957,
		-0.594668, 0.803955, -0.005130,
		-0.771743, -0.572607, -0.276649,
		34.266003, 36.452213, 42.142365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298157, 36.998833, 42.854416>,  <34.806221, 36.853039, 42.336021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298157, 36.998833, 42.854416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.148655, 36.670525, 42.681606>,  <34.058952, 36.473541, 42.577923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.148655, 36.670525, 42.681606>,  <34.298157, 36.998833, 42.854416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148655, 36.670525, 42.681606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386827, -0.285401, 0.876876,
		-0.843012, 0.494857, -0.210826,
		-0.373758, -0.820770, -0.432020,
		34.036526, 36.424294, 42.552002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754753, 36.868229, 43.280296>,  <34.298157, 36.998833, 42.854416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754753, 36.868229, 43.280296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.787716, 36.529835, 43.069576>,  <33.807491, 36.326797, 42.943146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.787716, 36.529835, 43.069576>,  <33.754753, 36.868229, 43.280296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787716, 36.529835, 43.069576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406505, -0.511156, 0.757280,
		-0.909925, 0.151742, -0.386020,
		0.082405, -0.845987, -0.526797,
		33.812439, 36.276039, 42.911537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130615, 36.433968, 43.414673>,  <33.754753, 36.868229, 43.280296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130615, 36.433968, 43.414673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.377541, 36.159344, 43.261021>,  <33.525696, 35.994568, 43.168831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.377541, 36.159344, 43.261021>,  <33.130615, 36.433968, 43.414673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377541, 36.159344, 43.261021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394552, -0.692608, 0.603840,
		-0.680621, -0.221205, -0.698444,
		0.617320, -0.686558, -0.384126,
		33.562737, 35.953377, 43.145782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729984, 35.758171, 43.405643>,  <33.130615, 36.433968, 43.414673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729984, 35.758171, 43.405643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.123478, 35.686897, 43.396595>,  <33.359573, 35.644135, 43.391167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.123478, 35.686897, 43.396595>,  <32.729984, 35.758171, 43.405643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123478, 35.686897, 43.396595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103380, -0.664695, 0.739928,
		-0.146881, -0.725556, -0.672306,
		0.983737, -0.178184, -0.022623,
		33.418598, 35.633442, 43.389809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780258, 34.995186, 43.446148>,  <32.729984, 35.758171, 43.405643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780258, 34.995186, 43.446148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.131561, 35.139488, 43.571701>,  <33.342342, 35.226070, 43.647034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.131561, 35.139488, 43.571701>,  <32.780258, 34.995186, 43.446148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131561, 35.139488, 43.571701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069860, -0.552546, 0.830549,
		0.473062, -0.751362, -0.460074,
		0.878255, 0.360760, 0.313879,
		33.395039, 35.247715, 43.665863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266960, 34.443169, 43.650959>,  <32.780258, 34.995186, 43.446148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266960, 34.443169, 43.650959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.395283, 34.759743, 43.859077>,  <33.472275, 34.949688, 43.983948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.395283, 34.759743, 43.859077>,  <33.266960, 34.443169, 43.650959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395283, 34.759743, 43.859077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037882, -0.559613, 0.827888,
		0.946386, -0.245884, -0.209509,
		0.320808, 0.791439, 0.520295,
		33.491524, 34.997173, 44.015167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677345, 34.118858, 44.081390>,  <33.266960, 34.443169, 43.650959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677345, 34.118858, 44.081390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.634106, 34.478794, 44.250435>,  <33.608162, 34.694756, 44.351864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.634106, 34.478794, 44.250435>,  <33.677345, 34.118858, 44.081390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634106, 34.478794, 44.250435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035373, -0.421354, 0.906206,
		0.993510, 0.112910, 0.013719,
		-0.108100, 0.899840, 0.422613,
		33.601677, 34.748745, 44.377220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071156, 34.127411, 44.702106>,  <33.677345, 34.118858, 44.081390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071156, 34.127411, 44.702106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.786762, 34.404377, 44.751202>,  <33.616127, 34.570557, 44.780659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.786762, 34.404377, 44.751202>,  <34.071156, 34.127411, 44.702106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786762, 34.404377, 44.751202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144544, -0.314718, 0.938115,
		0.688190, 0.649245, 0.323844,
		-0.710986, 0.692411, 0.122742,
		33.573467, 34.612099, 44.788025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437298, 34.770584, 45.011509>,  <34.071156, 34.127411, 44.702106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437298, 34.770584, 45.011509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.824207, 34.748936, 45.110668>,  <35.056355, 34.735947, 45.170162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.824207, 34.748936, 45.110668>,  <34.437298, 34.770584, 45.011509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824207, 34.748936, 45.110668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228943, 0.607377, -0.760709,
		-0.109395, 0.792568, 0.599891,
		0.967273, -0.054123, 0.247897,
		35.114388, 34.732700, 45.185036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705677, 35.383842, 44.863861>,  <34.437298, 34.770584, 45.011509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705677, 35.383842, 44.863861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.026821, 35.146160, 44.883194>,  <35.219509, 35.003551, 44.894794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.026821, 35.146160, 44.883194>,  <34.705677, 35.383842, 44.863861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026821, 35.146160, 44.883194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349521, 0.403479, -0.845600,
		0.482961, 0.695790, 0.531625,
		0.802860, -0.594206, 0.048328,
		35.267677, 34.967899, 44.897694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226933, 35.837009, 44.783901>,  <34.705677, 35.383842, 44.863861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226933, 35.837009, 44.783901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.407623, 35.500420, 44.665337>,  <35.516037, 35.298466, 44.594196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.407623, 35.500420, 44.665337>,  <35.226933, 35.837009, 44.783901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407623, 35.500420, 44.665337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491398, 0.511977, -0.704562,
		0.744631, 0.172610, 0.644772,
		0.451723, -0.841478, -0.296414,
		35.543140, 35.247974, 44.576412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017155, 35.973434, 44.771530>,  <35.226933, 35.837009, 44.783901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017155, 35.973434, 44.771530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.941113, 35.649239, 44.549911>,  <35.895489, 35.454723, 44.416939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.941113, 35.649239, 44.549911>,  <36.017155, 35.973434, 44.771530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941113, 35.649239, 44.549911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517099, 0.397057, -0.758257,
		0.834547, -0.430649, 0.343618,
		-0.190107, -0.810486, -0.554051,
		35.884079, 35.406094, 44.383698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585037, 36.032127, 44.390739>,  <36.017155, 35.973434, 44.771530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585037, 36.032127, 44.390739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.359352, 35.780849, 44.176437>,  <36.223942, 35.630081, 44.047855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.359352, 35.780849, 44.176437>,  <36.585037, 36.032127, 44.390739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359352, 35.780849, 44.176437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425962, 0.334392, -0.840678,
		0.707262, -0.702532, 0.078920,
		-0.564213, -0.628196, -0.535754,
		36.190086, 35.592392, 44.015713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042953, 35.617245, 44.053276>,  <36.585037, 36.032127, 44.390739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042953, 35.617245, 44.053276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.705704, 35.545597, 43.850471>,  <36.503353, 35.502609, 43.728786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.705704, 35.545597, 43.850471>,  <37.042953, 35.617245, 44.053276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705704, 35.545597, 43.850471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459749, 0.248903, -0.852454,
		0.278890, -0.951821, -0.127504,
		-0.843120, -0.179121, -0.507015,
		36.452766, 35.491859, 43.698368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133656, 35.074459, 43.500523>,  <37.042953, 35.617245, 44.053276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133656, 35.074459, 43.500523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.814301, 35.295158, 43.404068>,  <36.622688, 35.427578, 43.346195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.814301, 35.295158, 43.404068>,  <37.133656, 35.074459, 43.500523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814301, 35.295158, 43.404068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353200, 0.104782, -0.929662,
		-0.487676, -0.827399, -0.278536,
		-0.798387, 0.551753, -0.241137,
		36.574783, 35.460686, 43.331726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840706, 34.808392, 42.811146>,  <37.133656, 35.074459, 43.500523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840706, 34.808392, 42.811146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.735565, 35.191494, 42.857811>,  <36.672482, 35.421356, 42.885811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.735565, 35.191494, 42.857811>,  <36.840706, 34.808392, 42.811146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735565, 35.191494, 42.857811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194882, 0.171123, -0.965784,
		-0.944949, -0.231127, -0.231630,
		-0.262856, 0.957756, 0.116660,
		36.656708, 35.478821, 42.892811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424271, 35.036800, 42.304943>,  <36.840706, 34.808392, 42.811146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424271, 35.036800, 42.304943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.617672, 35.357647, 42.445133>,  <36.733715, 35.550156, 42.529247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.617672, 35.357647, 42.445133>,  <36.424271, 35.036800, 42.304943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617672, 35.357647, 42.445133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320877, 0.210102, -0.923523,
		-0.814407, 0.558990, -0.155793,
		0.483508, 0.802114, 0.350476,
		36.762726, 35.598282, 42.550278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264854, 35.496075, 41.808167>,  <36.424271, 35.036800, 42.304943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264854, 35.496075, 41.808167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.563953, 35.681084, 41.998722>,  <36.743412, 35.792088, 42.113056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.563953, 35.681084, 41.998722>,  <36.264854, 35.496075, 41.808167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563953, 35.681084, 41.998722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180980, 0.548337, -0.816439,
		-0.638842, 0.696708, 0.326312,
		0.747748, 0.462519, 0.476391,
		36.788277, 35.819839, 42.141640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228416, 36.095749, 41.308655>,  <36.264854, 35.496075, 41.808167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228416, 36.095749, 41.308655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.542877, 36.161373, 41.546997>,  <36.731552, 36.200748, 41.690002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.542877, 36.161373, 41.546997>,  <36.228416, 36.095749, 41.308655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542877, 36.161373, 41.546997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341180, 0.688701, -0.639755,
		-0.515326, 0.706241, 0.485451,
		0.786152, 0.164056, 0.595860,
		36.778725, 36.210590, 41.725754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249439, 36.782578, 41.567234>,  <36.228416, 36.095749, 41.308655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249439, 36.782578, 41.567234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.619148, 36.630222, 41.577454>,  <36.840973, 36.538811, 41.583588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.619148, 36.630222, 41.577454>,  <36.249439, 36.782578, 41.567234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619148, 36.630222, 41.577454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328528, 0.759551, -0.561384,
		0.194417, 0.527264, 0.827161,
		0.924268, -0.380888, 0.025551,
		36.896427, 36.515957, 41.585117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664146, 37.414814, 41.403137>,  <36.249439, 36.782578, 41.567234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664146, 37.414814, 41.403137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.903114, 37.095409, 41.373539>,  <37.046494, 36.903767, 41.355782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.903114, 37.095409, 41.373539>,  <36.664146, 37.414814, 41.403137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903114, 37.095409, 41.373539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482671, 0.431732, -0.761995,
		0.640405, 0.419515, 0.643341,
		0.597419, -0.798508, -0.073996,
		37.082340, 36.855858, 41.351341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412979, 37.615517, 41.470139>,  <36.664146, 37.414814, 41.403137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412979, 37.615517, 41.470139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.331604, 37.292233, 41.249081>,  <37.282780, 37.098263, 41.116447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.331604, 37.292233, 41.249081>,  <37.412979, 37.615517, 41.470139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331604, 37.292233, 41.249081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285692, 0.490880, -0.823054,
		0.936478, -0.325329, 0.131033,
		-0.203442, -0.808207, -0.552642,
		37.270573, 37.049770, 41.083286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.732756, 44.311703, 34.649818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.343235, 44.377125, 34.586624>,  <29.109522, 44.416378, 34.548706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.343235, 44.377125, 34.586624>,  <29.732756, 44.311703, 34.649818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343235, 44.377125, 34.586624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210788, -0.909898, 0.357288,
		-0.085315, 0.381229, 0.920536,
		-0.973802, 0.163556, -0.157986,
		29.051094, 44.426193, 34.539227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270992, 44.149876, 35.237659>,  <29.732756, 44.311703, 34.649818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270992, 44.149876, 35.237659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.006365, 44.149521, 34.937706>,  <28.847588, 44.149307, 34.757732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.006365, 44.149521, 34.937706>,  <29.270992, 44.149876, 35.237659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006365, 44.149521, 34.937706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405916, -0.840404, 0.359101,
		-0.630523, 0.541960, 0.555626,
		-0.661568, -0.000884, -0.749884,
		28.807894, 44.149254, 34.712742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635185, 43.995762, 35.463181>,  <29.270992, 44.149876, 35.237659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635185, 43.995762, 35.463181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585793, 43.901573, 35.077579>,  <28.556156, 43.845058, 34.846218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585793, 43.901573, 35.077579>,  <28.635185, 43.995762, 35.463181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585793, 43.901573, 35.077579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448827, -0.853147, 0.265885,
		-0.885046, 0.465503, -0.000337,
		-0.123483, -0.235472, -0.964005,
		28.548748, 43.830933, 34.788380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918470, 43.692860, 35.368984>,  <28.635185, 43.995762, 35.463181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918470, 43.692860, 35.368984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.117704, 43.577778, 35.041782>,  <28.237246, 43.508728, 34.845459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.117704, 43.577778, 35.041782>,  <27.918470, 43.692860, 35.368984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117704, 43.577778, 35.041782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509503, -0.860435, -0.007606,
		-0.701653, 0.420565, -0.575159,
		0.498086, -0.287708, -0.818006,
		28.267130, 43.491467, 34.796379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347036, 43.385227, 34.961250>,  <27.918470, 43.692860, 35.368984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347036, 43.385227, 34.961250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.700817, 43.259254, 34.823521>,  <27.913086, 43.183670, 34.740883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.700817, 43.259254, 34.823521>,  <27.347036, 43.385227, 34.961250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700817, 43.259254, 34.823521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297230, -0.949062, 0.104572,
		-0.359719, 0.009854, -0.933009,
		0.884453, -0.314935, -0.344325,
		27.966152, 43.164776, 34.720222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189384, 42.901920, 34.539677>,  <27.347036, 43.385227, 34.961250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189384, 42.901920, 34.539677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.567968, 42.790409, 34.604794>,  <27.795118, 42.723503, 34.643864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.567968, 42.790409, 34.604794>,  <27.189384, 42.901920, 34.539677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567968, 42.790409, 34.604794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291576, -0.954638, 0.060421,
		0.138560, -0.104651, -0.984809,
		0.946459, -0.278774, 0.162788,
		27.851906, 42.706776, 34.653629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.336203, 42.314316, 34.098843>,  <27.189384, 42.901920, 34.539677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.336203, 42.314316, 34.098843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.587402, 42.291512, 34.409290>,  <27.738123, 42.277828, 34.595558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.587402, 42.291512, 34.409290>,  <27.336203, 42.314316, 34.098843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587402, 42.291512, 34.409290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178905, -0.981177, 0.072693,
		0.757370, -0.184503, -0.626378,
		0.628000, -0.057007, 0.776122,
		27.775803, 42.274410, 34.642128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762951, 41.781395, 33.936890>,  <27.336203, 42.314316, 34.098843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762951, 41.781395, 33.936890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.785780, 41.837193, 34.332321>,  <27.799479, 41.870670, 34.569580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.785780, 41.837193, 34.332321>,  <27.762951, 41.781395, 33.936890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.785780, 41.837193, 34.332321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232664, -0.961068, 0.149049,
		0.970881, -0.238513, -0.022395,
		0.057073, 0.139498, 0.988576,
		27.802902, 41.879044, 34.628895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230658, 41.158974, 34.183445>,  <27.762951, 41.781395, 33.936890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230658, 41.158974, 34.183445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.030258, 41.301403, 34.498966>,  <27.910019, 41.386860, 34.688278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.030258, 41.301403, 34.498966>,  <28.230658, 41.158974, 34.183445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030258, 41.301403, 34.498966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200479, -0.934397, 0.294467,
		0.841909, -0.010611, 0.539516,
		-0.500997, 0.356076, 0.788804,
		27.879959, 41.408226, 34.735607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468502, 40.825443, 34.704319>,  <28.230658, 41.158974, 34.183445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468502, 40.825443, 34.704319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.129953, 40.971806, 34.859119>,  <27.926825, 41.059624, 34.952000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.129953, 40.971806, 34.859119>,  <28.468502, 40.825443, 34.704319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129953, 40.971806, 34.859119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234206, -0.908310, 0.346584,
		0.478332, 0.202701, 0.854465,
		-0.846372, 0.365904, 0.387000,
		27.876041, 41.081577, 34.975220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361336, 40.487900, 35.270359>,  <28.468502, 40.825443, 34.704319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361336, 40.487900, 35.270359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.993002, 40.614697, 35.179512>,  <27.772001, 40.690773, 35.125004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.993002, 40.614697, 35.179512>,  <28.361336, 40.487900, 35.270359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993002, 40.614697, 35.179512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345022, -0.933705, 0.095683,
		-0.181729, 0.166468, 0.969156,
		-0.920834, 0.316992, -0.227116,
		27.716751, 40.709793, 35.111378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032146, 40.037304, 35.651093>,  <28.361336, 40.487900, 35.270359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032146, 40.037304, 35.651093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.748640, 40.182251, 35.408989>,  <27.578535, 40.269218, 35.263725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.748640, 40.182251, 35.408989>,  <28.032146, 40.037304, 35.651093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748640, 40.182251, 35.408989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421341, -0.905589, -0.048781,
		-0.565793, 0.220446, 0.794533,
		-0.708767, 0.362369, -0.605259,
		27.536011, 40.290962, 35.227413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507502, 39.836296, 35.985130>,  <28.032146, 40.037304, 35.651093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507502, 39.836296, 35.985130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.419708, 39.893749, 35.599136>,  <27.367033, 39.928223, 35.367538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.419708, 39.893749, 35.599136>,  <27.507502, 39.836296, 35.985130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419708, 39.893749, 35.599136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283722, -0.955751, -0.077728,
		-0.933450, 0.256728, 0.250523,
		-0.219483, 0.143634, -0.964985,
		27.353863, 39.936840, 35.309639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014421, 39.450058, 35.957809>,  <27.507502, 39.836296, 35.985130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014421, 39.450058, 35.957809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.087553, 39.509850, 35.569122>,  <27.131432, 39.545723, 35.335911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.087553, 39.509850, 35.569122>,  <27.014421, 39.450058, 35.957809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.087553, 39.509850, 35.569122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301985, -0.932055, -0.200198,
		-0.935616, 0.330045, -0.125268,
		0.182831, 0.149480, -0.971714,
		27.142403, 39.554695, 35.277607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438990, 39.242012, 35.616180>,  <27.014421, 39.450058, 35.957809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438990, 39.242012, 35.616180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.732382, 39.205952, 35.346699>,  <26.908417, 39.184315, 35.185009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.732382, 39.205952, 35.346699>,  <26.438990, 39.242012, 35.616180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.732382, 39.205952, 35.346699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254831, -0.955343, -0.149601,
		-0.630131, 0.281410, -0.723701,
		0.733483, -0.090153, -0.673703,
		26.952427, 39.178905, 35.144588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186031, 39.015198, 34.985023>,  <26.438990, 39.242012, 35.616180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186031, 39.015198, 34.985023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.569344, 38.943958, 34.895603>,  <26.799332, 38.901215, 34.841949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.569344, 38.943958, 34.895603>,  <26.186031, 39.015198, 34.985023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569344, 38.943958, 34.895603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229684, -0.945346, -0.231446,
		-0.170117, 0.273138, -0.946814,
		0.958283, -0.178094, -0.223555,
		26.856829, 38.890530, 34.828537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204269, 38.751602, 34.296234>,  <26.186031, 39.015198, 34.985023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204269, 38.751602, 34.296234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.527321, 38.605774, 34.481628>,  <26.721151, 38.518276, 34.592865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.527321, 38.605774, 34.481628>,  <26.204269, 38.751602, 34.296234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527321, 38.605774, 34.481628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327213, -0.930943, -0.162100,
		0.490580, -0.020743, -0.871149,
		0.807628, -0.364574, 0.463490,
		26.769609, 38.496403, 34.620674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455154, 38.266235, 33.846012>,  <26.204269, 38.751602, 34.296234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455154, 38.266235, 33.846012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.614996, 38.172657, 34.200546>,  <26.710901, 38.116508, 34.413265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.614996, 38.172657, 34.200546>,  <26.455154, 38.266235, 33.846012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614996, 38.172657, 34.200546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187377, -0.967317, -0.170844,
		0.897332, -0.097808, -0.430382,
		0.399606, -0.233948, 0.886331,
		26.734879, 38.102474, 34.466446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862541, 37.824768, 33.683186>,  <26.455154, 38.266235, 33.846012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862541, 37.824768, 33.683186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.799555, 37.759827, 34.072819>,  <26.761763, 37.720860, 34.306599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.799555, 37.759827, 34.072819>,  <26.862541, 37.824768, 33.683186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799555, 37.759827, 34.072819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248932, -0.948013, -0.198252,
		0.955635, -0.273699, 0.108862,
		-0.157464, -0.162358, 0.974087,
		26.752316, 37.711121, 34.365044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249584, 38.553066, 33.522545>,  <26.862541, 37.824768, 33.683186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249584, 38.553066, 33.522545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.368946, 38.793030, 33.225609>,  <27.440563, 38.937008, 33.047447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.368946, 38.793030, 33.225609>,  <27.249584, 38.553066, 33.522545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368946, 38.793030, 33.225609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932409, -0.017089, 0.361001,
		0.203880, -0.799888, -0.564458,
		0.298406, 0.599907, -0.742338,
		27.458467, 38.973003, 33.002907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.794512, 38.246811, 33.275391>,  <27.249584, 38.553066, 33.522545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.794512, 38.246811, 33.275391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.797852, 38.641800, 33.212368>,  <27.799856, 38.878796, 33.174557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.797852, 38.641800, 33.212368>,  <27.794512, 38.246811, 33.275391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797852, 38.641800, 33.212368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919509, 0.054336, 0.389295,
		0.392979, -0.148123, -0.907539,
		0.008352, 0.987475, -0.157553,
		27.800358, 38.938042, 33.165104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459501, 38.342384, 33.276997>,  <27.794512, 38.246811, 33.275391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459501, 38.342384, 33.276997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326330, 38.713326, 33.345325>,  <28.246428, 38.935890, 33.386322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326330, 38.713326, 33.345325>,  <28.459501, 38.342384, 33.276997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326330, 38.713326, 33.345325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914826, 0.273737, 0.296919,
		0.228589, 0.255123, -0.939500,
		-0.332926, 0.927351, 0.170820,
		28.226452, 38.991531, 33.396572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782261, 39.029423, 33.525990>,  <28.459501, 38.342384, 33.276997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782261, 39.029423, 33.525990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.977587, 38.935970, 33.189667>,  <29.094782, 38.879898, 32.987873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.977587, 38.935970, 33.189667>,  <28.782261, 39.029423, 33.525990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977587, 38.935970, 33.189667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094807, 0.971996, -0.215025,
		0.867502, 0.025286, 0.496792,
		0.488316, -0.233633, -0.840811,
		29.124083, 38.865879, 32.937424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350636, 39.434196, 33.457409>,  <28.782261, 39.029423, 33.525990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350636, 39.434196, 33.457409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.277822, 39.304333, 33.086151>,  <29.234135, 39.226414, 32.863396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.277822, 39.304333, 33.086151>,  <29.350636, 39.434196, 33.457409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277822, 39.304333, 33.086151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242936, 0.899808, -0.362391,
		0.952810, -0.291448, -0.084924,
		-0.182033, -0.324659, -0.928149,
		29.223213, 39.206936, 32.807705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904493, 39.638405, 33.033497>,  <29.350636, 39.434196, 33.457409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904493, 39.638405, 33.033497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.626492, 39.545174, 32.761425>,  <29.459690, 39.489235, 32.598183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.626492, 39.545174, 32.761425>,  <29.904493, 39.638405, 33.033497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626492, 39.545174, 32.761425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081719, 0.914261, -0.396798,
		0.714345, -0.331361, -0.616369,
		-0.695006, -0.233082, -0.680176,
		29.417990, 39.475250, 32.557373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248053, 39.604145, 32.345760>,  <29.904493, 39.638405, 33.033497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248053, 39.604145, 32.345760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.860279, 39.694164, 32.306671>,  <29.627615, 39.748177, 32.283218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.860279, 39.694164, 32.306671>,  <30.248053, 39.604145, 32.345760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860279, 39.694164, 32.306671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245349, 0.888998, -0.386635,
		-0.000136, -0.398794, -0.917041,
		-0.969435, 0.225048, -0.097723,
		29.569448, 39.761677, 32.277355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164648, 39.801579, 31.635530>,  <30.248053, 39.604145, 32.345760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164648, 39.801579, 31.635530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.885115, 39.962780, 31.871910>,  <29.717396, 40.059502, 32.013737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.885115, 39.962780, 31.871910>,  <30.164648, 39.801579, 31.635530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885115, 39.962780, 31.871910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233101, 0.909384, -0.344506,
		-0.676238, -0.103000, -0.729447,
		-0.698832, 0.403003, 0.590951,
		29.675465, 40.083679, 32.049194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031738, 40.369194, 31.302866>,  <30.164648, 39.801579, 31.635530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031738, 40.369194, 31.302866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.819180, 40.466793, 31.627354>,  <29.691645, 40.525352, 31.822046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.819180, 40.466793, 31.627354>,  <30.031738, 40.369194, 31.302866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819180, 40.466793, 31.627354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087984, 0.968338, -0.233626,
		-0.842541, -0.052774, -0.536041,
		-0.531398, 0.244002, 0.811221,
		29.659760, 40.539993, 31.870720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444775, 40.646061, 31.116209>,  <30.031738, 40.369194, 31.302866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444775, 40.646061, 31.116209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.528318, 40.783710, 31.482368>,  <29.578445, 40.866299, 31.702065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.528318, 40.783710, 31.482368>,  <29.444775, 40.646061, 31.116209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528318, 40.783710, 31.482368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036493, 0.932648, -0.358936,
		-0.977265, 0.108372, 0.182234,
		0.208859, 0.344125, 0.915399,
		29.590977, 40.886948, 31.756989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098387, 41.153118, 31.226786>,  <29.444775, 40.646061, 31.116209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098387, 41.153118, 31.226786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.346251, 41.214211, 31.534733>,  <29.494968, 41.250866, 31.719501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.346251, 41.214211, 31.534733>,  <29.098387, 41.153118, 31.226786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346251, 41.214211, 31.534733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027846, 0.984545, -0.172904,
		-0.784377, 0.085704, 0.614335,
		0.619659, 0.152729, 0.769868,
		29.532148, 41.260029, 31.765694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883053, 41.720440, 31.495283>,  <29.098387, 41.153118, 31.226786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883053, 41.720440, 31.495283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.240368, 41.696224, 31.673441>,  <29.454756, 41.681694, 31.780336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.240368, 41.696224, 31.673441>,  <28.883053, 41.720440, 31.495283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240368, 41.696224, 31.673441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120289, 0.986944, -0.107104,
		-0.433095, 0.149251, 0.888905,
		0.893285, -0.060540, 0.445394,
		29.508354, 41.678062, 31.807058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859592, 42.156502, 31.998560>,  <28.883053, 41.720440, 31.495283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859592, 42.156502, 31.998560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.249048, 42.109104, 31.920603>,  <29.482721, 42.080666, 31.873829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.249048, 42.109104, 31.920603>,  <28.859592, 42.156502, 31.998560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249048, 42.109104, 31.920603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121720, 0.992554, 0.004622,
		0.192893, -0.028223, 0.980814,
		0.973641, -0.118493, -0.194892,
		29.541140, 42.073555, 31.862135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148838, 42.671062, 32.488060>,  <28.859592, 42.156502, 31.998560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148838, 42.671062, 32.488060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.440987, 42.579525, 32.230629>,  <29.616276, 42.524605, 32.076172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.440987, 42.579525, 32.230629>,  <29.148838, 42.671062, 32.488060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440987, 42.579525, 32.230629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376562, 0.920993, 0.099864,
		0.569875, -0.315284, 0.758840,
		0.730372, -0.228841, -0.643575,
		29.660099, 42.510872, 32.037556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798098, 42.979160, 32.739601>,  <29.148838, 42.671062, 32.488060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798098, 42.979160, 32.739601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.857775, 42.935127, 32.346539>,  <29.893581, 42.908707, 32.110699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.857775, 42.935127, 32.346539>,  <29.798098, 42.979160, 32.739601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857775, 42.935127, 32.346539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272550, 0.959865, -0.066152,
		0.950504, -0.257954, 0.173210,
		0.149194, -0.110086, -0.982661,
		29.902533, 42.902100, 32.051739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485498, 43.212940, 32.571796>,  <29.798098, 42.979160, 32.739601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485498, 43.212940, 32.571796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.228313, 43.226936, 32.265759>,  <30.074003, 43.235336, 32.082134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.228313, 43.226936, 32.265759>,  <30.485498, 43.212940, 32.571796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228313, 43.226936, 32.265759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302154, 0.929521, -0.211407,
		0.703778, -0.367104, -0.608219,
		-0.642961, 0.034992, -0.765099,
		30.035425, 43.237434, 32.036228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859856, 43.064686, 32.003468>,  <30.485498, 43.212940, 32.571796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859856, 43.064686, 32.003468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.533937, 43.255131, 31.871145>,  <30.338387, 43.369396, 31.791752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.533937, 43.255131, 31.871145>,  <30.859856, 43.064686, 32.003468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533937, 43.255131, 31.871145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516293, 0.855456, -0.040453,
		0.263727, -0.203752, -0.942833,
		-0.814794, 0.476109, -0.330803,
		30.289499, 43.397964, 31.771904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157400, 43.652161, 31.533852>,  <30.859856, 43.064686, 32.003468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157400, 43.652161, 31.533852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.775917, 43.744274, 31.611216>,  <30.547028, 43.799541, 31.657635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.775917, 43.744274, 31.611216>,  <31.157400, 43.652161, 31.533852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775917, 43.744274, 31.611216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208399, 0.969758, -0.127039,
		-0.216817, -0.080852, -0.972858,
		-0.953708, 0.230287, 0.193411,
		30.489805, 43.813362, 31.669239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931879, 44.050480, 30.907864>,  <31.157400, 43.652161, 31.533852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931879, 44.050480, 30.907864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.677555, 44.149532, 31.200281>,  <30.524960, 44.208961, 31.375732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.677555, 44.149532, 31.200281>,  <30.931879, 44.050480, 30.907864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677555, 44.149532, 31.200281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156564, 0.968826, -0.192002,
		-0.755799, -0.007622, -0.654760,
		-0.635811, 0.247627, 0.731044,
		30.486813, 44.223820, 31.419594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448708, 44.479908, 30.613342>,  <30.931879, 44.050480, 30.907864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448708, 44.479908, 30.613342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.418200, 44.587337, 30.997437>,  <30.399895, 44.651794, 31.227894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.418200, 44.587337, 30.997437>,  <30.448708, 44.479908, 30.613342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418200, 44.587337, 30.997437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177432, 0.951326, -0.251985,
		-0.981173, 0.151157, -0.120212,
		-0.076272, 0.268571, 0.960236,
		30.395319, 44.667908, 31.285507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929174, 45.192085, 30.678228>,  <30.448708, 44.479908, 30.613342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929174, 45.192085, 30.678228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.176971, 45.150120, 30.989412>,  <30.325649, 45.124939, 31.176123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.176971, 45.150120, 30.989412>,  <29.929174, 45.192085, 30.678228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176971, 45.150120, 30.989412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136252, 0.990357, 0.025063,
		-0.773088, 0.090472, 0.627813,
		0.619492, -0.104917, 0.777960,
		30.362820, 45.118645, 31.222801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689640, 45.657467, 31.213741>,  <29.929174, 45.192085, 30.678228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689640, 45.657467, 31.213741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.077955, 45.580032, 31.270439>,  <30.310946, 45.533573, 31.304459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.077955, 45.580032, 31.270439>,  <29.689640, 45.657467, 31.213741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077955, 45.580032, 31.270439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159007, 0.961504, 0.224115,
		-0.179674, -0.195030, 0.964199,
		0.970791, -0.193582, 0.141747,
		30.369192, 45.521957, 31.312963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948124, 45.832878, 31.889359>,  <29.689640, 45.657467, 31.213741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948124, 45.832878, 31.889359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.275803, 45.893532, 31.668118>,  <30.472410, 45.929924, 31.535372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.275803, 45.893532, 31.668118>,  <29.948124, 45.832878, 31.889359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275803, 45.893532, 31.668118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095646, 0.987029, 0.128938,
		0.565482, -0.052724, 0.823074,
		0.819196, 0.151636, -0.553104,
		30.521561, 45.939022, 31.502186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.781986, 31.587240, 45.685448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.389702, 31.546585, 45.618652>,  <37.154331, 31.522192, 45.578575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.389702, 31.546585, 45.618652>,  <37.781986, 31.587240, 45.685448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389702, 31.546585, 45.618652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178631, 0.118948, 0.976700,
		-0.079407, 0.987685, -0.134809,
		-0.980707, -0.101637, -0.166986,
		37.095490, 31.516094, 45.568558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556519, 32.089359, 46.062847>,  <37.781986, 31.587240, 45.685448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556519, 32.089359, 46.062847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.231079, 31.862776, 46.010406>,  <37.035816, 31.726826, 45.978943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.231079, 31.862776, 46.010406>,  <37.556519, 32.089359, 46.062847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231079, 31.862776, 46.010406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227430, 0.102534, 0.968381,
		-0.535106, 0.817687, -0.212251,
		-0.813595, -0.566459, -0.131100,
		36.987000, 31.692839, 45.971077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959694, 32.384953, 46.496979>,  <37.556519, 32.089359, 46.062847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959694, 32.384953, 46.496979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.857407, 32.009247, 46.405415>,  <36.796036, 31.783825, 46.350475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.857407, 32.009247, 46.405415>,  <36.959694, 32.384953, 46.496979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857407, 32.009247, 46.405415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410921, -0.108725, 0.905165,
		-0.875073, 0.325527, -0.358159,
		-0.255715, -0.939261, -0.228908,
		36.780693, 31.727468, 46.336742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333080, 32.276375, 46.738171>,  <36.959694, 32.384953, 46.496979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333080, 32.276375, 46.738171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433823, 31.890829, 46.703434>,  <36.494267, 31.659502, 46.682594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433823, 31.890829, 46.703434>,  <36.333080, 32.276375, 46.738171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433823, 31.890829, 46.703434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570707, -0.220390, 0.791026,
		-0.781578, -0.149661, -0.605589,
		0.251851, -0.963862, -0.086840,
		36.509377, 31.601671, 46.677383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750977, 31.963055, 46.809570>,  <36.333080, 32.276375, 46.738171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750977, 31.963055, 46.809570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.978584, 31.645681, 46.896000>,  <36.115147, 31.455257, 46.947857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.978584, 31.645681, 46.896000>,  <35.750977, 31.963055, 46.809570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978584, 31.645681, 46.896000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575719, -0.196758, 0.793621,
		-0.587170, -0.575980, -0.568752,
		0.569016, -0.793432, 0.216072,
		36.149288, 31.407652, 46.960823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274361, 31.499996, 47.115170>,  <35.750977, 31.963055, 46.809570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274361, 31.499996, 47.115170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.643467, 31.410028, 47.240337>,  <35.864929, 31.356049, 47.315437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.643467, 31.410028, 47.240337>,  <35.274361, 31.499996, 47.115170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643467, 31.410028, 47.240337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356367, -0.189035, 0.915024,
		-0.146644, -0.955867, -0.254585,
		0.922767, -0.224908, 0.312918,
		35.920296, 31.342552, 47.334213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158367, 30.980909, 47.574566>,  <35.274361, 31.499996, 47.115170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158367, 30.980909, 47.574566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.531303, 31.056475, 47.697891>,  <35.755066, 31.101814, 47.771885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.531303, 31.056475, 47.697891>,  <35.158367, 30.980909, 47.574566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531303, 31.056475, 47.697891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255044, -0.260838, 0.931083,
		0.256312, -0.946718, -0.195009,
		0.932339, 0.188912, 0.308310,
		35.811005, 31.113148, 47.790386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373055, 30.427984, 47.936947>,  <35.158367, 30.980909, 47.574566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373055, 30.427984, 47.936947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.605911, 30.727417, 48.063904>,  <35.745625, 30.907078, 48.140079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.605911, 30.727417, 48.063904>,  <35.373055, 30.427984, 47.936947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605911, 30.727417, 48.063904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228438, -0.224056, 0.947426,
		0.780341, -0.624037, 0.040573,
		0.582138, 0.748583, 0.317394,
		35.780552, 30.951992, 48.159122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695152, 30.180607, 48.561699>,  <35.373055, 30.427984, 47.936947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695152, 30.180607, 48.561699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702190, 30.579830, 48.585598>,  <35.706413, 30.819365, 48.599937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702190, 30.579830, 48.585598>,  <35.695152, 30.180607, 48.561699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702190, 30.579830, 48.585598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165949, -0.056010, 0.984543,
		0.985977, -0.027240, 0.164641,
		0.017597, 0.998059, 0.059745,
		35.707470, 30.879248, 48.603523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125748, 30.394533, 49.250095>,  <35.695152, 30.180607, 48.561699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125748, 30.394533, 49.250095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.892651, 30.683226, 49.100693>,  <35.752792, 30.856441, 49.011051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.892651, 30.683226, 49.100693>,  <36.125748, 30.394533, 49.250095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892651, 30.683226, 49.100693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454502, 0.091560, 0.886027,
		0.673674, 0.686089, 0.274674,
		-0.582744, 0.721733, -0.373510,
		35.717827, 30.899746, 48.988640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171432, 30.887974, 49.681068>,  <36.125748, 30.394533, 49.250095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171432, 30.887974, 49.681068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.819366, 30.982843, 49.516602>,  <35.608128, 31.039764, 49.417923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.819366, 30.982843, 49.516602>,  <36.171432, 30.887974, 49.681068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819366, 30.982843, 49.516602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384474, 0.151770, 0.910574,
		0.278366, 0.959539, -0.042396,
		-0.880166, 0.237173, -0.411165,
		35.555317, 31.053995, 49.393253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123116, 31.499249, 50.004574>,  <36.171432, 30.887974, 49.681068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123116, 31.499249, 50.004574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.779343, 31.346615, 49.868469>,  <35.573078, 31.255035, 49.786808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.779343, 31.346615, 49.868469>,  <36.123116, 31.499249, 50.004574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779343, 31.346615, 49.868469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411325, 0.120805, 0.903448,
		-0.303635, 0.916406, -0.260778,
		-0.859429, -0.381583, -0.340260,
		35.521515, 31.232140, 49.766392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507309, 31.960255, 50.255730>,  <36.123116, 31.499249, 50.004574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507309, 31.960255, 50.255730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.378769, 31.585768, 50.198833>,  <35.301647, 31.361076, 50.164696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.378769, 31.585768, 50.198833>,  <35.507309, 31.960255, 50.255730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378769, 31.585768, 50.198833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388480, -0.006649, 0.921433,
		-0.863608, 0.351357, -0.361566,
		-0.321348, -0.936218, -0.142237,
		35.282364, 31.304903, 50.156162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822777, 31.927624, 50.507401>,  <35.507309, 31.960255, 50.255730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822777, 31.927624, 50.507401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.983749, 31.562822, 50.539143>,  <35.080334, 31.343941, 50.558189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.983749, 31.562822, 50.539143>,  <34.822777, 31.927624, 50.507401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983749, 31.562822, 50.539143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283935, -0.041937, 0.957926,
		-0.870306, -0.408029, -0.275827,
		0.402429, -0.912005, 0.079356,
		35.104477, 31.289221, 50.562950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042439, 32.188202, 50.516792>,  <34.822777, 31.927624, 50.507401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042439, 32.188202, 50.516792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.783272, 32.464706, 50.388813>,  <33.627773, 32.630608, 50.312027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.783272, 32.464706, 50.388813>,  <34.042439, 32.188202, 50.516792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783272, 32.464706, 50.388813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528925, 0.106030, -0.842019,
		-0.548131, -0.714783, -0.434324,
		-0.647913, 0.691262, -0.319948,
		33.588898, 32.672085, 50.292828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908302, 31.980116, 49.904369>,  <34.042439, 32.188202, 50.516792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908302, 31.980116, 49.904369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.814117, 32.368378, 49.884834>,  <33.757607, 32.601334, 49.873116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.814117, 32.368378, 49.884834>,  <33.908302, 31.980116, 49.904369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814117, 32.368378, 49.884834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528874, 0.085815, -0.844350,
		-0.815384, -0.224638, -0.533561,
		-0.235461, 0.970656, -0.048833,
		33.743481, 32.659576, 49.870186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615959, 32.200882, 49.190018>,  <33.908302, 31.980116, 49.904369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615959, 32.200882, 49.190018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.722149, 32.555027, 49.342682>,  <33.785862, 32.767513, 49.434280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.722149, 32.555027, 49.342682>,  <33.615959, 32.200882, 49.190018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722149, 32.555027, 49.342682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392443, 0.262355, -0.881566,
		-0.880633, 0.383811, -0.277804,
		0.265472, 0.885358, 0.381662,
		33.801792, 32.820633, 49.457180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517838, 32.725983, 48.582703>,  <33.615959, 32.200882, 49.190018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517838, 32.725983, 48.582703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.763733, 32.898560, 48.846809>,  <33.911270, 33.002106, 49.005272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.763733, 32.898560, 48.846809>,  <33.517838, 32.725983, 48.582703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763733, 32.898560, 48.846809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476292, 0.464190, -0.746775,
		-0.628682, 0.773551, 0.079861,
		0.614740, 0.431447, 0.660264,
		33.948154, 33.027992, 49.044888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403076, 33.402534, 48.420902>,  <33.517838, 32.725983, 48.582703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403076, 33.402534, 48.420902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.755493, 33.388447, 48.609589>,  <33.966946, 33.379993, 48.722801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.755493, 33.388447, 48.609589>,  <33.403076, 33.402534, 48.420902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755493, 33.388447, 48.609589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419979, 0.517104, -0.745802,
		-0.217661, 0.855197, 0.470384,
		0.881045, -0.035219, 0.471719,
		34.019806, 33.377880, 48.751102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648422, 34.138191, 48.472534>,  <33.403076, 33.402534, 48.420902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648422, 34.138191, 48.472534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.976849, 33.909874, 48.475353>,  <34.173904, 33.772884, 48.477043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.976849, 33.909874, 48.475353>,  <33.648422, 34.138191, 48.472534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976849, 33.909874, 48.475353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355195, 0.501193, -0.789077,
		0.446869, 0.650385, 0.614254,
		0.821063, -0.570794, 0.007046,
		34.223167, 33.738636, 48.477467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163437, 34.631462, 48.390011>,  <33.648422, 34.138191, 48.472534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163437, 34.631462, 48.390011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.330872, 34.274830, 48.320881>,  <34.431332, 34.060852, 48.279404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.330872, 34.274830, 48.320881>,  <34.163437, 34.631462, 48.390011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330872, 34.274830, 48.320881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470857, 0.375783, -0.798173,
		0.776583, 0.252725, 0.577104,
		0.418585, -0.891581, -0.172829,
		34.456448, 34.007355, 48.269032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783939, 34.803764, 48.011929>,  <34.163437, 34.631462, 48.390011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783939, 34.803764, 48.011929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.769596, 34.413754, 47.924259>,  <34.760990, 34.179749, 47.871658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.769596, 34.413754, 47.924259>,  <34.783939, 34.803764, 48.011929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769596, 34.413754, 47.924259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416254, 0.184813, -0.890268,
		0.908541, -0.123159, 0.399231,
		-0.035861, -0.975026, -0.219175,
		34.758839, 34.121246, 47.858505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471092, 34.631599, 47.775471>,  <34.783939, 34.803764, 48.011929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471092, 34.631599, 47.775471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.204689, 34.365158, 47.641159>,  <35.044849, 34.205292, 47.560574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.204689, 34.365158, 47.641159>,  <35.471092, 34.631599, 47.775471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204689, 34.365158, 47.641159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392786, 0.069525, -0.916998,
		0.634160, -0.742612, 0.215332,
		-0.666003, -0.666103, -0.335777,
		35.004887, 34.165329, 47.540424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873604, 34.351631, 47.313759>,  <35.471092, 34.631599, 47.775471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873604, 34.351631, 47.313759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.512268, 34.223148, 47.200050>,  <35.295467, 34.146061, 47.131824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.512268, 34.223148, 47.200050>,  <35.873604, 34.351631, 47.313759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512268, 34.223148, 47.200050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252174, 0.138401, -0.957733,
		0.346971, -0.936842, -0.044024,
		-0.903338, -0.321204, -0.284269,
		35.241268, 34.126789, 47.114769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929729, 33.794533, 46.683502>,  <35.873604, 34.351631, 47.313759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929729, 33.794533, 46.683502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.575787, 33.980869, 46.685211>,  <35.363422, 34.092670, 46.686237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.575787, 33.980869, 46.685211>,  <35.929729, 33.794533, 46.683502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575787, 33.980869, 46.685211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163359, 0.318861, -0.933618,
		-0.436280, -0.825421, -0.358246,
		-0.884858, 0.465841, 0.004273,
		35.310329, 34.120621, 46.686493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671608, 33.610142, 46.139591>,  <35.929729, 33.794533, 46.683502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671608, 33.610142, 46.139591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.481621, 33.953407, 46.217522>,  <35.367630, 34.159367, 46.264282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.481621, 33.953407, 46.217522>,  <35.671608, 33.610142, 46.139591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481621, 33.953407, 46.217522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149387, 0.296813, -0.943179,
		-0.867230, -0.418876, -0.269176,
		-0.474969, 0.858164, 0.194831,
		35.339130, 34.210857, 46.275970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174709, 33.615688, 45.604458>,  <35.671608, 33.610142, 46.139591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174709, 33.615688, 45.604458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.203682, 33.983494, 45.758991>,  <35.221066, 34.204178, 45.851711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.203682, 33.983494, 45.758991>,  <35.174709, 33.615688, 45.604458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203682, 33.983494, 45.758991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069539, 0.381755, -0.921644,
		-0.994946, 0.093619, -0.036292,
		0.072429, 0.919510, 0.386336,
		35.225410, 34.259346, 45.874893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653667, 34.021965, 45.313702>,  <35.174709, 33.615688, 45.604458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653667, 34.021965, 45.313702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.937706, 34.272827, 45.441727>,  <35.108128, 34.423344, 45.518543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.937706, 34.272827, 45.441727>,  <34.653667, 34.021965, 45.313702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937706, 34.272827, 45.441727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071696, 0.387796, -0.918953,
		-0.700449, 0.675489, 0.230406,
		0.710092, 0.627160, 0.320061,
		35.150734, 34.460976, 45.537746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959915, 34.285500, 45.499630>,  <34.653667, 34.021965, 45.313702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959915, 34.285500, 45.499630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.661896, 34.526646, 45.385471>,  <33.483086, 34.671333, 45.316975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.661896, 34.526646, 45.385471>,  <33.959915, 34.285500, 45.499630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661896, 34.526646, 45.385471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416351, -0.086054, 0.905122,
		0.521109, 0.793187, 0.315119,
		-0.745049, 0.602867, -0.285401,
		33.438381, 34.707504, 45.299850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944435, 34.928932, 45.908566>,  <33.959915, 34.285500, 45.499630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944435, 34.928932, 45.908566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.573750, 34.851723, 45.779610>,  <33.351337, 34.805397, 45.702236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.573750, 34.851723, 45.779610>,  <33.944435, 34.928932, 45.908566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573750, 34.851723, 45.779610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351579, 0.142601, 0.925234,
		-0.132618, 0.970777, -0.200013,
		-0.926717, -0.193023, -0.322393,
		33.295734, 34.793816, 45.682892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535637, 35.353870, 46.316265>,  <33.944435, 34.928932, 45.908566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535637, 35.353870, 46.316265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265881, 35.098007, 46.168732>,  <33.104027, 34.944489, 46.080212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265881, 35.098007, 46.168732>,  <33.535637, 35.353870, 46.316265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265881, 35.098007, 46.168732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481649, 0.002477, 0.876360,
		-0.559654, 0.768659, -0.309759,
		-0.674390, -0.639654, -0.368838,
		33.063564, 34.906113, 46.058079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803864, 35.668694, 46.486401>,  <33.535637, 35.353870, 46.316265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803864, 35.668694, 46.486401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775116, 35.272266, 46.441475>,  <32.757866, 35.034409, 46.414520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775116, 35.272266, 46.441475>,  <32.803864, 35.668694, 46.486401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775116, 35.272266, 46.441475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612908, -0.044957, 0.788874,
		-0.786879, 0.125536, -0.604204,
		-0.071869, -0.991070, -0.112317,
		32.753555, 34.974945, 46.407780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099178, 35.432804, 46.551109>,  <32.803864, 35.668694, 46.486401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099178, 35.432804, 46.551109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.287609, 35.089073, 46.630756>,  <32.400665, 34.882835, 46.678543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.287609, 35.089073, 46.630756>,  <32.099178, 35.432804, 46.551109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287609, 35.089073, 46.630756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608196, -0.152921, 0.778917,
		-0.638895, -0.488030, -0.594676,
		0.471073, -0.859327, 0.199118,
		32.428932, 34.831276, 46.690491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539078, 35.136837, 46.709957>,  <32.099178, 35.432804, 46.551109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539078, 35.136837, 46.709957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.853174, 34.924637, 46.837685>,  <32.041634, 34.797318, 46.914322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.853174, 34.924637, 46.837685>,  <31.539078, 35.136837, 46.709957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853174, 34.924637, 46.837685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497069, -0.232575, 0.835962,
		-0.369215, -0.815154, -0.446323,
		0.785241, -0.530503, 0.319318,
		32.088745, 34.765488, 46.933479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239882, 34.510113, 47.046864>,  <31.539078, 35.136837, 46.709957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239882, 34.510113, 47.046864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.616426, 34.520092, 47.181454>,  <31.842354, 34.526081, 47.262207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.616426, 34.520092, 47.181454>,  <31.239882, 34.510113, 47.046864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616426, 34.520092, 47.181454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321768, -0.233646, 0.917538,
		0.101507, -0.972002, -0.211917,
		0.941362, 0.024949, 0.336476,
		31.898834, 34.527576, 47.282398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214054, 33.876156, 46.612274>,  <31.239882, 34.510113, 47.046864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214054, 33.876156, 46.612274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.010420, 33.583363, 46.431149>,  <30.888239, 33.407688, 46.322472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.010420, 33.583363, 46.431149>,  <31.214054, 33.876156, 46.612274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010420, 33.583363, 46.431149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592701, 0.083354, -0.801098,
		0.624131, -0.676209, 0.391411,
		-0.509084, -0.731979, -0.452813,
		30.857695, 33.363770, 46.295303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667110, 33.434330, 46.196171>,  <31.214054, 33.876156, 46.612274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667110, 33.434330, 46.196171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.303110, 33.381023, 46.039127>,  <31.084709, 33.349041, 45.944901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.303110, 33.381023, 46.039127>,  <31.667110, 33.434330, 46.196171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303110, 33.381023, 46.039127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338499, 0.307999, -0.889132,
		0.239410, -0.942007, -0.235170,
		-0.910001, -0.133262, -0.392606,
		31.030109, 33.341045, 45.921345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805374, 33.396530, 45.489132>,  <31.667110, 33.434330, 46.196171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805374, 33.396530, 45.489132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.409077, 33.397213, 45.434845>,  <31.171297, 33.397621, 45.402271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.409077, 33.397213, 45.434845>,  <31.805374, 33.396530, 45.489132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409077, 33.397213, 45.434845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132586, 0.226091, -0.965041,
		0.029041, -0.974105, -0.224225,
		-0.990746, 0.001704, -0.135718,
		31.111853, 33.397724, 45.394131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692623, 33.051956, 44.895325>,  <31.805374, 33.396530, 45.489132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692623, 33.051956, 44.895325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.380798, 33.300648, 44.925613>,  <31.193703, 33.449863, 44.943787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.380798, 33.300648, 44.925613>,  <31.692623, 33.051956, 44.895325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380798, 33.300648, 44.925613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111989, 0.257322, -0.959814,
		-0.616229, -0.739756, -0.270226,
		-0.779564, 0.621728, 0.075725,
		31.146929, 33.487167, 44.948330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160801, 32.902462, 44.499573>,  <31.692623, 33.051956, 44.895325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160801, 32.902462, 44.499573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.112465, 33.293522, 44.568386>,  <31.083464, 33.528160, 44.609673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.112465, 33.293522, 44.568386>,  <31.160801, 32.902462, 44.499573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112465, 33.293522, 44.568386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117425, 0.158008, -0.980431,
		-0.985702, -0.138676, 0.095707,
		-0.120840, 0.977651, 0.172033,
		31.076212, 33.586819, 44.619995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521080, 33.035690, 44.032085>,  <31.160801, 32.902462, 44.499573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521080, 33.035690, 44.032085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.712763, 33.377815, 44.110878>,  <30.827772, 33.583092, 44.158154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.712763, 33.377815, 44.110878>,  <30.521080, 33.035690, 44.032085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712763, 33.377815, 44.110878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001911, 0.223407, -0.974723,
		-0.877700, 0.467470, 0.105424,
		0.479206, 0.855313, 0.196978,
		30.856525, 33.634411, 44.169971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128464, 33.696587, 43.666134>,  <30.521080, 33.035690, 44.032085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128464, 33.696587, 43.666134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.511204, 33.786385, 43.739933>,  <30.740849, 33.840263, 43.784214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.511204, 33.786385, 43.739933>,  <30.128464, 33.696587, 43.666134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511204, 33.786385, 43.739933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083628, 0.395318, -0.914729,
		-0.278287, 0.890688, 0.359487,
		0.956850, 0.224495, 0.184498,
		30.798260, 33.853733, 43.795284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.168129, 28.943550, 48.519257> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.436214, 29.225496, 48.612186>,  <33.597065, 29.394665, 48.667942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.436214, 29.225496, 48.612186>,  <33.168129, 28.943550, 48.519257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436214, 29.225496, 48.612186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051146, 0.268421, -0.961943,
		-0.740400, 0.656594, 0.143849,
		0.670218, 0.704865, 0.232321,
		33.637280, 29.436956, 48.681881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898811, 29.591703, 48.231121>,  <33.168129, 28.943550, 48.519257>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898811, 29.591703, 48.231121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.294628, 29.612564, 48.284912>,  <33.532120, 29.625080, 48.317188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.294628, 29.612564, 48.284912>,  <32.898811, 29.591703, 48.231121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294628, 29.612564, 48.284912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103731, 0.390534, -0.914726,
		-0.100226, 0.919110, 0.381040,
		0.989543, 0.052154, 0.134482,
		33.591492, 29.628210, 48.325256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183407, 30.281292, 47.973080>,  <32.898811, 29.591703, 48.231121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183407, 30.281292, 47.973080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.504353, 30.042669, 47.980305>,  <33.696922, 29.899496, 47.984638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.504353, 30.042669, 47.980305>,  <33.183407, 30.281292, 47.973080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504353, 30.042669, 47.980305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291107, 0.364763, -0.884423,
		0.521021, 0.714890, 0.466336,
		0.802367, -0.596557, 0.018060,
		33.745064, 29.863703, 47.985722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739101, 30.669329, 47.571472>,  <33.183407, 30.281292, 47.973080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739101, 30.669329, 47.571472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.864136, 30.289600, 47.584633>,  <33.939156, 30.061764, 47.592529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.864136, 30.289600, 47.584633>,  <33.739101, 30.669329, 47.571472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864136, 30.289600, 47.584633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504558, 0.136592, -0.852504,
		0.804804, 0.283085, 0.521683,
		0.312589, -0.949318, 0.032903,
		33.957912, 30.004805, 47.594505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470749, 30.583952, 47.310200>,  <33.739101, 30.669329, 47.571472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470749, 30.583952, 47.310200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.315228, 30.217852, 47.267963>,  <34.221916, 29.998192, 47.242622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.315228, 30.217852, 47.267963>,  <34.470749, 30.583952, 47.310200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315228, 30.217852, 47.267963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314695, -0.024213, -0.948884,
		0.865911, -0.402155, 0.297439,
		-0.388801, -0.915251, -0.105590,
		34.198586, 29.943275, 47.236286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089272, 30.222359, 46.862831>,  <34.470749, 30.583952, 47.310200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089272, 30.222359, 46.862831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.764248, 29.991199, 46.832417>,  <34.569233, 29.852505, 46.814167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.764248, 29.991199, 46.832417>,  <35.089272, 30.222359, 46.862831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764248, 29.991199, 46.832417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271337, -0.259564, -0.926824,
		0.515873, -0.773731, 0.367716,
		-0.812558, -0.577899, -0.076039,
		34.520481, 29.817829, 46.809605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394592, 29.497974, 46.676537>,  <35.089272, 30.222359, 46.862831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394592, 29.497974, 46.676537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.022358, 29.552319, 46.540562>,  <34.799019, 29.584925, 46.458977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.022358, 29.552319, 46.540562>,  <35.394592, 29.497974, 46.676537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022358, 29.552319, 46.540562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340866, -0.017125, -0.939956,
		-0.133524, -0.990580, -0.030374,
		-0.930582, 0.135861, -0.339942,
		34.743183, 29.593077, 46.438580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284222, 28.966244, 46.279495>,  <35.394592, 29.497974, 46.676537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284222, 28.966244, 46.279495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.988941, 29.211843, 46.167736>,  <34.811771, 29.359203, 46.100681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.988941, 29.211843, 46.167736>,  <35.284222, 28.966244, 46.279495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988941, 29.211843, 46.167736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214561, -0.178957, -0.960176,
		-0.639548, -0.768751, 0.000365,
		-0.738202, 0.614001, -0.279395,
		34.767479, 29.396044, 46.083916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003609, 28.605066, 45.740906>,  <35.284222, 28.966244, 46.279495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003609, 28.605066, 45.740906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.894096, 28.984257, 45.675934>,  <34.828388, 29.211771, 45.636951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.894096, 28.984257, 45.675934>,  <35.003609, 28.605066, 45.740906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894096, 28.984257, 45.675934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004163, -0.170047, -0.985427,
		-0.961783, -0.269117, 0.050503,
		-0.273783, 0.947977, -0.162428,
		34.811962, 29.268650, 45.627205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433178, 28.675903, 45.316597>,  <35.003609, 28.605066, 45.740906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433178, 28.675903, 45.316597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.569206, 29.049944, 45.276711>,  <34.650822, 29.274368, 45.252777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.569206, 29.049944, 45.276711>,  <34.433178, 28.675903, 45.316597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569206, 29.049944, 45.276711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075112, -0.132705, -0.988305,
		-0.937396, 0.328601, -0.115366,
		0.340068, 0.935099, -0.099716,
		34.671227, 29.330473, 45.246796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127697, 28.940130, 44.703884>,  <34.433178, 28.675903, 45.316597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127697, 28.940130, 44.703884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.433155, 29.196558, 44.734550>,  <34.616428, 29.350414, 44.752953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.433155, 29.196558, 44.734550>,  <34.127697, 28.940130, 44.703884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433155, 29.196558, 44.734550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021269, 0.093708, -0.995373,
		-0.645288, 0.761740, 0.057924,
		0.763644, 0.641070, 0.076670,
		34.662247, 29.388880, 44.757553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951130, 29.380976, 44.206352>,  <34.127697, 28.940130, 44.703884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951130, 29.380976, 44.206352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.338436, 29.460165, 44.267372>,  <34.570820, 29.507679, 44.303982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.338436, 29.460165, 44.267372>,  <33.951130, 29.380976, 44.206352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338436, 29.460165, 44.267372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134057, 0.103729, -0.985530,
		-0.210932, 0.974703, 0.073897,
		0.968265, 0.197973, 0.152545,
		34.628914, 29.519556, 44.313137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327511, 29.717001, 44.210720>,  <33.951130, 29.380976, 44.206352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327511, 29.717001, 44.210720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.023819, 29.925007, 44.054184>,  <32.841602, 30.049810, 43.960262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.023819, 29.925007, 44.054184>,  <33.327511, 29.717001, 44.210720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023819, 29.925007, 44.054184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483024, -0.047238, 0.874332,
		0.436179, 0.852850, 0.287044,
		-0.759234, 0.520014, -0.391343,
		32.796047, 30.081011, 43.936783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122108, 30.305784, 44.742249>,  <33.327511, 29.717001, 44.210720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122108, 30.305784, 44.742249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.806007, 30.228342, 44.509689>,  <32.616348, 30.181877, 44.370155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.806007, 30.228342, 44.509689>,  <33.122108, 30.305784, 44.742249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806007, 30.228342, 44.509689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553441, -0.181826, 0.812799,
		-0.263077, 0.964082, 0.036538,
		-0.790249, -0.193607, -0.581397,
		32.568932, 30.170259, 44.335270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522423, 30.721165, 44.985283>,  <33.122108, 30.305784, 44.742249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522423, 30.721165, 44.985283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.350266, 30.424028, 44.780167>,  <32.246971, 30.245747, 44.657097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.350266, 30.424028, 44.780167>,  <32.522423, 30.721165, 44.985283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350266, 30.424028, 44.780167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652092, -0.136930, 0.745672,
		-0.624130, 0.655317, -0.425465,
		-0.430392, -0.742839, -0.512789,
		32.221149, 30.201178, 44.626331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849060, 30.902016, 45.086082>,  <32.522423, 30.721165, 44.985283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849060, 30.902016, 45.086082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.830612, 30.523279, 44.958729>,  <31.819544, 30.296038, 44.882317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.830612, 30.523279, 44.958729>,  <31.849060, 30.902016, 45.086082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830612, 30.523279, 44.958729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609702, -0.225789, 0.759791,
		-0.791288, 0.229159, -0.566877,
		-0.046119, -0.946840, -0.318383,
		31.816776, 30.239227, 44.863213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129065, 30.801889, 45.045708>,  <31.849060, 30.902016, 45.086082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129065, 30.801889, 45.045708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.281921, 30.435112, 45.091621>,  <31.373636, 30.215046, 45.119171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.281921, 30.435112, 45.091621>,  <31.129065, 30.801889, 45.045708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281921, 30.435112, 45.091621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655840, -0.181599, 0.732732,
		-0.651030, -0.355292, -0.670767,
		0.382144, -0.916946, 0.114788,
		31.396564, 30.160028, 45.126057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576235, 30.303434, 45.087761>,  <31.129065, 30.801889, 45.045708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576235, 30.303434, 45.087761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.887560, 30.132345, 45.271622>,  <31.074354, 30.029692, 45.381939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.887560, 30.132345, 45.271622>,  <30.576235, 30.303434, 45.087761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887560, 30.132345, 45.271622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609853, -0.340835, 0.715479,
		-0.149360, -0.837189, -0.526124,
		0.778313, -0.427723, 0.459655,
		31.121054, 30.004028, 45.409519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222490, 29.943714, 45.434139>,  <30.576235, 30.303434, 45.087761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222490, 29.943714, 45.434139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.584927, 29.878216, 45.590183>,  <30.802389, 29.838917, 45.683807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.584927, 29.878216, 45.590183>,  <30.222490, 29.943714, 45.434139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584927, 29.878216, 45.590183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405382, -0.072119, 0.911298,
		-0.121090, -0.983862, -0.131728,
		0.906092, -0.163749, 0.390107,
		30.856754, 29.829092, 45.707214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136005, 29.396992, 45.761456>,  <30.222490, 29.943714, 45.434139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136005, 29.396992, 45.761456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.452055, 29.571844, 45.933327>,  <30.641685, 29.676756, 46.036449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.452055, 29.571844, 45.933327>,  <30.136005, 29.396992, 45.761456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452055, 29.571844, 45.933327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366940, -0.224177, 0.902829,
		0.490978, -0.871011, -0.016726,
		0.790124, 0.437131, 0.429675,
		30.689093, 29.702984, 46.062229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216469, 28.958746, 46.343731>,  <30.136005, 29.396992, 45.761456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216469, 28.958746, 46.343731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.419987, 29.292662, 46.427879>,  <30.542097, 29.493011, 46.478367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.419987, 29.292662, 46.427879>,  <30.216469, 28.958746, 46.343731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419987, 29.292662, 46.427879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244495, -0.094186, 0.965065,
		0.825441, -0.542453, 0.156181,
		0.508793, 0.834790, 0.210372,
		30.572624, 29.543098, 46.490990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517323, 28.816870, 46.985291>,  <30.216469, 28.958746, 46.343731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517323, 28.816870, 46.985291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.507437, 29.216318, 46.966743>,  <30.501505, 29.455986, 46.955616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.507437, 29.216318, 46.966743>,  <30.517323, 28.816870, 46.985291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507437, 29.216318, 46.966743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418767, 0.031774, 0.907538,
		0.907757, 0.041845, 0.417403,
		-0.024713, 0.998619, -0.046366,
		30.500023, 29.515903, 46.952835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664555, 29.086987, 47.673592>,  <30.517323, 28.816870, 46.985291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664555, 29.086987, 47.673592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.526283, 29.419872, 47.500191>,  <30.443319, 29.619604, 47.396149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.526283, 29.419872, 47.500191>,  <30.664555, 29.086987, 47.673592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526283, 29.419872, 47.500191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440122, 0.264214, 0.858186,
		0.828733, 0.487452, 0.274942,
		-0.345681, 0.832215, -0.433501,
		30.422579, 29.669537, 47.370140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854822, 29.601280, 48.089947>,  <30.664555, 29.086987, 47.673592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854822, 29.601280, 48.089947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.532303, 29.728800, 47.890648>,  <30.338791, 29.805311, 47.771069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.532303, 29.728800, 47.890648>,  <30.854822, 29.601280, 48.089947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532303, 29.728800, 47.890648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504185, 0.070088, 0.860747,
		0.309325, 0.945228, 0.104221,
		-0.806297, 0.318797, -0.498250,
		30.290413, 29.824438, 47.741173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635918, 30.102358, 48.492207>,  <30.854822, 29.601280, 48.089947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635918, 30.102358, 48.492207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.309429, 30.035345, 48.271038>,  <30.113537, 29.995138, 48.138336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.309429, 30.035345, 48.271038>,  <30.635918, 30.102358, 48.492207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309429, 30.035345, 48.271038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577707, 0.247319, 0.777874,
		0.006428, 0.954341, -0.298651,
		-0.816219, -0.167533, -0.552919,
		30.064564, 29.985085, 48.105164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086050, 30.633831, 48.709698>,  <30.635918, 30.102358, 48.492207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086050, 30.633831, 48.709698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.915627, 30.306479, 48.555439>,  <29.813372, 30.110067, 48.462883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.915627, 30.306479, 48.555439>,  <30.086050, 30.633831, 48.709698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915627, 30.306479, 48.555439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558739, -0.097232, 0.823624,
		-0.711535, 0.566391, -0.415835,
		-0.426061, -0.818381, -0.385649,
		29.787807, 30.060965, 48.439743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048023, 31.254673, 48.276974>,  <30.086050, 30.633831, 48.709698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048023, 31.254673, 48.276974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.726040, 31.488865, 48.238487>,  <29.532850, 31.629379, 48.215397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.726040, 31.488865, 48.238487>,  <30.048023, 31.254673, 48.276974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726040, 31.488865, 48.238487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313575, 0.282129, -0.906683,
		-0.503699, -0.760012, -0.410694,
		-0.804958, 0.585478, -0.096213,
		29.484552, 31.664509, 48.209621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452005, 31.226473, 47.575069>,  <30.048023, 31.254673, 48.276974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452005, 31.226473, 47.575069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.503159, 31.583330, 47.748379>,  <29.533850, 31.797445, 47.852364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.503159, 31.583330, 47.748379>,  <29.452005, 31.226473, 47.575069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503159, 31.583330, 47.748379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266986, 0.389769, -0.881362,
		-0.955178, 0.228388, -0.188346,
		0.127881, 0.892143, 0.433275,
		29.541523, 31.850973, 47.878361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195475, 31.831764, 47.178696>,  <29.452005, 31.226473, 47.575069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195475, 31.831764, 47.178696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.452085, 32.035923, 47.407761>,  <29.606052, 32.158417, 47.545200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.452085, 32.035923, 47.407761>,  <29.195475, 31.831764, 47.178696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452085, 32.035923, 47.407761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331155, 0.489113, -0.806911,
		-0.691940, 0.707293, 0.144758,
		0.641526, 0.510397, 0.572660,
		29.644543, 32.189041, 47.579559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119469, 32.592705, 47.032646>,  <29.195475, 31.831764, 47.178696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119469, 32.592705, 47.032646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.471920, 32.544243, 47.215485>,  <29.683392, 32.515167, 47.325188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.471920, 32.544243, 47.215485>,  <29.119469, 32.592705, 47.032646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471920, 32.544243, 47.215485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404687, 0.693231, -0.596372,
		-0.244619, 0.710460, 0.659854,
		0.881130, -0.121150, 0.457092,
		29.736259, 32.507896, 47.352612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339760, 33.290024, 47.216015>,  <29.119469, 32.592705, 47.032646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339760, 33.290024, 47.216015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.648386, 33.040775, 47.164780>,  <29.833561, 32.891228, 47.134037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.648386, 33.040775, 47.164780>,  <29.339760, 33.290024, 47.216015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648386, 33.040775, 47.164780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390440, 0.622817, -0.677979,
		0.502239, 0.473094, 0.723836,
		0.771565, -0.623122, -0.128088,
		29.879856, 32.853840, 47.126354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001442, 33.747292, 47.192104>,  <29.339760, 33.290024, 47.216015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001442, 33.747292, 47.192104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.131371, 33.401131, 47.039494>,  <30.209328, 33.193432, 46.947926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.131371, 33.401131, 47.039494>,  <30.001442, 33.747292, 47.192104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131371, 33.401131, 47.039494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617303, 0.499618, -0.607717,
		0.716540, -0.038119, 0.696504,
		0.324820, -0.865407, -0.381527,
		30.228817, 33.141510, 46.925034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583500, 33.840656, 47.015499>,  <30.001442, 33.747292, 47.192104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583500, 33.840656, 47.015499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.574818, 33.497330, 46.810436>,  <30.569609, 33.291332, 46.687397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.574818, 33.497330, 46.810436>,  <30.583500, 33.840656, 47.015499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574818, 33.497330, 46.810436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505629, 0.432943, -0.746257,
		0.862477, -0.275414, 0.424593,
		-0.021705, -0.858317, -0.512661,
		30.568306, 33.239834, 46.656639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368776, 33.841801, 47.373280>,  <30.583500, 33.840656, 47.015499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368776, 33.841801, 47.373280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.647005, 34.074806, 47.541496>,  <31.813942, 34.214611, 47.642426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.647005, 34.074806, 47.541496>,  <31.368776, 33.841801, 47.373280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647005, 34.074806, 47.541496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451153, -0.101402, 0.886667,
		0.559140, -0.806471, 0.192270,
		0.695574, 0.582515, 0.420540,
		31.855677, 34.249561, 47.667660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439415, 33.514172, 47.965710>,  <31.368776, 33.841801, 47.373280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439415, 33.514172, 47.965710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.625803, 33.860695, 48.037693>,  <31.737635, 34.068607, 48.080883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.625803, 33.860695, 48.037693>,  <31.439415, 33.514172, 47.965710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625803, 33.860695, 48.037693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118723, -0.140336, 0.982960,
		0.876800, -0.479393, 0.037459,
		0.465968, 0.866307, 0.179962,
		31.765593, 34.120586, 48.091682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961330, 33.311966, 48.383835>,  <31.439415, 33.514172, 47.965710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961330, 33.311966, 48.383835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.868946, 33.697071, 48.440033>,  <31.813515, 33.928135, 48.473751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.868946, 33.697071, 48.440033>,  <31.961330, 33.311966, 48.383835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868946, 33.697071, 48.440033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027597, -0.137863, 0.990067,
		0.972572, 0.232544, 0.005271,
		-0.230961, 0.962765, 0.140499,
		31.799658, 33.985901, 48.482182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496372, 33.666435, 48.845280>,  <31.961330, 33.311966, 48.383835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496372, 33.666435, 48.845280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.133389, 33.833679, 48.861801>,  <31.915598, 33.934025, 48.871712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.133389, 33.833679, 48.861801>,  <32.496372, 33.666435, 48.845280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133389, 33.833679, 48.861801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022455, -0.146427, 0.988967,
		0.419541, 0.896519, 0.142265,
		-0.907459, 0.418106, 0.041300,
		31.861151, 33.959110, 48.874191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561089, 34.035286, 49.375549>,  <32.496372, 33.666435, 48.845280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561089, 34.035286, 49.375549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.163269, 34.051460, 49.337090>,  <31.924578, 34.061165, 49.314014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.163269, 34.051460, 49.337090>,  <32.561089, 34.035286, 49.375549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163269, 34.051460, 49.337090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100991, -0.142856, 0.984577,
		0.026076, 0.988917, 0.146161,
		-0.994546, 0.040434, -0.096147,
		31.864906, 34.063591, 49.308247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306763, 34.359047, 49.922421>,  <32.561089, 34.035286, 49.375549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306763, 34.359047, 49.922421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.981428, 34.159538, 49.802608>,  <31.786228, 34.039833, 49.730721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.981428, 34.159538, 49.802608>,  <32.306763, 34.359047, 49.922421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981428, 34.159538, 49.802608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175246, -0.280892, 0.943604,
		-0.554780, 0.819954, 0.141050,
		-0.813332, -0.498774, -0.299527,
		31.737429, 34.009907, 49.712749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726454, 34.689522, 50.233723>,  <32.306763, 34.359047, 49.922421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726454, 34.689522, 50.233723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.646397, 34.304214, 50.162109>,  <31.598362, 34.073029, 50.119141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.646397, 34.304214, 50.162109>,  <31.726454, 34.689522, 50.233723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646397, 34.304214, 50.162109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130589, -0.154873, 0.979266,
		-0.971025, 0.219373, -0.094795,
		-0.200143, -0.963270, -0.179033,
		31.586353, 34.015232, 50.108398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368675, 34.516888, 50.786423>,  <31.726454, 34.689522, 50.233723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368675, 34.516888, 50.786423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.413536, 34.145752, 50.644135>,  <31.440453, 33.923069, 50.558762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.413536, 34.145752, 50.644135>,  <31.368675, 34.516888, 50.786423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413536, 34.145752, 50.644135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139688, -0.369145, 0.918814,
		-0.983824, -0.053359, -0.171009,
		0.112154, -0.927839, -0.355720,
		31.447182, 33.867401, 50.537418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678946, 34.133015, 50.907650>,  <31.368675, 34.516888, 50.786423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678946, 34.133015, 50.907650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.986460, 33.877747, 50.891113>,  <31.170969, 33.724586, 50.881191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.986460, 33.877747, 50.891113>,  <30.678946, 34.133015, 50.907650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986460, 33.877747, 50.891113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272432, -0.385306, 0.881657,
		-0.578573, -0.666545, -0.470076,
		0.768787, -0.638167, -0.041340,
		31.217096, 33.686295, 50.878712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.486351, 39.015442, 36.227398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764454, 38.756554, 36.352448>,  <36.931316, 38.601223, 36.427475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764454, 38.756554, 36.352448>,  <36.486351, 39.015442, 36.227398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764454, 38.756554, 36.352448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653842, -0.388859, 0.649061,
		-0.298520, -0.655665, -0.693534,
		0.695253, -0.647219, 0.312619,
		36.973030, 38.562389, 36.446232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202503, 38.254707, 36.217701>,  <36.486351, 39.015442, 36.227398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202503, 38.254707, 36.217701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515518, 38.291016, 36.464085>,  <36.703327, 38.312801, 36.611916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515518, 38.291016, 36.464085>,  <36.202503, 38.254707, 36.217701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515518, 38.291016, 36.464085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430166, -0.636392, 0.640283,
		0.450110, -0.766006, -0.458950,
		0.782533, 0.090774, 0.615956,
		36.750278, 38.318249, 36.648872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265293, 37.614944, 36.529881>,  <36.202503, 38.254707, 36.217701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265293, 37.614944, 36.529881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476555, 37.814789, 36.804523>,  <36.603313, 37.934696, 36.969311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476555, 37.814789, 36.804523>,  <36.265293, 37.614944, 36.529881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476555, 37.814789, 36.804523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483910, -0.487349, 0.726858,
		0.697767, -0.716154, -0.015629,
		0.528159, 0.499614, 0.686610,
		36.635002, 37.964672, 37.010506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175575, 37.130505, 37.064793>,  <36.265293, 37.614944, 36.529881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175575, 37.130505, 37.064793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309849, 37.459595, 37.248287>,  <36.390415, 37.657047, 37.358383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309849, 37.459595, 37.248287>,  <36.175575, 37.130505, 37.064793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309849, 37.459595, 37.248287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410901, -0.310327, 0.857238,
		0.847629, -0.476259, 0.233885,
		0.335687, 0.822724, 0.458737,
		36.410553, 37.706413, 37.385910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481075, 36.943222, 37.722031>,  <36.175575, 37.130505, 37.064793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481075, 36.943222, 37.722031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421314, 37.337326, 37.755356>,  <36.385460, 37.573788, 37.775349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421314, 37.337326, 37.755356>,  <36.481075, 36.943222, 37.722031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421314, 37.337326, 37.755356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478426, -0.145766, 0.865945,
		0.865326, 0.089513, 0.493152,
		-0.149398, 0.985261, 0.083310,
		36.376495, 37.632904, 37.780350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746544, 37.116173, 38.371239>,  <36.481075, 36.943222, 37.722031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746544, 37.116173, 38.371239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470421, 37.376942, 38.245716>,  <36.304749, 37.533401, 38.170403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470421, 37.376942, 38.245716>,  <36.746544, 37.116173, 38.371239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470421, 37.376942, 38.245716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475810, -0.082304, 0.875689,
		0.545052, 0.753808, 0.367005,
		-0.690307, 0.651920, -0.313810,
		36.263329, 37.572517, 38.151573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476562, 37.350540, 39.070522>,  <36.746544, 37.116173, 38.371239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476562, 37.350540, 39.070522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229206, 37.538799, 38.818787>,  <36.080791, 37.651756, 38.667744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229206, 37.538799, 38.818787>,  <36.476562, 37.350540, 39.070522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229206, 37.538799, 38.818787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699818, 0.034554, 0.713485,
		0.357549, 0.881642, 0.308003,
		-0.618395, 0.470652, -0.629344,
		36.043686, 37.679996, 38.629982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130150, 37.959690, 39.390404>,  <36.476562, 37.350540, 39.070522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130150, 37.959690, 39.390404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910175, 37.812176, 39.090652>,  <35.778191, 37.723667, 38.910801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910175, 37.812176, 39.090652>,  <36.130150, 37.959690, 39.390404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910175, 37.812176, 39.090652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731564, -0.220209, 0.645230,
		-0.402971, 0.903054, -0.148689,
		-0.549935, -0.368784, -0.749379,
		35.745193, 37.701542, 38.865837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475376, 38.201633, 39.527409>,  <36.130150, 37.959690, 39.390404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475376, 38.201633, 39.527409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414417, 37.886292, 39.288990>,  <35.377842, 37.697086, 39.145939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414417, 37.886292, 39.288990>,  <35.475376, 38.201633, 39.527409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414417, 37.886292, 39.288990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644092, -0.378202, 0.664913,
		-0.749614, 0.485237, -0.450138,
		-0.152397, -0.788358, -0.596043,
		35.368698, 37.649784, 39.110176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794720, 38.259830, 39.404087>,  <35.475376, 38.201633, 39.527409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794720, 38.259830, 39.404087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926586, 37.885235, 39.356224>,  <35.005707, 37.660477, 39.327507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926586, 37.885235, 39.356224>,  <34.794720, 38.259830, 39.404087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926586, 37.885235, 39.356224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718106, -0.331010, 0.612173,
		-0.612898, -0.115886, -0.781618,
		0.329665, -0.936484, -0.119657,
		35.025486, 37.604290, 39.320328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202168, 37.897186, 39.191059>,  <34.794720, 38.259830, 39.404087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202168, 37.897186, 39.191059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438820, 37.612305, 39.342186>,  <34.580811, 37.441376, 39.432861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438820, 37.612305, 39.342186>,  <34.202168, 37.897186, 39.191059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438820, 37.612305, 39.342186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755724, -0.326691, 0.567585,
		-0.280807, -0.621323, -0.731508,
		0.591631, -0.712201, 0.377812,
		34.616310, 37.398643, 39.455528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767742, 37.441628, 39.423801>,  <34.202168, 37.897186, 39.191059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767742, 37.441628, 39.423801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106346, 37.344036, 39.613068>,  <34.309509, 37.285480, 39.726627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106346, 37.344036, 39.613068>,  <33.767742, 37.441628, 39.423801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106346, 37.344036, 39.613068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527995, -0.498441, 0.687588,
		0.068086, -0.831883, -0.550759,
		0.846514, -0.243983, 0.473167,
		34.360302, 37.270840, 39.755016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917141, 36.791866, 38.989182>,  <33.767742, 37.441628, 39.423801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917141, 36.791866, 38.989182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531914, 36.728016, 38.902451>,  <33.300777, 36.689705, 38.850410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531914, 36.728016, 38.902451>,  <33.917141, 36.791866, 38.989182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531914, 36.728016, 38.902451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181048, 0.212151, -0.960320,
		0.199278, -0.964114, -0.175419,
		-0.963073, -0.159611, -0.216828,
		33.242992, 36.680130, 38.837402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864765, 36.333260, 38.420502>,  <33.917141, 36.791866, 38.989182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864765, 36.333260, 38.420502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500801, 36.499180, 38.420612>,  <33.282421, 36.598732, 38.420677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500801, 36.499180, 38.420612>,  <33.864765, 36.333260, 38.420502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500801, 36.499180, 38.420612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093807, 0.206428, -0.973955,
		-0.404053, -0.886188, -0.226742,
		-0.909913, 0.414799, 0.000277,
		33.227829, 36.623619, 38.420696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440273, 35.931942, 37.966099>,  <33.864765, 36.333260, 38.420502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440273, 35.931942, 37.966099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271999, 36.293831, 37.992916>,  <33.171036, 36.510963, 38.009007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271999, 36.293831, 37.992916>,  <33.440273, 35.931942, 37.966099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271999, 36.293831, 37.992916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009695, 0.069418, -0.997540,
		-0.907154, -0.420302, -0.020432,
		-0.420687, 0.904725, 0.067048,
		33.145794, 36.565247, 38.013031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754440, 35.838150, 37.581532>,  <33.440273, 35.931942, 37.966099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754440, 35.838150, 37.581532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848572, 36.226006, 37.608135>,  <32.905048, 36.458717, 37.624096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848572, 36.226006, 37.608135>,  <32.754440, 35.838150, 37.581532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848572, 36.226006, 37.608135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138343, 0.101149, -0.985206,
		-0.962020, 0.222643, 0.157946,
		0.235325, 0.969639, 0.066507,
		32.919170, 36.516895, 37.628086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283131, 36.178905, 37.207424>,  <32.754440, 35.838150, 37.581532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283131, 36.178905, 37.207424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559441, 36.466778, 37.235390>,  <32.725227, 36.639500, 37.252171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559441, 36.466778, 37.235390>,  <32.283131, 36.178905, 37.207424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559441, 36.466778, 37.235390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171571, 0.257070, -0.951041,
		-0.702418, 0.644961, 0.301055,
		0.690776, 0.719681, 0.069914,
		32.766674, 36.682682, 37.256363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990723, 36.643368, 36.770596>,  <32.283131, 36.178905, 37.207424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990723, 36.643368, 36.770596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361938, 36.791412, 36.787388>,  <32.584667, 36.880238, 36.797462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361938, 36.791412, 36.787388>,  <31.990723, 36.643368, 36.770596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361938, 36.791412, 36.787388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036562, 0.021651, -0.999097,
		-0.370687, 0.928735, 0.006561,
		0.928038, 0.370113, 0.041983,
		32.640350, 36.902447, 36.799984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027081, 37.315842, 36.439564>,  <31.990723, 36.643368, 36.770596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027081, 37.315842, 36.439564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399189, 37.169189, 36.434227>,  <32.622452, 37.081196, 36.431023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399189, 37.169189, 36.434227>,  <32.027081, 37.315842, 36.439564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399189, 37.169189, 36.434227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066295, 0.203762, -0.976773,
		0.360837, 0.907778, 0.213860,
		0.930269, -0.366634, -0.013344,
		32.678268, 37.059200, 36.430225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388107, 37.727459, 35.950512>,  <32.027081, 37.315842, 36.439564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388107, 37.727459, 35.950512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631180, 37.410122, 35.965130>,  <32.777023, 37.219719, 35.973900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631180, 37.410122, 35.965130>,  <32.388107, 37.727459, 35.950512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631180, 37.410122, 35.965130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088205, 0.021683, -0.995866,
		0.789271, 0.608389, 0.083153,
		0.607677, -0.793343, 0.036549,
		32.813484, 37.172119, 35.976093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024216, 37.893085, 35.561409>,  <32.388107, 37.727459, 35.950512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024216, 37.893085, 35.561409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983002, 37.496124, 35.588314>,  <32.958271, 37.257950, 35.604458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983002, 37.496124, 35.588314>,  <33.024216, 37.893085, 35.561409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983002, 37.496124, 35.588314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105513, -0.056338, -0.992821,
		0.989065, -0.109397, -0.098906,
		-0.103040, -0.992400, 0.067265,
		32.952091, 37.198402, 35.608494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421925, 37.576618, 35.036175>,  <33.024216, 37.893085, 35.561409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421925, 37.576618, 35.036175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155663, 37.289028, 35.116158>,  <32.995907, 37.116474, 35.164146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155663, 37.289028, 35.116158>,  <33.421925, 37.576618, 35.036175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155663, 37.289028, 35.116158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078461, -0.199027, -0.976848,
		0.742122, -0.665933, 0.076073,
		-0.665656, -0.718972, 0.199952,
		32.955967, 37.073338, 35.176144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556870, 36.965816, 34.598228>,  <33.421925, 37.576618, 35.036175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556870, 36.965816, 34.598228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166531, 36.931671, 34.678654>,  <32.932327, 36.911182, 34.726910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166531, 36.931671, 34.678654>,  <33.556870, 36.965816, 34.598228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166531, 36.931671, 34.678654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130645, -0.509595, -0.850438,
		0.175057, -0.856169, 0.486137,
		-0.975852, -0.085364, 0.201062,
		32.873775, 36.906063, 34.738972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429279, 36.381996, 34.345165>,  <33.556870, 36.965816, 34.598228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429279, 36.381996, 34.345165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056721, 36.526077, 34.366127>,  <32.833183, 36.612526, 34.378704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056721, 36.526077, 34.366127>,  <33.429279, 36.381996, 34.345165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056721, 36.526077, 34.366127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224352, -0.454731, -0.861908,
		-0.286633, -0.814539, 0.504349,
		-0.931401, 0.360203, 0.052402,
		32.777302, 36.634140, 34.381847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713459, 35.863235, 34.711468>,  <33.429279, 36.381996, 34.345165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713459, 35.863235, 34.711468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682987, 35.714058, 34.341579>,  <33.664703, 35.624550, 34.119648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682987, 35.714058, 34.341579>,  <33.713459, 35.863235, 34.711468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682987, 35.714058, 34.341579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734628, -0.648062, 0.200843,
		-0.674179, -0.664025, 0.323345,
		-0.076183, -0.372943, -0.924721,
		33.660133, 35.602177, 34.064163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749840, 35.095573, 34.646866>,  <33.713459, 35.863235, 34.711468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749840, 35.095573, 34.646866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883984, 35.209518, 34.287670>,  <33.964470, 35.277885, 34.072151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883984, 35.209518, 34.287670>,  <33.749840, 35.095573, 34.646866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883984, 35.209518, 34.287670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699723, -0.713558, 0.034954,
		-0.630810, -0.640066, -0.438626,
		0.335359, 0.284868, -0.897989,
		33.984592, 35.294979, 34.018272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018532, 35.045536, 34.499596>,  <33.749840, 35.095573, 34.646866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018532, 35.045536, 34.499596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217018, 34.748470, 34.679474>,  <33.336109, 34.570232, 34.787399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217018, 34.748470, 34.679474>,  <33.018532, 35.045536, 34.499596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217018, 34.748470, 34.679474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138151, 0.578903, 0.803608,
		-0.857135, -0.336640, 0.389862,
		0.496219, -0.742661, 0.449691,
		33.365883, 34.525673, 34.814381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735870, 34.428604, 34.105068>,  <33.018532, 35.045536, 34.499596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735870, 34.428604, 34.105068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505924, 34.742218, 34.198719>,  <32.367954, 34.930386, 34.254910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505924, 34.742218, 34.198719>,  <32.735870, 34.428604, 34.105068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505924, 34.742218, 34.198719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181332, 0.401085, -0.897914,
		-0.797900, -0.473729, -0.372742,
		-0.574869, 0.784035, 0.234124,
		32.333462, 34.977428, 34.268955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001232, 34.136963, 34.823013>,  <32.735870, 34.428604, 34.105068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001232, 34.136963, 34.823013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290150, 33.934063, 34.634975>,  <33.463501, 33.812325, 34.522152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290150, 33.934063, 34.634975>,  <33.001232, 34.136963, 34.823013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290150, 33.934063, 34.634975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181782, -0.795081, 0.578620,
		-0.667266, -0.332481, -0.666493,
		0.722296, -0.507250, -0.470091,
		33.506840, 33.781887, 34.493946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745560, 33.637554, 34.396358>,  <33.001232, 34.136963, 34.823013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745560, 33.637554, 34.396358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105007, 33.528019, 34.533474>,  <33.320675, 33.462299, 34.615742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105007, 33.528019, 34.533474>,  <32.745560, 33.637554, 34.396358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105007, 33.528019, 34.533474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433889, -0.670460, 0.601850,
		0.065017, -0.689564, -0.721300,
		0.898618, -0.273834, 0.342786,
		33.374592, 33.445869, 34.636311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749210, 32.973251, 34.460842>,  <32.745560, 33.637554, 34.396358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749210, 32.973251, 34.460842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064407, 33.051094, 34.694492>,  <33.253525, 33.097801, 34.834682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064407, 33.051094, 34.694492>,  <32.749210, 32.973251, 34.460842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064407, 33.051094, 34.694492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226377, -0.790696, 0.568817,
		0.572561, -0.580454, -0.579005,
		0.787989, 0.194609, 0.584124,
		33.300804, 33.109478, 34.869728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838615, 32.280964, 34.775391>,  <32.749210, 32.973251, 34.460842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838615, 32.280964, 34.775391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018375, 32.568253, 34.987881>,  <33.126232, 32.740627, 35.115376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018375, 32.568253, 34.987881>,  <32.838615, 32.280964, 34.775391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018375, 32.568253, 34.987881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142678, -0.529313, 0.836344,
		0.881863, -0.451646, -0.135398,
		0.449400, 0.718222, 0.531222,
		33.153194, 32.783718, 35.147247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298676, 31.956882, 35.279011>,  <32.838615, 32.280964, 34.775391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298676, 31.956882, 35.279011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233349, 32.315659, 35.443367>,  <33.194153, 32.530922, 35.541981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233349, 32.315659, 35.443367>,  <33.298676, 31.956882, 35.279011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233349, 32.315659, 35.443367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258482, -0.440833, 0.859566,
		0.952111, 0.034173, 0.303838,
		-0.163316, 0.896938, 0.410889,
		33.184353, 32.584740, 35.566635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506134, 31.885904, 36.003582>,  <33.298676, 31.956882, 35.279011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506134, 31.885904, 36.003582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295441, 32.225910, 36.001671>,  <33.169025, 32.429913, 36.000523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295441, 32.225910, 36.001671>,  <33.506134, 31.885904, 36.003582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295441, 32.225910, 36.001671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405336, -0.246231, 0.880383,
		0.747163, 0.465665, 0.474240,
		-0.526736, 0.850016, -0.004777,
		33.137421, 32.480915, 36.000237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678093, 32.218681, 36.648823>,  <33.506134, 31.885904, 36.003582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678093, 32.218681, 36.648823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314976, 32.331802, 36.524925>,  <33.097107, 32.399673, 36.450588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314976, 32.331802, 36.524925>,  <33.678093, 32.218681, 36.648823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314976, 32.331802, 36.524925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385465, -0.271411, 0.881903,
		0.165337, 0.919977, 0.355394,
		-0.907789, 0.282803, -0.309744,
		33.042641, 32.416645, 36.432003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419140, 32.676521, 37.188961>,  <33.678093, 32.218681, 36.648823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419140, 32.676521, 37.188961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098824, 32.555508, 36.982193>,  <32.906635, 32.482899, 36.858131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098824, 32.555508, 36.982193>,  <33.419140, 32.676521, 37.188961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098824, 32.555508, 36.982193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450479, -0.264558, 0.852689,
		-0.394724, 0.915687, 0.075570,
		-0.800788, -0.302534, -0.516925,
		32.858585, 32.464748, 36.827114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933262, 33.018166, 37.661400>,  <33.419140, 32.676521, 37.188961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933262, 33.018166, 37.661400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774422, 32.742676, 37.418758>,  <32.679119, 32.577381, 37.273174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774422, 32.742676, 37.418758>,  <32.933262, 33.018166, 37.661400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774422, 32.742676, 37.418758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447071, -0.432065, 0.783229,
		-0.801523, 0.582213, -0.136338,
		-0.397099, -0.688729, -0.606601,
		32.655293, 32.536057, 37.236778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283360, 33.035057, 37.790009>,  <32.933262, 33.018166, 37.661400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283360, 33.035057, 37.790009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364998, 32.676033, 37.633686>,  <32.413982, 32.460617, 37.539894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364998, 32.676033, 37.633686>,  <32.283360, 33.035057, 37.790009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364998, 32.676033, 37.633686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184774, -0.427352, 0.885002,
		-0.961355, -0.108416, -0.253067,
		0.204097, -0.897561, -0.390805,
		32.426228, 32.406765, 37.516445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742071, 32.603115, 37.935047>,  <32.283360, 33.035057, 37.790009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742071, 32.603115, 37.935047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043549, 32.350494, 37.862289>,  <32.224434, 32.198921, 37.818634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043549, 32.350494, 37.862289>,  <31.742071, 32.603115, 37.935047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043549, 32.350494, 37.862289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229866, -0.512588, 0.827294,
		-0.615717, -0.581715, -0.531507,
		0.753694, -0.631554, -0.181893,
		32.269657, 32.161030, 37.807720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421604, 31.935717, 38.150505>,  <31.742071, 32.603115, 37.935047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421604, 31.935717, 38.150505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816603, 31.873255, 38.141895>,  <32.053600, 31.835777, 38.136730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816603, 31.873255, 38.141895>,  <31.421604, 31.935717, 38.150505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816603, 31.873255, 38.141895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034853, -0.349449, 0.936307,
		-0.153730, -0.923851, -0.350522,
		0.987498, -0.156156, -0.021522,
		32.112850, 31.826408, 38.135437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501110, 31.309765, 38.507069>,  <31.421604, 31.935717, 38.150505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501110, 31.309765, 38.507069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861700, 31.482714, 38.499069>,  <32.078053, 31.586483, 38.494270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861700, 31.482714, 38.499069>,  <31.501110, 31.309765, 38.507069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861700, 31.482714, 38.499069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188368, -0.350297, 0.917502,
		0.389696, -0.830871, -0.397229,
		0.901473, 0.432372, -0.020000,
		32.132141, 31.612425, 38.493069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957993, 30.778133, 38.743553>,  <31.501110, 31.309765, 38.507069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957993, 30.778133, 38.743553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117821, 31.141846, 38.790115>,  <32.213718, 31.360073, 38.818050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117821, 31.141846, 38.790115>,  <31.957993, 30.778133, 38.743553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117821, 31.141846, 38.790115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334868, -0.262986, 0.904822,
		0.853351, -0.322560, -0.409570,
		0.399570, 0.909282, 0.116404,
		32.237694, 31.414631, 38.825035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603363, 30.634148, 39.146664>,  <31.957993, 30.778133, 38.743553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603363, 30.634148, 39.146664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507240, 31.015831, 39.217926>,  <32.449566, 31.244841, 39.260681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507240, 31.015831, 39.217926>,  <32.603363, 30.634148, 39.146664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507240, 31.015831, 39.217926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269903, -0.110611, 0.956513,
		0.932419, 0.277942, -0.230963,
		-0.240308, 0.954208, 0.178153,
		32.435146, 31.302094, 39.271374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156261, 30.750431, 39.456055>,  <32.603363, 30.634148, 39.146664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156261, 30.750431, 39.456055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876911, 31.019758, 39.553150>,  <32.709301, 31.181355, 39.611408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876911, 31.019758, 39.553150>,  <33.156261, 30.750431, 39.456055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876911, 31.019758, 39.553150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283794, -0.050846, 0.957536,
		0.657068, 0.737603, -0.155574,
		-0.698372, 0.673317, 0.242737,
		32.667400, 31.221754, 39.625973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489468, 31.335993, 39.791328>,  <33.156261, 30.750431, 39.456055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489468, 31.335993, 39.791328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105679, 31.362310, 39.900940>,  <32.875404, 31.378101, 39.966705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105679, 31.362310, 39.900940>,  <33.489468, 31.335993, 39.791328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105679, 31.362310, 39.900940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278515, 0.072969, 0.957656,
		0.043014, 0.995162, -0.088337,
		-0.959468, 0.065796, 0.274029,
		32.817837, 31.382050, 39.983150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573570, 31.740316, 40.373814>,  <33.489468, 31.335993, 39.791328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573570, 31.740316, 40.373814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211319, 31.574121, 40.407776>,  <32.993969, 31.474405, 40.428154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211319, 31.574121, 40.407776>,  <33.573570, 31.740316, 40.373814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211319, 31.574121, 40.407776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117486, -0.053429, 0.991636,
		-0.407473, 0.908029, 0.097201,
		-0.905628, -0.415485, 0.084910,
		32.939629, 31.449476, 40.433250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157513, 32.160858, 40.973904>,  <33.573570, 31.740316, 40.373814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157513, 32.160858, 40.973904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983894, 31.801580, 40.946030>,  <32.879723, 31.586014, 40.929306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983894, 31.801580, 40.946030>,  <33.157513, 32.160858, 40.973904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983894, 31.801580, 40.946030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040393, -0.057871, 0.997506,
		-0.899984, 0.435780, -0.011162,
		-0.434048, -0.898191, -0.069686,
		32.853680, 31.532124, 40.925125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532753, 32.144897, 41.389542>,  <33.157513, 32.160858, 40.973904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532753, 32.144897, 41.389542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662567, 31.770784, 41.333084>,  <32.740456, 31.546316, 41.299210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662567, 31.770784, 41.333084>,  <32.532753, 32.144897, 41.389542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662567, 31.770784, 41.333084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064022, -0.170603, 0.983258,
		-0.943704, -0.310066, -0.115245,
		0.324536, -0.935283, -0.141148,
		32.759930, 31.490200, 41.290741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167774, 31.774773, 41.899078>,  <32.532753, 32.144897, 41.389542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167774, 31.774773, 41.899078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442196, 31.504553, 41.791035>,  <32.606850, 31.342421, 41.726208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442196, 31.504553, 41.791035>,  <32.167774, 31.774773, 41.899078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442196, 31.504553, 41.791035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057138, -0.420145, 0.905656,
		-0.725304, -0.605895, -0.326842,
		0.686053, -0.675552, -0.270113,
		32.648010, 31.301888, 41.709999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777746, 31.062588, 41.966164>,  <32.167774, 31.774773, 41.899078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777746, 31.062588, 41.966164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173183, 31.006884, 41.989098>,  <32.410446, 30.973461, 42.002857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173183, 31.006884, 41.989098>,  <31.777746, 31.062588, 41.966164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173183, 31.006884, 41.989098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112903, -0.433342, 0.894130,
		-0.099667, -0.890406, -0.444122,
		0.988595, -0.139258, 0.057340,
		32.469761, 30.965107, 42.006298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856846, 30.442739, 42.290882>,  <31.777746, 31.062588, 41.966164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856846, 30.442739, 42.290882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224819, 30.597958, 42.313297>,  <32.445602, 30.691090, 42.326748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224819, 30.597958, 42.313297>,  <31.856846, 30.442739, 42.290882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224819, 30.597958, 42.313297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126953, -0.430054, 0.893832,
		0.370950, -0.815152, -0.444885,
		0.919934, 0.388047, 0.056043,
		32.500801, 30.714371, 42.330109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285599, 29.939306, 42.428738>,  <31.856846, 30.442739, 42.290882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285599, 29.939306, 42.428738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475033, 30.266031, 42.560513>,  <32.588696, 30.462067, 42.639580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475033, 30.266031, 42.560513>,  <32.285599, 29.939306, 42.428738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475033, 30.266031, 42.560513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087206, -0.415695, 0.905314,
		0.876419, -0.400016, -0.268099,
		0.473587, 0.816814, 0.329439,
		32.617107, 30.511076, 42.659344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876068, 29.757675, 42.722836>,  <32.285599, 29.939306, 42.428738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876068, 29.757675, 42.722836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786785, 30.109556, 42.890789>,  <32.733215, 30.320684, 42.991562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786785, 30.109556, 42.890789>,  <32.876068, 29.757675, 42.722836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786785, 30.109556, 42.890789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057123, -0.418207, 0.906554,
		0.973095, 0.226339, 0.043097,
		-0.223212, 0.879701, 0.419885,
		32.719822, 30.373466, 43.016754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302944, 29.825611, 43.325626>,  <32.876068, 29.757675, 42.722836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302944, 29.825611, 43.325626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993507, 30.072384, 43.383526>,  <32.807846, 30.220448, 43.418266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993507, 30.072384, 43.383526>,  <33.302944, 29.825611, 43.325626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993507, 30.072384, 43.383526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016923, -0.248457, 0.968495,
		0.633460, 0.746768, 0.202644,
		-0.773590, 0.616933, 0.144750,
		32.761429, 30.257463, 43.426952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080647, 29.800468, 43.642811>,  <33.302944, 29.825611, 43.325626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080647, 29.800468, 43.642811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443249, 29.678158, 43.759262>,  <34.660809, 29.604771, 43.829132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443249, 29.678158, 43.759262>,  <34.080647, 29.800468, 43.642811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443249, 29.678158, 43.759262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366210, 0.226324, -0.902590,
		0.210103, 0.924812, 0.317141,
		0.906503, -0.305777, 0.291124,
		34.715199, 29.586424, 43.846600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578487, 30.201410, 43.215794>,  <34.080647, 29.800468, 43.642811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578487, 30.201410, 43.215794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804302, 29.915640, 43.381153>,  <34.939793, 29.744177, 43.480370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804302, 29.915640, 43.381153>,  <34.578487, 30.201410, 43.215794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804302, 29.915640, 43.381153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630155, 0.049568, -0.774885,
		0.533107, 0.697954, 0.478182,
		0.564537, -0.714426, 0.413394,
		34.973663, 29.701313, 43.505173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168110, 30.497004, 43.268139>,  <34.578487, 30.201410, 43.215794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168110, 30.497004, 43.268139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223389, 30.100924, 43.276192>,  <35.256557, 29.863276, 43.281025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223389, 30.100924, 43.276192>,  <35.168110, 30.497004, 43.268139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223389, 30.100924, 43.276192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727626, 0.087719, -0.680342,
		0.671909, 0.108670, 0.732618,
		0.138197, -0.990200, 0.020132,
		35.264847, 29.803864, 43.282230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880566, 30.424994, 43.204346>,  <35.168110, 30.497004, 43.268139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880566, 30.424994, 43.204346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730446, 30.082338, 43.062740>,  <35.640373, 29.876745, 42.977779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730446, 30.082338, 43.062740>,  <35.880566, 30.424994, 43.204346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730446, 30.082338, 43.062740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683569, 0.002154, -0.729882,
		0.626009, -0.515911, 0.584764,
		-0.375295, -0.856640, -0.354009,
		35.617859, 29.825346, 42.956539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495411, 30.089191, 42.913029>,  <35.880566, 30.424994, 43.204346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495411, 30.089191, 42.913029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175926, 29.898010, 42.766811>,  <35.984234, 29.783302, 42.679081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175926, 29.898010, 42.766811>,  <36.495411, 30.089191, 42.913029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175926, 29.898010, 42.766811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432099, -0.032811, -0.901229,
		0.418752, -0.877772, 0.232730,
		-0.798710, -0.477954, -0.365544,
		35.936314, 29.754623, 42.657146>
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
