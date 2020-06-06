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
	<24.175812, 35.553894, 35.096275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.277205, 35.168404, 35.062874>,  <24.338039, 34.937107, 35.042835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.277205, 35.168404, 35.062874>,  <24.175812, 35.553894, 35.096275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.277205, 35.168404, 35.062874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966691, 0.255528, -0.014655,
		0.035460, -0.077004, 0.996400,
		0.253480, -0.963730, -0.083500,
		24.353249, 34.879284, 35.037823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.655416, 35.361134, 35.676353>,  <24.175812, 35.553894, 35.096275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.655416, 35.361134, 35.676353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.706959, 35.089958, 35.386856>,  <24.737885, 34.927254, 35.213158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.706959, 35.089958, 35.386856>,  <24.655416, 35.361134, 35.676353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.706959, 35.089958, 35.386856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990085, 0.129106, 0.055340,
		0.055922, -0.723697, 0.687848,
		0.128855, -0.677934, -0.723742,
		24.745615, 34.886578, 35.169735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.029394, 34.806080, 35.780930>,  <24.655416, 35.361134, 35.676353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.029394, 34.806080, 35.780930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057539, 34.902225, 35.393677>,  <25.074425, 34.959915, 35.161327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057539, 34.902225, 35.393677>,  <25.029394, 34.806080, 35.780930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.057539, 34.902225, 35.393677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995014, -0.085677, 0.051042,
		-0.070678, -0.966893, -0.245198,
		0.070361, 0.240368, -0.968128,
		25.078648, 34.974335, 35.103237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504356, 34.365486, 35.385918>,  <25.029394, 34.806080, 35.780930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.504356, 34.365486, 35.385918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488432, 34.700012, 35.167194>,  <25.478878, 34.900726, 35.035961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488432, 34.700012, 35.167194>,  <25.504356, 34.365486, 35.385918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488432, 34.700012, 35.167194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974195, -0.089191, -0.207339,
		-0.222170, -0.540948, -0.811182,
		-0.039809, 0.836314, -0.546804,
		25.476490, 34.950905, 35.003155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706621, 34.220413, 34.754349>,  <25.504356, 34.365486, 35.385918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706621, 34.220413, 34.754349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802040, 34.596954, 34.849796>,  <25.859291, 34.822880, 34.907066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802040, 34.596954, 34.849796>,  <25.706621, 34.220413, 34.754349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.802040, 34.596954, 34.849796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902610, -0.124259, -0.412135,
		-0.358315, 0.313698, -0.879320,
		0.238549, 0.941357, 0.238623,
		25.873606, 34.879360, 34.921383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.604586, 33.483723, 34.692837>,  <25.706621, 34.220413, 34.754349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.604586, 33.483723, 34.692837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984983, 33.591545, 34.753437>,  <26.213223, 33.656239, 34.789799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984983, 33.591545, 34.753437>,  <25.604586, 33.483723, 34.692837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984983, 33.591545, 34.753437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260340, -0.962357, 0.078048,
		0.166837, -0.034782, -0.985371,
		0.950993, 0.269553, 0.151502,
		26.270281, 33.672413, 34.798889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.979177, 33.037907, 34.241611>,  <25.604586, 33.483723, 34.692837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.979177, 33.037907, 34.241611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238466, 33.172771, 34.514706>,  <26.394039, 33.253689, 34.678562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238466, 33.172771, 34.514706>,  <25.979177, 33.037907, 34.241611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238466, 33.172771, 34.514706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215950, -0.941213, 0.259777,
		0.730187, -0.020956, -0.682926,
		0.648223, 0.337163, 0.682736,
		26.432934, 33.273922, 34.719528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.378929, 32.482536, 34.399658>,  <25.979177, 33.037907, 34.241611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.378929, 32.482536, 34.399658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519091, 32.721470, 34.688217>,  <26.603188, 32.864830, 34.861351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519091, 32.721470, 34.688217>,  <26.378929, 32.482536, 34.399658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519091, 32.721470, 34.688217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475906, -0.776939, 0.412165,
		0.806679, 0.198891, -0.556517,
		0.350404, 0.597334, 0.721393,
		26.624212, 32.900669, 34.904636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149567, 32.394108, 34.422050>,  <26.378929, 32.482536, 34.399658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149567, 32.394108, 34.422050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999525, 32.516228, 34.772156>,  <26.909500, 32.589500, 34.982220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999525, 32.516228, 34.772156>,  <27.149567, 32.394108, 34.422050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.999525, 32.516228, 34.772156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432714, -0.777356, 0.456592,
		0.819789, 0.550010, 0.159484,
		-0.375106, 0.305298, 0.875265,
		26.886993, 32.607819, 35.034737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688679, 32.281929, 34.891312>,  <27.149567, 32.394108, 34.422050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688679, 32.281929, 34.891312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348396, 32.303246, 35.100483>,  <27.144226, 32.316036, 35.225986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348396, 32.303246, 35.100483>,  <27.688679, 32.281929, 34.891312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348396, 32.303246, 35.100483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303615, -0.762288, 0.571608,
		0.429086, 0.645040, 0.632304,
		-0.850708, 0.053292, 0.522931,
		27.093184, 32.319233, 35.257362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893236, 32.123348, 35.468464>,  <27.688679, 32.281929, 34.891312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.893236, 32.123348, 35.468464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505312, 32.036568, 35.513008>,  <27.272558, 31.984499, 35.539734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505312, 32.036568, 35.513008>,  <27.893236, 32.123348, 35.468464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505312, 32.036568, 35.513008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240736, -0.778827, 0.579201,
		-0.038926, 0.588524, 0.807542,
		-0.969810, -0.216950, 0.111362,
		27.214369, 31.971483, 35.546417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828184, 31.938921, 36.177155>,  <27.893236, 32.123348, 35.468464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828184, 31.938921, 36.177155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491629, 31.812708, 36.001656>,  <27.289696, 31.736980, 35.896355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491629, 31.812708, 36.001656>,  <27.828184, 31.938921, 36.177155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491629, 31.812708, 36.001656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013994, -0.824307, 0.565971,
		-0.540248, 0.470062, 0.697978,
		-0.841390, -0.315532, -0.438752,
		27.239212, 31.718048, 35.870029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322037, 31.779655, 36.758785>,  <27.828184, 31.938921, 36.177155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322037, 31.779655, 36.758785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265137, 31.574211, 36.420326>,  <27.230997, 31.450945, 36.217251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265137, 31.574211, 36.420326>,  <27.322037, 31.779655, 36.758785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265137, 31.574211, 36.420326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104145, -0.857863, 0.503214,
		-0.984337, -0.016541, 0.175520,
		-0.142248, -0.513611, -0.846149,
		27.222462, 31.420128, 36.166481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.880320, 31.245457, 36.945343>,  <27.322037, 31.779655, 36.758785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.880320, 31.245457, 36.945343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018209, 31.098572, 36.599785>,  <27.100943, 31.010441, 36.392448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018209, 31.098572, 36.599785>,  <26.880320, 31.245457, 36.945343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.018209, 31.098572, 36.599785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068706, -0.927712, 0.366921,
		-0.936186, -0.067132, -0.345035,
		0.344725, -0.367212, -0.863898,
		27.121628, 30.988409, 36.340614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387859, 30.691839, 36.817917>,  <26.880320, 31.245457, 36.945343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387859, 30.691839, 36.817917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709526, 30.613689, 36.593365>,  <26.902525, 30.566799, 36.458633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709526, 30.613689, 36.593365>,  <26.387859, 30.691839, 36.817917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709526, 30.613689, 36.593365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050004, -0.963327, 0.263631,
		-0.592299, -0.183932, -0.784444,
		0.804166, -0.195374, -0.561380,
		26.950775, 30.555077, 36.424950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.330914, 30.007734, 36.481861>,  <26.387859, 30.691839, 36.817917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.330914, 30.007734, 36.481861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721624, 30.051317, 36.408070>,  <26.956051, 30.077467, 36.363792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721624, 30.051317, 36.408070>,  <26.330914, 30.007734, 36.481861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721624, 30.051317, 36.408070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172356, -0.911076, 0.374478,
		-0.127273, -0.397578, -0.908699,
		0.976778, 0.108959, -0.184481,
		27.014658, 30.084005, 36.352726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545073, 29.317308, 36.073612>,  <26.330914, 30.007734, 36.481861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545073, 29.317308, 36.073612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872715, 29.494701, 36.219151>,  <27.069302, 29.601137, 36.306473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872715, 29.494701, 36.219151>,  <26.545073, 29.317308, 36.073612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872715, 29.494701, 36.219151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285280, -0.865208, 0.412347,
		0.497672, -0.233959, -0.835216,
		0.819108, 0.443484, 0.363846,
		27.118448, 29.627747, 36.328304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137491, 28.883837, 35.869778>,  <26.545073, 29.317308, 36.073612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137491, 28.883837, 35.869778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227446, 29.102213, 36.192608>,  <27.281418, 29.233238, 36.386307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227446, 29.102213, 36.192608>,  <27.137491, 28.883837, 35.869778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227446, 29.102213, 36.192608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418619, -0.802089, 0.425923,
		0.879878, 0.242075, -0.408920,
		0.224885, 0.545942, 0.807077,
		27.294910, 29.265995, 36.434731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948547, 28.790346, 35.940075>,  <27.137491, 28.883837, 35.869778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948547, 28.790346, 35.940075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765146, 28.870211, 36.286465>,  <27.655106, 28.918129, 36.494297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765146, 28.870211, 36.286465>,  <27.948547, 28.790346, 35.940075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765146, 28.870211, 36.286465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432712, -0.800966, 0.413779,
		0.776232, 0.564436, 0.280849,
		-0.458502, 0.199662, 0.865974,
		27.627596, 28.930109, 36.546257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353586, 28.536509, 36.414597>,  <27.948547, 28.790346, 35.940075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353586, 28.536509, 36.414597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071350, 28.620855, 36.685204>,  <27.902008, 28.671463, 36.847569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071350, 28.620855, 36.685204>,  <28.353586, 28.536509, 36.414597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071350, 28.620855, 36.685204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298325, -0.777577, 0.553513,
		0.642763, 0.592376, 0.485744,
		-0.705590, 0.210868, 0.676518,
		27.859673, 28.684116, 36.888161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649433, 28.613550, 37.171135>,  <28.353586, 28.536509, 36.414597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649433, 28.613550, 37.171135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261421, 28.516510, 37.176640>,  <28.028614, 28.458286, 37.179943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261421, 28.516510, 37.176640>,  <28.649433, 28.613550, 37.171135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261421, 28.516510, 37.176640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184333, -0.697797, 0.692171,
		-0.158318, 0.673962, 0.721603,
		-0.970029, -0.242599, 0.013759,
		27.970413, 28.443731, 37.180767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529814, 28.463398, 37.836887>,  <28.649433, 28.613550, 37.171135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529814, 28.463398, 37.836887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223070, 28.261316, 37.678551>,  <28.039024, 28.140068, 37.583549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223070, 28.261316, 37.678551>,  <28.529814, 28.463398, 37.836887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223070, 28.261316, 37.678551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086706, -0.692656, 0.716038,
		-0.635930, 0.514779, 0.574974,
		-0.766860, -0.505204, -0.395846,
		27.993011, 28.109755, 37.559795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100428, 28.210222, 38.372177>,  <28.529814, 28.463398, 37.836887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100428, 28.210222, 38.372177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947222, 27.966640, 38.094337>,  <27.855297, 27.820492, 37.927631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947222, 27.966640, 38.094337>,  <28.100428, 28.210222, 38.372177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.947222, 27.966640, 38.094337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110183, -0.716459, 0.688874,
		-0.917147, 0.340384, 0.207319,
		-0.383017, -0.608955, -0.694602,
		27.832317, 27.783955, 37.885956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518135, 27.985609, 38.669086>,  <28.100428, 28.210222, 38.372177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518135, 27.985609, 38.669086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592365, 27.693476, 38.406124>,  <27.636904, 27.518196, 38.248348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592365, 27.693476, 38.406124>,  <27.518135, 27.985609, 38.669086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592365, 27.693476, 38.406124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066039, -0.676780, 0.733217,
		-0.980408, -0.092654, -0.173825,
		0.185577, -0.730331, -0.657402,
		27.648039, 27.474377, 38.208904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091311, 27.492779, 38.857616>,  <27.518135, 27.985609, 38.669086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091311, 27.492779, 38.857616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361479, 27.320345, 38.618294>,  <27.523581, 27.216885, 38.474701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361479, 27.320345, 38.618294>,  <27.091311, 27.492779, 38.857616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361479, 27.320345, 38.618294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075760, -0.766482, 0.637783,
		-0.733529, -0.476100, -0.485040,
		0.675423, -0.431086, -0.598306,
		27.564106, 27.191019, 38.438801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841457, 26.867315, 38.714172>,  <27.091311, 27.492779, 38.857616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841457, 26.867315, 38.714172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238462, 26.902155, 38.679920>,  <27.476665, 26.923059, 38.659370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238462, 26.902155, 38.679920>,  <26.841457, 26.867315, 38.714172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238462, 26.902155, 38.679920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121992, -0.741867, 0.659357,
		-0.006096, -0.664866, -0.746938,
		0.992512, 0.087100, -0.085631,
		27.536217, 26.928286, 38.654232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108887, 26.245352, 38.499081>,  <26.841457, 26.867315, 38.714172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108887, 26.245352, 38.499081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.377163, 26.454956, 38.709068>,  <27.538128, 26.580719, 38.835060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.377163, 26.454956, 38.709068>,  <27.108887, 26.245352, 38.499081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377163, 26.454956, 38.709068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171701, -0.798208, 0.577394,
		0.721592, -0.297115, -0.625322,
		0.670689, 0.524011, 0.524966,
		27.578369, 26.612160, 38.866558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789061, 25.752502, 38.650131>,  <27.108887, 26.245352, 38.499081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789061, 25.752502, 38.650131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722137, 26.033764, 38.926559>,  <27.681984, 26.202520, 39.092419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722137, 26.033764, 38.926559>,  <27.789061, 25.752502, 38.650131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722137, 26.033764, 38.926559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169474, -0.670009, 0.722749,
		0.971229, 0.238041, -0.007069,
		-0.167308, 0.703153, 0.691074,
		27.671946, 26.244709, 39.133881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382877, 25.842030, 39.107540>,  <27.789061, 25.752502, 38.650131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382877, 25.842030, 39.107540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039883, 25.943226, 39.286743>,  <27.834085, 26.003944, 39.394264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039883, 25.943226, 39.286743>,  <28.382877, 25.842030, 39.107540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039883, 25.943226, 39.286743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285823, -0.489803, 0.823649,
		0.427813, 0.834319, 0.347688,
		-0.857485, 0.252991, 0.448012,
		27.782637, 26.019123, 39.421146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336725, 26.220024, 39.750343>,  <28.382877, 25.842030, 39.107540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336725, 26.220024, 39.750343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004795, 25.996838, 39.753574>,  <27.805637, 25.862926, 39.755512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004795, 25.996838, 39.753574>,  <28.336725, 26.220024, 39.750343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004795, 25.996838, 39.753574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327673, -0.475511, 0.816407,
		-0.451689, 0.680120, 0.577420,
		-0.829824, -0.557967, 0.008074,
		27.755848, 25.829447, 39.755997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925219, 26.319622, 40.371658>,  <28.336725, 26.220024, 39.750343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925219, 26.319622, 40.371658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919987, 25.951653, 40.214909>,  <27.916847, 25.730871, 40.120857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919987, 25.951653, 40.214909>,  <27.925219, 26.319622, 40.371658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919987, 25.951653, 40.214909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338580, -0.372832, 0.863921,
		-0.940847, -0.121382, 0.316345,
		-0.013079, -0.919925, -0.391875,
		27.916063, 25.675674, 40.097347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197908, 26.705650, 40.876595>,  <27.925219, 26.319622, 40.371658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197908, 26.705650, 40.876595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321196, 26.810160, 41.242489>,  <28.395168, 26.872866, 41.462025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321196, 26.810160, 41.242489>,  <28.197908, 26.705650, 40.876595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321196, 26.810160, 41.242489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469225, 0.794690, -0.385092,
		-0.827544, 0.547908, 0.122341,
		0.308219, 0.261275, 0.914733,
		28.413662, 26.888542, 41.516911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124079, 27.490549, 40.942635>,  <28.197908, 26.705650, 40.876595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124079, 27.490549, 40.942635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385412, 27.331593, 41.200390>,  <28.542212, 27.236219, 41.355042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385412, 27.331593, 41.200390>,  <28.124079, 27.490549, 40.942635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385412, 27.331593, 41.200390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698138, 0.645485, -0.309762,
		-0.292846, 0.652249, 0.699151,
		0.653334, -0.397391, 0.644387,
		28.581413, 27.212376, 41.393707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287895, 27.966608, 41.480774>,  <28.124079, 27.490549, 40.942635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287895, 27.966608, 41.480774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574589, 27.721167, 41.348240>,  <28.746605, 27.573902, 41.268719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574589, 27.721167, 41.348240>,  <28.287895, 27.966608, 41.480774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574589, 27.721167, 41.348240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504244, 0.784229, -0.361557,
		0.481694, 0.092067, 0.871490,
		0.716735, -0.613603, -0.331334,
		28.789610, 27.537086, 41.248840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855516, 28.360918, 41.477531>,  <28.287895, 27.966608, 41.480774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855516, 28.360918, 41.477531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920284, 28.046530, 41.238857>,  <28.959145, 27.857897, 41.095654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920284, 28.046530, 41.238857>,  <28.855516, 28.360918, 41.477531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920284, 28.046530, 41.238857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402399, 0.604697, -0.687326,
		0.901031, -0.128815, 0.414185,
		0.161918, -0.785970, -0.596686,
		28.968861, 27.810740, 41.059853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619396, 28.232697, 41.095371>,  <28.855516, 28.360918, 41.477531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619396, 28.232697, 41.095371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.313499, 28.100025, 40.874409>,  <29.129961, 28.020422, 40.741829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.313499, 28.100025, 40.874409>,  <29.619396, 28.232697, 41.095371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313499, 28.100025, 40.874409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172765, 0.720387, -0.671711,
		0.620740, -0.609124, -0.493609,
		-0.764744, -0.331680, -0.552408,
		29.084076, 28.000521, 40.708687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763750, 28.524485, 40.540279>,  <29.619396, 28.232697, 41.095371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763750, 28.524485, 40.540279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389545, 28.396334, 40.480705>,  <29.165024, 28.319443, 40.444962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389545, 28.396334, 40.480705>,  <29.763750, 28.524485, 40.540279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389545, 28.396334, 40.480705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144354, 0.731369, -0.666530,
		0.322466, -0.602045, -0.730450,
		-0.935510, -0.320377, -0.148934,
		29.108892, 28.300220, 40.436024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689224, 28.516815, 39.798046>,  <29.763750, 28.524485, 40.540279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689224, 28.516815, 39.798046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316698, 28.541025, 39.941708>,  <29.093184, 28.555552, 40.027905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316698, 28.541025, 39.941708>,  <29.689224, 28.516815, 39.798046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316698, 28.541025, 39.941708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145939, 0.841460, -0.520236,
		-0.333703, -0.536918, -0.774830,
		-0.931313, 0.060527, 0.359155,
		29.037304, 28.559183, 40.049454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241474, 28.555098, 39.215302>,  <29.689224, 28.516815, 39.798046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241474, 28.555098, 39.215302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065834, 28.715811, 39.536739>,  <28.960451, 28.812239, 39.729603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065834, 28.715811, 39.536739>,  <29.241474, 28.555098, 39.215302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065834, 28.715811, 39.536739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187317, 0.833836, -0.519258,
		-0.878695, -0.378532, -0.290875,
		-0.439099, 0.401783, 0.803594,
		28.934105, 28.836346, 39.777817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889410, 29.120977, 38.956532>,  <29.241474, 28.555098, 39.215302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889410, 29.120977, 38.956532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854404, 29.222969, 39.341724>,  <28.833401, 29.284164, 39.572838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854404, 29.222969, 39.341724>,  <28.889410, 29.120977, 38.956532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854404, 29.222969, 39.341724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017147, 0.966159, -0.257378,
		-0.996015, -0.039037, -0.080182,
		-0.087515, 0.254977, 0.962978,
		28.828150, 29.299461, 39.630619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313316, 29.517738, 38.878063>,  <28.889410, 29.120977, 38.956532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313316, 29.517738, 38.878063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524200, 29.632669, 39.197937>,  <28.650732, 29.701628, 39.389862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524200, 29.632669, 39.197937>,  <28.313316, 29.517738, 38.878063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524200, 29.632669, 39.197937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031828, 0.947113, -0.319319,
		-0.849138, 0.142897, 0.508474,
		0.527212, 0.287330, 0.799681,
		28.682364, 29.718868, 39.437840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.913593, 30.203083, 39.152866>,  <28.313316, 29.517738, 38.878063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.913593, 30.203083, 39.152866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280567, 30.200361, 39.311996>,  <28.500751, 30.198729, 39.407475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280567, 30.200361, 39.311996>,  <27.913593, 30.203083, 39.152866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280567, 30.200361, 39.311996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129331, 0.950659, -0.281995,
		-0.376277, 0.310163, 0.873049,
		0.917436, -0.006804, 0.397824,
		28.555798, 30.198320, 39.431343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934433, 30.900232, 39.423092>,  <27.913593, 30.203083, 39.152866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934433, 30.900232, 39.423092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304970, 30.758728, 39.371326>,  <28.527292, 30.673826, 39.340267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304970, 30.758728, 39.371326>,  <27.934433, 30.900232, 39.423092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304970, 30.758728, 39.371326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269010, 0.861760, -0.430121,
		0.263680, 0.363625, 0.893448,
		0.926340, -0.353761, -0.129410,
		28.582872, 30.652599, 39.332504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446692, 31.491415, 39.646046>,  <27.934433, 30.900232, 39.423092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446692, 31.491415, 39.646046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664026, 31.239536, 39.423958>,  <28.794426, 31.088409, 39.290707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664026, 31.239536, 39.423958>,  <28.446692, 31.491415, 39.646046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664026, 31.239536, 39.423958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373265, 0.773590, -0.512085,
		0.751971, 0.070990, 0.655362,
		0.543335, -0.629697, -0.555219,
		28.827026, 31.050627, 39.257393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135126, 31.847403, 39.641575>,  <28.446692, 31.491415, 39.646046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135126, 31.847403, 39.641575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143448, 31.569843, 39.353664>,  <29.148441, 31.403307, 39.180920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143448, 31.569843, 39.353664>,  <29.135126, 31.847403, 39.641575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143448, 31.569843, 39.353664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548316, 0.609918, -0.572146,
		0.836013, -0.382760, 0.393164,
		0.020803, -0.693899, -0.719772,
		29.149689, 31.361673, 39.137733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802277, 31.996801, 39.279362>,  <29.135126, 31.847403, 39.641575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802277, 31.996801, 39.279362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560114, 31.798889, 39.029987>,  <29.414816, 31.680141, 38.880363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560114, 31.798889, 39.029987>,  <29.802277, 31.996801, 39.279362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560114, 31.798889, 39.029987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233493, 0.638421, -0.733416,
		0.760897, -0.589583, -0.270976,
		-0.605407, -0.494783, -0.623436,
		29.378492, 31.650454, 38.842957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187992, 31.970676, 38.613659>,  <29.802277, 31.996801, 39.279362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187992, 31.970676, 38.613659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807739, 31.904444, 38.508678>,  <29.579588, 31.864704, 38.445690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807739, 31.904444, 38.508678>,  <30.187992, 31.970676, 38.613659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807739, 31.904444, 38.508678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173152, 0.418798, -0.891418,
		0.257514, -0.892855, -0.369453,
		-0.950634, -0.165581, -0.262446,
		29.522549, 31.854769, 38.429943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182245, 31.818235, 37.904827>,  <30.187992, 31.970676, 38.613659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182245, 31.818235, 37.904827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801346, 31.926233, 37.961853>,  <29.572805, 31.991032, 37.996067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801346, 31.926233, 37.961853>,  <30.182245, 31.818235, 37.904827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801346, 31.926233, 37.961853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024975, 0.396492, -0.917699,
		-0.304299, -0.877438, -0.370816,
		-0.952249, 0.269993, 0.142566,
		29.515671, 32.007233, 38.004623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895643, 31.747992, 37.279125>,  <30.182245, 31.818235, 37.904827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895643, 31.747992, 37.279125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645380, 31.991682, 37.474018>,  <29.495222, 32.137897, 37.590954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645380, 31.991682, 37.474018>,  <29.895643, 31.747992, 37.279125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645380, 31.991682, 37.474018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224718, 0.457347, -0.860427,
		-0.747029, -0.647824, -0.149239,
		-0.625659, 0.609227, 0.487229,
		29.457682, 32.174450, 37.620186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252863, 31.755987, 36.866375>,  <29.895643, 31.747992, 37.279125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252863, 31.755987, 36.866375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245476, 32.086113, 37.092125>,  <29.241043, 32.284187, 37.227573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245476, 32.086113, 37.092125>,  <29.252863, 31.755987, 36.866375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245476, 32.086113, 37.092125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188559, 0.551464, -0.812608,
		-0.981888, -0.121426, 0.145435,
		-0.018470, 0.825314, 0.564372,
		29.239935, 32.333706, 37.261436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515099, 32.140190, 36.732265>,  <29.252863, 31.755987, 36.866375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515099, 32.140190, 36.732265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.787426, 32.403233, 36.861286>,  <28.950823, 32.561058, 36.938698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.787426, 32.403233, 36.861286>,  <28.515099, 32.140190, 36.732265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787426, 32.403233, 36.861286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177559, 0.575408, -0.798360,
		-0.710606, 0.486266, 0.508512,
		0.680817, 0.657610, 0.322547,
		28.991671, 32.600517, 36.958050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197117, 32.798820, 36.749691>,  <28.515099, 32.140190, 36.732265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197117, 32.798820, 36.749691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589382, 32.872845, 36.724232>,  <28.824741, 32.917259, 36.708958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589382, 32.872845, 36.724232>,  <28.197117, 32.798820, 36.749691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589382, 32.872845, 36.724232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179825, 0.723812, -0.666152,
		-0.077214, 0.664716, 0.743095,
		0.980664, 0.185063, -0.063644,
		28.883581, 32.928364, 36.705139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207340, 33.532600, 36.648003>,  <28.197117, 32.798820, 36.749691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207340, 33.532600, 36.648003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558413, 33.385117, 36.525539>,  <28.769056, 33.296627, 36.452061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558413, 33.385117, 36.525539>,  <28.207340, 33.532600, 36.648003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558413, 33.385117, 36.525539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011627, 0.622250, -0.782732,
		0.479108, 0.690547, 0.541848,
		0.877679, -0.368713, -0.306154,
		28.821716, 33.274502, 36.433693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606581, 34.114357, 36.574673>,  <28.207340, 33.532600, 36.648003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606581, 34.114357, 36.574673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807522, 33.841316, 36.362373>,  <28.928087, 33.677494, 36.234993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807522, 33.841316, 36.362373>,  <28.606581, 34.114357, 36.574673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807522, 33.841316, 36.362373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193027, 0.686867, -0.700681,
		0.842841, 0.249541, 0.476811,
		0.502354, -0.682600, -0.530751,
		28.958229, 33.636536, 36.203148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106552, 34.539864, 36.304287>,  <28.606581, 34.114357, 36.574673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106552, 34.539864, 36.304287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115297, 34.211376, 36.076210>,  <29.120544, 34.014282, 35.939365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115297, 34.211376, 36.076210>,  <29.106552, 34.539864, 36.304287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115297, 34.211376, 36.076210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119216, 0.568401, -0.814069,
		0.992628, -0.050177, 0.110330,
		0.021864, -0.821220, -0.570192,
		29.121857, 33.965012, 35.905151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718870, 34.647503, 35.925457>,  <29.106552, 34.539864, 36.304287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718870, 34.647503, 35.925457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477982, 34.404263, 35.718555>,  <29.333448, 34.258320, 35.594414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477982, 34.404263, 35.718555>,  <29.718870, 34.647503, 35.925457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477982, 34.404263, 35.718555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247351, 0.473904, -0.845123,
		0.759044, -0.636893, -0.134982,
		-0.602221, -0.608097, -0.517250,
		29.297316, 34.221832, 35.563381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030523, 34.474411, 35.397713>,  <29.718870, 34.647503, 35.925457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030523, 34.474411, 35.397713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668695, 34.382565, 35.254028>,  <29.451599, 34.327457, 35.167816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668695, 34.382565, 35.254028>,  <30.030523, 34.474411, 35.397713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668695, 34.382565, 35.254028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161160, 0.595888, -0.786730,
		0.394695, -0.769542, -0.502017,
		-0.904568, -0.229613, -0.359214,
		29.397326, 34.313679, 35.146263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276335, 33.937099, 35.883198>,  <30.030523, 34.474411, 35.397713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276335, 33.937099, 35.883198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034569, 34.112644, 36.149155>,  <29.889509, 34.217972, 36.308727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034569, 34.112644, 36.149155>,  <30.276335, 33.937099, 35.883198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034569, 34.112644, 36.149155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711840, -0.077248, 0.698081,
		0.357725, 0.895226, -0.265711,
		-0.604415, 0.438865, 0.664892,
		29.853245, 34.244305, 36.348621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733093, 34.213093, 36.320274>,  <30.276335, 33.937099, 35.883198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733093, 34.213093, 36.320274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389853, 34.243820, 36.523354>,  <30.183907, 34.262257, 36.645203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389853, 34.243820, 36.523354>,  <30.733093, 34.213093, 36.320274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389853, 34.243820, 36.523354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509225, 0.000343, 0.860633,
		0.065934, 0.997045, -0.039410,
		-0.858104, 0.076814, 0.507698,
		30.132421, 34.266865, 36.675663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278427, 33.848392, 36.221424>,  <30.733093, 34.213093, 36.320274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278427, 33.848392, 36.221424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644136, 33.709011, 36.138786>,  <31.863562, 33.625381, 36.089203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644136, 33.709011, 36.138786>,  <31.278427, 33.848392, 36.221424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644136, 33.709011, 36.138786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386987, 0.902065, 0.191104,
		0.119773, -0.254671, 0.959582,
		0.914273, -0.348456, -0.206597,
		31.918419, 33.604473, 36.076809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764133, 33.903957, 36.791981>,  <31.278427, 33.848392, 36.221424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764133, 33.903957, 36.791981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930687, 33.926044, 36.428978>,  <32.030621, 33.939297, 36.211174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930687, 33.926044, 36.428978>,  <31.764133, 33.903957, 36.791981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930687, 33.926044, 36.428978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383452, 0.894372, 0.230356,
		0.824372, -0.443903, 0.351227,
		0.416383, 0.055220, -0.907511,
		32.055603, 33.942612, 36.156723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517120, 34.096279, 36.865547>,  <31.764133, 33.903957, 36.791981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517120, 34.096279, 36.865547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381771, 34.235630, 36.515888>,  <32.300564, 34.319241, 36.306091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381771, 34.235630, 36.515888>,  <32.517120, 34.096279, 36.865547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381771, 34.235630, 36.515888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558418, 0.822039, 0.111452,
		0.757413, -0.450429, -0.472694,
		-0.338371, 0.348376, -0.874151,
		32.280258, 34.340141, 36.253643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345528, 34.702431, 37.193508>,  <32.517120, 34.096279, 36.865547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345528, 34.702431, 37.193508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680553, 34.845829, 37.028603>,  <32.881569, 34.931866, 36.929657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680553, 34.845829, 37.028603>,  <32.345528, 34.702431, 37.193508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680553, 34.845829, 37.028603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083089, 0.829413, 0.552423,
		0.539980, -0.428436, 0.724475,
		0.837567, 0.358493, -0.412268,
		32.931824, 34.953377, 36.904922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691944, 35.119450, 37.678452>,  <32.345528, 34.702431, 37.193508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691944, 35.119450, 37.678452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817303, 35.280807, 37.334579>,  <32.892517, 35.377621, 37.128254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817303, 35.280807, 37.334579>,  <32.691944, 35.119450, 37.678452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817303, 35.280807, 37.334579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106789, 0.914519, 0.390194,
		0.943598, -0.030482, 0.329688,
		0.313399, 0.403394, -0.859683,
		32.911324, 35.401825, 37.076675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162605, 35.350319, 38.193565>,  <32.691944, 35.119450, 37.678452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162605, 35.350319, 38.193565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527145, 35.249561, 38.063343>,  <33.745869, 35.189106, 37.985210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527145, 35.249561, 38.063343>,  <33.162605, 35.350319, 38.193565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527145, 35.249561, 38.063343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340439, 0.016682, 0.940119,
		-0.231381, -0.967611, 0.100958,
		0.911353, -0.251896, -0.325552,
		33.800552, 35.173992, 37.965679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508217, 34.778561, 38.723137>,  <33.162605, 35.350319, 38.193565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508217, 34.778561, 38.723137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822186, 34.935539, 38.531353>,  <34.010567, 35.029728, 38.416283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822186, 34.935539, 38.531353>,  <33.508217, 34.778561, 38.723137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822186, 34.935539, 38.531353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433819, 0.204402, 0.877508,
		0.442379, -0.896775, -0.009812,
		0.784922, 0.392448, -0.479461,
		34.057663, 35.053272, 38.387516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119907, 34.498322, 39.036789>,  <33.508217, 34.778561, 38.723137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119907, 34.498322, 39.036789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237560, 34.835537, 38.856667>,  <34.308151, 35.037865, 38.748592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237560, 34.835537, 38.856667>,  <34.119907, 34.498322, 39.036789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237560, 34.835537, 38.856667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449822, 0.293604, 0.843479,
		0.843295, -0.450654, -0.292857,
		0.294133, 0.843035, -0.450309,
		34.325802, 35.088448, 38.721573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689228, 34.652630, 39.361229>,  <34.119907, 34.498322, 39.036789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689228, 34.652630, 39.361229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639473, 34.993191, 39.157406>,  <34.609619, 35.197525, 39.035110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639473, 34.993191, 39.157406>,  <34.689228, 34.652630, 39.361229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639473, 34.993191, 39.157406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675964, 0.448651, 0.584624,
		0.726361, -0.271724, -0.631320,
		-0.124386, 0.851398, -0.509558,
		34.602158, 35.248611, 39.004539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401867, 34.782017, 39.185612>,  <34.689228, 34.652630, 39.361229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401867, 34.782017, 39.185612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176102, 35.111820, 39.201717>,  <35.040642, 35.309704, 39.211380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176102, 35.111820, 39.201717>,  <35.401867, 34.782017, 39.185612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176102, 35.111820, 39.201717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611816, 0.385073, 0.690941,
		0.554183, 0.414610, -0.721789,
		-0.564413, 0.824510, 0.040264,
		35.006779, 35.359173, 39.213795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849659, 35.320705, 39.189804>,  <35.401867, 34.782017, 39.185612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849659, 35.320705, 39.189804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501392, 35.474308, 39.312759>,  <35.292435, 35.566471, 39.386532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501392, 35.474308, 39.312759>,  <35.849659, 35.320705, 39.189804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501392, 35.474308, 39.312759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476485, 0.503314, 0.720859,
		0.122105, 0.774088, -0.621191,
		-0.870662, 0.384009, 0.307384,
		35.240192, 35.589512, 39.404976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076378, 35.973812, 39.554947>,  <35.849659, 35.320705, 39.189804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076378, 35.973812, 39.554947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698685, 35.921173, 39.675686>,  <35.472069, 35.889591, 39.748127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698685, 35.921173, 39.675686>,  <36.076378, 35.973812, 39.554947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698685, 35.921173, 39.675686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211981, 0.458534, 0.863024,
		-0.251975, 0.878880, -0.405067,
		-0.944231, -0.131594, 0.301845,
		35.415417, 35.881695, 39.766239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852493, 36.604115, 39.913342>,  <36.076378, 35.973812, 39.554947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852493, 36.604115, 39.913342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618683, 36.309643, 40.049793>,  <35.478397, 36.132961, 40.131664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618683, 36.309643, 40.049793>,  <35.852493, 36.604115, 39.913342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618683, 36.309643, 40.049793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199648, 0.277007, 0.939898,
		-0.786427, 0.617503, -0.014942,
		-0.584529, -0.736178, 0.341129,
		35.443325, 36.088791, 40.152130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661999, 36.818901, 40.533455>,  <35.852493, 36.604115, 39.913342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661999, 36.818901, 40.533455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543617, 36.439415, 40.577911>,  <35.472588, 36.211723, 40.604584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543617, 36.439415, 40.577911>,  <35.661999, 36.818901, 40.533455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543617, 36.439415, 40.577911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271259, 0.028091, 0.962096,
		-0.915877, 0.314884, 0.249033,
		-0.295953, -0.948714, 0.111142,
		35.454830, 36.154800, 40.611256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225105, 36.760658, 41.161316>,  <35.661999, 36.818901, 40.533455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225105, 36.760658, 41.161316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388775, 36.403973, 41.083942>,  <35.486977, 36.189960, 41.037518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388775, 36.403973, 41.083942>,  <35.225105, 36.760658, 41.161316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388775, 36.403973, 41.083942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206000, -0.116242, 0.971623,
		-0.888900, -0.437408, 0.136131,
		0.409171, -0.891719, -0.193433,
		35.511528, 36.136456, 41.025913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035275, 36.397022, 41.616623>,  <35.225105, 36.760658, 41.161316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035275, 36.397022, 41.616623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367481, 36.214973, 41.488182>,  <35.566807, 36.105743, 41.411118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367481, 36.214973, 41.488182>,  <35.035275, 36.397022, 41.616623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367481, 36.214973, 41.488182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324319, -0.073539, 0.943085,
		-0.452830, -0.887388, 0.086529,
		0.830519, -0.455120, -0.321097,
		35.616638, 36.078438, 41.391853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165943, 35.765888, 42.035995>,  <35.035275, 36.397022, 41.616623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165943, 35.765888, 42.035995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533619, 35.835670, 41.894768>,  <35.754223, 35.877541, 41.810032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533619, 35.835670, 41.894768>,  <35.165943, 35.765888, 42.035995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533619, 35.835670, 41.894768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378311, -0.142047, 0.914715,
		0.109428, -0.974365, -0.196567,
		0.919188, 0.174459, -0.353069,
		35.809376, 35.888008, 41.788849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514832, 35.197411, 42.365196>,  <35.165943, 35.765888, 42.035995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514832, 35.197411, 42.365196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778297, 35.473492, 42.245346>,  <35.936378, 35.639141, 42.173435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778297, 35.473492, 42.245346>,  <35.514832, 35.197411, 42.365196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778297, 35.473492, 42.245346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519749, -0.129407, 0.844461,
		0.544076, -0.711950, -0.443969,
		0.658667, 0.690204, -0.299628,
		35.975899, 35.680553, 42.155457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264751, 34.931152, 42.437542>,  <35.514832, 35.197411, 42.365196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264751, 34.931152, 42.437542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284508, 35.330074, 42.459248>,  <36.296364, 35.569427, 42.472271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284508, 35.330074, 42.459248>,  <36.264751, 34.931152, 42.437542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284508, 35.330074, 42.459248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464259, -0.071028, 0.882847,
		0.884321, -0.018416, -0.466516,
		0.049394, 0.997304, 0.054262,
		36.299328, 35.629265, 42.475525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897003, 35.064919, 42.743141>,  <36.264751, 34.931152, 42.437542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897003, 35.064919, 42.743141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679157, 35.398785, 42.775978>,  <36.548450, 35.599102, 42.795681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679157, 35.398785, 42.775978>,  <36.897003, 35.064919, 42.743141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679157, 35.398785, 42.775978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165075, 0.010716, 0.986223,
		0.822283, 0.550659, -0.143618,
		-0.544611, 0.834662, 0.082088,
		36.515774, 35.649181, 42.800606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295349, 35.620792, 43.179348>,  <36.897003, 35.064919, 42.743141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295349, 35.620792, 43.179348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910877, 35.726303, 43.211746>,  <36.680195, 35.789608, 43.231186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910877, 35.726303, 43.211746>,  <37.295349, 35.620792, 43.179348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910877, 35.726303, 43.211746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169497, 0.332798, 0.927640,
		0.217735, 0.905355, -0.364587,
		-0.961177, 0.263776, 0.080994,
		36.622524, 35.805435, 43.236046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282181, 36.057316, 43.750984>,  <37.295349, 35.620792, 43.179348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282181, 36.057316, 43.750984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883064, 36.072933, 43.729477>,  <36.643593, 36.082306, 43.716572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883064, 36.072933, 43.729477>,  <37.282181, 36.057316, 43.750984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883064, 36.072933, 43.729477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032606, 0.417388, 0.908143,
		0.057901, 0.907889, -0.415192,
		-0.997790, 0.039045, -0.053770,
		36.583729, 36.084648, 43.713345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007225, 36.775124, 44.012028>,  <37.282181, 36.057316, 43.750984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007225, 36.775124, 44.012028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691330, 36.530041, 44.024040>,  <36.501793, 36.382992, 44.031246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691330, 36.530041, 44.024040>,  <37.007225, 36.775124, 44.012028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691330, 36.530041, 44.024040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229724, 0.340778, 0.911645,
		-0.568805, 0.713064, -0.409879,
		-0.789739, -0.612707, 0.030029,
		36.454407, 36.346230, 44.033051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321705, 37.132710, 44.212196>,  <37.007225, 36.775124, 44.012028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321705, 37.132710, 44.212196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238770, 36.760937, 44.334290>,  <36.189011, 36.537872, 44.407547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238770, 36.760937, 44.334290>,  <36.321705, 37.132710, 44.212196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238770, 36.760937, 44.334290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365545, 0.363021, 0.857084,
		-0.907408, 0.066128, -0.415016,
		-0.207337, -0.929431, 0.305235,
		36.176567, 36.482109, 44.425861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597042, 37.135860, 44.604462>,  <36.321705, 37.132710, 44.212196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597042, 37.135860, 44.604462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758614, 36.793423, 44.733429>,  <35.855556, 36.587959, 44.810810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758614, 36.793423, 44.733429>,  <35.597042, 37.135860, 44.604462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758614, 36.793423, 44.733429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309794, 0.203612, 0.928746,
		-0.860739, -0.475028, -0.182968,
		0.403926, -0.856090, 0.322417,
		35.879791, 36.536594, 44.830154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997986, 36.869946, 45.009666>,  <35.597042, 37.135860, 44.604462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997986, 36.869946, 45.009666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351719, 36.700455, 45.088066>,  <35.563957, 36.598759, 45.135105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351719, 36.700455, 45.088066>,  <34.997986, 36.869946, 45.009666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351719, 36.700455, 45.088066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222927, -0.014378, 0.974729,
		-0.410205, -0.905674, -0.107176,
		0.884327, -0.423731, 0.196001,
		35.617016, 36.573334, 45.146866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869038, 36.496857, 45.725571>,  <34.997986, 36.869946, 45.009666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869038, 36.496857, 45.725571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265259, 36.464237, 45.681484>,  <35.502991, 36.444668, 45.655033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265259, 36.464237, 45.681484>,  <34.869038, 36.496857, 45.725571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265259, 36.464237, 45.681484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094457, -0.176748, 0.979713,
		-0.099366, -0.980873, -0.167377,
		0.990557, -0.081540, -0.110213,
		35.562428, 36.439774, 45.648418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001511, 35.811913, 46.034721>,  <34.869038, 36.496857, 45.725571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001511, 35.811913, 46.034721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312294, 36.063702, 46.030617>,  <35.498764, 36.214775, 46.028152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312294, 36.063702, 46.030617>,  <35.001511, 35.811913, 46.034721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312294, 36.063702, 46.030617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132873, -0.148024, 0.980017,
		0.615371, -0.762796, -0.198648,
		0.776958, 0.629469, -0.010265,
		35.545380, 36.252541, 46.027538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575188, 35.539856, 46.381771>,  <35.001511, 35.811913, 46.034721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575188, 35.539856, 46.381771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661293, 35.930470, 46.384617>,  <35.712955, 36.164837, 46.386322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661293, 35.930470, 46.384617>,  <35.575188, 35.539856, 46.381771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661293, 35.930470, 46.384617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137950, -0.037617, 0.989725,
		0.966765, -0.212066, -0.142809,
		0.215259, 0.976531, 0.007112,
		35.725872, 36.223431, 46.386749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219604, 35.590050, 46.651989>,  <35.575188, 35.539856, 46.381771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219604, 35.590050, 46.651989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046925, 35.945969, 46.711182>,  <35.943317, 36.159519, 46.746696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046925, 35.945969, 46.711182>,  <36.219604, 35.590050, 46.651989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046925, 35.945969, 46.711182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267960, -0.030139, 0.962959,
		0.861296, 0.455364, -0.225419,
		-0.431703, 0.889795, 0.147978,
		35.917416, 36.212906, 46.755573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675907, 35.936974, 47.000862>,  <36.219604, 35.590050, 46.651989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675907, 35.936974, 47.000862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347000, 36.153923, 47.069801>,  <36.149654, 36.284092, 47.111164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347000, 36.153923, 47.069801>,  <36.675907, 35.936974, 47.000862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347000, 36.153923, 47.069801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271125, 0.107074, 0.956570,
		0.500363, 0.833287, -0.235095,
		-0.822270, 0.542372, 0.172349,
		36.100319, 36.316635, 47.121506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993561, 36.587574, 47.256393>,  <36.675907, 35.936974, 47.000862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993561, 36.587574, 47.256393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611767, 36.520004, 47.354713>,  <36.382690, 36.479462, 47.413708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611767, 36.520004, 47.354713>,  <36.993561, 36.587574, 47.256393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611767, 36.520004, 47.354713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256636, -0.045255, 0.965448,
		-0.151967, 0.984589, 0.086548,
		-0.954486, -0.168927, 0.245804,
		36.325420, 36.469326, 47.428455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006828, 36.906506, 47.981106>,  <36.993561, 36.587574, 47.256393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006828, 36.906506, 47.981106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646679, 36.733070, 47.966553>,  <36.430588, 36.629009, 47.957821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646679, 36.733070, 47.966553>,  <37.006828, 36.906506, 47.981106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646679, 36.733070, 47.966553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047957, -0.182007, 0.982127,
		-0.432461, 0.882539, 0.184669,
		-0.900376, -0.433588, -0.036387,
		36.376568, 36.602993, 47.955635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544083, 37.209003, 48.472900>,  <37.006828, 36.906506, 47.981106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544083, 37.209003, 48.472900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401222, 36.841019, 48.408264>,  <36.315506, 36.620228, 48.369480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401222, 36.841019, 48.408264>,  <36.544083, 37.209003, 48.472900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401222, 36.841019, 48.408264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150053, -0.227267, 0.962203,
		-0.921914, 0.319407, 0.219212,
		-0.357154, -0.919961, -0.161593,
		36.294075, 36.565029, 48.359787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147854, 37.008846, 49.092892>,  <36.544083, 37.209003, 48.472900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147854, 37.008846, 49.092892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241589, 36.671669, 48.899178>,  <36.297829, 36.469364, 48.782948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241589, 36.671669, 48.899178>,  <36.147854, 37.008846, 49.092892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241589, 36.671669, 48.899178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234436, -0.434456, 0.869648,
		-0.943464, -0.317327, 0.095806,
		0.234339, -0.842943, -0.484286,
		36.311890, 36.418785, 48.753891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680733, 36.497898, 49.329933>,  <36.147854, 37.008846, 49.092892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680733, 36.497898, 49.329933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008621, 36.316334, 49.190208>,  <36.205353, 36.207394, 49.106373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008621, 36.316334, 49.190208>,  <35.680733, 36.497898, 49.329933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008621, 36.316334, 49.190208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190936, -0.358433, 0.913821,
		-0.540000, -0.815776, -0.207147,
		0.819721, -0.453911, -0.349315,
		36.254539, 36.180161, 49.085415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636887, 35.872440, 49.567940>,  <35.680733, 36.497898, 49.329933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636887, 35.872440, 49.567940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028782, 35.900215, 49.492798>,  <36.263920, 35.916882, 49.447712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028782, 35.900215, 49.492798>,  <35.636887, 35.872440, 49.567940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028782, 35.900215, 49.492798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200264, -0.329847, 0.922548,
		0.002096, -0.941477, -0.337070,
		0.979739, 0.069436, -0.187852,
		36.322704, 35.921047, 49.436443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947884, 35.182938, 49.616096>,  <35.636887, 35.872440, 49.567940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947884, 35.182938, 49.616096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205673, 35.476570, 49.701675>,  <36.360348, 35.652748, 49.753025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205673, 35.476570, 49.701675>,  <35.947884, 35.182938, 49.616096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205673, 35.476570, 49.701675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259934, -0.473486, 0.841573,
		0.719084, -0.486762, -0.495964,
		0.644478, 0.734080, 0.213951,
		36.399017, 35.696793, 49.765862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191792, 34.813000, 50.199253>,  <35.947884, 35.182938, 49.616096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191792, 34.813000, 50.199253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450478, 35.116280, 50.166039>,  <36.605690, 35.298248, 50.146111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450478, 35.116280, 50.166039>,  <36.191792, 34.813000, 50.199253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450478, 35.116280, 50.166039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490762, -0.330307, 0.806257,
		0.583873, -0.562172, -0.585709,
		0.646719, 0.758195, -0.083035,
		36.644493, 35.343739, 50.141129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860985, 34.558884, 50.091282>,  <36.191792, 34.813000, 50.199253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860985, 34.558884, 50.091282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864925, 34.908077, 50.286339>,  <36.867290, 35.117596, 50.403374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864925, 34.908077, 50.286339>,  <36.860985, 34.558884, 50.091282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864925, 34.908077, 50.286339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605189, -0.393419, 0.692074,
		0.796021, 0.288301, -0.532197,
		0.009851, 0.872986, 0.487646,
		36.867882, 35.169971, 50.432632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594013, 34.720764, 50.261681>,  <36.860985, 34.558884, 50.091282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594013, 34.720764, 50.261681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373981, 34.925945, 50.525284>,  <37.241962, 35.049053, 50.683445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373981, 34.925945, 50.525284>,  <37.594013, 34.720764, 50.261681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373981, 34.925945, 50.525284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528396, -0.397302, 0.750299,
		0.646694, 0.760941, -0.052496,
		-0.550077, 0.512952, 0.659011,
		37.208958, 35.079830, 50.722988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040279, 34.889442, 50.776180>,  <37.594013, 34.720764, 50.261681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040279, 34.889442, 50.776180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692337, 34.959534, 50.960632>,  <37.483570, 35.001591, 51.071304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692337, 34.959534, 50.960632>,  <38.040279, 34.889442, 50.776180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692337, 34.959534, 50.960632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370394, -0.385397, 0.845149,
		0.325814, 0.905960, 0.270336,
		-0.869858, 0.175231, 0.461130,
		37.431381, 35.012104, 51.098972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142017, 35.245575, 51.481483>,  <38.040279, 34.889442, 50.776180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142017, 35.245575, 51.481483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802902, 35.033577, 51.489174>,  <37.599434, 34.906380, 51.493790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802902, 35.033577, 51.489174>,  <38.142017, 35.245575, 51.481483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802902, 35.033577, 51.489174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267744, -0.396432, 0.878154,
		-0.457791, 0.749634, 0.477991,
		-0.847786, -0.529990, 0.019227,
		37.548565, 34.874580, 51.494942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947159, 35.246216, 52.258385>,  <38.142017, 35.245575, 51.481483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947159, 35.246216, 52.258385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715137, 34.966976, 52.090481>,  <37.575924, 34.799431, 51.989738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715137, 34.966976, 52.090481>,  <37.947159, 35.246216, 52.258385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715137, 34.966976, 52.090481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043196, -0.488220, 0.871651,
		-0.813434, 0.523733, 0.253037,
		-0.580050, -0.698101, -0.419758,
		37.541122, 34.757545, 51.964554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477802, 35.173382, 52.675461>,  <37.947159, 35.246216, 52.258385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477802, 35.173382, 52.675461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459164, 34.841652, 52.452732>,  <37.447979, 34.642616, 52.319096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459164, 34.841652, 52.452732>,  <37.477802, 35.173382, 52.675461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459164, 34.841652, 52.452732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194004, -0.539302, 0.819460,
		-0.979893, 0.146210, -0.135762,
		-0.046597, -0.829322, -0.556824,
		37.445183, 34.592854, 52.285686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014736, 34.773327, 53.086170>,  <37.477802, 35.173382, 52.675461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014736, 34.773327, 53.086170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203934, 34.522091, 52.839020>,  <37.317451, 34.371349, 52.690727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203934, 34.522091, 52.839020>,  <37.014736, 34.773327, 53.086170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203934, 34.522091, 52.839020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045011, -0.717597, 0.695002,
		-0.879914, -0.300922, -0.367692,
		0.472997, -0.628092, -0.617879,
		37.345833, 34.333664, 52.653656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602699, 34.179516, 53.078007>,  <37.014736, 34.773327, 53.086170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602699, 34.179516, 53.078007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978230, 34.071728, 52.992218>,  <37.203548, 34.007053, 52.940746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978230, 34.071728, 52.992218>,  <36.602699, 34.179516, 53.078007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978230, 34.071728, 52.992218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045973, -0.519107, 0.853472,
		-0.341319, -0.811119, -0.474961,
		0.938823, -0.269471, -0.214470,
		37.259876, 33.990887, 52.927876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640793, 33.402962, 52.938725>,  <36.602699, 34.179516, 53.078007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640793, 33.402962, 52.938725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972332, 33.566814, 53.091148>,  <37.171257, 33.665127, 53.182602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972332, 33.566814, 53.091148>,  <36.640793, 33.402962, 52.938725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972332, 33.566814, 53.091148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156043, -0.484812, 0.860586,
		0.537268, -0.772758, -0.337917,
		0.828851, 0.409635, 0.381057,
		37.220989, 33.689705, 53.205467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236729, 32.886768, 53.293938>,  <36.640793, 33.402962, 52.938725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236729, 32.886768, 53.293938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177174, 33.247303, 53.456627>,  <37.141441, 33.463623, 53.554241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177174, 33.247303, 53.456627>,  <37.236729, 32.886768, 53.293938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177174, 33.247303, 53.456627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227908, -0.431508, 0.872845,
		0.962232, 0.037263, 0.269669,
		-0.148889, 0.901339, 0.406718,
		37.132507, 33.517704, 53.578644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597763, 33.008804, 53.953884>,  <37.236729, 32.886768, 53.293938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597763, 33.008804, 53.953884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267639, 33.233574, 53.976196>,  <37.069565, 33.368435, 53.989582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267639, 33.233574, 53.976196>,  <37.597763, 33.008804, 53.953884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267639, 33.233574, 53.976196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239427, -0.437681, 0.866666,
		0.511415, 0.701909, 0.495760,
		-0.825305, 0.561925, 0.055780,
		37.020046, 33.402153, 53.992931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597019, 33.334232, 54.628948>,  <37.597763, 33.008804, 53.953884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597019, 33.334232, 54.628948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225590, 33.292950, 54.486343>,  <37.002731, 33.268181, 54.400780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225590, 33.292950, 54.486343>,  <37.597019, 33.334232, 54.628948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225590, 33.292950, 54.486343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244102, -0.553744, 0.796104,
		-0.279578, 0.826266, 0.488999,
		-0.928574, -0.103208, -0.356508,
		36.947018, 33.261986, 54.379391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202782, 33.657043, 54.693031>,  <37.597019, 33.334232, 54.628948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202782, 33.657043, 54.693031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563713, 33.515038, 54.595245>,  <38.780273, 33.429836, 54.536572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563713, 33.515038, 54.595245>,  <38.202782, 33.657043, 54.693031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563713, 33.515038, 54.595245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430995, -0.734609, -0.524017,
		0.006443, 0.578201, -0.815869,
		0.902331, -0.355012, -0.244469,
		38.834412, 33.408535, 54.521904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416615, 33.485210, 53.959194>,  <38.202782, 33.657043, 54.693031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416615, 33.485210, 53.959194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682121, 33.246189, 54.139122>,  <38.841427, 33.102776, 54.247078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682121, 33.246189, 54.139122>,  <38.416615, 33.485210, 53.959194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682121, 33.246189, 54.139122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255340, -0.746330, -0.614649,
		0.703000, 0.293129, -0.647971,
		0.663771, -0.597551, 0.449822,
		38.881252, 33.066925, 54.274067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034370, 33.313190, 53.478065>,  <38.416615, 33.485210, 53.959194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034370, 33.313190, 53.478065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924286, 33.048012, 53.756561>,  <38.858234, 32.888905, 53.923660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924286, 33.048012, 53.756561>,  <39.034370, 33.313190, 53.478065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924286, 33.048012, 53.756561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240784, -0.653596, -0.717521,
		0.930742, -0.365115, 0.020250,
		-0.275212, -0.662951, 0.696243,
		38.841721, 32.849125, 53.965435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434738, 32.657154, 53.383209>,  <39.034370, 33.313190, 53.478065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434738, 32.657154, 53.383209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067131, 32.635380, 53.539383>,  <38.846565, 32.622314, 53.633087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067131, 32.635380, 53.539383>,  <39.434738, 32.657154, 53.383209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067131, 32.635380, 53.539383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288600, -0.581766, -0.760433,
		0.268532, -0.811533, 0.518946,
		-0.919022, -0.054433, 0.390431,
		38.791424, 32.619049, 53.656513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265106, 31.989338, 53.454445>,  <39.434738, 32.657154, 53.383209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265106, 31.989338, 53.454445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907143, 32.158924, 53.398750>,  <38.692364, 32.260674, 53.365334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907143, 32.158924, 53.398750>,  <39.265106, 31.989338, 53.454445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907143, 32.158924, 53.398750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195490, -0.652962, -0.731727,
		-0.401143, -0.627611, 0.667225,
		-0.894912, 0.423963, -0.139240,
		38.638668, 32.286114, 53.356979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643864, 31.510555, 53.351276>,  <39.265106, 31.989338, 53.454445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643864, 31.510555, 53.351276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509895, 31.859566, 53.208996>,  <38.429512, 32.068974, 53.123627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509895, 31.859566, 53.208996>,  <38.643864, 31.510555, 53.351276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509895, 31.859566, 53.208996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552349, -0.487650, -0.676098,
		-0.763371, -0.029969, 0.645265,
		-0.334925, 0.872525, -0.355705,
		38.409416, 32.121323, 53.102283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946632, 31.359648, 53.015308>,  <38.643864, 31.510555, 53.351276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946632, 31.359648, 53.015308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027683, 31.722992, 52.868980>,  <38.076313, 31.940998, 52.781185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027683, 31.722992, 52.868980>,  <37.946632, 31.359648, 53.015308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027683, 31.722992, 52.868980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510622, -0.220753, -0.830983,
		-0.835587, 0.355177, 0.419098,
		0.202630, 0.908360, -0.365819,
		38.088470, 31.995501, 52.759235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349323, 31.719402, 52.755566>,  <37.946632, 31.359648, 53.015308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349323, 31.719402, 52.755566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661217, 31.885162, 52.567825>,  <37.848354, 31.984619, 52.455181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661217, 31.885162, 52.567825>,  <37.349323, 31.719402, 52.755566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661217, 31.885162, 52.567825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424754, -0.200636, -0.882796,
		-0.459999, 0.887704, 0.019575,
		0.779734, 0.414400, -0.469348,
		37.895138, 32.009483, 52.427021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124798, 31.959675, 52.148693>,  <37.349323, 31.719402, 52.755566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124798, 31.959675, 52.148693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511444, 31.958309, 52.046207>,  <37.743431, 31.957491, 51.984718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511444, 31.958309, 52.046207>,  <37.124798, 31.959675, 52.148693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511444, 31.958309, 52.046207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254461, -0.130170, -0.958282,
		-0.030081, 0.991486, -0.126693,
		0.966615, -0.003413, -0.256210,
		37.801430, 31.957285, 51.969345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295036, 32.508190, 51.690109>,  <37.124798, 31.959675, 52.148693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295036, 32.508190, 51.690109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573086, 32.229980, 51.617397>,  <37.739914, 32.063053, 51.573772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573086, 32.229980, 51.617397>,  <37.295036, 32.508190, 51.690109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573086, 32.229980, 51.617397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297114, -0.047705, -0.953649,
		0.654618, 0.716914, -0.239812,
		0.695125, -0.695528, -0.181776,
		37.781624, 32.021320, 51.562866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688606, 32.829845, 51.061005>,  <37.295036, 32.508190, 51.690109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688606, 32.829845, 51.061005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717289, 32.437485, 51.133320>,  <37.734497, 32.202068, 51.176708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717289, 32.437485, 51.133320>,  <37.688606, 32.829845, 51.061005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717289, 32.437485, 51.133320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053290, -0.184764, -0.981337,
		0.996001, 0.060733, -0.065521,
		0.071705, -0.980905, 0.180788,
		37.738800, 32.143215, 51.187557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152481, 32.718555, 50.523884>,  <37.688606, 32.829845, 51.061005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152481, 32.718555, 50.523884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976261, 32.383770, 50.653748>,  <37.870529, 32.182899, 50.731667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976261, 32.383770, 50.653748>,  <38.152481, 32.718555, 50.523884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976261, 32.383770, 50.653748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075090, -0.326019, -0.942376,
		0.894583, -0.439540, 0.080779,
		-0.440548, -0.836969, 0.324656,
		37.844097, 32.132679, 50.751144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593273, 32.279060, 50.192070>,  <38.152481, 32.718555, 50.523884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593273, 32.279060, 50.192070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262058, 32.069889, 50.272968>,  <38.063332, 31.944386, 50.321507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262058, 32.069889, 50.272968>,  <38.593273, 32.279060, 50.192070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262058, 32.069889, 50.272968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081586, -0.244503, -0.966210,
		0.554711, -0.816555, 0.159793,
		-0.828034, -0.522930, 0.202248,
		38.013649, 31.913010, 50.333641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651085, 31.698086, 49.752155>,  <38.593273, 32.279060, 50.192070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651085, 31.698086, 49.752155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257885, 31.714388, 49.823772>,  <38.021965, 31.724169, 49.866741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257885, 31.714388, 49.823772>,  <38.651085, 31.698086, 49.752155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257885, 31.714388, 49.823772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183199, -0.283781, -0.941226,
		0.012451, -0.958023, 0.286422,
		-0.982997, 0.040753, 0.179042,
		37.962986, 31.726614, 49.877483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319489, 31.036831, 49.537273>,  <38.651085, 31.698086, 49.752155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319489, 31.036831, 49.537273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035370, 31.318380, 49.534653>,  <37.864899, 31.487310, 49.533081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035370, 31.318380, 49.534653>,  <38.319489, 31.036831, 49.537273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035370, 31.318380, 49.534653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188853, -0.199533, -0.961520,
		-0.678095, -0.681727, 0.274656,
		-0.710297, 0.703871, -0.006556,
		37.822281, 31.529541, 49.532684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039120, 30.813683, 48.989799>,  <38.319489, 31.036831, 49.537273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039120, 30.813683, 48.989799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881344, 31.177355, 49.043182>,  <37.786678, 31.395557, 49.075211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881344, 31.177355, 49.043182>,  <38.039120, 30.813683, 48.989799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881344, 31.177355, 49.043182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279206, 0.019792, -0.960027,
		-0.875479, -0.415932, 0.246043,
		-0.394436, 0.909181, 0.133458,
		37.763012, 31.450109, 49.083221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466900, 30.815380, 48.620502>,  <38.039120, 30.813683, 48.989799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466900, 30.815380, 48.620502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516056, 31.211885, 48.639645>,  <37.545551, 31.449789, 48.651131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516056, 31.211885, 48.639645>,  <37.466900, 30.815380, 48.620502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516056, 31.211885, 48.639645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251878, 0.077793, -0.964627,
		-0.959924, 0.106492, 0.259238,
		0.122892, 0.991266, 0.047852,
		37.552925, 31.509266, 48.653999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791824, 31.019108, 48.408234>,  <37.466900, 30.815380, 48.620502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791824, 31.019108, 48.408234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058491, 31.315878, 48.379665>,  <37.218491, 31.493940, 48.362522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058491, 31.315878, 48.379665>,  <36.791824, 31.019108, 48.408234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058491, 31.315878, 48.379665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315051, 0.193652, -0.929108,
		-0.675497, 0.641909, 0.362845,
		0.666669, 0.741924, -0.071422,
		37.258492, 31.538456, 48.358238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398338, 31.604738, 48.150024>,  <36.791824, 31.019108, 48.408234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398338, 31.604738, 48.150024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773468, 31.723753, 48.078526>,  <36.998547, 31.795162, 48.035625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773468, 31.723753, 48.078526>,  <36.398338, 31.604738, 48.150024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773468, 31.723753, 48.078526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261745, 0.268019, -0.927176,
		-0.227962, 0.916317, 0.329235,
		0.937829, 0.297537, -0.178743,
		37.054817, 31.813013, 48.024902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487774, 32.296982, 47.987984>,  <36.398338, 31.604738, 48.150024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487774, 32.296982, 47.987984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796444, 32.133385, 47.793156>,  <36.981647, 32.035225, 47.676258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796444, 32.133385, 47.793156>,  <36.487774, 32.296982, 47.987984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796444, 32.133385, 47.793156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388577, 0.303094, -0.870139,
		0.503512, 0.860730, 0.074964,
		0.771676, -0.408996, -0.487071,
		37.027946, 32.010685, 47.647034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581608, 32.687881, 47.366837>,  <36.487774, 32.296982, 47.987984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581608, 32.687881, 47.366837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809788, 32.368774, 47.288704>,  <36.946693, 32.177311, 47.241825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809788, 32.368774, 47.288704>,  <36.581608, 32.687881, 47.366837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809788, 32.368774, 47.288704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147882, 0.134168, -0.979862,
		0.807911, 0.587845, -0.041439,
		0.570447, -0.797770, -0.195327,
		36.980923, 32.129444, 47.230106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016949, 32.993488, 46.852020>,  <36.581608, 32.687881, 47.366837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016949, 32.993488, 46.852020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040134, 32.594818, 46.829147>,  <37.054047, 32.355614, 46.815426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040134, 32.594818, 46.829147>,  <37.016949, 32.993488, 46.852020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040134, 32.594818, 46.829147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070292, 0.053059, -0.996114,
		0.995841, 0.061757, -0.066984,
		0.057963, -0.996680, -0.057179,
		37.057522, 32.295815, 46.811993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579208, 32.733540, 46.458500>,  <37.016949, 32.993488, 46.852020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579208, 32.733540, 46.458500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309601, 32.439480, 46.429535>,  <37.147835, 32.263042, 46.412155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309601, 32.439480, 46.429535>,  <37.579208, 32.733540, 46.458500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309601, 32.439480, 46.429535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030217, 0.070510, -0.997053,
		0.738094, -0.674223, -0.025311,
		-0.674021, -0.735154, -0.072416,
		37.107395, 32.218933, 46.407810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802155, 32.360897, 45.832951>,  <37.579208, 32.733540, 46.458500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802155, 32.360897, 45.832951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438999, 32.211254, 45.908623>,  <37.221107, 32.121468, 45.954025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438999, 32.211254, 45.908623>,  <37.802155, 32.360897, 45.832951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438999, 32.211254, 45.908623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127496, -0.183483, -0.974720,
		0.399360, -0.909053, 0.118884,
		-0.907886, -0.374107, 0.189177,
		37.166634, 32.099022, 45.965374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700390, 31.695223, 45.465492>,  <37.802155, 32.360897, 45.832951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700390, 31.695223, 45.465492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323872, 31.803919, 45.545620>,  <37.097961, 31.869137, 45.593697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323872, 31.803919, 45.545620>,  <37.700390, 31.695223, 45.465492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323872, 31.803919, 45.545620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272525, -0.261440, -0.925948,
		-0.199238, -0.926181, 0.320145,
		-0.941294, 0.271732, 0.200319,
		37.041485, 31.885441, 45.605717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233322, 31.260967, 45.159092>,  <37.700390, 31.695223, 45.465492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233322, 31.260967, 45.159092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999130, 31.580099, 45.216610>,  <36.858616, 31.771578, 45.251122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999130, 31.580099, 45.216610>,  <37.233322, 31.260967, 45.159092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999130, 31.580099, 45.216610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363035, -0.099429, -0.926455,
		-0.724856, -0.594627, 0.347854,
		-0.585482, 0.797830, 0.143799,
		36.823486, 31.819448, 45.259750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648045, 30.984835, 44.965649>,  <37.233322, 31.260967, 45.159092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648045, 30.984835, 44.965649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626457, 31.383429, 44.940022>,  <36.613503, 31.622585, 44.924644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626457, 31.383429, 44.940022>,  <36.648045, 30.984835, 44.965649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626457, 31.383429, 44.940022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495226, -0.082427, -0.864845,
		-0.867086, -0.014950, 0.497934,
		-0.053972, 0.996485, -0.064068,
		36.610264, 31.682375, 44.920799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048679, 31.145617, 44.525600>,  <36.648045, 30.984835, 44.965649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048679, 31.145617, 44.525600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241371, 31.496019, 44.516273>,  <36.356987, 31.706261, 44.510677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241371, 31.496019, 44.516273>,  <36.048679, 31.145617, 44.525600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241371, 31.496019, 44.516273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408788, 0.201103, -0.890196,
		-0.775130, 0.438368, 0.454980,
		0.481731, 0.876009, -0.023319,
		36.385891, 31.758821, 44.509277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556900, 31.612129, 44.207890>,  <36.048679, 31.145617, 44.525600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556900, 31.612129, 44.207890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913475, 31.790693, 44.176743>,  <36.127419, 31.897831, 44.158054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913475, 31.790693, 44.176743>,  <35.556900, 31.612129, 44.207890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913475, 31.790693, 44.176743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149842, 0.128211, -0.980362,
		-0.427660, 0.885596, 0.181183,
		0.891434, 0.446411, -0.077869,
		36.180904, 31.924616, 44.153381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367435, 32.116749, 43.768990>,  <35.556900, 31.612129, 44.207890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367435, 32.116749, 43.768990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763573, 32.077038, 43.730286>,  <36.001255, 32.053211, 43.707062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763573, 32.077038, 43.730286>,  <35.367435, 32.116749, 43.768990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763573, 32.077038, 43.730286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071019, 0.236124, -0.969124,
		0.119062, 0.966638, 0.226793,
		0.990344, -0.099279, -0.096763,
		36.060677, 32.047253, 43.701256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653324, 32.631092, 43.453819>,  <35.367435, 32.116749, 43.768990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653324, 32.631092, 43.453819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894146, 32.320965, 43.377491>,  <36.038639, 32.134888, 43.331696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894146, 32.320965, 43.377491>,  <35.653324, 32.631092, 43.453819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894146, 32.320965, 43.377491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043446, 0.206818, -0.977414,
		0.797274, 0.596745, 0.090831,
		0.602052, -0.775321, -0.190817,
		36.074760, 32.088367, 43.320248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071701, 32.875828, 42.966114>,  <35.653324, 32.631092, 43.453819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071701, 32.875828, 42.966114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147346, 32.484219, 42.935757>,  <36.192734, 32.249252, 42.917542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147346, 32.484219, 42.935757>,  <36.071701, 32.875828, 42.966114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147346, 32.484219, 42.935757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146701, 0.104588, -0.983636,
		0.970935, 0.174884, 0.163402,
		0.189112, -0.979018, -0.075892,
		36.204079, 32.190514, 42.912991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732342, 32.864761, 42.775150>,  <36.071701, 32.875828, 42.966114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732342, 32.864761, 42.775150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557381, 32.523239, 42.662231>,  <36.452404, 32.318325, 42.594479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557381, 32.523239, 42.662231>,  <36.732342, 32.864761, 42.775150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557381, 32.523239, 42.662231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048967, 0.290843, -0.955517,
		0.897932, -0.431769, -0.085407,
		-0.437402, -0.853807, -0.282299,
		36.426159, 32.267097, 42.577541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126205, 32.634834, 42.215927>,  <36.732342, 32.864761, 42.775150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126205, 32.634834, 42.215927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794609, 32.415493, 42.171963>,  <36.595650, 32.283890, 42.145584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794609, 32.415493, 42.171963>,  <37.126205, 32.634834, 42.215927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794609, 32.415493, 42.171963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029035, 0.154063, -0.987634,
		0.558507, -0.821932, -0.111795,
		-0.828992, -0.548355, -0.109910,
		36.545910, 32.250988, 42.138988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316189, 32.190853, 41.622463>,  <37.126205, 32.634834, 42.215927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316189, 32.190853, 41.622463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917126, 32.163754, 41.618710>,  <36.677689, 32.147495, 41.616459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917126, 32.163754, 41.618710>,  <37.316189, 32.190853, 41.622463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917126, 32.163754, 41.618710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001614, 0.113869, -0.993495,
		0.068374, -0.991184, -0.113493,
		-0.997658, -0.067746, -0.009385,
		36.617828, 32.143429, 41.615894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142933, 31.695961, 41.071922>,  <37.316189, 32.190853, 41.622463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142933, 31.695961, 41.071922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814003, 31.916409, 41.128559>,  <36.616646, 32.048679, 41.162540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814003, 31.916409, 41.128559>,  <37.142933, 31.695961, 41.071922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814003, 31.916409, 41.128559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051870, 0.175201, -0.983165,
		-0.566651, -0.815825, -0.115486,
		-0.822323, 0.551121, 0.141595,
		36.567307, 32.081745, 41.171036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718948, 31.433508, 40.574680>,  <37.142933, 31.695961, 41.071922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718948, 31.433508, 40.574680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517815, 31.764233, 40.675510>,  <36.397133, 31.962667, 40.736008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517815, 31.764233, 40.675510>,  <36.718948, 31.433508, 40.574680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517815, 31.764233, 40.675510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208466, 0.167012, -0.963664,
		-0.838867, -0.537114, 0.088382,
		-0.502836, 0.826811, 0.252071,
		36.366962, 32.012276, 40.751133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241352, 31.433495, 40.038483>,  <36.718948, 31.433508, 40.574680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241352, 31.433495, 40.038483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244205, 31.809986, 40.173561>,  <36.245918, 32.035881, 40.254608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244205, 31.809986, 40.173561>,  <36.241352, 31.433495, 40.038483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244205, 31.809986, 40.173561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204949, 0.331908, -0.920778,
		-0.978747, -0.062637, 0.195273,
		0.007138, 0.941230, 0.337691,
		36.246346, 32.092354, 40.274868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635468, 31.721563, 39.797886>,  <36.241352, 31.433495, 40.038483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635468, 31.721563, 39.797886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894150, 32.017849, 39.870682>,  <36.049358, 32.195621, 39.914360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894150, 32.017849, 39.870682>,  <35.635468, 31.721563, 39.797886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894150, 32.017849, 39.870682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203008, 0.397141, -0.895023,
		-0.735230, 0.541870, 0.407203,
		0.646703, 0.740713, 0.181986,
		36.088161, 32.240063, 39.925278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393253, 32.302750, 39.517696>,  <35.635468, 31.721563, 39.797886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393253, 32.302750, 39.517696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756393, 32.457394, 39.582611>,  <35.974277, 32.550179, 39.621559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756393, 32.457394, 39.582611>,  <35.393253, 32.302750, 39.517696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756393, 32.457394, 39.582611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036462, 0.458373, -0.888012,
		-0.417700, 0.800267, 0.430232,
		0.907853, 0.386609, 0.162283,
		36.028748, 32.573376, 39.631294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329357, 33.026600, 39.301399>,  <35.393253, 32.302750, 39.517696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329357, 33.026600, 39.301399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707932, 32.898815, 39.282627>,  <35.935078, 32.822144, 39.271362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707932, 32.898815, 39.282627>,  <35.329357, 33.026600, 39.301399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707932, 32.898815, 39.282627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085746, 0.388806, -0.917320,
		0.311293, 0.864162, 0.395373,
		0.946438, -0.319457, -0.046934,
		35.991863, 32.802979, 39.268547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702290, 33.698296, 39.162964>,  <35.329357, 33.026600, 39.301399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702290, 33.698296, 39.162964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903473, 33.368546, 39.059082>,  <36.024181, 33.170696, 38.996754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903473, 33.368546, 39.059082>,  <35.702290, 33.698296, 39.162964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903473, 33.368546, 39.059082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184916, 0.396147, -0.899374,
		0.844299, 0.404323, 0.351684,
		0.502956, -0.824373, -0.259701,
		36.054359, 33.121235, 38.981171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264919, 34.029415, 38.781685>,  <35.702290, 33.698296, 39.162964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264919, 34.029415, 38.781685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248993, 33.641014, 38.687386>,  <36.239437, 33.407974, 38.630806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248993, 33.641014, 38.687386>,  <36.264919, 34.029415, 38.781685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248993, 33.641014, 38.687386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157558, 0.226882, -0.961093,
		0.986707, -0.075410, 0.143955,
		-0.039816, -0.970999, -0.235747,
		36.237049, 33.349716, 38.616661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852489, 33.960011, 38.368725>,  <36.264919, 34.029415, 38.781685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852489, 33.960011, 38.368725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601112, 33.669651, 38.256924>,  <36.450287, 33.495434, 38.189842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601112, 33.669651, 38.256924>,  <36.852489, 33.960011, 38.368725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601112, 33.669651, 38.256924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180412, 0.213501, -0.960140,
		0.756641, -0.653823, -0.003213,
		-0.628447, -0.725901, -0.279501,
		36.412579, 33.451881, 38.173073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103085, 33.885830, 37.682438>,  <36.852489, 33.960011, 38.368725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103085, 33.885830, 37.682438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756409, 33.691189, 37.726391>,  <36.548405, 33.574406, 37.752762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756409, 33.691189, 37.726391>,  <37.103085, 33.885830, 37.682438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756409, 33.691189, 37.726391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094554, -0.056035, -0.993941,
		0.489812, -0.871825, 0.002555,
		-0.866686, -0.486602, 0.109881,
		36.496403, 33.545208, 37.759354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583023, 33.351273, 37.584553>,  <37.103085, 33.885830, 37.682438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583023, 33.351273, 37.584553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968975, 33.449020, 37.545986>,  <38.200546, 33.507668, 37.522846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968975, 33.449020, 37.545986>,  <37.583023, 33.351273, 37.584553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968975, 33.449020, 37.545986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006773, 0.390048, 0.920770,
		0.262618, -0.887775, 0.378004,
		0.964876, 0.244371, -0.096421,
		38.258438, 33.522331, 37.517059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917690, 33.082497, 38.218346>,  <37.583023, 33.351273, 37.584553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917690, 33.082497, 38.218346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139801, 33.371933, 38.054356>,  <38.273067, 33.545593, 37.955963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139801, 33.371933, 38.054356>,  <37.917690, 33.082497, 38.218346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139801, 33.371933, 38.054356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092138, 0.436399, 0.895023,
		0.826543, -0.534764, 0.175653,
		0.555281, 0.723591, -0.409975,
		38.306385, 33.589008, 37.931362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598579, 33.039627, 38.459164>,  <37.917690, 33.082497, 38.218346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598579, 33.039627, 38.459164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535652, 33.418724, 38.348148>,  <38.497894, 33.646183, 38.281540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535652, 33.418724, 38.348148>,  <38.598579, 33.039627, 38.459164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535652, 33.418724, 38.348148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394148, 0.317944, 0.862299,
		0.905483, 0.026263, -0.423570,
		-0.157318, 0.947746, -0.277541,
		38.488457, 33.703049, 38.264885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282639, 33.356384, 38.472622>,  <38.598579, 33.039627, 38.459164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282639, 33.356384, 38.472622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006008, 33.643677, 38.503246>,  <38.840031, 33.816051, 38.521622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006008, 33.643677, 38.503246>,  <39.282639, 33.356384, 38.472622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006008, 33.643677, 38.503246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459796, 0.356009, 0.813539,
		0.557054, 0.597828, -0.576448,
		-0.691577, 0.718233, 0.076563,
		38.798534, 33.859146, 38.526215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701340, 33.954014, 38.468082>,  <39.282639, 33.356384, 38.472622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701340, 33.954014, 38.468082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348774, 33.987850, 38.653965>,  <39.137234, 34.008152, 38.765495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348774, 33.987850, 38.653965>,  <39.701340, 33.954014, 38.468082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348774, 33.987850, 38.653965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465140, 0.326645, 0.822769,
		-0.082197, 0.941354, -0.327255,
		-0.881413, 0.084590, 0.464710,
		39.084351, 34.013226, 38.793377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911537, 34.265297, 39.058861>,  <39.701340, 33.954014, 38.468082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911537, 34.265297, 39.058861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519421, 34.235680, 39.132118>,  <39.284149, 34.217907, 39.176075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519421, 34.235680, 39.132118>,  <39.911537, 34.265297, 39.058861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519421, 34.235680, 39.132118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179712, 0.050700, 0.982412,
		-0.082030, 0.995965, -0.036393,
		-0.980293, -0.074047, 0.183145,
		39.225334, 34.213467, 39.187061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692993, 34.846153, 39.500553>,  <39.911537, 34.265297, 39.058861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692993, 34.846153, 39.500553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435013, 34.543903, 39.546276>,  <39.280224, 34.362553, 39.573711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435013, 34.543903, 39.546276>,  <39.692993, 34.846153, 39.500553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435013, 34.543903, 39.546276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297565, -0.110526, 0.948282,
		-0.703915, 0.645608, 0.296132,
		-0.644949, -0.755628, 0.114310,
		39.241528, 34.317215, 39.580570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276676, 35.044224, 40.051552>,  <39.692993, 34.846153, 39.500553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276676, 35.044224, 40.051552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265514, 34.646095, 40.014549>,  <39.258816, 34.407219, 39.992348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265514, 34.646095, 40.014549>,  <39.276676, 35.044224, 40.051552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265514, 34.646095, 40.014549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108873, -0.095019, 0.989504,
		-0.993664, 0.017544, 0.111016,
		-0.027908, -0.995321, -0.092507,
		39.257141, 34.347500, 39.986797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992092, 34.803646, 40.701710>,  <39.276676, 35.044224, 40.051552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992092, 34.803646, 40.701710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094040, 34.448650, 40.548134>,  <39.155209, 34.235653, 40.455990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094040, 34.448650, 40.548134>,  <38.992092, 34.803646, 40.701710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094040, 34.448650, 40.548134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143548, -0.357923, 0.922651,
		-0.956260, -0.290273, 0.036172,
		0.254874, -0.887487, -0.383935,
		39.170502, 34.182404, 40.432953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614647, 34.250126, 41.137363>,  <38.992092, 34.803646, 40.701710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614647, 34.250126, 41.137363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924927, 34.064770, 40.965988>,  <39.111095, 33.953556, 40.863163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924927, 34.064770, 40.965988>,  <38.614647, 34.250126, 41.137363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924927, 34.064770, 40.965988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145991, -0.528706, 0.836156,
		-0.613987, -0.711152, -0.342465,
		0.775697, -0.463392, -0.428441,
		39.157635, 33.925755, 40.837456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666843, 33.490135, 41.310989>,  <38.614647, 34.250126, 41.137363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666843, 33.490135, 41.310989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045834, 33.560692, 41.204281>,  <39.273228, 33.603027, 41.140255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045834, 33.560692, 41.204281>,  <38.666843, 33.490135, 41.310989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045834, 33.560692, 41.204281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315844, -0.647124, 0.693882,
		-0.050241, -0.741698, -0.668849,
		0.947480, 0.176391, -0.266773,
		39.330078, 33.613609, 41.124249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912022, 32.804249, 41.521725>,  <38.666843, 33.490135, 41.310989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912022, 32.804249, 41.521725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232006, 33.042561, 41.493145>,  <39.423996, 33.185547, 41.475998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232006, 33.042561, 41.493145>,  <38.912022, 32.804249, 41.521725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232006, 33.042561, 41.493145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433561, -0.491573, 0.755235,
		0.414830, -0.635139, -0.651548,
		0.799963, 0.595780, -0.071453,
		39.471996, 33.221294, 41.471710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483253, 32.423359, 41.489594>,  <38.912022, 32.804249, 41.521725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483253, 32.423359, 41.489594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614014, 32.771030, 41.638008>,  <39.692471, 32.979633, 41.727058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614014, 32.771030, 41.638008>,  <39.483253, 32.423359, 41.489594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614014, 32.771030, 41.638008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202673, -0.447951, 0.870783,
		0.923071, -0.209460, -0.322594,
		0.326901, 0.869175, 0.371039,
		39.712086, 33.031784, 41.749321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231014, 32.374649, 41.759846>,  <39.483253, 32.423359, 41.489594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231014, 32.374649, 41.759846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979973, 32.615040, 41.957813>,  <39.829350, 32.759274, 42.076595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979973, 32.615040, 41.957813>,  <40.231014, 32.374649, 41.759846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979973, 32.615040, 41.957813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285018, -0.414217, 0.864401,
		0.724487, 0.683560, 0.088675,
		-0.627601, 0.600973, 0.494922,
		39.791691, 32.795330, 42.106289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533882, 32.508228, 42.329891>,  <40.231014, 32.374649, 41.759846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533882, 32.508228, 42.329891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167362, 32.623447, 42.441193>,  <39.947449, 32.692577, 42.507973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167362, 32.623447, 42.441193>,  <40.533882, 32.508228, 42.329891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167362, 32.623447, 42.441193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173195, -0.341450, 0.923805,
		0.361110, 0.894673, 0.262982,
		-0.916298, 0.288048, 0.278254,
		39.892471, 32.709862, 42.524670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542042, 32.776470, 42.899235>,  <40.533882, 32.508228, 42.329891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542042, 32.776470, 42.899235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151424, 32.694225, 42.924786>,  <39.917053, 32.644878, 42.940117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151424, 32.694225, 42.924786>,  <40.542042, 32.776470, 42.899235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151424, 32.694225, 42.924786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125574, -0.302910, 0.944710,
		-0.174890, 0.930576, 0.321625,
		-0.976547, -0.205608, 0.063880,
		39.858459, 32.632542, 42.943951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131222, 33.250721, 43.386826>,  <40.542042, 32.776470, 42.899235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131222, 33.250721, 43.386826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918430, 32.912022, 43.387798>,  <39.790756, 32.708801, 43.388382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918430, 32.912022, 43.387798>,  <40.131222, 33.250721, 43.386826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918430, 32.912022, 43.387798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029798, 0.021591, 0.999323,
		-0.846231, 0.531549, -0.036718,
		-0.531982, -0.846752, 0.002432,
		39.758835, 32.657997, 43.388527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611988, 33.338619, 43.858955>,  <40.131222, 33.250721, 43.386826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611988, 33.338619, 43.858955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576118, 32.942375, 43.817669>,  <39.554596, 32.704628, 43.792896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576118, 32.942375, 43.817669>,  <39.611988, 33.338619, 43.858955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576118, 32.942375, 43.817669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105845, -0.093572, 0.989971,
		-0.990331, 0.099704, -0.096459,
		-0.089678, -0.990608, -0.103220,
		39.549213, 32.645191, 43.786701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123913, 33.086002, 44.319107>,  <39.611988, 33.338619, 43.858955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123913, 33.086002, 44.319107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287098, 32.729248, 44.241020>,  <39.385010, 32.515194, 44.194168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287098, 32.729248, 44.241020>,  <39.123913, 33.086002, 44.319107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287098, 32.729248, 44.241020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015625, -0.220609, 0.975237,
		-0.912866, -0.394808, -0.103936,
		0.407960, -0.891885, -0.195218,
		39.409485, 32.461681, 44.182453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767529, 32.637943, 44.828346>,  <39.123913, 33.086002, 44.319107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767529, 32.637943, 44.828346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097778, 32.444450, 44.712170>,  <39.295929, 32.328354, 44.642464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097778, 32.444450, 44.712170>,  <38.767529, 32.637943, 44.828346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097778, 32.444450, 44.712170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226372, -0.187519, 0.955820,
		-0.516821, -0.854893, -0.045317,
		0.825622, -0.483730, -0.290438,
		39.345467, 32.299332, 44.625038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633102, 31.893158, 44.999065>,  <38.767529, 32.637943, 44.828346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633102, 31.893158, 44.999065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020744, 31.991072, 44.987000>,  <39.253330, 32.049820, 44.979759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020744, 31.991072, 44.987000>,  <38.633102, 31.893158, 44.999065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020744, 31.991072, 44.987000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111268, -0.324780, 0.939222,
		0.220110, -0.913564, -0.341983,
		0.969108, 0.244784, -0.030164,
		39.311478, 32.064507, 44.977951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001930, 31.388861, 45.437595>,  <38.633102, 31.893158, 44.999065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001930, 31.388861, 45.437595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274609, 31.678272, 45.394138>,  <39.438213, 31.851919, 45.368065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274609, 31.678272, 45.394138>,  <39.001930, 31.388861, 45.437595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274609, 31.678272, 45.394138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067232, 0.085918, 0.994031,
		0.728543, -0.684928, 0.009925,
		0.681692, 0.723528, -0.108644,
		39.479115, 31.895330, 45.361546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445564, 31.181555, 45.917324>,  <39.001930, 31.388861, 45.437595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445564, 31.181555, 45.917324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548141, 31.559788, 45.837212>,  <39.609688, 31.786728, 45.789143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548141, 31.559788, 45.837212>,  <39.445564, 31.181555, 45.917324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548141, 31.559788, 45.837212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146134, 0.166898, 0.975085,
		0.955448, -0.279322, -0.095381,
		0.256444, 0.945581, -0.200281,
		39.625076, 31.843462, 45.777126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045521, 31.420765, 46.302944>,  <39.445564, 31.181555, 45.917324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045521, 31.420765, 46.302944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863850, 31.770609, 46.235085>,  <39.754848, 31.980515, 46.194370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863850, 31.770609, 46.235085>,  <40.045521, 31.420765, 46.302944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863850, 31.770609, 46.235085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086197, 0.232665, 0.968729,
		0.886731, 0.425353, -0.181060,
		-0.454179, 0.874609, -0.169647,
		39.727596, 32.032993, 46.184189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465439, 31.949749, 46.569641>,  <40.045521, 31.420765, 46.302944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465439, 31.949749, 46.569641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109859, 32.130104, 46.537453>,  <39.896511, 32.238316, 46.518139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109859, 32.130104, 46.537453>,  <40.465439, 31.949749, 46.569641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109859, 32.130104, 46.537453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144691, 0.443158, 0.884689,
		0.434557, 0.774798, -0.459183,
		-0.888946, 0.450887, -0.080471,
		39.843174, 32.265369, 46.513309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512901, 32.646069, 46.801868>,  <40.465439, 31.949749, 46.569641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512901, 32.646069, 46.801868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126740, 32.554142, 46.851154>,  <39.895042, 32.498985, 46.880726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126740, 32.554142, 46.851154>,  <40.512901, 32.646069, 46.801868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126740, 32.554142, 46.851154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020982, 0.539442, 0.841762,
		-0.259922, 0.810053, -0.525600,
		-0.965402, -0.229820, 0.123216,
		39.837120, 32.485195, 46.888119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194633, 33.295967, 47.008900>,  <40.512901, 32.646069, 46.801868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194633, 33.295967, 47.008900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930809, 33.011414, 47.105980>,  <39.772514, 32.840683, 47.164230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930809, 33.011414, 47.105980>,  <40.194633, 33.295967, 47.008900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930809, 33.011414, 47.105980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263938, 0.521530, 0.811384,
		-0.703783, 0.471102, -0.531745,
		-0.659565, -0.711385, 0.242702,
		39.732941, 32.797997, 47.178791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560635, 33.697998, 47.212723>,  <40.194633, 33.295967, 47.008900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560635, 33.697998, 47.212723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568390, 33.339596, 47.390167>,  <39.573044, 33.124554, 47.496635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568390, 33.339596, 47.390167>,  <39.560635, 33.697998, 47.212723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568390, 33.339596, 47.390167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172560, 0.434042, 0.884212,
		-0.984808, -0.093692, -0.146201,
		0.019386, -0.896007, 0.443616,
		39.574207, 33.070793, 47.523251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097813, 33.787159, 47.890198>,  <39.560635, 33.697998, 47.212723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097813, 33.787159, 47.890198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297058, 33.444565, 47.944328>,  <39.416603, 33.239006, 47.976807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297058, 33.444565, 47.944328>,  <39.097813, 33.787159, 47.890198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297058, 33.444565, 47.944328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075700, 0.198418, 0.977190,
		-0.863802, -0.476506, 0.163671,
		0.498112, -0.856489, 0.135322,
		39.446491, 33.187618, 47.984924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786980, 33.478405, 48.581894>,  <39.097813, 33.787159, 47.890198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786980, 33.478405, 48.581894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134922, 33.305336, 48.487114>,  <39.343689, 33.201496, 48.430244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134922, 33.305336, 48.487114>,  <38.786980, 33.478405, 48.581894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134922, 33.305336, 48.487114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254876, -0.017069, 0.966823,
		-0.422363, -0.901389, 0.095430,
		0.869855, -0.432674, -0.236952,
		39.395878, 33.175533, 48.416027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851376, 32.829971, 48.974686>,  <38.786980, 33.478405, 48.581894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851376, 32.829971, 48.974686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211742, 32.961311, 48.861168>,  <39.427963, 33.040115, 48.793056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211742, 32.961311, 48.861168>,  <38.851376, 32.829971, 48.974686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211742, 32.961311, 48.861168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323775, -0.073065, 0.943309,
		0.289002, -0.941725, -0.172137,
		0.900915, 0.328352, -0.283792,
		39.482018, 33.059818, 48.776031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350811, 32.296989, 49.245510>,  <38.851376, 32.829971, 48.974686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350811, 32.296989, 49.245510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589478, 32.612591, 49.186909>,  <39.732677, 32.801952, 49.151749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589478, 32.612591, 49.186909>,  <39.350811, 32.296989, 49.245510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589478, 32.612591, 49.186909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300623, -0.050493, 0.952406,
		0.744057, -0.612306, -0.267320,
		0.596662, 0.789007, -0.146504,
		39.768475, 32.849293, 49.142956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957996, 32.185753, 49.679893>,  <39.350811, 32.296989, 49.245510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957996, 32.185753, 49.679893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965927, 32.577240, 49.598198>,  <39.970688, 32.812134, 49.549179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965927, 32.577240, 49.598198>,  <39.957996, 32.185753, 49.679893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965927, 32.577240, 49.598198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197410, 0.196428, 0.960440,
		0.980120, -0.059366, -0.189313,
		0.019832, 0.978719, -0.204243,
		39.971878, 32.870857, 49.536926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578518, 32.488567, 49.895569>,  <39.957996, 32.185753, 49.679893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578518, 32.488567, 49.895569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345875, 32.813400, 49.876537>,  <40.206291, 33.008301, 49.865116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345875, 32.813400, 49.876537>,  <40.578518, 32.488567, 49.895569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345875, 32.813400, 49.876537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176522, 0.183091, 0.967118,
		0.794089, 0.554080, -0.249837,
		-0.581603, 0.812080, -0.047583,
		40.171394, 33.057026, 49.862263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857445, 33.074013, 50.143887>,  <40.578518, 32.488567, 49.895569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857445, 33.074013, 50.143887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481731, 33.205227, 50.184174>,  <40.256302, 33.283955, 50.208344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481731, 33.205227, 50.184174>,  <40.857445, 33.074013, 50.143887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481731, 33.205227, 50.184174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211724, 0.323048, 0.922395,
		0.270041, 0.887713, -0.372886,
		-0.939282, 0.328034, 0.100714,
		40.199947, 33.303638, 50.214386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796391, 33.858685, 50.432224>,  <40.857445, 33.074013, 50.143887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796391, 33.858685, 50.432224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463814, 33.653675, 50.518040>,  <40.264267, 33.530670, 50.569530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463814, 33.653675, 50.518040>,  <40.796391, 33.858685, 50.432224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463814, 33.653675, 50.518040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006318, 0.377383, 0.926035,
		-0.555576, 0.771300, -0.310534,
		-0.831441, -0.512521, 0.214539,
		40.214382, 33.499920, 50.582401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365692, 34.340462, 50.750454>,  <40.796391, 33.858685, 50.432224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365692, 34.340462, 50.750454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256226, 33.968330, 50.848110>,  <40.190544, 33.745052, 50.906704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256226, 33.968330, 50.848110>,  <40.365692, 34.340462, 50.750454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256226, 33.968330, 50.848110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060054, 0.269862, 0.961024,
		-0.959948, 0.248339, -0.129722,
		-0.273667, -0.930324, 0.244140,
		40.174126, 33.689232, 50.921352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253910, 34.568928, 51.548840>,  <40.365692, 34.340462, 50.750454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253910, 34.568928, 51.548840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323345, 34.533218, 51.941147>,  <40.365005, 34.511791, 52.176529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323345, 34.533218, 51.941147>,  <40.253910, 34.568928, 51.548840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323345, 34.533218, 51.941147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248345, 0.959730, 0.131316,
		-0.952992, -0.266362, 0.144424,
		0.173586, -0.089277, 0.980764,
		40.375420, 34.506435, 52.235374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693951, 35.133926, 51.303635>,  <40.253910, 34.568928, 51.548840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693951, 35.133926, 51.303635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957092, 35.251884, 51.580841>,  <41.114979, 35.322659, 51.747166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957092, 35.251884, 51.580841>,  <40.693951, 35.133926, 51.303635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957092, 35.251884, 51.580841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681358, 0.159042, -0.714463,
		-0.320907, 0.942202, -0.096300,
		0.657853, 0.294891, 0.693015,
		41.154449, 35.340351, 51.788746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945980, 35.917500, 51.195011>,  <40.693951, 35.133926, 51.303635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945980, 35.917500, 51.195011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216290, 35.704735, 51.399128>,  <41.378475, 35.577076, 51.521599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216290, 35.704735, 51.399128>,  <40.945980, 35.917500, 51.195011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216290, 35.704735, 51.399128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697633, 0.238001, -0.675770,
		0.238001, 0.812664, 0.531914,
		0.675770, -0.531914, 0.510297,
		41.419022, 35.545162, 51.552216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586178, 36.362343, 51.108006>,  <40.945980, 35.917500, 51.195011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586178, 36.362343, 51.108006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716171, 35.999744, 51.215816>,  <41.794167, 35.782185, 51.280502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716171, 35.999744, 51.215816>,  <41.586178, 36.362343, 51.108006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716171, 35.999744, 51.215816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780254, 0.095959, -0.618057,
		0.534405, 0.411158, 0.738485,
		0.324984, -0.906499, 0.269527,
		41.813667, 35.727795, 51.296673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368896, 36.360958, 51.086838>,  <41.586178, 36.362343, 51.108006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368896, 36.360958, 51.086838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237381, 35.985989, 51.041008>,  <42.158470, 35.761005, 51.013512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237381, 35.985989, 51.041008>,  <42.368896, 36.360958, 51.086838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237381, 35.985989, 51.041008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598476, -0.112974, -0.793136,
		0.730563, -0.329345, 0.598172,
		-0.328793, -0.937427, -0.114571,
		42.138744, 35.704762, 51.006638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972950, 35.946754, 50.871902>,  <42.368896, 36.360958, 51.086838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972950, 35.946754, 50.871902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683903, 35.681946, 50.792343>,  <42.510475, 35.523060, 50.744610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683903, 35.681946, 50.792343>,  <42.972950, 35.946754, 50.871902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683903, 35.681946, 50.792343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497310, -0.298041, -0.814772,
		0.480115, -0.687680, 0.544598,
		-0.722615, -0.662018, -0.198896,
		42.467117, 35.483341, 50.732674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285080, 35.388958, 50.549152>,  <42.972950, 35.946754, 50.871902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285080, 35.388958, 50.549152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.908569, 35.277462, 50.472942>,  <42.682663, 35.210564, 50.427216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.908569, 35.277462, 50.472942>,  <43.285080, 35.388958, 50.549152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.908569, 35.277462, 50.472942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301885, -0.442128, -0.844623,
		0.151191, -0.852543, 0.500312,
		-0.941279, -0.278736, -0.190524,
		42.626186, 35.193840, 50.415787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162861, 34.595783, 50.515175>,  <43.285080, 35.388958, 50.549152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.162861, 34.595783, 50.515175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.918404, 34.823967, 50.295692>,  <42.771729, 34.960876, 50.164005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.918404, 34.823967, 50.295692>,  <43.162861, 34.595783, 50.515175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918404, 34.823967, 50.295692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277216, -0.495055, -0.823451,
		-0.741385, -0.655358, 0.144410,
		-0.611147, 0.570461, -0.548702,
		42.735058, 34.995106, 50.131081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018276, 34.117485, 49.894722>,  <43.162861, 34.595783, 50.515175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018276, 34.117485, 49.894722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.854469, 34.463623, 49.779156>,  <42.756184, 34.671307, 49.709816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.854469, 34.463623, 49.779156>,  <43.018276, 34.117485, 49.894722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854469, 34.463623, 49.779156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028024, -0.304606, -0.952066,
		-0.911872, -0.397984, 0.100491,
		-0.409517, 0.865346, -0.288915,
		42.731613, 34.723228, 49.692482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476437, 33.967632, 49.337482>,  <43.018276, 34.117485, 49.894722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476437, 33.967632, 49.337482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576206, 34.352238, 49.291401>,  <42.636066, 34.583000, 49.263752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576206, 34.352238, 49.291401>,  <42.476437, 33.967632, 49.337482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576206, 34.352238, 49.291401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090775, -0.141657, -0.985745,
		-0.964131, 0.235407, -0.122614,
		0.249421, 0.961518, -0.115207,
		42.651031, 34.640694, 49.256840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053341, 34.242706, 48.837387>,  <42.476437, 33.967632, 49.337482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053341, 34.242706, 48.837387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371727, 34.484093, 48.818336>,  <42.562759, 34.628925, 48.806908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371727, 34.484093, 48.818336>,  <42.053341, 34.242706, 48.837387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371727, 34.484093, 48.818336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046644, -0.017296, -0.998762,
		-0.603543, 0.797201, 0.014381,
		0.795965, 0.603467, -0.047624,
		42.610516, 34.665134, 48.804050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862225, 34.791065, 48.469597>,  <42.053341, 34.242706, 48.837387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862225, 34.791065, 48.469597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261284, 34.813251, 48.453526>,  <42.500721, 34.826561, 48.443882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261284, 34.813251, 48.453526>,  <41.862225, 34.791065, 48.469597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261284, 34.813251, 48.453526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040749, 0.009222, -0.999127,
		-0.055044, 0.998418, 0.011461,
		0.997652, 0.055463, -0.040177,
		42.560581, 34.829891, 48.441471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075199, 35.260376, 47.902435>,  <41.862225, 34.791065, 48.469597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075199, 35.260376, 47.902435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376114, 35.002029, 47.954460>,  <42.556664, 34.847023, 47.985676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376114, 35.002029, 47.954460>,  <42.075199, 35.260376, 47.902435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376114, 35.002029, 47.954460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064567, -0.124188, -0.990156,
		0.655662, 0.753281, -0.051723,
		0.752289, -0.645868, 0.130062,
		42.601799, 34.808270, 47.993481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557648, 35.520592, 47.461147>,  <42.075199, 35.260376, 47.902435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557648, 35.520592, 47.461147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636543, 35.131924, 47.513237>,  <42.683880, 34.898724, 47.544491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636543, 35.131924, 47.513237>,  <42.557648, 35.520592, 47.461147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636543, 35.131924, 47.513237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137368, -0.158915, -0.977689,
		0.970685, 0.174946, -0.164820,
		0.197235, -0.971669, 0.130224,
		42.695713, 34.840424, 47.552303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024200, 35.449257, 46.963036>,  <42.557648, 35.520592, 47.461147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024200, 35.449257, 46.963036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848991, 35.106487, 47.071720>,  <42.743866, 34.900826, 47.136932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848991, 35.106487, 47.071720>,  <43.024200, 35.449257, 46.963036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848991, 35.106487, 47.071720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078097, -0.264835, -0.961126,
		0.895568, -0.442210, 0.049080,
		-0.438018, -0.856920, 0.271713,
		42.717587, 34.849411, 47.153233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287743, 34.961002, 46.530483>,  <43.024200, 35.449257, 46.963036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287743, 34.961002, 46.530483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950695, 34.774086, 46.637535>,  <42.748466, 34.661938, 46.701767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950695, 34.774086, 46.637535>,  <43.287743, 34.961002, 46.530483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950695, 34.774086, 46.637535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166182, -0.247094, -0.954635,
		0.512220, -0.848874, 0.130553,
		-0.842623, -0.467288, 0.267634,
		42.697906, 34.633900, 46.717827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198494, 34.474747, 46.036289>,  <43.287743, 34.961002, 46.530483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198494, 34.474747, 46.036289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.839741, 34.418968, 46.204174>,  <42.624489, 34.385502, 46.304905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.839741, 34.418968, 46.204174>,  <43.198494, 34.474747, 46.036289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.839741, 34.418968, 46.204174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386584, -0.213831, -0.897123,
		0.214850, -0.966866, 0.137872,
		-0.896879, -0.139448, 0.419717,
		42.570679, 34.377132, 46.330090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911469, 33.773270, 45.807049>,  <43.198494, 34.474747, 46.036289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911469, 33.773270, 45.807049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606949, 34.004448, 45.924629>,  <42.424236, 34.143154, 45.995178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606949, 34.004448, 45.924629>,  <42.911469, 33.773270, 45.807049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606949, 34.004448, 45.924629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478038, -0.193986, -0.856650,
		-0.438073, -0.792685, 0.423960,
		-0.761296, 0.577945, 0.293954,
		42.378559, 34.177830, 46.012814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270725, 33.433918, 45.637718>,  <42.911469, 33.773270, 45.807049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270725, 33.433918, 45.637718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161160, 33.817471, 45.667416>,  <42.095421, 34.047604, 45.685234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161160, 33.817471, 45.667416>,  <42.270725, 33.433918, 45.637718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161160, 33.817471, 45.667416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502837, -0.076984, -0.860946,
		-0.819832, -0.273158, 0.503249,
		-0.273916, 0.958884, 0.074239,
		42.078983, 34.105137, 45.689686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686024, 33.384525, 45.317413>,  <42.270725, 33.433918, 45.637718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686024, 33.384525, 45.317413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739002, 33.780506, 45.337219>,  <41.770790, 34.018093, 45.349102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739002, 33.780506, 45.337219>,  <41.686024, 33.384525, 45.317413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739002, 33.780506, 45.337219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441354, 0.103635, -0.891329,
		-0.887505, 0.096201, 0.450645,
		0.132449, 0.989952, 0.049518,
		41.778736, 34.077492, 45.352074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093403, 33.740917, 45.096275>,  <41.686024, 33.384525, 45.317413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093403, 33.740917, 45.096275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400238, 33.989796, 45.033745>,  <41.584339, 34.139122, 44.996227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400238, 33.989796, 45.033745>,  <41.093403, 33.740917, 45.096275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400238, 33.989796, 45.033745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292913, 0.122893, -0.948209,
		-0.570764, 0.773153, 0.276521,
		0.767092, 0.622200, -0.156324,
		41.630367, 34.176456, 44.986847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770744, 34.322456, 44.744701>,  <41.093403, 33.740917, 45.096275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770744, 34.322456, 44.744701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159283, 34.376057, 44.666191>,  <41.392406, 34.408215, 44.619083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159283, 34.376057, 44.666191>,  <40.770744, 34.322456, 44.744701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159283, 34.376057, 44.666191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206269, 0.065151, -0.976324,
		-0.118038, 0.988837, 0.090924,
		0.971350, 0.133998, -0.196276,
		41.450687, 34.416256, 44.607307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843327, 34.900486, 44.285751>,  <40.770744, 34.322456, 44.744701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843327, 34.900486, 44.285751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184372, 34.694496, 44.250324>,  <41.389000, 34.570900, 44.229069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184372, 34.694496, 44.250324>,  <40.843327, 34.900486, 44.285751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184372, 34.694496, 44.250324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019587, 0.200873, -0.979421,
		0.522171, 0.833335, 0.181355,
		0.852616, -0.514978, -0.088567,
		41.440155, 34.540001, 44.223755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091057, 35.173874, 43.757584>,  <40.843327, 34.900486, 44.285751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091057, 35.173874, 43.757584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276871, 34.819695, 43.763100>,  <41.388359, 34.607185, 43.766411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276871, 34.819695, 43.763100>,  <41.091057, 35.173874, 43.757584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276871, 34.819695, 43.763100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019119, -0.005541, -0.999802,
		0.885348, 0.464707, 0.014354,
		0.464535, -0.885447, 0.013791,
		41.416233, 34.554062, 43.767239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664734, 35.335773, 43.274494>,  <41.091057, 35.173874, 43.757584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664734, 35.335773, 43.274494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619305, 34.938812, 43.293411>,  <41.592045, 34.700634, 43.304764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619305, 34.938812, 43.293411>,  <41.664734, 35.335773, 43.274494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619305, 34.938812, 43.293411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130066, -0.062046, -0.989562,
		0.984979, -0.106238, 0.136125,
		-0.113575, -0.992403, 0.047296,
		41.585232, 34.641090, 43.307602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096664, 35.162411, 42.779663>,  <41.664734, 35.335773, 43.274494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096664, 35.162411, 42.779663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873615, 34.833794, 42.827202>,  <41.739784, 34.636623, 42.855724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873615, 34.833794, 42.827202>,  <42.096664, 35.162411, 42.779663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873615, 34.833794, 42.827202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037695, -0.117960, -0.992303,
		0.829236, -0.557814, 0.034809,
		-0.557626, -0.821541, 0.118843,
		41.706326, 34.587330, 42.862854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444912, 34.591854, 42.488892>,  <42.096664, 35.162411, 42.779663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444912, 34.591854, 42.488892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067215, 34.460159, 42.487560>,  <41.840599, 34.381142, 42.486763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067215, 34.460159, 42.487560>,  <42.444912, 34.591854, 42.488892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067215, 34.460159, 42.487560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082456, -0.226673, -0.970474,
		0.318766, -0.916635, 0.241182,
		-0.944240, -0.329241, -0.003326,
		41.783943, 34.361385, 42.486561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452938, 33.975254, 42.212078>,  <42.444912, 34.591854, 42.488892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452938, 33.975254, 42.212078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077965, 34.109383, 42.174583>,  <41.852982, 34.189857, 42.152088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077965, 34.109383, 42.174583>,  <42.452938, 33.975254, 42.212078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077965, 34.109383, 42.174583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016532, -0.311784, -0.950009,
		-0.347787, -0.889015, 0.297819,
		-0.937428, 0.335324, -0.093737,
		41.796734, 34.209976, 42.146461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029095, 33.387154, 41.943726>,  <42.452938, 33.975254, 42.212078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029095, 33.387154, 41.943726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822399, 33.721264, 41.868576>,  <41.698383, 33.921730, 41.823486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822399, 33.721264, 41.868576>,  <42.029095, 33.387154, 41.943726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822399, 33.721264, 41.868576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021663, -0.232127, -0.972444,
		-0.855871, -0.498425, 0.138043,
		-0.516734, 0.835278, -0.187874,
		41.667377, 33.971848, 41.812214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661171, 33.184639, 41.416191>,  <42.029095, 33.387154, 41.943726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661171, 33.184639, 41.416191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643185, 33.583172, 41.387070>,  <41.632393, 33.822292, 41.369598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643185, 33.583172, 41.387070>,  <41.661171, 33.184639, 41.416191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643185, 33.583172, 41.387070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078905, -0.069104, -0.994484,
		-0.995868, -0.050459, -0.075508,
		-0.044963, 0.996332, -0.072800,
		41.629696, 33.882072, 41.365231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325027, 33.220158, 40.793968>,  <41.661171, 33.184639, 41.416191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325027, 33.220158, 40.793968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500370, 33.569603, 40.878475>,  <41.605576, 33.779270, 40.929180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500370, 33.569603, 40.878475>,  <41.325027, 33.220158, 40.793968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500370, 33.569603, 40.878475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189679, 0.139849, -0.971835,
		-0.878559, 0.466083, -0.104403,
		0.438356, 0.873618, 0.211272,
		41.631878, 33.831688, 40.941856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106693, 33.661129, 40.233124>,  <41.325027, 33.220158, 40.793968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106693, 33.661129, 40.233124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404327, 33.870953, 40.398613>,  <41.582909, 33.996845, 40.497906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404327, 33.870953, 40.398613>,  <41.106693, 33.661129, 40.233124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404327, 33.870953, 40.398613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243790, 0.363376, -0.899180,
		-0.622010, 0.769933, 0.142502,
		0.744090, 0.524559, 0.413726,
		41.627556, 34.028320, 40.522732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993912, 34.381542, 40.053856>,  <41.106693, 33.661129, 40.233124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993912, 34.381542, 40.053856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373726, 34.267265, 40.105644>,  <41.601616, 34.198700, 40.136719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373726, 34.267265, 40.105644>,  <40.993912, 34.381542, 40.053856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373726, 34.267265, 40.105644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173131, 0.133166, -0.975855,
		0.261555, 0.949023, 0.175908,
		0.949534, -0.285695, 0.129475,
		41.658585, 34.181557, 40.144485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234776, 34.746998, 39.575809>,  <40.993912, 34.381542, 40.053856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234776, 34.746998, 39.575809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542549, 34.504761, 39.657036>,  <41.727211, 34.359421, 39.705772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542549, 34.504761, 39.657036>,  <41.234776, 34.746998, 39.575809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542549, 34.504761, 39.657036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403867, 0.214967, -0.889202,
		0.494840, 0.766192, 0.409980,
		0.769431, -0.605590, 0.203065,
		41.773380, 34.323082, 39.717957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840446, 35.148800, 39.432896>,  <41.234776, 34.746998, 39.575809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840446, 35.148800, 39.432896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966904, 34.769932, 39.411247>,  <42.042778, 34.542610, 39.398258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966904, 34.769932, 39.411247>,  <41.840446, 35.148800, 39.432896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966904, 34.769932, 39.411247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594470, 0.242232, -0.766766,
		0.739363, 0.210238, 0.639642,
		0.316145, -0.947166, -0.054117,
		42.061749, 34.485783, 39.395012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542931, 35.130379, 39.433475>,  <41.840446, 35.148800, 39.432896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542931, 35.130379, 39.433475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465527, 34.778557, 39.259605>,  <42.419083, 34.567463, 39.155281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465527, 34.778557, 39.259605>,  <42.542931, 35.130379, 39.433475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465527, 34.778557, 39.259605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692371, 0.191475, -0.695673,
		0.695109, -0.435578, 0.571923,
		-0.193510, -0.879551, -0.434677,
		42.407475, 34.514690, 39.129204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272957, 34.902649, 39.119381>,  <42.542931, 35.130379, 39.433475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272957, 34.902649, 39.119381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044209, 34.600212, 38.992077>,  <42.906960, 34.418751, 38.915695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044209, 34.600212, 38.992077>,  <43.272957, 34.902649, 39.119381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044209, 34.600212, 38.992077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718105, -0.273834, -0.639798,
		0.396594, -0.594427, 0.699549,
		-0.571873, -0.756090, -0.318260,
		42.872646, 34.373386, 38.896599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599979, 34.277267, 39.289909>,  <43.272957, 34.902649, 39.119381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599979, 34.277267, 39.289909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349487, 34.221405, 38.983101>,  <43.199192, 34.187889, 38.799015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349487, 34.221405, 38.983101>,  <43.599979, 34.277267, 39.289909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349487, 34.221405, 38.983101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765232, -0.298342, -0.570449,
		-0.149169, -0.944186, 0.293701,
		-0.626234, -0.139656, -0.767025,
		43.161617, 34.179508, 38.752995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799366, 33.608051, 38.977646>,  <43.599979, 34.277267, 39.289909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799366, 33.608051, 38.977646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550945, 33.750553, 38.698395>,  <43.401894, 33.836056, 38.530846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550945, 33.750553, 38.698395>,  <43.799366, 33.608051, 38.977646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550945, 33.750553, 38.698395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542318, -0.447740, -0.710929,
		-0.565851, -0.820129, 0.084865,
		-0.621051, 0.356256, -0.698124,
		43.364632, 33.857430, 38.488956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.547096, 33.046074, 38.560471>,  <43.799366, 33.608051, 38.977646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.547096, 33.046074, 38.560471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.500927, 33.371880, 38.333054>,  <43.473225, 33.567364, 38.196602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.500927, 33.371880, 38.333054>,  <43.547096, 33.046074, 38.560471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.500927, 33.371880, 38.333054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431633, -0.474381, -0.767239,
		-0.894635, -0.333959, -0.296817,
		-0.115422, 0.814515, -0.568545,
		43.466301, 33.616234, 38.162491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.302361, 32.795013, 37.878582>,  <43.547096, 33.046074, 38.560471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.302361, 32.795013, 37.878582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468212, 33.154728, 37.822910>,  <43.567722, 33.370556, 37.789509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468212, 33.154728, 37.822910>,  <43.302361, 32.795013, 37.878582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468212, 33.154728, 37.822910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445273, -0.333878, -0.830817,
		-0.793610, 0.282508, -0.538862,
		0.414627, 0.899286, -0.139176,
		43.592602, 33.424515, 37.781158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052776, 33.214333, 37.229088>,  <43.302361, 32.795013, 37.878582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052776, 33.214333, 37.229088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433407, 33.283871, 37.330502>,  <43.661785, 33.325592, 37.391350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433407, 33.283871, 37.330502>,  <43.052776, 33.214333, 37.229088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433407, 33.283871, 37.330502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292374, -0.257009, -0.921121,
		-0.094970, 0.950645, -0.295391,
		0.951577, 0.173844, 0.253536,
		43.718880, 33.336025, 37.406563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449257, 33.799946, 36.825294>,  <43.052776, 33.214333, 37.229088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449257, 33.799946, 36.825294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695858, 33.514324, 36.957993>,  <43.843819, 33.342953, 37.037613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695858, 33.514324, 36.957993>,  <43.449257, 33.799946, 36.825294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.695858, 33.514324, 36.957993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224235, -0.244663, -0.943323,
		0.754745, 0.655952, 0.009279,
		0.616505, -0.714049, 0.331745,
		43.880810, 33.300110, 37.057518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.155537, 33.806194, 36.499535>,  <43.449257, 33.799946, 36.825294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.155537, 33.806194, 36.499535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034672, 33.441288, 36.610142>,  <43.962154, 33.222343, 36.676506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034672, 33.441288, 36.610142>,  <44.155537, 33.806194, 36.499535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.034672, 33.441288, 36.610142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210213, -0.346705, -0.914115,
		0.929790, -0.218081, 0.296531,
		-0.302160, -0.912270, 0.276520,
		43.944023, 33.167606, 36.693096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.699100, 33.366043, 36.356594>,  <44.155537, 33.806194, 36.499535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.699100, 33.366043, 36.356594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374943, 33.132839, 36.379795>,  <44.180450, 32.992916, 36.393715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374943, 33.132839, 36.379795>,  <44.699100, 33.366043, 36.356594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374943, 33.132839, 36.379795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480865, -0.718410, -0.502649,
		0.334717, -0.379453, 0.862543,
		-0.810391, -0.583012, 0.057998,
		44.131824, 32.957935, 36.397194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.865936, 32.732059, 36.622364>,  <44.699100, 33.366043, 36.356594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.865936, 32.732059, 36.622364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.533409, 32.708103, 36.401340>,  <44.333893, 32.693729, 36.268726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.533409, 32.708103, 36.401340>,  <44.865936, 32.732059, 36.622364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.533409, 32.708103, 36.401340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495688, -0.529581, -0.688359,
		-0.251396, -0.846143, 0.469939,
		-0.831320, -0.059893, -0.552557,
		44.284012, 32.690136, 36.235573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636620, 32.082424, 36.569363>,  <44.865936, 32.732059, 36.622364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636620, 32.082424, 36.569363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562977, 32.315994, 36.253101>,  <44.518791, 32.456139, 36.063343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562977, 32.315994, 36.253101>,  <44.636620, 32.082424, 36.569363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562977, 32.315994, 36.253101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636009, -0.542528, -0.548777,
		-0.749397, -0.603898, -0.271499,
		-0.184110, 0.583927, -0.790653,
		44.507744, 32.491173, 36.015903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728222, 31.652891, 35.988670>,  <44.636620, 32.082424, 36.569363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728222, 31.652891, 35.988670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740047, 32.011890, 35.812660>,  <44.747143, 32.227291, 35.707054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740047, 32.011890, 35.812660>,  <44.728222, 31.652891, 35.988670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740047, 32.011890, 35.812660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482418, -0.398367, -0.780113,
		-0.875442, -0.189212, -0.444747,
		0.029566, 0.897498, -0.440027,
		44.748917, 32.281139, 35.680653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008263, 32.010227, 36.151947>,  <44.728222, 31.652891, 35.988670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008263, 32.010227, 36.151947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.088745, 32.318802, 35.910484>,  <44.137035, 32.503948, 35.765606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.088745, 32.318802, 35.910484>,  <44.008263, 32.010227, 36.151947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.088745, 32.318802, 35.910484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977173, 0.115181, -0.178510,
		-0.068180, 0.625795, 0.777002,
		0.201206, 0.771436, -0.603657,
		44.149109, 32.550232, 35.729385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567524, 32.542183, 36.287025>,  <44.008263, 32.010227, 36.151947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567524, 32.542183, 36.287025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.672943, 32.652664, 35.917320>,  <43.736195, 32.718952, 35.695499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.672943, 32.652664, 35.917320>,  <43.567524, 32.542183, 36.287025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.672943, 32.652664, 35.917320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963731, 0.117100, -0.239814,
		0.041994, 0.953940, 0.297045,
		0.263552, 0.276201, -0.924258,
		43.752010, 32.735523, 35.640041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122341, 33.103615, 36.103924>,  <43.567524, 32.542183, 36.287025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122341, 33.103615, 36.103924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253864, 32.982796, 35.746006>,  <43.332779, 32.910305, 35.531254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253864, 32.982796, 35.746006>,  <43.122341, 33.103615, 36.103924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253864, 32.982796, 35.746006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911186, 0.147595, -0.384650,
		0.248249, 0.941799, -0.226689,
		0.328804, -0.302045, -0.894794,
		43.352505, 32.892181, 35.477570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807774, 33.606354, 35.607265>,  <43.122341, 33.103615, 36.103924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807774, 33.606354, 35.607265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.893829, 33.264366, 35.418480>,  <42.945461, 33.059174, 35.305210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.893829, 33.264366, 35.418480>,  <42.807774, 33.606354, 35.607265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.893829, 33.264366, 35.418480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906177, 0.005410, -0.422865,
		0.364088, 0.518656, -0.773586,
		0.215136, -0.854966, -0.471964,
		42.958370, 33.007877, 35.276890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512852, 33.650009, 34.838482>,  <42.807774, 33.606354, 35.607265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512852, 33.650009, 34.838482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554535, 33.258270, 34.907787>,  <42.579544, 33.023228, 34.949371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554535, 33.258270, 34.907787>,  <42.512852, 33.650009, 34.838482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554535, 33.258270, 34.907787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834063, -0.180945, -0.521150,
		0.541738, -0.090205, -0.835693,
		0.104204, -0.979348, 0.173261,
		42.585796, 32.964466, 34.959766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428345, 33.304222, 34.294731>,  <42.512852, 33.650009, 34.838482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428345, 33.304222, 34.294731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334736, 33.011909, 34.551228>,  <42.278568, 32.836521, 34.705124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334736, 33.011909, 34.551228>,  <42.428345, 33.304222, 34.294731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334736, 33.011909, 34.551228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881407, -0.118878, -0.457154,
		0.410310, -0.672177, -0.616298,
		-0.234024, -0.730784, 0.641238,
		42.264530, 32.792675, 34.743599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099125, 32.771252, 33.844185>,  <42.428345, 33.304222, 34.294731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099125, 32.771252, 33.844185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977814, 32.676365, 34.213345>,  <41.905025, 32.619431, 34.434841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977814, 32.676365, 34.213345>,  <42.099125, 32.771252, 33.844185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977814, 32.676365, 34.213345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927588, -0.148264, -0.342927,
		0.218183, -0.960075, -0.175077,
		-0.303278, -0.237220, 0.922903,
		41.886829, 32.605198, 34.490215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738873, 32.096321, 33.760719>,  <42.099125, 32.771252, 33.844185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738873, 32.096321, 33.760719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620682, 32.264130, 34.104042>,  <41.549767, 32.364815, 34.310036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620682, 32.264130, 34.104042>,  <41.738873, 32.096321, 33.760719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620682, 32.264130, 34.104042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954877, -0.157951, -0.251518,
		0.030054, -0.893899, 0.447261,
		-0.295477, 0.419520, 0.858310,
		41.532040, 32.389984, 34.361534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205574, 31.690630, 33.905880>,  <41.738873, 32.096321, 33.760719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205574, 31.690630, 33.905880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167023, 32.015644, 34.135838>,  <41.143894, 32.210651, 34.273811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167023, 32.015644, 34.135838>,  <41.205574, 31.690630, 33.905880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167023, 32.015644, 34.135838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955707, 0.085831, -0.281527,
		-0.278094, -0.576559, 0.768273,
		-0.096375, 0.812535, 0.574891,
		41.138111, 32.259403, 34.308304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515644, 31.697853, 33.953011>,  <41.205574, 31.690630, 33.905880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515644, 31.697853, 33.953011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626163, 32.058994, 34.084778>,  <40.692474, 32.275681, 34.163837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626163, 32.058994, 34.084778>,  <40.515644, 31.697853, 33.953011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626163, 32.058994, 34.084778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835026, 0.395213, -0.382802,
		-0.475803, -0.169302, 0.863104,
		0.276301, 0.902853, 0.329416,
		40.709053, 32.329849, 34.183601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927132, 31.907373, 34.394531>,  <40.515644, 31.697853, 33.953011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927132, 31.907373, 34.394531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142834, 32.211113, 34.248875>,  <40.272255, 32.393356, 34.161480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142834, 32.211113, 34.248875>,  <39.927132, 31.907373, 34.394531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142834, 32.211113, 34.248875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838449, 0.524567, -0.147759,
		0.078816, 0.384993, 0.919548,
		0.539250, 0.759348, -0.364141,
		40.304607, 32.438919, 34.139633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769596, 32.499657, 34.790043>,  <39.927132, 31.907373, 34.394531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769596, 32.499657, 34.790043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900913, 32.653526, 34.444962>,  <39.979702, 32.745850, 34.237915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900913, 32.653526, 34.444962>,  <39.769596, 32.499657, 34.790043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900913, 32.653526, 34.444962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834426, 0.546128, -0.074013,
		0.442673, 0.744156, 0.500273,
		0.328290, 0.384677, -0.862699,
		39.999401, 32.768929, 34.186153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584904, 33.196861, 34.774334>,  <39.769596, 32.499657, 34.790043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584904, 33.196861, 34.774334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672413, 33.132801, 34.389317>,  <39.724918, 33.094364, 34.158306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672413, 33.132801, 34.389317>,  <39.584904, 33.196861, 34.774334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672413, 33.132801, 34.389317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859084, 0.436170, -0.267825,
		0.462724, 0.885499, -0.042160,
		0.218770, -0.160148, -0.962545,
		39.738045, 33.084755, 34.100552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535320, 33.818459, 34.422131>,  <39.584904, 33.196861, 34.774334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535320, 33.818459, 34.422131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507004, 33.547432, 34.129311>,  <39.490013, 33.384815, 33.953621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507004, 33.547432, 34.129311>,  <39.535320, 33.818459, 34.422131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507004, 33.547432, 34.129311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829334, 0.447760, -0.334240,
		0.554251, 0.583452, -0.593624,
		-0.070787, -0.677565, -0.732048,
		39.485767, 33.344162, 33.909695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539352, 34.241116, 33.762730>,  <39.535320, 33.818459, 34.422131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539352, 34.241116, 33.762730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369366, 33.880421, 33.731060>,  <39.267372, 33.664005, 33.712059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369366, 33.880421, 33.731060>,  <39.539352, 34.241116, 33.762730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369366, 33.880421, 33.731060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854621, 0.428512, -0.293260,
		0.298369, -0.056965, -0.952749,
		-0.424970, -0.901739, -0.079172,
		39.241875, 33.609898, 33.707310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279064, 34.215736, 33.148598>,  <39.539352, 34.241116, 33.762730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279064, 34.215736, 33.148598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072754, 33.927696, 33.334255>,  <38.948967, 33.754871, 33.445648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072754, 33.927696, 33.334255>,  <39.279064, 34.215736, 33.148598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072754, 33.927696, 33.334255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854989, 0.398172, -0.332344,
		0.054514, -0.568251, -0.821048,
		-0.515773, -0.720104, 0.464142,
		38.918022, 33.711666, 33.473499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609047, 34.030804, 32.768036>,  <39.279064, 34.215736, 33.148598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609047, 34.030804, 32.768036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493435, 33.886566, 33.122761>,  <38.424068, 33.800026, 33.335594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493435, 33.886566, 33.122761>,  <38.609047, 34.030804, 32.768036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493435, 33.886566, 33.122761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934735, 0.306327, -0.180095,
		-0.206714, -0.880987, -0.425594,
		-0.289033, -0.360590, 0.886812,
		38.406727, 33.778389, 33.388805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013988, 33.656620, 32.587303>,  <38.609047, 34.030804, 32.768036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013988, 33.656620, 32.587303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014637, 33.776009, 32.969070>,  <38.015026, 33.847641, 33.198132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014637, 33.776009, 32.969070>,  <38.013988, 33.656620, 32.587303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014637, 33.776009, 32.969070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885716, 0.443494, -0.137185,
		-0.464224, -0.845120, 0.265083,
		0.001625, 0.298472, 0.954417,
		38.015125, 33.865551, 33.255394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289127, 33.736294, 32.727581>,  <38.013988, 33.656620, 32.587303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289127, 33.736294, 32.727581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453209, 33.913280, 33.046570>,  <37.551659, 34.019470, 33.237961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453209, 33.913280, 33.046570>,  <37.289127, 33.736294, 32.727581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453209, 33.913280, 33.046570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834234, 0.535357, 0.132084,
		-0.368489, -0.719458, 0.588724,
		0.410206, 0.442462, 0.797470,
		37.576271, 34.046021, 33.285812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806931, 33.631660, 33.205757>,  <37.289127, 33.736294, 32.727581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806931, 33.631660, 33.205757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030861, 33.947910, 33.304966>,  <37.165218, 34.137661, 33.364491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030861, 33.947910, 33.304966>,  <36.806931, 33.631660, 33.205757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030861, 33.947910, 33.304966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826173, 0.555535, 0.093912,
		-0.063535, -0.257482, 0.964192,
		0.559823, 0.790622, 0.248021,
		37.198807, 34.185097, 33.379372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428890, 33.930794, 33.708778>,  <36.806931, 33.631660, 33.205757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428890, 33.930794, 33.708778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669254, 34.223862, 33.580963>,  <36.813473, 34.399704, 33.504272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669254, 34.223862, 33.580963>,  <36.428890, 33.930794, 33.708778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669254, 34.223862, 33.580963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765823, 0.642234, 0.032410,
		0.228967, 0.225237, 0.947018,
		0.600907, 0.732669, -0.319542,
		36.849525, 34.443661, 33.485100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284321, 34.556557, 34.126255>,  <36.428890, 33.930794, 33.708778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284321, 34.556557, 34.126255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431931, 34.637108, 33.763317>,  <36.520496, 34.685436, 33.545555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431931, 34.637108, 33.763317>,  <36.284321, 34.556557, 34.126255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431931, 34.637108, 33.763317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837452, 0.495461, -0.230635,
		0.403109, 0.844965, 0.351479,
		0.369023, 0.201375, -0.907342,
		36.542637, 34.697521, 33.491116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877239, 34.907448, 33.592896>,  <36.284321, 34.556557, 34.126255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877239, 34.907448, 33.592896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229206, 35.025818, 33.444206>,  <36.440388, 35.096840, 33.354992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229206, 35.025818, 33.444206>,  <35.877239, 34.907448, 33.592896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229206, 35.025818, 33.444206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385067, -0.014149, -0.922780,
		-0.278329, 0.955108, 0.101500,
		0.879918, 0.295921, -0.371719,
		36.493183, 35.114594, 33.332691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848049, 35.563484, 33.177731>,  <35.877239, 34.907448, 33.592896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848049, 35.563484, 33.177731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133526, 35.315853, 33.046654>,  <36.304813, 35.167274, 32.968006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133526, 35.315853, 33.046654>,  <35.848049, 35.563484, 33.177731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133526, 35.315853, 33.046654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402617, 0.020258, -0.915145,
		0.573183, 0.785069, -0.234793,
		0.713696, -0.619077, -0.327693,
		36.347633, 35.130131, 32.948345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887978, 35.769756, 32.558037>,  <35.848049, 35.563484, 33.177731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887978, 35.769756, 32.558037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079372, 35.418533, 32.554600>,  <36.194210, 35.207802, 32.552536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079372, 35.418533, 32.554600>,  <35.887978, 35.769756, 32.558037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079372, 35.418533, 32.554600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201586, -0.100313, -0.974320,
		0.854644, 0.467930, -0.225002,
		0.478484, -0.878054, -0.008597,
		36.222916, 35.155117, 32.552021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175873, 35.655071, 32.008862>,  <35.887978, 35.769756, 32.558037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175873, 35.655071, 32.008862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177879, 35.267700, 32.108555>,  <36.179081, 35.035278, 32.168369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177879, 35.267700, 32.108555>,  <36.175873, 35.655071, 32.008862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177879, 35.267700, 32.108555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046479, -0.248737, -0.967455,
		0.998907, 0.016434, 0.043764,
		0.005014, -0.968432, 0.249229,
		36.179382, 34.977169, 32.183323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799477, 35.366772, 31.652277>,  <36.175873, 35.655071, 32.008862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799477, 35.366772, 31.652277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521671, 35.092682, 31.740019>,  <36.354988, 34.928226, 31.792664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521671, 35.092682, 31.740019>,  <36.799477, 35.366772, 31.652277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521671, 35.092682, 31.740019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178730, -0.459636, -0.869937,
		0.696926, -0.564979, 0.441694,
		-0.694514, -0.685226, 0.219354,
		36.313316, 34.887115, 31.805824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958344, 34.588818, 31.568890>,  <36.799477, 35.366772, 31.652277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958344, 34.588818, 31.568890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595276, 34.736652, 31.489346>,  <36.377434, 34.825352, 31.441618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595276, 34.736652, 31.489346>,  <36.958344, 34.588818, 31.568890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595276, 34.736652, 31.489346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081048, -0.310554, -0.947094,
		-0.411789, -0.875764, 0.251925,
		-0.907668, 0.369585, -0.198862,
		36.322975, 34.847527, 31.429688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913906, 34.478729, 30.742064>,  <36.958344, 34.588818, 31.568890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913906, 34.478729, 30.742064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001034, 34.860378, 30.824240>,  <37.053310, 35.089367, 30.873545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001034, 34.860378, 30.824240>,  <36.913906, 34.478729, 30.742064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001034, 34.860378, 30.824240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910862, -0.274332, 0.308338,
		0.350551, 0.119966, -0.928828,
		0.217817, 0.954123, 0.205440,
		37.066380, 35.146614, 30.885872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575001, 34.622272, 30.433073>,  <36.913906, 34.478729, 30.742064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575001, 34.622272, 30.433073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537613, 34.854794, 30.756395>,  <37.515179, 34.994305, 30.950388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537613, 34.854794, 30.756395>,  <37.575001, 34.622272, 30.433073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537613, 34.854794, 30.756395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890727, -0.313899, 0.328744,
		0.444824, 0.750706, -0.488439,
		-0.093469, 0.581299, 0.808304,
		37.509571, 35.029182, 30.998886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121681, 35.097679, 30.515179>,  <37.575001, 34.622272, 30.433073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121681, 35.097679, 30.515179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958035, 35.012718, 30.870144>,  <37.859844, 34.961742, 31.083124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958035, 35.012718, 30.870144>,  <38.121681, 35.097679, 30.515179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958035, 35.012718, 30.870144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912079, -0.124030, 0.390804,
		0.027057, 0.969279, 0.244473,
		-0.409120, -0.212405, 0.887415,
		37.835300, 34.948997, 31.136368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322590, 35.620361, 31.126724>,  <38.121681, 35.097679, 30.515179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322590, 35.620361, 31.126724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246639, 35.246777, 31.247828>,  <38.201069, 35.022625, 31.320490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246639, 35.246777, 31.247828>,  <38.322590, 35.620361, 31.126724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246639, 35.246777, 31.247828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977239, -0.150062, 0.149954,
		-0.094619, 0.324338, 0.941197,
		-0.189873, -0.933963, 0.302757,
		38.189678, 34.966587, 31.338654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643269, 35.496876, 31.813681>,  <38.322590, 35.620361, 31.126724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643269, 35.496876, 31.813681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611076, 35.143871, 31.628338>,  <38.591763, 34.932068, 31.517132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611076, 35.143871, 31.628338>,  <38.643269, 35.496876, 31.813681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611076, 35.143871, 31.628338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950063, -0.208529, 0.232156,
		-0.301503, -0.421533, 0.855223,
		-0.080477, -0.882511, -0.463355,
		38.586933, 34.879120, 31.489332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996445, 35.041222, 32.193295>,  <38.643269, 35.496876, 31.813681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996445, 35.041222, 32.193295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965160, 34.845570, 31.845816>,  <38.946388, 34.728176, 31.637329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965160, 34.845570, 31.845816>,  <38.996445, 35.041222, 32.193295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965160, 34.845570, 31.845816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899027, -0.411189, 0.150581,
		-0.430851, -0.769202, 0.471907,
		-0.078216, -0.489135, -0.868694,
		38.941696, 34.698830, 31.585207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299953, 34.313995, 32.412395>,  <38.996445, 35.041222, 32.193295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299953, 34.313995, 32.412395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290142, 34.344070, 32.013649>,  <39.284256, 34.362114, 31.774401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290142, 34.344070, 32.013649>,  <39.299953, 34.313995, 32.412395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290142, 34.344070, 32.013649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937385, -0.344821, -0.049071,
		-0.347431, -0.935653, -0.062018,
		-0.024529, 0.075183, -0.996868,
		39.282784, 34.366627, 31.714588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660023, 33.726475, 32.286568>,  <39.299953, 34.313995, 32.412395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660023, 33.726475, 32.286568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679005, 33.975113, 31.973808>,  <39.690395, 34.124298, 31.786154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679005, 33.975113, 31.973808>,  <39.660023, 33.726475, 32.286568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679005, 33.975113, 31.973808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954375, -0.259252, -0.148178,
		-0.294815, -0.739191, -0.605542,
		0.047456, 0.621599, -0.781896,
		39.693241, 34.161594, 31.739239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922260, 33.324032, 31.773720>,  <39.660023, 33.726475, 32.286568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922260, 33.324032, 31.773720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003841, 33.701920, 31.671026>,  <40.052788, 33.928650, 31.609409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003841, 33.701920, 31.671026>,  <39.922260, 33.324032, 31.773720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003841, 33.701920, 31.671026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976748, -0.214067, -0.011783,
		-0.066091, -0.248363, -0.966410,
		0.203950, 0.944717, -0.256736,
		40.065025, 33.985336, 31.594006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370377, 33.025204, 31.499594>,  <39.922260, 33.324032, 31.773720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370377, 33.025204, 31.499594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433868, 33.419666, 31.480448>,  <40.471962, 33.656345, 31.468960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433868, 33.419666, 31.480448>,  <40.370377, 33.025204, 31.499594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433868, 33.419666, 31.480448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981579, -0.152401, 0.115222,
		0.106333, -0.065274, -0.992186,
		0.158731, 0.986161, -0.047867,
		40.481487, 33.715515, 31.466087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189789, 33.129478, 31.310118>,  <40.370377, 33.025204, 31.499594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189789, 33.129478, 31.310118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107040, 33.504276, 31.422718>,  <41.057392, 33.729156, 31.490278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107040, 33.504276, 31.422718>,  <41.189789, 33.129478, 31.310118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107040, 33.504276, 31.422718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918508, 0.086902, 0.385736,
		0.336970, 0.338360, -0.878615,
		-0.206871, 0.936996, 0.281503,
		41.044979, 33.785374, 31.507170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719151, 33.517509, 31.034086>,  <41.189789, 33.129478, 31.310118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719151, 33.517509, 31.034086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566399, 33.683781, 31.364269>,  <41.474747, 33.783543, 31.562380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566399, 33.683781, 31.364269>,  <41.719151, 33.517509, 31.034086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566399, 33.683781, 31.364269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899978, -0.035946, 0.434451,
		0.210263, 0.908801, -0.360374,
		-0.381876, 0.415678, 0.825459,
		41.451836, 33.808483, 31.611908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239052, 33.953129, 31.272955>,  <41.719151, 33.517509, 31.034086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239052, 33.953129, 31.272955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003895, 33.945114, 31.596432>,  <41.862801, 33.940304, 31.790518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003895, 33.945114, 31.596432>,  <42.239052, 33.953129, 31.272955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003895, 33.945114, 31.596432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793781, 0.178350, 0.581466,
		-0.155882, 0.983763, -0.088944,
		-0.587888, -0.020038, 0.808694,
		41.827530, 33.939102, 31.839041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426022, 34.503578, 31.585167>,  <42.239052, 33.953129, 31.272955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426022, 34.503578, 31.585167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292683, 34.259792, 31.872900>,  <42.212681, 34.113522, 32.045540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292683, 34.259792, 31.872900>,  <42.426022, 34.503578, 31.585167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292683, 34.259792, 31.872900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755781, 0.283380, 0.590331,
		-0.563628, 0.740442, 0.366155,
		-0.333345, -0.609460, 0.719333,
		42.192680, 34.076954, 32.088699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468346, 34.896561, 32.144913>,  <42.426022, 34.503578, 31.585167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468346, 34.896561, 32.144913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463108, 34.516193, 32.268574>,  <42.459965, 34.287971, 32.342770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463108, 34.516193, 32.268574>,  <42.468346, 34.896561, 32.144913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463108, 34.516193, 32.268574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810505, 0.170978, 0.560221,
		-0.585585, 0.257906, 0.768489,
		-0.013089, -0.950921, 0.309156,
		42.459183, 34.230919, 32.361320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508129, 34.910385, 32.902214>,  <42.468346, 34.896561, 32.144913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508129, 34.910385, 32.902214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635178, 34.558823, 32.759872>,  <42.711407, 34.347885, 32.674465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635178, 34.558823, 32.759872>,  <42.508129, 34.910385, 32.902214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635178, 34.558823, 32.759872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865572, 0.115507, 0.487282,
		-0.387173, -0.462789, 0.797448,
		0.317619, -0.878911, -0.355856,
		42.730465, 34.295151, 32.653114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897133, 34.709133, 33.478447>,  <42.508129, 34.910385, 32.902214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897133, 34.709133, 33.478447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005615, 34.443848, 33.199421>,  <43.070705, 34.284676, 33.032005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005615, 34.443848, 33.199421>,  <42.897133, 34.709133, 33.478447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005615, 34.443848, 33.199421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928877, -0.009602, 0.370264,
		-0.252262, -0.748369, 0.613439,
		0.271204, -0.663213, -0.697565,
		43.086975, 34.244884, 32.990150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.228107, 34.169079, 33.889393>,  <42.897133, 34.709133, 33.478447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.228107, 34.169079, 33.889393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369156, 34.144352, 33.515903>,  <43.453785, 34.129517, 33.291809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369156, 34.144352, 33.515903>,  <43.228107, 34.169079, 33.889393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369156, 34.144352, 33.515903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923765, -0.136298, 0.357885,
		-0.149388, -0.988737, 0.009044,
		0.352621, -0.061818, -0.933722,
		43.474941, 34.125805, 33.235786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672371, 33.550186, 33.918468>,  <43.228107, 34.169079, 33.889393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672371, 33.550186, 33.918468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776196, 33.740540, 33.582333>,  <43.838490, 33.854752, 33.380653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776196, 33.740540, 33.582333>,  <43.672371, 33.550186, 33.918468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776196, 33.740540, 33.582333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963392, -0.067108, 0.259562,
		0.067128, -0.876945, -0.475879,
		0.259557, 0.475882, -0.840337,
		43.854061, 33.883305, 33.330231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184753, 33.098328, 33.680462>,  <43.672371, 33.550186, 33.918468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184753, 33.098328, 33.680462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.226902, 33.463676, 33.523155>,  <44.252190, 33.682884, 33.428772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.226902, 33.463676, 33.523155>,  <44.184753, 33.098328, 33.680462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.226902, 33.463676, 33.523155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939512, 0.038170, 0.340383,
		0.325906, -0.405342, -0.854098,
		0.105370, 0.913368, -0.393263,
		44.258514, 33.737686, 33.405178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881676, 33.004463, 33.497967>,  <44.184753, 33.098328, 33.680462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881676, 33.004463, 33.497967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.789444, 33.393551, 33.487740>,  <44.734104, 33.627003, 33.481606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.789444, 33.393551, 33.487740>,  <44.881676, 33.004463, 33.497967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.789444, 33.393551, 33.487740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950712, 0.230803, 0.207068,
		0.207319, 0.023442, -0.977992,
		-0.230578, 0.972718, -0.025564,
		44.720272, 33.685368, 33.480072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.363205, 33.274242, 32.994915>,  <44.881676, 33.004463, 33.497967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.363205, 33.274242, 32.994915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.246811, 33.555119, 33.254841>,  <45.176975, 33.723644, 33.410797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.246811, 33.555119, 33.254841>,  <45.363205, 33.274242, 32.994915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246811, 33.555119, 33.254841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956478, 0.198009, 0.214343,
		0.021839, 0.683905, -0.729244,
		-0.290987, 0.702186, 0.649816,
		45.159515, 33.765774, 33.449787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.878025, 33.624081, 32.941597>,  <45.363205, 33.274242, 32.994915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.878025, 33.624081, 32.941597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.703873, 33.765457, 33.272781>,  <45.599380, 33.850285, 33.471493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.703873, 33.765457, 33.272781>,  <45.878025, 33.624081, 32.941597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.703873, 33.765457, 33.272781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896856, 0.250037, 0.364871,
		-0.078060, 0.901420, -0.425851,
		-0.435381, 0.353445, 0.827962,
		45.573257, 33.871490, 33.521172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.206131, 34.341778, 33.125134>,  <45.878025, 33.624081, 32.941597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.206131, 34.341778, 33.125134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.051910, 34.152287, 33.441853>,  <45.959377, 34.038593, 33.631882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.051910, 34.152287, 33.441853>,  <46.206131, 34.341778, 33.125134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.051910, 34.152287, 33.441853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871509, 0.094857, 0.481117,
		-0.303024, 0.875550, 0.376283,
		-0.385549, -0.473724, 0.791794,
		45.936245, 34.010170, 33.679390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.233932, 34.761604, 33.770241>,  <46.206131, 34.341778, 33.125134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.233932, 34.761604, 33.770241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.248692, 34.371967, 33.859489>,  <46.257545, 34.138184, 33.913040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.248692, 34.371967, 33.859489>,  <46.233932, 34.761604, 33.770241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.248692, 34.371967, 33.859489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892032, 0.132746, 0.432039,
		-0.450464, 0.183092, 0.873819,
		0.036893, -0.974092, 0.223121,
		46.259758, 34.079739, 33.926426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.749065, 34.782574, 34.237579>,  <46.233932, 34.761604, 33.770241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.749065, 34.782574, 34.237579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.705585, 34.397610, 34.138016>,  <46.679497, 34.166634, 34.078278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.705585, 34.397610, 34.138016>,  <46.749065, 34.782574, 34.237579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.705585, 34.397610, 34.138016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953302, -0.171894, 0.248331,
		-0.281782, -0.210297, 0.936149,
		-0.108696, -0.962407, -0.248913,
		46.672977, 34.108887, 34.063343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.771950, 34.308338, 34.843761>,  <46.749065, 34.782574, 34.237579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.771950, 34.308338, 34.843761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.921619, 34.172112, 34.498737>,  <47.011421, 34.090374, 34.291725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.921619, 34.172112, 34.498737>,  <46.771950, 34.308338, 34.843761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.921619, 34.172112, 34.498737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898709, -0.096235, 0.427856,
		-0.228723, -0.935281, 0.270064,
		0.374176, -0.340570, -0.862557,
		47.033871, 34.069942, 34.239971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.497002, 34.430115, 34.735130>,  <46.771950, 34.308338, 34.843761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.497002, 34.430115, 34.735130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.644394, 34.797203, 34.675781>,  <47.732830, 35.017456, 34.640171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.644394, 34.797203, 34.675781>,  <47.497002, 34.430115, 34.735130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.644394, 34.797203, 34.675781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816707, 0.395811, 0.419910,
		0.444088, -0.033548, 0.895355,
		0.368478, 0.917719, -0.148376,
		47.754936, 35.072517, 34.631268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.697350, 39.086269, 45.348766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.304596, 39.042835, 45.410885>,  <38.068943, 39.016773, 45.448154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.304596, 39.042835, 45.410885>,  <38.697350, 39.086269, 45.348766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304596, 39.042835, 45.410885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139488, -0.140511, -0.980204,
		0.128259, -0.984106, 0.122819,
		-0.981882, -0.108589, 0.155293,
		38.010033, 39.010258, 45.457474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580276, 38.502586, 44.962711>,  <38.697350, 39.086269, 45.348766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580276, 38.502586, 44.962711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.235493, 38.690678, 45.038513>,  <38.028622, 38.803532, 45.083996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.235493, 38.690678, 45.038513>,  <38.580276, 38.502586, 44.962711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235493, 38.690678, 45.038513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318115, -0.210600, -0.924365,
		-0.394754, -0.857049, 0.331115,
		-0.861959, 0.470229, 0.189505,
		37.976906, 38.831745, 45.095364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033527, 38.021843, 44.784393>,  <38.580276, 38.502586, 44.962711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033527, 38.021843, 44.784393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.869987, 38.385803, 44.756325>,  <37.771866, 38.604179, 44.739483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.869987, 38.385803, 44.756325>,  <38.033527, 38.021843, 44.784393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869987, 38.385803, 44.756325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407745, -0.250922, -0.877942,
		-0.816449, -0.330329, 0.473597,
		-0.408846, 0.909901, -0.070175,
		37.747334, 38.658775, 44.735271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225174, 37.971352, 44.833065>,  <38.033527, 38.021843, 44.784393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225174, 37.971352, 44.833065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.369022, 38.278706, 44.621307>,  <37.455334, 38.463120, 44.494255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.369022, 38.278706, 44.621307>,  <37.225174, 37.971352, 44.833065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369022, 38.278706, 44.621307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411269, -0.378741, -0.829104,
		-0.837572, 0.515889, 0.179808,
		0.359625, 0.768384, -0.529392,
		37.476910, 38.509220, 44.462490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876190, 37.874935, 44.301636>,  <37.225174, 37.971352, 44.833065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876190, 37.874935, 44.301636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.124451, 38.165485, 44.183533>,  <37.273407, 38.339813, 44.112671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.124451, 38.165485, 44.183533>,  <36.876190, 37.874935, 44.301636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124451, 38.165485, 44.183533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027314, -0.396367, -0.917686,
		-0.783612, 0.561496, -0.265845,
		0.620649, 0.726371, -0.295261,
		37.310646, 38.383396, 44.094955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639336, 38.019516, 43.692654>,  <36.876190, 37.874935, 44.301636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639336, 38.019516, 43.692654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.005650, 38.179554, 43.678452>,  <37.225437, 38.275578, 43.669930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.005650, 38.179554, 43.678452>,  <36.639336, 38.019516, 43.692654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005650, 38.179554, 43.678452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121854, -0.360961, -0.924586,
		-0.382733, 0.842398, -0.379316,
		0.915788, 0.400091, -0.035502,
		37.280384, 38.299580, 43.667801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719902, 38.135818, 42.971149>,  <36.639336, 38.019516, 43.692654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719902, 38.135818, 42.971149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093231, 38.168137, 43.111080>,  <37.317230, 38.187527, 43.195038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093231, 38.168137, 43.111080>,  <36.719902, 38.135818, 42.971149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093231, 38.168137, 43.111080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358533, -0.158089, -0.920034,
		-0.019028, 0.984114, -0.176515,
		0.933323, 0.080793, 0.349830,
		37.373230, 38.192375, 43.216030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092911, 38.664654, 42.580574>,  <36.719902, 38.135818, 42.971149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092911, 38.664654, 42.580574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356224, 38.415508, 42.749668>,  <37.514214, 38.266022, 42.851124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356224, 38.415508, 42.749668>,  <37.092911, 38.664654, 42.580574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356224, 38.415508, 42.749668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339527, -0.255533, -0.905220,
		0.671853, 0.739420, 0.043267,
		0.658282, -0.622865, 0.422734,
		37.553707, 38.228649, 42.876488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790367, 38.868732, 42.421249>,  <37.092911, 38.664654, 42.580574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790367, 38.868732, 42.421249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.841434, 38.482319, 42.511112>,  <37.872074, 38.250469, 42.565029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.841434, 38.482319, 42.511112>,  <37.790367, 38.868732, 42.421249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841434, 38.482319, 42.511112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359388, -0.166061, -0.918294,
		0.924413, 0.197982, 0.325981,
		0.127673, -0.966037, 0.224662,
		37.879738, 38.192509, 42.578510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423584, 38.728447, 42.120029>,  <37.790367, 38.868732, 42.421249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423584, 38.728447, 42.120029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.263481, 38.375881, 42.220352>,  <38.167419, 38.164341, 42.280544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.263481, 38.375881, 42.220352>,  <38.423584, 38.728447, 42.120029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263481, 38.375881, 42.220352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280707, -0.378456, -0.882029,
		0.872351, -0.282636, 0.398899,
		-0.400258, -0.881413, 0.250808,
		38.143402, 38.111458, 42.295593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994682, 38.193668, 42.053829>,  <38.423584, 38.728447, 42.120029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994682, 38.193668, 42.053829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.652706, 37.993114, 42.000633>,  <38.447521, 37.872784, 41.968716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.652706, 37.993114, 42.000633>,  <38.994682, 38.193668, 42.053829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652706, 37.993114, 42.000633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362395, -0.393894, -0.844699,
		0.371137, -0.770364, 0.518457,
		-0.854943, -0.501385, -0.132988,
		38.396225, 37.842697, 41.960735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239376, 37.562248, 41.783669>,  <38.994682, 38.193668, 42.053829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239376, 37.562248, 41.783669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.855385, 37.559227, 41.671680>,  <38.624989, 37.557415, 41.604488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.855385, 37.559227, 41.671680>,  <39.239376, 37.562248, 41.783669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855385, 37.559227, 41.671680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252245, -0.457677, -0.852587,
		-0.121696, -0.889086, 0.441266,
		-0.959980, -0.007551, -0.279965,
		38.567390, 37.556961, 41.587692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117565, 36.935513, 41.580956>,  <39.239376, 37.562248, 41.783669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117565, 36.935513, 41.580956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.837315, 37.148781, 41.391281>,  <38.669163, 37.276741, 41.277477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.837315, 37.148781, 41.391281>,  <39.117565, 36.935513, 41.580956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837315, 37.148781, 41.391281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225725, -0.464815, -0.856151,
		-0.676883, -0.706878, 0.205312,
		-0.700626, 0.533170, -0.474185,
		38.627125, 37.308731, 41.249027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778934, 36.426254, 41.139183>,  <39.117565, 36.935513, 41.580956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778934, 36.426254, 41.139183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.719028, 36.795101, 40.996479>,  <38.683086, 37.016407, 40.910858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.719028, 36.795101, 40.996479>,  <38.778934, 36.426254, 41.139183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719028, 36.795101, 40.996479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410679, -0.270212, -0.870821,
		-0.899396, -0.276930, -0.338225,
		-0.149764, 0.922115, -0.356757,
		38.674099, 37.071735, 40.889454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666054, 36.250763, 40.459629>,  <38.778934, 36.426254, 41.139183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666054, 36.250763, 40.459629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.700447, 36.647087, 40.417847>,  <38.721085, 36.884880, 40.392776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.700447, 36.647087, 40.417847>,  <38.666054, 36.250763, 40.459629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700447, 36.647087, 40.417847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403660, -0.130497, -0.905555,
		-0.910860, 0.035699, -0.411169,
		0.085984, 0.990806, -0.104454,
		38.726242, 36.944328, 40.386509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545757, 36.326824, 39.734741>,  <38.666054, 36.250763, 40.459629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545757, 36.326824, 39.734741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.696167, 36.686756, 39.823208>,  <38.786415, 36.902714, 39.876289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.696167, 36.686756, 39.823208>,  <38.545757, 36.326824, 39.734741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696167, 36.686756, 39.823208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450754, 0.030910, -0.892113,
		-0.809583, 0.435153, -0.393977,
		0.376027, 0.899826, 0.221171,
		38.808975, 36.956703, 39.889561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374214, 36.851086, 39.133675>,  <38.545757, 36.326824, 39.734741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374214, 36.851086, 39.133675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.692787, 36.994354, 39.328571>,  <38.883930, 37.080315, 39.445511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.692787, 36.994354, 39.328571>,  <38.374214, 36.851086, 39.133675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692787, 36.994354, 39.328571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501639, 0.058652, -0.863086,
		-0.337707, 0.931813, -0.132958,
		0.796437, 0.358168, 0.487242,
		38.931717, 37.101803, 39.474743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515202, 37.586308, 38.909271>,  <38.374214, 36.851086, 39.133675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515202, 37.586308, 38.909271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.855053, 37.448032, 39.068581>,  <39.058964, 37.365067, 39.164165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.855053, 37.448032, 39.068581>,  <38.515202, 37.586308, 38.909271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855053, 37.448032, 39.068581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458711, 0.111793, -0.881525,
		0.260212, 0.931665, 0.253556,
		0.849632, -0.345692, 0.398275,
		39.109943, 37.344326, 39.188065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980610, 38.143028, 38.893997>,  <38.515202, 37.586308, 38.909271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980610, 38.143028, 38.893997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.191223, 37.804180, 38.922703>,  <39.317593, 37.600872, 38.939926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.191223, 37.804180, 38.922703>,  <38.980610, 38.143028, 38.893997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191223, 37.804180, 38.922703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488223, 0.232196, -0.841263,
		0.695987, 0.477991, 0.535842,
		0.526537, -0.847118, 0.071761,
		39.349186, 37.550045, 38.944233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620731, 38.379322, 38.658638>,  <38.980610, 38.143028, 38.893997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620731, 38.379322, 38.658638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.616962, 37.979366, 38.654045>,  <39.614700, 37.739391, 38.651291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.616962, 37.979366, 38.654045>,  <39.620731, 38.379322, 38.658638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616962, 37.979366, 38.654045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523800, 0.004845, -0.851828,
		0.851789, -0.014044, 0.523696,
		-0.009426, -0.999890, -0.011483,
		39.614136, 37.679398, 38.650600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332958, 38.125694, 38.455437>,  <39.620731, 38.379322, 38.658638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332958, 38.125694, 38.455437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.078617, 37.825748, 38.382343>,  <39.926010, 37.645782, 38.338486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.078617, 37.825748, 38.382343>,  <40.332958, 38.125694, 38.455437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078617, 37.825748, 38.382343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387200, -0.105113, -0.915985,
		0.667655, -0.653189, 0.357184,
		-0.635856, -0.749864, -0.182735,
		39.887859, 37.600788, 38.327522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768616, 37.577557, 38.104954>,  <40.332958, 38.125694, 38.455437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768616, 37.577557, 38.104954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.378723, 37.523037, 38.034172>,  <40.144787, 37.490326, 37.991703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.378723, 37.523037, 38.034172>,  <40.768616, 37.577557, 38.104954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378723, 37.523037, 38.034172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197461, -0.155518, -0.967896,
		0.104407, -0.978384, 0.178503,
		-0.974735, -0.136302, -0.176955,
		40.086304, 37.482147, 37.981087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885281, 37.028664, 37.734829>,  <40.768616, 37.577557, 38.104954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885281, 37.028664, 37.734829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.527565, 37.201454, 37.688110>,  <40.312935, 37.305126, 37.660080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.527565, 37.201454, 37.688110>,  <40.885281, 37.028664, 37.734829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527565, 37.201454, 37.688110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058992, -0.144930, -0.987682,
		-0.443580, -0.890166, 0.104127,
		-0.894291, 0.431973, -0.116801,
		40.259277, 37.331047, 37.653069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427605, 36.725517, 37.257206>,  <40.885281, 37.028664, 37.734829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427605, 36.725517, 37.257206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.817131, 36.703289, 37.345383>,  <42.050846, 36.689953, 37.398289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.817131, 36.703289, 37.345383>,  <41.427605, 36.725517, 37.257206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817131, 36.703289, 37.345383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227065, -0.190621, 0.955042,
		-0.011050, -0.980090, -0.198248,
		0.973817, -0.055569, 0.220438,
		42.109276, 36.686619, 37.411514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468929, 36.208881, 37.722286>,  <41.427605, 36.725517, 37.257206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468929, 36.208881, 37.722286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.798466, 36.429913, 37.772778>,  <41.996189, 36.562531, 37.803074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.798466, 36.429913, 37.772778>,  <41.468929, 36.208881, 37.722286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798466, 36.429913, 37.772778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157097, 0.008620, 0.987545,
		0.544611, -0.833414, 0.093911,
		0.823844, 0.552582, 0.126233,
		42.045620, 36.595688, 37.810646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832451, 36.020973, 38.272717>,  <41.468929, 36.208881, 37.722286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832451, 36.020973, 38.272717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.971489, 36.395500, 38.252735>,  <42.054913, 36.620216, 38.240746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.971489, 36.395500, 38.252735>,  <41.832451, 36.020973, 38.272717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971489, 36.395500, 38.252735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063858, 0.076796, 0.995000,
		0.935469, -0.342664, 0.086484,
		0.347592, 0.936314, -0.049958,
		42.075768, 36.676395, 38.237747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266235, 36.055119, 38.959263>,  <41.832451, 36.020973, 38.272717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266235, 36.055119, 38.959263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.249893, 36.437931, 38.844421>,  <42.240089, 36.667618, 38.775517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.249893, 36.437931, 38.844421>,  <42.266235, 36.055119, 38.959263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249893, 36.437931, 38.844421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073796, 0.283671, 0.956078,
		0.996436, 0.060246, 0.059036,
		-0.040853, 0.957027, -0.287106,
		42.237637, 36.725040, 38.758289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534599, 36.328926, 39.481815>,  <42.266235, 36.055119, 38.959263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534599, 36.328926, 39.481815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.350735, 36.634418, 39.300514>,  <42.240417, 36.817715, 39.191734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.350735, 36.634418, 39.300514>,  <42.534599, 36.328926, 39.481815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350735, 36.634418, 39.300514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248044, 0.379647, 0.891259,
		0.852754, 0.522099, 0.014931,
		-0.459657, 0.763728, -0.453249,
		42.212837, 36.863537, 39.164539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885551, 36.922253, 39.762817>,  <42.534599, 36.328926, 39.481815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885551, 36.922253, 39.762817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.519276, 37.012203, 39.629585>,  <42.299511, 37.066174, 39.549648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.519276, 37.012203, 39.629585>,  <42.885551, 36.922253, 39.762817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.519276, 37.012203, 39.629585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235129, 0.372352, 0.897813,
		0.325922, 0.900435, -0.288084,
		-0.915691, 0.224880, -0.333076,
		42.244568, 37.079666, 39.529663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737137, 37.590233, 39.911430>,  <42.885551, 36.922253, 39.762817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737137, 37.590233, 39.911430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.373898, 37.428951, 39.866196>,  <42.155956, 37.332184, 39.839054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.373898, 37.428951, 39.866196>,  <42.737137, 37.590233, 39.911430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373898, 37.428951, 39.866196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276199, 0.373715, 0.885467,
		-0.314762, 0.835322, -0.450734,
		-0.908096, -0.403203, -0.113084,
		42.101467, 37.307991, 39.832272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174809, 38.051430, 39.962204>,  <42.737137, 37.590233, 39.911430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174809, 38.051430, 39.962204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.019672, 37.693066, 40.048843>,  <41.926590, 37.478046, 40.100826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.019672, 37.693066, 40.048843>,  <42.174809, 38.051430, 39.962204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019672, 37.693066, 40.048843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399026, 0.375035, 0.836736,
		-0.830876, 0.238093, -0.502948,
		-0.387844, -0.895913, 0.216602,
		41.903320, 37.424294, 40.113823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552338, 38.189903, 40.181889>,  <42.174809, 38.051430, 39.962204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552338, 38.189903, 40.181889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.597157, 37.817894, 40.321888>,  <41.624046, 37.594688, 40.405888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.597157, 37.817894, 40.321888>,  <41.552338, 38.189903, 40.181889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597157, 37.817894, 40.321888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434738, 0.270845, 0.858863,
		-0.893560, -0.248388, -0.373970,
		0.112044, -0.930025, 0.350000,
		41.630768, 37.538887, 40.426888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024139, 38.121109, 40.594524>,  <41.552338, 38.189903, 40.181889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024139, 38.121109, 40.594524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.253727, 37.812454, 40.704166>,  <41.391479, 37.627262, 40.769951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.253727, 37.812454, 40.704166>,  <41.024139, 38.121109, 40.594524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253727, 37.812454, 40.704166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347054, 0.073952, 0.934925,
		-0.741693, -0.631749, -0.225353,
		0.573973, -0.771637, 0.274101,
		41.425919, 37.580963, 40.786396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566792, 37.801418, 41.015076>,  <41.024139, 38.121109, 40.594524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566792, 37.801418, 41.015076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.931061, 37.667606, 41.112034>,  <41.149624, 37.587318, 41.170208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.931061, 37.667606, 41.112034>,  <40.566792, 37.801418, 41.015076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931061, 37.667606, 41.112034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221495, 0.099905, 0.970031,
		-0.348721, -0.937075, 0.016884,
		0.910678, -0.334530, 0.242396,
		41.204266, 37.567249, 41.184753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540760, 37.154312, 41.409679>,  <40.566792, 37.801418, 41.015076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540760, 37.154312, 41.409679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.845310, 37.399864, 41.493073>,  <41.028038, 37.547195, 41.543106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.845310, 37.399864, 41.493073>,  <40.540760, 37.154312, 41.409679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845310, 37.399864, 41.493073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271169, 0.009454, 0.962485,
		0.588879, -0.789343, 0.173663,
		0.761373, 0.613879, 0.208478,
		41.073723, 37.584026, 41.555614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815159, 36.828331, 41.981915>,  <40.540760, 37.154312, 41.409679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815159, 36.828331, 41.981915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.975334, 37.194851, 41.984699>,  <41.071438, 37.414764, 41.986370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.975334, 37.194851, 41.984699>,  <40.815159, 36.828331, 41.981915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975334, 37.194851, 41.984699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092342, 0.032794, 0.995187,
		0.911661, -0.399149, 0.097745,
		0.400434, 0.916299, 0.006962,
		41.095463, 37.469742, 41.986786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248779, 36.855961, 42.575642>,  <40.815159, 36.828331, 41.981915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248779, 36.855961, 42.575642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.191357, 37.245071, 42.502869>,  <41.156902, 37.478539, 42.459206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.191357, 37.245071, 42.502869>,  <41.248779, 36.855961, 42.575642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191357, 37.245071, 42.502869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110728, 0.166896, 0.979737,
		0.983428, 0.160796, 0.083754,
		-0.143559, 0.972775, -0.181935,
		41.148289, 37.536903, 42.448288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787529, 37.238071, 42.946861>,  <41.248779, 36.855961, 42.575642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787529, 37.238071, 42.946861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.478661, 37.484188, 42.883411>,  <41.293339, 37.631859, 42.845341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.478661, 37.484188, 42.883411>,  <41.787529, 37.238071, 42.946861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478661, 37.484188, 42.883411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151092, 0.064689, 0.986401,
		0.617185, 0.785642, 0.043014,
		-0.772175, 0.615290, -0.158629,
		41.247009, 37.668774, 42.835823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895348, 37.925743, 43.239494>,  <41.787529, 37.238071, 42.946861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895348, 37.925743, 43.239494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.496758, 37.910553, 43.209564>,  <41.257603, 37.901440, 43.191605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.496758, 37.910553, 43.209564>,  <41.895348, 37.925743, 43.239494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496758, 37.910553, 43.209564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080579, 0.184237, 0.979573,
		-0.023413, 0.982148, -0.186647,
		-0.996473, -0.037974, -0.074827,
		41.197815, 37.899162, 43.187115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642967, 38.310654, 43.771294>,  <41.895348, 37.925743, 43.239494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642967, 38.310654, 43.771294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.303509, 38.123451, 43.672688>,  <41.099834, 38.011131, 43.613525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.303509, 38.123451, 43.672688>,  <41.642967, 38.310654, 43.771294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303509, 38.123451, 43.672688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212236, -0.125607, 0.969112,
		-0.484510, 0.874756, 0.007269,
		-0.848650, -0.468002, -0.246513,
		41.048912, 37.983051, 43.598732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.867352, 38.895763, 43.861664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.751476, 38.512917, 43.862617>,  <40.681953, 38.283207, 43.863190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.751476, 38.512917, 43.862617>,  <40.867352, 38.895763, 43.861664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751476, 38.512917, 43.862617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319131, 0.098940, 0.942532,
		-0.902352, 0.272274, -0.334108,
		-0.289684, -0.957119, 0.002388,
		40.664570, 38.225780, 43.863335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261543, 38.929935, 44.089264>,  <40.867352, 38.895763, 43.861664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261543, 38.929935, 44.089264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.336155, 38.541473, 44.148689>,  <40.380920, 38.308395, 44.184345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.336155, 38.541473, 44.148689>,  <40.261543, 38.929935, 44.089264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336155, 38.541473, 44.148689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606948, 0.005002, 0.794726,
		-0.772543, -0.238408, -0.588506,
		0.186526, -0.971152, 0.148565,
		40.392113, 38.250126, 44.193260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618301, 38.608578, 44.286850>,  <40.261543, 38.929935, 44.089264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618301, 38.608578, 44.286850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.899349, 38.357384, 44.420696>,  <40.067978, 38.206669, 44.501003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.899349, 38.357384, 44.420696>,  <39.618301, 38.608578, 44.286850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899349, 38.357384, 44.420696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493316, -0.091005, 0.865076,
		-0.512800, -0.772889, -0.373736,
		0.702620, -0.627982, 0.334611,
		40.110134, 38.168991, 44.521080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304977, 38.168526, 44.673985>,  <39.618301, 38.608578, 44.286850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304977, 38.168526, 44.673985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.686790, 38.151466, 44.791996>,  <39.915878, 38.141232, 44.862804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.686790, 38.151466, 44.791996>,  <39.304977, 38.168526, 44.673985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686790, 38.151466, 44.791996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297806, -0.092548, 0.950130,
		-0.013214, -0.994795, -0.101040,
		0.954535, -0.042645, 0.295033,
		39.973152, 38.138672, 44.880505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323242, 37.678051, 45.204418>,  <39.304977, 38.168526, 44.673985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323242, 37.678051, 45.204418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.655342, 37.881416, 45.295811>,  <39.854603, 38.003437, 45.350647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.655342, 37.881416, 45.295811>,  <39.323242, 37.678051, 45.204418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655342, 37.881416, 45.295811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157119, -0.179830, 0.971069,
		0.534794, -0.842126, -0.069421,
		0.830246, 0.508414, 0.228486,
		39.904415, 38.033939, 45.364357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789616, 37.210361, 45.597134>,  <39.323242, 37.678051, 45.204418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789616, 37.210361, 45.597134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.856422, 37.594971, 45.684391>,  <39.896507, 37.825737, 45.736744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.856422, 37.594971, 45.684391>,  <39.789616, 37.210361, 45.597134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856422, 37.594971, 45.684391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111271, -0.238221, 0.964816,
		0.979655, -0.136870, -0.146777,
		0.167019, 0.961519, 0.218144,
		39.906528, 37.883427, 45.749836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232830, 37.091221, 46.064884>,  <39.789616, 37.210361, 45.597134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232830, 37.091221, 46.064884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.145023, 37.477329, 46.121532>,  <40.092339, 37.708996, 46.155521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.145023, 37.477329, 46.121532>,  <40.232830, 37.091221, 46.064884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145023, 37.477329, 46.121532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141767, -0.112055, 0.983537,
		0.965253, 0.235983, -0.112246,
		-0.219521, 0.965275, 0.141617,
		40.079166, 37.766911, 46.164017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775734, 37.421486, 46.412365>,  <40.232830, 37.091221, 46.064884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775734, 37.421486, 46.412365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.442680, 37.628731, 46.490620>,  <40.242847, 37.753078, 46.537575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.442680, 37.628731, 46.490620>,  <40.775734, 37.421486, 46.412365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442680, 37.628731, 46.490620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243217, 0.024717, 0.969657,
		0.497557, 0.854955, -0.146594,
		-0.832636, 0.518114, 0.195641,
		40.192890, 37.784164, 46.549313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906097, 37.917477, 46.843407>,  <40.775734, 37.421486, 46.412365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906097, 37.917477, 46.843407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.511967, 37.889458, 46.905651>,  <40.275486, 37.872646, 46.942997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.511967, 37.889458, 46.905651>,  <40.906097, 37.917477, 46.843407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511967, 37.889458, 46.905651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143637, 0.151965, 0.977893,
		-0.092144, 0.985901, -0.139675,
		-0.985331, -0.070045, 0.155614,
		40.216366, 37.868443, 46.952335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731380, 38.464600, 47.194656>,  <40.906097, 37.917477, 46.843407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731380, 38.464600, 47.194656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.414364, 38.231564, 47.266720>,  <40.224152, 38.091743, 47.309959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.414364, 38.231564, 47.266720>,  <40.731380, 38.464600, 47.194656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414364, 38.231564, 47.266720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111665, 0.151793, 0.982084,
		-0.599501, 0.798465, -0.055248,
		-0.792546, -0.582591, 0.180161,
		40.176601, 38.056786, 47.320766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441162, 38.733768, 47.768845>,  <40.731380, 38.464600, 47.194656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441162, 38.733768, 47.768845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.273769, 38.370564, 47.776726>,  <40.173332, 38.152641, 47.781456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.273769, 38.370564, 47.776726>,  <40.441162, 38.733768, 47.768845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273769, 38.370564, 47.776726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017725, 0.029855, 0.999397,
		-0.908052, 0.417881, -0.028589,
		-0.418483, -0.908011, 0.019703,
		40.148224, 38.098160, 47.782639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990376, 38.916985, 48.147667>,  <40.441162, 38.733768, 47.768845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990376, 38.916985, 48.147667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.020756, 38.518154, 48.150795>,  <40.038986, 38.278854, 48.152672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.020756, 38.518154, 48.150795>,  <39.990376, 38.916985, 48.147667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020756, 38.518154, 48.150795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011699, 0.006954, 0.999907,
		-0.997043, -0.076037, -0.011136,
		0.075953, -0.997081, 0.007823,
		40.043541, 38.219028, 48.153141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557621, 38.667091, 48.748680>,  <39.990376, 38.916985, 48.147667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557621, 38.667091, 48.748680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.792568, 38.359104, 48.648960>,  <39.933537, 38.174313, 48.589130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.792568, 38.359104, 48.648960>,  <39.557621, 38.667091, 48.748680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792568, 38.359104, 48.648960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036394, -0.332851, 0.942277,
		-0.808501, -0.544390, -0.223528,
		0.587368, -0.769967, -0.249298,
		39.968781, 38.128113, 48.574169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256176, 37.997879, 49.002926>,  <39.557621, 38.667091, 48.748680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256176, 37.997879, 49.002926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.650799, 37.944336, 48.965435>,  <39.887573, 37.912212, 48.942940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.650799, 37.944336, 48.965435>,  <39.256176, 37.997879, 49.002926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650799, 37.944336, 48.965435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039178, -0.363106, 0.930924,
		-0.158641, -0.922083, -0.352981,
		0.986559, -0.133853, -0.093729,
		39.946766, 37.904179, 48.937317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389530, 37.230179, 49.160938>,  <39.256176, 37.997879, 49.002926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389530, 37.230179, 49.160938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.718922, 37.440247, 49.246803>,  <39.916557, 37.566288, 49.298321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.718922, 37.440247, 49.246803>,  <39.389530, 37.230179, 49.160938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718922, 37.440247, 49.246803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078253, -0.479878, 0.873838,
		0.561921, -0.702791, -0.436267,
		0.823481, 0.525168, 0.214658,
		39.965965, 37.597797, 49.311199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846790, 36.725021, 49.577404>,  <39.389530, 37.230179, 49.160938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846790, 36.725021, 49.577404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.034615, 37.072216, 49.642048>,  <40.147308, 37.280533, 49.680832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.034615, 37.072216, 49.642048>,  <39.846790, 36.725021, 49.577404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034615, 37.072216, 49.642048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099744, -0.234019, 0.967102,
		0.877249, -0.437992, -0.196462,
		0.469559, 0.867985, 0.161605,
		40.175484, 37.332611, 49.690529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250202, 36.436626, 50.068447>,  <39.846790, 36.725021, 49.577404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250202, 36.436626, 50.068447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.272877, 36.834663, 50.100887>,  <40.286480, 37.073486, 50.120350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.272877, 36.834663, 50.100887>,  <40.250202, 36.436626, 50.068447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272877, 36.834663, 50.100887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068641, -0.084924, 0.994020,
		0.996030, -0.050779, -0.073118,
		0.056685, 0.995093, 0.081102,
		40.289883, 37.133190, 50.125217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811886, 36.592457, 50.519154>,  <40.250202, 36.436626, 50.068447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811886, 36.592457, 50.519154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.608898, 36.937019, 50.510658>,  <40.487106, 37.143757, 50.505562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.608898, 36.937019, 50.510658>,  <40.811886, 36.592457, 50.519154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608898, 36.937019, 50.510658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149849, 0.112499, 0.982288,
		0.848543, 0.495293, -0.186171,
		-0.507465, 0.861411, -0.021241,
		40.456657, 37.195442, 50.504288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206642, 37.111244, 50.697250>,  <40.811886, 36.592457, 50.519154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206642, 37.111244, 50.697250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.835812, 37.215588, 50.804943>,  <40.613316, 37.278194, 50.869560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.835812, 37.215588, 50.804943>,  <41.206642, 37.111244, 50.697250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835812, 37.215588, 50.804943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331217, 0.233595, 0.914182,
		0.175580, 0.936689, -0.302960,
		-0.927074, 0.260858, 0.269233,
		40.557690, 37.293846, 50.885712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242420, 37.720631, 50.968525>,  <41.206642, 37.111244, 50.697250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242420, 37.720631, 50.968525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.898766, 37.581429, 51.118607>,  <40.692574, 37.497910, 51.208656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.898766, 37.581429, 51.118607>,  <41.242420, 37.720631, 50.968525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898766, 37.581429, 51.118607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183606, 0.474759, 0.860751,
		-0.477677, 0.808392, -0.343987,
		-0.859135, -0.348003, 0.375207,
		40.641026, 37.477028, 51.231171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994640, 38.327065, 51.403271>,  <41.242420, 37.720631, 50.968525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994640, 38.327065, 51.403271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.760643, 38.027935, 51.528839>,  <40.620243, 37.848457, 51.604179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.760643, 38.027935, 51.528839>,  <40.994640, 38.327065, 51.403271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760643, 38.027935, 51.528839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087447, 0.442962, 0.892266,
		-0.806308, 0.494521, -0.324526,
		-0.584996, -0.747820, 0.313919,
		40.585144, 37.803589, 51.623016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400043, 38.628216, 51.724701>,  <40.994640, 38.327065, 51.403271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400043, 38.628216, 51.724701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.468021, 38.267235, 51.883038>,  <40.508808, 38.050644, 51.978039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.468021, 38.267235, 51.883038>,  <40.400043, 38.628216, 51.724701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468021, 38.267235, 51.883038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122838, 0.417954, 0.900125,
		-0.977767, -0.104349, 0.181886,
		0.169948, -0.902455, 0.395844,
		40.519005, 37.996498, 52.001789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001003, 38.390884, 52.463329>,  <40.400043, 38.628216, 51.724701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001003, 38.390884, 52.463329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.342960, 38.190159, 52.410652>,  <40.548134, 38.069725, 52.379047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.342960, 38.190159, 52.410652>,  <40.001003, 38.390884, 52.463329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342960, 38.190159, 52.410652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160561, 0.014538, 0.986919,
		-0.493337, -0.864852, 0.093001,
		0.854891, -0.501816, -0.131690,
		40.599426, 38.039616, 52.371143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034679, 37.718353, 52.705109>,  <40.001003, 38.390884, 52.463329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034679, 37.718353, 52.705109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.399860, 37.878616, 52.736069>,  <40.618969, 37.974773, 52.754646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.399860, 37.878616, 52.736069>,  <40.034679, 37.718353, 52.705109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399860, 37.878616, 52.736069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048298, -0.082255, 0.995440,
		0.405201, -0.912527, -0.055744,
		0.912951, 0.400661, 0.077403,
		40.673744, 37.998814, 52.759289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368214, 37.388649, 52.950359>,  <40.034679, 37.718353, 52.705109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368214, 37.388649, 52.950359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.243649, 37.136955, 53.235199>,  <39.168911, 36.985939, 53.406105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.243649, 37.136955, 53.235199>,  <39.368214, 37.388649, 52.950359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243649, 37.136955, 53.235199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691013, 0.664351, 0.284849,
		-0.652322, -0.403368, -0.641693,
		-0.311410, -0.629231, 0.712103,
		39.150227, 36.948185, 53.448830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649288, 37.175560, 53.134861>,  <39.368214, 37.388649, 52.950359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649288, 37.175560, 53.134861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.288067, 37.347015, 53.123772>,  <38.071335, 37.449890, 53.117119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.288067, 37.347015, 53.123772>,  <38.649288, 37.175560, 53.134861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288067, 37.347015, 53.123772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099354, -0.271232, -0.957372,
		-0.417886, -0.861801, 0.287523,
		-0.903050, 0.428639, -0.027721,
		38.017151, 37.475605, 53.115456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153782, 36.751823, 52.690102>,  <38.649288, 37.175560, 53.134861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153782, 36.751823, 52.690102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.971920, 37.108021, 52.683029>,  <37.862804, 37.321739, 52.678787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.971920, 37.108021, 52.683029>,  <38.153782, 36.751823, 52.690102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971920, 37.108021, 52.683029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111380, -0.076541, -0.990826,
		-0.883678, -0.448512, 0.133982,
		-0.454652, 0.890494, -0.017682,
		37.835526, 37.375168, 52.677723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423058, 36.746742, 52.381001>,  <38.153782, 36.751823, 52.690102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423058, 36.746742, 52.381001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.565060, 37.117374, 52.331322>,  <37.650261, 37.339752, 52.301514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.565060, 37.117374, 52.331322>,  <37.423058, 36.746742, 52.381001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565060, 37.117374, 52.331322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198978, -0.054914, -0.978464,
		-0.913443, 0.372074, 0.164874,
		0.355007, 0.926577, -0.124195,
		37.671562, 37.395348, 52.294064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867432, 37.043213, 51.997837>,  <37.423058, 36.746742, 52.381001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867432, 37.043213, 51.997837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.179310, 37.287796, 51.943871>,  <37.366436, 37.434547, 51.911491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.179310, 37.287796, 51.943871>,  <36.867432, 37.043213, 51.997837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179310, 37.287796, 51.943871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265638, 0.127887, -0.955553,
		-0.567026, 0.780874, 0.262139,
		0.779691, 0.611457, -0.134915,
		37.413216, 37.471233, 51.903397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656879, 37.681839, 51.623039>,  <36.867432, 37.043213, 51.997837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656879, 37.681839, 51.623039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.050236, 37.665623, 51.552273>,  <37.286251, 37.655891, 51.509811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.050236, 37.665623, 51.552273>,  <36.656879, 37.681839, 51.623039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050236, 37.665623, 51.552273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163550, 0.224756, -0.960592,
		0.078705, 0.973572, 0.214392,
		0.983391, -0.040540, -0.176917,
		37.345253, 37.653461, 51.499199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836651, 38.272232, 51.266663>,  <36.656879, 37.681839, 51.623039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836651, 38.272232, 51.266663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.126949, 38.018436, 51.160294>,  <37.301128, 37.866158, 51.096474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.126949, 38.018436, 51.160294>,  <36.836651, 38.272232, 51.266663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126949, 38.018436, 51.160294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045136, 0.341791, -0.938691,
		0.686481, 0.693254, 0.219415,
		0.725746, -0.634490, -0.265924,
		37.344673, 37.828091, 51.080517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153667, 38.674511, 50.842098>,  <36.836651, 38.272232, 51.266663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153667, 38.674511, 50.842098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.321552, 38.322094, 50.754826>,  <37.422283, 38.110645, 50.702461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.321552, 38.322094, 50.754826>,  <37.153667, 38.674511, 50.842098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321552, 38.322094, 50.754826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134173, 0.297963, -0.945101,
		0.897684, 0.367401, 0.243272,
		0.419717, -0.881042, -0.218182,
		37.447468, 38.057781, 50.689369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825916, 38.716957, 50.564377>,  <37.153667, 38.674511, 50.842098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825916, 38.716957, 50.564377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.720829, 38.367588, 50.400375>,  <37.657776, 38.157967, 50.301975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.720829, 38.367588, 50.400375>,  <37.825916, 38.716957, 50.564377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720829, 38.367588, 50.400375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428980, 0.274891, -0.860471,
		0.864264, -0.401950, 0.302461,
		-0.262723, -0.873425, -0.410007,
		37.642014, 38.105560, 50.277374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423050, 38.512051, 50.207977>,  <37.825916, 38.716957, 50.564377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423050, 38.512051, 50.207977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.152420, 38.263885, 50.049316>,  <37.990044, 38.114986, 49.954121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.152420, 38.263885, 50.049316>,  <38.423050, 38.512051, 50.207977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152420, 38.263885, 50.049316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400873, 0.141526, -0.905136,
		0.617696, -0.771399, 0.152955,
		-0.676573, -0.620414, -0.396654,
		37.949448, 38.077763, 49.930321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721195, 38.010803, 49.688595>,  <38.423050, 38.512051, 50.207977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721195, 38.010803, 49.688595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.332569, 38.031082, 49.596085>,  <38.099392, 38.043247, 49.540577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.332569, 38.031082, 49.596085>,  <38.721195, 38.010803, 49.688595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332569, 38.031082, 49.596085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232259, 0.014380, -0.972548,
		-0.045980, -0.998610, -0.025746,
		-0.971566, 0.050698, -0.231275,
		38.041100, 38.046291, 49.526703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713348, 37.566315, 49.190475>,  <38.721195, 38.010803, 49.688595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713348, 37.566315, 49.190475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.371895, 37.766823, 49.133858>,  <38.167023, 37.887127, 49.099888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.371895, 37.766823, 49.133858>,  <38.713348, 37.566315, 49.190475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371895, 37.766823, 49.133858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103178, -0.103636, -0.989249,
		-0.510546, -0.859065, 0.036748,
		-0.853637, 0.501266, -0.141548,
		38.115803, 37.917202, 49.091393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342697, 37.281681, 48.608574>,  <38.713348, 37.566315, 49.190475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342697, 37.281681, 48.608574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.132111, 37.621758, 48.606930>,  <38.005760, 37.825802, 48.605942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.132111, 37.621758, 48.606930>,  <38.342697, 37.281681, 48.608574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132111, 37.621758, 48.606930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155477, 0.091517, -0.983591,
		-0.835859, -0.518467, -0.180365,
		-0.526466, 0.850187, -0.004114,
		37.974171, 37.876812, 48.605694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824104, 37.246220, 48.137287>,  <38.342697, 37.281681, 48.608574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824104, 37.246220, 48.137287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906876, 37.635101, 48.181091>,  <37.956539, 37.868431, 48.207375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906876, 37.635101, 48.181091>,  <37.824104, 37.246220, 48.137287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906876, 37.635101, 48.181091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009287, 0.113882, -0.993451,
		-0.978313, 0.204553, 0.032594,
		0.206925, 0.972208, 0.109512,
		37.968952, 37.926765, 48.213943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334106, 37.565670, 47.662827>,  <37.824104, 37.246220, 48.137287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334106, 37.565670, 47.662827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.607624, 37.850487, 47.726608>,  <37.771732, 38.021378, 47.764877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.607624, 37.850487, 47.726608>,  <37.334106, 37.565670, 47.662827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607624, 37.850487, 47.726608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015129, 0.204650, -0.978718,
		-0.729520, 0.671652, 0.129165,
		0.683792, 0.712041, 0.159458,
		37.812763, 38.064098, 47.774445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144188, 38.025692, 47.269524>,  <37.334106, 37.565670, 47.662827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144188, 38.025692, 47.269524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.520477, 38.136318, 47.348057>,  <37.746250, 38.202694, 47.395176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.520477, 38.136318, 47.348057>,  <37.144188, 38.025692, 47.269524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520477, 38.136318, 47.348057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062889, 0.426602, -0.902250,
		-0.333290, 0.861116, 0.383923,
		0.940725, 0.276566, 0.196337,
		37.802696, 38.219288, 47.406960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205120, 38.789051, 47.334980>,  <37.144188, 38.025692, 47.269524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205120, 38.789051, 47.334980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.512043, 38.577721, 47.189590>,  <37.696198, 38.450924, 47.102356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.512043, 38.577721, 47.189590>,  <37.205120, 38.789051, 47.334980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512043, 38.577721, 47.189590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030224, 0.595958, -0.802446,
		0.640565, 0.604739, 0.473252,
		0.767309, -0.528322, -0.363472,
		37.742237, 38.419224, 47.080547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569424, 39.289459, 47.130802>,  <37.205120, 38.789051, 47.334980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569424, 39.289459, 47.130802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.676582, 38.962082, 46.927475>,  <37.740879, 38.765656, 46.805481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.676582, 38.962082, 46.927475>,  <37.569424, 39.289459, 47.130802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676582, 38.962082, 46.927475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186795, 0.473465, -0.860778,
		0.945165, 0.325553, -0.026039,
		0.267901, -0.818441, -0.508314,
		37.756954, 38.716549, 46.774982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146046, 39.469028, 46.694717>,  <37.569424, 39.289459, 47.130802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146046, 39.469028, 46.694717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.965664, 39.147556, 46.539425>,  <37.857433, 38.954674, 46.446247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.965664, 39.147556, 46.539425>,  <38.146046, 39.469028, 46.694717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965664, 39.147556, 46.539425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068033, 0.464662, -0.882871,
		0.889948, -0.371725, -0.264220,
		-0.450958, -0.803685, -0.388236,
		37.830376, 38.906452, 46.422955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602211, 39.342312, 46.086361>,  <38.146046, 39.469028, 46.694717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602211, 39.342312, 46.086361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.259689, 39.143841, 46.029026>,  <38.054176, 39.024757, 45.994625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.259689, 39.143841, 46.029026>,  <38.602211, 39.342312, 46.086361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259689, 39.143841, 46.029026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151103, 0.024710, -0.988209,
		0.493867, -0.867871, 0.053815,
		-0.856308, -0.496175, -0.143341,
		38.002796, 38.994987, 45.986023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.660164, 35.321533, 33.031590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.406578, 35.052341, 33.184010>,  <37.254429, 34.890827, 33.275463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.406578, 35.052341, 33.184010>,  <37.660164, 35.321533, 33.031590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406578, 35.052341, 33.184010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772802, -0.570083, 0.278896,
		0.029540, 0.471285, 0.881486,
		-0.633960, -0.672976, 0.381050,
		37.216389, 34.850449, 33.298325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867805, 35.238964, 33.761772>,  <37.660164, 35.321533, 33.031590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867805, 35.238964, 33.761772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.661026, 34.916084, 33.647800>,  <37.536957, 34.722355, 33.579418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.661026, 34.916084, 33.647800>,  <37.867805, 35.238964, 33.761772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661026, 34.916084, 33.647800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767523, -0.584469, 0.263256,
		-0.379035, -0.082601, 0.921689,
		-0.516953, -0.807201, -0.284932,
		37.505939, 34.673923, 33.562321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933662, 34.747082, 34.271259>,  <37.867805, 35.238964, 33.761772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933662, 34.747082, 34.271259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.830769, 34.532585, 33.949696>,  <37.769032, 34.403889, 33.756756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.830769, 34.532585, 33.949696>,  <37.933662, 34.747082, 34.271259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830769, 34.532585, 33.949696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682406, -0.689827, 0.241787,
		-0.684217, -0.486399, 0.543381,
		-0.257233, -0.536241, -0.803913,
		37.753597, 34.371712, 33.708523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030876, 34.085098, 34.478989>,  <37.933662, 34.747082, 34.271259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030876, 34.085098, 34.478989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.035515, 34.028877, 34.082985>,  <38.038300, 33.995144, 33.845383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.035515, 34.028877, 34.082985>,  <38.030876, 34.085098, 34.478989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035515, 34.028877, 34.082985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696898, -0.708868, 0.108808,
		-0.717077, -0.691194, 0.089730,
		0.011601, -0.140556, -0.990005,
		38.038994, 33.986710, 33.785984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038208, 33.196568, 34.416718>,  <38.030876, 34.085098, 34.478989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038208, 33.196568, 34.416718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.190407, 33.397396, 34.106068>,  <38.281727, 33.517895, 33.919678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.190407, 33.397396, 34.106068>,  <38.038208, 33.196568, 34.416718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190407, 33.397396, 34.106068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741630, -0.667346, -0.068078,
		-0.552457, -0.550065, -0.626275,
		0.380495, 0.502074, -0.776624,
		38.304554, 33.548019, 33.873081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341488, 32.701447, 34.046841>,  <38.038208, 33.196568, 34.416718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341488, 32.701447, 34.046841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.506138, 33.022804, 33.874741>,  <38.604927, 33.215618, 33.771481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.506138, 33.022804, 33.874741>,  <38.341488, 32.701447, 34.046841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506138, 33.022804, 33.874741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885754, -0.463781, -0.018598,
		-0.214485, -0.373443, -0.902517,
		0.411625, 0.803397, -0.430253,
		38.629623, 33.263824, 33.745667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758038, 32.458332, 33.407780>,  <38.341488, 32.701447, 34.046841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758038, 32.458332, 33.407780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.907352, 32.824165, 33.470005>,  <38.996941, 33.043663, 33.507339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.907352, 32.824165, 33.470005>,  <38.758038, 32.458332, 33.407780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907352, 32.824165, 33.470005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920905, -0.385583, 0.057096,
		0.112201, 0.121946, -0.986175,
		0.373289, 0.914579, 0.155564,
		39.019341, 33.098537, 33.516674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317600, 32.531441, 32.922009>,  <38.758038, 32.458332, 33.407780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317600, 32.531441, 32.922009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.377674, 32.780403, 33.229267>,  <39.413719, 32.929783, 33.413624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.377674, 32.780403, 33.229267>,  <39.317600, 32.531441, 32.922009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377674, 32.780403, 33.229267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904730, -0.399797, 0.147057,
		0.398633, 0.672881, -0.623156,
		0.150184, 0.622410, 0.768148,
		39.422729, 32.967125, 33.459713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987293, 32.723728, 32.880203>,  <39.317600, 32.531441, 32.922009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987293, 32.723728, 32.880203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.901321, 32.843914, 33.251907>,  <39.849739, 32.916027, 33.474930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.901321, 32.843914, 33.251907>,  <39.987293, 32.723728, 32.880203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901321, 32.843914, 33.251907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961116, -0.103844, 0.255877,
		0.173380, 0.948123, -0.266464,
		-0.214932, 0.300466, 0.929260,
		39.836842, 32.934055, 33.530685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610523, 33.130947, 33.054516>,  <39.987293, 32.723728, 32.880203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610523, 33.130947, 33.054516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.426273, 33.046444, 33.399353>,  <40.315723, 32.995743, 33.606255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.426273, 33.046444, 33.399353>,  <40.610523, 33.130947, 33.054516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426273, 33.046444, 33.399353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884936, -0.184448, 0.427630,
		0.068672, 0.959870, 0.271908,
		-0.460622, -0.211255, 0.862090,
		40.288086, 32.983067, 33.657978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863007, 33.505672, 33.653809>,  <40.610523, 33.130947, 33.054516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863007, 33.505672, 33.653809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.708237, 33.177296, 33.821785>,  <40.615376, 32.980270, 33.922569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.708237, 33.177296, 33.821785>,  <40.863007, 33.505672, 33.653809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708237, 33.177296, 33.821785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851020, -0.142569, 0.505409,
		-0.355039, 0.552933, 0.753799,
		-0.386926, -0.820938, 0.419939,
		40.592159, 32.931015, 33.947765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923912, 33.606747, 34.469723>,  <40.863007, 33.505672, 33.653809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923912, 33.606747, 34.469723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.864788, 33.224712, 34.366993>,  <40.829311, 32.995491, 34.305355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.864788, 33.224712, 34.366993>,  <40.923912, 33.606747, 34.469723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864788, 33.224712, 34.366993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819249, -0.263716, 0.509200,
		-0.554059, -0.135136, 0.821436,
		-0.147814, -0.955088, -0.256824,
		40.820442, 32.938187, 34.289948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841862, 33.259075, 35.047878>,  <40.923912, 33.606747, 34.469723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841862, 33.259075, 35.047878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.975815, 32.980556, 34.793941>,  <41.056187, 32.813446, 34.641579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.975815, 32.980556, 34.793941>,  <40.841862, 33.259075, 35.047878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975815, 32.980556, 34.793941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660143, -0.307381, 0.685367,
		-0.672358, -0.648603, 0.356719,
		0.334883, -0.696297, -0.634841,
		41.076279, 32.771667, 34.603489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142895, 32.839367, 35.533047>,  <40.841862, 33.259075, 35.047878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142895, 32.839367, 35.533047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.250484, 32.703419, 35.172573>,  <41.315041, 32.621849, 34.956287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.250484, 32.703419, 35.172573>,  <41.142895, 32.839367, 35.533047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250484, 32.703419, 35.172573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846259, -0.363371, 0.389623,
		-0.459887, -0.867438, 0.189881,
		0.268977, -0.339871, -0.901188,
		41.331177, 32.601456, 34.902218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544453, 32.238735, 35.738251>,  <41.142895, 32.839367, 35.533047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544453, 32.238735, 35.738251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.632698, 32.341255, 35.361816>,  <41.685646, 32.402767, 35.135956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.632698, 32.341255, 35.361816>,  <41.544453, 32.238735, 35.738251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632698, 32.341255, 35.361816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956942, -0.243506, 0.158010,
		-0.188663, -0.935423, -0.298982,
		0.220610, 0.256298, -0.941086,
		41.698883, 32.418144, 35.079491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984188, 31.753408, 35.442719>,  <41.544453, 32.238735, 35.738251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984188, 31.753408, 35.442719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.063335, 32.091560, 35.244251>,  <42.110825, 32.294453, 35.125172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.063335, 32.091560, 35.244251>,  <41.984188, 31.753408, 35.442719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063335, 32.091560, 35.244251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959289, -0.062939, 0.275323,
		0.201525, -0.530443, -0.823418,
		0.197868, 0.845381, -0.496165,
		42.122696, 32.345173, 35.095402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666946, 31.678015, 35.124229>,  <41.984188, 31.753408, 35.442719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666946, 31.678015, 35.124229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.627869, 32.073246, 35.076637>,  <42.604424, 32.310387, 35.048084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.627869, 32.073246, 35.076637>,  <42.666946, 31.678015, 35.124229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627869, 32.073246, 35.076637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995117, 0.095290, -0.025747,
		-0.014103, -0.120913, -0.992563,
		-0.097695, 0.988079, -0.118978,
		42.598560, 32.369671, 35.040943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354168, 31.932341, 34.761505>,  <42.666946, 31.678015, 35.124229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354168, 31.932341, 34.761505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.217953, 32.293968, 34.864803>,  <43.136223, 32.510944, 34.926785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.217953, 32.293968, 34.864803>,  <43.354168, 31.932341, 34.761505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217953, 32.293968, 34.864803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938928, 0.341447, 0.042767,
		-0.049514, 0.257041, -0.965131,
		-0.340534, 0.904071, 0.258249,
		43.115791, 32.565189, 34.942280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709805, 32.405796, 34.378674>,  <43.354168, 31.932341, 34.761505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709805, 32.405796, 34.378674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.588329, 32.585617, 34.714691>,  <43.515442, 32.693512, 34.916302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.588329, 32.585617, 34.714691>,  <43.709805, 32.405796, 34.378674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.588329, 32.585617, 34.714691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912733, 0.390178, 0.121162,
		-0.273297, 0.803531, -0.528817,
		-0.303690, 0.449555, 0.840043,
		43.497223, 32.720482, 34.966705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064137, 33.070038, 34.415134>,  <43.709805, 32.405796, 34.378674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064137, 33.070038, 34.415134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.969654, 32.964577, 34.789234>,  <43.912964, 32.901299, 35.013695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.969654, 32.964577, 34.789234>,  <44.064137, 33.070038, 34.415134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969654, 32.964577, 34.789234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928625, 0.222150, 0.297161,
		-0.286113, 0.938689, 0.192362,
		-0.236209, -0.263654, 0.935250,
		43.898792, 32.885479, 35.069809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567928, 33.536072, 34.947235>,  <44.064137, 33.070038, 34.415134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567928, 33.536072, 34.947235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.418488, 33.233406, 35.161850>,  <44.328823, 33.051807, 35.290619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.418488, 33.233406, 35.161850>,  <44.567928, 33.536072, 34.947235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.418488, 33.233406, 35.161850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770863, 0.068462, 0.633311,
		-0.515939, 0.650205, 0.557711,
		-0.373600, -0.756668, 0.536541,
		44.306408, 33.006405, 35.322811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.428467, 33.671600, 34.834457>,  <44.567928, 33.536072, 34.947235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.428467, 33.671600, 34.834457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.575054, 33.790943, 34.481937>,  <45.663006, 33.862549, 34.270424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.575054, 33.790943, 34.481937>,  <45.428467, 33.671600, 34.834457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.575054, 33.790943, 34.481937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930138, 0.093717, -0.355049,
		-0.023338, 0.949843, 0.311855,
		0.366467, 0.298354, -0.881298,
		45.684994, 33.880451, 34.217548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.901581, 34.087151, 34.620800>,  <45.428467, 33.671600, 34.834457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.901581, 34.087151, 34.620800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.121586, 34.051151, 34.288685>,  <45.253590, 34.029552, 34.089417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.121586, 34.051151, 34.288685>,  <44.901581, 34.087151, 34.620800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.121586, 34.051151, 34.288685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813419, 0.167604, -0.557008,
		0.189290, 0.981738, 0.018978,
		0.550017, -0.089999, -0.830290,
		45.286591, 34.024151, 34.039597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785995, 34.744144, 34.204247>,  <44.901581, 34.087151, 34.620800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785995, 34.744144, 34.204247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.907566, 34.440514, 33.973969>,  <44.980507, 34.258335, 33.835800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.907566, 34.440514, 33.973969>,  <44.785995, 34.744144, 34.204247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907566, 34.440514, 33.973969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835438, 0.078084, -0.544009,
		0.457898, 0.646299, -0.610431,
		0.303927, -0.759079, -0.575698,
		44.998745, 34.212791, 33.801258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.611217, 34.994717, 33.513100>,  <44.785995, 34.744144, 34.204247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.611217, 34.994717, 33.513100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.627167, 34.595135, 33.521992>,  <44.636734, 34.355385, 33.527328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.627167, 34.595135, 33.521992>,  <44.611217, 34.994717, 33.513100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627167, 34.595135, 33.521992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804967, -0.045291, -0.591589,
		0.591979, 0.005692, -0.805933,
		0.039869, -0.998958, 0.022230,
		44.639126, 34.295448, 33.528660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625278, 34.839867, 32.783009>,  <44.611217, 34.994717, 33.513100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625278, 34.839867, 32.783009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.508797, 34.507259, 32.972233>,  <44.438908, 34.307697, 33.085766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.508797, 34.507259, 32.972233>,  <44.625278, 34.839867, 32.783009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508797, 34.507259, 32.972233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801518, -0.057893, -0.595161,
		0.522272, -0.552478, -0.649616,
		-0.291205, -0.831515, 0.473057,
		44.421436, 34.257805, 33.114151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.283260, 34.523693, 32.280514>,  <44.625278, 34.839867, 32.783009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.283260, 34.523693, 32.280514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.155136, 34.331135, 32.606865>,  <44.078262, 34.215599, 32.802677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.155136, 34.331135, 32.606865>,  <44.283260, 34.523693, 32.280514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.155136, 34.331135, 32.606865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914023, -0.069255, -0.399707,
		0.248921, -0.873763, -0.417824,
		-0.320312, -0.481397, 0.815878,
		44.059044, 34.186714, 32.851627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.930866, 33.933796, 32.050831>,  <44.283260, 34.523693, 32.280514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.930866, 33.933796, 32.050831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.799110, 33.992378, 32.423939>,  <43.720055, 34.027527, 32.647804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.799110, 33.992378, 32.423939>,  <43.930866, 33.933796, 32.050831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799110, 33.992378, 32.423939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931895, -0.209352, -0.296215,
		0.151895, -0.966811, 0.205438,
		-0.329393, 0.146453, 0.932765,
		43.700291, 34.036316, 32.703770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561081, 33.340004, 32.161873>,  <43.930866, 33.933796, 32.050831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561081, 33.340004, 32.161873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.406342, 33.606262, 32.417141>,  <43.313496, 33.766018, 32.570301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.406342, 33.606262, 32.417141>,  <43.561081, 33.340004, 32.161873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406342, 33.606262, 32.417141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914294, -0.186773, -0.359420,
		-0.120052, -0.722519, 0.680848,
		-0.386852, 0.665644, 0.638172,
		43.290287, 33.805954, 32.608593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034149, 33.028008, 32.437336>,  <43.561081, 33.340004, 32.161873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034149, 33.028008, 32.437336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.942078, 33.412453, 32.498375>,  <42.886833, 33.643120, 32.535000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.942078, 33.412453, 32.498375>,  <43.034149, 33.028008, 32.437336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942078, 33.412453, 32.498375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929525, -0.170720, -0.326860,
		-0.288097, -0.217082, 0.932671,
		-0.230181, 0.961109, 0.152600,
		42.873024, 33.700787, 32.544155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446945, 33.058208, 32.871025>,  <43.034149, 33.028008, 32.437336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446945, 33.058208, 32.871025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.444363, 33.422287, 32.705372>,  <42.442814, 33.640732, 32.605980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.444363, 33.422287, 32.705372>,  <42.446945, 33.058208, 32.871025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444363, 33.422287, 32.705372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970706, -0.105176, -0.216026,
		-0.240183, 0.400608, 0.884209,
		-0.006456, 0.910193, -0.414134,
		42.442425, 33.695347, 32.581131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814976, 33.461334, 33.123127>,  <42.446945, 33.058208, 32.871025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814976, 33.461334, 33.123127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.920731, 33.641911, 32.782234>,  <41.984184, 33.750256, 32.577698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.920731, 33.641911, 32.782234>,  <41.814976, 33.461334, 33.123127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920731, 33.641911, 32.782234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961592, 0.055804, -0.268751,
		-0.073767, 0.890555, 0.448856,
		0.264385, 0.451441, -0.852233,
		42.000046, 33.777344, 32.526566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122215, 33.782459, 32.893238>,  <41.814976, 33.461334, 33.123127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122215, 33.782459, 32.893238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.345707, 33.858181, 32.570255>,  <41.479801, 33.903614, 32.376465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.345707, 33.858181, 32.570255>,  <41.122215, 33.782459, 32.893238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345707, 33.858181, 32.570255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825049, 0.225894, -0.517945,
		0.084350, 0.955581, 0.282399,
		0.558730, 0.189304, -0.807455,
		41.513325, 33.914970, 32.328018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004223, 34.468983, 32.617733>,  <41.122215, 33.782459, 32.893238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004223, 34.468983, 32.617733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.138721, 34.256493, 32.306675>,  <41.219421, 34.128998, 32.120041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.138721, 34.256493, 32.306675>,  <41.004223, 34.468983, 32.617733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138721, 34.256493, 32.306675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795198, 0.282253, -0.536650,
		0.504575, 0.798833, -0.327521,
		0.336250, -0.531225, -0.777648,
		41.239597, 34.097126, 32.073380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873032, 34.920906, 32.061691>,  <41.004223, 34.468983, 32.617733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873032, 34.920906, 32.061691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.913067, 34.566269, 31.881054>,  <40.937088, 34.353485, 31.772673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.913067, 34.566269, 31.881054>,  <40.873032, 34.920906, 32.061691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913067, 34.566269, 31.881054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878989, 0.133882, -0.457661,
		0.466220, 0.442750, -0.765906,
		0.100088, -0.886594, -0.451591,
		40.943092, 34.300289, 31.745577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794006, 34.972275, 31.370543>,  <40.873032, 34.920906, 32.061691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794006, 34.972275, 31.370543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.704975, 34.583828, 31.404949>,  <40.651558, 34.350761, 31.425592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.704975, 34.583828, 31.404949>,  <40.794006, 34.972275, 31.370543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704975, 34.583828, 31.404949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912148, 0.176288, -0.370010,
		0.344158, -0.160815, -0.925037,
		-0.222576, -0.971113, 0.086016,
		40.638203, 34.292496, 31.430754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253613, 35.102715, 31.094839>,  <40.794006, 34.972275, 31.370543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253613, 35.102715, 31.094839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.198742, 34.729458, 31.227757>,  <40.165821, 34.505505, 31.307507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.198742, 34.729458, 31.227757>,  <40.253613, 35.102715, 31.094839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198742, 34.729458, 31.227757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982432, 0.085318, -0.165976,
		0.126529, -0.349227, -0.928457,
		-0.137177, -0.933146, 0.332296,
		40.157589, 34.449512, 31.327446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872025, 34.827003, 30.619360>,  <40.253613, 35.102715, 31.094839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872025, 34.827003, 30.619360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.816235, 34.605495, 30.947721>,  <39.782761, 34.472591, 31.144739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.816235, 34.605495, 30.947721>,  <39.872025, 34.827003, 30.619360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816235, 34.605495, 30.947721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987400, 0.015199, -0.157514,
		0.074749, -0.832530, -0.548914,
		-0.139478, -0.553772, 0.820903,
		39.774391, 34.439365, 31.193993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314770, 34.459732, 30.430933>,  <39.872025, 34.827003, 30.619360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314770, 34.459732, 30.430933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.301979, 34.409428, 30.827551>,  <39.294304, 34.379246, 31.065521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.301979, 34.409428, 30.827551>,  <39.314770, 34.459732, 30.430933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301979, 34.409428, 30.827551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999368, -0.011379, -0.033674,
		0.015517, -0.991996, -0.125315,
		-0.031979, -0.125759, 0.991545,
		39.292385, 34.371700, 31.125015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802406, 34.033260, 30.535078>,  <39.314770, 34.459732, 30.430933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802406, 34.033260, 30.535078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.843647, 34.215794, 30.888603>,  <38.868393, 34.325314, 31.100719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.843647, 34.215794, 30.888603>,  <38.802406, 34.033260, 30.535078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843647, 34.215794, 30.888603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994111, 0.017478, 0.106948,
		0.033357, -0.889637, 0.455448,
		0.103105, 0.456333, 0.883815,
		38.874580, 34.352695, 31.153748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382446, 33.692513, 31.132418>,  <38.802406, 34.033260, 30.535078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382446, 33.692513, 31.132418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.450283, 34.075027, 31.227715>,  <38.490986, 34.304535, 31.284893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.450283, 34.075027, 31.227715>,  <38.382446, 33.692513, 31.132418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450283, 34.075027, 31.227715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962835, 0.109213, 0.247026,
		0.210208, -0.271282, 0.939265,
		0.169594, 0.956284, 0.238243,
		38.501160, 34.361912, 31.299187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879375, 33.682423, 31.628319>,  <38.382446, 33.692513, 31.132418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879375, 33.682423, 31.628319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.988377, 34.059555, 31.551573>,  <38.053780, 34.285835, 31.505526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.988377, 34.059555, 31.551573>,  <37.879375, 33.682423, 31.628319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988377, 34.059555, 31.551573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923626, 0.312204, 0.222361,
		0.269549, 0.116616, 0.955900,
		0.272505, 0.942830, -0.191864,
		38.070129, 34.342403, 31.494013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.327744, 37.034374, 41.606991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981541, 37.183640, 41.473335>,  <41.773819, 37.273197, 41.393143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981541, 37.183640, 41.473335>,  <42.327744, 37.034374, 41.606991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981541, 37.183640, 41.473335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173635, -0.402200, -0.898936,
		-0.469840, -0.836053, 0.283312,
		-0.865506, 0.373163, -0.334138,
		41.721889, 37.295589, 41.373093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076107, 36.558723, 41.242111>,  <42.327744, 37.034374, 41.606991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076107, 36.558723, 41.242111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887016, 36.877483, 41.091652>,  <41.773563, 37.068737, 41.001377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887016, 36.877483, 41.091652>,  <42.076107, 36.558723, 41.242111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887016, 36.877483, 41.091652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215950, -0.309073, -0.926196,
		-0.854339, -0.519067, -0.025982,
		-0.472728, 0.796896, -0.376145,
		41.745197, 37.116550, 40.978809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605873, 36.271378, 40.694809>,  <42.076107, 36.558723, 41.242111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605873, 36.271378, 40.694809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612808, 36.666157, 40.630760>,  <41.616970, 36.903023, 40.592331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612808, 36.666157, 40.630760>,  <41.605873, 36.271378, 40.694809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612808, 36.666157, 40.630760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005849, -0.160042, -0.987093,
		-0.999833, 0.018054, 0.002998,
		0.017341, 0.986945, -0.160121,
		41.618011, 36.962242, 40.582726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309586, 36.295868, 40.108337>,  <41.605873, 36.271378, 40.694809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309586, 36.295868, 40.108337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451328, 36.669491, 40.126060>,  <41.536373, 36.893665, 40.136696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451328, 36.669491, 40.126060>,  <41.309586, 36.295868, 40.108337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451328, 36.669491, 40.126060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034016, 0.034479, -0.998826,
		-0.934491, 0.355448, -0.019555,
		0.354357, 0.934060, 0.044311,
		41.557636, 36.949707, 40.139355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931713, 36.738071, 39.567898>,  <41.309586, 36.295868, 40.108337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931713, 36.738071, 39.567898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283836, 36.905037, 39.658073>,  <41.495110, 37.005215, 39.712177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283836, 36.905037, 39.658073>,  <40.931713, 36.738071, 39.567898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283836, 36.905037, 39.658073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257436, -0.021164, -0.966063,
		-0.398478, 0.908469, -0.126088,
		0.880308, 0.417415, 0.225440,
		41.547928, 37.030262, 39.725704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043236, 37.280193, 39.075081>,  <40.931713, 36.738071, 39.567898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043236, 37.280193, 39.075081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415852, 37.214478, 39.204849>,  <41.639420, 37.175049, 39.282711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415852, 37.214478, 39.204849>,  <41.043236, 37.280193, 39.075081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415852, 37.214478, 39.204849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303043, -0.142410, -0.942276,
		0.201010, 0.976077, -0.082872,
		0.931536, -0.164293, 0.324419,
		41.695312, 37.165188, 39.302174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455421, 37.775425, 38.664673>,  <41.043236, 37.280193, 39.075081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455421, 37.775425, 38.664673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704819, 37.503899, 38.819832>,  <41.854458, 37.340984, 38.912930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704819, 37.503899, 38.819832>,  <41.455421, 37.775425, 38.664673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704819, 37.503899, 38.819832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487436, -0.050414, -0.871702,
		0.611280, 0.732577, 0.299446,
		0.623492, -0.678815, 0.387901,
		41.891865, 37.300255, 38.936203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099468, 37.956921, 38.403938>,  <41.455421, 37.775425, 38.664673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099468, 37.956921, 38.403938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171658, 37.580227, 38.517471>,  <42.214973, 37.354210, 38.585590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171658, 37.580227, 38.517471>,  <42.099468, 37.956921, 38.403938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171658, 37.580227, 38.517471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502054, -0.159943, -0.849917,
		0.845795, 0.295888, 0.443937,
		0.180476, -0.941737, 0.283831,
		42.225800, 37.297707, 38.602619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743660, 37.842442, 38.241199>,  <42.099468, 37.956921, 38.403938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743660, 37.842442, 38.241199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545074, 37.495461, 38.254147>,  <42.425922, 37.287273, 38.261913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545074, 37.495461, 38.254147>,  <42.743660, 37.842442, 38.241199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545074, 37.495461, 38.254147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360430, -0.239919, -0.901404,
		0.789692, -0.435848, 0.431768,
		-0.496465, -0.867453, 0.032369,
		42.396133, 37.235226, 38.263859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161270, 37.207256, 37.943188>,  <42.743660, 37.842442, 38.241199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161270, 37.207256, 37.943188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816898, 37.007664, 37.903530>,  <42.610275, 36.887909, 37.879738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816898, 37.007664, 37.903530>,  <43.161270, 37.207256, 37.943188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816898, 37.007664, 37.903530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263962, -0.271545, -0.925520,
		0.434893, -0.822973, 0.365492,
		-0.860925, -0.498978, -0.099141,
		42.558620, 36.857971, 37.873787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392452, 36.591164, 37.702053>,  <43.161270, 37.207256, 37.943188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392452, 36.591164, 37.702053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999844, 36.611565, 37.628277>,  <42.764278, 36.623806, 37.584011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999844, 36.611565, 37.628277>,  <43.392452, 36.591164, 37.702053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999844, 36.611565, 37.628277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166544, -0.247036, -0.954587,
		-0.094248, -0.967663, 0.233976,
		-0.981520, 0.051001, -0.184442,
		42.705387, 36.626865, 37.572945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301895, 36.151787, 37.292194>,  <43.392452, 36.591164, 37.702053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301895, 36.151787, 37.292194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958767, 36.347385, 37.228916>,  <42.752892, 36.464745, 37.190948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958767, 36.347385, 37.228916>,  <43.301895, 36.151787, 37.292194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958767, 36.347385, 37.228916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057465, -0.397137, -0.915958,
		-0.510726, -0.776637, 0.368773,
		-0.857821, 0.488995, -0.158199,
		42.701420, 36.494083, 37.181458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012192, 35.932396, 37.168919>,  <43.301895, 36.151787, 37.292194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.012192, 35.932396, 37.168919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362404, 35.739212, 37.174492>,  <44.572533, 35.623302, 37.177837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362404, 35.739212, 37.174492>,  <44.012192, 35.932396, 37.168919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362404, 35.739212, 37.174492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000162, 0.028542, 0.999593,
		-0.483162, -0.875177, 0.024911,
		0.875531, -0.482961, 0.013932,
		44.625065, 35.594322, 37.178673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.677818, 35.364952, 37.495296>,  <44.012192, 35.932396, 37.168919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.677818, 35.364952, 37.495296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051617, 35.500401, 37.539223>,  <44.275894, 35.581669, 37.565578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051617, 35.500401, 37.539223>,  <43.677818, 35.364952, 37.495296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.051617, 35.500401, 37.539223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213134, 0.285130, 0.934492,
		0.285130, -0.896680, 0.338624,
		-0.934492, -0.338624, -0.109814,
		44.331963, 35.601990, 37.572166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883781, 34.645031, 37.384415>,  <43.677818, 35.364952, 37.495296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883781, 34.645031, 37.384415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806808, 34.280304, 37.529495>,  <43.760624, 34.061466, 37.616543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806808, 34.280304, 37.529495>,  <43.883781, 34.645031, 37.384415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.806808, 34.280304, 37.529495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596020, 0.402230, 0.694962,
		-0.779570, -0.082443, -0.620866,
		-0.192436, -0.911820, 0.362704,
		43.749077, 34.006760, 37.638306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.276955, 34.632553, 37.429214>,  <43.883781, 34.645031, 37.384415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.276955, 34.632553, 37.429214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349514, 34.321468, 37.669968>,  <43.393047, 34.134819, 37.814419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349514, 34.321468, 37.669968>,  <43.276955, 34.632553, 37.429214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349514, 34.321468, 37.669968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817331, 0.221125, 0.532047,
		-0.546869, -0.588450, -0.595534,
		0.181395, -0.777708, 0.601885,
		43.403934, 34.088158, 37.850533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611275, 34.484303, 37.554340>,  <43.276955, 34.632553, 37.429214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.611275, 34.484303, 37.554340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841785, 34.318218, 37.835911>,  <42.980091, 34.218567, 38.004852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841785, 34.318218, 37.835911>,  <42.611275, 34.484303, 37.554340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841785, 34.318218, 37.835911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677690, 0.238627, 0.695552,
		-0.456774, -0.877872, -0.143867,
		0.576276, -0.415208, 0.703924,
		43.014668, 34.193657, 38.047089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270790, 33.999763, 37.794331>,  <42.611275, 34.484303, 37.554340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270790, 33.999763, 37.794331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542847, 34.047428, 38.083664>,  <42.706081, 34.076027, 38.257263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542847, 34.047428, 38.083664>,  <42.270790, 33.999763, 37.794331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542847, 34.047428, 38.083664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731572, 0.047028, 0.680140,
		0.047028, -0.991761, 0.119159,
		-0.680140, -0.119159, -0.723333,
		42.746887, 34.083176, 38.300663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938984, 33.626431, 38.221947>,  <42.270790, 33.999763, 37.794331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938984, 33.626431, 38.221947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214592, 33.834213, 38.424103>,  <42.379955, 33.958881, 38.545395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214592, 33.834213, 38.424103>,  <41.938984, 33.626431, 38.221947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214592, 33.834213, 38.424103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616323, 0.053078, 0.785703,
		0.381311, -0.852849, 0.356722,
		0.689020, 0.519453, 0.505391,
		42.421299, 33.990047, 38.575722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179253, 33.253647, 38.748489>,  <41.938984, 33.626431, 38.221947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179253, 33.253647, 38.748489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261333, 33.629536, 38.857899>,  <42.310581, 33.855068, 38.923542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261333, 33.629536, 38.857899>,  <42.179253, 33.253647, 38.748489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261333, 33.629536, 38.857899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520416, -0.131919, 0.843661,
		0.828889, -0.315470, 0.461975,
		0.205206, 0.939721, 0.273522,
		42.322895, 33.911453, 38.939957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272167, 33.227425, 39.402466>,  <42.179253, 33.253647, 38.748489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272167, 33.227425, 39.402466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219604, 33.623287, 39.379467>,  <42.188068, 33.860806, 39.365665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219604, 33.623287, 39.379467>,  <42.272167, 33.227425, 39.402466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219604, 33.623287, 39.379467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256019, 0.022156, 0.966418,
		0.957699, 0.141713, 0.250460,
		-0.131405, 0.989660, -0.057501,
		42.180183, 33.920185, 39.362217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733093, 33.424339, 39.925510>,  <42.272167, 33.227425, 39.402466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733093, 33.424339, 39.925510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459423, 33.712585, 39.880589>,  <42.295219, 33.885532, 39.853634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459423, 33.712585, 39.880589>,  <42.733093, 33.424339, 39.925510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459423, 33.712585, 39.880589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068000, 0.090285, 0.993592,
		0.726139, 0.687429, -0.012769,
		-0.684177, 0.720618, -0.112304,
		42.254169, 33.928772, 39.846897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.920765, 34.022583, 40.352390>,  <42.733093, 33.424339, 39.925510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.920765, 34.022583, 40.352390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524574, 34.051922, 40.305798>,  <42.286858, 34.069527, 40.277843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524574, 34.051922, 40.305798>,  <42.920765, 34.022583, 40.352390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524574, 34.051922, 40.305798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106152, 0.131705, 0.985589,
		0.087631, 0.988572, -0.122666,
		-0.990481, 0.073347, -0.116481,
		42.227428, 34.073925, 40.270855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764973, 34.500500, 40.840614>,  <42.920765, 34.022583, 40.352390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764973, 34.500500, 40.840614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411503, 34.338795, 40.746220>,  <42.199421, 34.241772, 40.689583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411503, 34.338795, 40.746220>,  <42.764973, 34.500500, 40.840614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411503, 34.338795, 40.746220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310195, 0.128162, 0.941994,
		-0.350569, 0.905619, -0.238654,
		-0.883674, -0.404263, -0.235988,
		42.146400, 34.217514, 40.675423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278225, 34.961170, 41.038288>,  <42.764973, 34.500500, 40.840614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278225, 34.961170, 41.038288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079578, 34.615166, 41.009659>,  <41.960388, 34.407562, 40.992481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079578, 34.615166, 41.009659>,  <42.278225, 34.961170, 41.038288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.079578, 34.615166, 41.009659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482280, 0.206439, 0.851345,
		-0.721647, 0.457316, -0.519700,
		-0.496620, -0.865012, -0.071578,
		41.930592, 34.355663, 40.988186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568352, 35.143841, 41.241962>,  <42.278225, 34.961170, 41.038288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568352, 35.143841, 41.241962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586044, 34.748039, 41.296993>,  <41.596661, 34.510559, 41.330009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586044, 34.748039, 41.296993>,  <41.568352, 35.143841, 41.241962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586044, 34.748039, 41.296993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564566, 0.088852, 0.820591,
		-0.824202, -0.113968, -0.554710,
		0.044234, -0.989503, 0.137575,
		41.599316, 34.451187, 41.338264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973503, 35.043343, 41.468513>,  <41.568352, 35.143841, 41.241962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973503, 35.043343, 41.468513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184780, 34.725105, 41.587208>,  <41.311546, 34.534164, 41.658424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184780, 34.725105, 41.587208>,  <40.973503, 35.043343, 41.468513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184780, 34.725105, 41.587208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428144, 0.052256, 0.902199,
		-0.733286, -0.603579, -0.313026,
		0.528190, -0.795589, 0.296737,
		41.343239, 34.486427, 41.676228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591949, 34.691078, 42.056011>,  <40.973503, 35.043343, 41.468513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591949, 34.691078, 42.056011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964039, 34.547352, 42.085915>,  <41.187290, 34.461117, 42.103855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964039, 34.547352, 42.085915>,  <40.591949, 34.691078, 42.056011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964039, 34.547352, 42.085915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071780, 0.021640, 0.997186,
		-0.359918, -0.932967, -0.005661,
		0.930218, -0.359311, 0.074757,
		41.243103, 34.439560, 42.108341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425198, 34.052315, 41.608425>,  <40.591949, 34.691078, 42.056011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425198, 34.052315, 41.608425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136017, 33.783878, 41.542732>,  <39.962509, 33.622814, 41.503319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136017, 33.783878, 41.542732>,  <40.425198, 34.052315, 41.608425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136017, 33.783878, 41.542732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084284, 0.321596, -0.943119,
		0.685737, -0.667988, -0.289061,
		-0.722953, -0.671095, -0.164229,
		39.919132, 33.582550, 41.493462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541454, 33.884792, 40.870720>,  <40.425198, 34.052315, 41.608425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541454, 33.884792, 40.870720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156490, 33.805309, 40.944775>,  <39.925510, 33.757622, 40.989208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156490, 33.805309, 40.944775>,  <40.541454, 33.884792, 40.870720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156490, 33.805309, 40.944775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229452, 0.230228, -0.945699,
		0.145288, -0.952635, -0.267168,
		-0.962415, -0.198701, 0.185135,
		39.867767, 33.745697, 41.000317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273087, 33.530216, 40.276058>,  <40.541454, 33.884792, 40.870720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273087, 33.530216, 40.276058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932537, 33.631062, 40.460060>,  <39.728207, 33.691570, 40.570461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932537, 33.631062, 40.460060>,  <40.273087, 33.530216, 40.276058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932537, 33.631062, 40.460060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381203, 0.305057, -0.872711,
		-0.360351, -0.918356, -0.163610,
		-0.851370, 0.252114, 0.460008,
		39.677128, 33.706696, 40.598064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729542, 33.107964, 40.009148>,  <40.273087, 33.530216, 40.276058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729542, 33.107964, 40.009148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550812, 33.445827, 40.127060>,  <39.443573, 33.648548, 40.197807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550812, 33.445827, 40.127060>,  <39.729542, 33.107964, 40.009148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550812, 33.445827, 40.127060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346103, 0.140635, -0.927596,
		-0.824963, -0.516493, 0.229502,
		-0.446821, 0.844664, 0.294779,
		39.416767, 33.699226, 40.215492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010376, 33.048344, 39.762516>,  <39.729542, 33.107964, 40.009148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010376, 33.048344, 39.762516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086914, 33.430752, 39.851433>,  <39.132835, 33.660194, 39.904785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086914, 33.430752, 39.851433>,  <39.010376, 33.048344, 39.762516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086914, 33.430752, 39.851433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381957, 0.281155, -0.880375,
		-0.904155, 0.083547, 0.418956,
		0.191345, 0.956019, 0.222296,
		39.144318, 33.717556, 39.918121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401112, 33.341351, 39.732944>,  <39.010376, 33.048344, 39.762516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401112, 33.341351, 39.732944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672276, 33.628803, 39.670967>,  <38.834972, 33.801277, 39.633781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672276, 33.628803, 39.670967>,  <38.401112, 33.341351, 39.732944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672276, 33.628803, 39.670967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500203, 0.296445, -0.813583,
		-0.538738, 0.629035, 0.560426,
		0.677907, 0.718634, -0.154939,
		38.875648, 33.844395, 39.624485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021275, 33.891911, 39.497692>,  <38.401112, 33.341351, 39.732944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021275, 33.891911, 39.497692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397121, 33.978428, 39.391609>,  <38.622631, 34.030338, 39.327957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397121, 33.978428, 39.391609>,  <38.021275, 33.891911, 39.497692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397121, 33.978428, 39.391609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317327, 0.260449, -0.911850,
		-0.128152, 0.940949, 0.313358,
		0.939617, 0.216292, -0.265212,
		38.679008, 34.043316, 39.312046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831738, 34.539028, 39.194172>,  <38.021275, 33.891911, 39.497692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831738, 34.539028, 39.194172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196301, 34.425186, 39.075283>,  <38.415039, 34.356880, 39.003948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196301, 34.425186, 39.075283>,  <37.831738, 34.539028, 39.194172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196301, 34.425186, 39.075283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349079, -0.152229, -0.924646,
		0.217914, 0.946480, -0.238092,
		0.911404, -0.284606, -0.297224,
		38.469723, 34.339806, 38.986115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090790, 34.934212, 38.651485>,  <37.831738, 34.539028, 39.194172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090790, 34.934212, 38.651485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300835, 34.596340, 38.609978>,  <38.426861, 34.393616, 38.585072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300835, 34.596340, 38.609978>,  <38.090790, 34.934212, 38.651485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300835, 34.596340, 38.609978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298108, -0.068357, -0.952081,
		0.797113, 0.530885, -0.287701,
		0.525112, -0.844682, -0.103773,
		38.458370, 34.342934, 38.578846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281029, 34.943352, 37.993267>,  <38.090790, 34.934212, 38.651485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281029, 34.943352, 37.993267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374619, 34.564503, 38.081089>,  <38.430775, 34.337193, 38.133781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374619, 34.564503, 38.081089>,  <38.281029, 34.943352, 37.993267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374619, 34.564503, 38.081089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135964, -0.255483, -0.957205,
		0.962688, 0.194111, -0.188552,
		0.233976, -0.947127, 0.219558,
		38.444813, 34.280365, 38.146957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912102, 34.733772, 37.542618>,  <38.281029, 34.943352, 37.993267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912102, 34.733772, 37.542618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707729, 34.402309, 37.634071>,  <38.585106, 34.203430, 37.688946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707729, 34.402309, 37.634071>,  <38.912102, 34.733772, 37.542618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707729, 34.402309, 37.634071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094210, -0.210392, -0.973067,
		0.854445, -0.518708, 0.029428,
		-0.510929, -0.828660, 0.228636,
		38.554451, 34.153713, 37.702663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288918, 34.156200, 37.382290>,  <38.912102, 34.733772, 37.542618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288918, 34.156200, 37.382290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893188, 34.105675, 37.353184>,  <38.655750, 34.075359, 37.335720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893188, 34.105675, 37.353184>,  <39.288918, 34.156200, 37.382290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893188, 34.105675, 37.353184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080167, -0.054512, -0.995290,
		0.121751, -0.990492, 0.064056,
		-0.989318, -0.126313, -0.072768,
		38.596394, 34.067780, 37.331352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.606068, 32.284527, 44.762218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.221855, 32.199955, 44.834526>,  <39.991329, 32.149212, 44.877911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.221855, 32.199955, 44.834526>,  <40.606068, 32.284527, 44.762218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221855, 32.199955, 44.834526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166559, -0.083351, -0.982502,
		0.222797, -0.973833, 0.044846,
		-0.960531, -0.211429, 0.180771,
		39.933697, 32.136528, 44.888756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468597, 31.700666, 44.341534>,  <40.606068, 32.284527, 44.762218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468597, 31.700666, 44.341534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.127682, 31.891174, 44.428043>,  <39.923134, 32.005478, 44.479950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.127682, 31.891174, 44.428043>,  <40.468597, 31.700666, 44.341534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127682, 31.891174, 44.428043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172166, 0.135016, -0.975771,
		-0.493931, -0.868872, -0.033074,
		-0.852286, 0.476270, 0.216279,
		39.871998, 32.034054, 44.492928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932755, 31.324537, 43.940426>,  <40.468597, 31.700666, 44.341534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932755, 31.324537, 43.940426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.779743, 31.683582, 44.028023>,  <39.687935, 31.899010, 44.080582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.779743, 31.683582, 44.028023>,  <39.932755, 31.324537, 43.940426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779743, 31.683582, 44.028023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246945, 0.129073, -0.960395,
		-0.890330, -0.421460, 0.172287,
		-0.382531, 0.897614, 0.218995,
		39.664986, 31.952868, 44.093719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427364, 31.397991, 43.441540>,  <39.932755, 31.324537, 43.940426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427364, 31.397991, 43.441540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.466953, 31.773720, 43.572922>,  <39.490707, 31.999157, 43.651752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.466953, 31.773720, 43.572922>,  <39.427364, 31.397991, 43.441540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466953, 31.773720, 43.572922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025571, 0.332367, -0.942804,
		-0.994761, 0.084914, 0.056915,
		0.098973, 0.939320, 0.328455,
		39.496647, 32.055515, 43.671459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844048, 31.748592, 43.179539>,  <39.427364, 31.397991, 43.441540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844048, 31.748592, 43.179539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.114662, 32.034050, 43.252205>,  <39.277031, 32.205326, 43.295807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.114662, 32.034050, 43.252205>,  <38.844048, 31.748592, 43.179539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114662, 32.034050, 43.252205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070670, 0.308475, -0.948604,
		-0.733007, 0.628930, 0.259129,
		0.676540, 0.713646, 0.181668,
		39.317623, 32.248142, 43.306705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612152, 32.364372, 42.926136>,  <38.844048, 31.748592, 43.179539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612152, 32.364372, 42.926136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.004932, 32.440029, 42.926090>,  <39.240601, 32.485424, 42.926064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.004932, 32.440029, 42.926090>,  <38.612152, 32.364372, 42.926136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004932, 32.440029, 42.926090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091533, 0.474690, -0.875380,
		-0.165516, 0.859590, 0.483435,
		0.981950, 0.189140, -0.000112,
		39.299519, 32.496773, 42.926056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717842, 33.061573, 42.877365>,  <38.612152, 32.364372, 42.926136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717842, 33.061573, 42.877365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.081150, 32.941360, 42.760937>,  <39.299133, 32.869232, 42.691078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.081150, 32.941360, 42.760937>,  <38.717842, 33.061573, 42.877365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081150, 32.941360, 42.760937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045998, 0.619755, -0.783446,
		0.415845, 0.724970, 0.549082,
		0.908271, -0.300535, -0.291070,
		39.353630, 32.851200, 42.673615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119976, 33.663620, 42.736084>,  <38.717842, 33.061573, 42.877365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119976, 33.663620, 42.736084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.304192, 33.375145, 42.529091>,  <39.414722, 33.202061, 42.404896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.304192, 33.375145, 42.529091>,  <39.119976, 33.663620, 42.736084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304192, 33.375145, 42.529091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037424, 0.598244, -0.800440,
		0.886849, 0.349269, 0.302505,
		0.460541, -0.721190, -0.517481,
		39.442352, 33.158787, 42.373848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852238, 33.964424, 42.487099>,  <39.119976, 33.663620, 42.736084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852238, 33.964424, 42.487099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.662617, 33.688786, 42.267857>,  <39.548843, 33.523403, 42.136311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.662617, 33.688786, 42.267857>,  <39.852238, 33.964424, 42.487099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662617, 33.688786, 42.267857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160811, 0.679788, -0.715561,
		0.865688, -0.251070, -0.433068,
		-0.474051, -0.689095, -0.548110,
		39.520401, 33.482056, 42.103424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581146, 34.103111, 42.550735>,  <39.852238, 33.964424, 42.487099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581146, 34.103111, 42.550735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.972145, 34.187374, 42.546288>,  <41.206745, 34.237934, 42.543617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.972145, 34.187374, 42.546288>,  <40.581146, 34.103111, 42.550735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972145, 34.187374, 42.546288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049230, -0.176524, 0.983064,
		0.205130, -0.961489, -0.182923,
		0.977495, 0.210661, -0.011124,
		41.265392, 34.250572, 42.542950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986183, 33.493641, 42.947594>,  <40.581146, 34.103111, 42.550735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986183, 33.493641, 42.947594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.205322, 33.828194, 42.954849>,  <41.336807, 34.028923, 42.959202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.205322, 33.828194, 42.954849>,  <40.986183, 33.493641, 42.947594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205322, 33.828194, 42.954849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205757, -0.155726, 0.966133,
		0.810878, -0.525567, -0.257405,
		0.547852, 0.836379, 0.018136,
		41.369678, 34.079105, 42.960289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504272, 33.322437, 43.415920>,  <40.986183, 33.493641, 42.947594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504272, 33.322437, 43.415920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.536682, 33.718952, 43.374378>,  <41.556126, 33.956860, 43.349453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.536682, 33.718952, 43.374378>,  <41.504272, 33.322437, 43.415920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536682, 33.718952, 43.374378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078681, 0.097512, 0.992119,
		0.993602, -0.088554, -0.070095,
		0.081021, 0.991287, -0.103855,
		41.560989, 34.016338, 43.343220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073776, 33.449291, 43.706284>,  <41.504272, 33.322437, 43.415920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073776, 33.449291, 43.706284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.884701, 33.801334, 43.724026>,  <41.771255, 34.012562, 43.734673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.884701, 33.801334, 43.724026>,  <42.073776, 33.449291, 43.706284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884701, 33.801334, 43.724026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160776, 0.036640, 0.986311,
		0.866439, 0.473350, -0.158820,
		-0.472690, 0.880112, 0.044357,
		41.742893, 34.065369, 43.737331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570892, 33.908501, 44.050438>,  <42.073776, 33.449291, 43.706284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570892, 33.908501, 44.050438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.228424, 34.109119, 44.100109>,  <42.022942, 34.229488, 44.129910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.228424, 34.109119, 44.100109>,  <42.570892, 33.908501, 44.050438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228424, 34.109119, 44.100109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222330, 0.140674, 0.964769,
		0.466405, 0.853619, -0.231949,
		-0.856175, 0.501543, 0.124174,
		41.971573, 34.259583, 44.137360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675877, 34.530464, 44.374653>,  <42.570892, 33.908501, 44.050438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675877, 34.530464, 44.374653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.292141, 34.455833, 44.459377>,  <42.061901, 34.411053, 44.510212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.292141, 34.455833, 44.459377>,  <42.675877, 34.530464, 44.374653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292141, 34.455833, 44.459377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165050, 0.237959, 0.957149,
		-0.228988, 0.953186, -0.197487,
		-0.959335, -0.186580, 0.211813,
		42.004341, 34.399860, 44.522923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634567, 34.947227, 44.904331>,  <42.675877, 34.530464, 44.374653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634567, 34.947227, 44.904331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.322922, 34.696690, 44.914734>,  <42.135933, 34.546368, 44.920975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.322922, 34.696690, 44.914734>,  <42.634567, 34.947227, 44.904331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322922, 34.696690, 44.914734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065647, 0.122772, 0.990261,
		-0.623436, 0.769819, -0.136771,
		-0.779114, -0.626343, 0.026004,
		42.089188, 34.508785, 44.922535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155567, 35.306694, 45.321629>,  <42.634567, 34.947227, 44.904331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155567, 35.306694, 45.321629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.061245, 34.917976, 45.320805>,  <42.004650, 34.684746, 45.320309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.061245, 34.917976, 45.320805>,  <42.155567, 35.306694, 45.321629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061245, 34.917976, 45.320805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021205, -0.007268, 0.999749,
		-0.971568, 0.235707, 0.022321,
		-0.235810, -0.971797, -0.002063,
		41.990501, 34.626438, 45.320187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557884, 35.277752, 45.787155>,  <42.155567, 35.306694, 45.321629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557884, 35.277752, 45.787155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.744938, 34.924671, 45.768566>,  <41.857170, 34.712822, 45.757412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.744938, 34.924671, 45.768566>,  <41.557884, 35.277752, 45.787155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744938, 34.924671, 45.768566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130313, 0.016844, 0.991330,
		-0.874266, -0.469631, 0.122904,
		0.467630, -0.882702, -0.046473,
		41.885227, 34.659859, 45.754623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400314, 34.951714, 46.398102>,  <41.557884, 35.277752, 45.787155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400314, 34.951714, 46.398102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.699039, 34.711899, 46.282986>,  <41.878277, 34.568008, 46.213917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.699039, 34.711899, 46.282986>,  <41.400314, 34.951714, 46.398102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699039, 34.711899, 46.282986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213224, -0.194032, 0.957542,
		-0.629922, -0.776471, -0.017070,
		0.746815, -0.599537, -0.287787,
		41.923084, 34.532036, 46.196648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379940, 34.409203, 46.763268>,  <41.400314, 34.951714, 46.398102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379940, 34.409203, 46.763268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.763512, 34.410896, 46.649822>,  <41.993656, 34.411915, 46.581753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.763512, 34.410896, 46.649822>,  <41.379940, 34.409203, 46.763268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763512, 34.410896, 46.649822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282185, -0.115613, 0.952368,
		-0.028753, -0.993285, -0.112061,
		0.958929, 0.004239, -0.283615,
		42.051189, 34.412167, 46.564739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713356, 33.892262, 47.260780>,  <41.379940, 34.409203, 46.763268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713356, 33.892262, 47.260780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.986980, 34.134624, 47.098328>,  <42.151154, 34.280041, 47.000858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.986980, 34.134624, 47.098328>,  <41.713356, 33.892262, 47.260780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986980, 34.134624, 47.098328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522817, -0.019017, 0.852233,
		0.508648, -0.795311, -0.329785,
		0.684062, 0.605904, -0.406129,
		42.192200, 34.316395, 46.976490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446659, 33.566612, 47.344891>,  <41.713356, 33.892262, 47.260780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446659, 33.566612, 47.344891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.498253, 33.961491, 47.307358>,  <42.529209, 34.198418, 47.284840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.498253, 33.961491, 47.307358>,  <42.446659, 33.566612, 47.344891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498253, 33.961491, 47.307358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598885, -0.002133, 0.800832,
		0.790380, -0.159485, -0.591493,
		0.128982, 0.987198, -0.093828,
		42.536949, 34.257648, 47.279209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961281, 33.602592, 47.738136>,  <42.446659, 33.566612, 47.344891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961281, 33.602592, 47.738136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.861816, 33.984413, 47.672421>,  <42.802139, 34.213505, 47.632992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.861816, 33.984413, 47.672421>,  <42.961281, 33.602592, 47.738136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861816, 33.984413, 47.672421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446844, 0.263543, 0.854913,
		0.859360, 0.139168, -0.492070,
		-0.248658, 0.954556, -0.164293,
		42.787220, 34.270779, 47.623135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.097248, 36.497784, 47.708118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.483624, 36.444904, 47.619141>,  <35.715450, 36.413177, 47.565754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.483624, 36.444904, 47.619141>,  <35.097248, 36.497784, 47.708118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483624, 36.444904, 47.619141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185904, 0.243438, -0.951933,
		0.179999, 0.960864, 0.210570,
		0.965940, -0.132201, -0.222447,
		35.773407, 36.405243, 47.552406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056877, 37.025543, 47.284618>,  <35.097248, 36.497784, 47.708118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056877, 37.025543, 47.284618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.396351, 36.819820, 47.235271>,  <35.600037, 36.696384, 47.205662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.396351, 36.819820, 47.235271>,  <35.056877, 37.025543, 47.284618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396351, 36.819820, 47.235271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100421, 0.072317, -0.992313,
		0.519280, 0.854549, 0.009727,
		0.848684, -0.514311, -0.123368,
		35.650955, 36.665527, 47.198261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488216, 37.436684, 46.830391>,  <35.056877, 37.025543, 47.284618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488216, 37.436684, 46.830391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.629524, 37.063698, 46.800144>,  <35.714310, 36.839909, 46.781998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.629524, 37.063698, 46.800144>,  <35.488216, 37.436684, 46.830391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629524, 37.063698, 46.800144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002877, 0.081906, -0.996636,
		0.935517, 0.351863, 0.031618,
		0.353269, -0.932461, -0.075612,
		35.735504, 36.783958, 46.777462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984390, 37.486969, 46.315132>,  <35.488216, 37.436684, 46.830391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984390, 37.486969, 46.315132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.926655, 37.091751, 46.336784>,  <35.892014, 36.854618, 46.349773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.926655, 37.091751, 46.336784>,  <35.984390, 37.486969, 46.315132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926655, 37.091751, 46.336784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123808, -0.072302, -0.989669,
		0.981753, -0.136146, 0.132764,
		-0.144339, -0.988047, 0.054127,
		35.883354, 36.795338, 46.353024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430458, 37.227001, 45.859478>,  <35.984390, 37.486969, 46.315132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430458, 37.227001, 45.859478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.151554, 36.946774, 45.920177>,  <35.984211, 36.778637, 45.956596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.151554, 36.946774, 45.920177>,  <36.430458, 37.227001, 45.859478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151554, 36.946774, 45.920177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021583, -0.191080, -0.981337,
		0.716492, -0.687524, 0.118112,
		-0.697262, -0.700570, 0.151746,
		35.942375, 36.736603, 45.965702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832703, 36.540573, 45.735523>,  <36.430458, 37.227001, 45.859478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832703, 36.540573, 45.735523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.435268, 36.534790, 45.690670>,  <36.196808, 36.531319, 45.663757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.435268, 36.534790, 45.690670>,  <36.832703, 36.540573, 45.735523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435268, 36.534790, 45.690670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110058, -0.350733, -0.929986,
		-0.025883, -0.936364, 0.350075,
		-0.993588, -0.014458, -0.112132,
		36.137192, 36.530453, 45.657032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792946, 35.924126, 45.382401>,  <36.832703, 36.540573, 45.735523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792946, 35.924126, 45.382401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.439529, 36.105370, 45.334995>,  <36.227478, 36.214115, 45.306553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.439529, 36.105370, 45.334995>,  <36.792946, 35.924126, 45.382401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439529, 36.105370, 45.334995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040879, -0.326680, -0.944250,
		-0.466568, -0.829439, 0.307158,
		-0.883540, 0.453113, -0.118512,
		36.174469, 36.241302, 45.299442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402576, 35.372669, 45.111252>,  <36.792946, 35.924126, 45.382401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402576, 35.372669, 45.111252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.241066, 35.726498, 45.017872>,  <36.144161, 35.938797, 44.961845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.241066, 35.726498, 45.017872>,  <36.402576, 35.372669, 45.111252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241066, 35.726498, 45.017872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012135, -0.249972, -0.968177,
		-0.914779, -0.393757, 0.090198,
		-0.403773, 0.884573, -0.233447,
		36.119934, 35.991871, 44.947838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895756, 35.258472, 44.608505>,  <36.402576, 35.372669, 45.111252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895756, 35.258472, 44.608505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.987366, 35.644848, 44.560322>,  <36.042332, 35.876675, 44.531414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.987366, 35.644848, 44.560322>,  <35.895756, 35.258472, 44.608505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987366, 35.644848, 44.560322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002740, -0.124384, -0.992230,
		-0.973416, 0.226917, -0.031134,
		0.229027, 0.965939, -0.120455,
		36.056072, 35.934631, 44.524185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484333, 35.477669, 44.169224>,  <35.895756, 35.258472, 44.608505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484333, 35.477669, 44.169224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.776970, 35.747398, 44.129105>,  <35.952553, 35.909237, 44.105034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.776970, 35.747398, 44.129105>,  <35.484333, 35.477669, 44.169224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776970, 35.747398, 44.129105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022703, -0.171143, -0.984985,
		-0.681364, 0.718330, -0.140516,
		0.731592, 0.674323, -0.100302,
		35.996449, 35.949696, 44.099014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364052, 35.828392, 43.546494>,  <35.484333, 35.477669, 44.169224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364052, 35.828392, 43.546494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.751369, 35.920090, 43.586182>,  <35.983761, 35.975109, 43.609997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.751369, 35.920090, 43.586182>,  <35.364052, 35.828392, 43.546494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751369, 35.920090, 43.586182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081123, 0.087097, -0.992891,
		-0.236259, 0.969464, 0.065739,
		0.968298, 0.229247, 0.099223,
		36.041859, 35.988865, 43.615948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516445, 36.460747, 43.159721>,  <35.364052, 35.828392, 43.546494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516445, 36.460747, 43.159721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.865776, 36.271420, 43.205807>,  <36.075375, 36.157825, 43.233456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.865776, 36.271420, 43.205807>,  <35.516445, 36.460747, 43.159721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865776, 36.271420, 43.205807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222589, 0.177358, -0.958644,
		0.433308, 0.862854, 0.260246,
		0.873326, -0.473316, 0.115211,
		36.127773, 36.129425, 43.240372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059986, 36.862522, 42.801186>,  <35.516445, 36.460747, 43.159721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059986, 36.862522, 42.801186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.202770, 36.488892, 42.797485>,  <36.288441, 36.264713, 42.795265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.202770, 36.488892, 42.797485>,  <36.059986, 36.862522, 42.801186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202770, 36.488892, 42.797485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041035, 0.025576, -0.998830,
		0.933217, 0.356164, 0.047460,
		0.356961, -0.934073, -0.009253,
		36.309860, 36.208668, 42.794708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659760, 36.887558, 42.350822>,  <36.059986, 36.862522, 42.801186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659760, 36.887558, 42.350822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.521851, 36.513817, 42.386868>,  <36.439106, 36.289574, 42.408497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.521851, 36.513817, 42.386868>,  <36.659760, 36.887558, 42.350822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521851, 36.513817, 42.386868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007799, -0.098849, -0.995072,
		0.938655, -0.342369, 0.041367,
		-0.344771, -0.934351, 0.090114,
		36.418419, 36.233513, 42.413902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444305, 36.906216, 42.446991>,  <36.659760, 36.887558, 42.350822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444305, 36.906216, 42.446991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.679539, 37.224499, 42.389000>,  <37.820679, 37.415466, 42.354206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.679539, 37.224499, 42.389000>,  <37.444305, 36.906216, 42.446991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679539, 37.224499, 42.389000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066238, 0.226025, 0.971867,
		0.806086, -0.561933, 0.185627,
		0.588080, 0.795703, -0.144974,
		37.855965, 37.463211, 42.345509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005047, 36.906906, 42.875660>,  <37.444305, 36.906216, 42.446991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005047, 36.906906, 42.875660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.968636, 37.296692, 42.793545>,  <37.946789, 37.530563, 42.744278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.968636, 37.296692, 42.793545>,  <38.005047, 36.906906, 42.875660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968636, 37.296692, 42.793545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145753, 0.190882, 0.970732,
		0.985124, 0.118285, 0.124654,
		-0.091029, 0.974460, -0.205283,
		37.941326, 37.589031, 42.731960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441803, 37.408279, 43.425903>,  <38.005047, 36.906906, 42.875660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441803, 37.408279, 43.425903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.158012, 37.636108, 43.259895>,  <37.987740, 37.772804, 43.160290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.158012, 37.636108, 43.259895>,  <38.441803, 37.408279, 43.425903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158012, 37.636108, 43.259895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164039, 0.439255, 0.883259,
		0.685376, 0.694727, -0.218208,
		-0.709472, 0.569570, -0.415017,
		37.945171, 37.806980, 43.135391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568981, 38.068806, 43.629593>,  <38.441803, 37.408279, 43.425903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568981, 38.068806, 43.629593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.186764, 38.099861, 43.515820>,  <37.957432, 38.118492, 43.447556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.186764, 38.099861, 43.515820>,  <38.568981, 38.068806, 43.629593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186764, 38.099861, 43.515820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168229, 0.648683, 0.742233,
		0.242129, 0.757088, -0.606787,
		-0.955548, 0.077637, -0.284429,
		37.900101, 38.123154, 43.430492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481941, 38.785946, 43.597599>,  <38.568981, 38.068806, 43.629593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481941, 38.785946, 43.597599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.114239, 38.630264, 43.621204>,  <37.893616, 38.536858, 43.635368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.114239, 38.630264, 43.621204>,  <38.481941, 38.785946, 43.597599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114239, 38.630264, 43.621204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196803, 0.584220, 0.787373,
		-0.340925, 0.712186, -0.613646,
		-0.919260, -0.389202, 0.059015,
		37.838459, 38.513504, 43.638908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988552, 39.367325, 43.562855>,  <38.481941, 38.785946, 43.597599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988552, 39.367325, 43.562855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.789513, 39.073677, 43.747662>,  <37.670090, 38.897488, 43.858547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.789513, 39.073677, 43.747662>,  <37.988552, 39.367325, 43.562855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789513, 39.073677, 43.747662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284648, 0.641347, 0.712495,
		-0.819371, 0.223026, -0.528101,
		-0.497601, -0.734120, 0.462017,
		37.640232, 38.853439, 43.886269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630157, 39.690708, 44.012196>,  <37.988552, 39.367325, 43.562855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630157, 39.690708, 44.012196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.604149, 39.314049, 44.144295>,  <37.588543, 39.088051, 44.223553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.604149, 39.314049, 44.144295>,  <37.630157, 39.690708, 44.012196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604149, 39.314049, 44.144295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152014, 0.336433, 0.929357,
		-0.986237, 0.010228, -0.165021,
		-0.065024, -0.941652, 0.330248,
		37.584641, 39.031551, 44.243370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247486, 39.853043, 44.583668>,  <37.630157, 39.690708, 44.012196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247486, 39.853043, 44.583668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.383080, 39.482590, 44.649834>,  <37.464436, 39.260319, 44.689533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.383080, 39.482590, 44.649834>,  <37.247486, 39.853043, 44.583668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383080, 39.482590, 44.649834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000340, 0.175704, 0.984443,
		-0.940792, -0.333766, 0.059246,
		0.338984, -0.926136, 0.165415,
		37.484776, 39.204750, 44.699459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863880, 39.543602, 45.236027>,  <37.247486, 39.853043, 44.583668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863880, 39.543602, 45.236027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.190067, 39.315868, 45.194313>,  <37.385780, 39.179230, 45.169285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.190067, 39.315868, 45.194313>,  <36.863880, 39.543602, 45.236027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190067, 39.315868, 45.194313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109389, -0.025336, 0.993676,
		-0.568373, -0.821717, 0.041618,
		0.815467, -0.569331, -0.104287,
		37.434708, 39.145069, 45.163029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716290, 38.962772, 45.662674>,  <36.863880, 39.543602, 45.236027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716290, 38.962772, 45.662674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.113277, 38.977825, 45.616032>,  <37.351471, 38.986858, 45.588047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.113277, 38.977825, 45.616032>,  <36.716290, 38.962772, 45.662674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113277, 38.977825, 45.616032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120222, -0.482775, 0.867453,
		-0.023650, -0.874936, -0.483662,
		0.992465, 0.037632, -0.116604,
		37.411018, 38.989113, 45.581051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908562, 38.248753, 45.828724>,  <36.716290, 38.962772, 45.662674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908562, 38.248753, 45.828724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.228386, 38.487125, 45.858559>,  <37.420280, 38.630150, 45.876461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.228386, 38.487125, 45.858559>,  <36.908562, 38.248753, 45.828724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228386, 38.487125, 45.858559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274851, -0.473503, 0.836810,
		0.534005, -0.648579, -0.542388,
		0.799560, 0.595937, 0.074590,
		37.468254, 38.665905, 45.880936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359581, 37.816536, 45.993076>,  <36.908562, 38.248753, 45.828724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359581, 37.816536, 45.993076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.522861, 38.163784, 46.106022>,  <37.620831, 38.372135, 46.173790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.522861, 38.163784, 46.106022>,  <37.359581, 37.816536, 45.993076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522861, 38.163784, 46.106022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208722, -0.389868, 0.896905,
		0.888710, -0.307184, -0.340342,
		0.408203, 0.868125, 0.282364,
		37.645321, 38.424221, 46.190731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983105, 37.554428, 46.147041>,  <37.359581, 37.816536, 45.993076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983105, 37.554428, 46.147041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.935120, 37.910103, 46.323658>,  <37.906330, 38.123508, 46.429626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.935120, 37.910103, 46.323658>,  <37.983105, 37.554428, 46.147041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935120, 37.910103, 46.323658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274161, -0.397786, 0.875558,
		0.954172, 0.226088, -0.196060,
		-0.119963, 0.889186, 0.441540,
		37.899132, 38.176857, 46.456120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676025, 37.840225, 46.458862>,  <37.983105, 37.554428, 46.147041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676025, 37.840225, 46.458862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.344990, 37.958065, 46.649986>,  <38.146366, 38.028770, 46.764660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.344990, 37.958065, 46.649986>,  <38.676025, 37.840225, 46.458862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344990, 37.958065, 46.649986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261168, -0.551389, 0.792314,
		0.496875, 0.780501, 0.379384,
		-0.827591, 0.294598, 0.477813,
		38.096714, 38.046444, 46.793331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141090, 38.506245, 46.712238>,  <38.676025, 37.840225, 46.458862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141090, 38.506245, 46.712238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.457096, 38.264210, 46.672733>,  <39.646698, 38.118988, 46.649033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.457096, 38.264210, 46.672733>,  <39.141090, 38.506245, 46.712238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457096, 38.264210, 46.672733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031966, 0.120211, -0.992234,
		0.612259, 0.787032, 0.075626,
		0.790011, -0.605087, -0.098758,
		39.694099, 38.082684, 46.643105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619446, 38.999096, 46.281101>,  <39.141090, 38.506245, 46.712238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619446, 38.999096, 46.281101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.778873, 38.632248, 46.278984>,  <39.874531, 38.412140, 46.277714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.778873, 38.632248, 46.278984>,  <39.619446, 38.999096, 46.281101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778873, 38.632248, 46.278984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261350, 0.119104, -0.957868,
		0.879111, 0.380397, 0.287161,
		0.398572, -0.917122, -0.005289,
		39.898445, 38.357113, 46.277397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324169, 39.084995, 45.976696>,  <39.619446, 38.999096, 46.281101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324169, 39.084995, 45.976696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.196865, 38.710041, 45.920105>,  <40.120483, 38.485069, 45.886150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.196865, 38.710041, 45.920105>,  <40.324169, 39.084995, 45.976696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196865, 38.710041, 45.920105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323656, 0.032831, -0.945605,
		0.891042, -0.346741, 0.292942,
		-0.318262, -0.937386, -0.141478,
		40.101387, 38.428825, 45.877663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931267, 38.708767, 45.656857>,  <40.324169, 39.084995, 45.976696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931267, 38.708767, 45.656857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.608246, 38.492233, 45.563210>,  <40.414433, 38.362312, 45.507023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.608246, 38.492233, 45.563210>,  <40.931267, 38.708767, 45.656857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608246, 38.492233, 45.563210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358969, -0.136168, -0.923363,
		0.467967, -0.829709, 0.304285,
		-0.807557, -0.541332, -0.234118,
		40.365978, 38.329834, 45.492973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121407, 38.110542, 45.382935>,  <40.931267, 38.708767, 45.656857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121407, 38.110542, 45.382935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.752895, 38.079426, 45.230515>,  <40.531788, 38.060757, 45.139061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.752895, 38.079426, 45.230515>,  <41.121407, 38.110542, 45.382935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752895, 38.079426, 45.230515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386600, -0.289823, -0.875525,
		-0.042330, -0.953914, 0.297081,
		-0.921276, -0.077790, -0.381051,
		40.476513, 38.056087, 45.116199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111900, 37.513371, 45.023411>,  <41.121407, 38.110542, 45.382935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111900, 37.513371, 45.023411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.799725, 37.706337, 44.864319>,  <40.612419, 37.822117, 44.768864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.799725, 37.706337, 44.864319>,  <41.111900, 37.513371, 45.023411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799725, 37.706337, 44.864319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323670, -0.232531, -0.917152,
		-0.534936, -0.844513, 0.025331,
		-0.780437, 0.482418, -0.397733,
		40.565594, 37.851063, 44.744999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849636, 37.073078, 44.467041>,  <41.111900, 37.513371, 45.023411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849636, 37.073078, 44.467041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.671467, 37.418037, 44.370823>,  <40.564564, 37.625015, 44.313091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.671467, 37.418037, 44.370823>,  <40.849636, 37.073078, 44.467041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671467, 37.418037, 44.370823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189557, -0.171741, -0.966733,
		-0.875024, -0.476201, -0.086977,
		-0.445422, 0.862402, -0.240544,
		40.537842, 37.676758, 44.298660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325317, 36.955219, 43.901684>,  <40.849636, 37.073078, 44.467041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325317, 36.955219, 43.901684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.429050, 37.341206, 43.885750>,  <40.491291, 37.572796, 43.876190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.429050, 37.341206, 43.885750>,  <40.325317, 36.955219, 43.901684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429050, 37.341206, 43.885750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071239, -0.060250, -0.995638,
		-0.963157, 0.255363, -0.084368,
		0.259332, 0.964966, -0.039839,
		40.506851, 37.630695, 43.873798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997387, 37.289558, 43.305717>,  <40.325317, 36.955219, 43.901684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997387, 37.289558, 43.305717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.312344, 37.515263, 43.405022>,  <40.501316, 37.650684, 43.464603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.312344, 37.515263, 43.405022>,  <39.997387, 37.289558, 43.305717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312344, 37.515263, 43.405022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229130, 0.105981, -0.967609,
		-0.572294, 0.818766, -0.045841,
		0.787387, 0.564260, 0.248256,
		40.548561, 37.684540, 43.479500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962875, 37.835617, 42.813141>,  <39.997387, 37.289558, 43.305717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962875, 37.835617, 42.813141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.340183, 37.857780, 42.944092>,  <40.566566, 37.871078, 43.022663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.340183, 37.857780, 42.944092>,  <39.962875, 37.835617, 42.813141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340183, 37.857780, 42.944092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315634, 0.156407, -0.935902,
		-0.103062, 0.986137, 0.130045,
		0.943267, 0.055409, 0.327378,
		40.623165, 37.874405, 43.042305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314865, 38.484470, 42.513870>,  <39.962875, 37.835617, 42.813141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314865, 38.484470, 42.513870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.603989, 38.230507, 42.622997>,  <40.777462, 38.078129, 42.688473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.603989, 38.230507, 42.622997>,  <40.314865, 38.484470, 42.513870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603989, 38.230507, 42.622997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392998, 0.052946, -0.918014,
		0.568414, 0.770768, 0.287789,
		0.722813, -0.634912, 0.272815,
		40.820831, 38.040031, 42.704842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928703, 38.775330, 42.254684>,  <40.314865, 38.484470, 42.513870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928703, 38.775330, 42.254684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.979233, 38.381382, 42.302143>,  <41.009548, 38.145012, 42.330616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.979233, 38.381382, 42.302143>,  <40.928703, 38.775330, 42.254684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979233, 38.381382, 42.302143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418138, -0.055592, -0.906681,
		0.899557, 0.164143, 0.404789,
		0.126322, -0.984869, 0.118643,
		41.017128, 38.085922, 42.337734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511246, 38.677631, 41.990089>,  <40.928703, 38.775330, 42.254684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511246, 38.677631, 41.990089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.396179, 38.294540, 41.989548>,  <41.327141, 38.064686, 41.989223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.396179, 38.294540, 41.989548>,  <41.511246, 38.677631, 41.990089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396179, 38.294540, 41.989548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363446, -0.107855, -0.925351,
		0.886089, -0.266687, 0.379109,
		-0.287668, -0.957729, -0.001357,
		41.309879, 38.007221, 41.989140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127487, 38.232746, 41.893925>,  <41.511246, 38.677631, 41.990089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127487, 38.232746, 41.893925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.780148, 38.074413, 41.774403>,  <41.571743, 37.979412, 41.702690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.780148, 38.074413, 41.774403>,  <42.127487, 38.232746, 41.893925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780148, 38.074413, 41.774403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388193, -0.167497, -0.906229,
		0.308667, -0.902918, 0.299106,
		-0.868349, -0.395834, -0.298806,
		41.519642, 37.955662, 41.684761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.557177, 26.622499, 37.678669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.254915, 26.761698, 37.900620>,  <28.073559, 26.845217, 38.033791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.254915, 26.761698, 37.900620>,  <28.557177, 26.622499, 37.678669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254915, 26.761698, 37.900620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228418, 0.653970, -0.721213,
		-0.613853, -0.671730, -0.414685,
		-0.755652, 0.347997, 0.554876,
		28.028219, 26.866096, 38.067081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952209, 26.648260, 37.246609>,  <28.557177, 26.622499, 37.678669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952209, 26.648260, 37.246609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.874151, 26.921152, 37.528454>,  <27.827316, 27.084887, 37.697559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.874151, 26.921152, 37.528454>,  <27.952209, 26.648260, 37.246609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874151, 26.921152, 37.528454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346568, 0.624111, -0.700268,
		-0.917501, -0.380851, 0.114646,
		-0.195146, 0.682230, 0.704614,
		27.815607, 27.125820, 37.739838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398237, 26.969671, 37.016079>,  <27.952209, 26.648260, 37.246609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398237, 26.969671, 37.016079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.529734, 27.237488, 37.282505>,  <27.608631, 27.398178, 37.442360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.529734, 27.237488, 37.282505>,  <27.398237, 26.969671, 37.016079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.529734, 27.237488, 37.282505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259989, 0.742171, -0.617728,
		-0.907930, 0.029902, 0.418055,
		0.328739, 0.669543, 0.666065,
		27.628355, 27.438351, 37.482323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936565, 27.523092, 37.030384>,  <27.398237, 26.969671, 37.016079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936565, 27.523092, 37.030384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.246761, 27.720940, 37.187340>,  <27.432878, 27.839647, 37.281513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.246761, 27.720940, 37.187340>,  <26.936565, 27.523092, 37.030384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246761, 27.720940, 37.187340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238190, 0.804774, -0.543696,
		-0.584708, 0.328166, 0.741905,
		0.775488, 0.494618, 0.392392,
		27.479408, 27.869326, 37.305058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630823, 28.215328, 37.254498>,  <26.936565, 27.523092, 37.030384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630823, 28.215328, 37.254498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.020000, 28.298212, 37.213623>,  <27.253508, 28.347942, 37.189098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.020000, 28.298212, 37.213623>,  <26.630823, 28.215328, 37.254498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020000, 28.298212, 37.213623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230613, 0.844202, -0.483881,
		-0.013996, 0.494356, 0.869147,
		0.972945, 0.207209, -0.102190,
		27.311884, 28.360374, 37.182964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787367, 28.895811, 37.577126>,  <26.630823, 28.215328, 37.254498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787367, 28.895811, 37.577126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.122593, 28.832457, 37.368294>,  <27.323729, 28.794443, 37.242996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.122593, 28.832457, 37.368294>,  <26.787367, 28.895811, 37.577126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122593, 28.832457, 37.368294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067497, 0.919479, -0.387302,
		0.541382, 0.359822, 0.759891,
		0.838063, -0.158388, -0.522076,
		27.374012, 28.784941, 37.211670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156134, 29.536371, 37.619480>,  <26.787367, 28.895811, 37.577126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156134, 29.536371, 37.619480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.299742, 29.334660, 37.305332>,  <27.385906, 29.213633, 37.116844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.299742, 29.334660, 37.305332>,  <27.156134, 29.536371, 37.619480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299742, 29.334660, 37.305332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027697, 0.835346, -0.549027,
		0.932919, 0.218864, 0.285939,
		0.359020, -0.504278, -0.785371,
		27.407448, 29.183376, 37.069721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539795, 30.011293, 37.402195>,  <27.156134, 29.536371, 37.619480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539795, 30.011293, 37.402195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.478888, 29.762159, 37.095238>,  <27.442343, 29.612679, 36.911064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.478888, 29.762159, 37.095238>,  <27.539795, 30.011293, 37.402195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478888, 29.762159, 37.095238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129110, 0.757257, -0.640228,
		0.979870, -0.196564, -0.034892,
		-0.152268, -0.622835, -0.767392,
		27.433207, 29.575308, 36.865021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124952, 30.119579, 36.884174>,  <27.539795, 30.011293, 37.402195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124952, 30.119579, 36.884174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.792559, 29.977726, 36.712734>,  <27.593122, 29.892614, 36.609871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.792559, 29.977726, 36.712734>,  <28.124952, 30.119579, 36.884174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792559, 29.977726, 36.712734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038347, 0.732108, -0.680108,
		0.554972, -0.581595, -0.594772,
		-0.830985, -0.354633, -0.428602,
		27.543262, 29.871336, 36.584152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325500, 30.289452, 36.263496>,  <28.124952, 30.119579, 36.884174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325500, 30.289452, 36.263496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.930017, 30.229677, 36.267918>,  <27.692728, 30.193813, 36.270569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.930017, 30.229677, 36.267918>,  <28.325500, 30.289452, 36.263496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930017, 30.229677, 36.267918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128750, 0.809487, -0.572848,
		0.076660, -0.567802, -0.819587,
		-0.988710, -0.149436, 0.011049,
		27.633404, 30.184847, 36.271233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049585, 30.598230, 35.672729>,  <28.325500, 30.289452, 36.263496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049585, 30.598230, 35.672729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.721512, 30.568016, 35.899567>,  <27.524668, 30.549887, 36.035667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.721512, 30.568016, 35.899567>,  <28.049585, 30.598230, 35.672729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721512, 30.568016, 35.899567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350410, 0.849881, -0.393592,
		-0.452229, -0.521532, -0.723528,
		-0.820184, -0.075538, 0.567091,
		27.475456, 30.545355, 36.069695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397182, 30.466055, 35.253613>,  <28.049585, 30.598230, 35.672729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397182, 30.466055, 35.253613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.335011, 30.649540, 35.603569>,  <27.297709, 30.759630, 35.813541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.335011, 30.649540, 35.603569>,  <27.397182, 30.466055, 35.253613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335011, 30.649540, 35.603569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354579, 0.800725, -0.482819,
		-0.922017, -0.385260, 0.038194,
		-0.155427, 0.458710, 0.874887,
		27.288382, 30.787153, 35.866035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681204, 30.692711, 35.179932>,  <27.397182, 30.466055, 35.253613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681204, 30.692711, 35.179932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.870039, 30.893641, 35.469704>,  <26.983341, 31.014198, 35.643566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.870039, 30.893641, 35.469704>,  <26.681204, 30.692711, 35.179932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870039, 30.893641, 35.469704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364936, 0.859411, -0.358099,
		-0.802467, -0.095317, 0.589035,
		0.472090, 0.502322, 0.724433,
		27.011665, 31.044336, 35.687035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261070, 31.165043, 35.267025>,  <26.681204, 30.692711, 35.179932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261070, 31.165043, 35.267025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.575539, 31.333622, 35.447830>,  <26.764219, 31.434769, 35.556313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.575539, 31.333622, 35.447830>,  <26.261070, 31.165043, 35.267025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575539, 31.333622, 35.447830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402506, 0.904183, -0.142975,
		-0.468962, -0.069537, 0.880477,
		0.786170, 0.421446, 0.452017,
		26.811390, 31.460056, 35.583435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.001774, 31.675879, 35.669144>,  <26.261070, 31.165043, 35.267025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.001774, 31.675879, 35.669144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.381931, 31.800110, 35.662350>,  <26.610025, 31.874649, 35.658272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.381931, 31.800110, 35.662350>,  <26.001774, 31.675879, 35.669144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381931, 31.800110, 35.662350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310482, 0.950545, 0.008130,
		0.018673, -0.002453, 0.999823,
		0.950396, 0.310579, -0.016988,
		26.667049, 31.893284, 35.657253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102978, 32.276810, 36.077141>,  <26.001774, 31.675879, 35.669144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.102978, 32.276810, 36.077141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.394056, 32.292553, 35.803234>,  <26.568703, 32.301998, 35.638889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.394056, 32.292553, 35.803234>,  <26.102978, 32.276810, 36.077141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.394056, 32.292553, 35.803234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206117, 0.964756, -0.163588,
		0.654197, 0.260185, 0.710162,
		0.727696, 0.039357, -0.684770,
		26.612366, 32.304359, 35.597805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306349, 32.950485, 36.169029>,  <26.102978, 32.276810, 36.077141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.306349, 32.950485, 36.169029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.489515, 32.847549, 35.828655>,  <26.599415, 32.785786, 35.624432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.489515, 32.847549, 35.828655>,  <26.306349, 32.950485, 36.169029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489515, 32.847549, 35.828655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074201, 0.942781, -0.325052,
		0.885893, 0.211987, 0.412621,
		0.457918, -0.257344, -0.850932,
		26.626890, 32.770348, 35.573376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875027, 33.492424, 36.056290>,  <26.306349, 32.950485, 36.169029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875027, 33.492424, 36.056290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.829815, 33.337833, 35.690151>,  <26.802689, 33.245079, 35.470467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.829815, 33.337833, 35.690151>,  <26.875027, 33.492424, 36.056290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829815, 33.337833, 35.690151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106544, 0.911223, -0.397897,
		0.987863, -0.142498, -0.061818,
		-0.113029, -0.386481, -0.915345,
		26.795906, 33.221889, 35.415546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411066, 33.753448, 35.572884>,  <26.875027, 33.492424, 36.056290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411066, 33.753448, 35.572884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.111679, 33.623875, 35.341415>,  <26.932047, 33.546131, 35.202534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.111679, 33.623875, 35.341415>,  <27.411066, 33.753448, 35.572884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111679, 33.623875, 35.341415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010725, 0.866559, -0.498960,
		0.663084, -0.379662, -0.645117,
		-0.748468, -0.323933, -0.578673,
		26.887138, 33.526695, 35.167812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514877, 33.976650, 34.869457>,  <27.411066, 33.753448, 35.572884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.514877, 33.976650, 34.869457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.124121, 33.905354, 34.916641>,  <26.889668, 33.862576, 34.944950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.124121, 33.905354, 34.916641>,  <27.514877, 33.976650, 34.869457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124121, 33.905354, 34.916641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213645, 0.830673, -0.514139,
		-0.006345, -0.527459, -0.849557,
		-0.976891, -0.178241, 0.117959,
		26.831053, 33.851883, 34.952030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196373, 33.996571, 34.721329>,  <27.514877, 33.976650, 34.869457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196373, 33.996571, 34.721329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.570223, 34.085514, 34.832348>,  <28.794533, 34.138878, 34.898960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.570223, 34.085514, 34.832348>,  <28.196373, 33.996571, 34.721329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570223, 34.085514, 34.832348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053567, -0.683507, 0.727976,
		0.351574, -0.695253, -0.626912,
		0.934626, 0.222355, 0.277546,
		28.850611, 34.152222, 34.915611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549612, 33.360886, 34.875343>,  <28.196373, 33.996571, 34.721329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549612, 33.360886, 34.875343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.779648, 33.618420, 35.077232>,  <28.917669, 33.772942, 35.198364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.779648, 33.618420, 35.077232>,  <28.549612, 33.360886, 34.875343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779648, 33.618420, 35.077232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028270, -0.600943, 0.798792,
		0.817603, -0.473644, -0.327394,
		0.575088, 0.643839, 0.504722,
		28.952175, 33.811573, 35.228649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111176, 32.943481, 35.055771>,  <28.549612, 33.360886, 34.875343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111176, 32.943481, 35.055771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.101366, 33.257885, 35.302860>,  <29.095480, 33.446529, 35.451115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.101366, 33.257885, 35.302860>,  <29.111176, 32.943481, 35.055771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101366, 33.257885, 35.302860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196349, -0.602090, 0.773909,
		0.980227, 0.140270, -0.139566,
		-0.024525, 0.786011, 0.617727,
		29.094009, 33.493687, 35.488178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734137, 33.024445, 35.370129>,  <29.111176, 32.943481, 35.055771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734137, 33.024445, 35.370129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.474840, 33.169601, 35.637886>,  <29.319262, 33.256695, 35.798542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.474840, 33.169601, 35.637886>,  <29.734137, 33.024445, 35.370129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474840, 33.169601, 35.637886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278494, -0.705216, 0.652005,
		0.708677, 0.609080, 0.356087,
		-0.648242, 0.362893, 0.669396,
		29.280367, 33.278469, 35.838703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979216, 32.855938, 35.959724>,  <29.734137, 33.024445, 35.370129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979216, 32.855938, 35.959724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.631924, 32.979633, 36.114925>,  <29.423548, 33.053852, 36.208046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.631924, 32.979633, 36.114925>,  <29.979216, 32.855938, 35.959724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631924, 32.979633, 36.114925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149703, -0.582296, 0.799075,
		0.473040, 0.751866, 0.459272,
		-0.868229, 0.309240, 0.388006,
		29.371454, 33.072407, 36.231327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159487, 33.199409, 36.684906>,  <29.979216, 32.855938, 35.959724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159487, 33.199409, 36.684906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.765795, 33.129818, 36.697716>,  <29.529579, 33.088062, 36.705402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.765795, 33.129818, 36.697716>,  <30.159487, 33.199409, 36.684906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765795, 33.129818, 36.697716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099300, -0.393551, 0.913924,
		-0.146400, 0.902690, 0.404620,
		-0.984229, -0.173977, 0.032022,
		29.470526, 33.077625, 36.707321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877146, 33.481537, 37.325367>,  <30.159487, 33.199409, 36.684906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877146, 33.481537, 37.325367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.599047, 33.213146, 37.222279>,  <29.432188, 33.052113, 37.160427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.599047, 33.213146, 37.222279>,  <29.877146, 33.481537, 37.325367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599047, 33.213146, 37.222279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063478, -0.414477, 0.907843,
		-0.715961, 0.614817, 0.330756,
		-0.695248, -0.670976, -0.257723,
		29.390472, 33.011852, 37.144962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313675, 33.452129, 37.878151>,  <29.877146, 33.481537, 37.325367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313675, 33.452129, 37.878151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.298815, 33.108238, 37.674389>,  <29.289900, 32.901905, 37.552132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.298815, 33.108238, 37.674389>,  <29.313675, 33.452129, 37.878151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298815, 33.108238, 37.674389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300154, -0.476615, 0.826284,
		-0.953167, 0.183595, -0.240345,
		-0.037150, -0.859727, -0.509401,
		29.287670, 32.850319, 37.521568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761589, 33.083096, 38.246754>,  <29.313675, 33.452129, 37.878151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761589, 33.083096, 38.246754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.943188, 32.783264, 38.054077>,  <29.052147, 32.603367, 37.938473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.943188, 32.783264, 38.054077>,  <28.761589, 33.083096, 38.246754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943188, 32.783264, 38.054077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181359, -0.607038, 0.773701,
		-0.872350, -0.263900, -0.411536,
		0.453998, -0.749574, -0.481689,
		29.079388, 32.558392, 37.909569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407612, 32.478584, 38.468346>,  <28.761589, 33.083096, 38.246754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407612, 32.478584, 38.468346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.748217, 32.340748, 38.310265>,  <28.952579, 32.258045, 38.215416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.748217, 32.340748, 38.310265>,  <28.407612, 32.478584, 38.468346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748217, 32.340748, 38.310265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051498, -0.805038, 0.590984,
		-0.521796, -0.482879, -0.703247,
		0.851514, -0.344589, -0.395199,
		29.003672, 32.237370, 38.191704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294744, 31.864824, 38.168861>,  <28.407612, 32.478584, 38.468346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294744, 31.864824, 38.168861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.679461, 31.876116, 38.277790>,  <28.910290, 31.882891, 38.343147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.679461, 31.876116, 38.277790>,  <28.294744, 31.864824, 38.168861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679461, 31.876116, 38.277790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148757, -0.781159, 0.606352,
		0.229847, -0.623694, -0.747112,
		0.961791, 0.028230, 0.272326,
		28.967999, 31.884584, 38.359489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529509, 31.134184, 38.028484>,  <28.294744, 31.864824, 38.168861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529509, 31.134184, 38.028484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.808767, 31.293779, 38.266273>,  <28.976322, 31.389536, 38.408947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.808767, 31.293779, 38.266273>,  <28.529509, 31.134184, 38.028484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808767, 31.293779, 38.266273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018975, -0.819720, 0.572450,
		0.715702, -0.410935, -0.564715,
		0.698148, 0.398988, 0.594472,
		29.018211, 31.413475, 38.444614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007721, 30.586067, 38.108410>,  <28.529509, 31.134184, 38.028484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007721, 30.586067, 38.108410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.067755, 30.822123, 38.425701>,  <29.103775, 30.963757, 38.616077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.067755, 30.822123, 38.425701>,  <29.007721, 30.586067, 38.108410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067755, 30.822123, 38.425701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178341, -0.772994, 0.608830,
		0.972455, -0.232842, -0.010769,
		0.150086, 0.590139, 0.793227,
		29.112780, 30.999165, 38.663670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517666, 30.195566, 38.579823>,  <29.007721, 30.586067, 38.108410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517666, 30.195566, 38.579823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.308577, 30.469976, 38.782257>,  <29.183123, 30.634623, 38.903717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.308577, 30.469976, 38.782257>,  <29.517666, 30.195566, 38.579823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308577, 30.469976, 38.782257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196892, -0.674753, 0.711296,
		0.829455, 0.272165, 0.487782,
		-0.522722, 0.686028, 0.506090,
		29.151760, 30.675785, 38.934086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838598, 30.371254, 39.220806>,  <29.517666, 30.195566, 38.579823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838598, 30.371254, 39.220806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.447035, 30.433414, 39.273849>,  <29.212097, 30.470711, 39.305676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.447035, 30.433414, 39.273849>,  <29.838598, 30.371254, 39.220806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447035, 30.433414, 39.273849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039315, -0.780288, 0.624183,
		0.200475, 0.605806, 0.769941,
		-0.978910, 0.155403, 0.132611,
		29.153362, 30.480036, 39.313633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808474, 30.222166, 39.929108>,  <29.838598, 30.371254, 39.220806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808474, 30.222166, 39.929108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.430441, 30.192432, 39.801800>,  <29.203621, 30.174591, 39.725414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.430441, 30.192432, 39.801800>,  <29.808474, 30.222166, 39.929108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430441, 30.192432, 39.801800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125621, -0.816376, 0.563692,
		-0.301734, 0.572716, 0.762203,
		-0.945080, -0.074336, -0.318274,
		29.146917, 30.170132, 39.706318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432680, 30.064919, 40.501869>,  <29.808474, 30.222166, 39.929108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432680, 30.064919, 40.501869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.199974, 29.966963, 40.191624>,  <29.060350, 29.908190, 40.005474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.199974, 29.966963, 40.191624>,  <29.432680, 30.064919, 40.501869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199974, 29.966963, 40.191624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040687, -0.943642, 0.328456,
		-0.812339, 0.222641, 0.539014,
		-0.581764, -0.244887, -0.775616,
		29.025444, 29.893497, 39.958939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831783, 29.720995, 40.842167>,  <29.432680, 30.064919, 40.501869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831783, 29.720995, 40.842167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.827887, 29.590149, 40.464191>,  <28.825548, 29.511642, 40.237408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.827887, 29.590149, 40.464191>,  <28.831783, 29.720995, 40.842167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827887, 29.590149, 40.464191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253967, -0.913184, 0.318741,
		-0.967164, 0.243087, -0.074181,
		-0.009741, -0.327114, -0.944935,
		28.824965, 29.492014, 40.180710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209629, 29.312933, 40.756317>,  <28.831783, 29.720995, 40.842167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209629, 29.312933, 40.756317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.470985, 29.193052, 40.478249>,  <28.627800, 29.121124, 40.311409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.470985, 29.193052, 40.478249>,  <28.209629, 29.312933, 40.756317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470985, 29.193052, 40.478249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090631, -0.942659, 0.321215,
		-0.751575, -0.146876, -0.643088,
		0.653392, -0.299701, -0.695168,
		28.667004, 29.103142, 40.269699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975643, 28.610813, 40.727718>,  <28.209629, 29.312933, 40.756317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975643, 28.610813, 40.727718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.296446, 28.603462, 40.488907>,  <28.488928, 28.599051, 40.345619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.296446, 28.603462, 40.488907>,  <27.975643, 28.610813, 40.727718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296446, 28.603462, 40.488907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175976, -0.947894, 0.265574,
		-0.570803, -0.318055, -0.756984,
		0.802008, -0.018379, -0.597030,
		28.537048, 28.597948, 40.309799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815269, 28.099810, 40.309792>,  <27.975643, 28.610813, 40.727718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815269, 28.099810, 40.309792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.210079, 28.157166, 40.338703>,  <28.446964, 28.191580, 40.356049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.210079, 28.157166, 40.338703>,  <27.815269, 28.099810, 40.309792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210079, 28.157166, 40.338703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093732, -0.879955, 0.465719,
		0.130384, -0.452901, -0.881976,
		0.987023, 0.143392, 0.072280,
		28.506186, 28.200184, 40.360386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065392, 27.433792, 40.230431>,  <27.815269, 28.099810, 40.309792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065392, 27.433792, 40.230431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.366058, 27.646046, 40.387108>,  <28.546457, 27.773397, 40.481113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.366058, 27.646046, 40.387108>,  <28.065392, 27.433792, 40.230431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366058, 27.646046, 40.387108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224921, -0.764521, 0.604085,
		0.620008, -0.365970, -0.694015,
		0.751666, 0.530636, 0.391694,
		28.591558, 27.805237, 40.504616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.627880, 34.147835, 48.162327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.281120, 34.341385, 48.114410>,  <43.073067, 34.457516, 48.085659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.281120, 34.341385, 48.114410>,  <43.627880, 34.147835, 48.162327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281120, 34.341385, 48.114410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058786, 0.337876, 0.939353,
		0.495007, 0.807281, -0.321349,
		-0.866898, 0.483878, -0.119794,
		43.021049, 34.486549, 48.078472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866371, 34.753448, 48.581821>,  <43.627880, 34.147835, 48.162327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866371, 34.753448, 48.581821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.473316, 34.800751, 48.524635>,  <43.237484, 34.829132, 48.490322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.473316, 34.800751, 48.524635>,  <43.866371, 34.753448, 48.581821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473316, 34.800751, 48.524635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052824, 0.560341, 0.826576,
		0.177858, 0.819776, -0.544365,
		-0.982637, 0.118258, -0.142965,
		43.178524, 34.836227, 48.481747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674324, 35.408028, 48.818439>,  <43.866371, 34.753448, 48.581821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674324, 35.408028, 48.818439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.338322, 35.191006, 48.820129>,  <43.136719, 35.060791, 48.821144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.338322, 35.191006, 48.820129>,  <43.674324, 35.408028, 48.818439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338322, 35.191006, 48.820129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294323, 0.462194, 0.836511,
		-0.455808, 0.701433, -0.547934,
		-0.840008, -0.542558, 0.004224,
		43.086319, 35.028240, 48.821396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096676, 35.818649, 49.031937>,  <43.674324, 35.408028, 48.818439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096676, 35.818649, 49.031937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.959190, 35.454060, 49.122330>,  <42.876698, 35.235306, 49.176563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.959190, 35.454060, 49.122330>,  <43.096676, 35.818649, 49.031937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959190, 35.454060, 49.122330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380264, 0.355122, 0.853983,
		-0.858638, 0.207596, -0.468664,
		-0.343716, -0.911478, 0.225980,
		42.856075, 35.180614, 49.190125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362820, 35.913490, 49.282619>,  <43.096676, 35.818649, 49.031937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362820, 35.913490, 49.282619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.480488, 35.552917, 49.409668>,  <42.551090, 35.336575, 49.485897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.480488, 35.552917, 49.409668>,  <42.362820, 35.913490, 49.282619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480488, 35.552917, 49.409668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501178, 0.137479, 0.854354,
		-0.813808, -0.410512, -0.411335,
		0.294173, -0.901432, 0.317621,
		42.568741, 35.282490, 49.504955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786865, 35.476334, 49.382702>,  <42.362820, 35.913490, 49.282619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786865, 35.476334, 49.382702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.081928, 35.358849, 49.625877>,  <42.258965, 35.288357, 49.771782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.081928, 35.358849, 49.625877>,  <41.786865, 35.476334, 49.382702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081928, 35.358849, 49.625877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590645, 0.155518, 0.791804,
		-0.327113, -0.943156, -0.058764,
		0.737656, -0.293718, 0.607942,
		42.303226, 35.270733, 49.808262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440468, 35.053307, 49.887783>,  <41.786865, 35.476334, 49.382702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440468, 35.053307, 49.887783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.808449, 35.117485, 50.030861>,  <42.029236, 35.155991, 50.116707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.808449, 35.117485, 50.030861>,  <41.440468, 35.053307, 49.887783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808449, 35.117485, 50.030861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383305, 0.176674, 0.906567,
		0.082259, -0.971104, 0.224031,
		0.919952, 0.160445, 0.357696,
		42.084435, 35.165619, 50.138168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525352, 34.678593, 50.528774>,  <41.440468, 35.053307, 49.887783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525352, 34.678593, 50.528774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.809242, 34.955166, 50.582760>,  <41.979576, 35.121109, 50.615150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.809242, 34.955166, 50.582760>,  <41.525352, 34.678593, 50.528774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809242, 34.955166, 50.582760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242240, 0.059631, 0.968382,
		0.661522, -0.719977, 0.209814,
		0.709724, 0.691432, 0.134960,
		42.022160, 35.162594, 50.623249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848679, 34.448826, 51.164196>,  <41.525352, 34.678593, 50.528774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848679, 34.448826, 51.164196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.910976, 34.838490, 51.098759>,  <41.948357, 35.072289, 51.059498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.910976, 34.838490, 51.098759>,  <41.848679, 34.448826, 51.164196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910976, 34.838490, 51.098759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106827, 0.181250, 0.977617,
		0.982003, -0.134787, 0.132296,
		0.155749, 0.974156, -0.163589,
		41.957703, 35.130737, 51.049683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285652, 34.617622, 51.674046>,  <41.848679, 34.448826, 51.164196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285652, 34.617622, 51.674046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.125801, 34.963890, 51.553436>,  <42.029892, 35.171650, 51.481071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.125801, 34.963890, 51.553436>,  <42.285652, 34.617622, 51.674046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.125801, 34.963890, 51.553436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409505, 0.125694, 0.903608,
		0.820124, 0.484582, 0.304265,
		-0.399628, 0.865668, -0.301523,
		42.005913, 35.223591, 51.462978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181145, 34.978191, 52.350952>,  <42.285652, 34.617622, 51.674046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181145, 34.978191, 52.350952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.981686, 35.209412, 52.092587>,  <41.862011, 35.348145, 51.937565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.981686, 35.209412, 52.092587>,  <42.181145, 34.978191, 52.350952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981686, 35.209412, 52.092587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716719, 0.144144, 0.682303,
		0.487511, 0.803169, 0.342423,
		-0.498646, 0.578051, -0.645918,
		41.832092, 35.382828, 51.898811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983650, 35.614811, 52.730034>,  <42.181145, 34.978191, 52.350952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983650, 35.614811, 52.730034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.735214, 35.538475, 52.425972>,  <41.586151, 35.492676, 52.243534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.735214, 35.538475, 52.425972>,  <41.983650, 35.614811, 52.730034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735214, 35.538475, 52.425972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766678, -0.053335, 0.639813,
		-0.162643, 0.980172, -0.113185,
		-0.621090, -0.190838, -0.760150,
		41.548889, 35.481224, 52.197926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417252, 36.104061, 52.795513>,  <41.983650, 35.614811, 52.730034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417252, 36.104061, 52.795513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.332436, 35.751812, 52.626022>,  <41.281548, 35.540462, 52.524330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.332436, 35.751812, 52.626022>,  <41.417252, 36.104061, 52.795513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332436, 35.751812, 52.626022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743661, -0.135906, 0.654598,
		-0.634041, 0.453907, -0.626068,
		-0.212040, -0.880624, -0.423723,
		41.268826, 35.487625, 52.498905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724522, 35.998310, 52.507648>,  <41.417252, 36.104061, 52.795513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724522, 35.998310, 52.507648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.874405, 35.657795, 52.654560>,  <40.964336, 35.453484, 52.742706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.874405, 35.657795, 52.654560>,  <40.724522, 35.998310, 52.507648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874405, 35.657795, 52.654560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723590, -0.020844, 0.689915,
		-0.579663, -0.524279, -0.623797,
		0.374710, -0.851291, 0.367280,
		40.986816, 35.402409, 52.764744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607441, 36.753983, 52.348362>,  <40.724522, 35.998310, 52.507648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607441, 36.753983, 52.348362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.581661, 37.139008, 52.243046>,  <40.566193, 37.370022, 52.179855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.581661, 37.139008, 52.243046>,  <40.607441, 36.753983, 52.348362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581661, 37.139008, 52.243046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221529, -0.271058, -0.936724,
		-0.973022, -0.002046, 0.230705,
		-0.064451, 0.962561, -0.263292,
		40.562325, 37.427776, 52.164059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915756, 36.782478, 52.092091>,  <40.607441, 36.753983, 52.348362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915756, 36.782478, 52.092091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.109547, 37.103085, 51.951893>,  <40.225822, 37.295448, 51.867775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.109547, 37.103085, 51.951893>,  <39.915756, 36.782478, 52.092091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109547, 37.103085, 51.951893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428828, -0.131623, -0.893746,
		-0.762487, 0.583305, 0.279945,
		0.484480, 0.801518, -0.350498,
		40.254890, 37.343540, 51.846745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503063, 37.043114, 51.605297>,  <39.915756, 36.782478, 52.092091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503063, 37.043114, 51.605297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.844208, 37.221180, 51.496151>,  <40.048897, 37.328018, 51.430664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.844208, 37.221180, 51.496151>,  <39.503063, 37.043114, 51.605297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844208, 37.221180, 51.496151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335107, 0.065913, -0.939872,
		-0.400409, 0.893021, 0.205391,
		0.852863, 0.445161, -0.272866,
		40.100067, 37.354729, 51.414291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349339, 37.613091, 51.144028>,  <39.503063, 37.043114, 51.605297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349339, 37.613091, 51.144028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.734005, 37.523548, 51.080673>,  <39.964806, 37.469822, 51.042660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.734005, 37.523548, 51.080673>,  <39.349339, 37.613091, 51.144028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734005, 37.523548, 51.080673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159316, 0.014021, -0.987128,
		0.223191, 0.974522, -0.022180,
		0.961667, -0.223852, -0.158387,
		40.022507, 37.456394, 51.033157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608799, 38.123264, 50.619061>,  <39.349339, 37.613091, 51.144028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608799, 38.123264, 50.619061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.877308, 37.827663, 50.596184>,  <40.038414, 37.650303, 50.582458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.877308, 37.827663, 50.596184>,  <39.608799, 38.123264, 50.619061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877308, 37.827663, 50.596184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115870, 0.180836, -0.976664,
		0.732099, 0.648979, 0.207018,
		0.671271, -0.739002, -0.057192,
		40.078690, 37.605965, 50.579025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083389, 38.423157, 50.209084>,  <39.608799, 38.123264, 50.619061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083389, 38.423157, 50.209084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.143475, 38.028660, 50.181461>,  <40.179527, 37.791962, 50.164890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.143475, 38.028660, 50.181461>,  <40.083389, 38.423157, 50.209084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143475, 38.028660, 50.181461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300224, 0.112050, -0.947264,
		0.941967, 0.121562, 0.312924,
		0.150214, -0.986239, -0.069052,
		40.188538, 37.732788, 50.160748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822914, 38.390797, 49.990761>,  <40.083389, 38.423157, 50.209084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822914, 38.390797, 49.990761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.616760, 38.063652, 49.888409>,  <40.493069, 37.867363, 49.827000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.616760, 38.063652, 49.888409>,  <40.822914, 38.390797, 49.990761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616760, 38.063652, 49.888409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130067, 0.220474, -0.966682,
		0.847028, -0.531499, -0.007253,
		-0.515389, -0.817863, -0.255878,
		40.462143, 37.818295, 49.811646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132687, 38.187649, 49.376179>,  <40.822914, 38.390797, 49.990761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132687, 38.187649, 49.376179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.779385, 38.000580, 49.389687>,  <40.567402, 37.888336, 49.397793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.779385, 38.000580, 49.389687>,  <41.132687, 38.187649, 49.376179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779385, 38.000580, 49.389687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115429, 0.147058, -0.982370,
		0.454464, -0.871580, -0.183873,
		-0.883254, -0.467676, 0.033773,
		40.514408, 37.860275, 49.399818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191620, 37.751160, 48.773594>,  <41.132687, 38.187649, 49.376179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191620, 37.751160, 48.773594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.799229, 37.788116, 48.841888>,  <40.563793, 37.810291, 48.882866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.799229, 37.788116, 48.841888>,  <41.191620, 37.751160, 48.773594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799229, 37.788116, 48.841888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172230, -0.008400, -0.985021,
		-0.089575, -0.995687, 0.024153,
		-0.980976, 0.092393, 0.170735,
		40.504936, 37.815834, 48.893108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884537, 37.272514, 48.346348>,  <41.191620, 37.751160, 48.773594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884537, 37.272514, 48.346348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.589878, 37.531548, 48.424305>,  <40.413082, 37.686970, 48.471077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.589878, 37.531548, 48.424305>,  <40.884537, 37.272514, 48.346348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589878, 37.531548, 48.424305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242762, 0.015757, -0.969958,
		-0.631202, -0.761829, 0.145602,
		-0.736648, 0.647586, 0.194889,
		40.368885, 37.725822, 48.482773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190666, 36.909740, 48.333046>,  <40.884537, 37.272514, 48.346348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190666, 36.909740, 48.333046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.145119, 37.302792, 48.274418>,  <40.117790, 37.538620, 48.239243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.145119, 37.302792, 48.274418>,  <40.190666, 36.909740, 48.333046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145119, 37.302792, 48.274418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331737, -0.176669, -0.926682,
		-0.936474, -0.056901, 0.346090,
		-0.113872, 0.982624, -0.146570,
		40.110958, 37.597580, 48.230446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642075, 36.927448, 47.920185>,  <40.190666, 36.909740, 48.333046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642075, 36.927448, 47.920185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.799507, 37.291225, 47.866512>,  <39.893967, 37.509491, 47.834309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.799507, 37.291225, 47.866512>,  <39.642075, 36.927448, 47.920185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799507, 37.291225, 47.866512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277945, -0.021404, -0.960358,
		-0.876265, 0.415273, 0.244351,
		0.393581, 0.909445, -0.134179,
		39.917580, 37.564060, 47.826260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136299, 37.395893, 47.585461>,  <39.642075, 36.927448, 47.920185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136299, 37.395893, 47.585461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.490654, 37.564426, 47.507820>,  <39.703266, 37.665546, 47.461235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.490654, 37.564426, 47.507820>,  <39.136299, 37.395893, 47.585461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490654, 37.564426, 47.507820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184365, -0.064188, -0.980760,
		-0.425685, 0.904632, 0.020815,
		0.885890, 0.421333, -0.194106,
		39.756420, 37.690826, 47.449589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923176, 37.938454, 47.156082>,  <39.136299, 37.395893, 47.585461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923176, 37.938454, 47.156082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.317467, 37.881462, 47.120216>,  <39.554043, 37.847267, 47.098698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.317467, 37.881462, 47.120216>,  <38.923176, 37.938454, 47.156082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317467, 37.881462, 47.120216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062219, 0.186572, -0.980469,
		0.156424, 0.972055, 0.175044,
		0.985728, -0.142478, -0.089664,
		39.613186, 37.838718, 47.093319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994705, 38.602680, 47.555458>,  <38.923176, 37.938454, 47.156082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994705, 38.602680, 47.555458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.619495, 38.469017, 47.518692>,  <38.394371, 38.388821, 47.496632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.619495, 38.469017, 47.518692>,  <38.994705, 38.602680, 47.555458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619495, 38.469017, 47.518692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043183, -0.150444, 0.987675,
		-0.343868, 0.930432, 0.126690,
		-0.938024, -0.334159, -0.091912,
		38.338089, 38.368771, 47.491119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681427, 39.018646, 48.000431>,  <38.994705, 38.602680, 47.555458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681427, 39.018646, 48.000431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.421532, 38.727226, 47.913658>,  <38.265594, 38.552376, 47.861595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.421532, 38.727226, 47.913658>,  <38.681427, 39.018646, 48.000431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421532, 38.727226, 47.913658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193771, -0.117216, 0.974019,
		-0.735047, 0.674892, -0.065012,
		-0.649737, -0.728548, -0.216934,
		38.226612, 38.508663, 47.848579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112034, 39.210243, 48.378510>,  <38.681427, 39.018646, 48.000431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112034, 39.210243, 48.378510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.085396, 38.814621, 48.325840>,  <38.069412, 38.577248, 48.294239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.085396, 38.814621, 48.325840>,  <38.112034, 39.210243, 48.378510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085396, 38.814621, 48.325840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150254, -0.120524, 0.981274,
		-0.986402, 0.085131, -0.140583,
		-0.066593, -0.989054, -0.131676,
		38.065418, 38.517906, 48.286339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622871, 39.056259, 48.892338>,  <38.112034, 39.210243, 48.378510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622871, 39.056259, 48.892338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.733669, 38.691525, 48.771130>,  <37.800148, 38.472683, 48.698406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.733669, 38.691525, 48.771130>,  <37.622871, 39.056259, 48.892338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733669, 38.691525, 48.771130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252606, -0.373372, 0.892628,
		-0.927073, -0.170709, -0.333759,
		0.276996, -0.911840, -0.303020,
		37.816769, 38.417973, 48.680225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064636, 38.577782, 48.839207>,  <37.622871, 39.056259, 48.892338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064636, 38.577782, 48.839207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.398785, 38.376957, 48.928726>,  <37.599274, 38.256462, 48.982437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.398785, 38.376957, 48.928726>,  <37.064636, 38.577782, 48.839207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398785, 38.376957, 48.928726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421186, -0.323035, 0.847497,
		-0.353211, -0.802231, -0.481319,
		0.835371, -0.502070, 0.223789,
		37.649399, 38.226337, 48.995865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826466, 38.012787, 49.157658>,  <37.064636, 38.577782, 48.839207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826466, 38.012787, 49.157658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.207966, 38.041996, 49.274300>,  <37.436867, 38.059521, 49.344284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.207966, 38.041996, 49.274300>,  <36.826466, 38.012787, 49.157658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207966, 38.041996, 49.274300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249017, -0.351499, 0.902463,
		0.168399, -0.933336, -0.317057,
		0.953747, 0.073021, 0.291608,
		37.494091, 38.063904, 49.361782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976540, 37.303642, 49.496788>,  <36.826466, 38.012787, 49.157658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976540, 37.303642, 49.496788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.265186, 37.550327, 49.622601>,  <37.438374, 37.698338, 49.698090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.265186, 37.550327, 49.622601>,  <36.976540, 37.303642, 49.496788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265186, 37.550327, 49.622601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029494, -0.426534, 0.903991,
		0.691661, -0.661614, -0.289606,
		0.721620, 0.616713, 0.314530,
		37.481674, 37.735340, 49.716961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209045, 36.981007, 50.151062>,  <36.976540, 37.303642, 49.496788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209045, 36.981007, 50.151062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.418072, 37.321735, 50.165619>,  <37.543488, 37.526173, 50.174355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.418072, 37.321735, 50.165619>,  <37.209045, 36.981007, 50.151062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418072, 37.321735, 50.165619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207715, -0.168597, 0.963551,
		0.826909, -0.495959, -0.265040,
		0.522566, 0.851822, 0.036396,
		37.574841, 37.577282, 50.176537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353218, 36.539459, 49.555870>,  <37.209045, 36.981007, 50.151062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353218, 36.539459, 49.555870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.175144, 36.182465, 49.584942>,  <37.068302, 35.968269, 49.602383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.175144, 36.182465, 49.584942>,  <37.353218, 36.539459, 49.555870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175144, 36.182465, 49.584942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554016, 0.210766, -0.805384,
		0.703476, -0.398807, -0.588281,
		-0.445182, -0.892486, 0.072677,
		37.041588, 35.914719, 49.606747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491417, 36.144531, 49.038528>,  <37.353218, 36.539459, 49.555870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491417, 36.144531, 49.038528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.133976, 36.020203, 49.168060>,  <36.919510, 35.945606, 49.245777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.133976, 36.020203, 49.168060>,  <37.491417, 36.144531, 49.038528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133976, 36.020203, 49.168060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350155, 0.031351, -0.936167,
		0.280829, -0.949951, -0.136851,
		-0.893603, -0.310822, 0.323826,
		36.865894, 35.926956, 49.265209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258110, 35.640858, 48.491417>,  <37.491417, 36.144531, 49.038528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258110, 35.640858, 48.491417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.941360, 35.780312, 48.691975>,  <36.751312, 35.863983, 48.812309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.941360, 35.780312, 48.691975>,  <37.258110, 35.640858, 48.491417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941360, 35.780312, 48.691975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455646, 0.209358, -0.865191,
		-0.406604, -0.913578, -0.006932,
		-0.791871, 0.348632, 0.501394,
		36.703800, 35.884903, 48.842392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611477, 35.290920, 48.219105>,  <37.258110, 35.640858, 48.491417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611477, 35.290920, 48.219105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.507412, 35.641537, 48.381084>,  <36.444973, 35.851906, 48.478271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.507412, 35.641537, 48.381084>,  <36.611477, 35.290920, 48.219105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507412, 35.641537, 48.381084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296266, 0.326698, -0.897494,
		-0.918990, -0.353468, 0.174696,
		-0.260162, 0.876544, 0.404953,
		36.429363, 35.904499, 48.502571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933395, 35.378357, 48.049084>,  <36.611477, 35.290920, 48.219105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933395, 35.378357, 48.049084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066040, 35.741840, 48.150494>,  <36.145626, 35.959930, 48.211338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066040, 35.741840, 48.150494>,  <35.933395, 35.378357, 48.049084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066040, 35.741840, 48.150494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355235, 0.369223, -0.858768,
		-0.873981, 0.194716, 0.445245,
		0.331610, 0.908714, 0.253525,
		36.165524, 36.014454, 48.226551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360958, 35.763649, 48.009377>,  <35.933395, 35.378357, 48.049084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360958, 35.763649, 48.009377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.686947, 35.993263, 47.977604>,  <35.882542, 36.131031, 47.958542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.686947, 35.993263, 47.977604>,  <35.360958, 35.763649, 48.009377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686947, 35.993263, 47.977604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332274, 0.350577, -0.875608,
		-0.474779, 0.739989, 0.476446,
		0.814972, 0.574031, -0.079432,
		35.931438, 36.165474, 47.953773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.116474, 32.683018, 50.616089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.468491, 32.652847, 50.803635>,  <40.679703, 32.634747, 50.916161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.468491, 32.652847, 50.803635>,  <40.116474, 32.683018, 50.616089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468491, 32.652847, 50.803635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456062, 0.409501, -0.790137,
		-0.132403, 0.909186, 0.394778,
		0.880044, -0.075427, 0.468865,
		40.732502, 32.630219, 50.944294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836308, 33.200394, 51.172417>,  <40.116474, 32.683018, 50.616089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836308, 33.200394, 51.172417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.816067, 33.576859, 51.038761>,  <39.803921, 33.802738, 50.958569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.816067, 33.576859, 51.038761>,  <39.836308, 33.200394, 51.172417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816067, 33.576859, 51.038761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058820, -0.336800, -0.939738,
		-0.996985, -0.027901, 0.072402,
		-0.050605, 0.941163, -0.334143,
		39.800884, 33.859207, 50.938519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129574, 33.294212, 50.768784>,  <39.836308, 33.200394, 51.172417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129574, 33.294212, 50.768784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.448524, 33.499287, 50.641445>,  <39.639893, 33.622334, 50.565041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.448524, 33.499287, 50.641445>,  <39.129574, 33.294212, 50.768784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448524, 33.499287, 50.641445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116272, -0.387116, -0.914670,
		-0.592179, 0.766349, -0.249065,
		0.797374, 0.512689, -0.318347,
		39.687737, 33.653095, 50.545940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985695, 33.701736, 50.151730>,  <39.129574, 33.294212, 50.768784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985695, 33.701736, 50.151730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.369583, 33.592518, 50.178204>,  <39.599915, 33.526985, 50.194088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.369583, 33.592518, 50.178204>,  <38.985695, 33.701736, 50.151730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369583, 33.592518, 50.178204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006778, -0.258000, -0.966121,
		0.280871, 0.926759, -0.249459,
		0.959722, -0.273046, 0.066183,
		39.657501, 33.510605, 50.198059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387005, 34.079147, 49.774303>,  <38.985695, 33.701736, 50.151730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387005, 34.079147, 49.774303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.611107, 33.749130, 49.803738>,  <39.745567, 33.551121, 49.821400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.611107, 33.749130, 49.803738>,  <39.387005, 34.079147, 49.774303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611107, 33.749130, 49.803738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081679, -0.033378, -0.996100,
		0.824281, 0.564083, 0.048689,
		0.560258, -0.825043, 0.073586,
		39.779182, 33.501617, 49.825813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995537, 34.160847, 49.309570>,  <39.387005, 34.079147, 49.774303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995537, 34.160847, 49.309570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.947765, 33.771038, 49.385513>,  <39.919102, 33.537151, 49.431080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.947765, 33.771038, 49.385513>,  <39.995537, 34.160847, 49.309570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947765, 33.771038, 49.385513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135197, -0.205410, -0.969293,
		0.983595, -0.090090, 0.156283,
		-0.119426, -0.974521, 0.189861,
		39.911938, 33.478683, 49.442471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476166, 33.943340, 48.846546>,  <39.995537, 34.160847, 49.309570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476166, 33.943340, 48.846546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.264641, 33.621689, 48.955162>,  <40.137726, 33.428696, 49.020332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.264641, 33.621689, 48.955162>,  <40.476166, 33.943340, 48.846546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264641, 33.621689, 48.955162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041937, -0.294784, -0.954643,
		0.847704, -0.516212, 0.122161,
		-0.528810, -0.804131, 0.271538,
		40.105999, 33.380451, 49.036625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671341, 33.418369, 48.338448>,  <40.476166, 33.943340, 48.846546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671341, 33.418369, 48.338448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.320904, 33.286842, 48.479500>,  <40.110641, 33.207928, 48.564129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.320904, 33.286842, 48.479500>,  <40.671341, 33.418369, 48.338448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320904, 33.286842, 48.479500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243707, -0.329057, -0.912320,
		0.416018, -0.885213, 0.208150,
		-0.876091, -0.328814, 0.352626,
		40.058075, 33.188198, 48.585289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565365, 32.763283, 48.084751>,  <40.671341, 33.418369, 48.338448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565365, 32.763283, 48.084751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.205036, 32.876423, 48.216522>,  <39.988838, 32.944309, 48.295586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.205036, 32.876423, 48.216522>,  <40.565365, 32.763283, 48.084751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205036, 32.876423, 48.216522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426289, -0.431998, -0.794767,
		-0.082491, -0.856372, 0.509728,
		-0.900818, 0.282853, 0.329426,
		39.934792, 32.961281, 48.315350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117390, 32.137749, 48.157036>,  <40.565365, 32.763283, 48.084751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117390, 32.137749, 48.157036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.911373, 32.473785, 48.088943>,  <39.787762, 32.675407, 48.048088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.911373, 32.473785, 48.088943>,  <40.117390, 32.137749, 48.157036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911373, 32.473785, 48.088943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487641, -0.450498, -0.747835,
		-0.704937, -0.302157, 0.641689,
		-0.515043, 0.840091, -0.170229,
		39.756859, 32.725811, 48.037876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413620, 31.884954, 48.111908>,  <40.117390, 32.137749, 48.157036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413620, 31.884954, 48.111908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.456047, 32.237316, 47.927402>,  <39.481503, 32.448734, 47.816700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.456047, 32.237316, 47.927402>,  <39.413620, 31.884954, 48.111908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456047, 32.237316, 47.927402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397384, -0.387672, -0.831743,
		-0.911502, 0.271519, 0.308937,
		0.106067, 0.880902, -0.461261,
		39.487865, 32.501587, 47.789024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000813, 31.859610, 47.550655>,  <39.413620, 31.884954, 48.111908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000813, 31.859610, 47.550655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.200062, 32.179119, 47.415699>,  <39.319611, 32.370827, 47.334724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.200062, 32.179119, 47.415699>,  <39.000813, 31.859610, 47.550655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200062, 32.179119, 47.415699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300263, -0.206123, -0.931319,
		-0.813458, 0.565218, 0.137168,
		0.498125, 0.798776, -0.337386,
		39.349499, 32.418751, 47.314484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325920, 32.021297, 47.783089>,  <39.000813, 31.859610, 47.550655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325920, 32.021297, 47.783089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.938808, 31.952463, 47.856625>,  <37.706543, 31.911163, 47.900745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.938808, 31.952463, 47.856625>,  <38.325920, 32.021297, 47.783089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938808, 31.952463, 47.856625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143042, 0.225154, 0.963766,
		-0.207243, 0.959006, -0.193283,
		-0.967775, -0.172086, 0.183840,
		37.648476, 31.900837, 47.911777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074986, 32.559608, 48.099312>,  <38.325920, 32.021297, 47.783089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074986, 32.559608, 48.099312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.825413, 32.260593, 48.190437>,  <37.675671, 32.081184, 48.245113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.825413, 32.260593, 48.190437>,  <38.074986, 32.559608, 48.099312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825413, 32.260593, 48.190437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248543, 0.086560, 0.964745,
		-0.740901, 0.658557, 0.131788,
		-0.623932, -0.747536, 0.227812,
		37.638233, 32.036331, 48.258781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652336, 32.787888, 48.667114>,  <38.074986, 32.559608, 48.099312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652336, 32.787888, 48.667114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.620289, 32.389194, 48.671154>,  <37.601059, 32.149979, 48.673576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.620289, 32.389194, 48.671154>,  <37.652336, 32.787888, 48.667114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620289, 32.389194, 48.671154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011099, 0.009239, 0.999896,
		-0.996723, 0.080227, 0.010323,
		-0.080123, -0.996734, 0.010100,
		37.596252, 32.090176, 48.674183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265068, 32.650593, 49.213779>,  <37.652336, 32.787888, 48.667114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265068, 32.650593, 49.213779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.426430, 32.286877, 49.172874>,  <37.523247, 32.068645, 49.148331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.426430, 32.286877, 49.172874>,  <37.265068, 32.650593, 49.213779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426430, 32.286877, 49.172874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004361, -0.113674, 0.993508,
		-0.915013, -0.400336, -0.049822,
		0.403401, -0.909290, -0.102267,
		37.547451, 32.014088, 49.142193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788181, 32.241016, 49.642559>,  <37.265068, 32.650593, 49.213779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788181, 32.241016, 49.642559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.127567, 32.031162, 49.614639>,  <37.331200, 31.905251, 49.597885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.127567, 32.031162, 49.614639>,  <36.788181, 32.241016, 49.642559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127567, 32.031162, 49.614639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019310, -0.101112, 0.994688,
		-0.528903, -0.845303, -0.075660,
		0.848462, -0.524632, -0.069801,
		37.382107, 31.873774, 49.593700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712830, 31.761280, 50.114841>,  <36.788181, 32.241016, 49.642559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712830, 31.761280, 50.114841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.104664, 31.738031, 50.037857>,  <37.339764, 31.724083, 49.991669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.104664, 31.738031, 50.037857>,  <36.712830, 31.761280, 50.114841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104664, 31.738031, 50.037857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175561, -0.219147, 0.959767,
		-0.097957, -0.973959, -0.204470,
		0.979583, -0.058119, -0.192456,
		37.398540, 31.720596, 49.980122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998882, 31.164190, 50.581680>,  <36.712830, 31.761280, 50.114841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998882, 31.164190, 50.581680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.286221, 31.426334, 50.488316>,  <37.458622, 31.583622, 50.432297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.286221, 31.426334, 50.488316>,  <36.998882, 31.164190, 50.581680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286221, 31.426334, 50.488316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311114, -0.002528, 0.950369,
		0.622245, -0.755311, -0.205708,
		0.718345, 0.655361, -0.233415,
		37.501724, 31.622942, 50.418293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692364, 30.857897, 50.744427>,  <36.998882, 31.164190, 50.581680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692364, 30.857897, 50.744427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.737560, 31.254681, 50.767227>,  <37.764679, 31.492750, 50.780907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.737560, 31.254681, 50.767227>,  <37.692364, 30.857897, 50.744427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737560, 31.254681, 50.767227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449981, -0.102233, 0.887167,
		0.885862, -0.074592, -0.457914,
		0.112989, 0.991960, 0.057000,
		37.771458, 31.552269, 50.784328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323822, 30.977949, 51.145729>,  <37.692364, 30.857897, 50.744427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323822, 30.977949, 51.145729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.145103, 31.335758, 51.151394>,  <38.037872, 31.550444, 51.154793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.145103, 31.335758, 51.151394>,  <38.323822, 30.977949, 51.145729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145103, 31.335758, 51.151394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360691, 0.165629, 0.917861,
		0.818703, 0.415206, -0.396649,
		-0.446798, 0.894523, 0.014160,
		38.011063, 31.604115, 51.155643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912392, 31.409880, 51.403080>,  <38.323822, 30.977949, 51.145729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912392, 31.409880, 51.403080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.550610, 31.574606, 51.447571>,  <38.333542, 31.673441, 51.474266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.550610, 31.574606, 51.447571>,  <38.912392, 31.409880, 51.403080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550610, 31.574606, 51.447571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255330, 0.313780, 0.914521,
		0.341714, 0.855541, -0.388948,
		-0.904454, 0.411815, 0.111222,
		38.279274, 31.698151, 51.480938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002029, 31.968679, 51.699867>,  <38.912392, 31.409880, 51.403080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002029, 31.968679, 51.699867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.608791, 31.982210, 51.771847>,  <38.372849, 31.990328, 51.815033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.608791, 31.982210, 51.771847>,  <39.002029, 31.968679, 51.699867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608791, 31.982210, 51.771847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175535, 0.453643, 0.873725,
		-0.052078, 0.890541, -0.451912,
		-0.983095, 0.033824, 0.179946,
		38.313862, 31.992357, 51.825832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862553, 32.617065, 51.851166>,  <39.002029, 31.968679, 51.699867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862553, 32.617065, 51.851166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.573917, 32.415154, 52.040695>,  <38.400734, 32.294006, 52.154411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.573917, 32.415154, 52.040695>,  <38.862553, 32.617065, 51.851166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573917, 32.415154, 52.040695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198732, 0.504570, 0.840187,
		-0.663183, 0.700435, -0.263778,
		-0.721591, -0.504777, 0.473821,
		38.357441, 32.263721, 52.182842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540653, 33.125031, 52.262360>,  <38.862553, 32.617065, 51.851166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540653, 33.125031, 52.262360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.403900, 32.783497, 52.419376>,  <38.321850, 32.578579, 52.513588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.403900, 32.783497, 52.419376>,  <38.540653, 33.125031, 52.262360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403900, 32.783497, 52.419376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223782, 0.331726, 0.916449,
		-0.912711, 0.401158, 0.077662,
		-0.341879, -0.853832, 0.392542,
		38.301338, 32.527348, 52.537140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899590, 33.276321, 52.650013>,  <38.540653, 33.125031, 52.262360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899590, 33.276321, 52.650013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.082905, 32.949200, 52.789246>,  <38.192894, 32.752926, 52.872787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.082905, 32.949200, 52.789246>,  <37.899590, 33.276321, 52.650013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082905, 32.949200, 52.789246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018781, 0.382634, 0.923709,
		-0.888606, -0.429861, 0.159997,
		0.458287, -0.817808, 0.348084,
		38.220390, 32.703857, 52.893669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899357, 33.411327, 51.914398>,  <37.899590, 33.276321, 52.650013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899357, 33.411327, 51.914398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.697025, 33.667419, 52.145657>,  <37.575626, 33.821075, 52.284412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.697025, 33.667419, 52.145657>,  <37.899357, 33.411327, 51.914398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697025, 33.667419, 52.145657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226484, 0.548130, -0.805145,
		-0.832373, -0.538203, -0.132257,
		-0.505826, 0.640227, 0.578144,
		37.545277, 33.859486, 52.319099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332981, 33.535595, 51.532398>,  <37.899357, 33.411327, 51.914398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332981, 33.535595, 51.532398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.335136, 33.854397, 51.773979>,  <37.336430, 34.045677, 51.918926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.335136, 33.854397, 51.773979>,  <37.332981, 33.535595, 51.532398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335136, 33.854397, 51.773979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168569, 0.596041, -0.785061,
		-0.985675, -0.097575, 0.137563,
		0.005390, 0.797004, 0.603951,
		37.336754, 34.093498, 51.955166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694305, 33.895851, 51.452328>,  <37.332981, 33.535595, 51.532398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694305, 33.895851, 51.452328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.951302, 34.158432, 51.610455>,  <37.105499, 34.315983, 51.705330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.951302, 34.158432, 51.610455>,  <36.694305, 33.895851, 51.452328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951302, 34.158432, 51.610455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287127, 0.684524, -0.670063,
		-0.710468, 0.317004, 0.628286,
		0.642490, 0.656456, 0.395312,
		37.144047, 34.355370, 51.729050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323559, 34.484802, 51.713829>,  <36.694305, 33.895851, 51.452328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323559, 34.484802, 51.713829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.690910, 34.623070, 51.636795>,  <36.911320, 34.706032, 51.590572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.690910, 34.623070, 51.636795>,  <36.323559, 34.484802, 51.713829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690910, 34.623070, 51.636795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393567, 0.747498, -0.535118,
		-0.041016, 0.567238, 0.822532,
		0.918380, 0.345670, -0.192587,
		36.966423, 34.726772, 51.579018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354481, 35.230228, 51.774567>,  <36.323559, 34.484802, 51.713829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354481, 35.230228, 51.774567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.670841, 35.162483, 51.539352>,  <36.860657, 35.121838, 51.398224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.670841, 35.162483, 51.539352>,  <36.354481, 35.230228, 51.774567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670841, 35.162483, 51.539352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270890, 0.764763, -0.584599,
		0.548717, 0.621655, 0.558976,
		0.790903, -0.169359, -0.588039,
		36.908112, 35.111675, 51.362942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510197, 35.841660, 51.515591>,  <36.354481, 35.230228, 51.774567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510197, 35.841660, 51.515591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.711399, 35.594383, 51.273991>,  <36.832119, 35.446018, 51.129028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.711399, 35.594383, 51.273991>,  <36.510197, 35.841660, 51.515591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711399, 35.594383, 51.273991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394685, 0.457426, -0.796860,
		0.768902, 0.639215, -0.013905,
		0.503004, -0.618195, -0.604005,
		36.862301, 35.408924, 51.092789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847168, 36.315670, 51.031219>,  <36.510197, 35.841660, 51.515591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847168, 36.315670, 51.031219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.846584, 35.954777, 50.858719>,  <36.846233, 35.738243, 50.755219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.846584, 35.954777, 50.858719>,  <36.847168, 36.315670, 51.031219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846584, 35.954777, 50.858719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524434, 0.367880, -0.767875,
		0.851450, 0.225039, -0.473699,
		-0.001462, -0.902232, -0.431250,
		36.846146, 35.684109, 50.729343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182720, 36.287235, 50.404209>,  <36.847168, 36.315670, 51.031219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182720, 36.287235, 50.404209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.858059, 36.059673, 50.457226>,  <36.663261, 35.923134, 50.489037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.858059, 36.059673, 50.457226>,  <37.182720, 36.287235, 50.404209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858059, 36.059673, 50.457226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507759, 0.574932, -0.641587,
		0.288801, -0.588044, -0.755512,
		-0.811649, -0.568909, 0.132543,
		36.614563, 35.889000, 50.496990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784565, 36.781635, 50.539894>,  <37.182720, 36.287235, 50.404209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784565, 36.781635, 50.539894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.702198, 37.172073, 50.567688>,  <37.652779, 37.406338, 50.584366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.702198, 37.172073, 50.567688>,  <37.784565, 36.781635, 50.539894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702198, 37.172073, 50.567688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022505, -0.075714, 0.996875,
		0.978311, 0.203708, 0.037557,
		-0.205915, 0.976100, 0.069488,
		37.640423, 37.464905, 50.588535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375061, 37.041740, 50.876736>,  <37.784565, 36.781635, 50.539894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375061, 37.041740, 50.876736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.050896, 37.269760, 50.930809>,  <37.856396, 37.406570, 50.963253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.050896, 37.269760, 50.930809>,  <38.375061, 37.041740, 50.876736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050896, 37.269760, 50.930809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173020, 0.012424, 0.984840,
		0.559726, 0.821518, -0.108698,
		-0.810414, 0.570048, 0.135185,
		37.807770, 37.440773, 50.971363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632988, 37.656425, 51.322437>,  <38.375061, 37.041740, 50.876736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632988, 37.656425, 51.322437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.235302, 37.660858, 51.365173>,  <37.996689, 37.663517, 51.390816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.235302, 37.660858, 51.365173>,  <38.632988, 37.656425, 51.322437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235302, 37.660858, 51.365173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107341, 0.139946, 0.984324,
		-0.004044, 0.990097, -0.140325,
		-0.994214, 0.011082, 0.106844,
		37.937038, 37.664185, 51.397228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399570, 38.285995, 51.731800>,  <38.632988, 37.656425, 51.322437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399570, 38.285995, 51.731800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.090237, 38.036095, 51.774952>,  <37.904636, 37.886154, 51.800842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.090237, 38.036095, 51.774952>,  <38.399570, 38.285995, 51.731800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090237, 38.036095, 51.774952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105370, 0.041134, 0.993582,
		-0.625178, 0.779740, 0.034019,
		-0.773337, -0.624751, 0.107877,
		37.858234, 37.848671, 51.807316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968426, 38.618317, 52.228401>,  <38.399570, 38.285995, 51.731800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968426, 38.618317, 52.228401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.890442, 38.226036, 52.234272>,  <37.843651, 37.990669, 52.237797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.890442, 38.226036, 52.234272>,  <37.968426, 38.618317, 52.228401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890442, 38.226036, 52.234272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037910, 0.022491, 0.999028,
		-0.980079, 0.194210, -0.041564,
		-0.194956, -0.980702, 0.014680,
		37.831955, 37.931824, 52.238678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370274, 38.605282, 52.735184>,  <37.968426, 38.618317, 52.228401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370274, 38.605282, 52.735184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.526287, 38.239601, 52.691162>,  <37.619896, 38.020191, 52.664749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.526287, 38.239601, 52.691162>,  <37.370274, 38.605282, 52.735184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526287, 38.239601, 52.691162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211810, -0.205384, 0.955486,
		-0.896110, -0.349358, -0.273743,
		0.390029, -0.914202, -0.110049,
		37.643295, 37.965340, 52.658146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903843, 38.199940, 53.203941>,  <37.370274, 38.605282, 52.735184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903843, 38.199940, 53.203941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.242222, 37.989582, 53.168606>,  <37.445251, 37.863369, 53.147404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.242222, 37.989582, 53.168606>,  <36.903843, 38.199940, 53.203941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242222, 37.989582, 53.168606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129718, -0.363622, 0.922471,
		-0.517242, -0.768906, -0.375824,
		0.845952, -0.525892, -0.088339,
		37.496006, 37.831814, 53.142105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833317, 37.573990, 53.504341>,  <36.903843, 38.199940, 53.203941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833317, 37.573990, 53.504341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.230911, 37.586445, 53.546329>,  <37.469467, 37.593918, 53.571522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.230911, 37.586445, 53.546329>,  <36.833317, 37.573990, 53.504341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230911, 37.586445, 53.546329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099085, -0.152109, 0.983384,
		0.046586, -0.987873, -0.148109,
		0.993988, 0.031136, 0.104969,
		37.529106, 37.595787, 53.577820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<38.664707, 37.257442, 37.878513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061596, 37.306236, 37.888489>,  <39.299728, 37.335514, 37.894474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061596, 37.306236, 37.888489>,  <38.664707, 37.257442, 37.878513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061596, 37.306236, 37.888489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021213, -0.363023, 0.931539,
		0.122690, -0.923760, -0.362785,
		0.992218, 0.121987, 0.024943,
		39.359261, 37.342831, 37.895973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029415, 36.634476, 38.112347>,  <38.664707, 37.257442, 37.878513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029415, 36.634476, 38.112347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283150, 36.938137, 38.170723>,  <39.435390, 37.120335, 38.205750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283150, 36.938137, 38.170723>,  <39.029415, 36.634476, 38.112347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283150, 36.938137, 38.170723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081608, -0.253491, 0.963889,
		0.768739, -0.599518, -0.222751,
		0.634335, 0.759157, 0.145943,
		39.473450, 37.165886, 38.214504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352184, 36.343517, 38.651440>,  <39.029415, 36.634476, 38.112347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352184, 36.343517, 38.651440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479771, 36.722553, 38.644150>,  <39.556324, 36.949974, 38.639778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479771, 36.722553, 38.644150>,  <39.352184, 36.343517, 38.651440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479771, 36.722553, 38.644150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094901, -0.012803, 0.995404,
		0.943002, -0.319232, -0.094011,
		0.318969, 0.947590, -0.018222,
		39.575462, 37.006832, 38.638683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996624, 36.427765, 39.024967>,  <39.352184, 36.343517, 38.651440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996624, 36.427765, 39.024967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807098, 36.779732, 39.010841>,  <39.693382, 36.990910, 39.002365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807098, 36.779732, 39.010841>,  <39.996624, 36.427765, 39.024967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807098, 36.779732, 39.010841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087935, -0.007379, 0.996099,
		0.876221, 0.475075, 0.080872,
		-0.473818, 0.879914, -0.035310,
		39.664951, 37.043705, 39.000248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192638, 36.800674, 39.658894>,  <39.996624, 36.427765, 39.024967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192638, 36.800674, 39.658894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861191, 36.979630, 39.524296>,  <39.662323, 37.087002, 39.443535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861191, 36.979630, 39.524296>,  <40.192638, 36.800674, 39.658894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861191, 36.979630, 39.524296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284200, 0.181679, 0.941394,
		0.482303, 0.875692, -0.023396,
		-0.828622, 0.447388, -0.336496,
		39.612606, 37.113846, 39.423347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980812, 37.398609, 40.171242>,  <40.192638, 36.800674, 39.658894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980812, 37.398609, 40.171242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643185, 37.326183, 39.969341>,  <39.440609, 37.282726, 39.848202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643185, 37.326183, 39.969341>,  <39.980812, 37.398609, 40.171242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643185, 37.326183, 39.969341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536238, 0.282238, 0.795481,
		-0.001576, 0.942102, -0.335322,
		-0.844065, -0.181066, -0.504747,
		39.389965, 37.271862, 39.817917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453388, 37.996662, 40.303398>,  <39.980812, 37.398609, 40.171242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453388, 37.996662, 40.303398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248283, 37.683117, 40.163322>,  <39.125221, 37.494987, 40.079277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248283, 37.683117, 40.163322>,  <39.453388, 37.996662, 40.303398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248283, 37.683117, 40.163322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713308, 0.161986, 0.681874,
		-0.477773, 0.599428, -0.642198,
		-0.512761, -0.783866, -0.350185,
		39.094456, 37.447956, 40.058266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821594, 38.269661, 40.240623>,  <39.453388, 37.996662, 40.303398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821594, 38.269661, 40.240623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795967, 37.874531, 40.297321>,  <38.780590, 37.637451, 40.331341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795967, 37.874531, 40.297321>,  <38.821594, 38.269661, 40.240623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795967, 37.874531, 40.297321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670206, 0.147828, 0.727303,
		-0.739404, -0.048401, -0.671520,
		-0.064067, -0.987828, 0.141744,
		38.776749, 37.578182, 40.339844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168144, 38.140278, 40.316631>,  <38.821594, 38.269661, 40.240623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168144, 38.140278, 40.316631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317833, 37.811390, 40.488174>,  <38.407646, 37.614059, 40.591099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317833, 37.811390, 40.488174>,  <38.168144, 38.140278, 40.316631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317833, 37.811390, 40.488174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491103, 0.216570, 0.843751,
		-0.786623, -0.526363, -0.322747,
		0.374222, -0.822216, 0.428857,
		38.430099, 37.564724, 40.616833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583813, 37.920681, 40.696857>,  <38.168144, 38.140278, 40.316631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583813, 37.920681, 40.696857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898449, 37.735123, 40.859871>,  <38.087231, 37.623787, 40.957680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898449, 37.735123, 40.859871>,  <37.583813, 37.920681, 40.696857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898449, 37.735123, 40.859871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401227, 0.117687, 0.908387,
		-0.469355, -0.878040, -0.093554,
		0.786589, -0.463892, 0.407531,
		38.134426, 37.595955, 40.982132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251358, 37.652336, 41.272915>,  <37.583813, 37.920681, 40.696857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251358, 37.652336, 41.272915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636868, 37.598652, 41.365120>,  <37.868172, 37.566441, 41.420444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636868, 37.598652, 41.365120>,  <37.251358, 37.652336, 41.272915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636868, 37.598652, 41.365120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221794, 0.076862, 0.972060,
		-0.148179, -0.987967, 0.044310,
		0.963769, -0.134211, 0.230514,
		37.925999, 37.558388, 41.434273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342075, 37.088490, 41.766811>,  <37.251358, 37.652336, 41.272915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342075, 37.088490, 41.766811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654278, 37.332397, 41.821949>,  <37.841599, 37.478741, 41.855030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654278, 37.332397, 41.821949>,  <37.342075, 37.088490, 41.766811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654278, 37.332397, 41.821949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198656, 0.032853, 0.979519,
		0.592749, -0.791900, 0.146776,
		0.780503, 0.609767, 0.137842,
		37.888428, 37.515327, 41.863300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926144, 36.545547, 41.775627>,  <37.342075, 37.088490, 41.766811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926144, 36.545547, 41.775627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636124, 36.296211, 41.892757>,  <36.462112, 36.146610, 41.963036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636124, 36.296211, 41.892757>,  <36.926144, 36.545547, 41.775627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636124, 36.296211, 41.892757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022742, -0.403286, -0.914791,
		0.688320, -0.669930, 0.278227,
		-0.725051, -0.623342, 0.292825,
		36.418610, 36.109207, 41.980606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007332, 35.898613, 41.320618>,  <36.926144, 36.545547, 41.775627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007332, 35.898613, 41.320618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632069, 35.909145, 41.458698>,  <36.406910, 35.915466, 41.541546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632069, 35.909145, 41.458698>,  <37.007332, 35.898613, 41.320618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632069, 35.909145, 41.458698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345443, -0.137240, -0.928351,
		0.022929, -0.990188, 0.137849,
		-0.938160, 0.026333, 0.345200,
		36.350620, 35.917046, 41.562260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647804, 35.409405, 40.898987>,  <37.007332, 35.898613, 41.320618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647804, 35.409405, 40.898987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351528, 35.612938, 41.074471>,  <36.173763, 35.735058, 41.179760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351528, 35.612938, 41.074471>,  <36.647804, 35.409405, 40.898987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351528, 35.612938, 41.074471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596178, -0.196737, -0.778374,
		-0.309748, -0.838086, 0.449074,
		-0.740694, 0.508828, 0.438709,
		36.129318, 35.765587, 41.206081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079243, 34.987324, 40.817947>,  <36.647804, 35.409405, 40.898987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079243, 34.987324, 40.817947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906837, 35.343166, 40.878391>,  <35.803394, 35.556671, 40.914658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906837, 35.343166, 40.878391>,  <36.079243, 34.987324, 40.817947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906837, 35.343166, 40.878391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645075, -0.186670, -0.740968,
		-0.630959, -0.416844, 0.654318,
		-0.431009, 0.889604, 0.151114,
		35.777534, 35.610046, 40.923725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412334, 34.866871, 40.923073>,  <36.079243, 34.987324, 40.817947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412334, 34.866871, 40.923073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460880, 35.239429, 40.785805>,  <35.490009, 35.462963, 40.703442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460880, 35.239429, 40.785805>,  <35.412334, 34.866871, 40.923073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460880, 35.239429, 40.785805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618413, -0.199482, -0.760113,
		-0.776425, 0.304476, 0.551778,
		0.121367, 0.931397, -0.343175,
		35.497292, 35.518848, 40.682854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734505, 35.058750, 40.563740>,  <35.412334, 34.866871, 40.923073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734505, 35.058750, 40.563740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931484, 35.382797, 40.436485>,  <35.049671, 35.577225, 40.360134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931484, 35.382797, 40.436485>,  <34.734505, 35.058750, 40.563740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931484, 35.382797, 40.436485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579014, 0.032037, -0.814688,
		-0.649800, 0.585392, 0.484846,
		0.492445, 0.810117, -0.318133,
		35.079216, 35.625832, 40.341045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254539, 35.552532, 40.249863>,  <34.734505, 35.058750, 40.563740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254539, 35.552532, 40.249863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611019, 35.651264, 40.097630>,  <34.824905, 35.710503, 40.006290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611019, 35.651264, 40.097630>,  <34.254539, 35.552532, 40.249863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611019, 35.651264, 40.097630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358822, -0.129694, -0.924352,
		-0.277518, 0.960340, -0.027015,
		0.891196, 0.246831, -0.380584,
		34.878380, 35.725315, 39.983456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227051, 36.248795, 39.854889>,  <34.254539, 35.552532, 40.249863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227051, 36.248795, 39.854889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530247, 36.026722, 39.717937>,  <34.712166, 35.893478, 39.635765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530247, 36.026722, 39.717937>,  <34.227051, 36.248795, 39.854889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530247, 36.026722, 39.717937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486249, -0.131087, -0.863931,
		0.434756, 0.821334, -0.369319,
		0.757990, -0.555181, -0.342382,
		34.757645, 35.860168, 39.615223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003334, 36.284973, 39.125149>,  <34.227051, 36.248795, 39.854889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003334, 36.284973, 39.125149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314911, 36.034298, 39.134251>,  <34.501858, 35.883892, 39.139709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314911, 36.034298, 39.134251>,  <34.003334, 36.284973, 39.125149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314911, 36.034298, 39.134251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235121, -0.325496, -0.915844,
		0.581351, 0.708039, -0.400889,
		0.778941, -0.626684, 0.022753,
		34.548592, 35.846294, 39.141075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331966, 36.361481, 38.504684>,  <34.003334, 36.284973, 39.125149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331966, 36.361481, 38.504684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432541, 36.004147, 38.653667>,  <34.492886, 35.789745, 38.743057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432541, 36.004147, 38.653667>,  <34.331966, 36.361481, 38.504684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432541, 36.004147, 38.653667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342333, -0.442029, -0.829107,
		0.905311, 0.080963, -0.416962,
		0.251437, -0.893339, 0.372457,
		34.507973, 35.736145, 38.765404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791080, 36.099251, 38.050404>,  <34.331966, 36.361481, 38.504684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791080, 36.099251, 38.050404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663570, 35.790188, 38.270000>,  <34.587067, 35.604752, 38.401756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663570, 35.790188, 38.270000>,  <34.791080, 36.099251, 38.050404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663570, 35.790188, 38.270000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209779, -0.507329, -0.835829,
		0.924325, -0.381607, -0.000364,
		-0.318774, -0.772654, 0.548990,
		34.567940, 35.558392, 38.434696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095062, 35.439442, 37.690960>,  <34.791080, 36.099251, 38.050404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095062, 35.439442, 37.690960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777512, 35.347771, 37.916256>,  <34.586979, 35.292770, 38.051434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777512, 35.347771, 37.916256>,  <35.095062, 35.439442, 37.690960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777512, 35.347771, 37.916256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428637, -0.446091, -0.785667,
		0.431309, -0.865149, 0.255910,
		-0.793878, -0.229173, 0.563238,
		34.539349, 35.279018, 38.085228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031059, 34.756435, 37.601334>,  <35.095062, 35.439442, 37.690960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031059, 34.756435, 37.601334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673611, 34.902554, 37.705643>,  <34.459141, 34.990223, 37.768227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673611, 34.902554, 37.705643>,  <35.031059, 34.756435, 37.601334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673611, 34.902554, 37.705643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384368, -0.322883, -0.864875,
		-0.231734, -0.873103, 0.428942,
		-0.893622, 0.365292, 0.260769,
		34.405525, 35.012142, 37.783875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463623, 34.148449, 37.714958>,  <35.031059, 34.756435, 37.601334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463623, 34.148449, 37.714958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317879, 34.508659, 37.620045>,  <34.230434, 34.724785, 37.563095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317879, 34.508659, 37.620045>,  <34.463623, 34.148449, 37.714958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317879, 34.508659, 37.620045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254875, -0.341500, -0.904664,
		-0.895702, -0.269143, 0.353949,
		-0.364357, 0.900522, -0.237284,
		34.208572, 34.778816, 37.548859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128693, 34.092350, 37.316586>,  <34.463623, 34.148449, 37.714958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128693, 34.092350, 37.316586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500076, 33.972862, 37.228291>,  <35.722908, 33.901169, 37.175312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500076, 33.972862, 37.228291>,  <35.128693, 34.092350, 37.316586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500076, 33.972862, 37.228291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007462, -0.609179, 0.792997,
		-0.371350, -0.734622, -0.567830,
		0.928463, -0.298716, -0.220737,
		35.778614, 33.883247, 37.162071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210384, 33.461552, 37.079540>,  <35.128693, 34.092350, 37.316586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210384, 33.461552, 37.079540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568321, 33.517246, 37.249187>,  <35.783081, 33.550663, 37.350975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568321, 33.517246, 37.249187>,  <35.210384, 33.461552, 37.079540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568321, 33.517246, 37.249187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167467, -0.775999, 0.608095,
		0.413782, -0.615173, -0.671078,
		0.894840, 0.139235, 0.424116,
		35.836773, 33.559017, 37.376423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349270, 33.041832, 37.718918>,  <35.210384, 33.461552, 37.079540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349270, 33.041832, 37.718918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732910, 33.155056, 37.719742>,  <35.963093, 33.222988, 37.720238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732910, 33.155056, 37.719742>,  <35.349270, 33.041832, 37.718918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732910, 33.155056, 37.719742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117259, -0.403928, 0.907244,
		0.257635, -0.869897, -0.420599,
		0.959101, 0.283057, 0.002063,
		36.020641, 33.239975, 37.720360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722679, 32.397694, 37.865631>,  <35.349270, 33.041832, 37.718918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722679, 32.397694, 37.865631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938934, 32.721188, 37.958282>,  <36.068687, 32.915283, 38.013874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938934, 32.721188, 37.958282>,  <35.722679, 32.397694, 37.865631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938934, 32.721188, 37.958282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177645, -0.378880, 0.908236,
		0.822284, -0.449881, -0.348506,
		0.540640, 0.808738, 0.231627,
		36.101128, 32.963810, 38.027771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281181, 32.146320, 38.112221>,  <35.722679, 32.397694, 37.865631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281181, 32.146320, 38.112221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285671, 32.513424, 38.271011>,  <36.288364, 32.733688, 38.366283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285671, 32.513424, 38.271011>,  <36.281181, 32.146320, 38.112221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285671, 32.513424, 38.271011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149148, -0.394095, 0.906887,
		0.988751, 0.049026, -0.141307,
		0.011227, 0.917761, 0.396974,
		36.289040, 32.788754, 38.390102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806564, 32.105869, 38.567749>,  <36.281181, 32.146320, 38.112221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806564, 32.105869, 38.567749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606701, 32.419300, 38.715450>,  <36.486782, 32.607361, 38.804070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606701, 32.419300, 38.715450>,  <36.806564, 32.105869, 38.567749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606701, 32.419300, 38.715450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067178, -0.389941, 0.918386,
		0.863616, 0.483682, 0.142197,
		-0.499655, 0.783580, 0.369252,
		36.456806, 32.654373, 38.826225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218357, 32.424690, 39.100395>,  <36.806564, 32.105869, 38.567749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218357, 32.424690, 39.100395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850983, 32.568958, 39.165386>,  <36.630558, 32.655521, 39.204380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850983, 32.568958, 39.165386>,  <37.218357, 32.424690, 39.100395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850983, 32.568958, 39.165386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040967, -0.321802, 0.945920,
		0.393453, 0.875419, 0.280777,
		-0.918431, 0.360673, 0.162477,
		36.575455, 32.677158, 39.214130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240883, 33.027081, 39.681103>,  <37.218357, 32.424690, 39.100395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240883, 33.027081, 39.681103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868484, 32.881397, 39.671246>,  <36.645046, 32.793987, 39.665333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868484, 32.881397, 39.671246>,  <37.240883, 33.027081, 39.681103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868484, 32.881397, 39.671246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031369, -0.147066, 0.988629,
		-0.363691, 0.919632, 0.148342,
		-0.930991, -0.364209, -0.024638,
		36.589188, 32.772133, 39.663853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878559, 33.256443, 40.241753>,  <37.240883, 33.027081, 39.681103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878559, 33.256443, 40.241753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633759, 32.951183, 40.158745>,  <36.486877, 32.768028, 40.108940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633759, 32.951183, 40.158745>,  <36.878559, 33.256443, 40.241753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633759, 32.951183, 40.158745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006843, -0.257279, 0.966313,
		-0.790829, 0.592802, 0.152232,
		-0.611999, -0.763147, -0.207520,
		36.450157, 32.722240, 40.096489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298359, 33.321945, 40.621891>,  <36.878559, 33.256443, 40.241753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298359, 33.321945, 40.621891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263321, 32.938225, 40.514507>,  <36.242298, 32.707993, 40.450077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263321, 32.938225, 40.514507>,  <36.298359, 33.321945, 40.621891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263321, 32.938225, 40.514507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114815, -0.257981, 0.959304,
		-0.989517, 0.114858, -0.087543,
		-0.087600, -0.959298, -0.268464,
		36.237041, 32.650436, 40.433968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740757, 33.116943, 40.932098>,  <36.298359, 33.321945, 40.621891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740757, 33.116943, 40.932098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951771, 32.779789, 40.889675>,  <36.078381, 32.577496, 40.864220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951771, 32.779789, 40.889675>,  <35.740757, 33.116943, 40.932098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951771, 32.779789, 40.889675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172993, -0.228813, 0.957976,
		-0.831734, -0.487017, -0.266521,
		0.527534, -0.842887, -0.106060,
		36.110031, 32.526924, 40.857857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402843, 32.644070, 41.363602>,  <35.740757, 33.116943, 40.932098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402843, 32.644070, 41.363602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758080, 32.468151, 41.310112>,  <35.971222, 32.362602, 41.278019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758080, 32.468151, 41.310112>,  <35.402843, 32.644070, 41.363602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758080, 32.468151, 41.310112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006526, -0.278816, 0.960322,
		-0.459627, -0.853723, -0.244744,
		0.888088, -0.439793, -0.133723,
		36.024506, 32.336212, 41.269997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344044, 31.911900, 41.631718>,  <35.402843, 32.644070, 41.363602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344044, 31.911900, 41.631718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731266, 32.011524, 41.643230>,  <35.963600, 32.071297, 41.650139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731266, 32.011524, 41.643230>,  <35.344044, 31.911900, 41.631718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731266, 32.011524, 41.643230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052180, -0.312439, 0.948504,
		0.245228, -0.916707, -0.315456,
		0.968060, 0.249060, 0.028785,
		36.021683, 32.086243, 41.651867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629215, 31.387806, 41.930931>,  <35.344044, 31.911900, 41.631718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629215, 31.387806, 41.930931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927902, 31.649488, 41.978981>,  <36.107113, 31.806498, 42.007809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927902, 31.649488, 41.978981>,  <35.629215, 31.387806, 41.930931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927902, 31.649488, 41.978981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118736, -0.308801, 0.943686,
		0.654457, -0.690405, -0.308265,
		0.746718, 0.654204, 0.120121,
		36.151917, 31.845749, 42.015018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932911, 31.062954, 42.418568>,  <35.629215, 31.387806, 41.930931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932911, 31.062954, 42.418568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107368, 31.422432, 42.436993>,  <36.212044, 31.638119, 42.448048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107368, 31.422432, 42.436993>,  <35.932911, 31.062954, 42.418568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107368, 31.422432, 42.436993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298971, -0.192993, 0.934543,
		0.848759, -0.393827, -0.352857,
		0.436147, 0.898696, 0.046062,
		36.238213, 31.692041, 42.450809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541164, 31.011702, 42.768108>,  <35.932911, 31.062954, 42.418568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541164, 31.011702, 42.768108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483101, 31.405922, 42.803017>,  <36.448261, 31.642454, 42.823963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483101, 31.405922, 42.803017>,  <36.541164, 31.011702, 42.768108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483101, 31.405922, 42.803017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235744, -0.051211, 0.970465,
		0.960913, 0.161446, -0.224905,
		-0.145160, 0.985552, 0.087269,
		36.439552, 31.701588, 42.829197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053871, 31.280258, 43.185356>,  <36.541164, 31.011702, 42.768108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053871, 31.280258, 43.185356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779339, 31.569252, 43.218742>,  <36.614620, 31.742649, 43.238773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779339, 31.569252, 43.218742>,  <37.053871, 31.280258, 43.185356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779339, 31.569252, 43.218742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253956, 0.130533, 0.958367,
		0.681512, 0.678951, -0.273068,
		-0.686329, 0.722486, 0.083464,
		36.573441, 31.785997, 43.243782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339939, 31.926497, 43.524529>,  <37.053871, 31.280258, 43.185356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339939, 31.926497, 43.524529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948124, 31.963085, 43.596230>,  <36.713036, 31.985039, 43.639252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948124, 31.963085, 43.596230>,  <37.339939, 31.926497, 43.524529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948124, 31.963085, 43.596230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187593, 0.092554, 0.977877,
		0.072855, 0.991497, -0.107820,
		-0.979541, 0.091469, 0.179255,
		36.654263, 31.990526, 43.650005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355518, 32.434525, 44.059803>,  <37.339939, 31.926497, 43.524529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355518, 32.434525, 44.059803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989361, 32.275833, 44.087116>,  <36.769665, 32.180618, 44.103504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989361, 32.275833, 44.087116>,  <37.355518, 32.434525, 44.059803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989361, 32.275833, 44.087116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037740, 0.084304, 0.995725,
		-0.400789, 0.914057, -0.062199,
		-0.915393, -0.396728, 0.068285,
		36.714745, 32.156815, 44.107601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962345, 32.913857, 44.513535>,  <37.355518, 32.434525, 44.059803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962345, 32.913857, 44.513535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822327, 32.539188, 44.517811>,  <36.738316, 32.314388, 44.520378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822327, 32.539188, 44.517811>,  <36.962345, 32.913857, 44.513535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822327, 32.539188, 44.517811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017221, 0.004977, 0.999839,
		-0.936575, 0.350173, 0.014388,
		-0.350045, -0.936672, 0.010692,
		36.717312, 32.258186, 44.521019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391201, 33.013420, 44.958584>,  <36.962345, 32.913857, 44.513535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391201, 33.013420, 44.958584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432186, 32.616226, 44.934975>,  <36.456776, 32.377911, 44.920811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432186, 32.616226, 44.934975>,  <36.391201, 33.013420, 44.958584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432186, 32.616226, 44.934975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106497, -0.048045, 0.993151,
		-0.989019, -0.108048, 0.100827,
		0.102464, -0.992984, -0.059024,
		36.462925, 32.318333, 44.917267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989037, 32.741508, 45.510181>,  <36.391201, 33.013420, 44.958584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989037, 32.741508, 45.510181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232487, 32.437752, 45.418186>,  <36.378555, 32.255497, 45.362991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232487, 32.437752, 45.418186>,  <35.989037, 32.741508, 45.510181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232487, 32.437752, 45.418186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183233, -0.147502, 0.971941,
		-0.772010, -0.633690, 0.049372,
		0.608626, -0.759395, -0.229986,
		36.415073, 32.209934, 45.349190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870007, 32.307163, 45.968666>,  <35.989037, 32.741508, 45.510181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870007, 32.307163, 45.968666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223709, 32.167759, 45.844330>,  <36.435932, 32.084118, 45.769726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223709, 32.167759, 45.844330>,  <35.870007, 32.307163, 45.968666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223709, 32.167759, 45.844330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302341, -0.080064, 0.949832,
		-0.355915, -0.933879, 0.034572,
		0.884259, -0.348512, -0.310845,
		36.488987, 32.063206, 45.751076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978397, 31.784456, 46.283108>,  <35.870007, 32.307163, 45.968666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978397, 31.784456, 46.283108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352409, 31.872770, 46.172131>,  <36.576817, 31.925758, 46.105545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352409, 31.872770, 46.172131>,  <35.978397, 31.784456, 46.283108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352409, 31.872770, 46.172131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315055, -0.158361, 0.935768,
		0.162668, -0.962380, -0.217632,
		0.935030, 0.220785, -0.277442,
		36.632919, 31.939005, 46.088898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351952, 31.155527, 46.516777>,  <35.978397, 31.784456, 46.283108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351952, 31.155527, 46.516777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576294, 31.483301, 46.469498>,  <36.710899, 31.679966, 46.441128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576294, 31.483301, 46.469498>,  <36.351952, 31.155527, 46.516777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576294, 31.483301, 46.469498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459018, -0.188947, 0.868102,
		0.689019, -0.541134, -0.482107,
		0.560852, 0.819435, -0.118202,
		36.744549, 31.729132, 46.434036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071190, 30.933790, 46.636589>,  <36.351952, 31.155527, 46.516777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071190, 30.933790, 46.636589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074085, 31.329975, 46.691635>,  <37.075825, 31.567686, 46.724663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074085, 31.329975, 46.691635>,  <37.071190, 30.933790, 46.636589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074085, 31.329975, 46.691635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440070, -0.126728, 0.888976,
		0.897934, 0.054120, -0.436789,
		0.007242, 0.990460, 0.137611,
		37.076260, 31.627113, 46.732918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705246, 31.135330, 46.861649>,  <37.071190, 30.933790, 46.636589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705246, 31.135330, 46.861649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494793, 31.451107, 46.988117>,  <37.368523, 31.640574, 47.063999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494793, 31.451107, 46.988117>,  <37.705246, 31.135330, 46.861649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494793, 31.451107, 46.988117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533797, 0.017160, 0.845439,
		0.662001, 0.613582, -0.430431,
		-0.526132, 0.789444, 0.316168,
		37.336952, 31.687941, 47.082966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183323, 31.555309, 47.253578>,  <37.705246, 31.135330, 46.861649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183323, 31.555309, 47.253578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825405, 31.692318, 47.368134>,  <37.610653, 31.774523, 47.436867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825405, 31.692318, 47.368134>,  <38.183323, 31.555309, 47.253578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825405, 31.692318, 47.368134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328285, 0.070002, 0.941981,
		0.302602, 0.936898, -0.175083,
		-0.894796, 0.342523, 0.286387,
		37.556965, 31.795074, 47.454048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609940, 32.103302, 46.883312>,  <38.183323, 31.555309, 47.253578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609940, 32.103302, 46.883312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986725, 32.237526, 46.879086>,  <39.212795, 32.318058, 46.876549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986725, 32.237526, 46.879086>,  <38.609940, 32.103302, 46.883312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986725, 32.237526, 46.879086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003409, -0.021903, -0.999754,
		-0.335704, 0.941766, -0.019488,
		0.941961, 0.335555, -0.010564,
		39.269314, 32.338192, 46.875916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648590, 32.767048, 46.409389>,  <38.609940, 32.103302, 46.883312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648590, 32.767048, 46.409389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005856, 32.592793, 46.454063>,  <39.220215, 32.488239, 46.480869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005856, 32.592793, 46.454063>,  <38.648590, 32.767048, 46.409389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005856, 32.592793, 46.454063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068944, -0.112767, -0.991227,
		0.444409, 0.893031, -0.070685,
		0.893167, -0.435637, 0.111684,
		39.273808, 32.462101, 46.487568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134579, 33.131008, 45.874821>,  <38.648590, 32.767048, 46.409389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134579, 33.131008, 45.874821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298447, 32.781902, 45.980995>,  <39.396767, 32.572441, 46.044701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298447, 32.781902, 45.980995>,  <39.134579, 33.131008, 45.874821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298447, 32.781902, 45.980995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176445, -0.209665, -0.961721,
		0.895005, 0.440826, 0.068101,
		0.409674, -0.872762, 0.265433,
		39.421349, 32.520073, 46.060623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670761, 33.112160, 45.517220>,  <39.134579, 33.131008, 45.874821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670761, 33.112160, 45.517220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668182, 32.721878, 45.604813>,  <39.666634, 32.487709, 45.657368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668182, 32.721878, 45.604813>,  <39.670761, 33.112160, 45.517220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668182, 32.721878, 45.604813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191174, -0.216150, -0.957461,
		0.981535, 0.035689, 0.187924,
		-0.006448, -0.975708, 0.218981,
		39.666248, 32.429165, 45.670506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381077, 32.872971, 45.306408>,  <39.670761, 33.112160, 45.517220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381077, 32.872971, 45.306408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095375, 32.594402, 45.334232>,  <39.923954, 32.427261, 45.350929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095375, 32.594402, 45.334232>,  <40.381077, 32.872971, 45.306408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095375, 32.594402, 45.334232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122943, -0.222698, -0.967104,
		0.688999, -0.682210, 0.244684,
		-0.714258, -0.696416, 0.069566,
		39.881096, 32.385479, 45.355103>
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
