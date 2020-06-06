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
	<24.171795, 34.605095, 34.887367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.311779, 34.949554, 35.034851>,  <24.395769, 35.156231, 35.123341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.311779, 34.949554, 35.034851>,  <24.171795, 34.605095, 34.887367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.311779, 34.949554, 35.034851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862132, -0.450036, 0.232802,
		0.366411, 0.236406, -0.899920,
		0.349960, 0.861151, 0.368711,
		24.416767, 35.207901, 35.145466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.850697, 34.846226, 34.583763>,  <24.171795, 34.605095, 34.887367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.850697, 34.846226, 34.583763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.823818, 34.969917, 34.963207>,  <24.807692, 35.044132, 35.190876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.823818, 34.969917, 34.963207>,  <24.850697, 34.846226, 34.583763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.823818, 34.969917, 34.963207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948848, -0.274170, 0.156584,
		0.308501, 0.910610, -0.274984,
		-0.067194, 0.309224, 0.948612,
		24.803659, 35.062683, 35.247791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.146187, 35.503380, 34.647385>,  <24.850697, 34.846226, 34.583763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.146187, 35.503380, 34.647385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164396, 35.293343, 34.987316>,  <25.175322, 35.167320, 35.191273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164396, 35.293343, 34.987316>,  <25.146187, 35.503380, 34.647385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.164396, 35.293343, 34.987316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934035, -0.279320, -0.222619,
		0.354269, 0.803902, 0.477739,
		0.045522, -0.525092, 0.849827,
		25.178053, 35.135815, 35.242264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721939, 35.775032, 34.926743>,  <25.146187, 35.503380, 34.647385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721939, 35.775032, 34.926743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.622847, 35.397633, 35.014774>,  <25.563391, 35.171192, 35.067593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.622847, 35.397633, 35.014774>,  <25.721939, 35.775032, 34.926743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.622847, 35.397633, 35.014774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889584, -0.311503, -0.334075,
		0.383756, 0.113021, 0.916492,
		-0.247733, -0.943500, 0.220083,
		25.548527, 35.114582, 35.080799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202559, 35.440819, 35.501736>,  <25.721939, 35.775032, 34.926743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.202559, 35.440819, 35.501736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.043108, 35.171173, 35.253006>,  <25.947437, 35.009384, 35.103767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.043108, 35.171173, 35.253006>,  <26.202559, 35.440819, 35.501736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.043108, 35.171173, 35.253006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915064, -0.247048, -0.318786,
		0.061277, -0.696089, 0.715336,
		-0.398626, -0.674113, -0.621828,
		25.923521, 34.968941, 35.066456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506693, 34.799480, 35.537075>,  <26.202559, 35.440819, 35.501736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.506693, 34.799480, 35.537075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397587, 34.885811, 35.162052>,  <26.332123, 34.937607, 34.937038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397587, 34.885811, 35.162052>,  <26.506693, 34.799480, 35.537075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397587, 34.885811, 35.162052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948177, -0.104778, -0.299971,
		-0.162977, -0.970794, -0.176060,
		-0.272763, 0.215824, -0.937561,
		26.315758, 34.950558, 34.880783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599628, 34.023281, 35.208370>,  <26.506693, 34.799480, 35.537075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599628, 34.023281, 35.208370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586720, 34.327168, 34.948589>,  <26.578974, 34.509499, 34.792721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586720, 34.327168, 34.948589>,  <26.599628, 34.023281, 35.208370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586720, 34.327168, 34.948589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824459, -0.347089, -0.446985,
		-0.565000, -0.549875, -0.615152,
		-0.032274, 0.759715, -0.649455,
		26.577038, 34.555080, 34.753754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.501537, 33.766937, 34.621658>,  <26.599628, 34.023281, 35.208370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.501537, 33.766937, 34.621658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685867, 34.118416, 34.571812>,  <26.796465, 34.329304, 34.541904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685867, 34.118416, 34.571812>,  <26.501537, 33.766937, 34.621658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685867, 34.118416, 34.571812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652147, -0.430510, -0.623991,
		-0.601948, 0.206282, -0.771431,
		0.460827, 0.878697, -0.124619,
		26.824116, 34.382027, 34.534428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634865, 33.884026, 33.860596>,  <26.501537, 33.766937, 34.621658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634865, 33.884026, 33.860596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902269, 34.125313, 34.034595>,  <27.062712, 34.270084, 34.138996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902269, 34.125313, 34.034595>,  <26.634865, 33.884026, 33.860596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902269, 34.125313, 34.034595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691466, -0.288810, -0.662166,
		-0.273798, 0.743451, -0.610176,
		0.668513, 0.603216, 0.434996,
		27.102823, 34.306278, 34.165092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134100, 34.161087, 33.388706>,  <26.634865, 33.884026, 33.860596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134100, 34.161087, 33.388706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369518, 34.289421, 33.685539>,  <27.510769, 34.366421, 33.863640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369518, 34.289421, 33.685539>,  <27.134100, 34.161087, 33.388706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369518, 34.289421, 33.685539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808184, -0.257676, -0.529568,
		0.021313, 0.911411, -0.410946,
		0.588545, 0.320833, 0.742079,
		27.546082, 34.385670, 33.908161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585371, 34.731937, 33.095913>,  <27.134100, 34.161087, 33.388706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585371, 34.731937, 33.095913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751328, 34.552933, 33.412796>,  <27.850903, 34.445530, 33.602928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751328, 34.552933, 33.412796>,  <27.585371, 34.731937, 33.095913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751328, 34.552933, 33.412796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804794, -0.225690, -0.548972,
		0.424465, 0.865331, 0.266516,
		0.414892, -0.447510, 0.792211,
		27.875795, 34.418678, 33.650459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315060, 34.880341, 33.177059>,  <27.585371, 34.731937, 33.095913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315060, 34.880341, 33.177059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.216457, 34.523811, 33.329258>,  <28.157295, 34.309895, 33.420578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.216457, 34.523811, 33.329258>,  <28.315060, 34.880341, 33.177059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216457, 34.523811, 33.329258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683729, -0.438195, -0.583524,
		0.686840, 0.116316, 0.717441,
		-0.246506, -0.891322, 0.380498,
		28.142506, 34.256416, 33.443409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839468, 34.546181, 33.646446>,  <28.315060, 34.880341, 33.177059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839468, 34.546181, 33.646446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628765, 34.327545, 33.386055>,  <28.502344, 34.196365, 33.229820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628765, 34.327545, 33.386055>,  <28.839468, 34.546181, 33.646446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628765, 34.327545, 33.386055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848565, -0.293401, -0.440288,
		0.049659, -0.784320, 0.618366,
		-0.526756, -0.546588, -0.650976,
		28.470737, 34.163570, 33.190762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011919, 33.937973, 33.664471>,  <28.839468, 34.546181, 33.646446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011919, 33.937973, 33.664471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889826, 34.000526, 33.288731>,  <28.816570, 34.038059, 33.063286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889826, 34.000526, 33.288731>,  <29.011919, 33.937973, 33.664471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889826, 34.000526, 33.288731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909146, -0.245652, -0.336315,
		-0.283347, -0.956661, -0.067194,
		-0.305233, 0.156383, -0.939350,
		28.798256, 34.047440, 33.006927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597574, 33.402370, 33.544548>,  <29.011919, 33.937973, 33.664471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597574, 33.402370, 33.544548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568314, 33.212002, 33.193970>,  <28.550758, 33.097782, 32.983624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568314, 33.212002, 33.193970>,  <28.597574, 33.402370, 33.544548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568314, 33.212002, 33.193970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907975, -0.331777, 0.255940,
		-0.412590, 0.814510, -0.407853,
		-0.073150, -0.475918, -0.876442,
		28.546368, 33.069225, 32.931038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608917, 33.533001, 34.313972>,  <28.597574, 33.402370, 33.544548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608917, 33.533001, 34.313972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.535940, 33.821167, 34.046326>,  <28.492153, 33.994068, 33.885738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.535940, 33.821167, 34.046326>,  <28.608917, 33.533001, 34.313972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535940, 33.821167, 34.046326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634591, 0.433534, 0.639798,
		0.751005, 0.541343, 0.378073,
		-0.182442, 0.720414, -0.669118,
		28.481207, 34.037292, 33.845589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629829, 34.141499, 34.665806>,  <28.608917, 33.533001, 34.313972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629829, 34.141499, 34.665806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375723, 34.215569, 34.365898>,  <28.223259, 34.260010, 34.185955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375723, 34.215569, 34.365898>,  <28.629829, 34.141499, 34.665806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375723, 34.215569, 34.365898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667707, 0.356157, 0.653697,
		0.388081, 0.915895, -0.102613,
		-0.635264, 0.185172, -0.749767,
		28.185144, 34.271122, 34.140968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142361, 34.567192, 34.998474>,  <28.629829, 34.141499, 34.665806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142361, 34.567192, 34.998474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968979, 34.516872, 34.641533>,  <27.864950, 34.486679, 34.427368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968979, 34.516872, 34.641533>,  <28.142361, 34.567192, 34.998474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968979, 34.516872, 34.641533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856257, 0.366214, 0.364296,
		0.280962, 0.921988, -0.266456,
		-0.433456, -0.125801, -0.892351,
		27.838942, 34.479134, 34.373829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838350, 35.200268, 34.825871>,  <28.142361, 34.567192, 34.998474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838350, 35.200268, 34.825871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616091, 34.929001, 34.633480>,  <27.482735, 34.766239, 34.518044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616091, 34.929001, 34.633480>,  <27.838350, 35.200268, 34.825871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616091, 34.929001, 34.633480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819607, 0.543952, 0.179889,
		0.139634, 0.494170, -0.858078,
		-0.555649, -0.678169, -0.480979,
		27.449396, 34.725552, 34.489185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334293, 35.584343, 34.438709>,  <27.838350, 35.200268, 34.825871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334293, 35.584343, 34.438709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176445, 35.218136, 34.469936>,  <27.081736, 34.998409, 34.488674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176445, 35.218136, 34.469936>,  <27.334293, 35.584343, 34.438709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176445, 35.218136, 34.469936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911928, 0.400640, 0.088736,
		-0.112518, -0.036178, -0.992991,
		-0.394622, -0.915521, 0.078071,
		27.058058, 34.943481, 34.493359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879721, 35.671257, 33.930092>,  <27.334293, 35.584343, 34.438709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.879721, 35.671257, 33.930092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612597, 35.791420, 34.202499>,  <26.452322, 35.863518, 34.365944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612597, 35.791420, 34.202499>,  <26.879721, 35.671257, 33.930092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.612597, 35.791420, 34.202499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138851, 0.949156, -0.282531,
		-0.731265, -0.094118, -0.675569,
		-0.667812, 0.300408, 0.681016,
		26.412252, 35.881542, 34.406803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.521135, 36.198380, 33.646553>,  <26.879721, 35.671257, 33.930092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.521135, 36.198380, 33.646553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471466, 36.232174, 34.042015>,  <26.441664, 36.252449, 34.279293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471466, 36.232174, 34.042015>,  <26.521135, 36.198380, 33.646553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471466, 36.232174, 34.042015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177150, 0.982249, -0.061685,
		-0.976319, 0.167481, -0.136935,
		-0.124173, 0.084482, 0.988658,
		26.434214, 36.257519, 34.338612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.118454, 36.837814, 33.761532>,  <26.521135, 36.198380, 33.646553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.118454, 36.837814, 33.761532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301743, 36.751541, 34.106441>,  <26.411715, 36.699780, 34.313389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301743, 36.751541, 34.106441>,  <26.118454, 36.837814, 33.761532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301743, 36.751541, 34.106441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132111, 0.975864, 0.173886,
		-0.878966, 0.034238, 0.475654,
		0.458220, -0.215679, 0.862274,
		26.439209, 36.686836, 34.365124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.945982, 37.513416, 34.119396>,  <26.118454, 36.837814, 33.761532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.945982, 37.513416, 34.119396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255239, 37.318993, 34.282368>,  <26.440794, 37.202339, 34.380150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255239, 37.318993, 34.282368>,  <25.945982, 37.513416, 34.119396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255239, 37.318993, 34.282368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422966, 0.873829, 0.239839,
		-0.472599, -0.013101, 0.881180,
		0.773143, -0.486057, 0.407429,
		26.487183, 37.173176, 34.404598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362249, 37.981689, 33.667835>,  <25.945982, 37.513416, 34.119396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362249, 37.981689, 33.667835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663647, 38.230431, 33.582466>,  <26.844484, 38.379673, 33.531242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663647, 38.230431, 33.582466>,  <26.362249, 37.981689, 33.667835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663647, 38.230431, 33.582466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647085, -0.644011, 0.408082,
		0.116316, -0.445592, -0.887648,
		0.753493, 0.621850, -0.213427,
		26.889694, 38.416985, 33.518436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.959772, 37.525776, 33.409466>,  <26.362249, 37.981689, 33.667835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.959772, 37.525776, 33.409466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064384, 37.857079, 33.607693>,  <27.127151, 38.055862, 33.726627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064384, 37.857079, 33.607693>,  <26.959772, 37.525776, 33.409466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064384, 37.857079, 33.607693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586040, -0.544227, 0.600312,
		0.766916, 0.133424, -0.627725,
		0.261529, 0.828260, 0.495568,
		27.142843, 38.105556, 33.756363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682140, 37.476322, 33.503468>,  <26.959772, 37.525776, 33.409466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682140, 37.476322, 33.503468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588732, 37.724800, 33.802689>,  <27.532686, 37.873886, 33.982224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588732, 37.724800, 33.802689>,  <27.682140, 37.476322, 33.503468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.588732, 37.724800, 33.802689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617217, -0.499763, 0.607684,
		0.751339, 0.603621, -0.266704,
		-0.233523, 0.621191, 0.748057,
		27.518675, 37.911156, 34.027107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265970, 37.790104, 33.841114>,  <27.682140, 37.476322, 33.503468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265970, 37.790104, 33.841114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.983208, 37.782455, 34.123936>,  <27.813551, 37.777866, 34.293629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.983208, 37.782455, 34.123936>,  <28.265970, 37.790104, 33.841114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983208, 37.782455, 34.123936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648321, -0.417168, 0.636907,
		0.282782, 0.908628, 0.307294,
		-0.706904, -0.019119, 0.707051,
		27.771137, 37.776718, 34.336052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507933, 38.396919, 34.211994>,  <28.265970, 37.790104, 33.841114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507933, 38.396919, 34.211994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578836, 38.003941, 34.235229>,  <28.621378, 37.768154, 34.249172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578836, 38.003941, 34.235229>,  <28.507933, 38.396919, 34.211994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578836, 38.003941, 34.235229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970304, 0.164587, -0.177259,
		0.164587, 0.087784, 0.982448,
		0.177259, -0.982448, 0.058088,
		28.632013, 37.709206, 34.252655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143482, 38.395401, 34.554188>,  <28.507933, 38.396919, 34.211994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143482, 38.395401, 34.554188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084721, 38.021336, 34.425259>,  <29.049463, 37.796898, 34.347900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084721, 38.021336, 34.425259>,  <29.143482, 38.395401, 34.554188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084721, 38.021336, 34.425259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981900, -0.098489, -0.161776,
		0.119542, -0.340251, 0.932705,
		-0.146906, -0.935162, -0.322319,
		29.040649, 37.740788, 34.328564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745922, 37.850224, 34.826180>,  <29.143482, 38.395401, 34.554188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745922, 37.850224, 34.826180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580402, 37.781467, 34.468582>,  <29.481091, 37.740215, 34.254025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580402, 37.781467, 34.468582>,  <29.745922, 37.850224, 34.826180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580402, 37.781467, 34.468582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910367, -0.079122, -0.406167,
		-0.000920, -0.981934, 0.189221,
		-0.413801, -0.171887, -0.893993,
		29.456263, 37.729900, 34.200386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898829, 37.174557, 34.389458>,  <29.745922, 37.850224, 34.826180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898829, 37.174557, 34.389458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819996, 37.479050, 34.142334>,  <29.772696, 37.661747, 33.994061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819996, 37.479050, 34.142334>,  <29.898829, 37.174557, 34.389458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819996, 37.479050, 34.142334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910057, -0.092327, -0.404070,
		-0.364631, -0.641874, -0.674568,
		-0.197081, 0.761232, -0.617807,
		29.760872, 37.707420, 33.956993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946175, 37.046188, 33.546936>,  <29.898829, 37.174557, 34.389458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946175, 37.046188, 33.546936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027554, 37.422417, 33.655701>,  <30.076380, 37.648155, 33.720959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027554, 37.422417, 33.655701>,  <29.946175, 37.046188, 33.546936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027554, 37.422417, 33.655701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950512, -0.123134, -0.285244,
		-0.234810, 0.316489, -0.919075,
		0.203446, 0.940570, 0.271913,
		30.088587, 37.704586, 33.737274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339785, 37.224247, 32.948696>,  <29.946175, 37.046188, 33.546936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339785, 37.224247, 32.948696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394861, 37.470516, 33.259048>,  <30.427908, 37.618279, 33.445259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394861, 37.470516, 33.259048>,  <30.339785, 37.224247, 32.948696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394861, 37.470516, 33.259048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986430, -0.014519, -0.163536,
		-0.089420, 0.787870, -0.609316,
		0.137692, 0.615671, 0.775880,
		30.436169, 37.655216, 33.491814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764650, 37.694450, 32.650005>,  <30.339785, 37.224247, 32.948696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764650, 37.694450, 32.650005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816580, 37.690140, 33.046597>,  <30.847736, 37.687553, 33.284550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816580, 37.690140, 33.046597>,  <30.764650, 37.694450, 32.650005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816580, 37.690140, 33.046597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990055, -0.053249, -0.130215,
		0.054198, 0.998523, 0.003752,
		0.129823, -0.010772, 0.991479,
		30.855526, 37.686909, 33.344040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280277, 38.181656, 32.920128>,  <30.764650, 37.694450, 32.650005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280277, 38.181656, 32.920128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283249, 37.874077, 33.175838>,  <31.285032, 37.689529, 33.329266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283249, 37.874077, 33.175838>,  <31.280277, 38.181656, 32.920128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283249, 37.874077, 33.175838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929655, -0.230182, -0.287677,
		0.368357, 0.596439, 0.713143,
		0.007429, -0.768945, 0.639272,
		31.285479, 37.643394, 33.367619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223690, 38.895287, 32.868454>,  <31.280277, 38.181656, 32.920128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223690, 38.895287, 32.868454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406521, 39.237553, 32.771355>,  <31.516220, 39.442913, 32.713097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406521, 39.237553, 32.771355>,  <31.223690, 38.895287, 32.868454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406521, 39.237553, 32.771355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822961, 0.303342, -0.480333,
		-0.337367, 0.419319, 0.842826,
		0.457077, 0.855661, -0.242745,
		31.543644, 39.494251, 32.698532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815952, 39.510891, 33.018772>,  <31.223690, 38.895287, 32.868454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815952, 39.510891, 33.018772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055607, 39.586510, 32.707569>,  <31.199400, 39.631882, 32.520847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055607, 39.586510, 32.707569>,  <30.815952, 39.510891, 33.018772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055607, 39.586510, 32.707569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792274, 0.280149, -0.542051,
		0.115484, 0.941157, 0.317627,
		0.599138, 0.189049, -0.778007,
		31.235348, 39.643223, 32.474167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695892, 40.234440, 32.779518>,  <30.815952, 39.510891, 33.018772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695892, 40.234440, 32.779518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866375, 40.042408, 32.472828>,  <30.968664, 39.927189, 32.288815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866375, 40.042408, 32.472828>,  <30.695892, 40.234440, 32.779518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866375, 40.042408, 32.472828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812088, 0.170378, -0.558107,
		0.398572, 0.860517, -0.317254,
		0.426208, -0.480084, -0.766724,
		30.994238, 39.898384, 32.242809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581936, 40.617180, 32.149261>,  <30.695892, 40.234440, 32.779518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581936, 40.617180, 32.149261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657597, 40.242199, 32.032360>,  <30.702993, 40.017212, 31.962219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657597, 40.242199, 32.032360>,  <30.581936, 40.617180, 32.149261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657597, 40.242199, 32.032360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715600, 0.072206, -0.694768,
		0.672412, 0.340552, -0.657181,
		0.189153, -0.937449, -0.292251,
		30.714342, 39.960964, 31.944685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936159, 40.588852, 31.700140>,  <30.581936, 40.617180, 32.149261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936159, 40.588852, 31.700140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942999, 40.359501, 31.372496>,  <29.947102, 40.221889, 31.175909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942999, 40.359501, 31.372496>,  <29.936159, 40.588852, 31.700140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942999, 40.359501, 31.372496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888282, -0.367354, 0.275690,
		-0.458979, -0.732316, 0.503042,
		0.017098, -0.573380, -0.819111,
		29.948128, 40.187489, 31.126762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984503, 39.840725, 31.747871>,  <29.936159, 40.588852, 31.700140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984503, 39.840725, 31.747871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172955, 39.936417, 31.408270>,  <30.286026, 39.993832, 31.204510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172955, 39.936417, 31.408270>,  <29.984503, 39.840725, 31.747871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172955, 39.936417, 31.408270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842346, -0.407602, 0.352581,
		-0.261707, -0.881265, -0.393549,
		0.471129, 0.239231, -0.849003,
		30.314293, 40.008186, 31.153568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369728, 39.183136, 31.431934>,  <29.984503, 39.840725, 31.747871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369728, 39.183136, 31.431934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556017, 39.528774, 31.355572>,  <30.667791, 39.736156, 31.309753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556017, 39.528774, 31.355572>,  <30.369728, 39.183136, 31.431934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556017, 39.528774, 31.355572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815954, -0.335812, 0.470583,
		0.342519, -0.374932, -0.861456,
		0.465724, 0.864093, -0.190906,
		30.695734, 39.788002, 31.298300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961187, 39.123322, 31.108894>,  <30.369728, 39.183136, 31.431934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961187, 39.123322, 31.108894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000954, 39.447853, 31.339325>,  <31.024813, 39.642570, 31.477583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000954, 39.447853, 31.339325>,  <30.961187, 39.123322, 31.108894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000954, 39.447853, 31.339325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845772, -0.373893, 0.380623,
		0.524201, 0.449391, -0.723368,
		0.099414, 0.811327, 0.576077,
		31.030777, 39.691250, 31.512148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645012, 39.270660, 31.255760>,  <30.961187, 39.123322, 31.108894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645012, 39.270660, 31.255760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462519, 39.461128, 31.556456>,  <31.353024, 39.575409, 31.736874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462519, 39.461128, 31.556456>,  <31.645012, 39.270660, 31.255760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462519, 39.461128, 31.556456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818444, -0.107056, 0.564526,
		0.349289, 0.872812, -0.340877,
		-0.456232, 0.476171, 0.751741,
		31.325649, 39.603981, 31.781979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025085, 39.775661, 31.493204>,  <31.645012, 39.270660, 31.255760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025085, 39.775661, 31.493204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783390, 39.711010, 31.805300>,  <31.638372, 39.672218, 31.992558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783390, 39.711010, 31.805300>,  <32.025085, 39.775661, 31.493204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783390, 39.711010, 31.805300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781988, 0.067659, 0.619610,
		-0.152935, 0.984530, 0.085507,
		-0.604239, -0.161625, 0.780239,
		31.602118, 39.662521, 32.039371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916830, 40.327400, 31.898674>,  <32.025085, 39.775661, 31.493204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916830, 40.327400, 31.898674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887865, 40.005135, 32.133846>,  <31.870485, 39.811775, 32.274948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887865, 40.005135, 32.133846>,  <31.916830, 40.327400, 31.898674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887865, 40.005135, 32.133846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783487, 0.318819, 0.533388,
		-0.617175, 0.499260, 0.608141,
		-0.072412, -0.805664, 0.587931,
		31.866142, 39.763435, 32.310226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176464, 40.507557, 32.490337>,  <31.916830, 40.327400, 31.898674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176464, 40.507557, 32.490337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185062, 40.120956, 32.592644>,  <32.190220, 39.888996, 32.654026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185062, 40.120956, 32.592644>,  <32.176464, 40.507557, 32.490337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185062, 40.120956, 32.592644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884725, 0.137532, 0.445362,
		-0.465618, 0.216706, 0.858043,
		0.021496, -0.966501, 0.255763,
		32.191509, 39.831005, 32.669373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149563, 40.454140, 33.174561>,  <32.176464, 40.507557, 32.490337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149563, 40.454140, 33.174561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347286, 40.137905, 33.029984>,  <32.465919, 39.948166, 32.943237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347286, 40.137905, 33.029984>,  <32.149563, 40.454140, 33.174561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347286, 40.137905, 33.029984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766417, 0.200144, 0.610366,
		-0.410205, -0.578722, 0.704849,
		0.494304, -0.790584, -0.361443,
		32.495579, 39.900730, 32.921551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392006, 39.934040, 33.734097>,  <32.149563, 40.454140, 33.174561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392006, 39.934040, 33.734097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634987, 39.971981, 33.418629>,  <32.780773, 39.994747, 33.229347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634987, 39.971981, 33.418629>,  <32.392006, 39.934040, 33.734097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634987, 39.971981, 33.418629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759949, 0.219652, 0.611744,
		0.231266, -0.970955, 0.061336,
		0.607448, 0.094863, -0.788675,
		32.817223, 40.000439, 33.182026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012920, 39.466259, 33.820118>,  <32.392006, 39.934040, 33.734097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012920, 39.466259, 33.820118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123108, 39.758858, 33.570629>,  <33.189220, 39.934418, 33.420937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123108, 39.758858, 33.570629>,  <33.012920, 39.466259, 33.820118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123108, 39.758858, 33.570629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700008, 0.292058, 0.651683,
		0.658867, -0.616129, -0.431601,
		0.275468, 0.731497, -0.623722,
		33.205750, 39.978306, 33.383511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728043, 39.522762, 33.938457>,  <33.012920, 39.466259, 33.820118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728043, 39.522762, 33.938457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663727, 39.862202, 33.736855>,  <33.625137, 40.065865, 33.615891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663727, 39.862202, 33.736855>,  <33.728043, 39.522762, 33.938457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663727, 39.862202, 33.736855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794653, 0.414177, 0.443829,
		0.585382, -0.329148, -0.740939,
		-0.160794, 0.848598, -0.504010,
		33.615490, 40.116779, 33.585651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325169, 39.718410, 33.586758>,  <33.728043, 39.522762, 33.938457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325169, 39.718410, 33.586758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104145, 40.046066, 33.648319>,  <33.971531, 40.242661, 33.685257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104145, 40.046066, 33.648319>,  <34.325169, 39.718410, 33.586758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104145, 40.046066, 33.648319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756968, 0.415925, 0.503991,
		0.348829, 0.394982, -0.849887,
		-0.552556, 0.819144, 0.153902,
		33.938377, 40.291809, 33.694489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743252, 40.294846, 33.633774>,  <34.325169, 39.718410, 33.586758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743252, 40.294846, 33.633774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415115, 40.448109, 33.803589>,  <34.218235, 40.540066, 33.905479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415115, 40.448109, 33.803589>,  <34.743252, 40.294846, 33.633774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415115, 40.448109, 33.803589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570105, 0.489544, 0.659793,
		0.044977, 0.783285, -0.620033,
		-0.820340, 0.383159, 0.424537,
		34.169014, 40.563057, 33.930950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875504, 41.033047, 33.578114>,  <34.743252, 40.294846, 33.633774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875504, 41.033047, 33.578114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638618, 40.915623, 33.878277>,  <34.496487, 40.845169, 34.058376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638618, 40.915623, 33.878277>,  <34.875504, 41.033047, 33.578114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638618, 40.915623, 33.878277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584360, 0.484748, 0.650801,
		-0.554808, 0.823918, -0.115527,
		-0.592209, -0.293560, 0.750408,
		34.460957, 40.827553, 34.103397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780979, 41.601196, 34.111870>,  <34.875504, 41.033047, 33.578114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780979, 41.601196, 34.111870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703327, 41.255856, 34.298180>,  <34.656734, 41.048653, 34.409966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703327, 41.255856, 34.298180>,  <34.780979, 41.601196, 34.111870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703327, 41.255856, 34.298180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527874, 0.308263, 0.791406,
		-0.826838, 0.399507, 0.395895,
		-0.194132, -0.863347, 0.465772,
		34.645088, 40.996853, 34.437912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334381, 41.624157, 34.803547>,  <34.780979, 41.601196, 34.111870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334381, 41.624157, 34.803547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631641, 41.363087, 34.744579>,  <34.809998, 41.206444, 34.709198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631641, 41.363087, 34.744579>,  <34.334381, 41.624157, 34.803547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631641, 41.363087, 34.744579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598940, 0.550630, 0.581445,
		-0.298321, -0.520400, 0.800118,
		0.743153, -0.652679, -0.147424,
		34.854588, 41.167282, 34.700352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510468, 41.210594, 35.424339>,  <34.334381, 41.624157, 34.803547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510468, 41.210594, 35.424339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786839, 41.319847, 35.156601>,  <34.952660, 41.385399, 34.995960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786839, 41.319847, 35.156601>,  <34.510468, 41.210594, 35.424339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786839, 41.319847, 35.156601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591897, 0.317861, 0.740690,
		0.415061, -0.907946, 0.057956,
		0.690928, 0.273128, -0.669342,
		34.994118, 41.401787, 34.955799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262524, 40.535191, 35.175449>,  <34.510468, 41.210594, 35.424339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262524, 40.535191, 35.175449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278484, 40.828171, 34.903591>,  <34.288059, 41.003960, 34.740475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278484, 40.828171, 34.903591>,  <34.262524, 40.535191, 35.175449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278484, 40.828171, 34.903591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586008, -0.533778, -0.609652,
		-0.809322, 0.422607, 0.407923,
		0.039903, 0.732451, -0.679650,
		34.290455, 41.047905, 34.699696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583378, 40.653099, 34.963150>,  <34.262524, 40.535191, 35.175449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583378, 40.653099, 34.963150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810722, 40.817657, 34.678131>,  <33.947128, 40.916393, 34.507118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810722, 40.817657, 34.678131>,  <33.583378, 40.653099, 34.963150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810722, 40.817657, 34.678131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635328, -0.330844, -0.697783,
		-0.522806, 0.849292, 0.073332,
		0.568360, 0.411395, -0.712546,
		33.981232, 40.941074, 34.464367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223961, 41.211685, 34.424702>,  <33.583378, 40.653099, 34.963150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223961, 41.211685, 34.424702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526474, 41.007828, 34.260605>,  <33.707981, 40.885513, 34.162148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526474, 41.007828, 34.260605>,  <33.223961, 41.211685, 34.424702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526474, 41.007828, 34.260605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560647, -0.181655, -0.807884,
		0.337210, 0.840991, -0.423113,
		0.756284, -0.509643, -0.410243,
		33.753361, 40.854935, 34.137531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234261, 41.394466, 33.694305>,  <33.223961, 41.211685, 34.424702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234261, 41.394466, 33.694305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435055, 41.050095, 33.727306>,  <33.555531, 40.843472, 33.747105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435055, 41.050095, 33.727306>,  <33.234261, 41.394466, 33.694305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435055, 41.050095, 33.727306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593569, -0.412320, -0.691135,
		0.629038, 0.297969, -0.718001,
		0.501983, -0.860934, 0.082500,
		33.585651, 40.791813, 33.752056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122017, 41.171181, 33.099499>,  <33.234261, 41.394466, 33.694305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122017, 41.171181, 33.099499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243309, 40.845963, 33.298298>,  <33.316086, 40.650829, 33.417576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243309, 40.845963, 33.298298>,  <33.122017, 41.171181, 33.099499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243309, 40.845963, 33.298298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393790, -0.581848, -0.711606,
		0.867745, 0.020069, -0.496604,
		0.303229, -0.813050, 0.496993,
		33.334278, 40.602047, 33.447395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463810, 40.834816, 32.476471>,  <33.122017, 41.171181, 33.099499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463810, 40.834816, 32.476471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393219, 40.565166, 32.763359>,  <33.350864, 40.403378, 32.935493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393219, 40.565166, 32.763359>,  <33.463810, 40.834816, 32.476471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393219, 40.565166, 32.763359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426697, -0.604240, -0.672922,
		0.887009, -0.424795, -0.181010,
		-0.176480, -0.674124, 0.717225,
		33.340275, 40.362930, 32.978527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619915, 40.256516, 32.219158>,  <33.463810, 40.834816, 32.476471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619915, 40.256516, 32.219158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368202, 40.148510, 32.510662>,  <33.217175, 40.083706, 32.685566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368202, 40.148510, 32.510662>,  <33.619915, 40.256516, 32.219158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368202, 40.148510, 32.510662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477642, -0.605340, -0.636727,
		0.613073, -0.748770, 0.251962,
		-0.629285, -0.270012, 0.728762,
		33.179417, 40.067505, 32.729290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534348, 39.477825, 32.312786>,  <33.619915, 40.256516, 32.219158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534348, 39.477825, 32.312786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202099, 39.696156, 32.356876>,  <33.002750, 39.827152, 32.383331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202099, 39.696156, 32.356876>,  <33.534348, 39.477825, 32.312786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202099, 39.696156, 32.356876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497111, -0.637660, -0.588447,
		-0.250905, -0.543567, 0.800988,
		-0.830618, 0.545825, 0.110222,
		32.952915, 39.859901, 32.389942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812397, 39.034496, 31.819963>,  <33.534348, 39.477825, 32.312786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812397, 39.034496, 31.819963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867817, 39.212234, 31.465933>,  <33.901070, 39.318878, 31.253513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867817, 39.212234, 31.465933>,  <33.812397, 39.034496, 31.819963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867817, 39.212234, 31.465933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059680, -0.895819, -0.440394,
		-0.988556, 0.008194, -0.150632,
		0.138548, 0.444344, -0.885078,
		33.909382, 39.345539, 31.200409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368908, 38.644680, 31.407717>,  <33.812397, 39.034496, 31.819963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368908, 38.644680, 31.407717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602856, 38.840874, 31.149305>,  <33.743225, 38.958591, 30.994259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602856, 38.840874, 31.149305>,  <33.368908, 38.644680, 31.407717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602856, 38.840874, 31.149305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025511, -0.807186, -0.589746,
		-0.810728, 0.328442, -0.484609,
		0.584867, 0.490486, -0.646029,
		33.778316, 38.988018, 30.955496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992565, 38.638935, 30.757311>,  <33.368908, 38.644680, 31.407717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992565, 38.638935, 30.757311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381023, 38.701519, 30.685318>,  <33.614098, 38.739071, 30.642122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381023, 38.701519, 30.685318>,  <32.992565, 38.638935, 30.757311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381023, 38.701519, 30.685318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026414, -0.679488, -0.733211,
		-0.237018, 0.716809, -0.655749,
		0.971146, 0.156463, -0.179984,
		33.672367, 38.748459, 30.631323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125614, 38.808529, 30.077078>,  <32.992565, 38.638935, 30.757311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125614, 38.808529, 30.077078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487820, 38.663525, 30.165279>,  <33.705143, 38.576523, 30.218201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487820, 38.663525, 30.165279>,  <33.125614, 38.808529, 30.077078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487820, 38.663525, 30.165279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071299, -0.382288, -0.921288,
		0.418275, 0.849965, -0.320322,
		0.905518, -0.362513, 0.220503,
		33.759476, 38.554771, 30.231430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497471, 38.808945, 29.384184>,  <33.125614, 38.808529, 30.077078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497471, 38.808945, 29.384184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739182, 38.579792, 29.605690>,  <33.884209, 38.442299, 29.738594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739182, 38.579792, 29.605690>,  <33.497471, 38.808945, 29.384184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739182, 38.579792, 29.605690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286943, -0.491905, -0.822006,
		0.743310, 0.655619, -0.132864,
		0.604279, -0.572881, 0.553763,
		33.920464, 38.407928, 29.771818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978600, 38.874626, 28.979387>,  <33.497471, 38.808945, 29.384184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978600, 38.874626, 28.979387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038998, 38.558865, 29.217396>,  <34.075237, 38.369408, 29.360201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038998, 38.558865, 29.217396>,  <33.978600, 38.874626, 28.979387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038998, 38.558865, 29.217396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379597, -0.509473, -0.772233,
		0.912747, 0.342469, 0.222727,
		0.150993, -0.789400, 0.595020,
		34.084297, 38.322044, 29.395903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611568, 38.652927, 28.820417>,  <33.978600, 38.874626, 28.979387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611568, 38.652927, 28.820417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422466, 38.344780, 28.991547>,  <34.309006, 38.159893, 29.094225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422466, 38.344780, 28.991547>,  <34.611568, 38.652927, 28.820417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422466, 38.344780, 28.991547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385455, -0.617382, -0.685758,
		0.792417, -0.159290, 0.588814,
		-0.472757, -0.770368, 0.427825,
		34.280640, 38.113670, 29.119894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123096, 38.086605, 28.832350>,  <34.611568, 38.652927, 28.820417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123096, 38.086605, 28.832350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766441, 37.906372, 28.850075>,  <34.552448, 37.798233, 28.860710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766441, 37.906372, 28.850075>,  <35.123096, 38.086605, 28.832350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766441, 37.906372, 28.850075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296126, -0.654413, -0.695739,
		0.342488, -0.607222, 0.716926,
		-0.891634, -0.450583, 0.044314,
		34.498951, 37.771198, 28.863369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242695, 37.425385, 28.900015>,  <35.123096, 38.086605, 28.832350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242695, 37.425385, 28.900015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866810, 37.411106, 28.763973>,  <34.641281, 37.402538, 28.682348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866810, 37.411106, 28.763973>,  <35.242695, 37.425385, 28.900015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866810, 37.411106, 28.763973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261153, -0.716989, -0.646318,
		-0.220783, -0.696171, 0.683083,
		-0.939710, -0.035693, -0.340106,
		34.584896, 37.400398, 28.661942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172642, 36.738174, 28.786127>,  <35.242695, 37.425385, 28.900015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172642, 36.738174, 28.786127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871513, 36.907230, 28.584284>,  <34.690834, 37.008663, 28.463179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871513, 36.907230, 28.584284>,  <35.172642, 36.738174, 28.786127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871513, 36.907230, 28.584284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179949, -0.605265, -0.775418,
		-0.633144, -0.674558, 0.379605,
		-0.752826, 0.422642, -0.504606,
		34.645664, 37.034023, 28.432901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853989, 36.182201, 28.427500>,  <35.172642, 36.738174, 28.786127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853989, 36.182201, 28.427500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730038, 36.494621, 28.210634>,  <34.655666, 36.682072, 28.080515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730038, 36.494621, 28.210634>,  <34.853989, 36.182201, 28.427500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730038, 36.494621, 28.210634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267933, -0.475385, -0.837986,
		-0.912243, -0.404937, -0.061957,
		-0.309878, 0.781048, -0.542163,
		34.637074, 36.728935, 28.047985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389652, 35.844360, 27.870792>,  <34.853989, 36.182201, 28.427500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389652, 35.844360, 27.870792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503181, 36.202106, 27.732489>,  <34.571301, 36.416756, 27.649506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503181, 36.202106, 27.732489>,  <34.389652, 35.844360, 27.870792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503181, 36.202106, 27.732489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070425, -0.379056, -0.922690,
		-0.956287, 0.237530, -0.170571,
		0.283823, 0.894369, -0.345759,
		34.588329, 36.470417, 27.628761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091232, 35.595062, 27.253706>,  <34.389652, 35.844360, 27.870792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091232, 35.595062, 27.253706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333080, 35.913494, 27.243179>,  <34.478191, 36.104553, 27.236862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333080, 35.913494, 27.243179>,  <34.091232, 35.595062, 27.253706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333080, 35.913494, 27.243179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078020, -0.092074, -0.992691,
		-0.792681, 0.598151, -0.117780,
		0.604624, 0.796076, -0.026318,
		34.514469, 36.152317, 27.235285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884781, 35.970440, 26.759840>,  <34.091232, 35.595062, 27.253706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884781, 35.970440, 26.759840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270355, 36.075886, 26.774456>,  <34.501701, 36.139153, 26.783226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270355, 36.075886, 26.774456>,  <33.884781, 35.970440, 26.759840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270355, 36.075886, 26.774456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118040, -0.300431, -0.946471,
		-0.238525, 0.916651, -0.320714,
		0.963936, 0.263615, 0.036541,
		34.559536, 36.154972, 26.785418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001842, 36.418922, 26.111103>,  <33.884781, 35.970440, 26.759840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001842, 36.418922, 26.111103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372299, 36.324390, 26.228691>,  <34.594574, 36.267673, 26.299244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372299, 36.324390, 26.228691>,  <34.001842, 36.418922, 26.111103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372299, 36.324390, 26.228691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265505, -0.145113, -0.953126,
		0.267909, 0.960776, -0.071649,
		0.926138, -0.236328, 0.293968,
		34.650139, 36.253490, 26.316881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281395, 36.822689, 25.664186>,  <34.001842, 36.418922, 26.111103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281395, 36.822689, 25.664186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534607, 36.543274, 25.797646>,  <34.686535, 36.375626, 25.877722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534607, 36.543274, 25.797646>,  <34.281395, 36.822689, 25.664186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534607, 36.543274, 25.797646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342087, -0.134215, -0.930034,
		0.694442, 0.702876, 0.153998,
		0.633030, -0.698535, 0.333649,
		34.724514, 36.333714, 25.897739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936329, 37.078003, 25.436384>,  <34.281395, 36.822689, 25.664186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936329, 37.078003, 25.436384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987652, 36.688828, 25.513243>,  <35.018444, 36.455322, 25.559359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987652, 36.688828, 25.513243>,  <34.936329, 37.078003, 25.436384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987652, 36.688828, 25.513243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273190, -0.151577, -0.949943,
		0.953365, 0.174379, 0.246350,
		0.128309, -0.972942, 0.192147,
		35.026146, 36.396946, 25.570887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529903, 36.702652, 25.217936>,  <34.936329, 37.078003, 25.436384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529903, 36.702652, 25.217936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297291, 36.378029, 25.240505>,  <35.157722, 36.183254, 25.254047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297291, 36.378029, 25.240505>,  <35.529903, 36.702652, 25.217936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297291, 36.378029, 25.240505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241107, -0.238179, -0.940818,
		0.776971, -0.533515, 0.334183,
		-0.581535, -0.811562, 0.056424,
		35.122829, 36.134560, 25.257433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974022, 36.125259, 24.928682>,  <35.529903, 36.702652, 25.217936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974022, 36.125259, 24.928682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588551, 36.020382, 24.908340>,  <35.357269, 35.957455, 24.896135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588551, 36.020382, 24.908340>,  <35.974022, 36.125259, 24.928682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588551, 36.020382, 24.908340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120668, -0.257559, -0.958698,
		0.238265, -0.930010, 0.279841,
		-0.963675, -0.262192, -0.050855,
		35.299450, 35.941723, 24.893084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028046, 35.575691, 24.565439>,  <35.974022, 36.125259, 24.928682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028046, 35.575691, 24.565439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644329, 35.685150, 24.537483>,  <35.414101, 35.750824, 24.520710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644329, 35.685150, 24.537483>,  <36.028046, 35.575691, 24.565439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644329, 35.685150, 24.537483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006510, -0.225977, -0.974111,
		-0.282355, -0.934908, 0.214995,
		-0.959288, 0.273645, -0.069892,
		35.356541, 35.767242, 24.516516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777462, 35.195930, 24.001442>,  <36.028046, 35.575691, 24.565439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777462, 35.195930, 24.001442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517963, 35.499374, 24.025560>,  <35.362263, 35.681442, 24.040031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517963, 35.499374, 24.025560>,  <35.777462, 35.195930, 24.001442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517963, 35.499374, 24.025560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035717, 0.048793, -0.998170,
		-0.760163, -0.649717, -0.004560,
		-0.648750, 0.758609, 0.060297,
		35.323338, 35.726955, 24.043650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212860, 35.011471, 23.476255>,  <35.777462, 35.195930, 24.001442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212860, 35.011471, 23.476255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215668, 35.405502, 23.545036>,  <35.217354, 35.641922, 23.586306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215668, 35.405502, 23.545036>,  <35.212860, 35.011471, 23.476255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215668, 35.405502, 23.545036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026801, 0.172081, -0.984718,
		-0.999616, 0.002307, 0.027610,
		0.007023, 0.985080, 0.171954,
		35.217773, 35.701027, 23.596622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672886, 35.234955, 23.004944>,  <35.212860, 35.011471, 23.476255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672886, 35.234955, 23.004944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914871, 35.536968, 23.106094>,  <35.060062, 35.718178, 23.166784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914871, 35.536968, 23.106094>,  <34.672886, 35.234955, 23.004944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914871, 35.536968, 23.106094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004159, 0.320573, -0.947215,
		-0.796245, 0.571976, 0.197074,
		0.604960, 0.755034, 0.252876,
		35.096359, 35.763477, 23.181957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640652, 35.555676, 22.398891>,  <34.672886, 35.234955, 23.004944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640652, 35.555676, 22.398891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934807, 35.733795, 22.603210>,  <35.111301, 35.840668, 22.725801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934807, 35.733795, 22.603210>,  <34.640652, 35.555676, 22.398891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934807, 35.733795, 22.603210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350485, 0.395198, -0.849105,
		-0.579970, 0.803449, 0.134555,
		0.735388, 0.445296, 0.510800,
		35.155422, 35.867386, 22.756451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550285, 36.268780, 22.280165>,  <34.640652, 35.555676, 22.398891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550285, 36.268780, 22.280165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930172, 36.229332, 22.399036>,  <35.158104, 36.205666, 22.470360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930172, 36.229332, 22.399036>,  <34.550285, 36.268780, 22.280165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930172, 36.229332, 22.399036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305838, 0.495577, -0.812937,
		-0.067106, 0.862948, 0.500817,
		0.949716, -0.098616, 0.297178,
		35.215088, 36.199749, 22.488190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963112, 36.897346, 22.076271>,  <34.550285, 36.268780, 22.280165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963112, 36.897346, 22.076271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266586, 36.642677, 22.131458>,  <35.448673, 36.489876, 22.164572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266586, 36.642677, 22.131458>,  <34.963112, 36.897346, 22.076271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266586, 36.642677, 22.131458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489867, 0.417953, -0.765079,
		0.429441, 0.648044, 0.628982,
		0.758690, -0.636674, 0.137970,
		35.494194, 36.451675, 22.172850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646946, 37.276352, 22.189659>,  <34.963112, 36.897346, 22.076271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646946, 37.276352, 22.189659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724224, 36.910854, 22.046690>,  <35.770592, 36.691555, 21.960909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724224, 36.910854, 22.046690>,  <35.646946, 37.276352, 22.189659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724224, 36.910854, 22.046690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652239, 0.391746, -0.648938,
		0.732980, -0.107751, 0.671662,
		0.193197, -0.913742, -0.357421,
		35.782185, 36.636730, 21.939463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313900, 37.282600, 22.050173>,  <35.646946, 37.276352, 22.189659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313900, 37.282600, 22.050173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189121, 36.978970, 21.821613>,  <36.114254, 36.796791, 21.684477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189121, 36.978970, 21.821613>,  <36.313900, 37.282600, 22.050173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189121, 36.978970, 21.821613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575481, 0.327578, -0.749342,
		0.755983, -0.562585, 0.334646,
		-0.311946, -0.759073, -0.571400,
		36.095539, 36.751247, 21.650194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952457, 37.044327, 21.694117>,  <36.313900, 37.282600, 22.050173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952457, 37.044327, 21.694117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666931, 36.846386, 21.495886>,  <36.495617, 36.727623, 21.376947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666931, 36.846386, 21.495886>,  <36.952457, 37.044327, 21.694117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666931, 36.846386, 21.495886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466688, 0.191515, -0.863438,
		0.522182, -0.847612, 0.094235,
		-0.713813, -0.494850, -0.495576,
		36.452785, 36.697933, 21.347214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341000, 36.705887, 21.293709>,  <36.952457, 37.044327, 21.694117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341000, 36.705887, 21.293709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972694, 36.689220, 21.138552>,  <36.751713, 36.679222, 21.045458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972694, 36.689220, 21.138552>,  <37.341000, 36.705887, 21.293709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972694, 36.689220, 21.138552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378564, 0.144823, -0.914175,
		0.094263, -0.988580, -0.117575,
		-0.920762, -0.041663, -0.387892,
		36.696465, 36.676720, 21.022184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242313, 36.115486, 20.758448>,  <37.341000, 36.705887, 21.293709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242313, 36.115486, 20.758448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987606, 36.413990, 20.680862>,  <36.834782, 36.593094, 20.634312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987606, 36.413990, 20.680862>,  <37.242313, 36.115486, 20.758448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987606, 36.413990, 20.680862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410910, 0.115575, -0.904320,
		-0.652439, -0.655546, -0.380240,
		-0.636770, 0.746258, -0.193965,
		36.796574, 36.637867, 20.622673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022369, 35.986755, 20.125521>,  <37.242313, 36.115486, 20.758448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022369, 35.986755, 20.125521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907887, 36.368237, 20.162476>,  <36.839195, 36.597126, 20.184649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907887, 36.368237, 20.162476>,  <37.022369, 35.986755, 20.125521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907887, 36.368237, 20.162476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369244, 0.198756, -0.907830,
		-0.884163, -0.225714, -0.409034,
		-0.286208, 0.953703, 0.092389,
		36.822025, 36.654346, 20.190193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721928, 36.118164, 19.521334>,  <37.022369, 35.986755, 20.125521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721928, 36.118164, 19.521334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817844, 36.471939, 19.681467>,  <36.875393, 36.684204, 19.777546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817844, 36.471939, 19.681467>,  <36.721928, 36.118164, 19.521334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817844, 36.471939, 19.681467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358077, 0.302715, -0.883258,
		-0.902375, 0.355147, -0.244109,
		0.239791, 0.884440, 0.400332,
		36.889782, 36.737270, 19.801567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435539, 36.528336, 19.095549>,  <36.721928, 36.118164, 19.521334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435539, 36.528336, 19.095549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703049, 36.753017, 19.290373>,  <36.863556, 36.887829, 19.407267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703049, 36.753017, 19.290373>,  <36.435539, 36.528336, 19.095549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703049, 36.753017, 19.290373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223106, 0.473300, -0.852180,
		-0.709201, 0.678581, 0.191210,
		0.668773, 0.561707, 0.487060,
		36.903679, 36.921528, 19.436491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324539, 37.191944, 18.826746>,  <36.435539, 36.528336, 19.095549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324539, 37.191944, 18.826746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694988, 37.216125, 18.975687>,  <36.917255, 37.230637, 19.065052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694988, 37.216125, 18.975687>,  <36.324539, 37.191944, 18.826746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694988, 37.216125, 18.975687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299053, 0.483991, -0.822387,
		-0.229934, 0.872982, 0.430154,
		0.926120, 0.060456, 0.372354,
		36.972824, 37.234261, 19.087393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526737, 37.844746, 18.690344>,  <36.324539, 37.191944, 18.826746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526737, 37.844746, 18.690344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859417, 37.625153, 18.723543>,  <37.059025, 37.493397, 18.743464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859417, 37.625153, 18.723543>,  <36.526737, 37.844746, 18.690344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859417, 37.625153, 18.723543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390489, 0.472098, -0.790343,
		0.394699, 0.689741, 0.607017,
		0.831704, -0.548981, 0.082999,
		37.108929, 37.460457, 18.748444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076946, 38.309155, 18.860552>,  <36.526737, 37.844746, 18.690344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076946, 38.309155, 18.860552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238701, 37.984280, 18.692352>,  <37.335754, 37.789352, 18.591433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238701, 37.984280, 18.692352>,  <37.076946, 38.309155, 18.860552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238701, 37.984280, 18.692352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421987, 0.573594, -0.702080,
		0.811418, 0.106467, 0.574687,
		0.404386, -0.812191, -0.420497,
		37.360016, 37.740623, 18.566204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621525, 38.629673, 18.452589>,  <37.076946, 38.309155, 18.860552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621525, 38.629673, 18.452589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636833, 38.268967, 18.280378>,  <37.646019, 38.052544, 18.177052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636833, 38.268967, 18.280378>,  <37.621525, 38.629673, 18.452589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636833, 38.268967, 18.280378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405841, 0.407738, -0.817950,
		0.913142, -0.143420, 0.381579,
		0.038273, -0.901765, -0.430528,
		37.648315, 37.998436, 18.151220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317230, 38.594963, 18.166697>,  <37.621525, 38.629673, 18.452589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317230, 38.594963, 18.166697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098557, 38.330101, 17.961685>,  <37.967354, 38.171185, 17.838678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098557, 38.330101, 17.961685>,  <38.317230, 38.594963, 18.166697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098557, 38.330101, 17.961685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346796, 0.378079, -0.858364,
		0.762147, -0.646997, 0.022943,
		-0.546684, -0.662157, -0.512527,
		37.934551, 38.131454, 17.807926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715050, 38.254810, 17.642488>,  <38.317230, 38.594963, 18.166697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715050, 38.254810, 17.642488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332478, 38.235802, 17.527260>,  <38.102936, 38.224396, 17.458122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332478, 38.235802, 17.527260>,  <38.715050, 38.254810, 17.642488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332478, 38.235802, 17.527260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254051, 0.350789, -0.901335,
		0.143886, -0.935248, -0.323432,
		-0.956428, -0.047521, -0.288074,
		38.045547, 38.221546, 17.440838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761230, 38.087902, 17.037216>,  <38.715050, 38.254810, 17.642488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761230, 38.087902, 17.037216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382038, 38.215229, 17.036850>,  <38.154522, 38.291626, 17.036631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382038, 38.215229, 17.036850>,  <38.761230, 38.087902, 17.037216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382038, 38.215229, 17.036850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155022, 0.459153, -0.874727,
		-0.278018, -0.829369, -0.484616,
		-0.947984, 0.318316, -0.000918,
		38.097641, 38.310722, 17.036575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570454, 38.016357, 16.323586>,  <38.761230, 38.087902, 17.037216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570454, 38.016357, 16.323586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274055, 38.247898, 16.459734>,  <38.096218, 38.386822, 16.541424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274055, 38.247898, 16.459734>,  <38.570454, 38.016357, 16.323586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274055, 38.247898, 16.459734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025810, 0.531051, -0.846947,
		-0.671013, -0.618800, -0.408447,
		-0.740996, 0.578854, 0.340371,
		38.051758, 38.421555, 16.561846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100079, 38.165699, 15.714889>,  <38.570454, 38.016357, 16.323586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100079, 38.165699, 15.714889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005573, 38.449249, 15.980721>,  <37.948868, 38.619381, 16.140221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005573, 38.449249, 15.980721>,  <38.100079, 38.165699, 15.714889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005573, 38.449249, 15.980721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138098, 0.701499, -0.699163,
		-0.961825, -0.073412, -0.263636,
		-0.236267, 0.708880, 0.664581,
		37.934692, 38.661915, 16.180096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704277, 38.663574, 15.410770>,  <38.100079, 38.165699, 15.714889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704277, 38.663574, 15.410770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881744, 38.856575, 15.712856>,  <37.988224, 38.972374, 15.894108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881744, 38.856575, 15.712856>,  <37.704277, 38.663574, 15.410770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881744, 38.856575, 15.712856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203596, 0.766394, -0.609253,
		-0.872758, 0.424065, 0.241789,
		0.443668, 0.482503, 0.755214,
		38.014843, 39.001328, 15.939421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402081, 39.361671, 15.496078>,  <37.704277, 38.663574, 15.410770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402081, 39.361671, 15.496078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771866, 39.328079, 15.644836>,  <37.993736, 39.307922, 15.734092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771866, 39.328079, 15.644836>,  <37.402081, 39.361671, 15.496078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771866, 39.328079, 15.644836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332198, 0.656100, -0.677626,
		-0.187094, 0.749987, 0.634441,
		0.924467, -0.083981, 0.371897,
		38.049206, 39.302883, 15.756406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680332, 40.098721, 15.769041>,  <37.402081, 39.361671, 15.496078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680332, 40.098721, 15.769041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928070, 39.813236, 15.638180>,  <38.076714, 39.641945, 15.559663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928070, 39.813236, 15.638180>,  <37.680332, 40.098721, 15.769041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928070, 39.813236, 15.638180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250353, 0.574471, -0.779299,
		0.744134, 0.400752, 0.534475,
		0.619346, -0.713710, -0.327153,
		38.113873, 39.599125, 15.540033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382374, 40.737415, 15.790084>,  <37.680332, 40.098721, 15.769041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382374, 40.737415, 15.790084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311817, 40.564663, 16.143890>,  <37.269482, 40.461014, 16.356174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311817, 40.564663, 16.143890>,  <37.382374, 40.737415, 15.790084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311817, 40.564663, 16.143890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935084, 0.207124, 0.287606,
		-0.307415, 0.877828, 0.367306,
		-0.176391, -0.431876, 0.884516,
		37.258900, 40.435101, 16.409245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070179, 40.697975, 15.379867>,  <37.382374, 40.737415, 15.790084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070179, 40.697975, 15.379867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926235, 40.456898, 15.094977>,  <37.839867, 40.312252, 14.924044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926235, 40.456898, 15.094977>,  <38.070179, 40.697975, 15.379867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926235, 40.456898, 15.094977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657392, 0.377901, -0.651940,
		0.662069, -0.702819, 0.260211,
		-0.359862, -0.602691, -0.712224,
		37.818275, 40.276089, 14.881310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521782, 40.298607, 15.079886>,  <38.070179, 40.697975, 15.379867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521782, 40.298607, 15.079886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237965, 40.391811, 14.813879>,  <38.067673, 40.447735, 14.654275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237965, 40.391811, 14.813879>,  <38.521782, 40.298607, 15.079886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237965, 40.391811, 14.813879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690372, 0.418942, -0.589809,
		0.141172, -0.877607, -0.458124,
		-0.709547, 0.233011, -0.665018,
		38.025101, 40.461716, 14.614374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855427, 40.868233, 14.708001>,  <38.521782, 40.298607, 15.079886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855427, 40.868233, 14.708001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178440, 41.098545, 14.759170>,  <39.372250, 41.236732, 14.789870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178440, 41.098545, 14.759170>,  <38.855427, 40.868233, 14.708001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178440, 41.098545, 14.759170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158265, -0.420452, 0.893405,
		0.568192, -0.701209, -0.430655,
		0.807533, 0.575783, 0.127920,
		39.420700, 41.271278, 14.797545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468983, 40.472027, 14.887118>,  <38.855427, 40.868233, 14.708001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468983, 40.472027, 14.887118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519730, 40.839890, 15.035788>,  <39.550179, 41.060608, 15.124989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519730, 40.839890, 15.035788>,  <39.468983, 40.472027, 14.887118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519730, 40.839890, 15.035788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092775, -0.384059, 0.918636,
		0.987571, -0.082064, -0.134045,
		0.126868, 0.919654, 0.371672,
		39.557789, 41.115788, 15.147289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589863, 40.348335, 15.526999>,  <39.468983, 40.472027, 14.887118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589863, 40.348335, 15.526999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593601, 40.748226, 15.535498>,  <39.595844, 40.988163, 15.540597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593601, 40.748226, 15.535498>,  <39.589863, 40.348335, 15.526999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593601, 40.748226, 15.535498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092536, -0.022023, 0.995466,
		0.995665, -0.007339, -0.092717,
		0.009348, 0.999730, 0.021249,
		39.596405, 41.048145, 15.541872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246529, 40.649044, 15.741129>,  <39.589863, 40.348335, 15.526999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246529, 40.649044, 15.741129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920395, 40.854240, 15.848507>,  <39.724712, 40.977360, 15.912933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920395, 40.854240, 15.848507>,  <40.246529, 40.649044, 15.741129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920395, 40.854240, 15.848507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184915, -0.208643, 0.960351,
		0.548662, 0.832650, 0.075255,
		-0.815338, 0.512993, 0.268444,
		39.675793, 41.008137, 15.929040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504498, 40.933300, 16.405201>,  <40.246529, 40.649044, 15.741129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504498, 40.933300, 16.405201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111683, 41.008434, 16.398066>,  <39.875996, 41.053516, 16.393784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111683, 41.008434, 16.398066>,  <40.504498, 40.933300, 16.405201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111683, 41.008434, 16.398066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037570, -0.102012, 0.994073,
		0.184907, 0.976888, 0.107237,
		-0.982038, 0.187840, -0.017839,
		39.817070, 41.064785, 16.392714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249660, 41.369797, 17.017466>,  <40.504498, 40.933300, 16.405201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249660, 41.369797, 17.017466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954899, 41.119617, 16.914867>,  <39.778042, 40.969509, 16.853310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954899, 41.119617, 16.914867>,  <40.249660, 41.369797, 17.017466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954899, 41.119617, 16.914867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257421, -0.091214, 0.961985,
		-0.625070, 0.774914, -0.093789,
		-0.736900, -0.625451, -0.256494,
		39.733829, 40.931984, 16.837919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453861, 41.571217, 17.324085>,  <40.249660, 41.369797, 17.017466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453861, 41.571217, 17.324085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511795, 41.187180, 17.228380>,  <39.546555, 40.956757, 17.170958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511795, 41.187180, 17.228380>,  <39.453861, 41.571217, 17.324085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511795, 41.187180, 17.228380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309354, -0.273628, 0.910729,
		-0.939853, -0.057884, -0.336638,
		0.144830, -0.960092, -0.239264,
		39.555244, 40.899151, 17.156601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800232, 41.261810, 17.434792>,  <39.453861, 41.571217, 17.324085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800232, 41.261810, 17.434792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084663, 40.980564, 17.434904>,  <39.255322, 40.811817, 17.434973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084663, 40.980564, 17.434904>,  <38.800232, 41.261810, 17.434792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084663, 40.980564, 17.434904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348648, -0.352247, 0.868543,
		-0.610586, -0.617698, -0.495614,
		0.711076, -0.703115, 0.000282,
		39.297985, 40.769630, 17.434988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428371, 40.712135, 17.756454>,  <38.800232, 41.261810, 17.434792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428371, 40.712135, 17.756454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822521, 40.656437, 17.795725>,  <39.059013, 40.623016, 17.819286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822521, 40.656437, 17.795725>,  <38.428371, 40.712135, 17.756454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822521, 40.656437, 17.795725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121880, -0.173462, 0.977270,
		-0.119050, -0.974947, -0.187897,
		0.985379, -0.139245, 0.098176,
		39.118134, 40.614662, 17.825178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459461, 40.120125, 18.235947>,  <38.428371, 40.712135, 17.756454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459461, 40.120125, 18.235947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814827, 40.303535, 18.227293>,  <39.028046, 40.413582, 18.222101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814827, 40.303535, 18.227293>,  <38.459461, 40.120125, 18.235947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814827, 40.303535, 18.227293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031019, 0.106993, 0.993776,
		0.457991, -0.882215, 0.109277,
		0.888416, 0.458530, -0.021636,
		39.081352, 40.441093, 18.220802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774578, 39.837242, 18.768202>,  <38.459461, 40.120125, 18.235947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774578, 39.837242, 18.768202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021339, 40.145344, 18.703527>,  <39.169395, 40.330204, 18.664722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021339, 40.145344, 18.703527>,  <38.774578, 39.837242, 18.768202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021339, 40.145344, 18.703527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143715, 0.091736, 0.985358,
		0.773810, -0.631103, -0.054105,
		0.616899, 0.770255, -0.161685,
		39.206409, 40.376419, 18.655022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415474, 39.631790, 19.098181>,  <38.774578, 39.837242, 18.768202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415474, 39.631790, 19.098181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402550, 40.030636, 19.070726>,  <39.394794, 40.269943, 19.054255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402550, 40.030636, 19.070726>,  <39.415474, 39.631790, 19.098181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402550, 40.030636, 19.070726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193723, 0.073616, 0.978290,
		0.980524, 0.018315, -0.195543,
		-0.032313, 0.997118, -0.068634,
		39.392857, 40.329773, 19.050137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038589, 39.930519, 19.446533>,  <39.415474, 39.631790, 19.098181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038589, 39.930519, 19.446533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776814, 40.232941, 19.442564>,  <39.619747, 40.414394, 19.440182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776814, 40.232941, 19.442564>,  <40.038589, 39.930519, 19.446533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776814, 40.232941, 19.442564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133962, 0.128853, 0.982574,
		0.744156, 0.641702, -0.185608,
		-0.654436, 0.756052, -0.009923,
		39.580482, 40.459755, 19.439587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238144, 40.341530, 19.928185>,  <40.038589, 39.930519, 19.446533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238144, 40.341530, 19.928185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863785, 40.477093, 19.889751>,  <39.639168, 40.558430, 19.866692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863785, 40.477093, 19.889751>,  <40.238144, 40.341530, 19.928185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863785, 40.477093, 19.889751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092937, 0.025536, 0.995345,
		0.339779, 0.940475, 0.007597,
		-0.935902, 0.338904, -0.096081,
		39.583015, 40.578762, 19.860928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225220, 40.866802, 20.326647>,  <40.238144, 40.341530, 19.928185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225220, 40.866802, 20.326647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845795, 40.751369, 20.274582>,  <39.618137, 40.682110, 20.243343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845795, 40.751369, 20.274582>,  <40.225220, 40.866802, 20.326647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845795, 40.751369, 20.274582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151145, 0.051560, 0.987166,
		-0.278168, 0.956066, -0.092526,
		-0.948566, -0.288583, -0.130162,
		39.561226, 40.664795, 20.235533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834476, 41.291267, 20.696527>,  <40.225220, 40.866802, 20.326647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834476, 41.291267, 20.696527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575935, 40.989788, 20.648916>,  <39.420811, 40.808903, 20.620350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575935, 40.989788, 20.648916>,  <39.834476, 41.291267, 20.696527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575935, 40.989788, 20.648916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350869, 0.155055, 0.923498,
		-0.677580, 0.638672, -0.364669,
		-0.646356, -0.753695, -0.119028,
		39.382027, 40.763680, 20.613207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325085, 41.432285, 20.996412>,  <39.834476, 41.291267, 20.696527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325085, 41.432285, 20.996412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265671, 41.037910, 20.965763>,  <39.230022, 40.801285, 20.947374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265671, 41.037910, 20.965763>,  <39.325085, 41.432285, 20.996412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265671, 41.037910, 20.965763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235463, -0.039993, 0.971060,
		-0.960465, 0.162282, -0.226210,
		-0.148539, -0.985933, -0.076623,
		39.221107, 40.742130, 20.942776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581768, 41.245369, 21.143234>,  <39.325085, 41.432285, 20.996412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581768, 41.245369, 21.143234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800758, 40.919312, 21.218925>,  <38.932152, 40.723679, 21.264339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800758, 40.919312, 21.218925>,  <38.581768, 41.245369, 21.143234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800758, 40.919312, 21.218925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438520, -0.086872, 0.894513,
		-0.712717, -0.572708, -0.405017,
		0.547480, -0.815143, 0.189229,
		38.965004, 40.674770, 21.275694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169682, 40.686741, 21.265923>,  <38.581768, 41.245369, 21.143234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169682, 40.686741, 21.265923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512901, 40.567810, 21.433422>,  <38.718834, 40.496452, 21.533922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512901, 40.567810, 21.433422>,  <38.169682, 40.686741, 21.265923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512901, 40.567810, 21.433422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504048, -0.331228, 0.797637,
		-0.098460, -0.895479, -0.434078,
		0.858045, -0.297331, 0.418751,
		38.770313, 40.478611, 21.559048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912663, 40.193165, 21.660177>,  <38.169682, 40.686741, 21.265923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912663, 40.193165, 21.660177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280727, 40.237171, 21.810484>,  <38.501564, 40.263577, 21.900669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280727, 40.237171, 21.810484>,  <37.912663, 40.193165, 21.660177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280727, 40.237171, 21.810484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306331, -0.395439, 0.865903,
		0.243858, -0.911879, -0.330166,
		0.920160, 0.110018, 0.375768,
		38.556774, 40.270176, 21.923214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955601, 39.589596, 22.062040>,  <37.912663, 40.193165, 21.660177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955601, 39.589596, 22.062040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229996, 39.856579, 22.177916>,  <38.394634, 40.016769, 22.247440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229996, 39.856579, 22.177916>,  <37.955601, 39.589596, 22.062040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229996, 39.856579, 22.177916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181949, -0.228126, 0.956480,
		0.704496, -0.708842, -0.035048,
		0.685988, 0.667459, 0.289687,
		38.435791, 40.056816, 22.264822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212032, 39.262650, 22.758171>,  <37.955601, 39.589596, 22.062040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212032, 39.262650, 22.758171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269524, 39.658489, 22.760658>,  <38.304016, 39.895992, 22.762150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269524, 39.658489, 22.760658>,  <38.212032, 39.262650, 22.758171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269524, 39.658489, 22.760658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267991, 0.032873, 0.962861,
		0.952640, -0.140054, 0.269928,
		0.143726, 0.989598, 0.006217,
		38.312641, 39.955368, 22.762524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481861, 39.417278, 23.359077>,  <38.212032, 39.262650, 22.758171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481861, 39.417278, 23.359077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356838, 39.781029, 23.249289>,  <38.281826, 39.999279, 23.183414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356838, 39.781029, 23.249289>,  <38.481861, 39.417278, 23.359077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356838, 39.781029, 23.249289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353293, 0.156933, 0.922256,
		0.881755, 0.385227, 0.272227,
		-0.312556, 0.909380, -0.274474,
		38.263073, 40.053844, 23.166946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636898, 39.876762, 24.011946>,  <38.481861, 39.417278, 23.359077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636898, 39.876762, 24.011946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366142, 40.052269, 23.775537>,  <38.203690, 40.157574, 23.633692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366142, 40.052269, 23.775537>,  <38.636898, 39.876762, 24.011946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366142, 40.052269, 23.775537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478813, 0.347381, 0.806266,
		0.559069, 0.828742, -0.025053,
		-0.676890, 0.438762, -0.591023,
		38.163074, 40.183899, 23.598230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660923, 40.593929, 24.111744>,  <38.636898, 39.876762, 24.011946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660923, 40.593929, 24.111744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291946, 40.543221, 23.965845>,  <38.070560, 40.512794, 23.878305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291946, 40.543221, 23.965845>,  <38.660923, 40.593929, 24.111744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291946, 40.543221, 23.965845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382315, 0.432571, 0.816528,
		0.054270, 0.892644, -0.447484,
		-0.922437, -0.126767, -0.364746,
		38.015217, 40.505192, 23.856421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255230, 41.226646, 24.344849>,  <38.660923, 40.593929, 24.111744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255230, 41.226646, 24.344849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983738, 40.946812, 24.255495>,  <37.820843, 40.778912, 24.201883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983738, 40.946812, 24.255495>,  <38.255230, 41.226646, 24.344849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983738, 40.946812, 24.255495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524006, 0.248234, 0.814737,
		-0.514526, 0.670045, -0.535072,
		-0.678734, -0.699585, -0.223385,
		37.780117, 40.736935, 24.188480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767944, 41.533237, 24.537027>,  <38.255230, 41.226646, 24.344849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767944, 41.533237, 24.537027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630077, 41.160034, 24.495651>,  <37.547356, 40.936111, 24.470825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630077, 41.160034, 24.495651>,  <37.767944, 41.533237, 24.537027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630077, 41.160034, 24.495651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584219, 0.126947, 0.801606,
		-0.734773, 0.336722, -0.588835,
		-0.344669, -0.933007, -0.103442,
		37.526676, 40.880131, 24.464619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070744, 41.621597, 24.562815>,  <37.767944, 41.533237, 24.537027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070744, 41.621597, 24.562815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151337, 41.245682, 24.673237>,  <37.199692, 41.020134, 24.739491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151337, 41.245682, 24.673237>,  <37.070744, 41.621597, 24.562815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151337, 41.245682, 24.673237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705343, 0.056346, 0.706624,
		-0.679630, -0.337085, -0.651519,
		0.201482, -0.939786, 0.276055,
		37.211781, 40.963745, 24.756054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488434, 41.362110, 24.734795>,  <37.070744, 41.621597, 24.562815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488434, 41.362110, 24.734795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699402, 41.069176, 24.907082>,  <36.825981, 40.893417, 25.010454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699402, 41.069176, 24.907082>,  <36.488434, 41.362110, 24.734795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699402, 41.069176, 24.907082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430282, 0.206899, 0.878664,
		-0.732590, -0.648754, -0.205987,
		0.527417, -0.732333, 0.430720,
		36.857628, 40.849476, 25.036297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925251, 40.951191, 25.034477>,  <36.488434, 41.362110, 24.734795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925251, 40.951191, 25.034477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269154, 40.880806, 25.226250>,  <36.475494, 40.838577, 25.341312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269154, 40.880806, 25.226250>,  <35.925251, 40.951191, 25.034477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269154, 40.880806, 25.226250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456345, 0.156750, 0.875887,
		-0.229272, -0.971837, 0.054468,
		0.859758, -0.175960, 0.479431,
		36.527081, 40.828018, 25.370079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772995, 40.539036, 25.697433>,  <35.925251, 40.951191, 25.034477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772995, 40.539036, 25.697433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131958, 40.699619, 25.770626>,  <36.347336, 40.795971, 25.814543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131958, 40.699619, 25.770626>,  <35.772995, 40.539036, 25.697433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131958, 40.699619, 25.770626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228974, 0.069283, 0.970964,
		0.377128, -0.913251, 0.154100,
		0.897410, 0.401463, 0.182982,
		36.401180, 40.820057, 25.825521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079987, 40.076809, 26.118090>,  <35.772995, 40.539036, 25.697433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079987, 40.076809, 26.118090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235977, 40.442493, 26.162153>,  <36.329571, 40.661903, 26.188591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235977, 40.442493, 26.162153>,  <36.079987, 40.076809, 26.118090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235977, 40.442493, 26.162153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158097, -0.051379, 0.986086,
		0.907150, -0.401970, 0.124497,
		0.389980, 0.914210, 0.110159,
		36.352970, 40.716755, 26.195200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416405, 40.067215, 26.766012>,  <36.079987, 40.076809, 26.118090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416405, 40.067215, 26.766012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398621, 40.464085, 26.719349>,  <36.387951, 40.702206, 26.691351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398621, 40.464085, 26.719349>,  <36.416405, 40.067215, 26.766012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398621, 40.464085, 26.719349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192520, 0.106076, 0.975543,
		0.980285, 0.065834, 0.186298,
		-0.044462, 0.992176, -0.116659,
		36.385281, 40.761738, 26.684351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790867, 40.375118, 27.207846>,  <36.416405, 40.067215, 26.766012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790867, 40.375118, 27.207846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545631, 40.679420, 27.122643>,  <36.398491, 40.862003, 27.071520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545631, 40.679420, 27.122643>,  <36.790867, 40.375118, 27.207846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545631, 40.679420, 27.122643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075623, 0.211874, 0.974367,
		0.786385, 0.613483, -0.072367,
		-0.613090, 0.760755, -0.213008,
		36.361706, 40.907646, 27.058741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912682, 40.774727, 27.679079>,  <36.790867, 40.375118, 27.207846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912682, 40.774727, 27.679079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570057, 40.931206, 27.544460>,  <36.364483, 41.025093, 27.463690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570057, 40.931206, 27.544460>,  <36.912682, 40.774727, 27.679079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570057, 40.931206, 27.544460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263839, 0.228499, 0.937111,
		0.443492, 0.891491, -0.092512,
		-0.856565, 0.391193, -0.336547,
		36.313087, 41.048565, 27.443497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868431, 41.482819, 27.981350>,  <36.912682, 40.774727, 27.679079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868431, 41.482819, 27.981350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493576, 41.396507, 27.871649>,  <36.268661, 41.344723, 27.805828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493576, 41.396507, 27.871649>,  <36.868431, 41.482819, 27.981350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493576, 41.396507, 27.871649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319395, 0.213792, 0.923190,
		-0.140567, 0.952751, -0.269270,
		-0.937138, -0.215774, -0.274252,
		36.212433, 41.331776, 27.789373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425793, 42.010166, 28.263226>,  <36.868431, 41.482819, 27.981350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425793, 42.010166, 28.263226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206516, 41.683853, 28.189478>,  <36.074951, 41.488068, 28.145229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206516, 41.683853, 28.189478>,  <36.425793, 42.010166, 28.263226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206516, 41.683853, 28.189478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240247, -0.057557, 0.969004,
		-0.801104, 0.575493, -0.164437,
		-0.548190, -0.815779, -0.184370,
		36.042061, 41.439121, 28.134167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852116, 42.088520, 28.650181>,  <36.425793, 42.010166, 28.263226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852116, 42.088520, 28.650181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829720, 41.697693, 28.568014>,  <35.816280, 41.463196, 28.518713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829720, 41.697693, 28.568014>,  <35.852116, 42.088520, 28.650181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829720, 41.697693, 28.568014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261412, -0.184218, 0.947485,
		-0.963602, 0.106751, -0.245103,
		-0.055993, -0.977071, -0.205418,
		35.812923, 41.404572, 28.506388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218399, 41.856606, 28.796103>,  <35.852116, 42.088520, 28.650181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218399, 41.856606, 28.796103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446800, 41.530300, 28.832962>,  <35.583839, 41.334518, 28.855078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446800, 41.530300, 28.832962>,  <35.218399, 41.856606, 28.796103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446800, 41.530300, 28.832962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399683, -0.178195, 0.899166,
		-0.717084, -0.550256, -0.427796,
		0.571003, -0.815760, 0.092147,
		35.618099, 41.285572, 28.860607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755394, 41.366020, 28.962318>,  <35.218399, 41.856606, 28.796103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755394, 41.366020, 28.962318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112186, 41.238792, 29.090815>,  <35.326263, 41.162457, 29.167912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112186, 41.238792, 29.090815>,  <34.755394, 41.366020, 28.962318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112186, 41.238792, 29.090815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428966, -0.371255, 0.823504,
		-0.142671, -0.872353, -0.467595,
		0.891983, -0.318073, 0.321242,
		35.379780, 41.143372, 29.187187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611259, 40.714077, 29.269234>,  <34.755394, 41.366020, 28.962318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611259, 40.714077, 29.269234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977158, 40.814651, 29.395737>,  <35.196697, 40.874996, 29.471640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977158, 40.814651, 29.395737>,  <34.611259, 40.714077, 29.269234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977158, 40.814651, 29.395737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213339, -0.364156, 0.906574,
		0.343110, -0.896756, -0.279470,
		0.914747, 0.251433, 0.316259,
		35.251583, 40.890079, 29.490614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922352, 40.102360, 29.433155>,  <34.611259, 40.714077, 29.269234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922352, 40.102360, 29.433155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104195, 40.381927, 29.654007>,  <35.213299, 40.549667, 29.786518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104195, 40.381927, 29.654007>,  <34.922352, 40.102360, 29.433155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104195, 40.381927, 29.654007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177631, -0.536294, 0.825128,
		0.872803, -0.473180, -0.119651,
		0.454602, 0.698920, 0.552130,
		35.240574, 40.591602, 29.819645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301270, 39.692577, 29.950016>,  <34.922352, 40.102360, 29.433155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301270, 39.692577, 29.950016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303802, 40.055428, 30.118340>,  <35.305325, 40.273140, 30.219334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303802, 40.055428, 30.118340>,  <35.301270, 39.692577, 29.950016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303802, 40.055428, 30.118340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041956, -0.420206, 0.906458,
		0.999099, -0.023399, 0.035397,
		0.006336, 0.907127, 0.420809,
		35.305702, 40.327564, 30.244583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751091, 39.549942, 30.500687>,  <35.301270, 39.692577, 29.950016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751091, 39.549942, 30.500687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534328, 39.873783, 30.590912>,  <35.404270, 40.068089, 30.645048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534328, 39.873783, 30.590912>,  <35.751091, 39.549942, 30.500687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534328, 39.873783, 30.590912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266026, -0.419826, 0.867742,
		0.797225, 0.410228, 0.442882,
		-0.541906, 0.809604, 0.225565,
		35.371758, 40.116665, 30.658581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325932, 39.102425, 30.723436>,  <35.751091, 39.549942, 30.500687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325932, 39.102425, 30.723436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594788, 39.068188, 31.017622>,  <36.756100, 39.047646, 31.194134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594788, 39.068188, 31.017622>,  <36.325932, 39.102425, 30.723436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594788, 39.068188, 31.017622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648606, 0.547158, -0.529083,
		-0.357130, 0.832642, 0.423279,
		0.672137, -0.085590, 0.735463,
		36.796429, 39.042511, 31.238260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538727, 39.717663, 30.866087>,  <36.325932, 39.102425, 30.723436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538727, 39.717663, 30.866087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861744, 39.538456, 31.019527>,  <37.055553, 39.430931, 31.111591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861744, 39.538456, 31.019527>,  <36.538727, 39.717663, 30.866087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861744, 39.538456, 31.019527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587041, 0.547672, -0.596186,
		0.057014, 0.706637, 0.705276,
		0.807547, -0.448017, 0.383600,
		37.104008, 39.404049, 31.134607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112511, 40.219311, 30.855909>,  <36.538727, 39.717663, 30.866087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112511, 40.219311, 30.855909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282887, 39.858723, 30.886700>,  <37.385113, 39.642368, 30.905174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282887, 39.858723, 30.886700>,  <37.112511, 40.219311, 30.855909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282887, 39.858723, 30.886700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654633, 0.248343, -0.713990,
		0.624525, 0.354508, 0.695911,
		0.425940, -0.901471, 0.076976,
		37.410667, 39.588280, 30.909792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831142, 40.298454, 30.774277>,  <37.112511, 40.219311, 30.855909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831142, 40.298454, 30.774277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770088, 39.913177, 30.685762>,  <37.733456, 39.682011, 30.632654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770088, 39.913177, 30.685762>,  <37.831142, 40.298454, 30.774277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770088, 39.913177, 30.685762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705690, 0.050535, -0.706716,
		0.691885, -0.264027, 0.672001,
		-0.152633, -0.963191, -0.221285,
		37.724297, 39.624222, 30.619377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473186, 39.863960, 30.735743>,  <37.831142, 40.298454, 30.774277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473186, 39.863960, 30.735743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214073, 39.658791, 30.510431>,  <38.058605, 39.535690, 30.375244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214073, 39.658791, 30.510431>,  <38.473186, 39.863960, 30.735743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214073, 39.658791, 30.510431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689183, -0.079462, -0.720217,
		0.324657, -0.854749, 0.404972,
		-0.647785, -0.512923, -0.563280,
		38.019737, 39.504913, 30.341448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948917, 39.470398, 30.435070>,  <38.473186, 39.863960, 30.735743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948917, 39.470398, 30.435070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626122, 39.467663, 30.198858>,  <38.432446, 39.466022, 30.057131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626122, 39.467663, 30.198858>,  <38.948917, 39.470398, 30.435070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626122, 39.467663, 30.198858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584292, -0.154640, -0.796674,
		-0.085868, -0.987947, 0.128791,
		-0.806988, -0.006843, -0.590528,
		38.384026, 39.465611, 30.021700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240597, 39.143898, 29.851393>,  <38.948917, 39.470398, 30.435070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240597, 39.143898, 29.851393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889412, 39.279400, 29.716087>,  <38.678699, 39.360703, 29.634905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889412, 39.279400, 29.716087>,  <39.240597, 39.143898, 29.851393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889412, 39.279400, 29.716087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362400, 0.008619, -0.931983,
		-0.312797, -0.940836, -0.130331,
		-0.877966, 0.338754, -0.338263,
		38.626022, 39.381027, 29.614609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073246, 38.678299, 29.266350>,  <39.240597, 39.143898, 29.851393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073246, 38.678299, 29.266350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934326, 39.050694, 29.221352>,  <38.850975, 39.274128, 29.194353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934326, 39.050694, 29.221352>,  <39.073246, 38.678299, 29.266350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934326, 39.050694, 29.221352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378516, 0.029416, -0.925128,
		-0.857969, -0.363874, -0.362608,
		-0.347296, 0.930984, -0.112494,
		38.830139, 39.329990, 29.187603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845070, 38.680672, 28.637285>,  <39.073246, 38.678299, 29.266350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845070, 38.680672, 28.637285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839008, 39.076530, 28.694382>,  <38.835369, 39.314045, 28.728640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839008, 39.076530, 28.694382>,  <38.845070, 38.680672, 28.637285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839008, 39.076530, 28.694382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359258, 0.138617, -0.922886,
		-0.933115, 0.037294, -0.357639,
		-0.015157, 0.989643, 0.142743,
		38.834461, 39.373425, 28.737206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609596, 38.939781, 28.036230>,  <38.845070, 38.680672, 28.637285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609596, 38.939781, 28.036230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816902, 39.231274, 28.215271>,  <38.941284, 39.406170, 28.322695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816902, 39.231274, 28.215271>,  <38.609596, 38.939781, 28.036230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816902, 39.231274, 28.215271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493351, 0.172760, -0.852502,
		-0.698575, 0.662646, -0.269986,
		0.518264, 0.728734, 0.447603,
		38.972382, 39.449894, 28.349552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527721, 39.349812, 27.618793>,  <38.609596, 38.939781, 28.036230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527721, 39.349812, 27.618793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834332, 39.521282, 27.810076>,  <39.018295, 39.624165, 27.924845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834332, 39.521282, 27.810076>,  <38.527721, 39.349812, 27.618793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834332, 39.521282, 27.810076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455510, 0.162008, -0.875365,
		-0.452720, 0.888815, -0.071083,
		0.766522, 0.428675, 0.478208,
		39.064289, 39.649883, 27.953539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635849, 39.947189, 27.311127>,  <38.527721, 39.349812, 27.618793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635849, 39.947189, 27.311127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992542, 39.867882, 27.473850>,  <39.206558, 39.820297, 27.571484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992542, 39.867882, 27.473850>,  <38.635849, 39.947189, 27.311127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992542, 39.867882, 27.473850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436256, 0.137545, -0.889248,
		0.120359, 0.970448, 0.209152,
		0.891737, -0.198272, 0.406809,
		39.260063, 39.808399, 27.595894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027084, 40.482151, 27.179640>,  <38.635849, 39.947189, 27.311127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027084, 40.482151, 27.179640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287697, 40.189842, 27.261112>,  <39.444065, 40.014458, 27.309996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287697, 40.189842, 27.261112>,  <39.027084, 40.482151, 27.179640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287697, 40.189842, 27.261112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317170, 0.018496, -0.948188,
		0.689138, 0.682376, 0.243829,
		0.651531, -0.730767, 0.203683,
		39.483154, 39.970612, 27.322218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797092, 40.751488, 27.061066>,  <39.027084, 40.482151, 27.179640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797092, 40.751488, 27.061066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814735, 40.354488, 27.015446>,  <39.825321, 40.116291, 26.988073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814735, 40.354488, 27.015446>,  <39.797092, 40.751488, 27.061066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814735, 40.354488, 27.015446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369070, 0.122271, -0.921324,
		0.928354, -0.001455, 0.371693,
		0.044107, -0.992496, -0.114048,
		39.827969, 40.056740, 26.981232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435265, 40.606243, 26.751175>,  <39.797092, 40.751488, 27.061066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435265, 40.606243, 26.751175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252747, 40.256313, 26.686092>,  <40.143234, 40.046356, 26.647043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252747, 40.256313, 26.686092>,  <40.435265, 40.606243, 26.751175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252747, 40.256313, 26.686092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534586, -0.123332, -0.836067,
		0.711346, -0.468473, 0.523946,
		-0.456294, -0.874827, -0.162708,
		40.115860, 39.993866, 26.637280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998287, 40.159321, 26.445795>,  <40.435265, 40.606243, 26.751175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998287, 40.159321, 26.445795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660465, 39.978550, 26.330915>,  <40.457771, 39.870087, 26.261988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660465, 39.978550, 26.330915>,  <40.998287, 40.159321, 26.445795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660465, 39.978550, 26.330915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298502, 0.047925, -0.953205,
		0.444547, -0.890765, 0.094428,
		-0.844556, -0.451931, -0.287200,
		40.407097, 39.842972, 26.244755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268288, 39.663563, 25.985802>,  <40.998287, 40.159321, 26.445795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268288, 39.663563, 25.985802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879364, 39.723125, 25.913761>,  <40.646008, 39.758862, 25.870537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879364, 39.723125, 25.913761>,  <41.268288, 39.663563, 25.985802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879364, 39.723125, 25.913761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180579, -0.010416, -0.983505,
		-0.148324, -0.988797, -0.016761,
		-0.972312, 0.148904, -0.180101,
		40.587669, 39.767796, 25.859732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086243, 39.236824, 25.480028>,  <41.268288, 39.663563, 25.985802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086243, 39.236824, 25.480028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790401, 39.503670, 25.444370>,  <40.612896, 39.663776, 25.422976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790401, 39.503670, 25.444370>,  <41.086243, 39.236824, 25.480028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790401, 39.503670, 25.444370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157963, 0.043305, -0.986495,
		-0.654242, -0.743698, -0.137407,
		-0.739605, 0.667111, -0.089145,
		40.568520, 39.703804, 25.417627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612080, 39.077599, 24.919298>,  <41.086243, 39.236824, 25.480028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612080, 39.077599, 24.919298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482628, 39.451515, 24.977852>,  <40.404957, 39.675865, 25.012985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482628, 39.451515, 24.977852>,  <40.612080, 39.077599, 24.919298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482628, 39.451515, 24.977852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028026, 0.164115, -0.986043,
		-0.945770, -0.315007, -0.079310,
		-0.323626, 0.934793, 0.146386,
		40.385540, 39.731953, 25.021769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148418, 39.135456, 24.485163>,  <40.612080, 39.077599, 24.919298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148418, 39.135456, 24.485163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281467, 39.510044, 24.529680>,  <40.361298, 39.734798, 24.556391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281467, 39.510044, 24.529680>,  <40.148418, 39.135456, 24.485163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281467, 39.510044, 24.529680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015566, 0.123447, -0.992229,
		-0.942932, 0.328304, 0.055639,
		0.332621, 0.936471, 0.111292,
		40.381252, 39.790985, 24.563068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821926, 39.456379, 23.963987>,  <40.148418, 39.135456, 24.485163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821926, 39.456379, 23.963987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118084, 39.705864, 24.064224>,  <40.295780, 39.855556, 24.124367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118084, 39.705864, 24.064224>,  <39.821926, 39.456379, 23.963987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118084, 39.705864, 24.064224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168305, 0.188908, -0.967464,
		-0.650759, 0.758482, 0.034892,
		0.740396, 0.623714, 0.250590,
		40.340202, 39.892979, 24.139400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760426, 40.126705, 23.679058>,  <39.821926, 39.456379, 23.963987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760426, 40.126705, 23.679058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149811, 40.047031, 23.724129>,  <40.383442, 39.999226, 23.751171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149811, 40.047031, 23.724129>,  <39.760426, 40.126705, 23.679058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149811, 40.047031, 23.724129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124521, 0.047943, -0.991058,
		0.192002, 0.978789, 0.071473,
		0.973463, -0.199185, 0.112675,
		40.441849, 39.987274, 23.757931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034451, 40.544235, 23.118448>,  <39.760426, 40.126705, 23.679058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034451, 40.544235, 23.118448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321697, 40.292484, 23.237244>,  <40.494045, 40.141434, 23.308521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321697, 40.292484, 23.237244>,  <40.034451, 40.544235, 23.118448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321697, 40.292484, 23.237244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307320, -0.096094, -0.946742,
		0.624394, 0.771138, 0.124413,
		0.718113, -0.629374, 0.296987,
		40.537132, 40.103672, 23.326340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716785, 40.850094, 22.812170>,  <40.034451, 40.544235, 23.118448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716785, 40.850094, 22.812170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750011, 40.458477, 22.886557>,  <40.769947, 40.223507, 22.931189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750011, 40.458477, 22.886557>,  <40.716785, 40.850094, 22.812170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750011, 40.458477, 22.886557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352607, -0.145663, -0.924365,
		0.932077, 0.142357, 0.333117,
		0.083067, -0.979039, 0.185965,
		40.774933, 40.164764, 22.942347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453972, 40.741848, 22.576218>,  <40.716785, 40.850094, 22.812170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453972, 40.741848, 22.576218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278107, 40.382698, 22.585382>,  <41.172588, 40.167210, 22.590881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278107, 40.382698, 22.585382>,  <41.453972, 40.741848, 22.576218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278107, 40.382698, 22.585382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342925, -0.191389, -0.919659,
		0.830121, -0.396481, 0.392049,
		-0.439661, -0.897871, 0.022912,
		41.146210, 40.113338, 22.592257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961021, 40.239395, 22.588095>,  <41.453972, 40.741848, 22.576218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961021, 40.239395, 22.588095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647560, 40.033642, 22.448784>,  <41.459484, 39.910191, 22.365196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647560, 40.033642, 22.448784>,  <41.961021, 40.239395, 22.588095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647560, 40.033642, 22.448784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504947, -0.200905, -0.839444,
		0.361826, -0.833694, 0.417176,
		-0.783652, -0.514384, -0.348279,
		41.412464, 39.879326, 22.344299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246143, 39.806519, 22.193125>,  <41.961021, 40.239395, 22.588095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246143, 39.806519, 22.193125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865456, 39.763309, 22.078186>,  <41.637043, 39.737385, 22.009222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865456, 39.763309, 22.078186>,  <42.246143, 39.806519, 22.193125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865456, 39.763309, 22.078186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306807, -0.366232, -0.878489,
		-0.010341, -0.924232, 0.381690,
		-0.951715, -0.108021, -0.287348,
		41.579941, 39.730904, 21.991982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177734, 39.136814, 21.889881>,  <42.246143, 39.806519, 22.193125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177734, 39.136814, 21.889881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853626, 39.325127, 21.750269>,  <41.659161, 39.438114, 21.666502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853626, 39.325127, 21.750269>,  <42.177734, 39.136814, 21.889881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853626, 39.325127, 21.750269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137820, -0.425787, -0.894266,
		-0.569615, -0.772703, 0.280121,
		-0.810274, 0.470782, -0.349028,
		41.610542, 39.466362, 21.645561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715179, 38.544014, 21.563526>,  <42.177734, 39.136814, 21.889881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715179, 38.544014, 21.563526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616913, 38.902107, 21.414822>,  <41.557953, 39.116962, 21.325600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616913, 38.902107, 21.414822>,  <41.715179, 38.544014, 21.563526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616913, 38.902107, 21.414822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042149, -0.393015, -0.918566,
		-0.968438, -0.209992, 0.134283,
		-0.245666, 0.895234, -0.371760,
		41.543213, 39.170677, 21.303293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075214, 38.519390, 21.218657>,  <41.715179, 38.544014, 21.563526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075214, 38.519390, 21.218657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286125, 38.828426, 21.077188>,  <41.412670, 39.013847, 20.992308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286125, 38.828426, 21.077188>,  <41.075214, 38.519390, 21.218657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286125, 38.828426, 21.077188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120149, -0.344256, -0.931156,
		-0.841155, 0.533471, -0.088693,
		0.527278, 0.772591, -0.353668,
		41.444309, 39.060204, 20.971088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700592, 38.751438, 20.546616>,  <41.075214, 38.519390, 21.218657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700592, 38.751438, 20.546616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068089, 38.908863, 20.533884>,  <41.288586, 39.003319, 20.526245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068089, 38.908863, 20.533884>,  <40.700592, 38.751438, 20.546616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068089, 38.908863, 20.533884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080774, -0.266236, -0.960518,
		-0.386501, 0.879900, -0.276393,
		0.918745, 0.393566, -0.031827,
		41.343712, 39.026932, 20.524336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695621, 39.078823, 19.827072>,  <40.700592, 38.751438, 20.546616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695621, 39.078823, 19.827072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076485, 39.052620, 19.946470>,  <41.305004, 39.036900, 20.018110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076485, 39.052620, 19.946470>,  <40.695621, 39.078823, 19.827072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076485, 39.052620, 19.946470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270332, -0.274981, -0.922663,
		0.142522, 0.959215, -0.244117,
		0.952160, -0.065507, 0.298497,
		41.362133, 39.032967, 20.036020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057068, 39.530926, 19.416601>,  <40.695621, 39.078823, 19.827072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057068, 39.530926, 19.416601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317406, 39.255581, 19.544699>,  <41.473606, 39.090374, 19.621557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317406, 39.255581, 19.544699>,  <41.057068, 39.530926, 19.416601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317406, 39.255581, 19.544699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349287, -0.103028, -0.931334,
		0.674093, 0.718009, 0.173383,
		0.650843, -0.688367, 0.320242,
		41.512657, 39.049072, 19.640772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638371, 39.695580, 18.973063>,  <41.057068, 39.530926, 19.416601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638371, 39.695580, 18.973063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723934, 39.342968, 19.141418>,  <41.775272, 39.131401, 19.242432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723934, 39.342968, 19.141418>,  <41.638371, 39.695580, 18.973063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723934, 39.342968, 19.141418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426033, -0.303539, -0.852268,
		0.879057, 0.361616, 0.310633,
		0.213905, -0.881531, 0.420889,
		41.788105, 39.078510, 19.267685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258293, 39.488476, 18.730766>,  <41.638371, 39.695580, 18.973063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258293, 39.488476, 18.730766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155025, 39.130558, 18.876476>,  <42.093063, 38.915810, 18.963903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155025, 39.130558, 18.876476>,  <42.258293, 39.488476, 18.730766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155025, 39.130558, 18.876476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541238, -0.446291, -0.712661,
		0.800256, 0.013173, 0.599514,
		-0.258170, -0.894791, 0.364277,
		42.077576, 38.862122, 18.985760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831295, 39.066681, 18.802532>,  <42.258293, 39.488476, 18.730766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831295, 39.066681, 18.802532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501434, 38.846344, 18.751118>,  <42.303516, 38.714142, 18.720270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501434, 38.846344, 18.751118>,  <42.831295, 39.066681, 18.802532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501434, 38.846344, 18.751118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418985, -0.442206, -0.793036,
		0.379999, -0.707833, 0.595461,
		-0.824653, -0.550842, -0.128534,
		42.254040, 38.681091, 18.712557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107933, 38.533047, 18.410725>,  <42.831295, 39.066681, 18.802532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107933, 38.533047, 18.410725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716599, 38.464764, 18.363863>,  <42.481800, 38.423794, 18.335747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716599, 38.464764, 18.363863>,  <43.107933, 38.533047, 18.410725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716599, 38.464764, 18.363863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184151, -0.458831, -0.869231,
		0.094635, -0.871970, 0.480325,
		-0.978332, -0.170712, -0.117153,
		42.423100, 38.413551, 18.328716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025768, 37.894218, 18.729031>,  <43.107933, 38.533047, 18.410725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025768, 37.894218, 18.729031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125137, 37.514156, 18.653671>,  <43.184757, 37.286118, 18.608456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125137, 37.514156, 18.653671>,  <43.025768, 37.894218, 18.729031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125137, 37.514156, 18.653671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067565, -0.177027, 0.981884,
		-0.966293, -0.256649, 0.020220,
		0.248420, -0.950154, -0.188400,
		43.199665, 37.229111, 18.597151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669731, 37.436211, 19.242176>,  <43.025768, 37.894218, 18.729031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669731, 37.436211, 19.242176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946213, 37.179073, 19.110123>,  <43.112103, 37.024792, 19.030891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946213, 37.179073, 19.110123>,  <42.669731, 37.436211, 19.242176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946213, 37.179073, 19.110123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081437, -0.384633, 0.919470,
		-0.718054, -0.662429, -0.213510,
		0.691207, -0.642842, -0.330133,
		43.153576, 36.986221, 19.011084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479176, 36.656532, 19.455057>,  <42.669731, 37.436211, 19.242176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479176, 36.656532, 19.455057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872742, 36.709198, 19.406775>,  <43.108883, 36.740799, 19.377806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872742, 36.709198, 19.406775>,  <42.479176, 36.656532, 19.455057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872742, 36.709198, 19.406775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154187, -0.284898, 0.946076,
		0.090180, -0.949472, -0.300618,
		0.983918, 0.131668, -0.120704,
		43.167915, 36.748699, 19.370564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.825607, 36.080898, 19.567511>,  <42.479176, 36.656532, 19.455057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.825607, 36.080898, 19.567511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112553, 36.348770, 19.644367>,  <43.284721, 36.509495, 19.690481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112553, 36.348770, 19.644367>,  <42.825607, 36.080898, 19.567511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112553, 36.348770, 19.644367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156824, -0.423921, 0.892019,
		0.678821, -0.609769, -0.409127,
		0.717362, 0.669682, 0.192139,
		43.327763, 36.549675, 19.702009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374805, 35.680363, 19.953739>,  <42.825607, 36.080898, 19.567511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374805, 35.680363, 19.953739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435524, 36.070782, 20.016069>,  <43.471954, 36.305035, 20.053469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435524, 36.070782, 20.016069>,  <43.374805, 35.680363, 19.953739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435524, 36.070782, 20.016069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389258, -0.203945, 0.898267,
		0.908536, -0.075692, -0.410893,
		0.151792, 0.976052, 0.155828,
		43.481060, 36.363598, 20.062819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898438, 35.697285, 20.438801>,  <43.374805, 35.680363, 19.953739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898438, 35.697285, 20.438801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.764381, 36.072876, 20.469774>,  <43.683949, 36.298233, 20.488358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.764381, 36.072876, 20.469774>,  <43.898438, 35.697285, 20.438801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.764381, 36.072876, 20.469774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289019, 0.024235, 0.957016,
		0.896744, 0.343114, -0.279506,
		-0.335139, 0.938981, 0.077434,
		43.663841, 36.354568, 20.493004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477074, 36.202511, 20.656458>,  <43.898438, 35.697285, 20.438801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477074, 36.202511, 20.656458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114349, 36.337788, 20.757111>,  <43.896713, 36.418953, 20.817501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114349, 36.337788, 20.757111>,  <44.477074, 36.202511, 20.656458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114349, 36.337788, 20.757111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285645, 0.054002, 0.956813,
		0.309999, 0.939526, -0.145573,
		-0.906812, 0.338193, 0.251630,
		43.842304, 36.439247, 20.832600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521553, 36.687840, 21.226770>,  <44.477074, 36.202511, 20.656458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.521553, 36.687840, 21.226770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.133888, 36.594566, 21.258623>,  <43.901287, 36.538601, 21.277735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.133888, 36.594566, 21.258623>,  <44.521553, 36.687840, 21.226770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133888, 36.594566, 21.258623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060362, 0.088656, 0.994232,
		-0.238898, 0.968383, -0.071847,
		-0.969167, -0.233183, 0.079633,
		43.843140, 36.524612, 21.282513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292358, 37.071636, 21.852551>,  <44.521553, 36.687840, 21.226770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292358, 37.071636, 21.852551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958778, 36.855198, 21.809200>,  <43.758629, 36.725334, 21.783190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958778, 36.855198, 21.809200>,  <44.292358, 37.071636, 21.852551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958778, 36.855198, 21.809200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192705, 0.101520, 0.975991,
		-0.517099, 0.834813, -0.188934,
		-0.833950, -0.541093, -0.108377,
		43.708591, 36.692871, 21.776688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633179, 37.407997, 22.242849>,  <44.292358, 37.071636, 21.852551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633179, 37.407997, 22.242849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.525898, 37.028122, 22.178146>,  <43.461529, 36.800198, 22.139324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.525898, 37.028122, 22.178146>,  <43.633179, 37.407997, 22.242849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.525898, 37.028122, 22.178146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250278, -0.093454, 0.963653,
		-0.930284, 0.298939, -0.212620,
		-0.268203, -0.949685, -0.161756,
		43.445438, 36.743217, 22.129620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930161, 37.367973, 22.441187>,  <43.633179, 37.407997, 22.242849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930161, 37.367973, 22.441187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094784, 37.003731, 22.456200>,  <43.193558, 36.785183, 22.465206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094784, 37.003731, 22.456200>,  <42.930161, 37.367973, 22.441187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094784, 37.003731, 22.456200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080460, 0.004716, 0.996747,
		-0.907825, -0.413239, -0.071327,
		0.411558, -0.910610, 0.037530,
		43.218250, 36.730549, 22.467459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499062, 36.933517, 22.904852>,  <42.930161, 37.367973, 22.441187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499062, 36.933517, 22.904852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815849, 36.689510, 22.894558>,  <43.005920, 36.543106, 22.888382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815849, 36.689510, 22.894558>,  <42.499062, 36.933517, 22.904852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815849, 36.689510, 22.894558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169506, -0.260165, 0.950569,
		-0.586560, -0.748460, -0.309445,
		0.791969, -0.610019, -0.025734,
		43.053440, 36.506504, 22.886837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253059, 36.307281, 23.179064>,  <42.499062, 36.933517, 22.904852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253059, 36.307281, 23.179064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651157, 36.306652, 23.218010>,  <42.890018, 36.306274, 23.241377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651157, 36.306652, 23.218010>,  <42.253059, 36.307281, 23.179064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651157, 36.306652, 23.218010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094208, -0.268637, 0.958623,
		0.024648, -0.963240, -0.267509,
		0.995247, -0.001573, 0.097366,
		42.949730, 36.306179, 23.247219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366592, 35.740566, 23.528790>,  <42.253059, 36.307281, 23.179064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366592, 35.740566, 23.528790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684242, 35.970421, 23.607946>,  <42.874832, 36.108334, 23.655439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684242, 35.970421, 23.607946>,  <42.366592, 35.740566, 23.528790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684242, 35.970421, 23.607946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117054, -0.174898, 0.977604,
		0.596382, -0.799499, -0.071626,
		0.794120, 0.574641, 0.197890,
		42.922478, 36.142815, 23.667313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561428, 35.423485, 24.153032>,  <42.366592, 35.740566, 23.528790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.561428, 35.423485, 24.153032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786377, 35.753788, 24.135727>,  <42.921345, 35.951969, 24.125343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786377, 35.753788, 24.135727>,  <42.561428, 35.423485, 24.153032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786377, 35.753788, 24.135727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008747, 0.058258, 0.998263,
		0.826840, -0.561015, 0.039985,
		0.562370, 0.825753, -0.043263,
		42.955090, 36.001514, 24.122747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950138, 35.340050, 24.658972>,  <42.561428, 35.423485, 24.153032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950138, 35.340050, 24.658972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940964, 35.732513, 24.582239>,  <42.935459, 35.967991, 24.536200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940964, 35.732513, 24.582239>,  <42.950138, 35.340050, 24.658972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940964, 35.732513, 24.582239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233335, 0.181329, 0.955340,
		0.972126, 0.066671, 0.224780,
		-0.022934, 0.981160, -0.191831,
		42.934082, 36.026863, 24.524691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260323, 35.702343, 25.284649>,  <42.950138, 35.340050, 24.658972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260323, 35.702343, 25.284649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029945, 35.977215, 25.107529>,  <42.891720, 36.142139, 25.001257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029945, 35.977215, 25.107529>,  <43.260323, 35.702343, 25.284649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029945, 35.977215, 25.107529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195828, 0.409913, 0.890855,
		0.793688, 0.599794, -0.101517,
		-0.575943, 0.687181, -0.442800,
		42.857162, 36.183369, 24.974689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460648, 36.287827, 25.632887>,  <43.260323, 35.702343, 25.284649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460648, 36.287827, 25.632887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106339, 36.374771, 25.468861>,  <42.893753, 36.426937, 25.370445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106339, 36.374771, 25.468861>,  <43.460648, 36.287827, 25.632887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106339, 36.374771, 25.468861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278009, 0.458990, 0.843824,
		0.371631, 0.861442, -0.346134,
		-0.885777, 0.217362, -0.410064,
		42.840607, 36.439980, 25.345842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272305, 37.052094, 25.805202>,  <43.460648, 36.287827, 25.632887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272305, 37.052094, 25.805202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916153, 36.902390, 25.701551>,  <42.702461, 36.812569, 25.639360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916153, 36.902390, 25.701551>,  <43.272305, 37.052094, 25.805202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916153, 36.902390, 25.701551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436193, 0.538637, 0.720837,
		-0.130206, 0.754850, -0.642843,
		-0.890383, -0.374261, -0.259127,
		42.649036, 36.790112, 25.623814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786499, 37.606304, 25.742432>,  <43.272305, 37.052094, 25.805202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786499, 37.606304, 25.742432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555786, 37.286503, 25.809502>,  <42.417358, 37.094624, 25.849745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555786, 37.286503, 25.809502>,  <42.786499, 37.606304, 25.742432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555786, 37.286503, 25.809502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479154, 0.497355, 0.723222,
		-0.661612, 0.336800, -0.669952,
		-0.576784, -0.799503, 0.167677,
		42.382751, 37.046654, 25.859804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204952, 37.870022, 25.852381>,  <42.786499, 37.606304, 25.742432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204952, 37.870022, 25.852381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136086, 37.526520, 26.045422>,  <42.094765, 37.320419, 26.161245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136086, 37.526520, 26.045422>,  <42.204952, 37.870022, 25.852381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136086, 37.526520, 26.045422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571554, 0.486104, 0.661082,
		-0.802300, -0.162016, -0.574513,
		-0.172167, -0.858752, 0.482602,
		42.084435, 37.268894, 26.190203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551155, 37.953762, 26.093800>,  <42.204952, 37.870022, 25.852381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551155, 37.953762, 26.093800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700504, 37.656734, 26.316219>,  <41.790115, 37.478519, 26.449671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700504, 37.656734, 26.316219>,  <41.551155, 37.953762, 26.093800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700504, 37.656734, 26.316219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467524, 0.367090, 0.804155,
		-0.801258, -0.560215, -0.210106,
		0.373372, -0.742565, 0.556048,
		41.812515, 37.433964, 26.483034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000725, 37.666111, 26.400797>,  <41.551155, 37.953762, 26.093800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000725, 37.666111, 26.400797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305683, 37.571476, 26.641724>,  <41.488659, 37.514694, 26.786280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305683, 37.571476, 26.641724>,  <41.000725, 37.666111, 26.400797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305683, 37.571476, 26.641724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510656, 0.351753, 0.784539,
		-0.397478, -0.905702, 0.147360,
		0.762393, -0.236586, 0.602316,
		41.534401, 37.500500, 26.822418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759495, 37.376991, 27.096979>,  <41.000725, 37.666111, 26.400797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759495, 37.376991, 27.096979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134613, 37.496864, 27.167107>,  <41.359684, 37.568787, 27.209183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134613, 37.496864, 27.167107>,  <40.759495, 37.376991, 27.096979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134613, 37.496864, 27.167107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310698, 0.498999, 0.808991,
		0.154952, -0.813138, 0.561068,
		0.937793, 0.299678, 0.175320,
		41.415951, 37.586769, 27.219702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891159, 37.215931, 27.876171>,  <40.759495, 37.376991, 27.096979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891159, 37.215931, 27.876171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145222, 37.496101, 27.745960>,  <41.297661, 37.664204, 27.667833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145222, 37.496101, 27.745960>,  <40.891159, 37.215931, 27.876171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145222, 37.496101, 27.745960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298412, 0.611274, 0.733004,
		0.712405, -0.368433, 0.597273,
		0.635160, 0.700429, -0.325530,
		41.335770, 37.706230, 27.648302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255363, 37.286701, 28.482582>,  <40.891159, 37.215931, 27.876171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255363, 37.286701, 28.482582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355934, 37.615154, 28.277637>,  <41.416279, 37.812225, 28.154671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355934, 37.615154, 28.277637>,  <41.255363, 37.286701, 28.482582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355934, 37.615154, 28.277637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043738, 0.538468, 0.841510,
		0.966887, -0.189172, 0.171302,
		0.251431, 0.821137, -0.512364,
		41.431362, 37.861496, 28.123928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828072, 37.539761, 28.849293>,  <41.255363, 37.286701, 28.482582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828072, 37.539761, 28.849293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675915, 37.845871, 28.641582>,  <41.584621, 38.029537, 28.516956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675915, 37.845871, 28.641582>,  <41.828072, 37.539761, 28.849293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675915, 37.845871, 28.641582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008430, 0.558594, 0.829398,
		0.924787, 0.319875, -0.206034,
		-0.380393, 0.765280, -0.519277,
		41.561798, 38.075455, 28.485800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260273, 38.159458, 28.992701>,  <41.828072, 37.539761, 28.849293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260273, 38.159458, 28.992701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903419, 38.296387, 28.874779>,  <41.689308, 38.378544, 28.804026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903419, 38.296387, 28.874779>,  <42.260273, 38.159458, 28.992701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903419, 38.296387, 28.874779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096296, 0.493471, 0.864415,
		0.441383, 0.799565, -0.407280,
		-0.892137, 0.342319, -0.294804,
		41.635777, 38.399082, 28.786337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239040, 38.878239, 29.260071>,  <42.260273, 38.159458, 28.992701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239040, 38.878239, 29.260071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857033, 38.790287, 29.180477>,  <41.627831, 38.737514, 29.132721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857033, 38.790287, 29.180477>,  <42.239040, 38.878239, 29.260071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857033, 38.790287, 29.180477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295279, 0.642897, 0.706749,
		-0.027475, 0.733713, -0.678904,
		-0.955016, -0.219884, -0.198986,
		41.570526, 38.724323, 29.120781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943146, 39.538326, 29.115026>,  <42.239040, 38.878239, 29.260071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943146, 39.538326, 29.115026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660721, 39.276402, 29.222883>,  <41.491268, 39.119247, 29.287598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660721, 39.276402, 29.222883>,  <41.943146, 39.538326, 29.115026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660721, 39.276402, 29.222883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337951, 0.646180, 0.684281,
		-0.622311, 0.392017, -0.677534,
		-0.706059, -0.654809, 0.269642,
		41.448902, 39.079960, 29.303776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361221, 40.017918, 29.306427>,  <41.943146, 39.538326, 29.115026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361221, 40.017918, 29.306427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303642, 39.654083, 29.462343>,  <41.269093, 39.435783, 29.555893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303642, 39.654083, 29.462343>,  <41.361221, 40.017918, 29.306427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303642, 39.654083, 29.462343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357566, 0.415091, 0.836568,
		-0.922727, -0.018950, -0.384989,
		-0.143952, -0.909582, 0.389792,
		41.260456, 39.381210, 29.579281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732441, 40.074657, 29.675459>,  <41.361221, 40.017918, 29.306427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732441, 40.074657, 29.675459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871082, 39.738922, 29.842968>,  <40.954266, 39.537479, 29.943474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871082, 39.738922, 29.842968>,  <40.732441, 40.074657, 29.675459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871082, 39.738922, 29.842968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559787, 0.173145, 0.810345,
		-0.752665, -0.515293, -0.409839,
		0.346604, -0.839341, 0.418775,
		40.975063, 39.487122, 29.968601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150326, 39.849831, 30.073954>,  <40.732441, 40.074657, 29.675459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150326, 39.849831, 30.073954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472942, 39.667267, 30.224251>,  <40.666512, 39.557728, 30.314430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472942, 39.667267, 30.224251>,  <40.150326, 39.849831, 30.073954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472942, 39.667267, 30.224251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395345, 0.056147, 0.916815,
		-0.439537, -0.887998, -0.135153,
		0.806542, -0.456407, 0.375744,
		40.714905, 39.530346, 30.336973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895561, 39.394218, 30.552507>,  <40.150326, 39.849831, 30.073954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895561, 39.394218, 30.552507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272892, 39.437294, 30.678074>,  <40.499290, 39.463139, 30.753414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272892, 39.437294, 30.678074>,  <39.895561, 39.394218, 30.552507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272892, 39.437294, 30.678074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327456, 0.148221, 0.933168,
		0.053963, -0.983073, 0.175084,
		0.943324, 0.107689, 0.313915,
		40.555889, 39.469601, 30.772247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049664, 38.946747, 31.216719>,  <39.895561, 39.394218, 30.552507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049664, 38.946747, 31.216719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351498, 39.209209, 31.213821>,  <40.532600, 39.366688, 31.212084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351498, 39.209209, 31.213821>,  <40.049664, 38.946747, 31.216719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351498, 39.209209, 31.213821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112394, 0.140110, 0.983736,
		0.646501, -0.741503, 0.179474,
		0.754589, 0.656158, -0.007241,
		40.577873, 39.406055, 31.211649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495560, 38.807674, 31.776873>,  <40.049664, 38.946747, 31.216719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495560, 38.807674, 31.776873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589069, 39.188126, 31.696165>,  <40.645176, 39.416397, 31.647741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589069, 39.188126, 31.696165>,  <40.495560, 38.807674, 31.776873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589069, 39.188126, 31.696165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171159, 0.244535, 0.954415,
		0.957107, -0.188584, 0.219960,
		0.233776, 0.951125, -0.201768,
		40.659203, 39.473465, 31.635635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854710, 38.991127, 32.366207>,  <40.495560, 38.807674, 31.776873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854710, 38.991127, 32.366207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759766, 39.336048, 32.187279>,  <40.702801, 39.542999, 32.079922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759766, 39.336048, 32.187279>,  <40.854710, 38.991127, 32.366207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759766, 39.336048, 32.187279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179648, 0.413574, 0.892571,
		0.954666, 0.292220, 0.056745,
		-0.237359, 0.862302, -0.447322,
		40.688557, 39.594738, 32.053082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289234, 39.631058, 32.651749>,  <40.854710, 38.991127, 32.366207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289234, 39.631058, 32.651749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932743, 39.735153, 32.503166>,  <40.718849, 39.797611, 32.414017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932743, 39.735153, 32.503166>,  <41.289234, 39.631058, 32.651749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932743, 39.735153, 32.503166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321352, 0.215628, 0.922083,
		0.320059, 0.941159, -0.108546,
		-0.891232, 0.260240, -0.371457,
		40.665375, 39.813225, 32.391727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966824, 40.111107, 33.092651>,  <41.289234, 39.631058, 32.651749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966824, 40.111107, 33.092651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643738, 40.035641, 32.869225>,  <40.449886, 39.990360, 32.735168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643738, 40.035641, 32.869225>,  <40.966824, 40.111107, 33.092651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643738, 40.035641, 32.869225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588978, 0.215831, 0.778795,
		-0.026372, 0.958032, -0.285448,
		-0.807719, -0.188661, -0.558567,
		40.401421, 39.979042, 32.701653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574177, 40.684357, 33.153923>,  <40.966824, 40.111107, 33.092651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574177, 40.684357, 33.153923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331268, 40.386494, 33.043144>,  <40.185524, 40.207775, 32.976677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331268, 40.386494, 33.043144>,  <40.574177, 40.684357, 33.153923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331268, 40.386494, 33.043144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639568, 0.251393, 0.726467,
		-0.471348, 0.618292, -0.628925,
		-0.607276, -0.744659, -0.276947,
		40.149086, 40.163097, 32.960060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968040, 40.956718, 33.191677>,  <40.574177, 40.684357, 33.153923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968040, 40.956718, 33.191677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883175, 40.565941, 33.201134>,  <39.832256, 40.331474, 33.206806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883175, 40.565941, 33.201134>,  <39.968040, 40.956718, 33.191677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883175, 40.565941, 33.201134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606579, 0.150618, 0.780626,
		-0.766191, 0.151284, -0.624552,
		-0.212165, -0.976948, 0.023637,
		39.819527, 40.272858, 33.208225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312023, 40.916607, 33.237335>,  <39.968040, 40.956718, 33.191677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312023, 40.916607, 33.237335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441471, 40.579441, 33.409275>,  <39.519138, 40.377140, 33.512440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441471, 40.579441, 33.409275>,  <39.312023, 40.916607, 33.237335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441471, 40.579441, 33.409275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628674, 0.147967, 0.763462,
		-0.707136, -0.517302, -0.482034,
		0.323615, -0.842914, 0.429847,
		39.538555, 40.326569, 33.538231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718868, 40.650211, 33.411652>,  <39.312023, 40.916607, 33.237335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718868, 40.650211, 33.411652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986557, 40.475243, 33.651920>,  <39.147171, 40.370262, 33.796082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986557, 40.475243, 33.651920>,  <38.718868, 40.650211, 33.411652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986557, 40.475243, 33.651920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601572, 0.155573, 0.783523,
		-0.436176, -0.885698, -0.159025,
		0.669225, -0.437419, 0.600669,
		39.187325, 40.344017, 33.832123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302685, 40.129669, 33.751186>,  <38.718868, 40.650211, 33.411652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302685, 40.129669, 33.751186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627361, 40.235176, 33.959644>,  <38.822166, 40.298481, 34.084721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627361, 40.235176, 33.959644>,  <38.302685, 40.129669, 33.751186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627361, 40.235176, 33.959644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576444, 0.217840, 0.787565,
		0.094204, -0.939668, 0.328862,
		0.811689, 0.263762, 0.521144,
		38.870869, 40.314304, 34.115986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221897, 39.808254, 34.440254>,  <38.302685, 40.129669, 33.751186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221897, 39.808254, 34.440254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499691, 40.085087, 34.518963>,  <38.666367, 40.251186, 34.566189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499691, 40.085087, 34.518963>,  <38.221897, 39.808254, 34.440254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499691, 40.085087, 34.518963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413393, 0.159964, 0.896392,
		0.588898, -0.703873, 0.397193,
		0.694483, 0.692080, 0.196774,
		38.708035, 40.292709, 34.577995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394650, 39.693630, 35.009018>,  <38.221897, 39.808254, 34.440254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394650, 39.693630, 35.009018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554424, 40.059917, 34.991547>,  <38.650288, 40.279690, 34.981064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554424, 40.059917, 34.991547>,  <38.394650, 39.693630, 35.009018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554424, 40.059917, 34.991547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147023, 0.111013, 0.982884,
		0.904894, -0.386179, 0.178974,
		0.399437, 0.915719, -0.043678,
		38.674255, 40.334633, 34.978443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879154, 39.784771, 35.626034>,  <38.394650, 39.693630, 35.009018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879154, 39.784771, 35.626034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739853, 40.140957, 35.508873>,  <38.656273, 40.354668, 35.438576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739853, 40.140957, 35.508873>,  <38.879154, 39.784771, 35.626034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739853, 40.140957, 35.508873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219711, 0.226220, 0.948974,
		0.911290, 0.394833, 0.116865,
		-0.348249, 0.890467, -0.292901,
		38.635380, 40.408096, 35.421001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989651, 40.036404, 36.251202>,  <38.879154, 39.784771, 35.626034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989651, 40.036404, 36.251202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775604, 40.314487, 36.059227>,  <38.647179, 40.481339, 35.944042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775604, 40.314487, 36.059227>,  <38.989651, 40.036404, 36.251202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775604, 40.314487, 36.059227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275780, 0.393233, 0.877105,
		0.798499, 0.601706, -0.018698,
		-0.535112, 0.695211, -0.479935,
		38.615070, 40.523052, 35.915245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185081, 40.696842, 36.480606>,  <38.989651, 40.036404, 36.251202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185081, 40.696842, 36.480606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813992, 40.729191, 36.334843>,  <38.591339, 40.748600, 36.247383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813992, 40.729191, 36.334843>,  <39.185081, 40.696842, 36.480606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813992, 40.729191, 36.334843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290429, 0.456895, 0.840772,
		0.234489, 0.885837, -0.400385,
		-0.927721, 0.080868, -0.364410,
		38.535675, 40.753452, 36.225521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892601, 41.382687, 36.740963>,  <39.185081, 40.696842, 36.480606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892601, 41.382687, 36.740963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581036, 41.139511, 36.679375>,  <38.394096, 40.993607, 36.642422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581036, 41.139511, 36.679375>,  <38.892601, 41.382687, 36.740963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581036, 41.139511, 36.679375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529384, 0.505764, 0.681143,
		-0.336219, 0.612061, -0.715778,
		-0.778916, -0.607935, -0.153967,
		38.347363, 40.957130, 36.633186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313492, 41.778507, 36.502548>,  <38.892601, 41.382687, 36.740963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313492, 41.778507, 36.502548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197144, 41.444973, 36.690216>,  <38.127335, 41.244854, 36.802818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197144, 41.444973, 36.690216>,  <38.313492, 41.778507, 36.502548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197144, 41.444973, 36.690216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417165, 0.551834, 0.722117,
		-0.861026, 0.014323, -0.508359,
		-0.290872, -0.833831, 0.469168,
		38.109882, 41.194824, 36.830967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567604, 41.642879, 36.630520>,  <38.313492, 41.778507, 36.502548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567604, 41.642879, 36.630520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308575, 41.338264, 36.641258>,  <37.153156, 41.155495, 36.647701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308575, 41.338264, 36.641258>,  <37.567604, 41.642879, 36.630520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308575, 41.338264, 36.641258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079892, -0.032810, 0.996263,
		-0.757806, 0.647295, 0.082088,
		-0.647570, -0.761533, 0.026850,
		37.114304, 41.109806, 36.649315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061344, 41.913551, 37.043194>,  <37.567604, 41.642879, 36.630520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061344, 41.913551, 37.043194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078510, 41.513962, 37.048920>,  <37.088810, 41.274208, 37.052357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078510, 41.513962, 37.048920>,  <37.061344, 41.913551, 37.043194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078510, 41.513962, 37.048920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135157, 0.008389, 0.990789,
		-0.989894, -0.044457, -0.134659,
		0.042918, -0.998976, 0.014313,
		37.091385, 41.214268, 37.053215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409031, 41.435715, 37.156494>,  <37.061344, 41.913551, 37.043194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409031, 41.435715, 37.156494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749622, 41.304794, 37.320377>,  <36.953976, 41.226242, 37.418709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749622, 41.304794, 37.320377>,  <36.409031, 41.435715, 37.156494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749622, 41.304794, 37.320377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415864, 0.054475, 0.907794,
		-0.319443, -0.943348, -0.089729,
		0.851477, -0.327304, 0.409706,
		37.005066, 41.206604, 37.443291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257301, 40.851261, 37.650845>,  <36.409031, 41.435715, 37.156494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257301, 40.851261, 37.650845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606144, 41.009304, 37.766304>,  <36.815449, 41.104130, 37.835579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606144, 41.009304, 37.766304>,  <36.257301, 40.851261, 37.650845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606144, 41.009304, 37.766304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408348, 0.262671, 0.874217,
		0.269610, -0.880272, 0.390425,
		0.872102, 0.395128, 0.288638,
		36.867775, 41.127838, 37.852898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427269, 40.649586, 38.337128>,  <36.257301, 40.851261, 37.650845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427269, 40.649586, 38.337128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565044, 41.024727, 38.320164>,  <36.647709, 41.249809, 38.309986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565044, 41.024727, 38.320164>,  <36.427269, 40.649586, 38.337128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565044, 41.024727, 38.320164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455846, 0.206568, 0.865757,
		0.820711, -0.278868, 0.498665,
		0.344440, 0.937850, -0.042412,
		36.668377, 41.306084, 38.307442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756035, 40.753876, 38.907272>,  <36.427269, 40.649586, 38.337128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756035, 40.753876, 38.907272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646297, 41.123672, 38.801407>,  <36.580456, 41.345551, 38.737888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646297, 41.123672, 38.801407>,  <36.756035, 40.753876, 38.907272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646297, 41.123672, 38.801407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160114, 0.227466, 0.960533,
		0.948210, 0.305888, 0.085621,
		-0.274340, 0.924495, -0.264662,
		36.563995, 41.401020, 38.722008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850945, 41.247890, 39.465565>,  <36.756035, 40.753876, 38.907272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850945, 41.247890, 39.465565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613194, 41.463123, 39.226505>,  <36.470543, 41.592262, 39.083069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613194, 41.463123, 39.226505>,  <36.850945, 41.247890, 39.465565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613194, 41.463123, 39.226505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361458, 0.485115, 0.796248,
		0.718377, 0.689295, -0.093846,
		-0.594376, 0.538085, -0.597647,
		36.434879, 41.624550, 39.047211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935562, 41.994125, 39.615540>,  <36.850945, 41.247890, 39.465565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935562, 41.994125, 39.615540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581280, 42.010822, 39.430595>,  <36.368710, 42.020840, 39.319630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581280, 42.010822, 39.430595>,  <36.935562, 41.994125, 39.615540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581280, 42.010822, 39.430595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368652, 0.542103, 0.755129,
		0.282169, 0.839274, -0.464757,
		-0.885707, 0.041740, -0.462365,
		36.315567, 42.023346, 39.291885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708099, 42.633991, 39.825260>,  <36.935562, 41.994125, 39.615540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708099, 42.633991, 39.825260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367683, 42.459183, 39.708820>,  <36.163433, 42.354298, 39.638958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367683, 42.459183, 39.708820>,  <36.708099, 42.633991, 39.825260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367683, 42.459183, 39.708820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479447, 0.420646, 0.770186,
		-0.214136, 0.795029, -0.567516,
		-0.851044, -0.437019, -0.291099,
		36.112370, 42.328075, 39.621490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191605, 43.137920, 39.879982>,  <36.708099, 42.633991, 39.825260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191605, 43.137920, 39.879982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963497, 42.810497, 39.852379>,  <35.826633, 42.614044, 39.835819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963497, 42.810497, 39.852379>,  <36.191605, 43.137920, 39.879982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963497, 42.810497, 39.852379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467773, 0.254536, 0.846404,
		-0.675263, 0.514958, -0.528051,
		-0.570271, -0.818553, -0.069004,
		35.792416, 42.564930, 39.831676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477688, 43.355911, 39.999573>,  <36.191605, 43.137920, 39.879982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477688, 43.355911, 39.999573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530258, 42.968876, 40.085835>,  <35.561798, 42.736656, 40.137592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530258, 42.968876, 40.085835>,  <35.477688, 43.355911, 39.999573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530258, 42.968876, 40.085835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380846, 0.151565, 0.912132,
		-0.915251, -0.202006, -0.348582,
		0.131423, -0.967585, 0.215654,
		35.569687, 42.678600, 40.150532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853523, 43.183319, 40.358147>,  <35.477688, 43.355911, 39.999573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853523, 43.183319, 40.358147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164566, 42.945637, 40.440369>,  <35.351192, 42.803028, 40.489700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164566, 42.945637, 40.440369>,  <34.853523, 43.183319, 40.358147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164566, 42.945637, 40.440369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262345, -0.009524, 0.964927,
		-0.571409, -0.804256, -0.163293,
		0.777603, -0.594207, 0.205551,
		35.397846, 42.767376, 40.502033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539448, 42.603962, 40.768902>,  <34.853523, 43.183319, 40.358147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539448, 42.603962, 40.768902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932922, 42.650311, 40.823936>,  <35.169006, 42.678120, 40.856956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932922, 42.650311, 40.823936>,  <34.539448, 42.603962, 40.768902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932922, 42.650311, 40.823936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135435, -0.026314, 0.990437,
		0.118388, -0.992915, -0.010191,
		0.983688, 0.115875, 0.137590,
		35.228027, 42.685074, 40.865215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956081, 41.954865, 41.115810>,  <34.539448, 42.603962, 40.768902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956081, 41.954865, 41.115810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094223, 42.316837, 41.215267>,  <35.177109, 42.534023, 41.274940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094223, 42.316837, 41.215267>,  <34.956081, 41.954865, 41.115810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094223, 42.316837, 41.215267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014812, -0.259653, 0.965588,
		0.938356, -0.337151, -0.076268,
		0.345353, 0.904936, 0.248641,
		35.197830, 42.588318, 41.289860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424965, 41.776760, 40.530884>,  <34.956081, 41.954865, 41.115810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424965, 41.776760, 40.530884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271343, 42.079964, 40.320011>,  <35.179169, 42.261887, 40.193485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271343, 42.079964, 40.320011>,  <35.424965, 41.776760, 40.530884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271343, 42.079964, 40.320011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245977, -0.466341, -0.849718,
		-0.889941, -0.456016, -0.007351,
		-0.384057, 0.758008, -0.527185,
		35.156124, 42.307365, 40.161854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568840, 41.467503, 39.997433>,  <35.424965, 41.776760, 40.530884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568840, 41.467503, 39.997433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497421, 41.833958, 39.853874>,  <35.454571, 42.053833, 39.767738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497421, 41.833958, 39.853874>,  <35.568840, 41.467503, 39.997433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497421, 41.833958, 39.853874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375353, -0.273759, -0.885532,
		-0.909523, -0.292819, -0.294998,
		-0.178542, 0.916140, -0.358900,
		35.443859, 42.108799, 39.746204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107201, 41.528263, 39.288395>,  <35.568840, 41.467503, 39.997433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107201, 41.528263, 39.288395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408043, 41.773674, 39.384663>,  <35.588547, 41.920921, 39.442421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408043, 41.773674, 39.384663>,  <35.107201, 41.528263, 39.288395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408043, 41.773674, 39.384663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467398, -0.239110, -0.851097,
		-0.464627, 0.752601, -0.466598,
		0.752105, 0.613529, 0.240667,
		35.633675, 41.957733, 39.456863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174828, 41.978012, 38.676369>,  <35.107201, 41.528263, 39.288395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174828, 41.978012, 38.676369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525890, 41.980450, 38.868065>,  <35.736530, 41.981911, 38.983082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525890, 41.980450, 38.868065>,  <35.174828, 41.978012, 38.676369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525890, 41.980450, 38.868065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457113, -0.311236, -0.833174,
		0.144081, 0.950313, -0.275945,
		0.877661, 0.006093, 0.479244,
		35.789188, 41.982277, 39.011837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657749, 42.318966, 38.292271>,  <35.174828, 41.978012, 38.676369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657749, 42.318966, 38.292271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909107, 42.104816, 38.518013>,  <36.059921, 41.976326, 38.653458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909107, 42.104816, 38.518013>,  <35.657749, 42.318966, 38.292271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909107, 42.104816, 38.518013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616090, -0.100409, -0.781250,
		0.474924, 0.838628, 0.266740,
		0.628394, -0.535370, 0.564357,
		36.097626, 41.944206, 38.687321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215282, 42.648594, 38.264511>,  <35.657749, 42.318966, 38.292271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215282, 42.648594, 38.264511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326939, 42.288094, 38.397068>,  <36.393932, 42.071793, 38.476604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326939, 42.288094, 38.397068>,  <36.215282, 42.648594, 38.264511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326939, 42.288094, 38.397068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688248, -0.052884, -0.723545,
		0.669622, 0.430056, 0.605523,
		0.279143, -0.901252, 0.331397,
		36.410683, 42.017719, 38.496487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931355, 42.559937, 38.132095>,  <36.215282, 42.648594, 38.264511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931355, 42.559937, 38.132095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812706, 42.180954, 38.180008>,  <36.741516, 41.953564, 38.208755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812706, 42.180954, 38.180008>,  <36.931355, 42.559937, 38.132095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812706, 42.180954, 38.180008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736074, -0.306731, -0.603416,
		0.608450, -0.090814, 0.788379,
		-0.296619, -0.947454, 0.119784,
		36.723721, 41.896717, 38.215942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580734, 42.126301, 37.948097>,  <36.931355, 42.559937, 38.132095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580734, 42.126301, 37.948097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322479, 41.842018, 38.059845>,  <37.167526, 41.671448, 38.126892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322479, 41.842018, 38.059845>,  <37.580734, 42.126301, 37.948097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322479, 41.842018, 38.059845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461100, -0.654442, -0.599243,
		0.608717, -0.258078, 0.750240,
		-0.645640, -0.710705, 0.279370,
		37.128788, 41.628807, 38.143658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037251, 41.594509, 38.160423>,  <37.580734, 42.126301, 37.948097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037251, 41.594509, 38.160423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678566, 41.437584, 38.078445>,  <37.463356, 41.343430, 38.029259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678566, 41.437584, 38.078445>,  <38.037251, 41.594509, 38.160423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678566, 41.437584, 38.078445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406518, -0.546799, -0.731953,
		0.175095, -0.739661, 0.649802,
		-0.896708, -0.392317, -0.204944,
		37.409554, 41.319889, 38.016964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077431, 40.876129, 38.167812>,  <38.037251, 41.594509, 38.160423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077431, 40.876129, 38.167812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775551, 40.982086, 37.927727>,  <37.594421, 41.045662, 37.783676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775551, 40.982086, 37.927727>,  <38.077431, 40.876129, 38.167812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775551, 40.982086, 37.927727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398680, -0.541400, -0.740230,
		-0.521029, -0.797949, 0.302995,
		-0.754707, 0.264883, -0.600211,
		37.549141, 41.061554, 37.747662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006454, 40.364822, 37.682907>,  <38.077431, 40.876129, 38.167812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006454, 40.364822, 37.682907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834717, 40.664291, 37.480862>,  <37.731674, 40.843975, 37.359634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834717, 40.664291, 37.480862>,  <38.006454, 40.364822, 37.682907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834717, 40.664291, 37.480862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334104, -0.387947, -0.858995,
		-0.839068, -0.537570, -0.083571,
		-0.429349, 0.748676, -0.505118,
		37.705914, 40.888893, 37.329327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568188, 40.079597, 37.194386>,  <38.006454, 40.364822, 37.682907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568188, 40.079597, 37.194386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710403, 40.434258, 37.076103>,  <37.795734, 40.647053, 37.005135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710403, 40.434258, 37.076103>,  <37.568188, 40.079597, 37.194386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710403, 40.434258, 37.076103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282031, -0.403399, -0.870476,
		-0.891094, 0.226093, -0.393488,
		0.355541, 0.886652, -0.295701,
		37.817066, 40.700253, 36.987392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295033, 40.166370, 36.569572>,  <37.568188, 40.079597, 37.194386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295033, 40.166370, 36.569572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623852, 40.393684, 36.583897>,  <37.821144, 40.530075, 36.592491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623852, 40.393684, 36.583897>,  <37.295033, 40.166370, 36.569572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623852, 40.393684, 36.583897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270486, -0.334373, -0.902791,
		-0.501069, 0.751827, -0.428585,
		0.822050, 0.568287, 0.035814,
		37.870468, 40.564171, 36.594643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429588, 40.342724, 35.944668>,  <37.295033, 40.166370, 36.569572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429588, 40.342724, 35.944668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785118, 40.378368, 36.124470>,  <37.998436, 40.399754, 36.232353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785118, 40.378368, 36.124470>,  <37.429588, 40.342724, 35.944668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785118, 40.378368, 36.124470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434661, -0.474616, -0.765381,
		0.145143, 0.875671, -0.460581,
		0.888821, 0.089107, 0.449507,
		38.051765, 40.405102, 36.259323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449425, 40.961742, 35.727962>,  <37.429588, 40.342724, 35.944668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449425, 40.961742, 35.727962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813499, 40.951923, 35.893353>,  <38.031944, 40.946033, 35.992588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813499, 40.951923, 35.893353>,  <37.449425, 40.961742, 35.727962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813499, 40.951923, 35.893353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406606, -0.137355, -0.903219,
		0.078961, 0.990218, -0.115039,
		0.910185, -0.024544, 0.413475,
		38.086555, 40.944561, 36.017395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748970, 41.331867, 35.270565>,  <37.449425, 40.961742, 35.727962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748970, 41.331867, 35.270565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007153, 41.097878, 35.467007>,  <38.162064, 40.957481, 35.584873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007153, 41.097878, 35.467007>,  <37.748970, 41.331867, 35.270565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007153, 41.097878, 35.467007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517632, -0.137779, -0.844437,
		0.561641, 0.799261, 0.213872,
		0.645459, -0.584977, 0.491105,
		38.200790, 40.922386, 35.614338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416100, 41.634483, 35.109215>,  <37.748970, 41.331867, 35.270565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416100, 41.634483, 35.109215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485291, 41.256886, 35.221603>,  <38.526806, 41.030327, 35.289036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485291, 41.256886, 35.221603>,  <38.416100, 41.634483, 35.109215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485291, 41.256886, 35.221603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560520, -0.140215, -0.816185,
		0.809874, 0.298673, 0.504875,
		0.172981, -0.943999, 0.280969,
		38.537186, 40.973686, 35.305893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065170, 41.581726, 34.869701>,  <38.416100, 41.634483, 35.109215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065170, 41.581726, 34.869701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945995, 41.202568, 34.914845>,  <38.874493, 40.975075, 34.941933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945995, 41.202568, 34.914845>,  <39.065170, 41.581726, 34.869701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945995, 41.202568, 34.914845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505234, -0.256895, -0.823859,
		0.809922, -0.188433, 0.555445,
		-0.297933, -0.947891, 0.112863,
		38.856617, 40.918201, 34.948704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679504, 41.108082, 34.795830>,  <39.065170, 41.581726, 34.869701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679504, 41.108082, 34.795830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377754, 40.847389, 34.764431>,  <39.196705, 40.690975, 34.745590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377754, 40.847389, 34.764431>,  <39.679504, 41.108082, 34.795830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377754, 40.847389, 34.764431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514821, -0.513190, -0.686728,
		0.407276, -0.558466, 0.722663,
		-0.754378, -0.651730, -0.078501,
		39.151440, 40.651871, 34.740879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950390, 40.443447, 34.896553>,  <39.679504, 41.108082, 34.795830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950390, 40.443447, 34.896553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626400, 40.430222, 34.662338>,  <39.432007, 40.422287, 34.521809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626400, 40.430222, 34.662338>,  <39.950390, 40.443447, 34.896553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626400, 40.430222, 34.662338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524162, -0.488642, -0.697484,
		-0.263057, -0.871858, 0.413116,
		-0.809972, -0.033061, -0.585535,
		39.383408, 40.420303, 34.486679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073460, 39.773808, 34.542747>,  <39.950390, 40.443447, 34.896553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073460, 39.773808, 34.542747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784611, 39.932411, 34.316006>,  <39.611301, 40.027573, 34.179962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784611, 39.932411, 34.316006>,  <40.073460, 39.773808, 34.542747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784611, 39.932411, 34.316006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452987, -0.348266, -0.820679,
		-0.522826, -0.849405, 0.071874,
		-0.722120, 0.396514, -0.566851,
		39.567974, 40.051365, 34.145950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953053, 39.227680, 34.001152>,  <40.073460, 39.773808, 34.542747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953053, 39.227680, 34.001152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794014, 39.552555, 33.830379>,  <39.698593, 39.747478, 33.727917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794014, 39.552555, 33.830379>,  <39.953053, 39.227680, 34.001152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794014, 39.552555, 33.830379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359108, -0.290440, -0.886953,
		-0.844370, -0.505961, -0.176186,
		-0.397592, 0.812187, -0.426934,
		39.674736, 39.796211, 33.702301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573975, 38.608540, 34.098934>,  <39.953053, 39.227680, 34.001152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573975, 38.608540, 34.098934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690186, 38.785889, 34.438114>,  <39.759911, 38.892300, 34.641621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690186, 38.785889, 34.438114>,  <39.573975, 38.608540, 34.098934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690186, 38.785889, 34.438114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478943, -0.699794, 0.530002,
		0.828378, -0.560097, 0.009044,
		0.290523, 0.443373, 0.847949,
		39.777344, 38.918900, 34.692497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848122, 38.103340, 34.583614>,  <39.573975, 38.608540, 34.098934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848122, 38.103340, 34.583614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704971, 38.420067, 34.781586>,  <39.619083, 38.610104, 34.900368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704971, 38.420067, 34.781586>,  <39.848122, 38.103340, 34.583614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704971, 38.420067, 34.781586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606721, -0.600083, 0.521335,
		0.709801, -0.113715, 0.695163,
		-0.357871, 0.791814, 0.494933,
		39.597610, 38.657612, 34.930065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453262, 37.717743, 34.922615>,  <39.848122, 38.103340, 34.583614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453262, 37.717743, 34.922615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534447, 37.434868, 35.193523>,  <40.583157, 37.265144, 35.356068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534447, 37.434868, 35.193523>,  <40.453262, 37.717743, 34.922615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534447, 37.434868, 35.193523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973041, 0.068295, -0.220288,
		0.109530, 0.703722, 0.701982,
		0.202963, -0.707186, 0.677270,
		40.595337, 37.222713, 35.396706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980209, 37.880775, 35.288498>,  <40.453262, 37.717743, 34.922615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980209, 37.880775, 35.288498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999035, 37.481300, 35.296494>,  <41.010330, 37.241615, 35.301292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999035, 37.481300, 35.296494>,  <40.980209, 37.880775, 35.288498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999035, 37.481300, 35.296494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943313, 0.037852, -0.329739,
		0.328551, 0.034377, 0.943861,
		0.047063, -0.998692, 0.019992,
		41.013153, 37.181694, 35.302490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583347, 37.479458, 35.723476>,  <40.980209, 37.880775, 35.288498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583347, 37.479458, 35.723476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464638, 37.333336, 35.370552>,  <41.393414, 37.245663, 35.158798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464638, 37.333336, 35.370552>,  <41.583347, 37.479458, 35.723476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464638, 37.333336, 35.370552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947029, 0.006154, -0.321090,
		0.122724, -0.930869, 0.344124,
		-0.296775, -0.365301, -0.882315,
		41.375607, 37.223747, 35.105858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072132, 37.132004, 35.349133>,  <41.583347, 37.479458, 35.723476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072132, 37.132004, 35.349133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849941, 37.216991, 35.027561>,  <41.716629, 37.267982, 34.834618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849941, 37.216991, 35.027561>,  <42.072132, 37.132004, 35.349133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849941, 37.216991, 35.027561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829935, 0.201566, -0.520172,
		0.051526, -0.956154, -0.288297,
		-0.555476, 0.212465, -0.803931,
		41.683300, 37.280731, 34.786381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178097, 36.523457, 34.791916>,  <42.072132, 37.132004, 35.349133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178097, 36.523457, 34.791916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094761, 36.897453, 34.677101>,  <42.044762, 37.121849, 34.608212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094761, 36.897453, 34.677101>,  <42.178097, 36.523457, 34.791916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094761, 36.897453, 34.677101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966804, 0.152479, -0.205035,
		-0.147938, -0.320227, -0.935719,
		-0.208335, 0.934989, -0.287039,
		42.032261, 37.177952, 34.590988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645645, 36.729671, 34.197765>,  <42.178097, 36.523457, 34.791916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645645, 36.729671, 34.197765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542236, 37.088440, 34.341267>,  <42.480190, 37.303699, 34.427368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542236, 37.088440, 34.341267>,  <42.645645, 36.729671, 34.197765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542236, 37.088440, 34.341267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965740, 0.231233, 0.117809,
		0.022709, 0.376920, -0.925968,
		-0.258518, 0.896919, 0.358755,
		42.464680, 37.357517, 34.448895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075466, 37.255939, 33.852543>,  <42.645645, 36.729671, 34.197765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075466, 37.255939, 33.852543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.968472, 37.370728, 34.220478>,  <42.904274, 37.439602, 34.441238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.968472, 37.370728, 34.220478>,  <43.075466, 37.255939, 33.852543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968472, 37.370728, 34.220478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918626, 0.364074, 0.153549,
		-0.290825, 0.886058, -0.361002,
		-0.267484, 0.286970, 0.919837,
		42.888226, 37.456818, 34.496429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338158, 37.928211, 33.932175>,  <43.075466, 37.255939, 33.852543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338158, 37.928211, 33.932175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.279915, 37.777603, 34.298134>,  <43.244968, 37.687241, 34.517708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.279915, 37.777603, 34.298134>,  <43.338158, 37.928211, 33.932175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.279915, 37.777603, 34.298134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969953, 0.127860, 0.206986,
		-0.194912, 0.917544, 0.346588,
		-0.145604, -0.376518, 0.914895,
		43.236233, 37.664646, 34.572601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081169, 37.955944, 34.155624>,  <43.338158, 37.928211, 33.932175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081169, 37.955944, 34.155624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859776, 37.741436, 34.410519>,  <43.726940, 37.612732, 34.563454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859776, 37.741436, 34.410519>,  <44.081169, 37.955944, 34.155624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859776, 37.741436, 34.410519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677703, -0.734736, -0.029691,
		0.484120, 0.415421, 0.770099,
		-0.553485, -0.536273, 0.637233,
		43.693729, 37.580555, 34.601688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344086, 37.756580, 34.884113>,  <44.081169, 37.955944, 34.155624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344086, 37.756580, 34.884113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.167759, 37.433064, 34.728397>,  <44.061962, 37.238953, 34.634968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.167759, 37.433064, 34.728397>,  <44.344086, 37.756580, 34.884113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.167759, 37.433064, 34.728397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853929, -0.511504, 0.095752,
		-0.276566, -0.290218, 0.916125,
		-0.440812, -0.808788, -0.389290,
		44.035515, 37.190426, 34.611610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178356, 37.224594, 35.314003>,  <44.344086, 37.756580, 34.884113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178356, 37.224594, 35.314003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249966, 37.051380, 34.960636>,  <44.292931, 36.947453, 34.748615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249966, 37.051380, 34.960636>,  <44.178356, 37.224594, 35.314003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.249966, 37.051380, 34.960636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809227, -0.445877, 0.382549,
		-0.559554, -0.783374, 0.270600,
		0.179025, -0.433034, -0.883420,
		44.303673, 36.921471, 34.695610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184383, 36.458572, 35.444977>,  <44.178356, 37.224594, 35.314003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184383, 36.458572, 35.444977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.434887, 36.561886, 35.150742>,  <44.585190, 36.623875, 34.974201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.434887, 36.561886, 35.150742>,  <44.184383, 36.458572, 35.444977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.434887, 36.561886, 35.150742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651386, -0.691779, 0.311671,
		-0.428367, -0.674339, -0.601472,
		0.626258, 0.258281, -0.735590,
		44.622765, 36.639370, 34.930065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438450, 35.876106, 35.076618>,  <44.184383, 36.458572, 35.444977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438450, 35.876106, 35.076618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.708164, 36.171494, 35.076572>,  <44.869991, 36.348728, 35.076546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.708164, 36.171494, 35.076572>,  <44.438450, 35.876106, 35.076618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.708164, 36.171494, 35.076572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687020, -0.627251, 0.366825,
		0.270819, -0.247421, -0.930290,
		0.674285, 0.738471, -0.000112,
		44.910450, 36.393036, 35.076538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.065018, 35.594040, 34.817364>,  <44.438450, 35.876106, 35.076618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.065018, 35.594040, 34.817364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.122021, 35.899616, 35.069107>,  <45.156223, 36.082962, 35.220154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.122021, 35.899616, 35.069107>,  <45.065018, 35.594040, 34.817364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.122021, 35.899616, 35.069107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759003, -0.492462, 0.425905,
		0.635299, 0.416988, -0.650012,
		0.142509, 0.763938, 0.629356,
		45.164772, 36.128799, 35.257915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856998, 35.839134, 34.629520>,  <45.065018, 35.594040, 34.817364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856998, 35.839134, 34.629520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.698536, 35.888023, 34.993526>,  <45.603458, 35.917358, 35.211929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.698536, 35.888023, 34.993526>,  <45.856998, 35.839134, 34.629520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.698536, 35.888023, 34.993526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721397, -0.571696, 0.390832,
		0.568018, 0.811311, 0.138312,
		-0.396159, 0.122222, 0.910011,
		45.579689, 35.924690, 35.266529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.417133, 36.246841, 34.944519>,  <45.856998, 35.839134, 34.629520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.417133, 36.246841, 34.944519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.178776, 35.984341, 35.129665>,  <46.035763, 35.826839, 35.240753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.178776, 35.984341, 35.129665>,  <46.417133, 36.246841, 34.944519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.178776, 35.984341, 35.129665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733694, -0.679229, -0.018454,
		0.326503, 0.328607, 0.886236,
		-0.595893, -0.656251, 0.462867,
		46.000008, 35.787464, 35.268524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.779758, 35.675827, 34.780231>,  <46.417133, 36.246841, 34.944519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.779758, 35.675827, 34.780231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499203, 35.542835, 35.032429>,  <46.330872, 35.463039, 35.183746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499203, 35.542835, 35.032429>,  <46.779758, 35.675827, 34.780231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.499203, 35.542835, 35.032429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423422, -0.905908, -0.006681,
		0.573388, 0.262277, 0.776168,
		-0.701385, -0.332478, 0.630490,
		46.288788, 35.443092, 35.221577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.997074, 34.971001, 35.143196>,  <46.779758, 35.675827, 34.780231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.997074, 34.971001, 35.143196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.232395, 35.082592, 34.839596>,  <47.373589, 35.149548, 34.657436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.232395, 35.082592, 34.839596>,  <46.997074, 34.971001, 35.143196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.232395, 35.082592, 34.839596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230297, 0.841937, 0.487961,
		0.775157, -0.461861, 0.431063,
		0.588298, 0.278974, -0.758998,
		47.408886, 35.166283, 34.611897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.688801, 34.948742, 35.300529>,  <46.997074, 34.971001, 35.143196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.688801, 34.948742, 35.300529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.621353, 35.232185, 35.026466>,  <47.580883, 35.402252, 34.862030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.621353, 35.232185, 35.026466>,  <47.688801, 34.948742, 35.300529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.621353, 35.232185, 35.026466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279657, 0.700940, 0.656106,
		0.945177, -0.080977, -0.316359,
		-0.168619, 0.708609, -0.685158,
		47.570766, 35.444767, 34.820919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.232300, 35.052914, 23.430496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.842243, 35.016884, 23.349518>,  <38.608208, 34.995266, 23.300930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.842243, 35.016884, 23.349518>,  <39.232300, 35.052914, 23.430496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842243, 35.016884, 23.349518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211353, 0.103740, 0.971889,
		-0.066538, 0.990518, -0.120198,
		-0.975142, -0.090072, -0.202446,
		38.549702, 34.989861, 23.288784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889275, 35.633934, 23.778162>,  <39.232300, 35.052914, 23.430496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889275, 35.633934, 23.778162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.637295, 35.328617, 23.720819>,  <38.486107, 35.145428, 23.686415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.637295, 35.328617, 23.720819>,  <38.889275, 35.633934, 23.778162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637295, 35.328617, 23.720819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238036, 0.014059, 0.971155,
		-0.739256, 0.645905, -0.190546,
		-0.629952, -0.763288, -0.143355,
		38.448311, 35.099632, 23.677813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298183, 35.872749, 24.130558>,  <38.889275, 35.633934, 23.778162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298183, 35.872749, 24.130558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210190, 35.484917, 24.087627>,  <38.157394, 35.252216, 24.061869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210190, 35.484917, 24.087627>,  <38.298183, 35.872749, 24.130558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210190, 35.484917, 24.087627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422695, -0.004414, 0.906261,
		-0.879168, 0.244729, -0.408866,
		-0.219984, -0.969582, -0.107326,
		38.144196, 35.194042, 24.055429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573959, 35.763832, 24.167927>,  <38.298183, 35.872749, 24.130558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573959, 35.763832, 24.167927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.746010, 35.415745, 24.264027>,  <37.849239, 35.206894, 24.321686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.746010, 35.415745, 24.264027>,  <37.573959, 35.763832, 24.167927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746010, 35.415745, 24.264027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380633, 0.066501, 0.922332,
		-0.818603, -0.488166, -0.302628,
		0.430126, -0.870214, 0.240250,
		37.875046, 35.154682, 24.336102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105652, 35.491455, 24.589193>,  <37.573959, 35.763832, 24.167927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105652, 35.491455, 24.589193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.432014, 35.276962, 24.675678>,  <37.627831, 35.148266, 24.727570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.432014, 35.276962, 24.675678>,  <37.105652, 35.491455, 24.589193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432014, 35.276962, 24.675678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393079, -0.240218, 0.887572,
		-0.424011, -0.809163, -0.406779,
		0.815906, -0.536237, 0.216210,
		37.676788, 35.116093, 24.740541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777908, 34.902775, 24.907717>,  <37.105652, 35.491455, 24.589193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777908, 34.902775, 24.907717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.161091, 34.940910, 25.015963>,  <37.390999, 34.963791, 25.080910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.161091, 34.940910, 25.015963>,  <36.777908, 34.902775, 24.907717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161091, 34.940910, 25.015963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240321, -0.248632, 0.938311,
		0.156740, -0.963894, -0.215267,
		0.957955, 0.095338, 0.270614,
		37.448479, 34.969513, 25.097147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018768, 34.329056, 25.331516>,  <36.777908, 34.902775, 24.907717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018768, 34.329056, 25.331516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247711, 34.645035, 25.419508>,  <37.385078, 34.834621, 25.472303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247711, 34.645035, 25.419508>,  <37.018768, 34.329056, 25.331516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247711, 34.645035, 25.419508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301259, -0.046937, 0.952387,
		0.762659, -0.611378, 0.211113,
		0.572359, 0.789946, 0.219979,
		37.419418, 34.882019, 25.485502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341652, 34.098049, 26.015921>,  <37.018768, 34.329056, 25.331516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341652, 34.098049, 26.015921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449265, 34.483280, 26.020000>,  <37.513832, 34.714420, 26.022448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449265, 34.483280, 26.020000>,  <37.341652, 34.098049, 26.015921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449265, 34.483280, 26.020000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380559, 0.096569, 0.919700,
		0.884758, -0.251311, 0.392488,
		0.269033, 0.963077, 0.010198,
		37.529976, 34.772202, 26.023060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781265, 34.251545, 26.534248>,  <37.341652, 34.098049, 26.015921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781265, 34.251545, 26.534248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.644932, 34.620579, 26.461943>,  <37.563133, 34.841999, 26.418560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.644932, 34.620579, 26.461943>,  <37.781265, 34.251545, 26.534248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644932, 34.620579, 26.461943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167614, 0.129564, 0.977302,
		0.925062, 0.363394, 0.110478,
		-0.340831, 0.922582, -0.180765,
		37.542683, 34.897354, 26.407713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916252, 34.633556, 27.111475>,  <37.781265, 34.251545, 26.534248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916252, 34.633556, 27.111475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.637550, 34.860466, 26.935869>,  <37.470329, 34.996613, 26.830505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.637550, 34.860466, 26.935869>,  <37.916252, 34.633556, 27.111475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637550, 34.860466, 26.935869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268500, 0.361283, 0.892963,
		0.665163, 0.740051, -0.099412,
		-0.696753, 0.567274, -0.439016,
		37.428524, 35.030647, 26.804165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022430, 35.300056, 27.338766>,  <37.916252, 34.633556, 27.111475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022430, 35.300056, 27.338766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.645657, 35.302509, 27.204473>,  <37.419590, 35.303982, 27.123898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.645657, 35.302509, 27.204473>,  <38.022430, 35.300056, 27.338766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645657, 35.302509, 27.204473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286204, 0.508238, 0.812269,
		0.175611, 0.861195, -0.476974,
		-0.941939, 0.006131, -0.335729,
		37.363075, 35.304348, 27.103754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701138, 36.042553, 27.491543>,  <38.022430, 35.300056, 27.338766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701138, 36.042553, 27.491543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.423977, 35.755764, 27.460974>,  <37.257683, 35.583691, 27.442633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.423977, 35.755764, 27.460974>,  <37.701138, 36.042553, 27.491543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423977, 35.755764, 27.460974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465108, 0.363449, 0.807205,
		-0.550970, 0.594855, -0.585303,
		-0.692898, -0.716974, -0.076423,
		37.216106, 35.540672, 27.438047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103100, 36.362408, 27.734833>,  <37.701138, 36.042553, 27.491543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103100, 36.362408, 27.734833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.023571, 35.970417, 27.738964>,  <36.975853, 35.735222, 27.741442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.023571, 35.970417, 27.738964>,  <37.103100, 36.362408, 27.734833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023571, 35.970417, 27.738964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582544, 0.126649, 0.802872,
		-0.788107, 0.153613, -0.596062,
		-0.198822, -0.979981, 0.010327,
		36.963924, 35.676422, 27.742062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368343, 36.316677, 27.957527>,  <37.103100, 36.362408, 27.734833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368343, 36.316677, 27.957527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.540089, 35.964890, 28.039682>,  <36.643135, 35.753819, 28.088976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.540089, 35.964890, 28.039682>,  <36.368343, 36.316677, 27.957527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540089, 35.964890, 28.039682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514877, -0.051525, 0.855714,
		-0.741992, -0.473159, -0.474941,
		0.429360, -0.879469, 0.205388,
		36.668896, 35.701050, 28.101299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843803, 35.789841, 28.145588>,  <36.368343, 36.316677, 27.957527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843803, 35.789841, 28.145588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.194118, 35.699379, 28.316162>,  <36.404308, 35.645103, 28.418507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.194118, 35.699379, 28.316162>,  <35.843803, 35.789841, 28.145588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194118, 35.699379, 28.316162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456086, -0.098462, 0.884472,
		-0.158040, -0.969102, -0.189378,
		0.875790, -0.226155, 0.426433,
		36.456856, 35.631535, 28.444092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571499, 35.542461, 28.666723>,  <35.843803, 35.789841, 28.145588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571499, 35.542461, 28.666723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.965199, 35.558823, 28.735529>,  <36.201416, 35.568638, 28.776812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.965199, 35.558823, 28.735529>,  <35.571499, 35.542461, 28.666723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965199, 35.558823, 28.735529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176699, 0.193078, 0.965142,
		0.006267, -0.980330, 0.197264,
		0.984245, 0.040905, 0.172013,
		36.260471, 35.571095, 28.787132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688744, 35.148251, 29.257965>,  <35.571499, 35.542461, 28.666723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688744, 35.148251, 29.257965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.011044, 35.384892, 29.246868>,  <36.204426, 35.526875, 29.240210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.011044, 35.384892, 29.246868>,  <35.688744, 35.148251, 29.257965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011044, 35.384892, 29.246868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141529, 0.237822, 0.960943,
		0.575095, -0.770355, 0.275354,
		0.805752, 0.591604, -0.027743,
		36.252769, 35.562374, 29.238544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949951, 35.041664, 29.936878>,  <35.688744, 35.148251, 29.257965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949951, 35.041664, 29.936878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.120968, 35.378540, 29.805471>,  <36.223579, 35.580666, 29.726627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.120968, 35.378540, 29.805471>,  <35.949951, 35.041664, 29.936878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120968, 35.378540, 29.805471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082847, 0.398379, 0.913471,
		0.900189, -0.363334, 0.240098,
		0.427545, 0.842189, -0.328515,
		36.249233, 35.631195, 29.706917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347290, 35.231983, 30.474159>,  <35.949951, 35.041664, 29.936878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347290, 35.231983, 30.474159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.345024, 35.569546, 30.259577>,  <36.343666, 35.772083, 30.130827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.345024, 35.569546, 30.259577>,  <36.347290, 35.231983, 30.474159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345024, 35.569546, 30.259577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112108, 0.532547, 0.838943,
		0.993680, 0.064894, 0.091592,
		-0.005666, 0.843909, -0.536456,
		36.343323, 35.822720, 30.098640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910976, 35.550655, 30.673241>,  <36.347290, 35.231983, 30.474159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910976, 35.550655, 30.673241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638832, 35.805935, 30.529119>,  <36.475548, 35.959103, 30.442646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638832, 35.805935, 30.529119>,  <36.910976, 35.550655, 30.673241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638832, 35.805935, 30.529119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005082, 0.487505, 0.873105,
		0.732862, 0.595856, -0.328435,
		-0.680359, 0.638196, -0.360302,
		36.434723, 35.997395, 30.421028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152626, 36.281319, 30.932922>,  <36.910976, 35.550655, 30.673241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152626, 36.281319, 30.932922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.761921, 36.265415, 30.848690>,  <36.527496, 36.255875, 30.798151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.761921, 36.265415, 30.848690>,  <37.152626, 36.281319, 30.932922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761921, 36.265415, 30.848690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205540, 0.451924, 0.868054,
		0.060654, 0.891170, -0.449597,
		-0.976767, -0.039760, -0.210582,
		36.468891, 36.253487, 30.785515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869335, 36.995068, 30.948465>,  <37.152626, 36.281319, 30.932922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869335, 36.995068, 30.948465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.593750, 36.720898, 31.042721>,  <36.428398, 36.556396, 31.099274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.593750, 36.720898, 31.042721>,  <36.869335, 36.995068, 30.948465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593750, 36.720898, 31.042721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115306, 0.424623, 0.897998,
		-0.715566, 0.591517, -0.371582,
		-0.688963, -0.685422, 0.235640,
		36.387062, 36.515270, 31.113413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350071, 37.124065, 31.511221>,  <36.869335, 36.995068, 30.948465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350071, 37.124065, 31.511221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.720993, 37.242924, 31.602261>,  <37.943546, 37.314240, 31.656885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.720993, 37.242924, 31.602261>,  <37.350071, 37.124065, 31.511221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720993, 37.242924, 31.602261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332858, -0.376558, -0.864529,
		-0.171190, 0.877443, -0.448094,
		0.927308, 0.297150, 0.227601,
		37.999184, 37.332069, 31.670542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649845, 37.447605, 30.949106>,  <37.350071, 37.124065, 31.511221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649845, 37.447605, 30.949106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.960732, 37.297138, 31.150873>,  <38.147263, 37.206860, 31.271933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.960732, 37.297138, 31.150873>,  <37.649845, 37.447605, 30.949106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960732, 37.297138, 31.150873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402267, -0.319392, -0.858004,
		0.483859, 0.869763, -0.096917,
		0.777214, -0.376166, 0.504418,
		38.193897, 37.184288, 31.302198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279022, 37.772369, 30.564842>,  <37.649845, 37.447605, 30.949106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279022, 37.772369, 30.564842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.343945, 37.441860, 30.780592>,  <38.382896, 37.243553, 30.910042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.343945, 37.441860, 30.780592>,  <38.279022, 37.772369, 30.564842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343945, 37.441860, 30.780592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532165, -0.387016, -0.753007,
		0.830938, 0.409252, 0.376901,
		0.162303, -0.826276, 0.539376,
		38.392635, 37.193977, 30.942406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988823, 37.579426, 30.446293>,  <38.279022, 37.772369, 30.564842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988823, 37.579426, 30.446293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.860317, 37.233047, 30.599617>,  <38.783215, 37.025219, 30.691612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.860317, 37.233047, 30.599617>,  <38.988823, 37.579426, 30.446293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860317, 37.233047, 30.599617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425544, -0.493608, -0.758462,
		0.845992, -0.080551, 0.527076,
		-0.321264, -0.865946, 0.383310,
		38.763939, 36.973263, 30.714609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555176, 37.153236, 30.409077>,  <38.988823, 37.579426, 30.446293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555176, 37.153236, 30.409077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.257935, 36.890594, 30.460714>,  <39.079590, 36.733009, 30.491697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.257935, 36.890594, 30.460714>,  <39.555176, 37.153236, 30.409077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257935, 36.890594, 30.460714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331568, -0.528854, -0.781266,
		0.581252, -0.537762, 0.610703,
		-0.743108, -0.656602, 0.129093,
		39.035004, 36.693615, 30.499443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782448, 36.465153, 30.596439>,  <39.555176, 37.153236, 30.409077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782448, 36.465153, 30.596439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.430557, 36.365810, 30.434254>,  <39.219421, 36.306206, 30.336943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.430557, 36.365810, 30.434254>,  <39.782448, 36.465153, 30.596439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430557, 36.365810, 30.434254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474634, -0.407850, -0.779988,
		0.028342, -0.878624, 0.476673,
		-0.879727, -0.248352, -0.405465,
		39.166637, 36.291306, 30.312614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741344, 35.627762, 30.472616>,  <39.782448, 36.465153, 30.596439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741344, 35.627762, 30.472616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.461983, 35.794476, 30.239885>,  <39.294365, 35.894505, 30.100246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.461983, 35.794476, 30.239885>,  <39.741344, 35.627762, 30.472616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461983, 35.794476, 30.239885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301191, -0.566299, -0.767196,
		-0.649244, -0.711054, 0.269974,
		-0.698403, 0.416783, -0.581829,
		39.252460, 35.919510, 30.065336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652546, 35.089230, 29.944479>,  <39.741344, 35.627762, 30.472616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652546, 35.089230, 29.944479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.499523, 35.415825, 29.771505>,  <39.407711, 35.611782, 29.667721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.499523, 35.415825, 29.771505>,  <39.652546, 35.089230, 29.944479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499523, 35.415825, 29.771505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270150, -0.348736, -0.897442,
		-0.883555, -0.460144, -0.087163,
		-0.382555, 0.816487, -0.432436,
		39.384758, 35.660770, 29.641775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243267, 34.817276, 29.355776>,  <39.652546, 35.089230, 29.944479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243267, 34.817276, 29.355776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.321476, 35.203445, 29.286800>,  <39.368401, 35.435146, 29.245415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.321476, 35.203445, 29.286800>,  <39.243267, 34.817276, 29.355776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321476, 35.203445, 29.286800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137755, -0.201125, -0.969831,
		-0.970976, 0.165873, -0.172316,
		0.195525, 0.965420, -0.172438,
		39.380135, 35.493073, 29.235069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827263, 34.913052, 28.672276>,  <39.243267, 34.817276, 29.355776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827263, 34.913052, 28.672276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.077995, 35.220211, 28.725067>,  <39.228436, 35.404507, 28.756742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.077995, 35.220211, 28.725067>,  <38.827263, 34.913052, 28.672276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077995, 35.220211, 28.725067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198039, 0.006802, -0.980171,
		-0.753566, 0.640540, -0.147810,
		0.626833, 0.767895, 0.131978,
		39.266045, 35.450581, 28.764660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603626, 35.313396, 28.144394>,  <38.827263, 34.913052, 28.672276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603626, 35.313396, 28.144394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.983212, 35.384571, 28.248558>,  <39.210960, 35.427277, 28.311056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.983212, 35.384571, 28.248558>,  <38.603626, 35.313396, 28.144394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983212, 35.384571, 28.248558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274514, -0.059442, -0.959744,
		-0.155295, 0.982245, -0.105254,
		0.948960, 0.177938, 0.260409,
		39.267899, 35.437954, 28.326681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808281, 36.050362, 27.933706>,  <38.603626, 35.313396, 28.144394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808281, 36.050362, 27.933706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.155342, 35.865608, 28.007292>,  <39.363579, 35.754757, 28.051443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.155342, 35.865608, 28.007292>,  <38.808281, 36.050362, 27.933706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155342, 35.865608, 28.007292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304447, 0.201080, -0.931063,
		0.393047, 0.863849, 0.315086,
		0.867655, -0.461879, 0.183963,
		39.415638, 35.727043, 28.062481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300999, 36.494488, 27.602844>,  <38.808281, 36.050362, 27.933706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300999, 36.494488, 27.602844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.459023, 36.130295, 27.651751>,  <39.553837, 35.911777, 27.681095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.459023, 36.130295, 27.651751>,  <39.300999, 36.494488, 27.602844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459023, 36.130295, 27.651751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416652, 0.058966, -0.907151,
		0.818737, 0.409319, 0.402650,
		0.395057, -0.910484, 0.122266,
		39.577541, 35.857151, 27.688431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928375, 36.488026, 27.182791>,  <39.300999, 36.494488, 27.602844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928375, 36.488026, 27.182791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.850018, 36.097069, 27.214619>,  <39.803001, 35.862495, 27.233715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.850018, 36.097069, 27.214619>,  <39.928375, 36.488026, 27.182791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850018, 36.097069, 27.214619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456937, -0.162776, -0.874478,
		0.867660, -0.134946, 0.478493,
		-0.195894, -0.977391, 0.079572,
		39.791248, 35.803852, 27.238491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555069, 36.255596, 26.846071>,  <39.928375, 36.488026, 27.182791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555069, 36.255596, 26.846071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.312271, 35.937733, 26.849720>,  <40.166592, 35.747017, 26.851910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.312271, 35.937733, 26.849720>,  <40.555069, 36.255596, 26.846071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312271, 35.937733, 26.849720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473199, -0.370623, -0.799200,
		0.638472, -0.480790, 0.600996,
		-0.606990, -0.794657, 0.009124,
		40.130173, 35.699337, 26.852457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932564, 35.588223, 26.809835>,  <40.555069, 36.255596, 26.846071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932564, 35.588223, 26.809835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.566299, 35.497654, 26.676992>,  <40.346542, 35.443314, 26.597286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.566299, 35.497654, 26.676992>,  <40.932564, 35.588223, 26.809835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566299, 35.497654, 26.676992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400494, -0.443639, -0.801741,
		0.034197, -0.867131, 0.496905,
		-0.915661, -0.226425, -0.332109,
		40.291599, 35.429726, 26.577360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069180, 34.957485, 26.371496>,  <40.932564, 35.588223, 26.809835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069180, 34.957485, 26.371496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.711525, 35.099918, 26.262880>,  <40.496933, 35.185379, 26.197710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.711525, 35.099918, 26.262880>,  <41.069180, 34.957485, 26.371496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711525, 35.099918, 26.262880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114968, -0.403522, -0.907718,
		-0.432798, -0.842837, 0.319863,
		-0.894130, 0.356085, -0.271543,
		40.443287, 35.206741, 26.181417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698090, 34.425297, 25.977476>,  <41.069180, 34.957485, 26.371496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698090, 34.425297, 25.977476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.537300, 34.777515, 25.877024>,  <40.440826, 34.988846, 25.816753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.537300, 34.777515, 25.877024>,  <40.698090, 34.425297, 25.977476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537300, 34.777515, 25.877024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143696, -0.210201, -0.967040,
		-0.904307, -0.424807, -0.042036,
		-0.401969, 0.880542, -0.251130,
		40.416710, 35.041679, 25.801685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.821915, 34.260590, 25.251549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.921673, 34.647564, 25.268833>,  <39.981529, 34.879749, 25.279203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.921673, 34.647564, 25.268833>,  <39.821915, 34.260590, 25.251549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921673, 34.647564, 25.268833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062647, 0.028410, -0.997631,
		-0.966373, 0.251514, -0.053522,
		0.249397, 0.967436, 0.043211,
		39.996490, 34.937794, 25.281797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412392, 34.726669, 24.746634>,  <39.821915, 34.260590, 25.251549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412392, 34.726669, 24.746634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.755951, 34.919678, 24.815292>,  <39.962086, 35.035484, 24.856487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.755951, 34.919678, 24.815292>,  <39.412392, 34.726669, 24.746634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755951, 34.919678, 24.815292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064310, 0.230889, -0.970852,
		-0.508090, 0.844904, 0.167279,
		0.858900, 0.482522, 0.171648,
		40.013622, 35.064434, 24.866787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341091, 35.165501, 24.239889>,  <39.412392, 34.726669, 24.746634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341091, 35.165501, 24.239889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.721806, 35.200241, 24.357573>,  <39.950233, 35.221085, 24.428183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.721806, 35.200241, 24.357573>,  <39.341091, 35.165501, 24.239889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721806, 35.200241, 24.357573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260598, 0.277056, -0.924840,
		-0.161832, 0.956921, 0.241066,
		0.951787, 0.086848, 0.294208,
		40.007343, 35.226295, 24.445835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649944, 35.770927, 23.854786>,  <39.341091, 35.165501, 24.239889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649944, 35.770927, 23.854786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.953159, 35.532417, 23.960491>,  <40.135086, 35.389309, 24.023914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.953159, 35.532417, 23.960491>,  <39.649944, 35.770927, 23.854786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953159, 35.532417, 23.960491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345541, 0.023523, -0.938109,
		0.553158, 0.802433, 0.223870,
		0.758035, -0.596279, 0.264261,
		40.180569, 35.353535, 24.039770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228165, 36.082531, 23.563162>,  <39.649944, 35.770927, 23.854786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228165, 36.082531, 23.563162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.353363, 35.711304, 23.643887>,  <40.428482, 35.488567, 23.692322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.353363, 35.711304, 23.643887>,  <40.228165, 36.082531, 23.563162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353363, 35.711304, 23.643887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580808, 0.018910, -0.813821,
		0.751463, 0.371936, 0.544947,
		0.312994, -0.928066, 0.201814,
		40.447262, 35.432884, 23.704432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896168, 36.167522, 23.512455>,  <40.228165, 36.082531, 23.563162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896168, 36.167522, 23.512455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.809521, 35.781143, 23.455851>,  <40.757534, 35.549316, 23.421888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.809521, 35.781143, 23.455851>,  <40.896168, 36.167522, 23.512455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809521, 35.781143, 23.455851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529191, 0.005630, -0.848484,
		0.820386, -0.258683, 0.509951,
		-0.216618, -0.965946, -0.141511,
		40.744534, 35.491360, 23.413397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498936, 35.907852, 23.263899>,  <40.896168, 36.167522, 23.512455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498936, 35.907852, 23.263899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.229885, 35.635422, 23.148167>,  <41.068455, 35.471962, 23.078728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.229885, 35.635422, 23.148167>,  <41.498936, 35.907852, 23.263899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229885, 35.635422, 23.148167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472805, -0.094781, -0.876055,
		0.569235, -0.726054, 0.385768,
		-0.672626, -0.681075, -0.289329,
		41.028099, 35.431099, 23.061367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854973, 35.320663, 22.881689>,  <41.498936, 35.907852, 23.263899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854973, 35.320663, 22.881689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.475559, 35.283417, 22.760620>,  <41.247910, 35.261066, 22.687979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.475559, 35.283417, 22.760620>,  <41.854973, 35.320663, 22.881689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475559, 35.283417, 22.760620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315625, -0.200251, -0.927513,
		0.025760, -0.975309, 0.219336,
		-0.948534, -0.093121, -0.302673,
		41.190998, 35.255482, 22.669819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702484, 34.648514, 22.521557>,  <41.854973, 35.320663, 22.881689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702484, 34.648514, 22.521557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.406574, 34.880894, 22.385778>,  <41.229027, 35.020321, 22.304312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.406574, 34.880894, 22.385778>,  <41.702484, 34.648514, 22.521557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406574, 34.880894, 22.385778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337010, -0.116724, -0.934238,
		-0.582368, -0.805525, -0.109437,
		-0.739778, 0.580951, -0.339446,
		41.184639, 35.055180, 22.283945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462223, 34.304630, 21.899464>,  <41.702484, 34.648514, 22.521557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462223, 34.304630, 21.899464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.291935, 34.663422, 21.851826>,  <41.189762, 34.878696, 21.823242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.291935, 34.663422, 21.851826>,  <41.462223, 34.304630, 21.899464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291935, 34.663422, 21.851826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216632, -0.026755, -0.975886,
		-0.878539, -0.441258, -0.182925,
		-0.425723, 0.896981, -0.119096,
		41.164219, 34.932514, 21.816097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110867, 34.259121, 21.369329>,  <41.462223, 34.304630, 21.899464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110867, 34.259121, 21.369329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.121765, 34.658798, 21.381119>,  <41.128304, 34.898605, 21.388193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.121765, 34.658798, 21.381119>,  <41.110867, 34.259121, 21.369329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121765, 34.658798, 21.381119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280741, 0.020649, -0.959561,
		-0.959397, 0.034419, -0.279952,
		0.027246, 0.999194, 0.029474,
		41.129940, 34.958557, 21.389961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717484, 34.409775, 20.787167>,  <41.110867, 34.259121, 21.369329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717484, 34.409775, 20.787167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.930111, 34.736439, 20.877058>,  <41.057686, 34.932438, 20.930994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.930111, 34.736439, 20.877058>,  <40.717484, 34.409775, 20.787167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930111, 34.736439, 20.877058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299852, 0.066702, -0.951651,
		-0.792164, 0.573253, -0.209420,
		0.531568, 0.816659, 0.224729,
		41.089581, 34.981438, 20.944477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425091, 34.961006, 20.418026>,  <40.717484, 34.409775, 20.787167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425091, 34.961006, 20.418026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.800381, 35.079063, 20.490274>,  <41.025555, 35.149899, 20.533625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.800381, 35.079063, 20.490274>,  <40.425091, 34.961006, 20.418026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800381, 35.079063, 20.490274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162511, 0.085002, -0.983039,
		-0.305488, 0.951665, 0.031787,
		0.938225, 0.295141, 0.180623,
		41.081848, 35.167606, 20.544462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428246, 35.580036, 20.074039>,  <40.425091, 34.961006, 20.418026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428246, 35.580036, 20.074039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.802483, 35.442883, 20.107721>,  <41.027027, 35.360592, 20.127930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.802483, 35.442883, 20.107721>,  <40.428246, 35.580036, 20.074039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802483, 35.442883, 20.107721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130737, 0.114908, -0.984735,
		0.327974, 0.932323, 0.152335,
		0.935597, -0.342883, 0.084202,
		41.083160, 35.340019, 20.132982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950447, 36.095039, 19.764832>,  <40.428246, 35.580036, 20.074039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950447, 36.095039, 19.764832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.088081, 35.719509, 19.770624>,  <41.170662, 35.494190, 19.774099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.088081, 35.719509, 19.770624>,  <40.950447, 36.095039, 19.764832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088081, 35.719509, 19.770624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120448, 0.028840, -0.992301,
		0.931179, 0.343185, 0.123003,
		0.344090, -0.938825, 0.014481,
		41.191307, 35.437862, 19.774969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566982, 36.118637, 19.250746>,  <40.950447, 36.095039, 19.764832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566982, 36.118637, 19.250746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.513302, 35.725864, 19.304106>,  <41.481094, 35.490200, 19.336121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.513302, 35.725864, 19.304106>,  <41.566982, 36.118637, 19.250746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513302, 35.725864, 19.304106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456461, -0.180738, -0.871193,
		0.879565, -0.056025, 0.472470,
		-0.134201, -0.981934, 0.133398,
		41.473042, 35.431286, 19.344126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289673, 35.843452, 19.095079>,  <41.566982, 36.118637, 19.250746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289673, 35.843452, 19.095079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.038105, 35.536575, 19.044691>,  <41.887165, 35.352448, 19.014458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.038105, 35.536575, 19.044691>,  <42.289673, 35.843452, 19.095079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038105, 35.536575, 19.044691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435137, -0.213074, -0.874789,
		0.644293, -0.604988, 0.467842,
		-0.628922, -0.767195, -0.125971,
		41.849430, 35.306416, 19.006899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668774, 35.161728, 19.002026>,  <42.289673, 35.843452, 19.095079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668774, 35.161728, 19.002026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.312035, 35.115906, 18.826992>,  <42.097992, 35.088413, 18.721972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.312035, 35.115906, 18.826992>,  <42.668774, 35.161728, 19.002026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312035, 35.115906, 18.826992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429869, -0.515712, -0.741116,
		-0.140764, -0.849068, 0.509184,
		-0.891851, -0.114560, -0.437582,
		42.044479, 35.081539, 18.695717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699417, 34.525116, 18.677242>,  <42.668774, 35.161728, 19.002026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699417, 34.525116, 18.677242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.391384, 34.702663, 18.493961>,  <42.206566, 34.809193, 18.383993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.391384, 34.702663, 18.493961>,  <42.699417, 34.525116, 18.677242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391384, 34.702663, 18.493961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218608, -0.491156, -0.843194,
		-0.599320, -0.749496, 0.281196,
		-0.770082, 0.443872, -0.458205,
		42.160358, 34.835823, 18.356501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476746, 34.177361, 18.043777>,  <42.699417, 34.525116, 18.677242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476746, 34.177361, 18.043777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.280014, 34.520447, 17.983868>,  <42.161976, 34.726299, 17.947922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.280014, 34.520447, 17.983868>,  <42.476746, 34.177361, 18.043777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280014, 34.520447, 17.983868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192227, -0.060811, -0.979464,
		-0.849208, -0.510519, -0.134967,
		-0.491828, 0.857713, -0.149777,
		42.132465, 34.777760, 17.938934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876118, 34.012653, 17.561928>,  <42.476746, 34.177361, 18.043777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876118, 34.012653, 17.561928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.994232, 34.394176, 17.539825>,  <42.065102, 34.623093, 17.526564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.994232, 34.394176, 17.539825>,  <41.876118, 34.012653, 17.561928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994232, 34.394176, 17.539825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277115, -0.140854, -0.950457,
		-0.914338, 0.265344, -0.305907,
		0.295287, 0.953809, -0.055257,
		42.082817, 34.680321, 17.523249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636658, 34.216225, 16.920267>,  <41.876118, 34.012653, 17.561928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636658, 34.216225, 16.920267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.903236, 34.507835, 16.982716>,  <42.063183, 34.682800, 17.020184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.903236, 34.507835, 16.982716>,  <41.636658, 34.216225, 16.920267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903236, 34.507835, 16.982716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317060, -0.087613, -0.944350,
		-0.674777, 0.678857, -0.289534,
		0.666446, 0.729025, 0.156119,
		42.103168, 34.726543, 17.029551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608395, 34.868958, 16.453026>,  <41.636658, 34.216225, 16.920267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608395, 34.868958, 16.453026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.981678, 34.838535, 16.593506>,  <42.205647, 34.820282, 16.677794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.981678, 34.838535, 16.593506>,  <41.608395, 34.868958, 16.453026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981678, 34.838535, 16.593506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359014, 0.155738, -0.920247,
		0.015295, 0.984866, 0.172640,
		0.933207, -0.076055, 0.351199,
		42.261639, 34.815720, 16.698866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260643, 34.334351, 15.913460>,  <41.608395, 34.868958, 16.453026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260643, 34.334351, 15.913460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.556084, 34.507694, 15.706899>,  <41.733349, 34.611702, 15.582962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.556084, 34.507694, 15.706899>,  <41.260643, 34.334351, 15.913460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556084, 34.507694, 15.706899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156039, -0.635312, -0.756327,
		-0.655839, 0.639200, -0.401619,
		0.738598, 0.433361, -0.516403,
		41.777664, 34.637703, 15.551978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640423, 34.636063, 15.803060>,  <41.260643, 34.334351, 15.913460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640423, 34.636063, 15.803060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.252228, 34.690617, 15.723512>,  <40.019310, 34.723347, 15.675783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.252228, 34.690617, 15.723512>,  <40.640423, 34.636063, 15.803060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252228, 34.690617, 15.723512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138820, 0.358364, 0.923203,
		0.197177, 0.923567, -0.328856,
		-0.970490, 0.136382, -0.198871,
		39.961082, 34.731533, 15.663851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405605, 35.306526, 16.010021>,  <40.640423, 34.636063, 15.803060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405605, 35.306526, 16.010021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.050011, 35.123661, 15.999447>,  <39.836655, 35.013943, 15.993102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.050011, 35.123661, 15.999447>,  <40.405605, 35.306526, 16.010021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050011, 35.123661, 15.999447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216663, 0.369053, 0.903802,
		-0.403429, 0.809198, -0.427134,
		-0.888989, -0.457164, -0.026436,
		39.783314, 34.986511, 15.991516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775288, 35.847229, 16.114359>,  <40.405605, 35.306526, 16.010021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775288, 35.847229, 16.114359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.627647, 35.487167, 16.206861>,  <39.539062, 35.271130, 16.262363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.627647, 35.487167, 16.206861>,  <39.775288, 35.847229, 16.114359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627647, 35.487167, 16.206861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532336, 0.408730, 0.741322,
		-0.761829, 0.150515, -0.630049,
		-0.369100, -0.900158, 0.231258,
		39.516918, 35.217121, 16.276239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089558, 35.942638, 16.216480>,  <39.775288, 35.847229, 16.114359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089558, 35.942638, 16.216480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.169357, 35.598824, 16.404692>,  <39.217236, 35.392536, 16.517618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.169357, 35.598824, 16.404692>,  <39.089558, 35.942638, 16.216480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169357, 35.598824, 16.404692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427277, 0.355821, 0.831159,
		-0.881836, -0.366861, -0.296274,
		0.199499, -0.859537, 0.470527,
		39.229206, 35.340961, 16.545851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492512, 35.790073, 16.639877>,  <39.089558, 35.942638, 16.216480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492512, 35.790073, 16.639877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.788654, 35.560482, 16.779831>,  <38.966339, 35.422729, 16.863804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.788654, 35.560482, 16.779831>,  <38.492512, 35.790073, 16.639877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788654, 35.560482, 16.779831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390225, 0.056841, 0.918963,
		-0.547351, -0.816897, -0.181897,
		0.740359, -0.573976, 0.349886,
		39.010761, 35.388290, 16.884796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205704, 35.276222, 17.051584>,  <38.492512, 35.790073, 16.639877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205704, 35.276222, 17.051584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.578590, 35.354179, 17.173561>,  <38.802322, 35.400955, 17.246746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.578590, 35.354179, 17.173561>,  <38.205704, 35.276222, 17.051584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578590, 35.354179, 17.173561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341714, 0.196542, 0.919023,
		0.119175, -0.960931, 0.249816,
		0.932217, 0.194890, 0.304941,
		38.858257, 35.412647, 17.265043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210705, 34.981392, 17.796844>,  <38.205704, 35.276222, 17.051584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210705, 34.981392, 17.796844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.571110, 35.152184, 17.766211>,  <38.787354, 35.254658, 17.747829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.571110, 35.152184, 17.766211>,  <38.210705, 34.981392, 17.796844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571110, 35.152184, 17.766211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075871, 0.018716, 0.996942,
		0.427107, -0.904068, -0.015532,
		0.901012, 0.426980, -0.076587,
		38.841412, 35.280277, 17.743235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668186, 34.561012, 18.178379>,  <38.210705, 34.981392, 17.796844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668186, 34.561012, 18.178379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.766426, 34.948742, 18.174503>,  <38.825371, 35.181377, 18.172178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.766426, 34.948742, 18.174503>,  <38.668186, 34.561012, 18.178379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766426, 34.948742, 18.174503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048619, -0.002337, 0.998815,
		0.968151, -0.245782, -0.047702,
		0.245602, 0.969322, -0.009687,
		38.840107, 35.239540, 18.171597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274628, 34.572044, 18.584898>,  <38.668186, 34.561012, 18.178379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274628, 34.572044, 18.584898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.145000, 34.950195, 18.570845>,  <39.067223, 35.177086, 18.562412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.145000, 34.950195, 18.570845>,  <39.274628, 34.572044, 18.584898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145000, 34.950195, 18.570845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289784, 0.134552, 0.947587,
		0.900558, 0.296902, -0.317560,
		-0.324069, 0.945381, -0.035134,
		39.047779, 35.233810, 18.560305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729450, 34.982319, 18.990875>,  <39.274628, 34.572044, 18.584898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729450, 34.982319, 18.990875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.431561, 35.248646, 18.972679>,  <39.252827, 35.408443, 18.961761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.431561, 35.248646, 18.972679>,  <39.729450, 34.982319, 18.990875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431561, 35.248646, 18.972679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128209, 0.209632, 0.969338,
		0.654937, 0.716061, -0.241483,
		-0.744728, 0.665816, -0.045490,
		39.208141, 35.448391, 18.959032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949661, 35.649887, 19.474211>,  <39.729450, 34.982319, 18.990875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949661, 35.649887, 19.474211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.555527, 35.641418, 19.406477>,  <39.319046, 35.636337, 19.365837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.555527, 35.641418, 19.406477>,  <39.949661, 35.649887, 19.474211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555527, 35.641418, 19.406477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168204, -0.046932, 0.984634,
		-0.028790, 0.998674, 0.042683,
		-0.985332, -0.021168, -0.169332,
		39.259926, 35.635067, 19.355677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671413, 36.103172, 19.885740>,  <39.949661, 35.649887, 19.474211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671413, 36.103172, 19.885740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.352142, 35.876003, 19.805368>,  <39.160580, 35.739700, 19.757145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.352142, 35.876003, 19.805368>,  <39.671413, 36.103172, 19.885740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352142, 35.876003, 19.805368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087793, -0.220314, 0.971470,
		-0.595991, 0.793046, 0.125990,
		-0.798177, -0.567926, -0.200929,
		39.112690, 35.705624, 19.745090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123386, 36.334999, 20.403732>,  <39.671413, 36.103172, 19.885740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123386, 36.334999, 20.403732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.030407, 35.975838, 20.254206>,  <38.974621, 35.760342, 20.164490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.030407, 35.975838, 20.254206>,  <39.123386, 36.334999, 20.403732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030407, 35.975838, 20.254206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138504, -0.349867, 0.926504,
		-0.962697, 0.267139, -0.043037,
		-0.232448, -0.897903, -0.373816,
		38.960674, 35.706467, 20.142061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318165, 36.165810, 20.569546>,  <39.123386, 36.334999, 20.403732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318165, 36.165810, 20.569546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.528938, 35.829540, 20.519562>,  <38.655403, 35.627781, 20.489571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.528938, 35.829540, 20.519562>,  <38.318165, 36.165810, 20.569546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528938, 35.829540, 20.519562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241451, -0.289041, 0.926367,
		-0.814889, -0.457961, -0.355286,
		0.526932, -0.840671, -0.124961,
		38.687019, 35.577339, 20.482073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902657, 35.727474, 20.959398>,  <38.318165, 36.165810, 20.569546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902657, 35.727474, 20.959398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.244469, 35.526894, 20.905245>,  <38.449554, 35.406544, 20.872753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.244469, 35.526894, 20.905245>,  <37.902657, 35.727474, 20.959398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244469, 35.526894, 20.905245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145392, -0.481159, 0.864493,
		-0.498647, -0.719047, -0.484070,
		0.854524, -0.501456, -0.135385,
		38.500828, 35.376457, 20.864630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711521, 35.029980, 20.965485>,  <37.902657, 35.727474, 20.959398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711521, 35.029980, 20.965485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092686, 35.094234, 21.068367>,  <38.321384, 35.132786, 21.130096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092686, 35.094234, 21.068367>,  <37.711521, 35.029980, 20.965485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092686, 35.094234, 21.068367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193548, -0.330778, 0.923648,
		0.233451, -0.929936, -0.284111,
		0.952911, 0.160637, 0.257208,
		38.378559, 35.142426, 21.145529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919258, 34.487137, 21.325218>,  <37.711521, 35.029980, 20.965485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919258, 34.487137, 21.325218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215435, 34.721992, 21.456070>,  <38.393143, 34.862904, 21.534580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215435, 34.721992, 21.456070>,  <37.919258, 34.487137, 21.325218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215435, 34.721992, 21.456070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074996, -0.411499, 0.908319,
		0.667919, -0.697094, -0.260660,
		0.740446, 0.587135, 0.327127,
		38.437569, 34.898132, 21.554209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330547, 34.048920, 21.789114>,  <37.919258, 34.487137, 21.325218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330547, 34.048920, 21.789114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.411869, 34.428787, 21.884439>,  <38.460663, 34.656708, 21.941635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.411869, 34.428787, 21.884439>,  <38.330547, 34.048920, 21.789114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411869, 34.428787, 21.884439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097995, -0.222437, 0.970010,
		0.974200, -0.220559, 0.047841,
		0.203303, 0.949671, 0.238312,
		38.472858, 34.713688, 21.955933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798306, 33.993076, 22.331675>,  <38.330547, 34.048920, 21.789114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798306, 33.993076, 22.331675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.614269, 34.347031, 22.360758>,  <38.503845, 34.559402, 22.378208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.614269, 34.347031, 22.360758>,  <38.798306, 33.993076, 22.331675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614269, 34.347031, 22.360758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163632, -0.164995, 0.972626,
		0.872662, 0.435601, 0.220709,
		-0.460092, 0.884889, 0.072707,
		38.476242, 34.612499, 22.382570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179661, 34.417858, 22.949223>,  <38.798306, 33.993076, 22.331675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179661, 34.417858, 22.949223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.826881, 34.602116, 22.909285>,  <38.615211, 34.712669, 22.885323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.826881, 34.602116, 22.909285>,  <39.179661, 34.417858, 22.949223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826881, 34.602116, 22.909285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162781, -0.098883, 0.981695,
		0.442340, 0.882059, 0.162194,
		-0.881951, 0.460645, -0.099843,
		38.562298, 34.740311, 22.879332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.576382, 35.039806, 28.211845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.218170, 35.213284, 28.171963>,  <40.003242, 35.317371, 28.148033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.218170, 35.213284, 28.171963>,  <40.576382, 35.039806, 28.211845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218170, 35.213284, 28.171963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076948, 0.069763, 0.994591,
		0.438306, 0.898354, -0.029102,
		-0.895526, 0.433696, -0.099704,
		39.949512, 35.343391, 28.142052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528835, 35.838505, 28.484400>,  <40.576382, 35.039806, 28.211845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528835, 35.838505, 28.484400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.157703, 35.689316, 28.486601>,  <39.935024, 35.599804, 28.487923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.157703, 35.689316, 28.486601>,  <40.528835, 35.838505, 28.484400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157703, 35.689316, 28.486601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176232, 0.451314, 0.874791,
		-0.328757, 0.810684, -0.484470,
		-0.927826, -0.372972, 0.005504,
		39.879356, 35.577423, 28.488253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214893, 36.333397, 28.956905>,  <40.528835, 35.838505, 28.484400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214893, 36.333397, 28.956905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.901714, 36.096386, 28.881115>,  <39.713806, 35.954178, 28.835642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.901714, 36.096386, 28.881115>,  <40.214893, 36.333397, 28.956905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901714, 36.096386, 28.881115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390464, 0.230972, 0.891173,
		-0.484284, 0.771725, -0.412201,
		-0.782948, -0.592531, -0.189475,
		39.666828, 35.918625, 28.824272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610527, 36.758484, 28.969316>,  <40.214893, 36.333397, 28.956905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610527, 36.758484, 28.969316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.519466, 36.373737, 29.029953>,  <39.464828, 36.142887, 29.066336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.519466, 36.373737, 29.029953>,  <39.610527, 36.758484, 28.969316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519466, 36.373737, 29.029953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458238, 0.243190, 0.854913,
		-0.859181, 0.125160, -0.496129,
		-0.227654, -0.961870, 0.151591,
		39.451172, 36.085175, 29.075430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891510, 36.708458, 29.098373>,  <39.610527, 36.758484, 28.969316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891510, 36.708458, 29.098373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.044666, 36.377460, 29.262640>,  <39.136562, 36.178864, 29.361200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.044666, 36.377460, 29.262640>,  <38.891510, 36.708458, 29.098373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044666, 36.377460, 29.262640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410014, 0.246133, 0.878241,
		-0.827817, -0.504651, -0.245042,
		0.382892, -0.827494, 0.410667,
		39.159534, 36.129211, 29.385839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303997, 36.438286, 29.328281>,  <38.891510, 36.708458, 29.098373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303997, 36.438286, 29.328281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.610737, 36.278965, 29.529598>,  <38.794781, 36.183372, 29.650389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.610737, 36.278965, 29.529598>,  <38.303997, 36.438286, 29.328281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610737, 36.278965, 29.529598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458440, 0.208893, 0.863827,
		-0.449198, -0.893151, -0.022408,
		0.766847, -0.398302, 0.503291,
		38.840790, 36.159473, 29.680586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972385, 35.998871, 29.937490>,  <38.303997, 36.438286, 29.328281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972385, 35.998871, 29.937490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.345798, 36.108021, 30.030483>,  <38.569847, 36.173512, 30.086279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.345798, 36.108021, 30.030483>,  <37.972385, 35.998871, 29.937490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345798, 36.108021, 30.030483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309366, 0.285600, 0.907042,
		0.181108, -0.918680, 0.351036,
		0.933537, 0.272871, 0.232484,
		38.625858, 36.189884, 30.100227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958294, 35.995392, 30.671694>,  <37.972385, 35.998871, 29.937490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958294, 35.995392, 30.671694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.300564, 36.197109, 30.625193>,  <38.505924, 36.318138, 30.597292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.300564, 36.197109, 30.625193>,  <37.958294, 35.995392, 30.671694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300564, 36.197109, 30.625193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092798, 0.370502, 0.924184,
		0.509132, -0.780010, 0.363825,
		0.855671, 0.504295, -0.116251,
		38.557266, 36.348396, 30.590317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324902, 35.916065, 31.262833>,  <37.958294, 35.995392, 30.671694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324902, 35.916065, 31.262833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.472660, 36.241978, 31.084091>,  <38.561317, 36.437523, 30.976847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.472660, 36.241978, 31.084091>,  <38.324902, 35.916065, 31.262833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472660, 36.241978, 31.084091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088974, 0.509668, 0.855758,
		0.925001, -0.276359, 0.260765,
		0.369400, 0.814779, -0.446854,
		38.583481, 36.486412, 30.950035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949940, 36.200687, 31.645628>,  <38.324902, 35.916065, 31.262833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949940, 36.200687, 31.645628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.801491, 36.507385, 31.436104>,  <38.712421, 36.691402, 31.310389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.801491, 36.507385, 31.436104>,  <38.949940, 36.200687, 31.645628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801491, 36.507385, 31.436104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131028, 0.515211, 0.846988,
		0.919294, 0.382968, -0.090740,
		-0.371120, 0.766742, -0.523810,
		38.690155, 36.737408, 31.278961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319427, 36.797279, 32.017437>,  <38.949940, 36.200687, 31.645628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319427, 36.797279, 32.017437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.996967, 36.906166, 31.807287>,  <38.803490, 36.971500, 31.681198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.996967, 36.906166, 31.807287>,  <39.319427, 36.797279, 32.017437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996967, 36.906166, 31.807287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250962, 0.646776, 0.720208,
		0.535853, 0.712445, -0.453082,
		-0.806151, 0.272220, -0.525373,
		38.755123, 36.987831, 31.649675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374714, 37.476040, 32.055374>,  <39.319427, 36.797279, 32.017437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374714, 37.476040, 32.055374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.990051, 37.377235, 32.007721>,  <38.759254, 37.317951, 31.979128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.990051, 37.377235, 32.007721>,  <39.374714, 37.476040, 32.055374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990051, 37.377235, 32.007721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259502, 0.679125, 0.686620,
		-0.088695, 0.691212, -0.717188,
		-0.961661, -0.247011, -0.119136,
		38.701553, 37.303131, 31.971981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690670, 37.816505, 32.678238>,  <39.374714, 37.476040, 32.055374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690670, 37.816505, 32.678238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.336781, 37.648426, 32.758930>,  <39.124447, 37.547577, 32.807346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.336781, 37.648426, 32.758930>,  <39.690670, 37.816505, 32.678238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336781, 37.648426, 32.758930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078964, 0.561645, 0.823602,
		-0.459379, 0.712731, -0.530081,
		-0.884724, -0.420203, 0.201727,
		39.071362, 37.522366, 32.819447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248554, 38.294590, 33.012436>,  <39.690670, 37.816505, 32.678238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248554, 38.294590, 33.012436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.101635, 37.941719, 33.130314>,  <39.013481, 37.729996, 33.201042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.101635, 37.941719, 33.130314>,  <39.248554, 38.294590, 33.012436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101635, 37.941719, 33.130314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238663, 0.395626, 0.886860,
		-0.898960, 0.255413, -0.355858,
		-0.367302, -0.882182, 0.294694,
		38.991444, 37.677063, 33.218723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451218, 39.041748, 33.281906>,  <39.248554, 38.294590, 33.012436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451218, 39.041748, 33.281906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.552570, 39.426792, 33.243595>,  <39.613380, 39.657818, 33.220608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.552570, 39.426792, 33.243595>,  <39.451218, 39.041748, 33.281906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552570, 39.426792, 33.243595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367866, -0.187452, -0.910789,
		-0.894692, 0.195543, -0.401609,
		0.253381, 0.962614, -0.095778,
		39.628586, 39.715576, 33.214863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168743, 39.290897, 32.635731>,  <39.451218, 39.041748, 33.281906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168743, 39.290897, 32.635731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.487228, 39.513443, 32.730812>,  <39.678318, 39.646969, 32.787861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.487228, 39.513443, 32.730812>,  <39.168743, 39.290897, 32.635731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487228, 39.513443, 32.730812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357797, -0.116180, -0.926544,
		-0.487877, 0.822778, -0.291569,
		0.796214, 0.556362, 0.237706,
		39.726093, 39.680351, 32.802124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368198, 39.682816, 31.984764>,  <39.168743, 39.290897, 32.635731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368198, 39.682816, 31.984764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.690727, 39.788311, 32.196533>,  <39.884243, 39.851608, 32.323593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.690727, 39.788311, 32.196533>,  <39.368198, 39.682816, 31.984764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690727, 39.788311, 32.196533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533428, 0.062455, -0.843536,
		-0.255541, 0.962569, -0.090328,
		0.806321, 0.263742, 0.529421,
		39.932625, 39.867432, 32.355358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628689, 40.322159, 31.793198>,  <39.368198, 39.682816, 31.984764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628689, 40.322159, 31.793198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.939381, 40.125851, 31.951097>,  <40.125797, 40.008064, 32.045837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.939381, 40.125851, 31.951097>,  <39.628689, 40.322159, 31.793198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939381, 40.125851, 31.951097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461973, 0.017925, -0.886713,
		0.428100, 0.871103, 0.240647,
		0.776732, -0.490774, 0.394752,
		40.172401, 39.978619, 32.069523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241482, 40.686283, 31.503466>,  <39.628689, 40.322159, 31.793198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241482, 40.686283, 31.503466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.375931, 40.348915, 31.671114>,  <40.456600, 40.146496, 31.771704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.375931, 40.348915, 31.671114>,  <40.241482, 40.686283, 31.503466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375931, 40.348915, 31.671114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622339, -0.135115, -0.770998,
		0.706905, 0.519987, 0.479478,
		0.336124, -0.843420, 0.419122,
		40.476768, 40.095890, 31.796850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010807, 40.717899, 31.449884>,  <40.241482, 40.686283, 31.503466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010807, 40.717899, 31.449884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.877045, 40.341770, 31.475061>,  <40.796787, 40.116093, 31.490168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.877045, 40.341770, 31.475061>,  <41.010807, 40.717899, 31.449884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877045, 40.341770, 31.475061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619176, -0.269568, -0.737532,
		0.710487, -0.207663, 0.672372,
		-0.334408, -0.940324, 0.062945,
		40.776722, 40.059673, 31.493944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487095, 40.348160, 31.226744>,  <41.010807, 40.717899, 31.449884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487095, 40.348160, 31.226744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.197781, 40.072403, 31.210768>,  <41.024193, 39.906948, 31.201183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.197781, 40.072403, 31.210768>,  <41.487095, 40.348160, 31.226744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197781, 40.072403, 31.210768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423009, -0.396612, -0.814716,
		0.545815, -0.606170, 0.578483,
		-0.723290, -0.689388, -0.039939,
		40.980793, 39.865585, 31.198786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849926, 39.772842, 30.945644>,  <41.487095, 40.348160, 31.226744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849926, 39.772842, 30.945644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.464001, 39.669357, 30.926874>,  <41.232445, 39.607265, 30.915611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.464001, 39.669357, 30.926874>,  <41.849926, 39.772842, 30.945644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464001, 39.669357, 30.926874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184123, -0.537382, -0.822994,
		0.187699, -0.802677, 0.566109,
		-0.964815, -0.258709, -0.046925,
		41.174557, 39.591743, 30.912796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806038, 39.015369, 30.789145>,  <41.849926, 39.772842, 30.945644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806038, 39.015369, 30.789145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.459358, 39.172543, 30.666227>,  <41.251350, 39.266846, 30.592478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.459358, 39.172543, 30.666227>,  <41.806038, 39.015369, 30.789145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459358, 39.172543, 30.666227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009079, -0.628354, -0.777874,
		-0.498743, -0.671396, 0.548164,
		-0.866702, 0.392936, -0.307291,
		41.199348, 39.290424, 30.574039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367241, 38.464611, 30.620266>,  <41.806038, 39.015369, 30.789145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367241, 38.464611, 30.620266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.236019, 38.782425, 30.415874>,  <41.157288, 38.973114, 30.293240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.236019, 38.782425, 30.415874>,  <41.367241, 38.464611, 30.620266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236019, 38.782425, 30.415874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126328, -0.499156, -0.857254,
		-0.936174, -0.345777, 0.063379,
		-0.328055, 0.794532, -0.510978,
		41.137604, 39.020786, 30.262581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932049, 38.288448, 30.097282>,  <41.367241, 38.464611, 30.620266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932049, 38.288448, 30.097282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.984749, 38.655807, 29.948053>,  <41.016369, 38.876225, 29.858515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.984749, 38.655807, 29.948053>,  <40.932049, 38.288448, 30.097282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984749, 38.655807, 29.948053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029237, -0.372590, -0.927535,
		-0.990852, 0.133110, -0.022237,
		0.131749, 0.918400, -0.373074,
		41.024273, 38.931328, 29.836132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439404, 38.333084, 29.615488>,  <40.932049, 38.288448, 30.097282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439404, 38.333084, 29.615488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.732853, 38.584530, 29.512236>,  <40.908924, 38.735397, 29.450285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.732853, 38.584530, 29.512236>,  <40.439404, 38.333084, 29.615488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732853, 38.584530, 29.512236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032044, -0.411433, -0.910877,
		-0.678797, 0.659973, -0.321981,
		0.733627, 0.628617, -0.258131,
		40.952942, 38.773113, 29.434795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256672, 38.576588, 29.031778>,  <40.439404, 38.333084, 29.615488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256672, 38.576588, 29.031778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.655384, 38.608482, 29.034939>,  <40.894611, 38.627621, 29.036835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.655384, 38.608482, 29.034939>,  <40.256672, 38.576588, 29.031778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655384, 38.608482, 29.034939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028062, -0.255039, -0.966523,
		-0.075052, 0.963637, -0.256457,
		0.996785, 0.079736, 0.007900,
		40.954418, 38.632404, 29.037310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439888, 38.789955, 28.381973>,  <40.256672, 38.576588, 29.031778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439888, 38.789955, 28.381973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.801273, 38.674118, 28.508392>,  <41.018105, 38.604614, 28.584244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.801273, 38.674118, 28.508392>,  <40.439888, 38.789955, 28.381973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801273, 38.674118, 28.508392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274066, -0.176677, -0.945343,
		0.329606, 0.940702, -0.080253,
		0.903464, -0.289596, 0.316048,
		41.072311, 38.587238, 28.603207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413498, 39.515694, 28.150351>,  <40.439888, 38.789955, 28.381973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413498, 39.515694, 28.150351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.065018, 39.599384, 27.972708>,  <39.855930, 39.649597, 27.866121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.065018, 39.599384, 27.972708>,  <40.413498, 39.515694, 28.150351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065018, 39.599384, 27.972708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439540, 0.070492, 0.895453,
		0.218654, 0.975324, 0.030549,
		-0.871203, 0.209222, -0.444107,
		39.803658, 39.662151, 27.839476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140945, 40.130775, 28.591028>,  <40.413498, 39.515694, 28.150351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140945, 40.130775, 28.591028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.820480, 39.978600, 28.406246>,  <39.628201, 39.887295, 28.295378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.820480, 39.978600, 28.406246>,  <40.140945, 40.130775, 28.591028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820480, 39.978600, 28.406246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468584, -0.081360, 0.879665,
		-0.372243, 0.921220, -0.113084,
		-0.801164, -0.380439, -0.461954,
		39.580132, 39.864468, 28.267660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576740, 40.391289, 29.044214>,  <40.140945, 40.130775, 28.591028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576740, 40.391289, 29.044214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.373505, 40.133598, 28.815542>,  <39.251564, 39.978985, 28.678339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.373505, 40.133598, 28.815542>,  <39.576740, 40.391289, 29.044214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373505, 40.133598, 28.815542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679154, -0.108546, 0.725926,
		-0.529714, 0.757093, -0.382378,
		-0.508088, -0.644227, -0.571681,
		39.221077, 39.940331, 28.644037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869579, 40.614613, 28.928432>,  <39.576740, 40.391289, 29.044214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869579, 40.614613, 28.928432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.862774, 40.216850, 28.886742>,  <38.858692, 39.978191, 28.861727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.862774, 40.216850, 28.886742>,  <38.869579, 40.614613, 28.928432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862774, 40.216850, 28.886742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722678, -0.059810, 0.688592,
		-0.690975, 0.087037, -0.717619,
		-0.017012, -0.994408, -0.104227,
		38.857670, 39.918530, 28.855474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159153, 40.417038, 29.058477>,  <38.869579, 40.614613, 28.928432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159153, 40.417038, 29.058477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.388580, 40.093185, 29.108297>,  <38.526237, 39.898872, 29.138189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.388580, 40.093185, 29.108297>,  <38.159153, 40.417038, 29.058477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388580, 40.093185, 29.108297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632085, -0.340719, 0.695974,
		-0.521049, -0.477912, -0.707183,
		0.573564, -0.809637, 0.124550,
		38.560650, 39.850296, 29.145662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610207, 39.986645, 29.103777>,  <38.159153, 40.417038, 29.058477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610207, 39.986645, 29.103777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.914410, 39.775444, 29.254955>,  <38.096931, 39.648724, 29.345663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.914410, 39.775444, 29.254955>,  <37.610207, 39.986645, 29.103777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914410, 39.775444, 29.254955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609207, -0.378757, 0.696714,
		-0.224717, -0.760103, -0.609710,
		0.760506, -0.528003, 0.377947,
		38.142563, 39.617043, 29.368340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277756, 39.386948, 29.327070>,  <37.610207, 39.986645, 29.103777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277756, 39.386948, 29.327070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.618855, 39.376713, 29.535748>,  <37.823513, 39.370571, 29.660954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.618855, 39.376713, 29.535748>,  <37.277756, 39.386948, 29.327070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618855, 39.376713, 29.535748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518224, -0.166335, 0.838914,
		0.065307, -0.985737, -0.155103,
		0.852748, -0.025591, 0.521695,
		37.874680, 39.369034, 29.692257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192261, 38.779873, 29.733454>,  <37.277756, 39.386948, 29.327070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192261, 38.779873, 29.733454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.467491, 38.998619, 29.924236>,  <37.632629, 39.129868, 30.038706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.467491, 38.998619, 29.924236>,  <37.192261, 38.779873, 29.733454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467491, 38.998619, 29.924236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496757, -0.124129, 0.858967,
		0.528943, -0.827968, 0.186248,
		0.688078, 0.546864, 0.476956,
		37.673916, 39.162678, 30.067324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397850, 38.404232, 30.280254>,  <37.192261, 38.779873, 29.733454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397850, 38.404232, 30.280254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.499371, 38.780891, 30.368692>,  <37.560284, 39.006886, 30.421755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.499371, 38.780891, 30.368692>,  <37.397850, 38.404232, 30.280254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499371, 38.780891, 30.368692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251929, -0.156337, 0.955034,
		0.933872, -0.298090, 0.197550,
		0.253802, 0.941648, 0.221096,
		37.575512, 39.063385, 30.435020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818573, 38.367092, 30.907108>,  <37.397850, 38.404232, 30.280254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818573, 38.367092, 30.907108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.690971, 38.746189, 30.909023>,  <37.614410, 38.973648, 30.910173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.690971, 38.746189, 30.909023>,  <37.818573, 38.367092, 30.907108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690971, 38.746189, 30.909023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426669, -0.148124, 0.892196,
		0.846279, 0.282574, 0.451624,
		-0.319008, 0.947740, 0.004789,
		37.595268, 39.030510, 30.910460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973225, 38.609509, 31.566666>,  <37.818573, 38.367092, 30.907108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973225, 38.609509, 31.566666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.699757, 38.862061, 31.420267>,  <37.535675, 39.013592, 31.332428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.699757, 38.862061, 31.420267>,  <37.973225, 38.609509, 31.566666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699757, 38.862061, 31.420267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622870, -0.243474, 0.743474,
		0.380306, 0.736258, 0.559724,
		-0.683667, 0.631383, -0.365998,
		37.494656, 39.051476, 31.310467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731304, 38.977886, 32.140636>,  <37.973225, 38.609509, 31.566666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731304, 38.977886, 32.140636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.439323, 38.999184, 31.868067>,  <37.264133, 39.011963, 31.704525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.439323, 38.999184, 31.868067>,  <37.731304, 38.977886, 32.140636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439323, 38.999184, 31.868067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683488, -0.061970, 0.727326,
		-0.003501, 0.996657, 0.081627,
		-0.729953, 0.053245, -0.681420,
		37.220337, 39.015156, 31.663641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.361809, 40.683113, 24.409239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023121, 40.492172, 24.315252>,  <40.819908, 40.377609, 24.258860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023121, 40.492172, 24.315252>,  <41.361809, 40.683113, 24.409239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023121, 40.492172, 24.315252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158531, -0.195216, 0.967863,
		-0.507879, 0.856754, 0.089618,
		-0.846716, -0.477350, -0.234968,
		40.769108, 40.348969, 24.244762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811531, 41.008347, 24.740177>,  <41.361809, 40.683113, 24.409239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811531, 41.008347, 24.740177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689209, 40.630989, 24.688816>,  <40.615814, 40.404575, 24.657999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689209, 40.630989, 24.688816>,  <40.811531, 41.008347, 24.740177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689209, 40.630989, 24.688816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273099, -0.042282, 0.961057,
		-0.912084, 0.328968, -0.244709,
		-0.305810, -0.943394, -0.128405,
		40.597466, 40.347969, 24.650295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200016, 40.985256, 24.975895>,  <40.811531, 41.008347, 24.740177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200016, 40.985256, 24.975895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301731, 40.599281, 25.001951>,  <40.362759, 40.367699, 25.017586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301731, 40.599281, 25.001951>,  <40.200016, 40.985256, 24.975895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301731, 40.599281, 25.001951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383662, -0.038817, 0.922657,
		-0.887774, -0.259611, -0.380079,
		0.254286, -0.964933, 0.065143,
		40.378017, 40.309803, 25.021494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707394, 40.653744, 25.448584>,  <40.200016, 40.985256, 24.975895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707394, 40.653744, 25.448584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974079, 40.355797, 25.438343>,  <40.134090, 40.177029, 25.432199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974079, 40.355797, 25.438343>,  <39.707394, 40.653744, 25.448584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974079, 40.355797, 25.438343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254456, -0.259774, 0.931542,
		-0.700528, -0.614561, -0.362732,
		0.666718, -0.744870, -0.025600,
		40.174095, 40.132336, 25.430664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352448, 40.043877, 25.551346>,  <39.707394, 40.653744, 25.448584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352448, 40.043877, 25.551346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729385, 39.957005, 25.653187>,  <39.955547, 39.904881, 25.714291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729385, 39.957005, 25.653187>,  <39.352448, 40.043877, 25.551346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729385, 39.957005, 25.653187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316513, -0.331401, 0.888815,
		-0.108653, -0.918155, -0.381033,
		0.942345, -0.217175, 0.254600,
		40.012089, 39.891853, 25.729567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310680, 39.285492, 25.800179>,  <39.352448, 40.043877, 25.551346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310680, 39.285492, 25.800179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637192, 39.464436, 25.946358>,  <39.833099, 39.571804, 26.034065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637192, 39.464436, 25.946358>,  <39.310680, 39.285492, 25.800179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637192, 39.464436, 25.946358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271458, -0.261359, 0.926284,
		0.509898, -0.855312, -0.091902,
		0.816281, 0.447363, 0.365447,
		39.882076, 39.598644, 26.055992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475029, 38.959389, 26.402704>,  <39.310680, 39.285492, 25.800179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475029, 38.959389, 26.402704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674679, 39.299847, 26.467735>,  <39.794468, 39.504120, 26.506754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674679, 39.299847, 26.467735>,  <39.475029, 38.959389, 26.402704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674679, 39.299847, 26.467735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297495, -0.007902, 0.954691,
		0.813864, -0.524873, 0.249267,
		0.499121, 0.851144, 0.162578,
		39.824417, 39.555191, 26.516508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808804, 38.797153, 27.023695>,  <39.475029, 38.959389, 26.402704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808804, 38.797153, 27.023695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847446, 39.195141, 27.013039>,  <39.870632, 39.433933, 27.006645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847446, 39.195141, 27.013039>,  <39.808804, 38.797153, 27.023695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847446, 39.195141, 27.013039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061032, 0.032638, 0.997602,
		0.993450, -0.094746, 0.063878,
		0.096604, 0.994966, -0.026641,
		39.876427, 39.493629, 27.005047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337360, 38.995499, 27.528650>,  <39.808804, 38.797153, 27.023695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337360, 38.995499, 27.528650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078762, 39.294044, 27.465410>,  <39.923603, 39.473171, 27.427467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078762, 39.294044, 27.465410>,  <40.337360, 38.995499, 27.528650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078762, 39.294044, 27.465410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033153, 0.179549, 0.983190,
		0.762201, 0.640865, -0.091333,
		-0.646491, 0.746360, -0.158099,
		39.884815, 39.517952, 27.417980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108471, 39.107922, 27.851988>,  <40.337360, 38.995499, 27.528650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108471, 39.107922, 27.851988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227726, 38.767132, 28.024149>,  <41.299278, 38.562656, 28.127445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227726, 38.767132, 28.024149>,  <41.108471, 39.107922, 27.851988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227726, 38.767132, 28.024149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393233, -0.301240, -0.868690,
		0.869759, 0.428240, 0.245214,
		0.298139, -0.851977, 0.430404,
		41.317169, 38.511539, 28.153271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742447, 38.955456, 27.463686>,  <41.108471, 39.107922, 27.851988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742447, 38.955456, 27.463686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642815, 38.621372, 27.659803>,  <41.583035, 38.420921, 27.777473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642815, 38.621372, 27.659803>,  <41.742447, 38.955456, 27.463686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642815, 38.621372, 27.659803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280850, -0.546784, -0.788765,
		0.926867, -0.058767, 0.370761,
		-0.249080, -0.835209, 0.490292,
		41.568092, 38.370811, 27.806890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339100, 38.410900, 27.280806>,  <41.742447, 38.955456, 27.463686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339100, 38.410900, 27.280806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022793, 38.188953, 27.384195>,  <41.833008, 38.055786, 27.446230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022793, 38.188953, 27.384195>,  <42.339100, 38.410900, 27.280806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022793, 38.188953, 27.384195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312761, -0.729237, -0.608600,
		0.526183, -0.400419, 0.750197,
		-0.790767, -0.554868, 0.258476,
		41.785564, 38.022491, 27.461739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684212, 37.742924, 27.448835>,  <42.339100, 38.410900, 27.280806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684212, 37.742924, 27.448835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291874, 37.702362, 27.382311>,  <42.056473, 37.678024, 27.342396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291874, 37.702362, 27.382311>,  <42.684212, 37.742924, 27.448835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291874, 37.702362, 27.382311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180054, -0.797740, -0.575493,
		-0.074316, -0.594415, 0.800718,
		-0.980845, -0.101404, -0.166311,
		41.997620, 37.671940, 27.332418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530586, 37.043839, 27.490532>,  <42.684212, 37.742924, 27.448835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530586, 37.043839, 27.490532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203705, 37.176502, 27.301989>,  <42.007576, 37.256100, 27.188862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203705, 37.176502, 27.301989>,  <42.530586, 37.043839, 27.490532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203705, 37.176502, 27.301989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135366, -0.684510, -0.716326,
		-0.560230, -0.649189, 0.514487,
		-0.817202, 0.331663, -0.471360,
		41.958546, 37.276001, 27.160580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252182, 36.418446, 27.209379>,  <42.530586, 37.043839, 27.490532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252182, 36.418446, 27.209379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134056, 36.735252, 26.995653>,  <42.063179, 36.925339, 26.867418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134056, 36.735252, 26.995653>,  <42.252182, 36.418446, 27.209379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134056, 36.735252, 26.995653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008296, -0.561362, -0.827529,
		-0.955364, -0.239950, 0.172350,
		-0.295316, 0.792021, -0.534314,
		42.045460, 36.972858, 26.835360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730148, 36.184036, 26.744648>,  <42.252182, 36.418446, 27.209379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730148, 36.184036, 26.744648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861073, 36.521416, 26.574259>,  <41.939629, 36.723843, 26.472025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861073, 36.521416, 26.574259>,  <41.730148, 36.184036, 26.744648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861073, 36.521416, 26.574259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194935, -0.501384, -0.842979,
		-0.924589, 0.192883, -0.328529,
		0.327315, 0.843451, -0.425975,
		41.959267, 36.774452, 26.446466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716141, 35.935955, 26.101141>,  <41.730148, 36.184036, 26.744648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716141, 35.935955, 26.101141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914951, 36.275856, 26.030857>,  <42.034237, 36.479797, 25.988688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914951, 36.275856, 26.030857>,  <41.716141, 35.935955, 26.101141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914951, 36.275856, 26.030857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181021, -0.299577, -0.936742,
		-0.848641, 0.433782, -0.302723,
		0.497031, 0.849757, -0.175710,
		42.064060, 36.530785, 25.978144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456890, 36.286388, 25.551451>,  <41.716141, 35.935955, 26.101141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456890, 36.286388, 25.551451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828861, 36.433231, 25.560076>,  <42.052044, 36.521336, 25.565250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828861, 36.433231, 25.560076>,  <41.456890, 36.286388, 25.551451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828861, 36.433231, 25.560076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136756, -0.290805, -0.946958,
		-0.341365, 0.883553, -0.320632,
		0.929929, 0.367107, 0.021561,
		42.107841, 36.543362, 25.566544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586124, 36.501610, 24.864212>,  <41.456890, 36.286388, 25.551451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586124, 36.501610, 24.864212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960083, 36.506294, 25.006100>,  <42.184460, 36.509106, 25.091232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960083, 36.506294, 25.006100>,  <41.586124, 36.501610, 24.864212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960083, 36.506294, 25.006100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354902, -0.022567, -0.934631,
		-0.002940, 0.999677, -0.025254,
		0.934899, 0.011710, 0.354721,
		42.240551, 36.509808, 25.112516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013222, 36.957169, 24.350250>,  <41.586124, 36.501610, 24.864212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013222, 36.957169, 24.350250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276878, 36.731899, 24.549597>,  <42.435074, 36.596737, 24.669205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276878, 36.731899, 24.549597>,  <42.013222, 36.957169, 24.350250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276878, 36.731899, 24.549597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426999, -0.265236, -0.864478,
		0.619031, 0.782618, 0.065644,
		0.659145, -0.563169, 0.498366,
		42.474621, 36.562950, 24.699106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756031, 37.295780, 24.271849>,  <42.013222, 36.957169, 24.350250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756031, 37.295780, 24.271849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820156, 36.910969, 24.360218>,  <42.858631, 36.680084, 24.413239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820156, 36.910969, 24.360218>,  <42.756031, 37.295780, 24.271849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820156, 36.910969, 24.360218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446068, -0.129048, -0.885647,
		0.880524, 0.240527, 0.408441,
		0.160314, -0.962026, 0.220921,
		42.868252, 36.622360, 24.426495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455833, 37.147041, 24.323750>,  <42.756031, 37.295780, 24.271849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455833, 37.147041, 24.323750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320000, 36.780552, 24.238693>,  <43.238499, 36.560658, 24.187660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320000, 36.780552, 24.238693>,  <43.455833, 37.147041, 24.323750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320000, 36.780552, 24.238693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516037, 0.007525, -0.856533,
		0.786376, -0.400598, 0.470250,
		-0.339587, -0.916223, -0.212641,
		43.218124, 36.505684, 24.174900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989689, 36.738186, 24.040548>,  <43.455833, 37.147041, 24.323750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989689, 36.738186, 24.040548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.654324, 36.571209, 23.900373>,  <43.453106, 36.471024, 23.816269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.654324, 36.571209, 23.900373>,  <43.989689, 36.738186, 24.040548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654324, 36.571209, 23.900373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431718, -0.116164, -0.894497,
		0.332693, -0.901248, 0.277611,
		-0.838412, -0.417443, -0.350438,
		43.402802, 36.445976, 23.795242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.467369, 36.163876, 20.716208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.789078, 36.310337, 20.903433>,  <35.982101, 36.398212, 21.015768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.789078, 36.310337, 20.903433>,  <35.467369, 36.163876, 20.716208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789078, 36.310337, 20.903433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378495, -0.291597, 0.878472,
		0.458143, -0.883686, -0.095934,
		0.804268, 0.366155, 0.468064,
		36.030357, 36.420185, 21.043852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891617, 35.600300, 21.106150>,  <35.467369, 36.163876, 20.716208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891617, 35.600300, 21.106150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.925537, 35.968121, 21.259630>,  <35.945889, 36.188812, 21.351719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.925537, 35.968121, 21.259630>,  <35.891617, 35.600300, 21.106150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925537, 35.968121, 21.259630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251643, -0.352841, 0.901210,
		0.964098, -0.172981, 0.201478,
		0.084802, 0.919555, 0.383702,
		35.950977, 36.243988, 21.374741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283123, 35.399967, 21.704586>,  <35.891617, 35.600300, 21.106150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283123, 35.399967, 21.704586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.117020, 35.757366, 21.772961>,  <36.017357, 35.971806, 21.813986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.117020, 35.757366, 21.772961>,  <36.283123, 35.399967, 21.704586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117020, 35.757366, 21.772961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262122, -0.297455, 0.918048,
		0.871119, 0.336426, 0.357727,
		-0.415263, 0.893498, 0.170934,
		35.992439, 36.025417, 21.824242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421669, 35.542469, 22.272882>,  <36.283123, 35.399967, 21.704586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421669, 35.542469, 22.272882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.123989, 35.806683, 22.233152>,  <35.945381, 35.965210, 22.209314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.123989, 35.806683, 22.233152>,  <36.421669, 35.542469, 22.272882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123989, 35.806683, 22.233152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384747, -0.302343, 0.872100,
		0.546018, 0.687232, 0.479141,
		-0.744200, 0.660531, -0.099325,
		35.900730, 36.004841, 22.203354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442112, 35.807823, 22.921314>,  <36.421669, 35.542469, 22.272882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442112, 35.807823, 22.921314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.088654, 35.955830, 22.806593>,  <35.876579, 36.044632, 22.737759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.088654, 35.955830, 22.806593>,  <36.442112, 35.807823, 22.921314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088654, 35.955830, 22.806593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418602, -0.350170, 0.837946,
		0.209622, 0.860505, 0.464316,
		-0.883646, 0.370016, -0.286806,
		35.823559, 36.066833, 22.720551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172981, 36.463799, 23.380255>,  <36.442112, 35.807823, 22.921314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172981, 36.463799, 23.380255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.867653, 36.279488, 23.199133>,  <35.684456, 36.168900, 23.090460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.867653, 36.279488, 23.199133>,  <36.172981, 36.463799, 23.380255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867653, 36.279488, 23.199133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412821, -0.191231, 0.890511,
		-0.496917, 0.866669, -0.044248,
		-0.763317, -0.460776, -0.452805,
		35.638657, 36.141254, 23.063292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639942, 36.906631, 23.556698>,  <36.172981, 36.463799, 23.380255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639942, 36.906631, 23.556698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.497021, 36.546608, 23.456919>,  <35.411266, 36.330593, 23.397051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.497021, 36.546608, 23.456919>,  <35.639942, 36.906631, 23.556698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497021, 36.546608, 23.456919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446225, -0.070120, 0.892169,
		-0.820497, 0.430089, -0.376575,
		-0.357306, -0.900059, -0.249450,
		35.389828, 36.276588, 23.382084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948936, 36.948338, 23.755789>,  <35.639942, 36.906631, 23.556698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948936, 36.948338, 23.755789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.046589, 36.560650, 23.743052>,  <35.105179, 36.328037, 23.735409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.046589, 36.560650, 23.743052>,  <34.948936, 36.948338, 23.755789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046589, 36.560650, 23.743052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352248, -0.119223, 0.928282,
		-0.903505, -0.215406, -0.370512,
		0.244131, -0.969219, -0.031842,
		35.119827, 36.269882, 23.733500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377674, 36.597893, 24.108328>,  <34.948936, 36.948338, 23.755789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377674, 36.597893, 24.108328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.674110, 36.329769, 24.093029>,  <34.851971, 36.168896, 24.083849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.674110, 36.329769, 24.093029>,  <34.377674, 36.597893, 24.108328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674110, 36.329769, 24.093029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208739, -0.284175, 0.935774,
		-0.638130, -0.685510, -0.350521,
		0.741092, -0.670313, -0.038248,
		34.896439, 36.128674, 24.081554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107227, 36.100876, 24.505199>,  <34.377674, 36.597893, 24.108328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107227, 36.100876, 24.505199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.491570, 35.990238, 24.511578>,  <34.722176, 35.923855, 24.515404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.491570, 35.990238, 24.511578>,  <34.107227, 36.100876, 24.505199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491570, 35.990238, 24.511578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078025, -0.214932, 0.973507,
		-0.265847, -0.936641, -0.228100,
		0.960853, -0.276601, 0.015943,
		34.779827, 35.907257, 24.516361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057266, 35.518944, 24.840984>,  <34.107227, 36.100876, 24.505199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057266, 35.518944, 24.840984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.436390, 35.644653, 24.862465>,  <34.663864, 35.720078, 24.875353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.436390, 35.644653, 24.862465>,  <34.057266, 35.518944, 24.840984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436390, 35.644653, 24.862465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009275, -0.141188, 0.989939,
		0.318695, -0.938774, -0.130905,
		0.947811, 0.314275, 0.053703,
		34.720734, 35.738937, 24.878576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464645, 35.075409, 25.279295>,  <34.057266, 35.518944, 24.840984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464645, 35.075409, 25.279295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.639465, 35.435154, 25.274620>,  <34.744358, 35.651001, 25.271814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.639465, 35.435154, 25.274620>,  <34.464645, 35.075409, 25.279295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639465, 35.435154, 25.274620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043471, -0.008141, 0.999021,
		0.898386, -0.437131, -0.042655,
		0.437051, 0.899361, -0.011689,
		34.770580, 35.704964, 25.271114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012829, 35.131176, 25.841026>,  <34.464645, 35.075409, 25.279295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012829, 35.131176, 25.841026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.978130, 35.519573, 25.751898>,  <34.957310, 35.752613, 25.698421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.978130, 35.519573, 25.751898>,  <35.012829, 35.131176, 25.841026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978130, 35.519573, 25.751898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340098, 0.239091, 0.909488,
		0.936380, 0.003117, -0.350973,
		-0.086749, 0.970992, -0.222820,
		34.952106, 35.810871, 25.685051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631508, 35.343906, 26.198364>,  <35.012829, 35.131176, 25.841026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631508, 35.343906, 26.198364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.424480, 35.683399, 26.154953>,  <35.300262, 35.887096, 26.128906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.424480, 35.683399, 26.154953>,  <35.631508, 35.343906, 26.198364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424480, 35.683399, 26.154953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129520, 0.047667, 0.990430,
		0.845782, 0.526673, 0.085257,
		-0.517569, 0.848731, -0.108530,
		35.269211, 35.938019, 26.122395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372604, 35.559166, 26.382240>,  <35.631508, 35.343906, 26.198364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372604, 35.559166, 26.382240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.720497, 35.387608, 26.479900>,  <36.929234, 35.284672, 26.538496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.720497, 35.387608, 26.479900>,  <36.372604, 35.559166, 26.382240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720497, 35.387608, 26.479900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331997, 0.142428, -0.932466,
		0.365158, 0.892055, 0.266268,
		0.869734, -0.428897, 0.244151,
		36.981419, 35.258938, 26.553146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969780, 35.990410, 26.170061>,  <36.372604, 35.559166, 26.382240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969780, 35.990410, 26.170061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.185081, 35.665398, 26.259575>,  <37.314262, 35.470390, 26.313284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.185081, 35.665398, 26.259575>,  <36.969780, 35.990410, 26.170061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185081, 35.665398, 26.259575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455414, 0.056989, -0.888454,
		0.709143, 0.580125, 0.400712,
		0.538251, -0.812531, 0.223784,
		37.346558, 35.421638, 26.326710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805645, 36.037895, 26.012487>,  <36.969780, 35.990410, 26.170061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805645, 36.037895, 26.012487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.698540, 35.652580, 26.004730>,  <37.634277, 35.421391, 26.000076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.698540, 35.652580, 26.004730>,  <37.805645, 36.037895, 26.012487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698540, 35.652580, 26.004730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399064, -0.092560, -0.912239,
		0.876956, -0.252001, 0.409198,
		-0.267760, -0.963290, -0.019393,
		37.618210, 35.363594, 25.998913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428333, 35.592918, 25.815956>,  <37.805645, 36.037895, 26.012487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428333, 35.592918, 25.815956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.091339, 35.400364, 25.719213>,  <37.889145, 35.284832, 25.661169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.091339, 35.400364, 25.719213>,  <38.428333, 35.592918, 25.815956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091339, 35.400364, 25.719213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403051, -0.265340, -0.875868,
		0.357454, -0.835383, 0.417566,
		-0.842482, -0.481382, -0.241855,
		37.838593, 35.255951, 25.646658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717522, 35.119106, 25.432827>,  <38.428333, 35.592918, 25.815956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717522, 35.119106, 25.432827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.329910, 35.064632, 25.350424>,  <38.097343, 35.031948, 25.300982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.329910, 35.064632, 25.350424>,  <38.717522, 35.119106, 25.432827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329910, 35.064632, 25.350424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230546, -0.199881, -0.952311,
		0.088513, -0.970310, 0.225087,
		-0.969027, -0.136185, -0.206009,
		38.039204, 35.023777, 25.288622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648636, 34.396515, 25.172344>,  <38.717522, 35.119106, 25.432827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648636, 34.396515, 25.172344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.345810, 34.615150, 25.029182>,  <38.164116, 34.746330, 24.943285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.345810, 34.615150, 25.029182>,  <38.648636, 34.396515, 25.172344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345810, 34.615150, 25.029182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184925, -0.346136, -0.919779,
		-0.626624, -0.762516, 0.160969,
		-0.757064, 0.546588, -0.357905,
		38.118690, 34.779125, 24.921810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407074, 34.028366, 24.642847>,  <38.648636, 34.396515, 25.172344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407074, 34.028366, 24.642847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.240253, 34.380505, 24.552460>,  <38.140160, 34.591785, 24.498228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.240253, 34.380505, 24.552460>,  <38.407074, 34.028366, 24.642847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240253, 34.380505, 24.552460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057119, -0.222742, -0.973202,
		-0.907084, -0.418787, 0.042612,
		-0.417056, 0.880343, -0.225966,
		38.115135, 34.644608, 24.484671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145142, 33.935619, 23.991899>,  <38.407074, 34.028366, 24.642847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145142, 33.935619, 23.991899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.139214, 34.334988, 24.013594>,  <38.135658, 34.574608, 24.026609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.139214, 34.334988, 24.013594>,  <38.145142, 33.935619, 23.991899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139214, 34.334988, 24.013594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148326, 0.051446, -0.987600,
		-0.988828, -0.022677, 0.147329,
		-0.014816, 0.998418, 0.054235,
		38.134769, 34.634514, 24.029863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595337, 34.198235, 23.477200>,  <38.145142, 33.935619, 23.991899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595337, 34.198235, 23.477200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.862225, 34.488766, 23.543262>,  <38.022358, 34.663082, 23.582899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.862225, 34.488766, 23.543262>,  <37.595337, 34.198235, 23.477200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862225, 34.488766, 23.543262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016965, 0.236487, -0.971486,
		-0.744671, 0.645390, 0.170111,
		0.667217, 0.726323, 0.165156,
		38.062389, 34.706661, 23.592810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295174, 34.727428, 23.069397>,  <37.595337, 34.198235, 23.477200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295174, 34.727428, 23.069397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.675129, 34.823803, 23.149057>,  <37.903103, 34.881630, 23.196854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.675129, 34.823803, 23.149057>,  <37.295174, 34.727428, 23.069397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675129, 34.823803, 23.149057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096570, 0.379742, -0.920038,
		-0.297301, 0.893165, 0.337444,
		0.949888, 0.240941, 0.199151,
		37.960094, 34.896084, 23.208803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487072, 35.424221, 22.748573>,  <37.295174, 34.727428, 23.069397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487072, 35.424221, 22.748573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.826977, 35.216312, 22.783762>,  <38.030918, 35.091568, 22.804874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.826977, 35.216312, 22.783762>,  <37.487072, 35.424221, 22.748573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826977, 35.216312, 22.783762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308438, 0.354886, -0.882565,
		0.427515, 0.777104, 0.461887,
		0.849763, -0.519774, 0.087969,
		38.081905, 35.060379, 22.810152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098068, 35.836575, 22.643673>,  <37.487072, 35.424221, 22.748573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098068, 35.836575, 22.643673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.205242, 35.462360, 22.551594>,  <38.269547, 35.237831, 22.496347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.205242, 35.462360, 22.551594>,  <38.098068, 35.836575, 22.643673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205242, 35.462360, 22.551594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340705, 0.315500, -0.885652,
		0.901183, 0.158868, 0.403274,
		0.267935, -0.935532, -0.230197,
		38.285622, 35.181702, 22.482534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702728, 35.956715, 22.250776>,  <38.098068, 35.836575, 22.643673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702728, 35.956715, 22.250776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.617462, 35.574383, 22.169836>,  <38.566303, 35.344982, 22.121273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.617462, 35.574383, 22.169836>,  <38.702728, 35.956715, 22.250776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617462, 35.574383, 22.169836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361105, 0.115366, -0.925361,
		0.907834, -0.270325, 0.320564,
		-0.213166, -0.955832, -0.202349,
		38.553513, 35.287632, 22.109131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354916, 35.590954, 22.095943>,  <38.702728, 35.956715, 22.250776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354916, 35.590954, 22.095943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.042439, 35.418831, 21.915028>,  <38.854950, 35.315556, 21.806479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.042439, 35.418831, 21.915028>,  <39.354916, 35.590954, 22.095943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042439, 35.418831, 21.915028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379093, 0.248642, -0.891328,
		0.496008, -0.867760, -0.031109,
		-0.781195, -0.430312, -0.452290,
		38.808079, 35.289738, 21.779341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914814, 35.168186, 22.348507>,  <39.354916, 35.590954, 22.095943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914814, 35.168186, 22.348507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.300026, 35.198925, 22.451788>,  <40.531155, 35.217369, 22.513756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.300026, 35.198925, 22.451788>,  <39.914814, 35.168186, 22.348507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300026, 35.198925, 22.451788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247705, -0.124187, 0.960843,
		0.105902, -0.989279, -0.100561,
		0.963030, 0.076846, 0.258201,
		40.588936, 35.221977, 22.529249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183716, 34.512413, 22.743328>,  <39.914814, 35.168186, 22.348507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183716, 34.512413, 22.743328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.433472, 34.803528, 22.856791>,  <40.583324, 34.978195, 22.924868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.433472, 34.803528, 22.856791>,  <40.183716, 34.512413, 22.743328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433472, 34.803528, 22.856791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118591, -0.270610, 0.955357,
		0.772055, -0.630158, -0.082658,
		0.624394, 0.727785, 0.283657,
		40.620789, 35.021862, 22.941887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424873, 34.248268, 23.358921>,  <40.183716, 34.512413, 22.743328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424873, 34.248268, 23.358921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.548843, 34.628540, 23.363766>,  <40.623226, 34.856705, 23.366673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.548843, 34.628540, 23.363766>,  <40.424873, 34.248268, 23.358921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548843, 34.628540, 23.363766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006172, -0.014751, 0.999872,
		0.950741, -0.309811, -0.010439,
		0.309925, 0.950684, 0.012112,
		40.641823, 34.913746, 23.367399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031471, 34.247601, 23.845058>,  <40.424873, 34.248268, 23.358921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031471, 34.247601, 23.845058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.861618, 34.609222, 23.825590>,  <40.759708, 34.826195, 23.813910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.861618, 34.609222, 23.825590>,  <41.031471, 34.247601, 23.845058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861618, 34.609222, 23.825590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126856, -0.006184, 0.991902,
		0.896435, 0.427366, 0.117311,
		-0.424631, 0.904057, -0.048670,
		40.734230, 34.880440, 23.810989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180267, 34.593254, 24.419985>,  <41.031471, 34.247601, 23.845058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180267, 34.593254, 24.419985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.877686, 34.831135, 24.311089>,  <40.696136, 34.973862, 24.245750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.877686, 34.831135, 24.311089>,  <41.180267, 34.593254, 24.419985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877686, 34.831135, 24.311089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126166, 0.275740, 0.952916,
		0.641767, 0.755181, -0.133552,
		-0.756450, 0.594701, -0.272239,
		40.650749, 35.009544, 24.229416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274395, 35.234318, 24.839279>,  <41.180267, 34.593254, 24.419985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274395, 35.234318, 24.839279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.892632, 35.225346, 24.720217>,  <40.663574, 35.219963, 24.648779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.892632, 35.225346, 24.720217>,  <41.274395, 35.234318, 24.839279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892632, 35.225346, 24.720217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296105, 0.197278, 0.934560,
		0.037756, 0.980091, -0.194926,
		-0.954409, -0.022433, -0.297658,
		40.606308, 35.218616, 24.630919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999046, 35.812180, 25.060745>,  <41.274395, 35.234318, 24.839279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999046, 35.812180, 25.060745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.689907, 35.563137, 25.011656>,  <40.504425, 35.413712, 24.982203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.689907, 35.563137, 25.011656>,  <40.999046, 35.812180, 25.060745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689907, 35.563137, 25.011656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200619, 0.056240, 0.978054,
		-0.602044, 0.780509, -0.168373,
		-0.772849, -0.622610, -0.122726,
		40.458054, 35.376354, 24.974838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524242, 36.162556, 25.421888>,  <40.999046, 35.812180, 25.060745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524242, 36.162556, 25.421888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.404404, 35.783215, 25.380178>,  <40.332500, 35.555611, 25.355152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.404404, 35.783215, 25.380178>,  <40.524242, 36.162556, 25.421888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404404, 35.783215, 25.380178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181173, -0.050753, 0.982141,
		-0.936706, 0.313137, -0.156610,
		-0.299596, -0.948351, -0.104273,
		40.314526, 35.498711, 25.348896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838913, 36.127911, 25.578941>,  <40.524242, 36.162556, 25.421888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838913, 36.127911, 25.578941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.992504, 35.762833, 25.634869>,  <40.084660, 35.543785, 25.668425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.992504, 35.762833, 25.634869>,  <39.838913, 36.127911, 25.578941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992504, 35.762833, 25.634869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275388, 0.031330, 0.960823,
		-0.881317, -0.407442, -0.239314,
		0.383981, -0.912694, 0.139816,
		40.107700, 35.489025, 25.676813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294998, 35.725815, 25.807281>,  <39.838913, 36.127911, 25.578941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294998, 35.725815, 25.807281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.641273, 35.566925, 25.929129>,  <39.849041, 35.471592, 26.002237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.641273, 35.566925, 25.929129>,  <39.294998, 35.725815, 25.807281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641273, 35.566925, 25.929129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379540, -0.124079, 0.916817,
		-0.326387, -0.909294, -0.258178,
		0.865691, -0.397226, 0.304616,
		39.900982, 35.447758, 26.020514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070076, 35.131844, 26.194881>,  <39.294998, 35.725815, 25.807281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070076, 35.131844, 26.194881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.437489, 35.208847, 26.333010>,  <39.657936, 35.255051, 26.415886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.437489, 35.208847, 26.333010>,  <39.070076, 35.131844, 26.194881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437489, 35.208847, 26.333010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326437, -0.123455, 0.937122,
		0.223041, -0.973497, -0.050553,
		0.918527, 0.192514, 0.345321,
		39.713047, 35.266602, 26.436605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188473, 34.766590, 26.769659>,  <39.070076, 35.131844, 26.194881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188473, 34.766590, 26.769659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.487137, 35.027637, 26.821163>,  <39.666336, 35.184265, 26.852066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.487137, 35.027637, 26.821163>,  <39.188473, 34.766590, 26.769659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487137, 35.027637, 26.821163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272908, 0.124012, 0.954014,
		0.606642, -0.747467, 0.270701,
		0.746664, 0.652621, 0.128759,
		39.711136, 35.223423, 26.859791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409161, 34.640141, 27.442312>,  <39.188473, 34.766590, 26.769659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409161, 34.640141, 27.442312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.573620, 34.998840, 27.376825>,  <39.672295, 35.214058, 27.337532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.573620, 34.998840, 27.376825>,  <39.409161, 34.640141, 27.442312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573620, 34.998840, 27.376825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036252, 0.195543, 0.980025,
		0.910849, -0.396998, 0.112906,
		0.411146, 0.896747, -0.163718,
		39.696964, 35.267864, 27.327709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077686, 34.645596, 27.765722>,  <39.409161, 34.640141, 27.442312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077686, 34.645596, 27.765722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.951370, 35.024624, 27.746155>,  <39.875580, 35.252041, 27.734413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.951370, 35.024624, 27.746155>,  <40.077686, 34.645596, 27.765722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951370, 35.024624, 27.746155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029214, 0.061244, 0.997695,
		0.948380, 0.313632, -0.047022,
		-0.315789, 0.947567, -0.048920,
		39.856632, 35.308895, 27.731478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.211929, 36.323132, 23.423231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.815327, 36.326546, 23.371315>,  <43.577366, 36.328594, 23.340164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.815327, 36.326546, 23.371315>,  <44.211929, 36.323132, 23.423231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815327, 36.326546, 23.371315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124762, -0.219773, -0.967540,
		-0.036782, -0.975514, 0.216841,
		-0.991505, 0.008534, -0.129791,
		43.517876, 36.329105, 23.332378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025150, 35.665031, 23.026752>,  <44.211929, 36.323132, 23.423231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025150, 35.665031, 23.026752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.730366, 35.929237, 22.969328>,  <43.553493, 36.087761, 22.934874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.730366, 35.929237, 22.969328>,  <44.025150, 35.665031, 23.026752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730366, 35.929237, 22.969328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019450, -0.233026, -0.972276,
		-0.675655, -0.713738, 0.184578,
		-0.736962, 0.660513, -0.143562,
		43.509277, 36.127392, 22.926260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695805, 35.508606, 22.519468>,  <44.025150, 35.665031, 23.026752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695805, 35.508606, 22.519468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.541519, 35.877541, 22.510292>,  <43.448948, 36.098900, 22.504786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.541519, 35.877541, 22.510292>,  <43.695805, 35.508606, 22.519468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541519, 35.877541, 22.510292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047914, -0.044857, -0.997844,
		-0.921375, -0.383780, 0.061494,
		-0.385711, 0.922335, -0.022941,
		43.425804, 36.154240, 22.503410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151863, 35.485489, 21.968531>,  <43.695805, 35.508606, 22.519468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151863, 35.485489, 21.968531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.234306, 35.874020, 22.015947>,  <43.283772, 36.107136, 22.044397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.234306, 35.874020, 22.015947>,  <43.151863, 35.485489, 21.968531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234306, 35.874020, 22.015947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014991, 0.117993, -0.992901,
		-0.978415, 0.206418, 0.009757,
		0.206104, 0.971323, 0.118540,
		43.296139, 36.165417, 22.051510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616535, 35.853672, 21.646271>,  <43.151863, 35.485489, 21.968531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616535, 35.853672, 21.646271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.938057, 36.089046, 21.681252>,  <43.130970, 36.230270, 21.702240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.938057, 36.089046, 21.681252>,  <42.616535, 35.853672, 21.646271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938057, 36.089046, 21.681252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031661, 0.104483, -0.994023,
		-0.594052, 0.801767, 0.065354,
		0.803803, 0.588432, 0.087453,
		43.179199, 36.265575, 21.707487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467369, 36.473740, 21.172014>,  <42.616535, 35.853672, 21.646271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467369, 36.473740, 21.172014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.861843, 36.472244, 21.238253>,  <43.098530, 36.471348, 21.277996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.861843, 36.472244, 21.238253>,  <42.467369, 36.473740, 21.172014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861843, 36.472244, 21.238253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163943, 0.164675, -0.972628,
		-0.023631, 0.986341, 0.163014,
		0.986187, -0.003741, 0.165595,
		43.157700, 36.471123, 21.287931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821617, 37.092583, 20.988520>,  <42.467369, 36.473740, 21.172014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821617, 37.092583, 20.988520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.130402, 36.842495, 20.942608>,  <43.315674, 36.692444, 20.915060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.130402, 36.842495, 20.942608>,  <42.821617, 37.092583, 20.988520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130402, 36.842495, 20.942608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098943, 0.296547, -0.949879,
		0.627922, 0.721913, 0.290784,
		0.771962, -0.625221, -0.114780,
		43.361992, 36.654930, 20.908175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285683, 37.542076, 20.663256>,  <42.821617, 37.092583, 20.988520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285683, 37.542076, 20.663256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.358978, 37.155338, 20.592121>,  <43.402958, 36.923294, 20.549440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.358978, 37.155338, 20.592121>,  <43.285683, 37.542076, 20.663256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.358978, 37.155338, 20.592121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110590, 0.200024, -0.973530,
		0.976827, 0.158726, 0.143577,
		0.183244, -0.966849, -0.177835,
		43.413952, 36.865284, 20.538771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783752, 37.671772, 20.171282>,  <43.285683, 37.542076, 20.663256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783752, 37.671772, 20.171282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.694386, 37.282429, 20.150642>,  <43.640766, 37.048824, 20.138258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.694386, 37.282429, 20.150642>,  <43.783752, 37.671772, 20.171282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694386, 37.282429, 20.150642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086097, 0.033024, -0.995739,
		0.970913, -0.226909, 0.076425,
		-0.223419, -0.973356, -0.051599,
		43.627361, 36.990421, 20.135162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286148, 37.429996, 19.733213>,  <43.783752, 37.671772, 20.171282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286148, 37.429996, 19.733213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.995071, 37.155636, 19.732746>,  <43.820423, 36.991020, 19.732466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.995071, 37.155636, 19.732746>,  <44.286148, 37.429996, 19.733213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995071, 37.155636, 19.732746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116147, 0.124902, -0.985347,
		0.675997, -0.716895, -0.170556,
		-0.727694, -0.685902, -0.001168,
		43.776764, 36.949867, 19.732395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461102, 36.946053, 19.195562>,  <44.286148, 37.429996, 19.733213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.461102, 36.946053, 19.195562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.065014, 36.906067, 19.234482>,  <43.827362, 36.882076, 19.257833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.065014, 36.906067, 19.234482>,  <44.461102, 36.946053, 19.195562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.065014, 36.906067, 19.234482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100774, 0.030315, -0.994447,
		0.096465, -0.994529, -0.040093,
		-0.990222, -0.099970, 0.097299,
		43.767948, 36.876076, 19.263672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262562, 36.385960, 18.721172>,  <44.461102, 36.946053, 19.195562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262562, 36.385960, 18.721172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.907238, 36.552494, 18.798716>,  <43.694046, 36.652412, 18.845242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.907238, 36.552494, 18.798716>,  <44.262562, 36.385960, 18.721172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907238, 36.552494, 18.798716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202476, 0.023842, -0.978997,
		-0.412211, -0.908899, 0.063118,
		-0.888305, 0.416333, 0.193858,
		43.640747, 36.677395, 18.856873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775032, 36.068851, 18.327194>,  <44.262562, 36.385960, 18.721172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775032, 36.068851, 18.327194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.603588, 36.419167, 18.415997>,  <43.500721, 36.629356, 18.469278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.603588, 36.419167, 18.415997>,  <43.775032, 36.068851, 18.327194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603588, 36.419167, 18.415997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148283, 0.174201, -0.973481,
		-0.891238, -0.450164, 0.055201,
		-0.428611, 0.875789, 0.222006,
		43.475006, 36.681904, 18.482599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.255001, 36.265686, 17.818586>,  <43.775032, 36.068851, 18.327194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.255001, 36.265686, 17.818586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.353394, 36.630665, 17.949390>,  <43.412430, 36.849651, 18.027874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.353394, 36.630665, 17.949390>,  <43.255001, 36.265686, 17.818586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353394, 36.630665, 17.949390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322865, 0.395243, -0.859966,
		-0.913921, 0.105954, 0.391819,
		0.245980, 0.912446, 0.327012,
		43.427189, 36.904400, 18.047495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993370, 35.661449, 17.398634>,  <43.255001, 36.265686, 17.818586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993370, 35.661449, 17.398634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.717323, 35.397892, 17.278898>,  <42.551697, 35.239758, 17.207056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.717323, 35.397892, 17.278898>,  <42.993370, 35.661449, 17.398634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717323, 35.397892, 17.278898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412997, 0.018905, 0.910536,
		-0.594284, 0.752002, -0.285166,
		-0.690116, -0.658890, -0.299339,
		42.510288, 35.200226, 17.189096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414360, 35.932625, 17.602089>,  <42.993370, 35.661449, 17.398634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414360, 35.932625, 17.602089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.292984, 35.556461, 17.540701>,  <42.220158, 35.330761, 17.503868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.292984, 35.556461, 17.540701>,  <42.414360, 35.932625, 17.602089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292984, 35.556461, 17.540701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622921, 0.073901, 0.778786,
		-0.721037, 0.331914, -0.608226,
		-0.303438, -0.940411, -0.153471,
		42.201954, 35.274338, 17.494659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683830, 35.960430, 17.711397>,  <42.414360, 35.932625, 17.602089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683830, 35.960430, 17.711397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.811249, 35.584576, 17.761387>,  <41.887699, 35.359062, 17.791380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.811249, 35.584576, 17.761387>,  <41.683830, 35.960430, 17.711397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811249, 35.584576, 17.761387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544037, -0.073261, 0.835857,
		-0.776243, -0.334248, -0.534532,
		0.318544, -0.939634, 0.124975,
		41.906811, 35.302685, 17.798880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148548, 35.487309, 17.903210>,  <41.683830, 35.960430, 17.711397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148548, 35.487309, 17.903210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.465641, 35.276886, 18.026388>,  <41.655899, 35.150631, 18.100294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.465641, 35.276886, 18.026388>,  <41.148548, 35.487309, 17.903210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465641, 35.276886, 18.026388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512179, -0.300917, 0.804439,
		-0.330529, -0.795423, -0.507989,
		0.792732, -0.526072, 0.307937,
		41.703461, 35.119068, 18.118771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871902, 34.819141, 18.202938>,  <41.148548, 35.487309, 17.903210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871902, 34.819141, 18.202938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.232140, 34.905964, 18.353577>,  <41.448280, 34.958057, 18.443960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.232140, 34.905964, 18.353577>,  <40.871902, 34.819141, 18.202938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232140, 34.905964, 18.353577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367350, -0.083082, 0.926365,
		0.232359, -0.972618, 0.004912,
		0.900591, 0.217054, 0.376596,
		41.502316, 34.971081, 18.466555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045048, 34.317394, 18.735569>,  <40.871902, 34.819141, 18.202938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045048, 34.317394, 18.735569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.285263, 34.625908, 18.819925>,  <41.429394, 34.811016, 18.870539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.285263, 34.625908, 18.819925>,  <41.045048, 34.317394, 18.735569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285263, 34.625908, 18.819925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405152, 0.066135, 0.911854,
		0.689350, -0.633048, 0.352203,
		0.600540, 0.771282, 0.210890,
		41.465424, 34.857292, 18.883192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333771, 34.122025, 19.392359>,  <41.045048, 34.317394, 18.735569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333771, 34.122025, 19.392359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.366558, 34.520481, 19.379787>,  <41.386230, 34.759556, 19.372244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.366558, 34.520481, 19.379787>,  <41.333771, 34.122025, 19.392359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366558, 34.520481, 19.379787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362978, 0.059207, 0.929915,
		0.928185, -0.064818, 0.366429,
		0.081970, 0.996139, -0.031428,
		41.391148, 34.819324, 19.370359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859440, 34.333530, 19.932552>,  <41.333771, 34.122025, 19.392359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859440, 34.333530, 19.932552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.623856, 34.649658, 19.864996>,  <41.482506, 34.839333, 19.824463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.623856, 34.649658, 19.864996>,  <41.859440, 34.333530, 19.932552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623856, 34.649658, 19.864996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000617, 0.209420, 0.977826,
		0.808160, 0.575799, -0.123828,
		-0.588963, 0.790316, -0.168889,
		41.447166, 34.886753, 19.814329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246830, 34.823807, 20.214491>,  <41.859440, 34.333530, 19.932552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246830, 34.823807, 20.214491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.869713, 34.956558, 20.201870>,  <41.643440, 35.036209, 20.194298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.869713, 34.956558, 20.201870>,  <42.246830, 34.823807, 20.214491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869713, 34.956558, 20.201870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098572, 0.367926, 0.924615,
		0.318465, 0.868613, -0.379593,
		-0.942795, 0.331875, -0.031551,
		41.586876, 35.056122, 20.192404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288940, 35.386948, 20.724112>,  <42.246830, 34.823807, 20.214491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288940, 35.386948, 20.724112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.894871, 35.352127, 20.664988>,  <41.658428, 35.331234, 20.629513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.894871, 35.352127, 20.664988>,  <42.288940, 35.386948, 20.724112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894871, 35.352127, 20.664988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157813, 0.122198, 0.979879,
		-0.067239, 0.988680, -0.134125,
		-0.985177, -0.087053, -0.147810,
		41.599319, 35.326012, 20.620646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988544, 35.892746, 21.154388>,  <42.288940, 35.386948, 20.724112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988544, 35.892746, 21.154388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.698704, 35.619812, 21.115690>,  <41.524799, 35.456051, 21.092470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.698704, 35.619812, 21.115690>,  <41.988544, 35.892746, 21.154388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698704, 35.619812, 21.115690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226336, 0.103023, 0.968585,
		-0.650937, 0.723740, -0.229089,
		-0.724606, -0.682339, -0.096747,
		41.481323, 35.415112, 21.086666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373940, 36.199928, 21.447943>,  <41.988544, 35.892746, 21.154388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373940, 36.199928, 21.447943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.285721, 35.810532, 21.423717>,  <41.232788, 35.576893, 21.409184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.285721, 35.810532, 21.423717>,  <41.373940, 36.199928, 21.447943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285721, 35.810532, 21.423717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380055, 0.028586, 0.924522,
		-0.898286, 0.226916, -0.376286,
		-0.220545, -0.973495, -0.060562,
		41.219559, 35.518482, 21.405548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685600, 36.174431, 21.718904>,  <41.373940, 36.199928, 21.447943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685600, 36.174431, 21.718904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.833557, 35.803329, 21.738729>,  <40.922333, 35.580669, 21.750626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.833557, 35.803329, 21.738729>,  <40.685600, 36.174431, 21.718904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833557, 35.803329, 21.738729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467447, -0.139738, 0.872907,
		-0.802913, -0.346054, -0.485363,
		0.369896, -0.927750, 0.049565,
		40.944527, 35.525005, 21.753599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167606, 35.638649, 21.733019>,  <40.685600, 36.174431, 21.718904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167606, 35.638649, 21.733019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.483257, 35.476830, 21.917891>,  <40.672649, 35.379738, 22.028812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.483257, 35.476830, 21.917891>,  <40.167606, 35.638649, 21.733019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483257, 35.476830, 21.917891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584782, -0.264664, 0.766801,
		-0.187886, -0.875382, -0.445428,
		0.789132, -0.404549, 0.462181,
		40.719997, 35.355465, 22.056543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650646, 35.257938, 21.385012>,  <40.167606, 35.638649, 21.733019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650646, 35.257938, 21.385012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.261257, 35.196583, 21.317101>,  <39.027622, 35.159771, 21.276354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.261257, 35.196583, 21.317101>,  <39.650646, 35.257938, 21.385012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261257, 35.196583, 21.317101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125714, 0.261423, -0.957003,
		0.191171, -0.952960, -0.235206,
		-0.973473, -0.153382, -0.169777,
		38.969215, 35.150566, 21.266167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623569, 34.748646, 20.797672>,  <39.650646, 35.257938, 21.385012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623569, 34.748646, 20.797672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.270203, 34.936073, 20.798870>,  <39.058182, 35.048531, 20.799589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.270203, 34.936073, 20.798870>,  <39.623569, 34.748646, 20.797672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270203, 34.936073, 20.798870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057576, 0.114893, -0.991708,
		-0.465028, -0.875924, -0.128477,
		-0.883422, 0.468569, 0.002997,
		39.005177, 35.076645, 20.799768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220490, 34.438416, 20.306526>,  <39.623569, 34.748646, 20.797672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220490, 34.438416, 20.306526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.058544, 34.798801, 20.368940>,  <38.961376, 35.015034, 20.406389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.058544, 34.798801, 20.368940>,  <39.220490, 34.438416, 20.306526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058544, 34.798801, 20.368940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124169, 0.114893, -0.985587,
		-0.905908, -0.418400, 0.065356,
		-0.404861, 0.900967, 0.156035,
		38.937084, 35.069092, 20.415751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650040, 34.484760, 19.853201>,  <39.220490, 34.438416, 20.306526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650040, 34.484760, 19.853201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.753845, 34.865803, 19.916698>,  <38.816128, 35.094429, 19.954796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.753845, 34.865803, 19.916698>,  <38.650040, 34.484760, 19.853201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753845, 34.865803, 19.916698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146602, 0.201328, -0.968491,
		-0.954547, 0.228066, 0.191901,
		0.259515, 0.952603, 0.158742,
		38.831699, 35.151585, 19.964321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119896, 34.937901, 19.547722>,  <38.650040, 34.484760, 19.853201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119896, 34.937901, 19.547722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.444901, 35.165810, 19.597000>,  <38.639904, 35.302555, 19.626568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.444901, 35.165810, 19.597000>,  <38.119896, 34.937901, 19.547722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444901, 35.165810, 19.597000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008449, 0.222821, -0.974823,
		-0.582881, 0.791016, 0.185859,
		0.812513, 0.569776, 0.123195,
		38.688656, 35.336742, 19.633959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000793, 35.555805, 19.207893>,  <38.119896, 34.937901, 19.547722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000793, 35.555805, 19.207893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.396687, 35.603081, 19.240063>,  <38.634220, 35.631447, 19.259363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.396687, 35.603081, 19.240063>,  <38.000793, 35.555805, 19.207893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396687, 35.603081, 19.240063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043106, 0.289651, -0.956161,
		-0.136299, 0.949808, 0.281581,
		0.989729, 0.118186, 0.080422,
		38.693604, 35.638538, 19.264189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216194, 36.190212, 19.018301>,  <38.000793, 35.555805, 19.207893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216194, 36.190212, 19.018301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.547047, 35.970741, 18.969629>,  <38.745556, 35.839058, 18.940426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.547047, 35.970741, 18.969629>,  <38.216194, 36.190212, 19.018301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547047, 35.970741, 18.969629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007060, 0.226632, -0.973955,
		0.561968, 0.804727, 0.191327,
		0.827129, -0.548682, -0.121679,
		38.795185, 35.806137, 18.933126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269474, 36.932076, 18.949879>,  <38.216194, 36.190212, 19.018301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269474, 36.932076, 18.949879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.914890, 37.115139, 18.922371>,  <37.702141, 37.224979, 18.905867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.914890, 37.115139, 18.922371>,  <38.269474, 36.932076, 18.949879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914890, 37.115139, 18.922371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233606, -0.314213, 0.920162,
		0.399516, 0.831754, 0.385451,
		-0.886462, 0.457663, -0.068770,
		37.648952, 37.252438, 18.901739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184803, 37.406509, 19.560963>,  <38.269474, 36.932076, 18.949879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184803, 37.406509, 19.560963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.811665, 37.356606, 19.425766>,  <37.587784, 37.326664, 19.344648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.811665, 37.356606, 19.425766>,  <38.184803, 37.406509, 19.560963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811665, 37.356606, 19.425766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335348, -0.042251, 0.941146,
		-0.131697, 0.991287, -0.002424,
		-0.932844, -0.124759, -0.337991,
		37.531811, 37.319180, 19.324369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750957, 37.652115, 20.069788>,  <38.184803, 37.406509, 19.560963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750957, 37.652115, 20.069788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.484436, 37.429375, 19.871410>,  <37.324524, 37.295731, 19.752384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.484436, 37.429375, 19.871410>,  <37.750957, 37.652115, 20.069788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484436, 37.429375, 19.871410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473194, -0.198269, 0.858357,
		-0.576308, 0.806601, -0.131393,
		-0.666300, -0.556852, -0.495943,
		37.284546, 37.262318, 19.722628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150372, 37.996159, 20.193773>,  <37.750957, 37.652115, 20.069788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150372, 37.996159, 20.193773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.088352, 37.612362, 20.099680>,  <37.051140, 37.382084, 20.043224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.088352, 37.612362, 20.099680>,  <37.150372, 37.996159, 20.193773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088352, 37.612362, 20.099680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434757, -0.147545, 0.888379,
		-0.887100, 0.240007, -0.394271,
		-0.155044, -0.959493, -0.235232,
		37.041840, 37.324512, 20.029110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480030, 37.890923, 20.379494>,  <37.150372, 37.996159, 20.193773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480030, 37.890923, 20.379494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.614204, 37.518890, 20.319597>,  <36.694710, 37.295670, 20.283659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.614204, 37.518890, 20.319597>,  <36.480030, 37.890923, 20.379494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614204, 37.518890, 20.319597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473846, -0.303956, 0.826487,
		-0.814217, -0.206283, -0.542676,
		0.335440, -0.930085, -0.149740,
		36.714836, 37.239864, 20.274675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885647, 37.509758, 20.542656>,  <36.480030, 37.890923, 20.379494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885647, 37.509758, 20.542656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.171143, 37.229656, 20.548672>,  <36.342438, 37.061596, 20.552282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.171143, 37.229656, 20.548672>,  <35.885647, 37.509758, 20.542656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171143, 37.229656, 20.548672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432115, -0.423331, 0.796283,
		-0.551233, -0.574835, -0.604737,
		0.713736, -0.700253, 0.015041,
		36.385265, 37.019581, 20.553185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581032, 36.824757, 20.421278>,  <35.885647, 37.509758, 20.542656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581032, 36.824757, 20.421278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.921650, 36.760231, 20.620813>,  <36.126022, 36.721516, 20.740534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.921650, 36.760231, 20.620813>,  <35.581032, 36.824757, 20.421278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921650, 36.760231, 20.620813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518709, -0.397488, 0.756931,
		0.076179, -0.903317, -0.422156,
		0.851550, -0.161314, 0.498839,
		36.177116, 36.711838, 20.770466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.484264, 38.905788, 17.669756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.694435, 38.574097, 17.745979>,  <41.820538, 38.375080, 17.791714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.694435, 38.574097, 17.745979>,  <41.484264, 38.905788, 17.669756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694435, 38.574097, 17.745979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099753, 0.282454, 0.954080,
		-0.844974, -0.482287, 0.231125,
		0.525423, -0.829228, 0.190557,
		41.852062, 38.325329, 17.803146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198025, 38.412621, 18.064457>,  <41.484264, 38.905788, 17.669756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198025, 38.412621, 18.064457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.588108, 38.373192, 18.143696>,  <41.822159, 38.349533, 18.191240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.588108, 38.373192, 18.143696>,  <41.198025, 38.412621, 18.064457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588108, 38.373192, 18.143696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185295, 0.125519, 0.974634,
		-0.120939, -0.987182, 0.104143,
		0.975213, -0.098574, 0.198100,
		41.880672, 38.343620, 18.203125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289898, 37.864532, 18.649981>,  <41.198025, 38.412621, 18.064457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289898, 37.864532, 18.649981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.603191, 38.113224, 18.648838>,  <41.791168, 38.262440, 18.648151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.603191, 38.113224, 18.648838>,  <41.289898, 37.864532, 18.649981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603191, 38.113224, 18.648838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121374, 0.157407, 0.980047,
		0.609771, -0.767254, 0.198747,
		0.783229, 0.621727, -0.002858,
		41.838161, 38.299744, 18.647982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613659, 37.671951, 19.324835>,  <41.289898, 37.864532, 18.649981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613659, 37.671951, 19.324835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.764008, 38.028801, 19.224569>,  <41.854218, 38.242912, 19.164410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.764008, 38.028801, 19.224569>,  <41.613659, 37.671951, 19.324835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764008, 38.028801, 19.224569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142587, 0.322955, 0.935611,
		0.915637, -0.315926, 0.248595,
		0.375869, 0.892127, -0.250662,
		41.876770, 38.296440, 19.149370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004623, 37.837654, 19.774734>,  <41.613659, 37.671951, 19.324835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004623, 37.837654, 19.774734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.933609, 38.202755, 19.627562>,  <41.891003, 38.421814, 19.539259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.933609, 38.202755, 19.627562>,  <42.004623, 37.837654, 19.774734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933609, 38.202755, 19.627562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052986, 0.364463, 0.929709,
		0.982688, 0.184549, -0.016342,
		-0.177533, 0.912748, -0.367931,
		41.880348, 38.476578, 19.517181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.401646, 38.245762, 20.190531>,  <42.004623, 37.837654, 19.774734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.401646, 38.245762, 20.190531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.120686, 38.476067, 20.023140>,  <41.952110, 38.614250, 19.922705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.120686, 38.476067, 20.023140>,  <42.401646, 38.245762, 20.190531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120686, 38.476067, 20.023140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082406, 0.518199, 0.851281,
		0.706994, 0.632427, -0.316538,
		-0.702403, 0.575765, -0.418479,
		41.909966, 38.648796, 19.897596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623337, 38.829594, 20.346924>,  <42.401646, 38.245762, 20.190531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623337, 38.829594, 20.346924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.239231, 38.904324, 20.263979>,  <42.008770, 38.949162, 20.214212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.239231, 38.904324, 20.263979>,  <42.623337, 38.829594, 20.346924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239231, 38.904324, 20.263979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070115, 0.557653, 0.827108,
		0.270158, 0.808777, -0.522392,
		-0.960260, 0.186822, -0.207361,
		41.951153, 38.960369, 20.201771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496017, 39.580509, 20.464439>,  <42.623337, 38.829594, 20.346924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496017, 39.580509, 20.464439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.134480, 39.410934, 20.487553>,  <41.917557, 39.309189, 20.501421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.134480, 39.410934, 20.487553>,  <42.496017, 39.580509, 20.464439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134480, 39.410934, 20.487553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198093, 0.534346, 0.821726,
		-0.379231, 0.731270, -0.566946,
		-0.903849, -0.423933, 0.057781,
		41.863323, 39.283756, 20.504887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101547, 40.141125, 20.680622>,  <42.496017, 39.580509, 20.464439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101547, 40.141125, 20.680622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.881504, 39.812855, 20.742432>,  <41.749477, 39.615894, 20.779516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.881504, 39.812855, 20.742432>,  <42.101547, 40.141125, 20.680622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881504, 39.812855, 20.742432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340771, 0.389530, 0.855653,
		-0.762403, 0.418042, -0.493945,
		-0.550105, -0.820675, 0.154522,
		41.716473, 39.566654, 20.788788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347149, 40.343113, 20.839668>,  <42.101547, 40.141125, 20.680622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347149, 40.343113, 20.839668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.401005, 39.981525, 21.002003>,  <41.433319, 39.764572, 21.099403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.401005, 39.981525, 21.002003>,  <41.347149, 40.343113, 20.839668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401005, 39.981525, 21.002003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333896, 0.344223, 0.877510,
		-0.932944, -0.253658, -0.255485,
		0.134644, -0.903974, 0.405836,
		41.441399, 39.710335, 21.123755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701817, 40.238953, 21.208780>,  <41.347149, 40.343113, 20.839668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701817, 40.238953, 21.208780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.980099, 39.985847, 21.344784>,  <41.147068, 39.833984, 21.426386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.980099, 39.985847, 21.344784>,  <40.701817, 40.238953, 21.208780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980099, 39.985847, 21.344784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283763, 0.192748, 0.939323,
		-0.659906, -0.749972, -0.045459,
		0.695704, -0.632764, 0.340009,
		41.188808, 39.796017, 21.446787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390400, 39.718494, 21.501734>,  <40.701817, 40.238953, 21.208780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390400, 39.718494, 21.501734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.754078, 39.738907, 21.667030>,  <40.972282, 39.751156, 21.766209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.754078, 39.738907, 21.667030>,  <40.390400, 39.718494, 21.501734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754078, 39.738907, 21.667030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415468, 0.176819, 0.892256,
		-0.027536, -0.982920, 0.181964,
		0.909191, 0.051031, 0.413241,
		41.026836, 39.754215, 21.791002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636417, 39.539043, 21.458069>,  <40.390400, 39.718494, 21.501734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636417, 39.539043, 21.458069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.440109, 39.882385, 21.398233>,  <39.322327, 40.088390, 21.362331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.440109, 39.882385, 21.398233>,  <39.636417, 39.539043, 21.458069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440109, 39.882385, 21.398233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037744, -0.192469, -0.980577,
		-0.870473, -0.475588, 0.126855,
		-0.490766, 0.858354, -0.149588,
		39.292881, 40.139893, 21.353357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065189, 39.447788, 20.877766>,  <39.636417, 39.539043, 21.458069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065189, 39.447788, 20.877766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.104946, 39.844902, 20.904606>,  <39.128799, 40.083172, 20.920710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.104946, 39.844902, 20.904606>,  <39.065189, 39.447788, 20.877766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104946, 39.844902, 20.904606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047055, 0.072050, -0.996290,
		-0.993935, 0.095865, 0.053877,
		0.099391, 0.992783, 0.067102,
		39.134762, 40.142738, 20.924736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631878, 39.716175, 20.346058>,  <39.065189, 39.447788, 20.877766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631878, 39.716175, 20.346058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.860340, 40.029816, 20.443190>,  <38.997417, 40.217999, 20.501469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.860340, 40.029816, 20.443190>,  <38.631878, 39.716175, 20.346058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860340, 40.029816, 20.443190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014288, 0.286287, -0.958037,
		-0.820715, 0.550661, 0.152312,
		0.571159, 0.784100, 0.242828,
		39.031689, 40.265045, 20.516039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300224, 40.325600, 20.078472>,  <38.631878, 39.716175, 20.346058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300224, 40.325600, 20.078472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.688049, 40.413643, 20.121378>,  <38.920742, 40.466469, 20.147121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.688049, 40.413643, 20.121378>,  <38.300224, 40.325600, 20.078472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688049, 40.413643, 20.121378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058902, 0.215552, -0.974714,
		-0.237663, 0.951362, 0.196026,
		0.969560, 0.220107, 0.107265,
		38.978916, 40.479675, 20.153557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370892, 40.954559, 19.839342>,  <38.300224, 40.325600, 20.078472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370892, 40.954559, 19.839342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.750015, 40.827721, 19.826063>,  <38.977489, 40.751617, 19.818096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.750015, 40.827721, 19.826063>,  <38.370892, 40.954559, 19.839342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750015, 40.827721, 19.826063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072733, 0.316423, -0.945826,
		0.310424, 0.894050, 0.322973,
		0.947812, -0.317097, -0.033198,
		39.034359, 40.732590, 19.816103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702488, 41.416458, 19.489500>,  <38.370892, 40.954559, 19.839342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702488, 41.416458, 19.489500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.943623, 41.099186, 19.454990>,  <39.088303, 40.908821, 19.434284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.943623, 41.099186, 19.454990>,  <38.702488, 41.416458, 19.489500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943623, 41.099186, 19.454990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023955, 0.090090, -0.995646,
		0.797502, 0.602283, 0.035309,
		0.602841, -0.793183, -0.086274,
		39.124474, 40.861233, 19.429108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169640, 41.649849, 18.894342>,  <38.702488, 41.416458, 19.489500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169640, 41.649849, 18.894342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.223743, 41.257816, 18.952499>,  <39.256207, 41.022594, 18.987392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.223743, 41.257816, 18.952499>,  <39.169640, 41.649849, 18.894342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223743, 41.257816, 18.952499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007913, -0.147803, -0.988985,
		0.990779, 0.132620, -0.027748,
		0.135260, -0.980085, 0.145391,
		39.264320, 40.963791, 18.996117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796062, 41.476337, 18.494015>,  <39.169640, 41.649849, 18.894342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796062, 41.476337, 18.494015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.613956, 41.122097, 18.530779>,  <39.504692, 40.909554, 18.552837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.613956, 41.122097, 18.530779>,  <39.796062, 41.476337, 18.494015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613956, 41.122097, 18.530779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192076, -0.198487, -0.961098,
		0.869393, -0.419897, 0.260466,
		-0.455261, -0.885601, 0.091911,
		39.477379, 40.856415, 18.558352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283054, 40.964554, 18.241447>,  <39.796062, 41.476337, 18.494015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283054, 40.964554, 18.241447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.912991, 40.817524, 18.203558>,  <39.690952, 40.729305, 18.180824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.912991, 40.817524, 18.203558>,  <40.283054, 40.964554, 18.241447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912991, 40.817524, 18.203558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227103, -0.336055, -0.914052,
		0.304147, -0.867155, 0.394381,
		-0.925159, -0.367572, -0.094723,
		39.635445, 40.707253, 18.175140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336998, 40.250874, 17.846992>,  <40.283054, 40.964554, 18.241447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336998, 40.250874, 17.846992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.953644, 40.364098, 17.861795>,  <39.723633, 40.432034, 17.870676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.953644, 40.364098, 17.861795>,  <40.336998, 40.250874, 17.846992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953644, 40.364098, 17.861795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098828, -0.207374, -0.973257,
		-0.267822, -0.936413, 0.226719,
		-0.958386, 0.283066, 0.037005,
		39.666126, 40.449017, 17.872896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074127, 39.746269, 17.438477>,  <40.336998, 40.250874, 17.846992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074127, 39.746269, 17.438477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.839993, 40.070278, 17.452587>,  <39.699512, 40.264683, 17.461054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.839993, 40.070278, 17.452587>,  <40.074127, 39.746269, 17.438477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839993, 40.070278, 17.452587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009234, 0.036849, -0.999278,
		-0.810737, -0.585241, -0.014090,
		-0.585338, 0.810022, 0.035279,
		39.664391, 40.313286, 17.463171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592430, 39.665836, 16.883171>,  <40.074127, 39.746269, 17.438477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592430, 39.665836, 16.883171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.589539, 40.054428, 16.977982>,  <39.587803, 40.287582, 17.034868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.589539, 40.054428, 16.977982>,  <39.592430, 39.665836, 16.883171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589539, 40.054428, 16.977982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131087, 0.234067, -0.963343,
		-0.991345, -0.038032, 0.125657,
		-0.007226, 0.971476, 0.237026,
		39.587372, 40.345871, 17.049089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122898, 39.975826, 16.511724>,  <39.592430, 39.665836, 16.883171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122898, 39.975826, 16.511724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.385513, 40.267170, 16.590158>,  <39.543083, 40.441975, 16.637218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.385513, 40.267170, 16.590158>,  <39.122898, 39.975826, 16.511724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385513, 40.267170, 16.590158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169986, 0.396142, -0.902317,
		-0.734889, 0.559075, 0.383894,
		0.656539, 0.728359, 0.196086,
		39.582474, 40.485676, 16.648985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553673, 39.611942, 16.933758>,  <39.122898, 39.975826, 16.511724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553673, 39.611942, 16.933758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.346767, 39.445896, 16.634394>,  <38.222626, 39.346268, 16.454775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.346767, 39.445896, 16.634394>,  <38.553673, 39.611942, 16.933758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346767, 39.445896, 16.634394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627094, -0.411263, 0.661525,
		-0.582403, 0.811506, -0.047585,
		-0.517262, -0.415115, -0.748411,
		38.191589, 39.321362, 16.409870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875191, 39.636139, 17.049618>,  <38.553673, 39.611942, 16.933758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875191, 39.636139, 17.049618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.895737, 39.336472, 16.785465>,  <37.908062, 39.156670, 16.626974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.895737, 39.336472, 16.785465>,  <37.875191, 39.636139, 17.049618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895737, 39.336472, 16.785465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562435, -0.568118, 0.600757,
		-0.825245, 0.340566, -0.450540,
		0.051363, -0.749171, -0.660383,
		37.911144, 39.111721, 16.587351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271557, 39.333294, 17.069294>,  <37.875191, 39.636139, 17.049618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271557, 39.333294, 17.069294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.491936, 39.042797, 16.904842>,  <37.624161, 38.868500, 16.806171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.491936, 39.042797, 16.904842>,  <37.271557, 39.333294, 17.069294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491936, 39.042797, 16.904842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241194, -0.610186, 0.754651,
		-0.798929, -0.316608, -0.511343,
		0.550943, -0.726246, -0.411132,
		37.657219, 38.824924, 16.781504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887566, 38.726711, 17.078545>,  <37.271557, 39.333294, 17.069294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887566, 38.726711, 17.078545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.264988, 38.595367, 17.061192>,  <37.491440, 38.516560, 17.050779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.264988, 38.595367, 17.061192>,  <36.887566, 38.726711, 17.078545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264988, 38.595367, 17.061192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222376, -0.725116, 0.651732,
		-0.245459, -0.605299, -0.757207,
		0.943556, -0.328358, -0.043382,
		37.548054, 38.496861, 17.048178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850193, 37.997269, 16.914446>,  <36.887566, 38.726711, 17.078545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850193, 37.997269, 16.914446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.202068, 38.080624, 17.085428>,  <37.413193, 38.130634, 17.188019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.202068, 38.080624, 17.085428>,  <36.850193, 37.997269, 16.914446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202068, 38.080624, 17.085428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104897, -0.791706, 0.601829,
		0.463832, -0.574263, -0.674598,
		0.879691, 0.208384, 0.427457,
		37.465977, 38.143139, 17.213665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148788, 37.297112, 17.211548>,  <36.850193, 37.997269, 16.914446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148788, 37.297112, 17.211548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.395473, 37.565121, 17.376831>,  <37.543484, 37.725925, 17.476000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.395473, 37.565121, 17.376831>,  <37.148788, 37.297112, 17.211548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395473, 37.565121, 17.376831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078400, -0.574581, 0.814684,
		0.783276, -0.470029, -0.406880,
		0.616711, 0.670022, 0.413206,
		37.580486, 37.766129, 17.500793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582909, 36.840683, 17.612291>,  <37.148788, 37.297112, 17.211548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582909, 36.840683, 17.612291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.611397, 37.200947, 17.783749>,  <37.628490, 37.417107, 17.886623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.611397, 37.200947, 17.783749>,  <37.582909, 36.840683, 17.612291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611397, 37.200947, 17.783749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025137, -0.431219, 0.901897,
		0.997144, -0.053460, -0.053352,
		0.071222, 0.900662, 0.428644,
		37.632763, 37.471146, 17.912342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986946, 36.688694, 18.302713>,  <37.582909, 36.840683, 17.612291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986946, 36.688694, 18.302713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.789654, 37.032024, 18.359293>,  <37.671280, 37.238022, 18.393240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.789654, 37.032024, 18.359293>,  <37.986946, 36.688694, 18.302713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789654, 37.032024, 18.359293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217415, -0.279077, 0.935332,
		0.842291, 0.430582, 0.324261,
		-0.493231, 0.858321, 0.141449,
		37.641685, 37.289520, 18.401728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689960, 36.491764, 18.396965>,  <37.986946, 36.688694, 18.302713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689960, 36.491764, 18.396965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.803417, 36.112438, 18.453878>,  <38.871490, 35.884842, 18.488026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.803417, 36.112438, 18.453878>,  <38.689960, 36.491764, 18.396965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803417, 36.112438, 18.453878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013983, -0.144270, -0.989439,
		0.958828, 0.282637, -0.027661,
		0.283643, -0.948316, 0.142282,
		38.888512, 35.827942, 18.496563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242008, 36.439541, 18.068581>,  <38.689960, 36.491764, 18.396965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242008, 36.439541, 18.068581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.148918, 36.052792, 18.110508>,  <39.093063, 35.820740, 18.135664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.148918, 36.052792, 18.110508>,  <39.242008, 36.439541, 18.068581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148918, 36.052792, 18.110508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188737, -0.150630, -0.970407,
		0.954053, -0.206053, 0.217541,
		-0.232724, -0.966878, 0.104820,
		39.079102, 35.762730, 18.141954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850739, 36.069225, 17.766047>,  <39.242008, 36.439541, 18.068581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850739, 36.069225, 17.766047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.537628, 35.821423, 17.742468>,  <39.349762, 35.672741, 17.728321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.537628, 35.821423, 17.742468>,  <39.850739, 36.069225, 17.766047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537628, 35.821423, 17.742468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329376, -0.332081, -0.883874,
		0.527990, -0.711291, 0.463995,
		-0.782776, -0.619505, -0.058947,
		39.302795, 35.635571, 17.724783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111908, 35.342731, 17.714128>,  <39.850739, 36.069225, 17.766047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111908, 35.342731, 17.714128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.735703, 35.320969, 17.579979>,  <39.509979, 35.307911, 17.499489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.735703, 35.320969, 17.579979>,  <40.111908, 35.342731, 17.714128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735703, 35.320969, 17.579979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333472, -0.336823, -0.880538,
		-0.065052, -0.939995, 0.334930,
		-0.940513, -0.054409, -0.335372,
		39.453548, 35.304646, 17.479366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992760, 34.709141, 17.440744>,  <40.111908, 35.342731, 17.714128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992760, 34.709141, 17.440744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.696751, 34.908897, 17.260530>,  <39.519146, 35.028751, 17.152403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.696751, 34.908897, 17.260530>,  <39.992760, 34.709141, 17.440744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696751, 34.908897, 17.260530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251893, -0.415324, -0.874103,
		-0.623637, -0.760339, 0.181554,
		-0.740018, 0.499391, -0.450535,
		39.474747, 35.058716, 17.125370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607563, 34.203392, 17.132980>,  <39.992760, 34.709141, 17.440744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607563, 34.203392, 17.132980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.508343, 34.550636, 16.961000>,  <39.448811, 34.758984, 16.857813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.508343, 34.550636, 16.961000>,  <39.607563, 34.203392, 17.132980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508343, 34.550636, 16.961000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263413, -0.366660, -0.892286,
		-0.932248, -0.334585, -0.137721,
		-0.248049, 0.868109, -0.429952,
		39.433929, 34.811069, 16.832014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129997, 34.005028, 16.611515>,  <39.607563, 34.203392, 17.132980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129997, 34.005028, 16.611515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.263348, 34.369350, 16.514120>,  <39.343357, 34.587944, 16.455683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.263348, 34.369350, 16.514120>,  <39.129997, 34.005028, 16.611515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263348, 34.369350, 16.514120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112320, -0.294792, -0.948937,
		-0.936080, 0.289002, -0.200578,
		0.333373, 0.910810, -0.243488,
		39.363361, 34.642593, 16.441074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755020, 34.217106, 15.973624>,  <39.129997, 34.005028, 16.611515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755020, 34.217106, 15.973624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.077221, 34.454124, 15.976621>,  <39.270542, 34.596336, 15.978418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.077221, 34.454124, 15.976621>,  <38.755020, 34.217106, 15.973624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077221, 34.454124, 15.976621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097057, -0.119450, -0.988085,
		-0.584588, 0.796634, -0.153728,
		0.805504, 0.592543, 0.007490,
		39.318871, 34.631886, 15.978868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746723, 34.554005, 15.215609>,  <38.755020, 34.217106, 15.973624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746723, 34.554005, 15.215609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.114761, 34.575409, 15.370814>,  <39.335587, 34.588253, 15.463938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.114761, 34.575409, 15.370814>,  <38.746723, 34.554005, 15.215609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114761, 34.575409, 15.370814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391665, -0.136370, -0.909946,
		0.004222, 0.989212, -0.146432,
		0.920098, 0.053511, 0.388015,
		39.390789, 34.591461, 15.487219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.607632, 36.048794, 30.899181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826786, 36.382069, 30.929171>,  <35.958279, 36.582031, 30.947165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826786, 36.382069, 30.929171>,  <35.607632, 36.048794, 30.899181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826786, 36.382069, 30.929171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308360, -0.117831, -0.943944,
		-0.777644, 0.540297, -0.321479,
		0.547890, 0.833184, 0.074975,
		35.991154, 36.632023, 30.951664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363335, 36.588314, 30.407995>,  <35.607632, 36.048794, 30.899181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363335, 36.588314, 30.407995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.754551, 36.581139, 30.491060>,  <35.989281, 36.576832, 30.540899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.754551, 36.581139, 30.491060>,  <35.363335, 36.588314, 30.407995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754551, 36.581139, 30.491060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200527, -0.190829, -0.960923,
		0.056868, 0.981459, -0.183040,
		0.978036, -0.017941, 0.207661,
		36.047962, 36.575756, 30.553358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717613, 36.945015, 29.956327>,  <35.363335, 36.588314, 30.407995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717613, 36.945015, 29.956327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.934875, 36.639549, 30.095924>,  <36.065231, 36.456268, 30.179684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.934875, 36.639549, 30.095924>,  <35.717613, 36.945015, 29.956327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934875, 36.639549, 30.095924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205091, -0.282390, -0.937120,
		0.814199, 0.580577, 0.003239,
		0.543155, -0.763667, 0.348993,
		36.097820, 36.410450, 30.200623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104206, 36.943600, 29.490749>,  <35.717613, 36.945015, 29.956327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104206, 36.943600, 29.490749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.181015, 36.597092, 29.675228>,  <36.227100, 36.389187, 29.785915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.181015, 36.597092, 29.675228>,  <36.104206, 36.943600, 29.490749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181015, 36.597092, 29.675228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353606, -0.377302, -0.855924,
		0.915471, 0.327442, 0.233867,
		0.192027, -0.866271, 0.461195,
		36.238625, 36.337212, 29.813587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905430, 36.744019, 29.391783>,  <36.104206, 36.943600, 29.490749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905430, 36.744019, 29.391783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.710754, 36.405659, 29.479042>,  <36.593948, 36.202644, 29.531397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.710754, 36.405659, 29.479042>,  <36.905430, 36.744019, 29.391783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710754, 36.405659, 29.479042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470809, -0.464335, -0.750155,
		0.735848, -0.262387, 0.624244,
		-0.486689, -0.845900, 0.218146,
		36.564747, 36.151890, 29.544485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328476, 36.266018, 29.076620>,  <36.905430, 36.744019, 29.391783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328476, 36.266018, 29.076620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.002464, 36.041378, 29.133657>,  <36.806858, 35.906593, 29.167881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.002464, 36.041378, 29.133657>,  <37.328476, 36.266018, 29.076620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002464, 36.041378, 29.133657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266966, -0.582390, -0.767823,
		0.514258, -0.587727, 0.624592,
		-0.815026, -0.561604, 0.142596,
		36.757957, 35.872898, 29.176435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579838, 35.619297, 28.951826>,  <37.328476, 36.266018, 29.076620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579838, 35.619297, 28.951826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.183258, 35.606319, 28.901283>,  <36.945309, 35.598534, 28.870956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.183258, 35.606319, 28.901283>,  <37.579838, 35.619297, 28.951826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183258, 35.606319, 28.901283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127588, -0.443130, -0.887331,
		-0.027208, -0.895870, 0.443482,
		-0.991454, -0.032440, -0.126359,
		36.885822, 35.596588, 28.863375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525482, 34.964027, 28.727406>,  <37.579838, 35.619297, 28.951826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525482, 34.964027, 28.727406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.198357, 35.177860, 28.642181>,  <37.002079, 35.306160, 28.591047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.198357, 35.177860, 28.642181>,  <37.525482, 34.964027, 28.727406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198357, 35.177860, 28.642181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157871, -0.147619, -0.976363,
		-0.553400, -0.832123, 0.036330,
		-0.817817, 0.534583, -0.213060,
		36.953011, 35.338234, 28.578262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116909, 34.537361, 28.384769>,  <37.525482, 34.964027, 28.727406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116909, 34.537361, 28.384769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.964035, 34.890709, 28.276249>,  <36.872311, 35.102718, 28.211138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.964035, 34.890709, 28.276249>,  <37.116909, 34.537361, 28.384769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964035, 34.890709, 28.276249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277846, -0.170155, -0.945436,
		-0.881328, -0.436707, -0.180409,
		-0.382181, 0.883365, -0.271300,
		36.849380, 35.155720, 28.194859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622692, 34.415073, 27.802818>,  <37.116909, 34.537361, 28.384769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622692, 34.415073, 27.802818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.733349, 34.799374, 27.794508>,  <36.799744, 35.029953, 27.789522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.733349, 34.799374, 27.794508>,  <36.622692, 34.415073, 27.802818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733349, 34.799374, 27.794508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316064, -0.111383, -0.942177,
		-0.907510, 0.254076, -0.334471,
		0.276639, 0.960749, -0.020777,
		36.816341, 35.087597, 27.788275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227886, 34.711220, 27.329195>,  <36.622692, 34.415073, 27.802818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227886, 34.711220, 27.329195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.533195, 34.966000, 27.372494>,  <36.716381, 35.118866, 27.398474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.533195, 34.966000, 27.372494>,  <36.227886, 34.711220, 27.329195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533195, 34.966000, 27.372494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186767, -0.057134, -0.980741,
		-0.618497, 0.768787, -0.162569,
		0.763269, 0.636948, 0.108247,
		36.762177, 35.157085, 27.404968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114761, 35.025169, 26.782164>,  <36.227886, 34.711220, 27.329195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114761, 35.025169, 26.782164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.491863, 35.123390, 26.872419>,  <36.718124, 35.182323, 26.926573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.491863, 35.123390, 26.872419>,  <36.114761, 35.025169, 26.782164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491863, 35.123390, 26.872419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221927, 0.043066, -0.974112,
		-0.248908, 0.968427, -0.013893,
		0.942758, 0.245547, 0.225640,
		36.774693, 35.197056, 26.940111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729534, 35.699547, 26.815371>,  <36.114761, 35.025169, 26.782164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729534, 35.699547, 26.815371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.415760, 35.892864, 26.659885>,  <35.227497, 36.008854, 26.566595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.415760, 35.892864, 26.659885>,  <35.729534, 35.699547, 26.815371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415760, 35.892864, 26.659885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135031, 0.478623, 0.867575,
		0.605337, 0.733042, -0.310188,
		-0.784432, 0.483290, -0.388712,
		35.180431, 36.037849, 26.543272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814209, 36.472050, 26.882252>,  <35.729534, 35.699547, 26.815371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814209, 36.472050, 26.882252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421997, 36.399570, 26.851973>,  <35.186668, 36.356083, 26.833805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421997, 36.399570, 26.851973>,  <35.814209, 36.472050, 26.882252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421997, 36.399570, 26.851973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160705, 0.518862, 0.839617,
		-0.112861, 0.835434, -0.537878,
		-0.980529, -0.181199, -0.075699,
		35.127838, 36.345211, 26.829264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432842, 37.144089, 27.012371>,  <35.814209, 36.472050, 26.882252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432842, 37.144089, 27.012371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.186882, 36.845123, 27.112991>,  <35.039307, 36.665745, 27.173363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.186882, 36.845123, 27.112991>,  <35.432842, 37.144089, 27.012371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186882, 36.845123, 27.112991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214369, 0.465388, 0.858755,
		-0.758910, 0.474123, -0.446389,
		-0.614900, -0.747409, 0.251550,
		35.002411, 36.620899, 27.188456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907982, 37.591549, 27.127350>,  <35.432842, 37.144089, 27.012371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907982, 37.591549, 27.127350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799706, 37.247417, 27.300123>,  <34.734737, 37.040939, 27.403788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799706, 37.247417, 27.300123>,  <34.907982, 37.591549, 27.127350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799706, 37.247417, 27.300123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479905, 0.509556, 0.714174,
		-0.834515, -0.013964, -0.550808,
		-0.270694, -0.860324, 0.431934,
		34.718498, 36.989319, 27.429703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203602, 37.643272, 27.259151>,  <34.907982, 37.591549, 27.127350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203602, 37.643272, 27.259151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.348091, 37.371422, 27.514534>,  <34.434784, 37.208313, 27.667765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.348091, 37.371422, 27.514534>,  <34.203602, 37.643272, 27.259151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348091, 37.371422, 27.514534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490046, 0.444157, 0.750053,
		-0.793329, -0.583813, -0.172606,
		0.361226, -0.679623, 0.638457,
		34.456459, 37.167534, 27.706072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796886, 37.716202, 27.802084>,  <34.203602, 37.643272, 27.259151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796886, 37.716202, 27.802084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.058559, 37.485287, 27.997545>,  <34.215565, 37.346737, 28.114822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.058559, 37.485287, 27.997545>,  <33.796886, 37.716202, 27.802084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058559, 37.485287, 27.997545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395508, 0.289600, 0.871611,
		-0.644684, -0.763460, -0.038870,
		0.654183, -0.577287, 0.488655,
		34.254814, 37.312099, 28.144142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390003, 37.201988, 28.292034>,  <33.796886, 37.716202, 27.802084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390003, 37.201988, 28.292034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.762848, 37.285603, 28.410336>,  <33.986553, 37.335770, 28.481318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.762848, 37.285603, 28.410336>,  <33.390003, 37.201988, 28.292034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762848, 37.285603, 28.410336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360492, 0.457000, 0.813140,
		0.034813, -0.864556, 0.501330,
		0.932113, 0.209034, 0.295755,
		34.042480, 37.348312, 28.499062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344933, 37.178345, 28.998457>,  <33.390003, 37.201988, 28.292034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344933, 37.178345, 28.998457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.699432, 37.359913, 28.961555>,  <33.912132, 37.468853, 28.939415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.699432, 37.359913, 28.961555>,  <33.344933, 37.178345, 28.998457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699432, 37.359913, 28.961555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166063, 0.497288, 0.851544,
		0.432412, -0.739363, 0.516102,
		0.886252, 0.453924, -0.092253,
		33.965309, 37.496090, 28.933880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594479, 37.076496, 29.600035>,  <33.344933, 37.178345, 28.998457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594479, 37.076496, 29.600035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784119, 37.391853, 29.443235>,  <33.897903, 37.581070, 29.349155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784119, 37.391853, 29.443235>,  <33.594479, 37.076496, 29.600035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784119, 37.391853, 29.443235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037032, 0.426965, 0.903510,
		0.879692, -0.442871, 0.173228,
		0.474100, 0.788395, -0.391998,
		33.926350, 37.628372, 29.325636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296890, 37.198849, 29.992586>,  <33.594479, 37.076496, 29.600035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296890, 37.198849, 29.992586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.216316, 37.550243, 29.819292>,  <34.167973, 37.761078, 29.715315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.216316, 37.550243, 29.819292>,  <34.296890, 37.198849, 29.992586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216316, 37.550243, 29.819292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030288, 0.447676, 0.893683,
		0.979033, 0.166898, -0.116785,
		-0.201436, 0.878482, -0.433235,
		34.155884, 37.813789, 29.689322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684910, 37.676071, 30.446756>,  <34.296890, 37.198849, 29.992586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684910, 37.676071, 30.446756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.447437, 37.918533, 30.235052>,  <34.304955, 38.064011, 30.108030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.447437, 37.918533, 30.235052>,  <34.684910, 37.676071, 30.446756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447437, 37.918533, 30.235052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001054, 0.658295, 0.752759,
		0.804701, 0.446339, -0.391455,
		-0.593679, 0.606159, -0.529260,
		34.269333, 38.100380, 30.076275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026073, 38.308563, 30.489590>,  <34.684910, 37.676071, 30.446756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026073, 38.308563, 30.489590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637592, 38.376080, 30.422318>,  <34.404503, 38.416588, 30.381954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637592, 38.376080, 30.422318>,  <35.026073, 38.308563, 30.489590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637592, 38.376080, 30.422318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020358, 0.644466, 0.764362,
		0.237401, 0.745771, -0.622468,
		-0.971198, 0.168788, -0.168179,
		34.346233, 38.426716, 30.371864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923843, 38.994637, 30.457106>,  <35.026073, 38.308563, 30.489590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923843, 38.994637, 30.457106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.534729, 38.912106, 30.499294>,  <34.301262, 38.862587, 30.524607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.534729, 38.912106, 30.499294>,  <34.923843, 38.994637, 30.457106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534729, 38.912106, 30.499294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138205, 0.881955, 0.450616,
		-0.185994, 0.423775, -0.886466,
		-0.972782, -0.206326, 0.105470,
		34.242893, 38.850208, 30.530935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532455, 39.654274, 30.147926>,  <34.923843, 38.994637, 30.457106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532455, 39.654274, 30.147926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315968, 39.456116, 30.419708>,  <34.186073, 39.337219, 30.582777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315968, 39.456116, 30.419708>,  <34.532455, 39.654274, 30.147926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315968, 39.456116, 30.419708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241848, 0.865594, 0.438472,
		-0.805351, 0.072986, -0.588289,
		-0.541221, -0.495400, 0.679455,
		34.153603, 39.307495, 30.623545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209457, 40.171150, 30.567429>,  <34.532455, 39.654274, 30.147926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209457, 40.171150, 30.567429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.953423, 39.894859, 30.702002>,  <33.799801, 39.729084, 30.782745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.953423, 39.894859, 30.702002>,  <34.209457, 40.171150, 30.567429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953423, 39.894859, 30.702002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250902, 0.601806, 0.758207,
		-0.726183, 0.400903, -0.558511,
		-0.640083, -0.690729, 0.336434,
		33.761398, 39.687641, 30.802931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236568, 40.836456, 30.879320>,  <34.209457, 40.171150, 30.567429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236568, 40.836456, 30.879320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590153, 40.693329, 30.999712>,  <34.802303, 40.607452, 31.071947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590153, 40.693329, 30.999712>,  <34.236568, 40.836456, 30.879320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590153, 40.693329, 30.999712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466154, 0.624359, -0.626799,
		0.036359, 0.694366, 0.718703,
		0.883956, -0.357817, 0.300980,
		34.855339, 40.585983, 31.090006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650185, 41.308331, 30.703144>,  <34.236568, 40.836456, 30.879320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650185, 41.308331, 30.703144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.884022, 40.986717, 30.746557>,  <35.024323, 40.793751, 30.772604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.884022, 40.986717, 30.746557>,  <34.650185, 41.308331, 30.703144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884022, 40.986717, 30.746557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584656, 0.324734, -0.743455,
		0.562520, 0.498072, 0.659920,
		0.584593, -0.804035, 0.108532,
		35.059399, 40.745506, 30.779118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336700, 41.535492, 30.682159>,  <34.650185, 41.308331, 30.703144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336700, 41.535492, 30.682159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.350224, 41.156219, 30.555788>,  <35.358337, 40.928658, 30.479965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.350224, 41.156219, 30.555788>,  <35.336700, 41.535492, 30.682159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350224, 41.156219, 30.555788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368204, 0.305689, -0.878055,
		0.929130, -0.086639, 0.359459,
		0.033809, -0.948181, -0.315926,
		35.360367, 40.871765, 30.461010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986927, 41.467636, 30.371943>,  <35.336700, 41.535492, 30.682159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986927, 41.467636, 30.371943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.781898, 41.170307, 30.200010>,  <35.658882, 40.991909, 30.096851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.781898, 41.170307, 30.200010>,  <35.986927, 41.467636, 30.371943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781898, 41.170307, 30.200010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389121, 0.245150, -0.887968,
		0.765415, -0.622398, 0.163585,
		-0.512567, -0.743318, -0.429829,
		35.628128, 40.947311, 30.071062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436478, 41.011147, 29.978689>,  <35.986927, 41.467636, 30.371943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436478, 41.011147, 29.978689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066128, 40.985851, 29.829689>,  <35.843918, 40.970673, 29.740290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066128, 40.985851, 29.829689>,  <36.436478, 41.011147, 29.978689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066128, 40.985851, 29.829689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375739, -0.050547, -0.925346,
		0.039692, -0.996718, 0.070563,
		-0.925875, -0.063242, -0.372500,
		35.788364, 40.966881, 29.717939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478382, 40.532639, 29.428392>,  <36.436478, 41.011147, 29.978689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478382, 40.532639, 29.428392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.134361, 40.719707, 29.346819>,  <35.927948, 40.831951, 29.297874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.134361, 40.719707, 29.346819>,  <36.478382, 40.532639, 29.428392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134361, 40.719707, 29.346819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186491, -0.083888, -0.978869,
		-0.474901, -0.879910, -0.015069,
		-0.860052, 0.467677, -0.203934,
		35.876347, 40.860012, 29.285639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397297, 40.300526, 28.719301>,  <36.478382, 40.532639, 29.428392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397297, 40.300526, 28.719301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129940, 40.585583, 28.804533>,  <35.969528, 40.756615, 28.855673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129940, 40.585583, 28.804533>,  <36.397297, 40.300526, 28.719301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129940, 40.585583, 28.804533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099104, 0.198593, -0.975059,
		-0.737181, -0.672835, -0.062112,
		-0.668389, 0.712639, 0.213079,
		35.929424, 40.799374, 28.868456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917339, 40.154793, 28.247995>,  <36.397297, 40.300526, 28.719301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917339, 40.154793, 28.247995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.855343, 40.538097, 28.344095>,  <35.818146, 40.768078, 28.401754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.855343, 40.538097, 28.344095>,  <35.917339, 40.154793, 28.247995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855343, 40.538097, 28.344095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116857, 0.223698, -0.967628,
		-0.980981, -0.178045, 0.077309,
		-0.154988, 0.958258, 0.240249,
		35.808846, 40.825577, 28.416170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384346, 40.365776, 27.843699>,  <35.917339, 40.154793, 28.247995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384346, 40.365776, 27.843699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.571262, 40.705475, 27.942019>,  <35.683414, 40.909294, 28.001011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.571262, 40.705475, 27.942019>,  <35.384346, 40.365776, 27.843699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571262, 40.705475, 27.942019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029650, 0.262810, -0.964392,
		-0.883605, 0.457942, 0.097630,
		0.467294, 0.849246, 0.245798,
		35.711449, 40.960247, 28.015759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996994, 40.912437, 27.439131>,  <35.384346, 40.365776, 27.843699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996994, 40.912437, 27.439131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.376179, 41.015694, 27.513666>,  <35.603691, 41.077648, 27.558388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.376179, 41.015694, 27.513666>,  <34.996994, 40.912437, 27.439131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376179, 41.015694, 27.513666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195673, -0.010715, -0.980611,
		-0.251143, 0.966047, -0.060670,
		0.947966, 0.258145, 0.186338,
		35.660568, 41.093136, 27.569567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154190, 41.438328, 26.940613>,  <34.996994, 40.912437, 27.439131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154190, 41.438328, 26.940613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.516209, 41.344910, 27.082798>,  <35.733418, 41.288860, 27.168110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.516209, 41.344910, 27.082798>,  <35.154190, 41.438328, 26.940613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516209, 41.344910, 27.082798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367721, 0.009690, -0.929886,
		0.213722, 0.972299, 0.094648,
		0.905044, -0.233541, 0.355463,
		35.787724, 41.274849, 27.189438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660355, 41.890202, 26.634863>,  <35.154190, 41.438328, 26.940613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660355, 41.890202, 26.634863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.889324, 41.597317, 26.782480>,  <36.026707, 41.421585, 26.871052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.889324, 41.597317, 26.782480>,  <35.660355, 41.890202, 26.634863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889324, 41.597317, 26.782480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541309, -0.000606, -0.840823,
		0.615886, 0.681074, 0.396008,
		0.572424, -0.732214, 0.369045,
		36.061050, 41.377651, 26.893194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286999, 42.040634, 26.448048>,  <35.660355, 41.890202, 26.634863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286999, 42.040634, 26.448048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.311848, 41.647377, 26.516840>,  <36.326756, 41.411423, 26.558115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.311848, 41.647377, 26.516840>,  <36.286999, 42.040634, 26.448048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311848, 41.647377, 26.516840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481401, -0.121433, -0.868048,
		0.874296, 0.136714, 0.465741,
		0.062118, -0.983139, 0.171983,
		36.330482, 41.352436, 26.568436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017929, 41.863922, 26.276472>,  <36.286999, 42.040634, 26.448048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017929, 41.863922, 26.276472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.810814, 41.522053, 26.261326>,  <36.686543, 41.316933, 26.252239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.810814, 41.522053, 26.261326>,  <37.017929, 41.863922, 26.276472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810814, 41.522053, 26.261326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446462, -0.232199, -0.864150,
		0.729771, -0.464353, 0.501808,
		-0.517790, -0.854669, -0.037864,
		36.655476, 41.265652, 26.249966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501972, 41.448528, 26.040604>,  <37.017929, 41.863922, 26.276472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501972, 41.448528, 26.040604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.162643, 41.242924, 25.989779>,  <36.959045, 41.119560, 25.959284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.162643, 41.242924, 25.989779>,  <37.501972, 41.448528, 26.040604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162643, 41.242924, 25.989779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418166, -0.503184, -0.756269,
		0.324799, -0.694690, 0.641804,
		-0.848318, -0.514016, -0.127062,
		36.908150, 41.088718, 25.951660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709629, 40.690086, 26.008162>,  <37.501972, 41.448528, 26.040604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709629, 40.690086, 26.008162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.360806, 40.732365, 25.817019>,  <37.151512, 40.757732, 25.702332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.360806, 40.732365, 25.817019>,  <37.709629, 40.690086, 26.008162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360806, 40.732365, 25.817019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366724, -0.505459, -0.781041,
		-0.324090, -0.856353, 0.402026,
		-0.872055, 0.105695, -0.477860,
		37.099190, 40.764072, 25.673660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557396, 40.055992, 25.733973>,  <37.709629, 40.690086, 26.008162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557396, 40.055992, 25.733973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.363346, 40.323860, 25.509047>,  <37.246918, 40.484581, 25.374090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.363346, 40.323860, 25.509047>,  <37.557396, 40.055992, 25.733973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363346, 40.323860, 25.509047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402727, -0.399691, -0.823443,
		-0.776188, -0.625929, -0.075796,
		-0.485122, 0.669671, -0.562314,
		37.217808, 40.524761, 25.340353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585289, 39.778877, 25.115337>,  <37.557396, 40.055992, 25.733973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585289, 39.778877, 25.115337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.452965, 40.136356, 24.994102>,  <37.373569, 40.350845, 24.921362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.452965, 40.136356, 24.994102>,  <37.585289, 39.778877, 25.115337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452965, 40.136356, 24.994102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318487, -0.196596, -0.927316,
		-0.888328, -0.403299, -0.219595,
		-0.330815, 0.893700, -0.303088,
		37.353722, 40.404465, 24.903175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119488, 39.579651, 24.593069>,  <37.585289, 39.778877, 25.115337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119488, 39.579651, 24.593069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.246403, 39.955589, 24.542444>,  <37.322552, 40.181152, 24.512070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.246403, 39.955589, 24.542444>,  <37.119488, 39.579651, 24.593069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246403, 39.955589, 24.542444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244086, -0.209894, -0.946766,
		-0.916379, 0.269505, -0.296000,
		0.317287, 0.939846, -0.126561,
		37.341587, 40.237545, 24.504477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878544, 39.854588, 23.951782>,  <37.119488, 39.579651, 24.593069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878544, 39.854588, 23.951782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.148239, 40.144627, 24.007839>,  <37.310055, 40.318649, 24.041473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.148239, 40.144627, 24.007839>,  <36.878544, 39.854588, 23.951782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148239, 40.144627, 24.007839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315877, -0.111612, -0.942213,
		-0.667556, 0.679540, -0.304294,
		0.674234, 0.725099, 0.140144,
		37.350510, 40.362156, 24.049883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768322, 40.386257, 23.463928>,  <36.878544, 39.854588, 23.951782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768322, 40.386257, 23.463928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152596, 40.416100, 23.570898>,  <37.383160, 40.434006, 23.635080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152596, 40.416100, 23.570898>,  <36.768322, 40.386257, 23.463928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152596, 40.416100, 23.570898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274006, -0.099553, -0.956562,
		-0.044743, 0.992231, -0.116082,
		0.960687, 0.074607, 0.267423,
		37.440800, 40.438480, 23.651125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162724, 40.875423, 23.023060>,  <36.768322, 40.386257, 23.463928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162724, 40.875423, 23.023060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.452904, 40.650799, 23.182241>,  <37.627010, 40.516022, 23.277750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.452904, 40.650799, 23.182241>,  <37.162724, 40.875423, 23.023060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452904, 40.650799, 23.182241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394321, -0.134791, -0.909033,
		0.564122, 0.816380, 0.123653,
		0.725449, -0.561565, 0.397955,
		37.670540, 40.482330, 23.301628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820827, 41.194904, 22.806814>,  <37.162724, 40.875423, 23.023060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820827, 41.194904, 22.806814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.953262, 40.832684, 22.912912>,  <38.032722, 40.615349, 22.976570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.953262, 40.832684, 22.912912>,  <37.820827, 41.194904, 22.806814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953262, 40.832684, 22.912912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598559, -0.015753, -0.800923,
		0.729458, 0.423938, 0.536812,
		0.331085, -0.905554, 0.265243,
		38.052589, 40.561016, 22.992485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521927, 41.214020, 22.729559>,  <37.820827, 41.194904, 22.806814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521927, 41.214020, 22.729559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.446964, 40.821342, 22.715931>,  <38.401985, 40.585735, 22.707754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.446964, 40.821342, 22.715931>,  <38.521927, 41.214020, 22.729559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446964, 40.821342, 22.715931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616525, -0.090551, -0.782111,
		0.764706, -0.167578, 0.622207,
		-0.187406, -0.981691, -0.034071,
		38.390743, 40.526836, 22.705709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259312, 40.972904, 22.735159>,  <38.521927, 41.214020, 22.729559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259312, 40.972904, 22.735159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.012783, 40.686977, 22.602987>,  <38.864864, 40.515423, 22.523684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.012783, 40.686977, 22.602987>,  <39.259312, 40.972904, 22.735159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012783, 40.686977, 22.602987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571231, -0.116980, -0.812410,
		0.542069, -0.689460, 0.480422,
		-0.616325, -0.714815, -0.330430,
		38.827885, 40.472534, 22.503859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712490, 40.517452, 22.440826>,  <39.259312, 40.972904, 22.735159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712490, 40.517452, 22.440826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.352745, 40.446823, 22.280840>,  <39.136898, 40.404446, 22.184847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.352745, 40.446823, 22.280840>,  <39.712490, 40.517452, 22.440826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352745, 40.446823, 22.280840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420293, -0.097160, -0.902172,
		0.120438, -0.979481, 0.161594,
		-0.899360, -0.176573, -0.399967,
		39.082935, 40.393852, 22.160851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830246, 39.945366, 22.026243>,  <39.712490, 40.517452, 22.440826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830246, 39.945366, 22.026243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.499821, 40.115402, 21.878237>,  <39.301563, 40.217426, 21.789433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.499821, 40.115402, 21.878237>,  <39.830246, 39.945366, 22.026243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499821, 40.115402, 21.878237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440439, 0.077335, -0.894445,
		-0.351608, -0.901840, -0.251111,
		-0.826066, 0.425093, -0.370014,
		39.252003, 40.242931, 21.767233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258919, 39.347466, 22.164690>,  <39.830246, 39.945366, 22.026243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258919, 39.347466, 22.164690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.623692, 39.510204, 22.186081>,  <40.842556, 39.607845, 22.198915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.623692, 39.510204, 22.186081>,  <40.258919, 39.347466, 22.164690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623692, 39.510204, 22.186081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086399, 0.062974, 0.994268,
		0.401147, -0.911323, 0.092579,
		0.911930, 0.406846, 0.053476,
		40.897270, 39.632259, 22.202124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685371, 38.934845, 22.603674>,  <40.258919, 39.347466, 22.164690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685371, 38.934845, 22.603674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.809338, 39.315132, 22.599798>,  <40.883717, 39.543304, 22.597473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.809338, 39.315132, 22.599798>,  <40.685371, 38.934845, 22.603674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809338, 39.315132, 22.599798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011920, 0.014078, 0.999830,
		0.950690, -0.309747, 0.015696,
		0.309915, 0.950715, -0.009692,
		40.902313, 39.600346, 22.596891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930702, 38.990479, 23.338503>,  <40.685371, 38.934845, 22.603674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930702, 38.990479, 23.338503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.919701, 39.368412, 23.207941>,  <40.913101, 39.595173, 23.129604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.919701, 39.368412, 23.207941>,  <40.930702, 38.990479, 23.338503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919701, 39.368412, 23.207941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148784, 0.319021, 0.935996,
		0.988487, 0.074304, 0.131802,
		-0.027501, 0.944830, -0.326403,
		40.911449, 39.651859, 23.110020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567802, 39.328136, 23.554174>,  <40.930702, 38.990479, 23.338503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567802, 39.328136, 23.554174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.248379, 39.564968, 23.510815>,  <41.056725, 39.707066, 23.484798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.248379, 39.564968, 23.510815>,  <41.567802, 39.328136, 23.554174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248379, 39.564968, 23.510815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022473, 0.209295, 0.977594,
		0.601498, 0.778230, -0.180440,
		-0.798558, 0.592076, -0.108401,
		41.008812, 39.742592, 23.478294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633659, 39.727352, 24.154411>,  <41.567802, 39.328136, 23.554174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633659, 39.727352, 24.154411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.287006, 39.857510, 24.003111>,  <41.079014, 39.935604, 23.912331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.287006, 39.857510, 24.003111>,  <41.633659, 39.727352, 24.154411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287006, 39.857510, 24.003111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237758, 0.397182, 0.886407,
		0.438663, 0.858119, -0.266845,
		-0.866629, 0.325390, -0.378253,
		41.027020, 39.955128, 23.889635>
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
