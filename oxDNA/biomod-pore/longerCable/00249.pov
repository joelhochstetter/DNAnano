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
	<24.107607, 35.028587, 34.966740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358622, 34.889503, 34.688087>,  <24.509232, 34.806053, 34.520897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358622, 34.889503, 34.688087>,  <24.107607, 35.028587, 34.966740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.358622, 34.889503, 34.688087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267788, -0.743760, 0.612462,
		-0.731080, -0.570895, -0.373631,
		0.627543, -0.347705, -0.696628,
		24.546883, 34.785191, 34.479099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.967894, 34.317348, 34.889519>,  <24.107607, 35.028587, 34.966740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.967894, 34.317348, 34.889519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.336105, 34.371460, 34.742916>,  <24.557032, 34.403927, 34.654953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.336105, 34.371460, 34.742916>,  <23.967894, 34.317348, 34.889519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.336105, 34.371460, 34.742916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318536, -0.803045, 0.503641,
		-0.226192, -0.580362, -0.782315,
		0.920528, 0.135276, -0.366509,
		24.612265, 34.412045, 34.632965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.180264, 33.767273, 34.451439>,  <23.967894, 34.317348, 34.889519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.180264, 33.767273, 34.451439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.496407, 33.937141, 34.628071>,  <24.686092, 34.039062, 34.734051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.496407, 33.937141, 34.628071>,  <24.180264, 33.767273, 34.451439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.496407, 33.937141, 34.628071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384210, -0.904996, 0.182662,
		0.477202, 0.025293, -0.878430,
		0.790355, 0.424668, 0.441583,
		24.733513, 34.064541, 34.760544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.793877, 33.468643, 34.185268>,  <24.180264, 33.767273, 34.451439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.793877, 33.468643, 34.185268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.925484, 33.632507, 34.525604>,  <25.004448, 33.730827, 34.729805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.925484, 33.632507, 34.525604>,  <24.793877, 33.468643, 34.185268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.925484, 33.632507, 34.525604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410273, -0.873534, 0.261942,
		0.850544, 0.262893, -0.455481,
		0.329015, 0.409665, 0.850837,
		25.024189, 33.755405, 34.780857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.471910, 33.418690, 34.248970>,  <24.793877, 33.468643, 34.185268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.471910, 33.418690, 34.248970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387096, 33.458870, 34.637806>,  <25.336208, 33.482979, 34.871105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387096, 33.458870, 34.637806>,  <25.471910, 33.418690, 34.248970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.387096, 33.458870, 34.637806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505132, -0.840256, 0.197008,
		0.836590, 0.532804, 0.127423,
		-0.212034, 0.100450, 0.972086,
		25.323486, 33.489006, 34.929432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137928, 33.440441, 34.756947>,  <25.471910, 33.418690, 34.248970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.137928, 33.440441, 34.756947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809761, 33.278805, 34.918751>,  <25.612860, 33.181824, 35.015831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809761, 33.278805, 34.918751>,  <26.137928, 33.440441, 34.756947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809761, 33.278805, 34.918751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538994, -0.782660, 0.311335,
		0.190784, 0.473452, 0.859910,
		-0.820419, -0.404088, 0.404507,
		25.563635, 33.157578, 35.040104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333719, 33.302963, 35.446510>,  <26.137928, 33.440441, 34.756947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333719, 33.302963, 35.446510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028254, 33.049622, 35.396420>,  <25.844975, 32.897617, 35.366364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028254, 33.049622, 35.396420>,  <26.333719, 33.302963, 35.446510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028254, 33.049622, 35.396420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572054, -0.753718, 0.323516,
		-0.299286, 0.175420, 0.937900,
		-0.763663, -0.633353, -0.125228,
		25.799154, 32.859615, 35.358852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.224012, 32.941788, 36.075764>,  <26.333719, 33.302963, 35.446510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.224012, 32.941788, 36.075764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093246, 32.700382, 35.784863>,  <26.014788, 32.555538, 35.610321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093246, 32.700382, 35.784863>,  <26.224012, 32.941788, 36.075764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093246, 32.700382, 35.784863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608163, -0.723371, 0.326913,
		-0.723371, -0.335417, 0.603514,
		-0.326913, -0.603514, -0.727254,
		25.995173, 32.519329, 35.566685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146534, 32.319992, 36.454197>,  <26.224012, 32.941788, 36.075764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146534, 32.319992, 36.454197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157406, 32.202362, 36.072041>,  <26.163929, 32.131783, 35.842747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157406, 32.202362, 36.072041>,  <26.146534, 32.319992, 36.454197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157406, 32.202362, 36.072041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557719, -0.788706, 0.258636,
		-0.829585, -0.539872, 0.142574,
		0.027181, -0.294077, -0.955395,
		26.165560, 32.114140, 35.785423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023949, 31.635563, 36.481220>,  <26.146534, 32.319992, 36.454197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023949, 31.635563, 36.481220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193825, 31.673512, 36.121078>,  <26.295752, 31.696281, 35.904995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193825, 31.673512, 36.121078>,  <26.023949, 31.635563, 36.481220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193825, 31.673512, 36.121078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588463, -0.784684, 0.194892,
		-0.688003, -0.612594, -0.389077,
		0.424691, 0.094871, -0.900354,
		26.321232, 31.701973, 35.850971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.004051, 30.984962, 36.180546>,  <26.023949, 31.635563, 36.481220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.004051, 30.984962, 36.180546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292831, 31.198839, 36.004871>,  <26.466101, 31.327166, 35.899467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292831, 31.198839, 36.004871>,  <26.004051, 30.984962, 36.180546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.292831, 31.198839, 36.004871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691913, -0.552058, 0.465283,
		0.006326, -0.639793, -0.768521,
		0.721953, 0.534694, -0.439189,
		26.509417, 31.359247, 35.873116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507214, 30.551807, 36.019691>,  <26.004051, 30.984962, 36.180546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507214, 30.551807, 36.019691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671511, 30.915359, 36.048595>,  <26.770090, 31.133492, 36.065937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671511, 30.915359, 36.048595>,  <26.507214, 30.551807, 36.019691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671511, 30.915359, 36.048595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683790, -0.359504, 0.634971,
		0.603092, -0.211399, -0.769149,
		0.410744, 0.908882, 0.072262,
		26.794735, 31.188025, 36.070274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244375, 30.348696, 36.321892>,  <26.507214, 30.551807, 36.019691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244375, 30.348696, 36.321892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247438, 30.748175, 36.342056>,  <27.249277, 30.987862, 36.354153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247438, 30.748175, 36.342056>,  <27.244375, 30.348696, 36.321892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247438, 30.748175, 36.342056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716655, -0.040636, 0.696244,
		0.697386, 0.030793, -0.716034,
		0.007657, 0.998699, 0.050407,
		27.249735, 31.047785, 36.357178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020309, 30.638769, 36.209927>,  <27.244375, 30.348696, 36.321892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020309, 30.638769, 36.209927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755360, 30.843233, 36.429008>,  <27.596390, 30.965912, 36.560455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755360, 30.843233, 36.429008>,  <28.020309, 30.638769, 36.209927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755360, 30.843233, 36.429008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553328, -0.159069, 0.817634,
		0.505063, 0.844638, -0.177475,
		-0.662374, 0.511159, 0.547702,
		27.556648, 30.996580, 36.593319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065113, 31.249197, 36.316071>,  <28.020309, 30.638769, 36.209927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065113, 31.249197, 36.316071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847305, 31.407598, 36.611820>,  <27.716621, 31.502640, 36.789272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847305, 31.407598, 36.611820>,  <28.065113, 31.249197, 36.316071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847305, 31.407598, 36.611820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607264, 0.794200, 0.021853,
		-0.578560, 0.460897, -0.672936,
		-0.544517, 0.396006, 0.739378,
		27.683950, 31.526400, 36.833633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770184, 31.851828, 36.088326>,  <28.065113, 31.249197, 36.316071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770184, 31.851828, 36.088326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816961, 31.908302, 36.481544>,  <27.845028, 31.942186, 36.717476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816961, 31.908302, 36.481544>,  <27.770184, 31.851828, 36.088326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816961, 31.908302, 36.481544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542114, 0.820293, -0.182299,
		-0.832128, 0.554244, 0.019389,
		0.116942, 0.141185, 0.983052,
		27.852043, 31.950659, 36.776459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542868, 32.001801, 35.372261>,  <27.770184, 31.851828, 36.088326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542868, 32.001801, 35.372261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228226, 31.795740, 35.508415>,  <27.039440, 31.672102, 35.590107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228226, 31.795740, 35.508415>,  <27.542868, 32.001801, 35.372261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228226, 31.795740, 35.508415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609769, 0.561406, -0.559469,
		0.097116, -0.647641, -0.755731,
		-0.786607, -0.515155, 0.340390,
		26.992243, 31.641193, 35.610531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956495, 31.778372, 34.759148>,  <27.542868, 32.001801, 35.372261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956495, 31.778372, 34.759148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750551, 31.772728, 35.102009>,  <26.626984, 31.769342, 35.307728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750551, 31.772728, 35.102009>,  <26.956495, 31.778372, 34.759148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750551, 31.772728, 35.102009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612426, 0.705708, -0.356244,
		-0.599877, -0.708362, -0.371983,
		-0.514862, -0.014109, 0.857157,
		26.596092, 31.768496, 35.359158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.273224, 31.699497, 34.529854>,  <26.956495, 31.778372, 34.759148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.273224, 31.699497, 34.529854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221684, 31.823101, 34.906769>,  <26.190760, 31.897263, 35.132919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221684, 31.823101, 34.906769>,  <26.273224, 31.699497, 34.529854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221684, 31.823101, 34.906769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693541, 0.651091, -0.308352,
		-0.708800, -0.693248, 0.130417,
		-0.128851, 0.309010, 0.942290,
		26.183027, 31.915804, 35.189457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.556765, 31.538982, 34.866795>,  <26.273224, 31.699497, 34.529854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.556765, 31.538982, 34.866795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.696850, 31.854219, 35.069283>,  <25.780901, 32.043362, 35.190777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.696850, 31.854219, 35.069283>,  <25.556765, 31.538982, 34.866795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.696850, 31.854219, 35.069283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762570, 0.553722, -0.334483,
		-0.543909, -0.268887, 0.794898,
		0.350215, 0.788094, 0.506219,
		25.801914, 32.090649, 35.221149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.224686, 32.063770, 34.474705>,  <25.556765, 31.538982, 34.866795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.224686, 32.063770, 34.474705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362185, 32.149651, 34.840382>,  <25.444685, 32.201180, 35.059788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362185, 32.149651, 34.840382>,  <25.224686, 32.063770, 34.474705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.362185, 32.149651, 34.840382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671626, 0.736608, 0.079548,
		-0.656320, -0.641338, 0.397405,
		0.343748, 0.214699, 0.914189,
		25.465309, 32.214062, 35.114639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.731087, 32.193478, 35.054928>,  <25.224686, 32.063770, 34.474705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.731087, 32.193478, 35.054928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.049259, 32.398403, 35.184437>,  <25.240162, 32.521358, 35.262142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.049259, 32.398403, 35.184437>,  <24.731087, 32.193478, 35.054928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.049259, 32.398403, 35.184437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564432, 0.820783, 0.087927,
		-0.220698, -0.252686, 0.942042,
		0.795430, 0.512313, 0.323769,
		25.287888, 32.552097, 35.281567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.570324, 32.572685, 35.671295>,  <24.731087, 32.193478, 35.054928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.570324, 32.572685, 35.671295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.874954, 32.752697, 35.484756>,  <25.057732, 32.860706, 35.372833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.874954, 32.752697, 35.484756>,  <24.570324, 32.572685, 35.671295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.874954, 32.752697, 35.484756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542540, 0.836312, -0.078950,
		0.354478, 0.313136, 0.881074,
		0.761575, 0.450032, -0.466343,
		25.103426, 32.887707, 35.344852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.543018, 33.273186, 35.847736>,  <24.570324, 32.572685, 35.671295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.543018, 33.273186, 35.847736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.771061, 33.327797, 35.523678>,  <24.907887, 33.360565, 35.329243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.771061, 33.327797, 35.523678>,  <24.543018, 33.273186, 35.847736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.771061, 33.327797, 35.523678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306704, 0.950173, -0.055705,
		0.762174, 0.280232, 0.583575,
		0.570108, 0.136528, -0.810146,
		24.942093, 33.368755, 35.280636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.007849, 33.727409, 36.141243>,  <24.543018, 33.273186, 35.847736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.007849, 33.727409, 36.141243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.135754, 33.664490, 35.767502>,  <25.212496, 33.626740, 35.543259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.135754, 33.664490, 35.767502>,  <25.007849, 33.727409, 36.141243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.135754, 33.664490, 35.767502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104071, 0.974326, -0.199645,
		0.941765, 0.161077, 0.295181,
		0.319761, -0.157299, -0.934350,
		25.231682, 33.617298, 35.487198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.281782, 34.389645, 35.912312>,  <25.007849, 33.727409, 36.141243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.281782, 34.389645, 35.912312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.226946, 34.182804, 35.574364>,  <25.194044, 34.058701, 35.371593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.226946, 34.182804, 35.574364>,  <25.281782, 34.389645, 35.912312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.226946, 34.182804, 35.574364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269556, 0.840211, -0.470515,
		0.953177, 0.163238, -0.254572,
		-0.137088, -0.517105, -0.844872,
		25.185820, 34.027672, 35.320904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719528, 34.729481, 35.364880>,  <25.281782, 34.389645, 35.912312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719528, 34.729481, 35.364880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423153, 34.520893, 35.195610>,  <25.245327, 34.395741, 35.094048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423153, 34.520893, 35.195610>,  <25.719528, 34.729481, 35.364880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.423153, 34.520893, 35.195610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198970, 0.772293, -0.603303,
		0.641419, -0.362813, -0.675980,
		-0.740940, -0.521470, -0.423174,
		25.200871, 34.364452, 35.068657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.888874, 34.600254, 34.643948>,  <25.719528, 34.729481, 35.364880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.888874, 34.600254, 34.643948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.494457, 34.625580, 34.705544>,  <25.257807, 34.640774, 34.742500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.494457, 34.625580, 34.705544>,  <25.888874, 34.600254, 34.643948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.494457, 34.625580, 34.705544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058484, 0.734234, -0.676372,
		-0.155889, -0.675938, -0.720283,
		-0.986042, 0.063314, 0.153991,
		25.198645, 34.644573, 34.751740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444447, 34.361446, 34.133575>,  <25.888874, 34.600254, 34.643948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.444447, 34.361446, 34.133575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254133, 34.648941, 34.336376>,  <25.139946, 34.821438, 34.458057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254133, 34.648941, 34.336376>,  <25.444447, 34.361446, 34.133575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.254133, 34.648941, 34.336376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095215, 0.615129, -0.782656,
		-0.874395, -0.324099, -0.361101,
		-0.475782, 0.718732, 0.507006,
		25.111399, 34.864559, 34.488480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.944910, 34.631817, 33.587009>,  <25.444447, 34.361446, 34.133575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.944910, 34.631817, 33.587009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038147, 34.883648, 33.883469>,  <25.094090, 35.034748, 34.061344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038147, 34.883648, 33.883469>,  <24.944910, 34.631817, 33.587009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.038147, 34.883648, 33.883469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024952, 0.765762, -0.642639,
		-0.972134, 0.131301, 0.194203,
		0.233092, 0.629578, 0.741148,
		25.108074, 35.072521, 34.105812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.448879, 35.198036, 33.619282>,  <24.944910, 34.631817, 33.587009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.448879, 35.198036, 33.619282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.779243, 35.326809, 33.804424>,  <24.977461, 35.404072, 33.915512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.779243, 35.326809, 33.804424>,  <24.448879, 35.198036, 33.619282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.779243, 35.326809, 33.804424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022342, 0.838999, -0.543675,
		-0.563361, 0.438684, 0.700128,
		0.825908, 0.321928, 0.462858,
		25.027016, 35.423386, 33.943283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.461624, 35.948513, 33.650124>,  <24.448879, 35.198036, 33.619282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.461624, 35.948513, 33.650124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.840551, 35.833706, 33.706993>,  <25.067907, 35.764824, 33.741116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.840551, 35.833706, 33.706993>,  <24.461624, 35.948513, 33.650124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.840551, 35.833706, 33.706993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317740, 0.898083, -0.304119,
		-0.040395, 0.333271, 0.941965,
		0.947317, -0.287016, 0.142172,
		25.124746, 35.747601, 33.749645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.855066, 36.512444, 33.991627>,  <24.461624, 35.948513, 33.650124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.855066, 36.512444, 33.991627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134352, 36.275898, 33.830238>,  <25.301924, 36.133972, 33.733406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134352, 36.275898, 33.830238>,  <24.855066, 36.512444, 33.991627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.134352, 36.275898, 33.830238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587465, 0.795384, -0.149165,
		0.409126, -0.132877, 0.902751,
		0.698213, -0.591361, -0.403472,
		25.343815, 36.098488, 33.709198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.405811, 36.534229, 34.405590>,  <24.855066, 36.512444, 33.991627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.405811, 36.534229, 34.405590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525831, 36.449905, 34.033455>,  <25.597843, 36.399311, 33.810173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525831, 36.449905, 34.033455>,  <25.405811, 36.534229, 34.405590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.525831, 36.449905, 34.033455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585428, 0.810708, 0.005104,
		0.753156, -0.546178, 0.366668,
		0.300048, -0.210813, -0.930338,
		25.615847, 36.386662, 33.754353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079382, 36.721287, 34.380192>,  <25.405811, 36.534229, 34.405590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079382, 36.721287, 34.380192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018349, 36.729954, 33.984970>,  <25.981730, 36.735153, 33.747837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018349, 36.729954, 33.984970>,  <26.079382, 36.721287, 34.380192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018349, 36.729954, 33.984970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412158, 0.910064, -0.043694,
		0.898246, -0.413901, -0.147788,
		-0.152582, 0.021664, -0.988054,
		25.972574, 36.736454, 33.688553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719931, 37.002277, 33.996799>,  <26.079382, 36.721287, 34.380192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.719931, 37.002277, 33.996799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381165, 37.065998, 33.793880>,  <26.177904, 37.104233, 33.672127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381165, 37.065998, 33.793880>,  <26.719931, 37.002277, 33.996799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381165, 37.065998, 33.793880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141329, 0.987188, 0.074060,
		0.512599, -0.008973, -0.858581,
		-0.846917, 0.159306, -0.507300,
		26.127089, 37.113789, 33.641689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136080, 36.394135, 33.777790>,  <26.719931, 37.002277, 33.996799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136080, 36.394135, 33.777790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905043, 36.428051, 33.453026>,  <26.766420, 36.448402, 33.258167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905043, 36.428051, 33.453026>,  <27.136080, 36.394135, 33.777790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905043, 36.428051, 33.453026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339568, 0.929415, -0.144503,
		0.742347, -0.359162, -0.565618,
		-0.577594, 0.084794, -0.811908,
		26.731764, 36.453487, 33.209454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494125, 36.679585, 33.101978>,  <27.136080, 36.394135, 33.777790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494125, 36.679585, 33.101978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105156, 36.753708, 33.045326>,  <26.871775, 36.798180, 33.011337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105156, 36.753708, 33.045326>,  <27.494125, 36.679585, 33.101978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105156, 36.753708, 33.045326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228449, 0.879094, -0.418335,
		0.046982, -0.439152, -0.897183,
		-0.972422, 0.185307, -0.141625,
		26.813429, 36.809299, 33.002838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466331, 37.010952, 32.419464>,  <27.494125, 36.679585, 33.101978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.466331, 37.010952, 32.419464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127119, 37.107811, 32.608021>,  <26.923592, 37.165924, 32.721157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127119, 37.107811, 32.608021>,  <27.466331, 37.010952, 32.419464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127119, 37.107811, 32.608021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039675, 0.916020, -0.399166,
		-0.528462, -0.319802, -0.786418,
		-0.848029, 0.242145, 0.471394,
		26.872711, 37.180454, 32.749439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003464, 37.421291, 31.949163>,  <27.466331, 37.010952, 32.419464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003464, 37.421291, 31.949163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963331, 37.490555, 32.341072>,  <26.939251, 37.532112, 32.576218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963331, 37.490555, 32.341072>,  <27.003464, 37.421291, 31.949163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963331, 37.490555, 32.341072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108813, 0.976923, -0.183797,
		-0.988986, -0.125052, -0.079175,
		-0.100332, 0.173157, 0.979770,
		26.933231, 37.542503, 32.635002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000723, 38.203659, 32.041004>,  <27.003464, 37.421291, 31.949163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000723, 38.203659, 32.041004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621387, 38.317871, 31.985680>,  <26.393787, 38.386398, 31.952486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621387, 38.317871, 31.985680>,  <27.000723, 38.203659, 32.041004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621387, 38.317871, 31.985680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304271, -0.695046, 0.651406,
		0.089867, 0.659836, 0.746017,
		-0.948337, 0.285531, -0.138307,
		26.336885, 38.403530, 31.944187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884975, 38.388210, 32.826958>,  <27.000723, 38.203659, 32.041004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884975, 38.388210, 32.826958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686005, 38.189934, 32.542183>,  <26.566622, 38.070969, 32.371319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686005, 38.189934, 32.542183>,  <26.884975, 38.388210, 32.826958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686005, 38.189934, 32.542183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176094, -0.745893, 0.642366,
		-0.849446, 0.444898, 0.283738,
		-0.497425, -0.495690, -0.711940,
		26.536777, 38.041225, 32.328602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.159508, 38.116409, 32.991531>,  <26.884975, 38.388210, 32.826958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.159508, 38.116409, 32.991531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286171, 37.871994, 32.701328>,  <26.362169, 37.725346, 32.527206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286171, 37.871994, 32.701328>,  <26.159508, 38.116409, 32.991531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.286171, 37.871994, 32.701328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208571, -0.790998, 0.575170,
		-0.925325, -0.030812, -0.377920,
		0.316657, -0.611042, -0.725504,
		26.381168, 37.688683, 32.483677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.798258, 37.563385, 33.315708>,  <26.159508, 38.116409, 32.991531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.798258, 37.563385, 33.315708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116566, 37.426579, 33.115799>,  <26.307550, 37.344494, 32.995853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116566, 37.426579, 33.115799>,  <25.798258, 37.563385, 33.315708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.116566, 37.426579, 33.115799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223848, -0.932929, 0.282019,
		-0.562710, -0.112548, -0.818957,
		0.795770, -0.342017, -0.499776,
		26.355297, 37.323975, 32.965866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.517040, 37.059692, 32.932686>,  <25.798258, 37.563385, 33.315708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.517040, 37.059692, 32.932686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906916, 36.992641, 32.991859>,  <26.140841, 36.952412, 33.027363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906916, 36.992641, 32.991859>,  <25.517040, 37.059692, 32.932686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906916, 36.992641, 32.991859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197711, -0.955185, 0.220298,
		0.104379, -0.243970, -0.964149,
		0.974687, -0.167628, 0.147937,
		26.199322, 36.942352, 33.036240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.804094, 36.466396, 32.490620>,  <25.517040, 37.059692, 32.932686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.804094, 36.466396, 32.490620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926405, 36.540001, 32.864281>,  <25.999790, 36.584164, 33.088478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926405, 36.540001, 32.864281>,  <25.804094, 36.466396, 32.490620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926405, 36.540001, 32.864281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229036, -0.938119, 0.259760,
		0.924145, -0.293382, -0.244708,
		0.305775, 0.184009, 0.934154,
		26.018137, 36.595203, 33.144527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065372, 35.855949, 32.660820>,  <25.804094, 36.466396, 32.490620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065372, 35.855949, 32.660820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963930, 36.035057, 33.003792>,  <25.903065, 36.142521, 33.209576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963930, 36.035057, 33.003792>,  <26.065372, 35.855949, 32.660820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963930, 36.035057, 33.003792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191855, -0.892084, 0.409119,
		0.948091, -0.060748, 0.312143,
		-0.253605, 0.447768, 0.857431,
		25.887848, 36.169388, 33.261021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.313910, 35.405739, 33.118958>,  <26.065372, 35.855949, 32.660820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.313910, 35.405739, 33.118958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014940, 35.608593, 33.290619>,  <25.835558, 35.730305, 33.393616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014940, 35.608593, 33.290619>,  <26.313910, 35.405739, 33.118958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.014940, 35.608593, 33.290619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391068, -0.858051, 0.332889,
		0.537053, 0.080982, 0.839653,
		-0.747422, 0.507140, 0.429149,
		25.790714, 35.760735, 33.419365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304956, 35.290459, 33.883305>,  <26.313910, 35.405739, 33.118958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304956, 35.290459, 33.883305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932396, 35.385048, 33.772614>,  <25.708860, 35.441799, 33.706200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932396, 35.385048, 33.772614>,  <26.304956, 35.290459, 33.883305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.932396, 35.385048, 33.772614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333409, -0.859287, 0.387897,
		-0.146061, 0.453550, 0.879181,
		-0.931399, 0.236470, -0.276726,
		25.652977, 35.455990, 33.689594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.911751, 35.567665, 34.159832>,  <26.304956, 35.290459, 33.883305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.911751, 35.567665, 34.159832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111483, 35.715481, 33.846371>,  <27.231321, 35.804173, 33.658295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111483, 35.715481, 33.846371>,  <26.911751, 35.567665, 34.159832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111483, 35.715481, 33.846371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063151, 0.917594, 0.392469,
		0.864107, -0.146483, 0.481520,
		0.499330, 0.369544, -0.783649,
		27.261282, 35.826344, 33.611275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357203, 35.438366, 34.619869>,  <26.911751, 35.567665, 34.159832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357203, 35.438366, 34.619869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447962, 35.309807, 34.252125>,  <27.502417, 35.232670, 34.031479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447962, 35.309807, 34.252125>,  <27.357203, 35.438366, 34.619869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447962, 35.309807, 34.252125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760590, -0.531115, 0.373388,
		-0.608292, -0.783976, 0.123945,
		0.226898, -0.321401, -0.919358,
		27.516031, 35.213387, 33.976318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412844, 34.662113, 34.544174>,  <27.357203, 35.438366, 34.619869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412844, 34.662113, 34.544174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650829, 34.866894, 34.296326>,  <27.793621, 34.989761, 34.147617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650829, 34.866894, 34.296326>,  <27.412844, 34.662113, 34.544174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650829, 34.866894, 34.296326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712502, -0.692703, 0.111822,
		-0.371963, -0.508008, -0.776898,
		0.594966, 0.511948, -0.619617,
		27.829319, 35.020477, 34.110439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916391, 34.275135, 34.381264>,  <27.412844, 34.662113, 34.544174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916391, 34.275135, 34.381264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039074, 34.577717, 34.612335>,  <28.112684, 34.759266, 34.750977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039074, 34.577717, 34.612335>,  <27.916391, 34.275135, 34.381264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039074, 34.577717, 34.612335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444579, -0.422793, 0.789681,
		0.841594, -0.499023, 0.206629,
		0.306708, 0.756453, 0.577675,
		28.131086, 34.804653, 34.785637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211067, 33.971825, 34.932499>,  <27.916391, 34.275135, 34.381264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211067, 33.971825, 34.932499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116016, 34.343906, 35.044399>,  <28.058987, 34.567154, 35.111538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116016, 34.343906, 35.044399>,  <28.211067, 33.971825, 34.932499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116016, 34.343906, 35.044399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282477, -0.341724, 0.896343,
		0.929377, 0.133973, 0.343963,
		-0.237626, 0.930202, 0.279747,
		28.044729, 34.622967, 35.128323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654896, 33.577148, 35.336479>,  <28.211067, 33.971825, 34.932499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654896, 33.577148, 35.336479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976870, 33.390381, 35.482941>,  <28.170053, 33.278320, 35.570820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976870, 33.390381, 35.482941>,  <27.654896, 33.577148, 35.336479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976870, 33.390381, 35.482941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020347, 0.638439, 0.769403,
		-0.593018, -0.611867, 0.523400,
		0.804932, -0.466919, 0.366156,
		28.218349, 33.250305, 35.592789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508345, 33.503929, 35.996971>,  <27.654896, 33.577148, 35.336479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508345, 33.503929, 35.996971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906391, 33.513382, 35.958637>,  <28.145220, 33.519054, 35.935635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906391, 33.513382, 35.958637>,  <27.508345, 33.503929, 35.996971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906391, 33.513382, 35.958637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071327, 0.498979, 0.863674,
		0.068232, -0.866292, 0.494857,
		0.995117, 0.023633, -0.095837,
		28.204926, 33.520473, 35.929886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829750, 33.212940, 36.663246>,  <27.508345, 33.503929, 35.996971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829750, 33.212940, 36.663246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115021, 33.427692, 36.482964>,  <28.286184, 33.556541, 36.374794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115021, 33.427692, 36.482964>,  <27.829750, 33.212940, 36.663246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115021, 33.427692, 36.482964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075477, 0.580419, 0.810812,
		0.696909, -0.612271, 0.373419,
		0.713177, 0.536878, -0.450712,
		28.328974, 33.588757, 36.347752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460085, 33.168369, 37.133583>,  <27.829750, 33.212940, 36.663246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460085, 33.168369, 37.133583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462410, 33.497757, 36.906654>,  <28.463804, 33.695389, 36.770496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462410, 33.497757, 36.906654>,  <28.460085, 33.168369, 37.133583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462410, 33.497757, 36.906654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064156, 0.565859, 0.822003,
		0.997923, -0.041173, -0.049543,
		0.005810, 0.823474, -0.567325,
		28.464153, 33.744801, 36.736458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008135, 33.765179, 37.174450>,  <28.460085, 33.168369, 37.133583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008135, 33.765179, 37.174450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633297, 33.899303, 37.135624>,  <28.408394, 33.979778, 37.112328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633297, 33.899303, 37.135624>,  <29.008135, 33.765179, 37.174450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633297, 33.899303, 37.135624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094221, 0.510702, 0.854579,
		0.336120, 0.791676, -0.510169,
		-0.937094, 0.335310, -0.097064,
		28.352169, 33.999897, 37.106506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820683, 34.278160, 37.703671>,  <29.008135, 33.765179, 37.174450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820683, 34.278160, 37.703671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003582, 34.588737, 37.530209>,  <29.113321, 34.775085, 37.426132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003582, 34.588737, 37.530209>,  <28.820683, 34.278160, 37.703671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003582, 34.588737, 37.530209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205940, -0.381920, -0.900958,
		-0.865166, 0.501269, -0.014731,
		0.457248, 0.776445, -0.433656,
		29.140757, 34.821671, 37.400112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341173, 34.620331, 37.244209>,  <28.820683, 34.278160, 37.703671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341173, 34.620331, 37.244209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722752, 34.627083, 37.124409>,  <28.951698, 34.631134, 37.052528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722752, 34.627083, 37.124409>,  <28.341173, 34.620331, 37.244209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722752, 34.627083, 37.124409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237952, -0.565379, -0.789763,
		-0.182659, 0.824658, -0.535326,
		0.953947, 0.016875, -0.299501,
		29.008936, 34.632145, 37.034557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342413, 34.814011, 36.557838>,  <28.341173, 34.620331, 37.244209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342413, 34.814011, 36.557838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671947, 34.598373, 36.627888>,  <28.869667, 34.468990, 36.669918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671947, 34.598373, 36.627888>,  <28.342413, 34.814011, 36.557838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671947, 34.598373, 36.627888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216008, -0.584233, -0.782312,
		0.524057, 0.606668, -0.597761,
		0.823835, -0.539098, 0.175126,
		28.919098, 34.436646, 36.680424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808086, 34.695911, 35.971004>,  <28.342413, 34.814011, 36.557838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808086, 34.695911, 35.971004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822424, 34.368191, 36.199902>,  <28.831026, 34.171558, 36.337238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822424, 34.368191, 36.199902>,  <28.808086, 34.695911, 35.971004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822424, 34.368191, 36.199902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159772, -0.569944, -0.806001,
		0.986503, -0.062538, -0.151330,
		0.035844, -0.819300, 0.572243,
		28.833178, 34.122402, 36.371574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298702, 34.146877, 35.706051>,  <28.808086, 34.695911, 35.971004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298702, 34.146877, 35.706051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026571, 33.952526, 35.925533>,  <28.863293, 33.835915, 36.057220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026571, 33.952526, 35.925533>,  <29.298702, 34.146877, 35.706051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026571, 33.952526, 35.925533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143538, -0.645836, -0.749862,
		0.718716, -0.588911, 0.369637,
		-0.680327, -0.485881, 0.548703,
		28.822474, 33.806763, 36.090145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487383, 33.437366, 35.573624>,  <29.298702, 34.146877, 35.706051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487383, 33.437366, 35.573624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118160, 33.472939, 35.723320>,  <28.896626, 33.494282, 35.813137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118160, 33.472939, 35.723320>,  <29.487383, 33.437366, 35.573624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118160, 33.472939, 35.723320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277368, -0.827967, -0.487378,
		0.266514, -0.553681, 0.788928,
		-0.923058, 0.088930, 0.374238,
		28.841242, 33.499619, 35.835590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363211, 32.837742, 35.902294>,  <29.487383, 33.437366, 35.573624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363211, 32.837742, 35.902294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023584, 33.003849, 35.771671>,  <28.819809, 33.103516, 35.693298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023584, 33.003849, 35.771671>,  <29.363211, 32.837742, 35.902294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023584, 33.003849, 35.771671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023438, -0.647144, -0.762007,
		-0.527769, -0.639340, 0.559200,
		-0.849065, 0.415270, -0.326558,
		28.768866, 33.128429, 35.673702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925032, 32.285671, 35.742840>,  <29.363211, 32.837742, 35.902294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925032, 32.285671, 35.742840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825840, 32.603485, 35.521126>,  <28.766325, 32.794174, 35.388100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825840, 32.603485, 35.521126>,  <28.925032, 32.285671, 35.742840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825840, 32.603485, 35.521126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114625, -0.544070, -0.831173,
		-0.961961, -0.269647, 0.043843,
		-0.247977, 0.794531, -0.554282,
		28.751448, 32.841843, 35.354839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600979, 32.045364, 35.211784>,  <28.925032, 32.285671, 35.742840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600979, 32.045364, 35.211784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746765, 32.393253, 35.078667>,  <28.834238, 32.601986, 34.998798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746765, 32.393253, 35.078667>,  <28.600979, 32.045364, 35.211784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746765, 32.393253, 35.078667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228986, -0.430104, -0.873256,
		-0.902624, 0.242068, -0.355912,
		0.364467, 0.869721, -0.332792,
		28.856106, 32.654171, 34.978828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359009, 32.010513, 34.571457>,  <28.600979, 32.045364, 35.211784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359009, 32.010513, 34.571457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622452, 32.310566, 34.547649>,  <28.780518, 32.490597, 34.533367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622452, 32.310566, 34.547649>,  <28.359009, 32.010513, 34.571457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622452, 32.310566, 34.547649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253255, -0.295441, -0.921182,
		-0.708590, 0.591623, -0.384554,
		0.658606, 0.750131, -0.059515,
		28.820034, 32.535606, 34.529797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314997, 32.216125, 33.900345>,  <28.359009, 32.010513, 34.571457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314997, 32.216125, 33.900345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676561, 32.344795, 34.013103>,  <28.893501, 32.421997, 34.080757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676561, 32.344795, 34.013103>,  <28.314997, 32.216125, 33.900345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676561, 32.344795, 34.013103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406591, -0.441665, -0.799760,
		-0.132758, 0.837531, -0.530017,
		0.903913, 0.321675, 0.281898,
		28.947735, 32.441299, 34.097672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614342, 32.478374, 33.335148>,  <28.314997, 32.216125, 33.900345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614342, 32.478374, 33.335148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921963, 32.415142, 33.582878>,  <29.106535, 32.377201, 33.731518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921963, 32.415142, 33.582878>,  <28.614342, 32.478374, 33.335148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921963, 32.415142, 33.582878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534569, -0.372130, -0.758785,
		0.350421, 0.914620, -0.201681,
		0.769052, -0.158082, 0.619330,
		29.152678, 32.367718, 33.768677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218210, 32.886631, 33.106960>,  <28.614342, 32.478374, 33.335148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218210, 32.886631, 33.106960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347532, 32.578671, 33.327042>,  <29.425125, 32.393894, 33.459091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347532, 32.578671, 33.327042>,  <29.218210, 32.886631, 33.106960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347532, 32.578671, 33.327042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620168, -0.266778, -0.737714,
		0.714749, 0.579726, 0.391217,
		0.323304, -0.769901, 0.550207,
		29.444523, 32.347702, 33.492104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971237, 32.913029, 33.015205>,  <29.218210, 32.886631, 33.106960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971237, 32.913029, 33.015205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877602, 32.537880, 33.117653>,  <29.821421, 32.312790, 33.179123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877602, 32.537880, 33.117653>,  <29.971237, 32.913029, 33.015205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877602, 32.537880, 33.117653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421603, -0.335308, -0.842508,
		0.876044, -0.089241, 0.473902,
		-0.234090, -0.937872, 0.256121,
		29.807375, 32.256519, 33.194489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606010, 32.567844, 32.964268>,  <29.971237, 32.913029, 33.015205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606010, 32.567844, 32.964268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333422, 32.275341, 32.975975>,  <30.169868, 32.099838, 32.983002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333422, 32.275341, 32.975975>,  <30.606010, 32.567844, 32.964268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333422, 32.275341, 32.975975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540431, -0.529800, -0.653641,
		0.493488, -0.429620, 0.756238,
		-0.681472, -0.731259, 0.029270,
		30.128981, 32.055962, 32.984756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884930, 31.908895, 33.167160>,  <30.606010, 32.567844, 32.964268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884930, 31.908895, 33.167160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544771, 31.801075, 32.986420>,  <30.340677, 31.736382, 32.877975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544771, 31.801075, 32.986420>,  <30.884930, 31.908895, 33.167160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544771, 31.801075, 32.986420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521363, -0.547248, -0.654753,
		-0.070785, -0.792377, 0.605912,
		-0.850395, -0.269553, -0.451852,
		30.289654, 31.720209, 32.850864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018257, 31.244526, 32.896229>,  <30.884930, 31.908895, 33.167160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018257, 31.244526, 32.896229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659143, 31.330021, 32.742188>,  <30.443676, 31.381317, 32.649761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659143, 31.330021, 32.742188>,  <31.018257, 31.244526, 32.896229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659143, 31.330021, 32.742188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200910, -0.579352, -0.789928,
		-0.391947, -0.786554, 0.477190,
		-0.897782, 0.213737, -0.385102,
		30.389809, 31.394142, 32.626656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597134, 30.658045, 32.879307>,  <31.018257, 31.244526, 32.896229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597134, 30.658045, 32.879307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490723, 30.904966, 32.583153>,  <30.426876, 31.053120, 32.405460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490723, 30.904966, 32.583153>,  <30.597134, 30.658045, 32.879307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490723, 30.904966, 32.583153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233691, -0.703849, -0.670809,
		-0.935210, -0.351475, 0.042986,
		-0.266029, 0.617302, -0.740383,
		30.410913, 31.090157, 32.361038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505228, 30.196869, 32.336861>,  <30.597134, 30.658045, 32.879307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505228, 30.196869, 32.336861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535549, 30.542875, 32.138470>,  <30.553741, 30.750479, 32.019436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535549, 30.542875, 32.138470>,  <30.505228, 30.196869, 32.336861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535549, 30.542875, 32.138470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331277, -0.491006, -0.805710,
		-0.940484, -0.103232, -0.323780,
		0.075803, 0.865018, -0.495981,
		30.558290, 30.802382, 31.989676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154757, 30.109615, 31.654444>,  <30.505228, 30.196869, 32.336861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154757, 30.109615, 31.654444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394024, 30.426479, 31.605982>,  <30.537584, 30.616598, 31.576904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394024, 30.426479, 31.605982>,  <30.154757, 30.109615, 31.654444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394024, 30.426479, 31.605982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247405, -0.326347, -0.912298,
		-0.762226, 0.515731, -0.391195,
		0.598166, 0.792161, -0.121156,
		30.573473, 30.664127, 31.569635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044447, 30.313774, 30.951555>,  <30.154757, 30.109615, 31.654444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044447, 30.313774, 30.951555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398493, 30.441099, 31.087347>,  <30.610920, 30.517494, 31.168821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398493, 30.441099, 31.087347>,  <30.044447, 30.313774, 30.951555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398493, 30.441099, 31.087347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438237, -0.324673, -0.838174,
		-0.156582, 0.890654, -0.426870,
		0.885116, 0.318313, 0.339480,
		30.664028, 30.536592, 31.189192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386395, 30.611414, 30.315928>,  <30.044447, 30.313774, 30.951555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386395, 30.611414, 30.315928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704481, 30.565228, 30.554020>,  <30.895332, 30.537516, 30.696875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704481, 30.565228, 30.554020>,  <30.386395, 30.611414, 30.315928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704481, 30.565228, 30.554020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591319, -0.069366, -0.803449,
		0.134059, 0.990887, 0.013115,
		0.795217, -0.115465, 0.595229,
		30.943047, 30.530588, 30.732588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845572, 31.013367, 29.966810>,  <30.386395, 30.611414, 30.315928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845572, 31.013367, 29.966810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059011, 30.755083, 30.185289>,  <31.187075, 30.600113, 30.316378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059011, 30.755083, 30.185289>,  <30.845572, 31.013367, 29.966810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059011, 30.755083, 30.185289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605599, -0.159093, -0.779705,
		0.590359, 0.746826, 0.306149,
		0.533598, -0.645709, 0.546199,
		31.219091, 30.561371, 30.349150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431774, 31.124767, 29.752436>,  <30.845572, 31.013367, 29.966810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431774, 31.124767, 29.752436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501091, 30.766712, 29.916725>,  <31.542681, 30.551878, 30.015299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501091, 30.766712, 29.916725>,  <31.431774, 31.124767, 29.752436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501091, 30.766712, 29.916725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632353, -0.218592, -0.743201,
		0.755050, 0.388512, 0.528165,
		0.173290, -0.895140, 0.410725,
		31.553078, 30.498171, 30.039942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192741, 31.112066, 29.718897>,  <31.431774, 31.124767, 29.752436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192741, 31.112066, 29.718897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036278, 30.744066, 29.728670>,  <31.942400, 30.523266, 29.734535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036278, 30.744066, 29.728670>,  <32.192741, 31.112066, 29.718897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036278, 30.744066, 29.728670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422534, -0.203110, -0.883295,
		0.817594, -0.335184, 0.468180,
		-0.391159, -0.919999, 0.024435,
		31.918930, 30.468067, 29.736000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682289, 30.774326, 29.276005>,  <32.192741, 31.112066, 29.718897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682289, 30.774326, 29.276005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366493, 30.533987, 29.326111>,  <32.177017, 30.389784, 29.356174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366493, 30.533987, 29.326111>,  <32.682289, 30.774326, 29.276005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366493, 30.533987, 29.326111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187336, -0.430251, -0.883057,
		0.584478, -0.673696, 0.452238,
		-0.789488, -0.600848, 0.125265,
		32.129646, 30.353733, 29.363689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921810, 30.129705, 29.099636>,  <32.682289, 30.774326, 29.276005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921810, 30.129705, 29.099636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524532, 30.100668, 29.063189>,  <32.286167, 30.083246, 29.041319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524532, 30.100668, 29.063189>,  <32.921810, 30.129705, 29.099636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524532, 30.100668, 29.063189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112477, -0.393645, -0.912355,
		0.030362, -0.916392, 0.399130,
		-0.993190, -0.072594, -0.091121,
		32.226574, 30.078890, 29.035852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797802, 29.447515, 28.947514>,  <32.921810, 30.129705, 29.099636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797802, 29.447515, 28.947514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481220, 29.655813, 28.819498>,  <32.291271, 29.780792, 28.742689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481220, 29.655813, 28.819498>,  <32.797802, 29.447515, 28.947514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481220, 29.655813, 28.819498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027924, -0.553855, -0.832145,
		-0.610591, -0.649667, 0.452892,
		-0.791454, 0.520746, -0.320037,
		32.243782, 29.812037, 28.723488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472309, 28.958429, 28.595680>,  <32.797802, 29.447515, 28.947514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472309, 28.958429, 28.595680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305073, 29.299509, 28.470394>,  <32.204731, 29.504156, 28.395222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305073, 29.299509, 28.470394>,  <32.472309, 28.958429, 28.595680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305073, 29.299509, 28.470394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035255, -0.359769, -0.932375,
		-0.907722, -0.378774, 0.180477,
		-0.418089, 0.852700, -0.313216,
		32.179646, 29.555319, 28.376429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178452, 28.661030, 28.104536>,  <32.472309, 28.958429, 28.595680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178452, 28.661030, 28.104536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161808, 29.054419, 28.034054>,  <32.151821, 29.290453, 27.991764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161808, 29.054419, 28.034054>,  <32.178452, 28.661030, 28.104536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161808, 29.054419, 28.034054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142794, -0.180402, -0.973173,
		-0.988878, -0.015328, 0.147940,
		-0.041605, 0.983474, -0.176207,
		32.149326, 29.349461, 27.981192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725027, 28.648092, 27.591509>,  <32.178452, 28.661030, 28.104536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725027, 28.648092, 27.591509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879379, 29.016356, 27.567894>,  <31.971991, 29.237314, 27.553724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879379, 29.016356, 27.567894>,  <31.725027, 28.648092, 27.591509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879379, 29.016356, 27.567894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022613, -0.073412, -0.997045,
		-0.922272, 0.383403, -0.049147,
		0.385878, 0.920659, -0.059036,
		31.995142, 29.292553, 27.550182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397043, 29.064413, 26.948774>,  <31.725027, 28.648092, 27.591509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397043, 29.064413, 26.948774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734501, 29.260239, 27.036947>,  <31.936975, 29.377733, 27.089851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734501, 29.260239, 27.036947>,  <31.397043, 29.064413, 26.948774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734501, 29.260239, 27.036947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109867, 0.244459, -0.963416,
		-0.525538, 0.837000, 0.152450,
		0.843646, 0.489563, 0.220431,
		31.987595, 29.407108, 27.103077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433456, 29.869053, 26.821405>,  <31.397043, 29.064413, 26.948774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433456, 29.869053, 26.821405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795889, 29.700331, 26.808153>,  <32.013348, 29.599096, 26.800201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795889, 29.700331, 26.808153>,  <31.433456, 29.869053, 26.821405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795889, 29.700331, 26.808153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171263, 0.437231, -0.882892,
		0.386894, 0.794297, 0.468406,
		0.906080, -0.421806, -0.033129,
		32.067715, 29.573790, 26.798214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942137, 30.386211, 26.391930>,  <31.433456, 29.869053, 26.821405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942137, 30.386211, 26.391930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104355, 30.021214, 26.413425>,  <32.201687, 29.802216, 26.426323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104355, 30.021214, 26.413425>,  <31.942137, 30.386211, 26.391930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104355, 30.021214, 26.413425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434063, 0.140507, -0.889858,
		0.804438, 0.384206, 0.453062,
		0.405548, -0.912493, 0.053741,
		32.226021, 29.747465, 26.429548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544731, 30.505648, 26.032934>,  <31.942137, 30.386211, 26.391930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544731, 30.505648, 26.032934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532608, 30.105930, 26.024073>,  <32.525333, 29.866100, 26.018757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532608, 30.105930, 26.024073>,  <32.544731, 30.505648, 26.032934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532608, 30.105930, 26.024073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551270, 0.001779, -0.834325,
		0.833776, -0.037495, 0.550828,
		-0.030303, -0.999295, -0.022153,
		32.523518, 29.806141, 26.017427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199478, 30.387915, 25.919460>,  <32.544731, 30.505648, 26.032934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199478, 30.387915, 25.919460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995850, 30.059525, 25.816038>,  <32.873672, 29.862492, 25.753984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995850, 30.059525, 25.816038>,  <33.199478, 30.387915, 25.919460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995850, 30.059525, 25.816038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588471, -0.112753, -0.800617,
		0.628133, -0.559722, 0.540519,
		-0.509068, -0.820974, -0.258556,
		32.843128, 29.813232, 25.738472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699547, 29.972433, 25.649511>,  <33.199478, 30.387915, 25.919460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699547, 29.972433, 25.649511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363548, 29.828632, 25.486952>,  <33.161949, 29.742352, 25.389416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363548, 29.828632, 25.486952>,  <33.699547, 29.972433, 25.649511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363548, 29.828632, 25.486952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452506, -0.050857, -0.890310,
		0.299402, -0.931756, 0.205397,
		-0.839998, -0.359504, -0.406399,
		33.111549, 29.720781, 25.365032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963104, 29.527584, 25.194311>,  <33.699547, 29.972433, 25.649511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963104, 29.527584, 25.194311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574642, 29.560562, 25.104813>,  <33.341564, 29.580349, 25.051113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574642, 29.560562, 25.104813>,  <33.963104, 29.527584, 25.194311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574642, 29.560562, 25.104813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230205, 0.079533, -0.969887,
		-0.062169, -0.993417, -0.096219,
		-0.971154, 0.082447, -0.223745,
		33.283295, 29.585297, 25.037689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704903, 29.051037, 24.653809>,  <33.963104, 29.527584, 25.194311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704903, 29.051037, 24.653809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435593, 29.344748, 24.619076>,  <33.274006, 29.520973, 24.598236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435593, 29.344748, 24.619076>,  <33.704903, 29.051037, 24.653809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435593, 29.344748, 24.619076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227787, 0.094256, -0.969138,
		-0.703431, -0.672275, -0.230718,
		-0.673274, 0.734277, -0.086833,
		33.233612, 29.565031, 24.593025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528938, 29.065527, 23.909321>,  <33.704903, 29.051037, 24.653809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528938, 29.065527, 23.909321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388550, 29.404163, 24.069370>,  <33.304317, 29.607346, 24.165400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388550, 29.404163, 24.069370>,  <33.528938, 29.065527, 23.909321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388550, 29.404163, 24.069370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242304, 0.494862, -0.834506,
		-0.904493, -0.195938, -0.378816,
		-0.350973, 0.846593, 0.400123,
		33.283257, 29.658142, 24.189407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009666, 29.410658, 23.377314>,  <33.528938, 29.065527, 23.909321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009666, 29.410658, 23.377314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150436, 29.685331, 23.631752>,  <33.234898, 29.850136, 23.784414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150436, 29.685331, 23.631752>,  <33.009666, 29.410658, 23.377314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150436, 29.685331, 23.631752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193841, 0.611372, -0.767235,
		-0.915738, 0.393309, 0.082049,
		0.351923, 0.686682, 0.636096,
		33.256012, 29.891336, 23.822580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723499, 29.935266, 23.194822>,  <33.009666, 29.410658, 23.377314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723499, 29.935266, 23.194822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033676, 30.094915, 23.390532>,  <33.219784, 30.190704, 23.507957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033676, 30.094915, 23.390532>,  <32.723499, 29.935266, 23.194822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033676, 30.094915, 23.390532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189215, 0.592387, -0.783119,
		-0.602398, 0.699843, 0.383844,
		0.775445, 0.399120, 0.489273,
		33.266308, 30.214651, 23.537313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759644, 30.624880, 23.077061>,  <32.723499, 29.935266, 23.194822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759644, 30.624880, 23.077061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132748, 30.577051, 23.213091>,  <33.356609, 30.548353, 23.294710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132748, 30.577051, 23.213091>,  <32.759644, 30.624880, 23.077061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132748, 30.577051, 23.213091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325933, 0.682770, -0.653906,
		-0.154005, 0.720783, 0.675836,
		0.932765, -0.119573, 0.340077,
		33.412579, 30.541180, 23.315113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962696, 31.247894, 23.165987>,  <32.759644, 30.624880, 23.077061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962696, 31.247894, 23.165987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289059, 31.016859, 23.155540>,  <33.484879, 30.878239, 23.149273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289059, 31.016859, 23.155540>,  <32.962696, 31.247894, 23.165987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289059, 31.016859, 23.155540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466494, 0.684319, -0.560439,
		0.341574, 0.445085, 0.827784,
		0.815911, -0.577587, -0.026116,
		33.533833, 30.843582, 23.147705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636490, 31.702227, 23.146391>,  <32.962696, 31.247894, 23.165987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636490, 31.702227, 23.146391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711555, 31.354876, 22.962782>,  <33.756596, 31.146465, 22.852617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711555, 31.354876, 22.962782>,  <33.636490, 31.702227, 23.146391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711555, 31.354876, 22.962782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248148, 0.494080, -0.833252,
		0.950371, 0.042465, 0.308206,
		0.187662, -0.868379, -0.459022,
		33.767853, 31.094362, 22.825075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171440, 31.886686, 22.663322>,  <33.636490, 31.702227, 23.146391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171440, 31.886686, 22.663322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053215, 31.530968, 22.523726>,  <33.982281, 31.317537, 22.439968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053215, 31.530968, 22.523726>,  <34.171440, 31.886686, 22.663322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053215, 31.530968, 22.523726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197696, 0.300469, -0.933078,
		0.934644, -0.344775, 0.087003,
		-0.295561, -0.889296, -0.348992,
		33.964546, 31.264179, 22.419027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720589, 31.526184, 22.356169>,  <34.171440, 31.886686, 22.663322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720589, 31.526184, 22.356169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382568, 31.395514, 22.186852>,  <34.179756, 31.317112, 22.085262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382568, 31.395514, 22.186852>,  <34.720589, 31.526184, 22.356169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382568, 31.395514, 22.186852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341073, 0.280339, -0.897262,
		0.411782, -0.902602, -0.125478,
		-0.845047, -0.326679, -0.423291,
		34.129055, 31.297510, 22.059864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925091, 31.423994, 21.658762>,  <34.720589, 31.526184, 22.356169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925091, 31.423994, 21.658762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530735, 31.375511, 21.612572>,  <34.294121, 31.346422, 21.584858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530735, 31.375511, 21.612572>,  <34.925091, 31.423994, 21.658762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530735, 31.375511, 21.612572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055783, 0.412524, -0.909237,
		0.157842, -0.902847, -0.399941,
		-0.985887, -0.121206, -0.115477,
		34.234970, 31.339149, 21.577929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910732, 31.047281, 21.057987>,  <34.925091, 31.423994, 21.658762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910732, 31.047281, 21.057987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567684, 31.247808, 21.103888>,  <34.361855, 31.368124, 21.131428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567684, 31.247808, 21.103888>,  <34.910732, 31.047281, 21.057987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567684, 31.247808, 21.103888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040347, 0.288025, -0.956773,
		-0.512698, -0.815918, -0.267243,
		-0.857620, 0.501318, 0.114750,
		34.310398, 31.398205, 21.138313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505951, 30.923658, 20.496878>,  <34.910732, 31.047281, 21.057987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505951, 30.923658, 20.496878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353359, 31.263605, 20.642313>,  <34.261803, 31.467573, 20.729574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353359, 31.263605, 20.642313>,  <34.505951, 30.923658, 20.496878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353359, 31.263605, 20.642313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056540, 0.371143, -0.926853,
		-0.922646, -0.374135, -0.093533,
		-0.381482, 0.849868, 0.363587,
		34.238914, 31.518566, 20.751389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869728, 31.066156, 20.153887>,  <34.505951, 30.923658, 20.496878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869728, 31.066156, 20.153887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022160, 31.414745, 20.277380>,  <34.113617, 31.623898, 20.351477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022160, 31.414745, 20.277380>,  <33.869728, 31.066156, 20.153887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022160, 31.414745, 20.277380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051188, 0.313533, -0.948197,
		-0.923125, 0.377141, 0.074872,
		0.381079, 0.871471, 0.308735,
		34.136482, 31.676188, 20.370001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505680, 31.793646, 20.155764>,  <33.869728, 31.066156, 20.153887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505680, 31.793646, 20.155764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890156, 31.758379, 20.051195>,  <34.120842, 31.737219, 19.988453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890156, 31.758379, 20.051195>,  <33.505680, 31.793646, 20.155764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890156, 31.758379, 20.051195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197403, 0.442183, -0.874932,
		0.192735, 0.892582, 0.407618,
		0.961190, -0.088165, -0.261422,
		34.178513, 31.731930, 19.972769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220654, 32.404930, 19.759390>,  <33.505680, 31.793646, 20.155764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220654, 32.404930, 19.759390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209129, 32.741470, 19.543503>,  <33.202213, 32.943394, 19.413971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209129, 32.741470, 19.543503>,  <33.220654, 32.404930, 19.759390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209129, 32.741470, 19.543503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045385, -0.538282, -0.841542,
		-0.998554, -0.048742, -0.022675,
		-0.028813, 0.841354, -0.539716,
		33.200485, 32.993877, 19.381588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783451, 32.215252, 19.261034>,  <33.220654, 32.404930, 19.759390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783451, 32.215252, 19.261034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032043, 32.510437, 19.155838>,  <33.181198, 32.687550, 19.092720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032043, 32.510437, 19.155838>,  <32.783451, 32.215252, 19.261034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032043, 32.510437, 19.155838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281469, -0.523607, -0.804121,
		-0.731117, 0.425726, -0.533128,
		0.621485, 0.737966, -0.262989,
		33.218491, 32.731827, 19.076941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890137, 32.076584, 18.556000>,  <32.783451, 32.215252, 19.261034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890137, 32.076584, 18.556000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216438, 32.291187, 18.642445>,  <33.412220, 32.419949, 18.694311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216438, 32.291187, 18.642445>,  <32.890137, 32.076584, 18.556000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216438, 32.291187, 18.642445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520706, -0.518537, -0.678222,
		-0.251808, 0.665794, -0.702361,
		0.815756, 0.536506, 0.216111,
		33.461166, 32.452141, 18.707277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265041, 32.196575, 17.869184>,  <32.890137, 32.076584, 18.556000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265041, 32.196575, 17.869184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519913, 32.263943, 18.170019>,  <33.672836, 32.304363, 18.350519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519913, 32.263943, 18.170019>,  <33.265041, 32.196575, 17.869184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519913, 32.263943, 18.170019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746444, -0.377808, -0.547798,
		0.191885, 0.910438, -0.366447,
		0.637183, 0.168418, 0.752086,
		33.711067, 32.314468, 18.395645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892464, 32.715424, 17.721037>,  <33.265041, 32.196575, 17.869184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892464, 32.715424, 17.721037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980652, 32.450069, 18.007061>,  <34.033566, 32.290855, 18.178675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980652, 32.450069, 18.007061>,  <33.892464, 32.715424, 17.721037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980652, 32.450069, 18.007061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769316, -0.332406, -0.545581,
		0.599623, 0.670389, 0.437071,
		0.220467, -0.663388, 0.715059,
		34.046791, 32.251053, 18.221579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633953, 32.916569, 18.007301>,  <33.892464, 32.715424, 17.721037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633953, 32.916569, 18.007301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518867, 32.534855, 18.039679>,  <34.449814, 32.305824, 18.059105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518867, 32.534855, 18.039679>,  <34.633953, 32.916569, 18.007301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518867, 32.534855, 18.039679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871555, -0.295930, -0.390920,
		0.397003, -0.041929, 0.916859,
		-0.287717, -0.954289, 0.080942,
		34.432552, 32.248569, 18.063961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338852, 33.151630, 18.626123>,  <34.633953, 32.916569, 18.007301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338852, 33.151630, 18.626123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963467, 33.014805, 18.645269>,  <33.738235, 32.932709, 18.656757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963467, 33.014805, 18.645269>,  <34.338852, 33.151630, 18.626123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963467, 33.014805, 18.645269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206284, 0.666233, 0.716645,
		-0.277025, 0.662668, -0.695794,
		-0.938459, -0.342059, 0.047865,
		33.681931, 32.912186, 18.659630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943970, 33.731335, 18.618811>,  <34.338852, 33.151630, 18.626123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943970, 33.731335, 18.618811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715458, 33.429886, 18.748846>,  <33.578350, 33.249016, 18.826868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715458, 33.429886, 18.748846>,  <33.943970, 33.731335, 18.618811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715458, 33.429886, 18.748846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320696, 0.569564, 0.756803,
		-0.755505, 0.328094, -0.567068,
		-0.571284, -0.753625, 0.325090,
		33.544071, 33.203800, 18.846373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320744, 33.973103, 18.571371>,  <33.943970, 33.731335, 18.618811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320744, 33.973103, 18.571371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286350, 33.670872, 18.831125>,  <33.265713, 33.489532, 18.986979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286350, 33.670872, 18.831125>,  <33.320744, 33.973103, 18.571371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286350, 33.670872, 18.831125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363838, 0.630598, 0.685542,
		-0.927485, -0.177325, -0.329132,
		-0.085987, -0.755581, 0.649387,
		33.260555, 33.444199, 19.025942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592800, 34.091072, 18.924839>,  <33.320744, 33.973103, 18.571371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592800, 34.091072, 18.924839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794048, 33.833862, 19.155798>,  <32.914799, 33.679539, 19.294374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794048, 33.833862, 19.155798>,  <32.592800, 34.091072, 18.924839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794048, 33.833862, 19.155798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268117, 0.519012, 0.811628,
		-0.821572, -0.563159, 0.088721,
		0.503123, -0.643023, 0.577398,
		32.944984, 33.640957, 19.329018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067532, 33.785568, 19.397667>,  <32.592800, 34.091072, 18.924839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067532, 33.785568, 19.397667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435635, 33.743443, 19.548416>,  <32.656498, 33.718166, 19.638865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435635, 33.743443, 19.548416>,  <32.067532, 33.785568, 19.397667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435635, 33.743443, 19.548416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363798, 0.124490, 0.923122,
		-0.144136, -0.986616, 0.076249,
		0.920259, -0.105316, 0.376872,
		32.711712, 33.711849, 19.661478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034706, 33.275497, 19.906675>,  <32.067532, 33.785568, 19.397667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034706, 33.275497, 19.906675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355045, 33.492584, 20.007952>,  <32.547249, 33.622837, 20.068718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355045, 33.492584, 20.007952>,  <32.034706, 33.275497, 19.906675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355045, 33.492584, 20.007952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385725, 0.144042, 0.911300,
		0.458108, -0.827472, 0.324695,
		0.800845, 0.542717, 0.253190,
		32.595299, 33.655399, 20.083908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089020, 33.055305, 20.509960>,  <32.034706, 33.275497, 19.906675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089020, 33.055305, 20.509960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324261, 33.378654, 20.499588>,  <32.465405, 33.572662, 20.493364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324261, 33.378654, 20.499588>,  <32.089020, 33.055305, 20.509960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324261, 33.378654, 20.499588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281244, 0.234458, 0.930555,
		0.758311, -0.539971, 0.365234,
		0.588104, 0.808370, -0.025928,
		32.500690, 33.621166, 20.491810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612869, 32.991455, 21.004921>,  <32.089020, 33.055305, 20.509960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612869, 32.991455, 21.004921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603149, 33.386402, 20.942297>,  <32.597317, 33.623371, 20.904722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603149, 33.386402, 20.942297>,  <32.612869, 32.991455, 21.004921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603149, 33.386402, 20.942297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160086, 0.150744, 0.975525,
		0.986804, 0.048767, 0.154401,
		-0.024299, 0.987369, -0.156562,
		32.595860, 33.682613, 20.895329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142620, 33.230511, 21.423275>,  <32.612869, 32.991455, 21.004921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142620, 33.230511, 21.423275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914043, 33.551819, 21.356094>,  <32.776897, 33.744602, 21.315786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914043, 33.551819, 21.356094>,  <33.142620, 33.230511, 21.423275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914043, 33.551819, 21.356094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128762, 0.289891, 0.948358,
		0.810475, 0.520310, -0.269088,
		-0.571446, 0.803269, -0.167953,
		32.742611, 33.792801, 21.305708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470234, 33.865952, 21.727074>,  <33.142620, 33.230511, 21.423275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470234, 33.865952, 21.727074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096004, 33.990585, 21.660601>,  <32.871468, 34.065365, 21.620716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096004, 33.990585, 21.660601>,  <33.470234, 33.865952, 21.727074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096004, 33.990585, 21.660601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056650, 0.332077, 0.941550,
		0.348561, 0.890302, -0.293030,
		-0.935573, 0.311587, -0.166184,
		32.815334, 34.084061, 21.610744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422024, 34.525024, 22.061789>,  <33.470234, 33.865952, 21.727074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422024, 34.525024, 22.061789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037254, 34.418636, 22.036625>,  <32.806393, 34.354805, 22.021526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037254, 34.418636, 22.036625>,  <33.422024, 34.525024, 22.061789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037254, 34.418636, 22.036625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134120, 0.258807, 0.956573,
		-0.238139, 0.928589, -0.284625,
		-0.961926, -0.265971, -0.062910,
		32.748676, 34.338844, 22.017752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036156, 35.051029, 22.308672>,  <33.422024, 34.525024, 22.061789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036156, 35.051029, 22.308672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773174, 34.750481, 22.331280>,  <32.615383, 34.570152, 22.344845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773174, 34.750481, 22.331280>,  <33.036156, 35.051029, 22.308672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773174, 34.750481, 22.331280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200496, 0.246755, 0.948110,
		-0.726328, 0.612010, -0.312877,
		-0.657457, -0.751369, 0.056520,
		32.575935, 34.525070, 22.348236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457664, 35.244972, 22.604053>,  <33.036156, 35.051029, 22.308672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457664, 35.244972, 22.604053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418198, 34.851997, 22.667412>,  <32.394516, 34.616215, 22.705427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418198, 34.851997, 22.667412>,  <32.457664, 35.244972, 22.604053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418198, 34.851997, 22.667412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265134, 0.179372, 0.947380,
		-0.959150, 0.051480, -0.278175,
		-0.098668, -0.982433, 0.158395,
		32.388596, 34.557266, 22.714930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861242, 35.310879, 23.003714>,  <32.457664, 35.244972, 22.604053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861242, 35.310879, 23.003714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027542, 34.950394, 23.052662>,  <32.127323, 34.734104, 23.082031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027542, 34.950394, 23.052662>,  <31.861242, 35.310879, 23.003714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027542, 34.950394, 23.052662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256096, 0.013100, 0.966563,
		-0.872679, -0.433185, -0.225350,
		0.415749, -0.901210, 0.122369,
		32.152267, 34.680031, 23.089373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359753, 34.916397, 23.290648>,  <31.861242, 35.310879, 23.003714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359753, 34.916397, 23.290648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699148, 34.730331, 23.391588>,  <31.902786, 34.618690, 23.452152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699148, 34.730331, 23.391588>,  <31.359753, 34.916397, 23.290648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699148, 34.730331, 23.391588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272687, 0.024378, 0.961794,
		-0.453548, -0.884886, -0.106161,
		0.848490, -0.465168, 0.252354,
		31.953695, 34.590782, 23.467295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128153, 34.380657, 23.738886>,  <31.359753, 34.916397, 23.290648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128153, 34.380657, 23.738886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522289, 34.412437, 23.799271>,  <31.758772, 34.431507, 23.835501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522289, 34.412437, 23.799271>,  <31.128153, 34.380657, 23.738886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522289, 34.412437, 23.799271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137486, -0.154010, 0.978457,
		0.100992, -0.984870, -0.140828,
		0.985342, 0.079454, 0.150960,
		31.817892, 34.436272, 23.844559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287750, 33.859055, 24.212938>,  <31.128153, 34.380657, 23.738886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287750, 33.859055, 24.212938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605120, 34.098969, 24.254395>,  <31.795542, 34.242916, 24.279268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605120, 34.098969, 24.254395>,  <31.287750, 33.859055, 24.212938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605120, 34.098969, 24.254395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112392, -0.022980, 0.993398,
		0.598206, -0.799832, 0.049178,
		0.793421, 0.599784, 0.103642,
		31.843145, 34.278904, 24.285486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721067, 33.595634, 24.785816>,  <31.287750, 33.859055, 24.212938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721067, 33.595634, 24.785816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802505, 33.985241, 24.746134>,  <31.851368, 34.219006, 24.722324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802505, 33.985241, 24.746134>,  <31.721067, 33.595634, 24.785816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802505, 33.985241, 24.746134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057446, 0.089271, 0.994349,
		0.977368, -0.208144, -0.037778,
		0.203595, 0.974016, -0.099208,
		31.863585, 34.277447, 24.716372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294865, 33.726707, 25.289413>,  <31.721067, 33.595634, 24.785816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294865, 33.726707, 25.289413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111862, 34.075500, 25.219744>,  <32.002060, 34.284775, 25.177942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111862, 34.075500, 25.219744>,  <32.294865, 33.726707, 25.289413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111862, 34.075500, 25.219744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082635, 0.236721, 0.968057,
		0.885357, 0.428501, -0.180358,
		-0.457508, 0.871980, -0.174174,
		31.974609, 34.337093, 25.167492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556347, 34.193611, 25.782787>,  <32.294865, 33.726707, 25.289413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556347, 34.193611, 25.782787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225155, 34.389355, 25.673258>,  <32.026440, 34.506802, 25.607540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225155, 34.389355, 25.673258>,  <32.556347, 34.193611, 25.782787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225155, 34.389355, 25.673258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157233, 0.266118, 0.951030,
		0.538264, 0.830487, -0.143397,
		-0.827979, 0.489359, -0.273822,
		31.976761, 34.536163, 25.591112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497349, 34.723866, 26.254332>,  <32.556347, 34.193611, 25.782787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497349, 34.723866, 26.254332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122799, 34.706024, 26.115072>,  <31.898067, 34.695320, 26.031517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122799, 34.706024, 26.115072>,  <32.497349, 34.723866, 26.254332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122799, 34.706024, 26.115072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350018, 0.192566, 0.916737,
		0.026150, 0.980270, -0.195927,
		-0.936378, -0.044605, -0.348148,
		31.841885, 34.692642, 26.010628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178276, 35.356037, 26.428522>,  <32.497349, 34.723866, 26.254332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178276, 35.356037, 26.428522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900055, 35.072952, 26.378962>,  <31.733122, 34.903103, 26.349224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900055, 35.072952, 26.378962>,  <32.178276, 35.356037, 26.428522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900055, 35.072952, 26.378962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331897, 0.163546, 0.929030,
		-0.637219, 0.687314, -0.348642,
		-0.695555, -0.707709, -0.123903,
		31.691389, 34.860641, 26.341791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536055, 35.730808, 26.587471>,  <32.178276, 35.356037, 26.428522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536055, 35.730808, 26.587471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440197, 35.346302, 26.641943>,  <31.382683, 35.115601, 26.674627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440197, 35.346302, 26.641943>,  <31.536055, 35.730808, 26.587471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440197, 35.346302, 26.641943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382847, 0.222470, 0.896624,
		-0.892187, 0.162736, -0.421331,
		-0.239646, -0.961262, 0.136181,
		31.368303, 35.057922, 26.682796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936182, 35.809330, 27.041077>,  <31.536055, 35.730808, 26.587471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936182, 35.809330, 27.041077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059887, 35.431480, 27.084955>,  <31.134109, 35.204769, 27.111282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059887, 35.431480, 27.084955>,  <30.936182, 35.809330, 27.041077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059887, 35.431480, 27.084955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496153, -0.061866, 0.866028,
		-0.811288, -0.322258, -0.487813,
		0.309263, -0.944628, 0.109698,
		31.152666, 35.148090, 27.117865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366463, 35.415352, 27.324581>,  <30.936182, 35.809330, 27.041077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366463, 35.415352, 27.324581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681927, 35.194382, 27.432543>,  <30.871204, 35.061802, 27.497320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681927, 35.194382, 27.432543>,  <30.366463, 35.415352, 27.324581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681927, 35.194382, 27.432543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371558, -0.078468, 0.925088,
		-0.489861, -0.829863, -0.267141,
		0.788658, -0.552423, 0.269903,
		30.918524, 35.028656, 27.513514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095148, 34.867016, 27.714735>,  <30.366463, 35.415352, 27.324581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095148, 34.867016, 27.714735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478588, 34.911602, 27.819546>,  <30.708652, 34.938354, 27.882433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478588, 34.911602, 27.819546>,  <30.095148, 34.867016, 27.714735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478588, 34.911602, 27.819546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259513, -0.036771, 0.965039,
		0.117207, -0.993087, -0.006321,
		0.958601, 0.111469, 0.262028,
		30.766169, 34.945042, 27.898155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136698, 34.497231, 28.224745>,  <30.095148, 34.867016, 27.714735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136698, 34.497231, 28.224745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480152, 34.692093, 28.288521>,  <30.686224, 34.809010, 28.326786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480152, 34.692093, 28.288521>,  <30.136698, 34.497231, 28.224745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480152, 34.692093, 28.288521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178382, -0.007619, 0.983932,
		0.480547, -0.873280, 0.080359,
		0.858635, 0.487160, 0.159439,
		30.737743, 34.838242, 28.336353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484282, 34.192383, 28.892210>,  <30.136698, 34.497231, 28.224745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484282, 34.192383, 28.892210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657938, 34.547726, 28.832428>,  <30.762133, 34.760933, 28.796558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657938, 34.547726, 28.832428>,  <30.484282, 34.192383, 28.892210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657938, 34.547726, 28.832428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070150, 0.198743, 0.977538,
		0.898110, -0.413904, 0.148600,
		0.434141, 0.888360, -0.149457,
		30.788179, 34.814236, 28.787590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151518, 34.237934, 29.377625>,  <30.484282, 34.192383, 28.892210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151518, 34.237934, 29.377625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032269, 34.610310, 29.293272>,  <30.960718, 34.833736, 29.242661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032269, 34.610310, 29.293272>,  <31.151518, 34.237934, 29.377625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032269, 34.610310, 29.293272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053170, 0.204386, 0.977445,
		0.953045, 0.302613, -0.011434,
		-0.298125, 0.930941, -0.210879,
		30.942831, 34.889591, 29.230009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530474, 34.652885, 29.841755>,  <31.151518, 34.237934, 29.377625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530474, 34.652885, 29.841755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232002, 34.886234, 29.713444>,  <31.052919, 35.026241, 29.636457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232002, 34.886234, 29.713444>,  <31.530474, 34.652885, 29.841755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232002, 34.886234, 29.713444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152638, 0.319085, 0.935353,
		0.648011, 0.746904, -0.149051,
		-0.746179, 0.583368, -0.320777,
		31.008148, 35.061245, 29.617210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489780, 35.299324, 30.196613>,  <31.530474, 34.652885, 29.841755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489780, 35.299324, 30.196613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105629, 35.274521, 30.087929>,  <30.875137, 35.259640, 30.022718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105629, 35.274521, 30.087929>,  <31.489780, 35.299324, 30.196613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105629, 35.274521, 30.087929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274316, 0.382489, 0.882300,
		0.049218, 0.921877, -0.384344,
		-0.960379, -0.062007, -0.271711,
		30.817514, 35.255920, 30.006416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236383, 35.857136, 30.500250>,  <31.489780, 35.299324, 30.196613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236383, 35.857136, 30.500250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922260, 35.639091, 30.382851>,  <30.733786, 35.508263, 30.312410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922260, 35.639091, 30.382851>,  <31.236383, 35.857136, 30.500250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922260, 35.639091, 30.382851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443603, 0.164744, 0.880952,
		-0.431867, 0.822015, -0.371189,
		-0.785307, -0.545115, -0.293500,
		30.686668, 35.475555, 30.294800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616627, 36.204445, 30.679482>,  <31.236383, 35.857136, 30.500250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616627, 36.204445, 30.679482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481771, 35.832275, 30.622000>,  <30.400858, 35.608974, 30.587511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481771, 35.832275, 30.622000>,  <30.616627, 36.204445, 30.679482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481771, 35.832275, 30.622000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367032, -0.010669, 0.930147,
		-0.866964, 0.366330, -0.337899,
		-0.337136, -0.930424, -0.143705,
		30.380630, 35.553146, 30.578888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076107, 36.198906, 31.183292>,  <30.616627, 36.204445, 30.679482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076107, 36.198906, 31.183292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192101, 35.825890, 31.097244>,  <30.261696, 35.602081, 31.045616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192101, 35.825890, 31.097244>,  <30.076107, 36.198906, 31.183292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192101, 35.825890, 31.097244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344210, -0.311363, 0.885761,
		-0.892990, -0.182808, -0.411280,
		0.289982, -0.932542, -0.215120,
		30.279095, 35.546127, 31.032709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621344, 35.921761, 31.548838>,  <30.076107, 36.198906, 31.183292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621344, 35.921761, 31.548838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912334, 35.651226, 31.502634>,  <30.086929, 35.488903, 31.474913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912334, 35.651226, 31.502634>,  <29.621344, 35.921761, 31.548838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912334, 35.651226, 31.502634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006847, -0.161183, 0.986901,
		-0.686100, -0.718737, -0.112625,
		0.727476, -0.676341, -0.115509,
		30.130577, 35.448322, 31.467981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362989, 35.378418, 31.995668>,  <29.621344, 35.921761, 31.548838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362989, 35.378418, 31.995668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754053, 35.316769, 31.938490>,  <29.988691, 35.279781, 31.904182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754053, 35.316769, 31.938490>,  <29.362989, 35.378418, 31.995668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754053, 35.316769, 31.938490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133384, -0.070736, 0.988537,
		-0.162468, -0.985516, -0.048598,
		0.977657, -0.154123, -0.142945,
		30.047350, 35.270535, 31.895607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395977, 34.946312, 32.534901>,  <29.362989, 35.378418, 31.995668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395977, 34.946312, 32.534901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772163, 35.041344, 32.437679>,  <29.997875, 35.098362, 32.379349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772163, 35.041344, 32.437679>,  <29.395977, 34.946312, 32.534901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772163, 35.041344, 32.437679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266864, -0.073322, 0.960941,
		0.210484, -0.968596, -0.132360,
		0.940468, 0.237585, -0.243050,
		30.054304, 35.112617, 32.364765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880924, 34.484627, 32.885334>,  <29.395977, 34.946312, 32.534901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880924, 34.484627, 32.885334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092211, 34.813869, 32.801922>,  <30.218983, 35.011414, 32.751873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092211, 34.813869, 32.801922>,  <29.880924, 34.484627, 32.885334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092211, 34.813869, 32.801922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241210, 0.090017, 0.966289,
		0.814129, -0.560710, -0.150993,
		0.528216, 0.823105, -0.208534,
		30.250675, 35.060802, 32.739361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666048, 34.386719, 33.124111>,  <29.880924, 34.484627, 32.885334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666048, 34.386719, 33.124111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538727, 34.765892, 33.120163>,  <30.462334, 34.993397, 33.117794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538727, 34.765892, 33.120163>,  <30.666048, 34.386719, 33.124111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538727, 34.765892, 33.120163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259416, 0.097116, 0.960870,
		0.911803, 0.303288, -0.276823,
		-0.318305, 0.947937, -0.009873,
		30.443235, 35.050274, 33.117203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254129, 34.736282, 33.325161>,  <30.666048, 34.386719, 33.124111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254129, 34.736282, 33.325161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920784, 34.946487, 33.393681>,  <30.720776, 35.072609, 33.434792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920784, 34.946487, 33.393681>,  <31.254129, 34.736282, 33.325161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920784, 34.946487, 33.393681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329038, 0.222657, 0.917692,
		0.444114, 0.821136, -0.358467,
		-0.833365, 0.525509, 0.171300,
		30.670774, 35.104141, 33.445072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500742, 35.354065, 33.705715>,  <31.254129, 34.736282, 33.325161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500742, 35.354065, 33.705715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103899, 35.348625, 33.755573>,  <30.865793, 35.345360, 33.785488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103899, 35.348625, 33.755573>,  <31.500742, 35.354065, 33.705715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103899, 35.348625, 33.755573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122556, 0.104885, 0.986904,
		-0.026499, 0.994391, -0.102390,
		-0.992108, -0.013604, 0.124648,
		30.806267, 35.344543, 33.792969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301594, 35.984074, 34.018734>,  <31.500742, 35.354065, 33.705715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301594, 35.984074, 34.018734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039686, 35.691936, 34.096577>,  <30.882542, 35.516655, 34.143280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039686, 35.691936, 34.096577>,  <31.301594, 35.984074, 34.018734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039686, 35.691936, 34.096577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165885, 0.112331, 0.979727,
		-0.737399, 0.673778, 0.047603,
		-0.654771, -0.730346, 0.194602,
		30.843254, 35.472832, 34.154957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859385, 36.133011, 34.462868>,  <31.301594, 35.984074, 34.018734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859385, 36.133011, 34.462868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243534, 36.134480, 34.574345>,  <32.474022, 36.135361, 34.641232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243534, 36.134480, 34.574345>,  <31.859385, 36.133011, 34.462868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243534, 36.134480, 34.574345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210850, -0.663504, -0.717847,
		0.182279, 0.748163, -0.637986,
		0.960373, 0.003671, 0.278693,
		32.531647, 36.135582, 34.657951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181129, 36.435524, 33.902863>,  <31.859385, 36.133011, 34.462868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181129, 36.435524, 33.902863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477570, 36.250080, 34.097118>,  <32.655434, 36.138813, 34.213673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477570, 36.250080, 34.097118>,  <32.181129, 36.435524, 33.902863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477570, 36.250080, 34.097118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278858, -0.445437, -0.850779,
		0.610748, 0.765933, -0.200832,
		0.741097, -0.463608, 0.485636,
		32.699898, 36.110996, 34.242809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784496, 36.455940, 33.462860>,  <32.181129, 36.435524, 33.902863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784496, 36.455940, 33.462860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915413, 36.187847, 33.729294>,  <32.993961, 36.026993, 33.889153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915413, 36.187847, 33.729294>,  <32.784496, 36.455940, 33.462860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915413, 36.187847, 33.729294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565384, -0.425902, -0.706363,
		0.757114, 0.607780, 0.239545,
		0.327291, -0.670233, 0.666085,
		33.013599, 35.986778, 33.929119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498821, 36.364239, 33.402935>,  <32.784496, 36.455940, 33.462860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498821, 36.364239, 33.402935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370003, 36.015209, 33.549847>,  <33.292713, 35.805790, 33.637993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370003, 36.015209, 33.549847>,  <33.498821, 36.364239, 33.402935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370003, 36.015209, 33.549847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447472, -0.482174, -0.753178,
		0.834299, -0.078211, 0.545736,
		-0.322046, -0.872577, 0.367281,
		33.273388, 35.753437, 33.660030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060539, 35.863941, 33.276760>,  <33.498821, 36.364239, 33.402935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060539, 35.863941, 33.276760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724449, 35.654907, 33.334618>,  <33.522793, 35.529488, 33.369331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724449, 35.654907, 33.334618>,  <34.060539, 35.863941, 33.276760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724449, 35.654907, 33.334618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249141, -0.608999, -0.753027,
		0.481605, -0.596679, 0.641896,
		-0.840229, -0.522584, 0.144639,
		33.472382, 35.498131, 33.378010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235210, 35.248287, 33.143593>,  <34.060539, 35.863941, 33.276760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235210, 35.248287, 33.143593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836277, 35.261494, 33.117542>,  <33.596916, 35.269417, 33.101910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836277, 35.261494, 33.117542>,  <34.235210, 35.248287, 33.143593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836277, 35.261494, 33.117542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048699, -0.363815, -0.930197,
		-0.054409, -0.930886, 0.361236,
		-0.997331, 0.033019, -0.065129,
		33.537079, 35.271400, 33.098003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965363, 34.620815, 32.793480>,  <34.235210, 35.248287, 33.143593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965363, 34.620815, 32.793480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658684, 34.861088, 32.702831>,  <33.474674, 35.005249, 32.648441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658684, 34.861088, 32.702831>,  <33.965363, 34.620815, 32.793480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658684, 34.861088, 32.702831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084399, -0.255621, -0.963086,
		-0.636434, -0.757524, 0.145288,
		-0.766700, 0.600678, -0.226620,
		33.428673, 35.041290, 32.634846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605114, 34.233566, 32.289314>,  <33.965363, 34.620815, 32.793480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605114, 34.233566, 32.289314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472443, 34.608730, 32.248680>,  <33.392838, 34.833828, 32.224300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472443, 34.608730, 32.248680>,  <33.605114, 34.233566, 32.289314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472443, 34.608730, 32.248680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053289, -0.126132, -0.990581,
		-0.941885, -0.323144, 0.091816,
		-0.331681, 0.937907, -0.101582,
		33.372940, 34.890102, 32.218204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983959, 34.161644, 31.862156>,  <33.605114, 34.233566, 32.289314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983959, 34.161644, 31.862156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121075, 34.535973, 31.829353>,  <33.203342, 34.760571, 31.809671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121075, 34.535973, 31.829353>,  <32.983959, 34.161644, 31.862156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121075, 34.535973, 31.829353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131672, -0.038573, -0.990543,
		-0.930139, 0.350345, 0.110000,
		0.342789, 0.935826, -0.082009,
		33.223911, 34.816719, 31.804750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491467, 34.442192, 31.261406>,  <32.983959, 34.161644, 31.862156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491467, 34.442192, 31.261406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802635, 34.687969, 31.314014>,  <32.989338, 34.835434, 31.345579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802635, 34.687969, 31.314014>,  <32.491467, 34.442192, 31.261406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802635, 34.687969, 31.314014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144912, 0.028239, -0.989042,
		-0.611421, 0.788458, -0.067072,
		0.777924, 0.614440, 0.131523,
		33.036011, 34.872303, 31.353472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373421, 35.051651, 30.887449>,  <32.491467, 34.442192, 31.261406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373421, 35.051651, 30.887449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771358, 35.053158, 30.927996>,  <33.010120, 35.054062, 30.952324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771358, 35.053158, 30.927996>,  <32.373421, 35.051651, 30.887449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771358, 35.053158, 30.927996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100096, 0.125564, -0.987023,
		-0.016442, 0.992079, 0.124540,
		0.994842, 0.003762, 0.101368,
		33.069813, 35.054287, 30.958406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543179, 35.657387, 30.471495>,  <32.373421, 35.051651, 30.887449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543179, 35.657387, 30.471495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837147, 35.391300, 30.524239>,  <33.013527, 35.231647, 30.555885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837147, 35.391300, 30.524239>,  <32.543179, 35.657387, 30.471495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837147, 35.391300, 30.524239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171910, -0.005342, -0.985098,
		0.656005, 0.746635, 0.110431,
		0.734918, -0.665213, 0.131858,
		33.057621, 35.191738, 30.563797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197338, 36.033234, 30.315907>,  <32.543179, 35.657387, 30.471495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197338, 36.033234, 30.315907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262062, 35.647297, 30.233051>,  <33.300896, 35.415737, 30.183338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262062, 35.647297, 30.233051>,  <33.197338, 36.033234, 30.315907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262062, 35.647297, 30.233051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385765, 0.255044, -0.886644,
		0.908297, 0.063560, 0.413469,
		0.161808, -0.964838, -0.207136,
		33.310604, 35.357845, 30.170910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842049, 35.989292, 30.041664>,  <33.197338, 36.033234, 30.315907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842049, 35.989292, 30.041664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702316, 35.635010, 29.919361>,  <33.618477, 35.422440, 29.845980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702316, 35.635010, 29.919361>,  <33.842049, 35.989292, 30.041664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702316, 35.635010, 29.919361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476710, 0.112929, -0.871777,
		0.806668, -0.450300, 0.382775,
		-0.349335, -0.885707, -0.305759,
		33.597515, 35.369297, 29.827633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418812, 35.664742, 29.675110>,  <33.842049, 35.989292, 30.041664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418812, 35.664742, 29.675110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068996, 35.510155, 29.557922>,  <33.859108, 35.417400, 29.487610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068996, 35.510155, 29.557922>,  <34.418812, 35.664742, 29.675110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068996, 35.510155, 29.557922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329431, -0.030076, -0.943700,
		0.355901, -0.921811, 0.153618,
		-0.874535, -0.386470, -0.292970,
		33.806637, 35.394215, 29.470032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621319, 35.192207, 29.135124>,  <34.418812, 35.664742, 29.675110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621319, 35.192207, 29.135124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236195, 35.280964, 29.073477>,  <34.005119, 35.334217, 29.036488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236195, 35.280964, 29.073477>,  <34.621319, 35.192207, 29.135124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236195, 35.280964, 29.073477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132590, -0.108949, -0.985165,
		-0.235389, -0.968966, 0.075478,
		-0.962815, 0.221889, -0.154121,
		33.947350, 35.347530, 29.027241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413372, 34.700405, 28.647337>,  <34.621319, 35.192207, 29.135124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413372, 34.700405, 28.647337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110447, 34.961571, 28.641926>,  <33.928692, 35.118271, 28.638680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110447, 34.961571, 28.641926>,  <34.413372, 34.700405, 28.647337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110447, 34.961571, 28.641926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043674, -0.071306, -0.996498,
		-0.651591, -0.754069, 0.082516,
		-0.757313, 0.652913, -0.013530,
		33.883255, 35.157444, 28.637867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067944, 34.480930, 28.058050>,  <34.413372, 34.700405, 28.647337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067944, 34.480930, 28.058050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903545, 34.839405, 28.124907>,  <33.804905, 35.054489, 28.165020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903545, 34.839405, 28.124907>,  <34.067944, 34.480930, 28.058050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903545, 34.839405, 28.124907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046267, 0.162598, -0.985607,
		-0.910461, -0.412816, -0.025364,
		-0.410999, 0.896183, 0.167139,
		33.780247, 35.108261, 28.175049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427155, 34.510006, 27.685074>,  <34.067944, 34.480930, 28.058050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427155, 34.510006, 27.685074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553402, 34.883533, 27.752434>,  <33.629150, 35.107651, 27.792849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553402, 34.883533, 27.752434>,  <33.427155, 34.510006, 27.685074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553402, 34.883533, 27.752434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053101, 0.194574, -0.979450,
		-0.947399, 0.300191, 0.110999,
		0.315619, 0.933824, 0.168399,
		33.648087, 35.163681, 27.802954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996853, 34.969162, 27.242815>,  <33.427155, 34.510006, 27.685074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996853, 34.969162, 27.242815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340137, 35.156849, 27.326057>,  <33.546108, 35.269459, 27.376003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340137, 35.156849, 27.326057>,  <32.996853, 34.969162, 27.242815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340137, 35.156849, 27.326057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012777, 0.385779, -0.922503,
		-0.513135, 0.794362, 0.325085,
		0.858213, 0.469215, 0.208106,
		33.597603, 35.297615, 27.388489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942997, 35.444244, 26.727583>,  <32.996853, 34.969162, 27.242815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942997, 35.444244, 26.727583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315933, 35.485580, 26.866186>,  <33.539696, 35.510380, 26.949348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315933, 35.485580, 26.866186>,  <32.942997, 35.444244, 26.727583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315933, 35.485580, 26.866186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323927, 0.187131, -0.927390,
		-0.160677, 0.976884, 0.140996,
		0.932338, 0.103338, 0.346507,
		33.595634, 35.516582, 26.970139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084892, 36.029060, 26.243568>,  <32.942997, 35.444244, 26.727583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084892, 36.029060, 26.243568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388966, 35.808384, 26.380835>,  <33.571407, 35.675980, 26.463194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388966, 35.808384, 26.380835>,  <33.084892, 36.029060, 26.243568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388966, 35.808384, 26.380835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284306, -0.192470, -0.939215,
		0.584206, 0.811537, 0.010538,
		0.760180, -0.551691, 0.343167,
		33.617020, 35.642876, 26.483784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675896, 36.254230, 25.952202>,  <33.084892, 36.029060, 26.243568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675896, 36.254230, 25.952202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760010, 35.872559, 26.037355>,  <33.810478, 35.643555, 26.088448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760010, 35.872559, 26.037355>,  <33.675896, 36.254230, 25.952202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760010, 35.872559, 26.037355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417357, -0.109298, -0.902146,
		0.884078, 0.278556, 0.375251,
		0.210284, -0.954181, 0.212885,
		33.823093, 35.586304, 26.101221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168762, 36.108852, 25.416052>,  <33.675896, 36.254230, 25.952202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168762, 36.108852, 25.416052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105148, 35.735142, 25.543695>,  <34.066982, 35.510914, 25.620281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105148, 35.735142, 25.543695>,  <34.168762, 36.108852, 25.416052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105148, 35.735142, 25.543695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502177, -0.354836, -0.788612,
		0.850016, 0.034835, 0.525604,
		-0.159032, -0.934279, 0.319110,
		34.057438, 35.454857, 25.639429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770943, 35.768826, 25.303814>,  <34.168762, 36.108852, 25.416052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770943, 35.768826, 25.303814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487682, 35.486652, 25.315708>,  <34.317726, 35.317348, 25.322845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487682, 35.486652, 25.315708>,  <34.770943, 35.768826, 25.303814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487682, 35.486652, 25.315708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441916, -0.475677, -0.760554,
		0.550665, -0.525446, 0.648594,
		-0.708151, -0.705434, 0.029735,
		34.275238, 35.275021, 25.324629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112091, 35.109333, 25.271780>,  <34.770943, 35.768826, 25.303814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112091, 35.109333, 25.271780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731800, 35.026325, 25.179646>,  <34.503624, 34.976521, 25.124365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731800, 35.026325, 25.179646>,  <35.112091, 35.109333, 25.271780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731800, 35.026325, 25.179646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297120, -0.397736, -0.868059,
		0.088525, -0.893724, 0.439796,
		-0.950728, -0.207517, -0.230334,
		34.446583, 34.964069, 25.110546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207355, 34.469803, 25.121035>,  <35.112091, 35.109333, 25.271780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207355, 34.469803, 25.121035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875278, 34.621471, 24.957563>,  <34.676033, 34.712471, 24.859482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875278, 34.621471, 24.957563>,  <35.207355, 34.469803, 25.121035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875278, 34.621471, 24.957563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310291, -0.294749, -0.903794,
		-0.463149, -0.877128, 0.127044,
		-0.830188, 0.379170, -0.408677,
		34.626221, 34.735222, 24.834961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003372, 34.019054, 24.648769>,  <35.207355, 34.469803, 25.121035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003372, 34.019054, 24.648769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795341, 34.332771, 24.513472>,  <34.670525, 34.521000, 24.432293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795341, 34.332771, 24.513472>,  <35.003372, 34.019054, 24.648769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795341, 34.332771, 24.513472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150240, -0.305837, -0.940155,
		-0.840805, -0.539766, 0.041226,
		-0.520072, 0.784293, -0.338244,
		34.639320, 34.568058, 24.411999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516247, 33.746792, 24.264975>,  <35.003372, 34.019054, 24.648769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516247, 33.746792, 24.264975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518764, 34.119843, 24.120661>,  <34.520275, 34.343674, 24.034073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518764, 34.119843, 24.120661>,  <34.516247, 33.746792, 24.264975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518764, 34.119843, 24.120661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333531, -0.342090, -0.878482,
		-0.942718, -0.114802, -0.313214,
		0.006296, 0.932628, -0.360785,
		34.520653, 34.399632, 24.012424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316494, 33.683693, 23.519749>,  <34.516247, 33.746792, 24.264975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316494, 33.683693, 23.519749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488022, 34.045044, 23.521536>,  <34.590939, 34.261856, 23.522608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488022, 34.045044, 23.521536>,  <34.316494, 33.683693, 23.519749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488022, 34.045044, 23.521536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603553, -0.282811, -0.745481,
		-0.672189, 0.322374, -0.666512,
		0.428820, 0.903379, 0.004468,
		34.616669, 34.316059, 23.522877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289078, 33.948593, 22.851271>,  <34.316494, 33.683693, 23.519749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289078, 33.948593, 22.851271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582161, 34.173817, 23.004162>,  <34.758011, 34.308952, 23.095896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582161, 34.173817, 23.004162>,  <34.289078, 33.948593, 22.851271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582161, 34.173817, 23.004162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564663, -0.189505, -0.803271,
		-0.379855, 0.804396, -0.456791,
		0.732712, 0.563059, 0.382228,
		34.801975, 34.342735, 23.118830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406891, 34.464245, 22.384676>,  <34.289078, 33.948593, 22.851271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406891, 34.464245, 22.384676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745514, 34.446552, 22.596861>,  <34.948689, 34.435936, 22.724173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745514, 34.446552, 22.596861>,  <34.406891, 34.464245, 22.384676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745514, 34.446552, 22.596861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530228, -0.017857, -0.847667,
		0.046963, 0.998862, 0.008334,
		0.846554, -0.044227, 0.530463,
		34.999481, 34.433285, 22.756001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815647, 34.946140, 22.005791>,  <34.406891, 34.464245, 22.384676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815647, 34.946140, 22.005791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072483, 34.739952, 22.232775>,  <35.226585, 34.616241, 22.368965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072483, 34.739952, 22.232775>,  <34.815647, 34.946140, 22.005791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072483, 34.739952, 22.232775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666898, 0.010497, -0.745075,
		0.378104, 0.856845, 0.350504,
		0.642093, -0.515466, 0.567460,
		35.265110, 34.585312, 22.403013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423866, 35.307590, 22.034088>,  <34.815647, 34.946140, 22.005791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423866, 35.307590, 22.034088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521923, 34.931110, 22.127081>,  <35.580757, 34.705223, 22.182877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521923, 34.931110, 22.127081>,  <35.423866, 35.307590, 22.034088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521923, 34.931110, 22.127081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646305, -0.020088, -0.762815,
		0.722632, 0.337252, 0.603378,
		0.245141, -0.941200, 0.232484,
		35.595467, 34.648750, 22.196827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051769, 35.290405, 22.003958>,  <35.423866, 35.307590, 22.034088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051769, 35.290405, 22.003958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970558, 34.899467, 21.980059>,  <35.921833, 34.664906, 21.965719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970558, 34.899467, 21.980059>,  <36.051769, 35.290405, 22.003958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970558, 34.899467, 21.980059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661822, -0.092002, -0.743994,
		0.721645, -0.190594, 0.665509,
		-0.203029, -0.977348, -0.059746,
		35.909649, 34.606262, 21.962135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731682, 34.993397, 21.925287>,  <36.051769, 35.290405, 22.003958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731682, 34.993397, 21.925287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433773, 34.767387, 21.783264>,  <36.255028, 34.631783, 21.698051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433773, 34.767387, 21.783264>,  <36.731682, 34.993397, 21.925287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433773, 34.767387, 21.783264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432185, -0.003006, -0.901780,
		0.508457, -0.825071, 0.246433,
		-0.744773, -0.565021, -0.355055,
		36.210342, 34.597881, 21.676748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158543, 34.419182, 21.530907>,  <36.731682, 34.993397, 21.925287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158543, 34.419182, 21.530907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784790, 34.386555, 21.392183>,  <36.560539, 34.366978, 21.308949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784790, 34.386555, 21.392183>,  <37.158543, 34.419182, 21.530907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784790, 34.386555, 21.392183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350705, -0.039150, -0.935667,
		0.062748, -0.995898, 0.065189,
		-0.934381, -0.081574, -0.346810,
		36.504475, 34.362083, 21.288139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073593, 33.762871, 21.232111>,  <37.158543, 34.419182, 21.530907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073593, 33.762871, 21.232111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793976, 33.993637, 21.063110>,  <36.626205, 34.132099, 20.961710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793976, 33.993637, 21.063110>,  <37.073593, 33.762871, 21.232111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793976, 33.993637, 21.063110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295918, -0.304489, -0.905383,
		-0.650979, -0.757926, 0.042130,
		-0.699042, 0.576918, -0.422500,
		36.584263, 34.166714, 20.936359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742340, 33.297142, 21.068729>,  <37.073593, 33.762871, 21.232111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742340, 33.297142, 21.068729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977177, 32.973465, 21.077900>,  <38.118080, 32.779259, 21.083403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977177, 32.973465, 21.077900>,  <37.742340, 33.297142, 21.068729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977177, 32.973465, 21.077900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597296, -0.413893, 0.686971,
		-0.546403, -0.417011, -0.726323,
		0.587095, -0.809193, 0.022927,
		38.153305, 32.730709, 21.084778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341232, 32.664742, 21.076616>,  <37.742340, 33.297142, 21.068729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341232, 32.664742, 21.076616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690907, 32.577061, 21.249937>,  <37.900711, 32.524452, 21.353930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690907, 32.577061, 21.249937>,  <37.341232, 32.664742, 21.076616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690907, 32.577061, 21.249937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482208, -0.286700, 0.827816,
		-0.057230, -0.932606, -0.356329,
		0.874185, -0.219201, 0.433302,
		37.953163, 32.511299, 21.379929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352551, 31.903536, 21.266199>,  <37.341232, 32.664742, 21.076616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352551, 31.903536, 21.266199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602230, 32.103191, 21.506613>,  <37.752037, 32.222984, 21.650860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602230, 32.103191, 21.506613>,  <37.352551, 31.903536, 21.266199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602230, 32.103191, 21.506613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429350, -0.423565, 0.797654,
		0.652714, -0.755947, -0.050084,
		0.624197, 0.499137, 0.601032,
		37.789490, 32.252934, 21.686922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371307, 31.391531, 21.763607>,  <37.352551, 31.903536, 21.266199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371307, 31.391531, 21.763607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528210, 31.720779, 21.927851>,  <37.622353, 31.918329, 22.026398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528210, 31.720779, 21.927851>,  <37.371307, 31.391531, 21.763607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528210, 31.720779, 21.927851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304604, -0.304968, 0.902336,
		0.867957, -0.479023, 0.131100,
		0.392258, 0.823123, 0.410612,
		37.645885, 31.967716, 22.051035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826794, 31.254086, 22.444836>,  <37.371307, 31.391531, 21.763607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826794, 31.254086, 22.444836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689827, 31.629890, 22.447998>,  <37.607647, 31.855373, 22.449896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689827, 31.629890, 22.447998>,  <37.826794, 31.254086, 22.444836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689827, 31.629890, 22.447998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385432, -0.148141, 0.910767,
		0.856849, 0.308817, 0.412845,
		-0.342419, 0.939514, 0.007906,
		37.587101, 31.911745, 22.450371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931004, 31.404299, 23.082308>,  <37.826794, 31.254086, 22.444836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931004, 31.404299, 23.082308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683250, 31.690771, 22.953651>,  <37.534599, 31.862654, 22.876457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683250, 31.690771, 22.953651>,  <37.931004, 31.404299, 23.082308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683250, 31.690771, 22.953651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383883, 0.081098, 0.919814,
		0.684837, 0.693187, 0.224699,
		-0.619380, 0.716181, -0.321641,
		37.497437, 31.905626, 22.857159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958931, 31.994390, 23.504818>,  <37.931004, 31.404299, 23.082308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958931, 31.994390, 23.504818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597641, 32.042900, 23.340151>,  <37.380867, 32.072006, 23.241350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597641, 32.042900, 23.340151>,  <37.958931, 31.994390, 23.504818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597641, 32.042900, 23.340151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350122, 0.346483, 0.870267,
		0.248178, 0.930184, -0.270492,
		-0.903229, 0.121276, -0.411667,
		37.326672, 32.079285, 23.216650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768436, 32.623260, 23.763876>,  <37.958931, 31.994390, 23.504818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768436, 32.623260, 23.763876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413414, 32.469116, 23.662884>,  <37.200401, 32.376629, 23.602289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413414, 32.469116, 23.662884>,  <37.768436, 32.623260, 23.763876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413414, 32.469116, 23.662884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422460, 0.462150, 0.779709,
		-0.183785, 0.798696, -0.572981,
		-0.887553, -0.385360, -0.252481,
		37.147148, 32.353508, 23.587139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334953, 33.174072, 23.923689>,  <37.768436, 32.623260, 23.763876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334953, 33.174072, 23.923689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091827, 32.857380, 23.899269>,  <36.945953, 32.667366, 23.884617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091827, 32.857380, 23.899269>,  <37.334953, 33.174072, 23.923689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091827, 32.857380, 23.899269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444477, 0.275500, 0.852373,
		-0.658032, 0.545216, -0.519358,
		-0.607811, -0.791732, -0.061048,
		36.909485, 32.619862, 23.880955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704479, 33.352467, 24.117741>,  <37.334953, 33.174072, 23.923689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704479, 33.352467, 24.117741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648933, 32.960392, 24.174244>,  <36.615608, 32.725147, 24.208145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648933, 32.960392, 24.174244>,  <36.704479, 33.352467, 24.117741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648933, 32.960392, 24.174244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380687, 0.184513, 0.906108,
		-0.914218, 0.072048, -0.398765,
		-0.138861, -0.980186, 0.141258,
		36.607277, 32.666336, 24.216621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976379, 33.269695, 24.375521>,  <36.704479, 33.352467, 24.117741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976379, 33.269695, 24.375521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197025, 32.958199, 24.495043>,  <36.329414, 32.771301, 24.566757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197025, 32.958199, 24.495043>,  <35.976379, 33.269695, 24.375521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197025, 32.958199, 24.495043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376586, 0.087130, 0.922275,
		-0.744246, -0.621269, -0.245199,
		0.551617, -0.778738, 0.298807,
		36.362511, 32.724579, 24.584684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527275, 32.865452, 24.708408>,  <35.976379, 33.269695, 24.375521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527275, 32.865452, 24.708408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886192, 32.744049, 24.836622>,  <36.101543, 32.671207, 24.913551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886192, 32.744049, 24.836622>,  <35.527275, 32.865452, 24.708408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886192, 32.744049, 24.836622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363067, -0.094405, 0.926968,
		-0.251082, -0.948141, -0.194903,
		0.897296, -0.303508, 0.320536,
		36.155380, 32.652996, 24.932783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400444, 32.357330, 25.160212>,  <35.527275, 32.865452, 24.708408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400444, 32.357330, 25.160212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775768, 32.469887, 25.240599>,  <36.000965, 32.537422, 25.288832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775768, 32.469887, 25.240599>,  <35.400444, 32.357330, 25.160212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775768, 32.469887, 25.240599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164330, -0.148490, 0.975165,
		0.304244, -0.948035, -0.093089,
		0.938313, 0.281391, 0.200968,
		36.057262, 32.554302, 25.300890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698109, 31.813925, 25.631144>,  <35.400444, 32.357330, 25.160212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698109, 31.813925, 25.631144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873249, 32.171642, 25.668072>,  <35.978333, 32.386272, 25.690229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873249, 32.171642, 25.668072>,  <35.698109, 31.813925, 25.631144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873249, 32.171642, 25.668072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146417, -0.030387, 0.988756,
		0.887044, -0.446447, 0.117634,
		0.437853, 0.894294, 0.092322,
		36.004604, 32.439930, 25.695768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161739, 31.768259, 26.218771>,  <35.698109, 31.813925, 25.631144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161739, 31.768259, 26.218771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141808, 32.165428, 26.175646>,  <36.129848, 32.403728, 26.149771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141808, 32.165428, 26.175646>,  <36.161739, 31.768259, 26.218771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141808, 32.165428, 26.175646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038621, 0.105949, 0.993621,
		0.998011, 0.053675, 0.033069,
		-0.049829, 0.992922, -0.107812,
		36.126858, 32.463306, 26.143303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618137, 31.954639, 26.772676>,  <36.161739, 31.768259, 26.218771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618137, 31.954639, 26.772676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385891, 32.262089, 26.665274>,  <36.246544, 32.446560, 26.600832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385891, 32.262089, 26.665274>,  <36.618137, 31.954639, 26.772676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385891, 32.262089, 26.665274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207251, 0.179399, 0.961698,
		0.787355, 0.614029, 0.055135,
		-0.580620, 0.768625, -0.268509,
		36.211704, 32.492676, 26.584721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885330, 32.590828, 27.187168>,  <36.618137, 31.954639, 26.772676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885330, 32.590828, 27.187168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509975, 32.699379, 27.101580>,  <36.284763, 32.764507, 27.050226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509975, 32.699379, 27.101580>,  <36.885330, 32.590828, 27.187168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509975, 32.699379, 27.101580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142692, 0.259659, 0.955100,
		0.314750, 0.926786, -0.204937,
		-0.938388, 0.271375, -0.213973,
		36.228458, 32.780792, 27.037388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783203, 33.354546, 27.453947>,  <36.885330, 32.590828, 27.187168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783203, 33.354546, 27.453947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436031, 33.160194, 27.412701>,  <36.227730, 33.043583, 27.387953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436031, 33.160194, 27.412701>,  <36.783203, 33.354546, 27.453947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436031, 33.160194, 27.412701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241649, 0.231678, 0.942301,
		-0.433950, 0.842765, -0.318490,
		-0.867925, -0.485874, -0.103117,
		36.175655, 33.014431, 27.381765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305592, 33.664009, 27.965305>,  <36.783203, 33.354546, 27.453947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305592, 33.664009, 27.965305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093067, 33.339161, 27.868830>,  <35.965553, 33.144253, 27.810946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093067, 33.339161, 27.868830>,  <36.305592, 33.664009, 27.965305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093067, 33.339161, 27.868830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530815, 0.097243, 0.841891,
		-0.660263, 0.575329, -0.482752,
		-0.531308, -0.812121, -0.241187,
		35.933674, 33.095524, 27.796474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713562, 33.882210, 28.089346>,  <36.305592, 33.664009, 27.965305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713562, 33.882210, 28.089346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656002, 33.486698, 28.073290>,  <35.621468, 33.249390, 28.063656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656002, 33.486698, 28.073290>,  <35.713562, 33.882210, 28.089346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656002, 33.486698, 28.073290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523765, 0.041686, 0.850843,
		-0.839621, 0.143461, -0.523885,
		-0.143901, -0.988778, -0.040140,
		35.612831, 33.190063, 28.061249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940090, 33.737186, 28.198952>,  <35.713562, 33.882210, 28.089346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940090, 33.737186, 28.198952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123234, 33.390438, 28.277840>,  <35.233120, 33.182388, 28.325172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123234, 33.390438, 28.277840>,  <34.940090, 33.737186, 28.198952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123234, 33.390438, 28.277840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546465, -0.099446, 0.831557,
		-0.701240, -0.488513, -0.519247,
		0.457864, -0.866871, 0.197220,
		35.260593, 33.130375, 28.337006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462803, 33.412758, 28.450333>,  <34.940090, 33.737186, 28.198952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462803, 33.412758, 28.450333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762516, 33.178371, 28.573769>,  <34.942345, 33.037739, 28.647831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762516, 33.178371, 28.573769>,  <34.462803, 33.412758, 28.450333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762516, 33.178371, 28.573769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476964, -0.154204, 0.865290,
		-0.459442, -0.795530, -0.395025,
		0.749279, -0.585963, 0.308591,
		34.987301, 33.002583, 28.666346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151733, 32.774540, 28.744495>,  <34.462803, 33.412758, 28.450333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151733, 32.774540, 28.744495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515869, 32.817249, 28.904434>,  <34.734352, 32.842873, 29.000399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515869, 32.817249, 28.904434>,  <34.151733, 32.774540, 28.744495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515869, 32.817249, 28.904434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382224, -0.153566, 0.911220,
		0.158696, -0.982353, -0.098986,
		0.910341, 0.106772, 0.399849,
		34.788971, 32.849281, 29.024389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157669, 32.195774, 29.113953>,  <34.151733, 32.774540, 28.744495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157669, 32.195774, 29.113953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422722, 32.456089, 29.262218>,  <34.581753, 32.612278, 29.351179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422722, 32.456089, 29.262218>,  <34.157669, 32.195774, 29.113953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422722, 32.456089, 29.262218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274830, -0.249102, 0.928664,
		0.696696, -0.717234, 0.013792,
		0.662633, 0.650787, 0.370666,
		34.621513, 32.651325, 29.373419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276089, 32.006870, 29.794247>,  <34.157669, 32.195774, 29.113953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276089, 32.006870, 29.794247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445011, 32.368923, 29.813848>,  <34.546364, 32.586155, 29.825609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445011, 32.368923, 29.813848>,  <34.276089, 32.006870, 29.794247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445011, 32.368923, 29.813848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162943, 0.022622, 0.986376,
		0.891689, -0.424536, 0.157038,
		0.422304, 0.905128, 0.049003,
		34.571701, 32.640461, 29.828550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867271, 32.033970, 30.285826>,  <34.276089, 32.006870, 29.794247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867271, 32.033970, 30.285826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746010, 32.414158, 30.258400>,  <34.673252, 32.642269, 30.241943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746010, 32.414158, 30.258400>,  <34.867271, 32.033970, 30.285826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746010, 32.414158, 30.258400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137600, 0.027536, 0.990105,
		0.942953, 0.309594, 0.122437,
		-0.303159, 0.950470, -0.068566,
		34.655064, 32.699299, 30.237831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272278, 32.261650, 30.759317>,  <34.867271, 32.033970, 30.285826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272278, 32.261650, 30.759317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000980, 32.553768, 30.726702>,  <34.838200, 32.729038, 30.707132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000980, 32.553768, 30.726702>,  <35.272278, 32.261650, 30.759317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000980, 32.553768, 30.726702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185196, 0.277262, 0.942777,
		0.711114, 0.624334, -0.323300,
		-0.678247, 0.730296, -0.081541,
		34.797504, 32.772858, 30.702240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534344, 32.795258, 31.064205>,  <35.272278, 32.261650, 30.759317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534344, 32.795258, 31.064205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138489, 32.852547, 31.060249>,  <34.900974, 32.886921, 31.057877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138489, 32.852547, 31.060249>,  <35.534344, 32.795258, 31.064205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138489, 32.852547, 31.060249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001939, 0.082216, 0.996613,
		0.143552, 0.986270, -0.081642,
		-0.989641, 0.143224, -0.009890,
		34.841595, 32.895515, 31.057281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462666, 33.312313, 31.540337>,  <35.534344, 32.795258, 31.064205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462666, 33.312313, 31.540337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092297, 33.167175, 31.498350>,  <34.870075, 33.080093, 31.473158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092297, 33.167175, 31.498350>,  <35.462666, 33.312313, 31.540337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092297, 33.167175, 31.498350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133847, 0.055318, 0.989457,
		-0.353215, 0.930205, -0.099786,
		-0.925918, -0.362847, -0.104966,
		34.814522, 33.058323, 31.466860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161495, 33.655647, 32.025928>,  <35.462666, 33.312313, 31.540337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161495, 33.655647, 32.025928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877636, 33.379498, 31.969681>,  <34.707321, 33.213806, 31.935932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877636, 33.379498, 31.969681>,  <35.161495, 33.655647, 32.025928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877636, 33.379498, 31.969681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053616, -0.146094, 0.987817,
		-0.702510, 0.708545, 0.066661,
		-0.709651, -0.690377, -0.140622,
		34.664742, 33.172386, 31.927494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513908, 33.838013, 32.298168>,  <35.161495, 33.655647, 32.025928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513908, 33.838013, 32.298168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511528, 33.438023, 32.299511>,  <34.510098, 33.198029, 32.300316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511528, 33.438023, 32.299511>,  <34.513908, 33.838013, 32.298168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511528, 33.438023, 32.299511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006653, 0.003313, 0.999973,
		-0.999960, 0.005976, 0.006633,
		-0.005954, -0.999977, 0.003353,
		34.509743, 33.138031, 32.300518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902737, 33.562134, 32.815685>,  <34.513908, 33.838013, 32.298168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902737, 33.562134, 32.815685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171597, 33.269302, 32.771366>,  <34.332912, 33.093605, 32.744774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171597, 33.269302, 32.771366>,  <33.902737, 33.562134, 32.815685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171597, 33.269302, 32.771366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169392, 0.006372, 0.985528,
		-0.720780, -0.681189, 0.128291,
		0.672148, -0.732080, -0.110795,
		34.373241, 33.049679, 32.738129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766003, 33.017948, 33.288601>,  <33.902737, 33.562134, 32.815685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766003, 33.017948, 33.288601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153923, 32.970844, 33.203163>,  <34.386673, 32.942581, 33.151901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153923, 32.970844, 33.203163>,  <33.766003, 33.017948, 33.288601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153923, 32.970844, 33.203163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212088, -0.025341, 0.976922,
		-0.120454, -0.992719, 0.000400,
		0.969799, -0.117759, -0.213596,
		34.444862, 32.935516, 33.139084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016891, 32.615894, 33.862103>,  <33.766003, 33.017948, 33.288601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016891, 32.615894, 33.862103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349560, 32.746658, 33.682568>,  <34.549160, 32.825115, 33.574848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349560, 32.746658, 33.682568>,  <34.016891, 32.615894, 33.862103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349560, 32.746658, 33.682568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478925, -0.013286, 0.877755,
		0.280984, -0.944962, -0.167615,
		0.831672, 0.326910, -0.448833,
		34.599060, 32.844730, 33.547916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544132, 32.304276, 34.198036>,  <34.016891, 32.615894, 33.862103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544132, 32.304276, 34.198036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745373, 32.608730, 34.034306>,  <34.866119, 32.791405, 33.936066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745373, 32.608730, 34.034306>,  <34.544132, 32.304276, 34.198036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745373, 32.608730, 34.034306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551866, 0.081548, 0.829936,
		0.665078, -0.643440, -0.379020,
		0.503106, 0.761141, -0.409328,
		34.896305, 32.837074, 33.911507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275349, 32.052792, 34.339462>,  <34.544132, 32.304276, 34.198036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275349, 32.052792, 34.339462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280994, 32.440750, 34.242218>,  <35.284382, 32.673527, 34.183872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280994, 32.440750, 34.242218>,  <35.275349, 32.052792, 34.339462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280994, 32.440750, 34.242218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742876, 0.152566, 0.651812,
		0.669280, -0.189801, -0.718359,
		0.014117, 0.969896, -0.243108,
		35.285229, 32.731720, 34.169285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057564, 32.258728, 34.265568>,  <35.275349, 32.052792, 34.339462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057564, 32.258728, 34.265568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838341, 32.583408, 34.346348>,  <35.706806, 32.778217, 34.394817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838341, 32.583408, 34.346348>,  <36.057564, 32.258728, 34.265568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838341, 32.583408, 34.346348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744523, 0.363354, 0.560053,
		0.381212, 0.457298, -0.803465,
		-0.548053, 0.811697, 0.201954,
		35.673923, 32.826916, 34.406933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443256, 32.854568, 34.023342>,  <36.057564, 32.258728, 34.265568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443256, 32.854568, 34.023342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203300, 32.951492, 34.328346>,  <36.059326, 33.009647, 34.511349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203300, 32.951492, 34.328346>,  <36.443256, 32.854568, 34.023342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203300, 32.951492, 34.328346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800080, 0.184585, 0.570789,
		-0.002439, 0.952477, -0.304600,
		-0.599888, 0.242312, 0.762508,
		36.023335, 33.024185, 34.557098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787838, 33.356842, 34.329746>,  <36.443256, 32.854568, 34.023342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787838, 33.356842, 34.329746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503525, 33.289330, 34.602890>,  <36.332935, 33.248821, 34.766777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503525, 33.289330, 34.602890>,  <36.787838, 33.356842, 34.329746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503525, 33.289330, 34.602890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578604, 0.411757, 0.704041,
		-0.400001, 0.895527, -0.195013,
		-0.710786, -0.168781, 0.682859,
		36.290291, 33.238693, 34.807747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649368, 34.040119, 34.749088>,  <36.787838, 33.356842, 34.329746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649368, 34.040119, 34.749088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566113, 33.698647, 34.940044>,  <36.516159, 33.493763, 35.054619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566113, 33.698647, 34.940044>,  <36.649368, 34.040119, 34.749088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566113, 33.698647, 34.940044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424929, 0.360689, 0.830264,
		-0.880974, 0.375665, 0.287682,
		-0.208137, -0.853685, 0.477389,
		36.503670, 33.442539, 35.083260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490646, 34.250664, 35.410847>,  <36.649368, 34.040119, 34.749088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490646, 34.250664, 35.410847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600578, 33.868633, 35.455212>,  <36.666538, 33.639416, 35.481831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600578, 33.868633, 35.455212>,  <36.490646, 34.250664, 35.410847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600578, 33.868633, 35.455212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581979, 0.257058, 0.771506,
		-0.765356, -0.147484, 0.626481,
		0.274826, -0.955076, 0.110908,
		36.683025, 33.582111, 35.488483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366703, 34.050232, 36.093418>,  <36.490646, 34.250664, 35.410847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366703, 34.050232, 36.093418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659500, 33.845688, 35.913330>,  <36.835178, 33.722961, 35.805275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659500, 33.845688, 35.913330>,  <36.366703, 34.050232, 36.093418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659500, 33.845688, 35.913330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609985, 0.197521, 0.767401,
		-0.303488, -0.836360, 0.456505,
		0.731992, -0.511358, -0.450222,
		36.879097, 33.692280, 35.778263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648670, 33.344166, 36.409214>,  <36.366703, 34.050232, 36.093418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648670, 33.344166, 36.409214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947521, 33.500378, 36.194073>,  <37.126831, 33.594105, 36.064987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947521, 33.500378, 36.194073>,  <36.648670, 33.344166, 36.409214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947521, 33.500378, 36.194073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628273, -0.150771, 0.763244,
		0.216980, -0.908158, -0.358007,
		0.747123, 0.390534, -0.537857,
		37.171658, 33.617538, 36.032715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241627, 32.960030, 36.662052>,  <36.648670, 33.344166, 36.409214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241627, 32.960030, 36.662052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372364, 33.292404, 36.481953>,  <37.450806, 33.491829, 36.373894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372364, 33.292404, 36.481953>,  <37.241627, 32.960030, 36.662052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372364, 33.292404, 36.481953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675881, 0.127477, 0.725903,
		0.660573, -0.541572, -0.519946,
		0.326847, 0.830933, -0.450246,
		37.470417, 33.541683, 36.346878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912968, 32.880894, 36.638885>,  <37.241627, 32.960030, 36.662052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912968, 32.880894, 36.638885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863747, 33.274910, 36.590633>,  <37.834213, 33.511318, 36.561684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863747, 33.274910, 36.590633>,  <37.912968, 32.880894, 36.638885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863747, 33.274910, 36.590633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752814, 0.171857, 0.635403,
		0.646630, -0.012625, -0.762700,
		-0.123053, 0.985041, -0.120632,
		37.826832, 33.570423, 36.554443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598942, 33.053684, 36.645008>,  <37.912968, 32.880894, 36.638885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598942, 33.053684, 36.645008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414059, 33.408092, 36.659641>,  <38.303127, 33.620735, 36.668419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414059, 33.408092, 36.659641>,  <38.598942, 33.053684, 36.645008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414059, 33.408092, 36.659641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688915, 0.332801, 0.643925,
		0.558355, 0.322827, -0.764214,
		-0.462207, 0.886017, 0.036579,
		38.275398, 33.673897, 36.670616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021442, 33.654587, 36.399796>,  <38.598942, 33.053684, 36.645008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021442, 33.654587, 36.399796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739410, 33.812851, 36.635189>,  <38.570190, 33.907810, 36.776424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739410, 33.812851, 36.635189>,  <39.021442, 33.654587, 36.399796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739410, 33.812851, 36.635189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709120, 0.389242, 0.587912,
		0.003549, 0.831832, -0.555016,
		-0.705079, 0.395659, 0.588487,
		38.527885, 33.931549, 36.811737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082409, 34.398643, 36.497841>,  <39.021442, 33.654587, 36.399796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082409, 34.398643, 36.497841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900730, 34.275707, 36.832325>,  <38.791725, 34.201946, 37.033016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900730, 34.275707, 36.832325>,  <39.082409, 34.398643, 36.497841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900730, 34.275707, 36.832325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728951, 0.411416, 0.547144,
		-0.512190, 0.858068, 0.037171,
		-0.454194, -0.307337, 0.836213,
		38.764473, 34.183506, 37.083187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047337, 35.040646, 36.903721>,  <39.082409, 34.398643, 36.497841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047337, 35.040646, 36.903721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104389, 34.683167, 37.073883>,  <39.138618, 34.468681, 37.175980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104389, 34.683167, 37.073883>,  <39.047337, 35.040646, 36.903721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104389, 34.683167, 37.073883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803580, 0.355483, 0.477380,
		-0.577855, 0.273759, 0.768856,
		0.142628, -0.893693, 0.425405,
		39.147179, 34.415058, 37.201504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172832, 35.103909, 37.595112>,  <39.047337, 35.040646, 36.903721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172832, 35.103909, 37.595112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325314, 34.739857, 37.530186>,  <39.416801, 34.521423, 37.491230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325314, 34.739857, 37.530186>,  <39.172832, 35.103909, 37.595112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325314, 34.739857, 37.530186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828789, 0.258638, 0.496199,
		-0.409626, -0.323676, 0.852901,
		0.381201, -0.910132, -0.162314,
		39.439674, 34.466816, 37.481491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368401, 34.757236, 38.233223>,  <39.172832, 35.103909, 37.595112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368401, 34.757236, 38.233223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604263, 34.609756, 37.945789>,  <39.745781, 34.521267, 37.773327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604263, 34.609756, 37.945789>,  <39.368401, 34.757236, 38.233223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604263, 34.609756, 37.945789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807231, 0.297930, 0.509525,
		0.026226, -0.880509, 0.473304,
		0.589652, -0.368703, -0.718588,
		39.781158, 34.499146, 37.730213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719326, 34.081211, 38.435551>,  <39.368401, 34.757236, 38.233223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719326, 34.081211, 38.435551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895870, 34.350594, 38.198349>,  <40.001797, 34.512222, 38.056026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895870, 34.350594, 38.198349>,  <39.719326, 34.081211, 38.435551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895870, 34.350594, 38.198349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531344, 0.336400, 0.777501,
		0.723100, -0.658251, -0.209362,
		0.441361, 0.673455, -0.593009,
		40.028278, 34.552631, 38.020447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325687, 33.767647, 38.687931>,  <39.719326, 34.081211, 38.435551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325687, 33.767647, 38.687931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324108, 33.873348, 38.302155>,  <40.323162, 33.936771, 38.070686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324108, 33.873348, 38.302155>,  <40.325687, 33.767647, 38.687931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324108, 33.873348, 38.302155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878599, 0.461488, 0.122850,
		0.477543, -0.846876, -0.233996,
		-0.003948, 0.264255, -0.964445,
		40.322926, 33.952625, 38.012821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959469, 33.577637, 38.456711>,  <40.325687, 33.767647, 38.687931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959469, 33.577637, 38.456711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858940, 33.888168, 38.225487>,  <40.798622, 34.074486, 38.086754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858940, 33.888168, 38.225487>,  <40.959469, 33.577637, 38.456711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858940, 33.888168, 38.225487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884845, 0.426332, 0.187854,
		0.392281, -0.464280, -0.794078,
		-0.251324, 0.776328, -0.578058,
		40.783543, 34.121067, 38.052071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473679, 33.661160, 37.935890>,  <40.959469, 33.577637, 38.456711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473679, 33.661160, 37.935890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303257, 34.022995, 37.941437>,  <41.201004, 34.240097, 37.944767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303257, 34.022995, 37.941437>,  <41.473679, 33.661160, 37.935890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303257, 34.022995, 37.941437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903960, 0.426278, -0.033811,
		-0.036497, -0.001868, -0.999332,
		-0.426056, 0.904590, 0.013869,
		41.175442, 34.294373, 37.945599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112057, 34.035160, 37.830853>,  <41.473679, 33.661160, 37.935890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112057, 34.035160, 37.830853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824623, 34.309120, 37.879093>,  <41.652161, 34.473495, 37.908035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824623, 34.309120, 37.879093>,  <42.112057, 34.035160, 37.830853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824623, 34.309120, 37.879093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663291, 0.727102, -0.177109,
		-0.208990, -0.047277, -0.976775,
		-0.718588, 0.684900, 0.120599,
		41.609047, 34.514591, 37.915272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031319, 34.487312, 37.195370>,  <42.112057, 34.035160, 37.830853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031319, 34.487312, 37.195370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.948814, 34.649242, 37.551701>,  <41.899311, 34.746403, 37.765499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.948814, 34.649242, 37.551701>,  <42.031319, 34.487312, 37.195370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948814, 34.649242, 37.551701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740383, 0.659805, -0.128415,
		-0.639757, 0.633065, -0.435822,
		-0.206262, 0.404830, 0.890825,
		41.886936, 34.770691, 37.818947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040932, 35.238903, 37.107887>,  <42.031319, 34.487312, 37.195370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040932, 35.238903, 37.107887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091480, 35.209610, 37.503597>,  <42.121807, 35.192036, 37.741024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091480, 35.209610, 37.503597>,  <42.040932, 35.238903, 37.107887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091480, 35.209610, 37.503597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737497, 0.673894, -0.044322,
		-0.663422, 0.735190, 0.139164,
		0.126367, -0.073229, 0.989277,
		42.129391, 35.187641, 37.800381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976025, 35.890759, 37.374191>,  <42.040932, 35.238903, 37.107887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976025, 35.890759, 37.374191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168297, 35.691578, 37.662910>,  <42.283661, 35.572071, 37.836140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168297, 35.691578, 37.662910>,  <41.976025, 35.890759, 37.374191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168297, 35.691578, 37.662910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544288, 0.814797, 0.199642,
		-0.687529, 0.296900, 0.662687,
		0.480682, -0.497952, 0.721796,
		42.312500, 35.542191, 37.879448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003033, 36.365810, 37.925682>,  <41.976025, 35.890759, 37.374191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003033, 36.365810, 37.925682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310738, 36.116150, 37.980343>,  <42.495361, 35.966354, 38.013142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310738, 36.116150, 37.980343>,  <42.003033, 36.365810, 37.925682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310738, 36.116150, 37.980343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580770, 0.772214, 0.257666,
		-0.266350, -0.118846, 0.956522,
		0.769262, -0.624148, 0.136656,
		42.541515, 35.928905, 38.021339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334179, 36.411324, 38.686913>,  <42.003033, 36.365810, 37.925682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334179, 36.411324, 38.686913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580700, 36.312801, 38.387711>,  <42.728611, 36.253689, 38.208191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580700, 36.312801, 38.387711>,  <42.334179, 36.411324, 38.686913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580700, 36.312801, 38.387711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606429, 0.754402, 0.251239,
		0.502411, -0.608449, 0.614307,
		0.616300, -0.246308, -0.748001,
		42.765591, 36.238911, 38.163311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028362, 36.426743, 38.906181>,  <42.334179, 36.411324, 38.686913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028362, 36.426743, 38.906181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.027485, 36.471916, 38.508739>,  <43.026958, 36.499020, 38.270275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.027485, 36.471916, 38.508739>,  <43.028362, 36.426743, 38.906181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.027485, 36.471916, 38.508739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456950, 0.883915, 0.099455,
		0.889490, -0.453808, -0.053545,
		-0.002196, 0.112931, -0.993600,
		43.026825, 36.505795, 38.210659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498463, 36.907028, 38.417091>,  <43.028362, 36.426743, 38.906181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498463, 36.907028, 38.417091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565498, 36.601433, 38.666328>,  <43.605721, 36.418076, 38.815872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565498, 36.601433, 38.666328>,  <43.498463, 36.907028, 38.417091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.565498, 36.601433, 38.666328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542094, -0.599315, -0.589029,
		0.823437, -0.239061, -0.514589,
		0.167587, -0.763984, 0.623091,
		43.615776, 36.372238, 38.853256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793995, 36.422974, 38.118584>,  <43.498463, 36.907028, 38.417091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793995, 36.422974, 38.118584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580418, 36.241901, 38.404236>,  <43.452271, 36.133259, 38.575626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580418, 36.241901, 38.404236>,  <43.793995, 36.422974, 38.118584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580418, 36.241901, 38.404236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449798, -0.563104, -0.693250,
		0.715953, -0.691371, 0.097050,
		-0.533942, -0.452681, 0.714133,
		43.420235, 36.106098, 38.618477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567734, 35.681137, 37.954098>,  <43.793995, 36.422974, 38.118584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567734, 35.681137, 37.954098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282558, 35.787743, 38.213539>,  <43.111454, 35.851704, 38.369205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282558, 35.787743, 38.213539>,  <43.567734, 35.681137, 37.954098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282558, 35.787743, 38.213539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651475, -0.593923, -0.472055,
		0.259414, -0.759097, 0.597057,
		-0.712942, 0.266510, 0.648604,
		43.068676, 35.867695, 38.408119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303455, 35.088085, 38.297462>,  <43.567734, 35.681137, 37.954098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303455, 35.088085, 38.297462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026497, 35.376514, 38.307602>,  <42.860321, 35.549572, 38.313686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026497, 35.376514, 38.307602>,  <43.303455, 35.088085, 38.297462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026497, 35.376514, 38.307602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717713, -0.684719, -0.126680,
		-0.073991, -0.105903, 0.991620,
		-0.692397, 0.721072, 0.025344,
		42.818779, 35.592834, 38.315205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772018, 34.892490, 38.816669>,  <43.303455, 35.088085, 38.297462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772018, 34.892490, 38.816669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600601, 35.130959, 38.545101>,  <42.497753, 35.274040, 38.382160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600601, 35.130959, 38.545101>,  <42.772018, 34.892490, 38.816669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600601, 35.130959, 38.545101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765702, -0.638524, -0.077385,
		-0.479640, 0.486686, 0.730125,
		-0.428540, 0.596175, -0.678918,
		42.472038, 35.309811, 38.341427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094963, 35.067036, 39.096359>,  <42.772018, 34.892490, 38.816669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094963, 35.067036, 39.096359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095451, 35.127510, 38.700958>,  <42.095745, 35.163795, 38.463718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095451, 35.127510, 38.700958>,  <42.094963, 35.067036, 39.096359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095451, 35.127510, 38.700958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839570, -0.536851, -0.083141,
		-0.543250, 0.830021, 0.126275,
		0.001218, 0.151183, -0.988505,
		42.095818, 35.172867, 38.404408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469063, 35.431427, 38.837814>,  <42.094963, 35.067036, 39.096359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469063, 35.431427, 38.837814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609680, 35.206280, 38.538589>,  <41.694050, 35.071190, 38.359055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609680, 35.206280, 38.538589>,  <41.469063, 35.431427, 38.837814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609680, 35.206280, 38.538589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846232, -0.532805, 0.003228,
		-0.400388, 0.631900, -0.663621,
		0.351541, -0.562869, -0.748062,
		41.715141, 35.037418, 38.314171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094238, 35.591599, 38.293362>,  <41.469063, 35.431427, 38.837814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094238, 35.591599, 38.293362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238953, 35.218822, 38.283569>,  <41.325779, 34.995155, 38.277695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238953, 35.218822, 38.283569>,  <41.094238, 35.591599, 38.293362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238953, 35.218822, 38.283569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927479, -0.357145, -0.110589,
		0.094320, 0.062715, -0.993565,
		0.361783, -0.931941, -0.024481,
		41.347488, 34.939240, 38.276226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408665, 35.396378, 38.002125>,  <41.094238, 35.591599, 38.293362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408665, 35.396378, 38.002125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669811, 35.095425, 37.967041>,  <40.826500, 34.914852, 37.945992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669811, 35.095425, 37.967041>,  <40.408665, 35.396378, 38.002125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669811, 35.095425, 37.967041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731485, -0.596149, -0.330963,
		0.196720, 0.280234, -0.939559,
		0.652864, -0.752380, -0.087712,
		40.865669, 34.869709, 37.940727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034512, 35.806026, 37.534782>,  <40.408665, 35.396378, 38.002125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034512, 35.806026, 37.534782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261581, 35.978554, 37.254295>,  <40.397823, 36.082069, 37.086002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261581, 35.978554, 37.254295>,  <40.034512, 35.806026, 37.534782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261581, 35.978554, 37.254295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758640, -0.604849, 0.242120,
		-0.319700, -0.669418, -0.670576,
		0.567677, 0.431320, -0.701218,
		40.431885, 36.107948, 37.043930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323925, 35.090496, 37.369492>,  <40.034512, 35.806026, 37.534782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323925, 35.090496, 37.369492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486061, 34.786919, 37.573338>,  <40.583344, 34.604774, 37.695644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486061, 34.786919, 37.573338>,  <40.323925, 35.090496, 37.369492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486061, 34.786919, 37.573338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736180, -0.601495, -0.310232,
		0.541981, -0.249423, -0.802525,
		0.405336, -0.758942, 0.509618,
		40.607662, 34.559235, 37.726223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350315, 34.485825, 36.895111>,  <40.323925, 35.090496, 37.369492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350315, 34.485825, 36.895111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328457, 34.357807, 37.273441>,  <40.315342, 34.280998, 37.500439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328457, 34.357807, 37.273441>,  <40.350315, 34.485825, 36.895111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328457, 34.357807, 37.273441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902992, -0.388449, -0.183609,
		0.426168, -0.864107, -0.267767,
		-0.054644, -0.320040, 0.945827,
		40.312065, 34.261795, 37.557190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244873, 33.738556, 36.897652>,  <40.350315, 34.485825, 36.895111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244873, 33.738556, 36.897652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096115, 33.910282, 37.226868>,  <40.006863, 34.013317, 37.424397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096115, 33.910282, 37.226868>,  <40.244873, 33.738556, 36.897652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096115, 33.910282, 37.226868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905843, -0.361580, -0.220701,
		0.202844, -0.827618, 0.523357,
		-0.371891, 0.429311, 0.823036,
		39.984547, 34.039078, 37.473778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850239, 33.259113, 37.271690>,  <40.244873, 33.738556, 36.897652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850239, 33.259113, 37.271690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739521, 33.636772, 37.343208>,  <39.673092, 33.863369, 37.386120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739521, 33.636772, 37.343208>,  <39.850239, 33.259113, 37.271690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739521, 33.636772, 37.343208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942951, -0.231053, -0.239702,
		-0.185004, -0.234940, 0.954241,
		-0.276796, 0.944149, 0.178792,
		39.656483, 33.920017, 37.396847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272396, 33.194511, 37.634399>,  <39.850239, 33.259113, 37.271690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272396, 33.194511, 37.634399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238411, 33.576641, 37.521164>,  <39.218021, 33.805920, 37.453224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238411, 33.576641, 37.521164>,  <39.272396, 33.194511, 37.634399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238411, 33.576641, 37.521164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987587, -0.118411, -0.103207,
		-0.132117, 0.270808, 0.953524,
		-0.084959, 0.955323, -0.283090,
		39.212925, 33.863239, 37.436237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740738, 33.613110, 38.175007>,  <39.272396, 33.194511, 37.634399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740738, 33.613110, 38.175007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755299, 33.931767, 37.933662>,  <38.764034, 34.122959, 37.788857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755299, 33.931767, 37.933662>,  <38.740738, 33.613110, 38.175007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755299, 33.931767, 37.933662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777205, -0.356958, -0.518203,
		-0.628194, 0.487797, 0.606157,
		0.036405, 0.796640, -0.603357,
		38.766220, 34.170757, 37.752655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011143, 33.960396, 38.069401>,  <38.740738, 33.613110, 38.175007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011143, 33.960396, 38.069401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241417, 34.052509, 37.755569>,  <38.379581, 34.107777, 37.567272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241417, 34.052509, 37.755569>,  <38.011143, 33.960396, 38.069401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241417, 34.052509, 37.755569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747108, -0.241798, -0.619163,
		-0.332294, 0.942604, 0.032851,
		0.575682, 0.230287, -0.784575,
		38.414120, 34.121597, 37.520195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660053, 34.410530, 37.657383>,  <38.011143, 33.960396, 38.069401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660053, 34.410530, 37.657383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931225, 34.275005, 37.396427>,  <38.093929, 34.193691, 37.239853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931225, 34.275005, 37.396427>,  <37.660053, 34.410530, 37.657383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931225, 34.275005, 37.396427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714624, -0.095620, -0.692943,
		0.172394, 0.935983, -0.306945,
		0.677933, -0.338809, -0.652391,
		38.134605, 34.173363, 37.200710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484062, 34.701759, 37.048306>,  <37.660053, 34.410530, 37.657383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484062, 34.701759, 37.048306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696255, 34.383270, 36.931946>,  <37.823570, 34.192177, 36.862129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696255, 34.383270, 36.931946>,  <37.484062, 34.701759, 37.048306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696255, 34.383270, 36.931946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559433, -0.070997, -0.825830,
		0.636890, 0.600825, -0.483095,
		0.530477, -0.796222, -0.290903,
		37.855396, 34.144405, 36.844673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555157, 34.837734, 36.367558>,  <37.484062, 34.701759, 37.048306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555157, 34.837734, 36.367558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645100, 34.454773, 36.440018>,  <37.699066, 34.224995, 36.483494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645100, 34.454773, 36.440018>,  <37.555157, 34.837734, 36.367558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645100, 34.454773, 36.440018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400116, -0.260241, -0.878739,
		0.888452, 0.125109, -0.441590,
		0.224858, -0.957404, 0.181154,
		37.712559, 34.167553, 36.494366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941059, 34.633587, 35.863132>,  <37.555157, 34.837734, 36.367558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941059, 34.633587, 35.863132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763779, 34.303646, 36.003532>,  <37.657410, 34.105682, 36.087772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763779, 34.303646, 36.003532>,  <37.941059, 34.633587, 35.863132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763779, 34.303646, 36.003532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415790, -0.157729, -0.895679,
		0.794162, -0.542905, -0.273058,
		-0.443199, -0.824849, 0.350997,
		37.630817, 34.056190, 36.108833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073250, 34.132530, 35.330513>,  <37.941059, 34.633587, 35.863132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073250, 34.132530, 35.330513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775497, 33.988918, 35.555721>,  <37.596848, 33.902752, 35.690845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775497, 33.988918, 35.555721>,  <38.073250, 34.132530, 35.330513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775497, 33.988918, 35.555721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546232, -0.157590, -0.822676,
		0.384095, -0.919924, -0.078809,
		-0.744380, -0.359034, 0.563022,
		37.552185, 33.881207, 35.724628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627827, 34.177341, 34.736355>,  <38.073250, 34.132530, 35.330513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627827, 34.177341, 34.736355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326740, 34.237507, 34.479980>,  <38.146088, 34.273605, 34.326157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326740, 34.237507, 34.479980>,  <38.627827, 34.177341, 34.736355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326740, 34.237507, 34.479980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284507, 0.803628, 0.522721,
		0.593701, 0.575809, -0.562106,
		-0.752711, 0.150417, -0.640937,
		38.100925, 34.282631, 34.287701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721127, 34.906910, 34.543880>,  <38.627827, 34.177341, 34.736355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721127, 34.906910, 34.543880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330883, 34.819626, 34.553375>,  <38.096737, 34.767254, 34.559071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330883, 34.819626, 34.553375>,  <38.721127, 34.906910, 34.543880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330883, 34.819626, 34.553375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189387, 0.891508, 0.411517,
		-0.110958, 0.396986, -0.911093,
		-0.975613, -0.218210, 0.023736,
		38.038200, 34.754162, 34.560497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272747, 35.088432, 34.067329>,  <38.721127, 34.906910, 34.543880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272747, 35.088432, 34.067329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893818, 34.963120, 34.040688>,  <38.666462, 34.887932, 34.024704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893818, 34.963120, 34.040688>,  <39.272747, 35.088432, 34.067329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893818, 34.963120, 34.040688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314483, -0.949228, -0.008161,
		-0.060666, -0.028677, 0.997746,
		-0.947323, -0.313279, -0.066605,
		38.609623, 34.869137, 34.020706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032043, 35.081467, 33.799786>,  <39.272747, 35.088432, 34.067329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032043, 35.081467, 33.799786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163673, 35.408211, 33.610279>,  <40.242649, 35.604256, 33.496574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163673, 35.408211, 33.610279>,  <40.032043, 35.081467, 33.799786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163673, 35.408211, 33.610279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888618, -0.437613, -0.137306,
		-0.319485, -0.375811, -0.869883,
		0.329071, 0.816860, -0.473763,
		40.262394, 35.653271, 33.468151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269081, 34.859924, 33.088463>,  <40.032043, 35.081467, 33.799786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269081, 34.859924, 33.088463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447208, 35.184605, 33.239635>,  <40.554085, 35.379414, 33.330338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447208, 35.184605, 33.239635>,  <40.269081, 34.859924, 33.088463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447208, 35.184605, 33.239635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888579, -0.452538, -0.075080,
		0.110085, 0.369255, -0.922785,
		0.445319, 0.811702, 0.377929,
		40.580803, 35.428116, 33.353016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723534, 35.083401, 32.625168>,  <40.269081, 34.859924, 33.088463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723534, 35.083401, 32.625168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847580, 35.255932, 32.964058>,  <40.922009, 35.359451, 33.167393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847580, 35.255932, 32.964058>,  <40.723534, 35.083401, 32.625168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847580, 35.255932, 32.964058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899194, -0.422414, -0.114091,
		0.308668, 0.797199, -0.518842,
		0.310120, 0.431324, 0.847222,
		40.940617, 35.385330, 33.218224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391804, 35.032784, 32.448601>,  <40.723534, 35.083401, 32.625168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391804, 35.032784, 32.448601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382725, 35.163528, 32.826519>,  <41.377277, 35.241978, 33.053272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382725, 35.163528, 32.826519>,  <41.391804, 35.032784, 32.448601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382725, 35.163528, 32.826519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973476, -0.207979, 0.095338,
		0.227661, 0.921902, -0.313477,
		-0.022696, 0.326867, 0.944798,
		41.375916, 35.261589, 33.109959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055305, 35.394932, 32.555790>,  <41.391804, 35.032784, 32.448601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055305, 35.394932, 32.555790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918953, 35.335361, 32.927082>,  <41.837139, 35.299618, 33.149857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918953, 35.335361, 32.927082>,  <42.055305, 35.394932, 32.555790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918953, 35.335361, 32.927082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939751, -0.081061, 0.332110,
		0.025784, 0.985520, 0.167584,
		-0.340885, -0.148924, 0.928234,
		41.816689, 35.290684, 33.205551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195271, 35.897312, 33.152405>,  <42.055305, 35.394932, 32.555790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195271, 35.897312, 33.152405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155815, 35.532375, 33.311356>,  <42.132141, 35.313416, 33.406727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155815, 35.532375, 33.311356>,  <42.195271, 35.897312, 33.152405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155815, 35.532375, 33.311356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960972, 0.016386, 0.276159,
		-0.258463, 0.409105, 0.875117,
		-0.098638, -0.912340, 0.397374,
		42.126225, 35.258675, 33.430569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420338, 35.932720, 33.820889>,  <42.195271, 35.897312, 33.152405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420338, 35.932720, 33.820889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.500988, 35.565800, 33.683537>,  <42.549377, 35.345646, 33.601128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.500988, 35.565800, 33.683537>,  <42.420338, 35.932720, 33.820889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.500988, 35.565800, 33.683537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951253, 0.099863, 0.291795,
		-0.233374, -0.385471, 0.892720,
		0.201628, -0.917300, -0.343376,
		42.561478, 35.290611, 33.580524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635868, 35.542637, 34.270172>,  <42.420338, 35.932720, 33.820889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635868, 35.542637, 34.270172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795532, 35.400803, 33.931953>,  <42.891331, 35.315704, 33.729023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795532, 35.400803, 33.931953>,  <42.635868, 35.542637, 34.270172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795532, 35.400803, 33.931953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915461, 0.205448, 0.346008,
		0.051026, -0.912175, 0.406612,
		0.399158, -0.354582, -0.845544,
		42.915279, 35.294426, 33.678291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220131, 35.312782, 34.525703>,  <42.635868, 35.542637, 34.270172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220131, 35.312782, 34.525703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296303, 35.306393, 34.133076>,  <43.342007, 35.302559, 33.897499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296303, 35.306393, 34.133076>,  <43.220131, 35.312782, 34.525703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296303, 35.306393, 34.133076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977006, 0.100746, 0.187908,
		0.095888, -0.994784, 0.034790,
		0.190433, -0.015972, -0.981570,
		43.353432, 35.301601, 33.838604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576267, 34.663300, 34.257450>,  <43.220131, 35.312782, 34.525703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576267, 34.663300, 34.257450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677177, 34.978111, 34.032261>,  <43.737724, 35.167000, 33.897148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677177, 34.978111, 34.032261>,  <43.576267, 34.663300, 34.257450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677177, 34.978111, 34.032261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964885, -0.160600, 0.207857,
		0.073177, -0.595640, -0.799911,
		0.252274, 0.787033, -0.562972,
		43.752861, 35.214222, 33.863369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231644, 34.523312, 33.869026>,  <43.576267, 34.663300, 34.257450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231644, 34.523312, 33.869026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209114, 34.921967, 33.892864>,  <44.195599, 35.161160, 33.907166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209114, 34.921967, 33.892864>,  <44.231644, 34.523312, 33.869026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209114, 34.921967, 33.892864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996243, 0.052166, 0.069132,
		0.065791, 0.063261, -0.995826,
		-0.056322, 0.996633, 0.059591,
		44.192219, 35.220955, 33.910740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628471, 35.021824, 33.434013>,  <44.231644, 34.523312, 33.869026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628471, 35.021824, 33.434013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575302, 35.237587, 33.766609>,  <44.543400, 35.367046, 33.966167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575302, 35.237587, 33.766609>,  <44.628471, 35.021824, 33.434013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.575302, 35.237587, 33.766609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990088, 0.110659, 0.086486,
		-0.045360, 0.834740, -0.548772,
		-0.132920, 0.539410, 0.831486,
		44.535427, 35.399410, 34.016056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984550, 35.676865, 33.396584>,  <44.628471, 35.021824, 33.434013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984550, 35.676865, 33.396584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959976, 35.597881, 33.787937>,  <44.945232, 35.550491, 34.022751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959976, 35.597881, 33.787937>,  <44.984550, 35.676865, 33.396584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959976, 35.597881, 33.787937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962053, 0.249378, 0.110742,
		-0.265854, 0.948062, 0.174644,
		-0.061438, -0.197458, 0.978384,
		44.941544, 35.538643, 34.081451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.174770, 36.307171, 33.686855>,  <44.984550, 35.676865, 33.396584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.174770, 36.307171, 33.686855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258549, 36.003227, 33.933025>,  <45.308815, 35.820862, 34.080727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258549, 36.003227, 33.933025>,  <45.174770, 36.307171, 33.686855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.258549, 36.003227, 33.933025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912940, 0.377402, 0.155271,
		-0.350248, 0.529328, 0.772748,
		0.209447, -0.759855, 0.615428,
		45.321384, 35.775272, 34.117653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.660828, 36.519005, 34.282154>,  <45.174770, 36.307171, 33.686855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.660828, 36.519005, 34.282154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.699276, 36.123154, 34.324848>,  <45.722347, 35.885643, 34.350464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.699276, 36.123154, 34.324848>,  <45.660828, 36.519005, 34.282154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.699276, 36.123154, 34.324848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947448, 0.123840, 0.294967,
		-0.305126, 0.072772, 0.949527,
		0.096124, -0.989630, 0.106735,
		45.728115, 35.826263, 34.356869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.038223, 36.346378, 34.990547>,  <45.660828, 36.519005, 34.282154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.038223, 36.346378, 34.990547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.100479, 36.039989, 34.741047>,  <46.137833, 35.856155, 34.591347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.100479, 36.039989, 34.741047>,  <46.038223, 36.346378, 34.990547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.100479, 36.039989, 34.741047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978137, 0.031331, 0.205584,
		-0.137929, -0.642113, 0.754100,
		0.155635, -0.765969, -0.623754,
		46.147171, 35.810200, 34.553921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.312008, 35.795788, 35.350788>,  <46.038223, 36.346378, 34.990547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.312008, 35.795788, 35.350788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.421616, 35.755703, 34.968193>,  <46.487381, 35.731651, 34.738636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.421616, 35.755703, 34.968193>,  <46.312008, 35.795788, 35.350788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.421616, 35.755703, 34.968193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949805, -0.127894, 0.285507,
		-0.150940, -0.986712, 0.060135,
		0.274022, -0.100211, -0.956488,
		46.503822, 35.725639, 34.681248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.590122, 35.147991, 35.225513>,  <46.312008, 35.795788, 35.350788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.590122, 35.147991, 35.225513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.763306, 35.396183, 34.963963>,  <46.867214, 35.545097, 34.807034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.763306, 35.396183, 34.963963>,  <46.590122, 35.147991, 35.225513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.763306, 35.396183, 34.963963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888917, -0.173521, 0.423930,
		0.149581, -0.764783, -0.626684,
		0.432957, 0.620482, -0.653873,
		46.893192, 35.582329, 34.767799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.077206, 34.760635, 34.931904>,  <46.590122, 35.147991, 35.225513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.077206, 34.760635, 34.931904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.181309, 35.146812, 34.926384>,  <47.243771, 35.378517, 34.923073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.181309, 35.146812, 34.926384>,  <47.077206, 34.760635, 34.931904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.181309, 35.146812, 34.926384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826925, -0.215492, 0.519384,
		0.498459, -0.146589, -0.854430,
		0.260259, 0.965440, -0.013804,
		47.259388, 35.436443, 34.922241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.754501, 34.923904, 34.643589>,  <47.077206, 34.760635, 34.931904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.754501, 34.923904, 34.643589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.655647, 35.194576, 34.921017>,  <47.596336, 35.356979, 35.087471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.655647, 35.194576, 34.921017>,  <47.754501, 34.923904, 34.643589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.655647, 35.194576, 34.921017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879777, -0.143287, 0.453279,
		0.406102, 0.722202, -0.559915,
		-0.247131, 0.676678, 0.693566,
		47.581509, 35.397579, 35.129086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.698326, 29.244820, 28.759674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.335278, 29.331438, 28.615828>,  <35.117447, 29.383410, 28.529520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.335278, 29.331438, 28.615828>,  <35.698326, 29.244820, 28.759674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335278, 29.331438, 28.615828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369858, -0.007335, 0.929059,
		0.198545, 0.976245, 0.086749,
		-0.907626, 0.216545, -0.359616,
		35.062988, 29.396402, 28.507942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366096, 29.563162, 29.287773>,  <35.698326, 29.244820, 28.759674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366096, 29.563162, 29.287773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.043873, 29.448257, 29.080486>,  <34.850536, 29.379314, 28.956114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.043873, 29.448257, 29.080486>,  <35.366096, 29.563162, 29.287773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043873, 29.448257, 29.080486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548659, 0.031433, 0.835455,
		-0.223703, 0.957337, -0.182929,
		-0.805562, -0.287259, -0.518219,
		34.802204, 29.362080, 28.925020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903214, 29.981409, 29.553671>,  <35.366096, 29.563162, 29.287773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903214, 29.981409, 29.553671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.711006, 29.678974, 29.375937>,  <34.595684, 29.497513, 29.269295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.711006, 29.678974, 29.375937>,  <34.903214, 29.981409, 29.553671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711006, 29.678974, 29.375937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508579, -0.172524, 0.843554,
		-0.714460, 0.631320, -0.301631,
		-0.480514, -0.756089, -0.444338,
		34.566853, 29.452148, 29.242636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228294, 30.172495, 29.655643>,  <34.903214, 29.981409, 29.553671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228294, 30.172495, 29.655643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.210636, 29.780565, 29.577673>,  <34.200039, 29.545408, 29.530891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.210636, 29.780565, 29.577673>,  <34.228294, 30.172495, 29.655643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210636, 29.780565, 29.577673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563560, -0.136681, 0.814689,
		-0.824894, 0.145820, -0.546155,
		-0.044149, -0.979824, -0.194926,
		34.197392, 29.486618, 29.519196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486370, 29.903757, 29.618530>,  <34.228294, 30.172495, 29.655643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486370, 29.903757, 29.618530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.705624, 29.577812, 29.693951>,  <33.837173, 29.382246, 29.739202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.705624, 29.577812, 29.693951>,  <33.486370, 29.903757, 29.618530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705624, 29.577812, 29.693951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543608, -0.175758, 0.820731,
		-0.635643, -0.552367, -0.539304,
		0.548132, -0.814862, 0.188553,
		33.870064, 29.333353, 29.750517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017864, 29.385254, 29.814062>,  <33.486370, 29.903757, 29.618530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017864, 29.385254, 29.814062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.368710, 29.247639, 29.948116>,  <33.579216, 29.165070, 30.028549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.368710, 29.247639, 29.948116>,  <33.017864, 29.385254, 29.814062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368710, 29.247639, 29.948116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373217, -0.049022, 0.926448,
		-0.302303, -0.937675, -0.171398,
		0.877110, -0.344037, 0.335137,
		33.631844, 29.144428, 30.048658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811859, 28.873934, 30.201693>,  <33.017864, 29.385254, 29.814062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811859, 28.873934, 30.201693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.177647, 28.954124, 30.342295>,  <33.397118, 29.002239, 30.426657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.177647, 28.954124, 30.342295>,  <32.811859, 28.873934, 30.201693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177647, 28.954124, 30.342295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320804, -0.170280, 0.931713,
		0.246643, -0.964786, -0.091402,
		0.914468, 0.200478, 0.351506,
		33.451988, 29.014267, 30.447746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923191, 28.376497, 30.785322>,  <32.811859, 28.873934, 30.201693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923191, 28.376497, 30.785322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.237885, 28.614653, 30.850513>,  <33.426701, 28.757545, 30.889629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.237885, 28.614653, 30.850513>,  <32.923191, 28.376497, 30.785322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237885, 28.614653, 30.850513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285112, 0.116302, 0.951412,
		0.547506, -0.794975, 0.261251,
		0.786733, 0.595390, 0.162980,
		33.473904, 28.793270, 30.899408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312378, 28.150444, 31.411224>,  <32.923191, 28.376497, 30.785322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312378, 28.150444, 31.411224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.380459, 28.537155, 31.334934>,  <33.421307, 28.769182, 31.289160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.380459, 28.537155, 31.334934>,  <33.312378, 28.150444, 31.411224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380459, 28.537155, 31.334934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211745, 0.224907, 0.951094,
		0.962391, -0.121491, 0.242989,
		0.170200, 0.966777, -0.190723,
		33.431519, 28.827188, 31.277718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890816, 28.384239, 31.799046>,  <33.312378, 28.150444, 31.411224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890816, 28.384239, 31.799046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.682007, 28.711222, 31.701674>,  <33.556721, 28.907412, 31.643250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.682007, 28.711222, 31.701674>,  <33.890816, 28.384239, 31.799046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682007, 28.711222, 31.701674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001743, 0.286427, 0.958100,
		0.852933, 0.499721, -0.150945,
		-0.522018, 0.817459, -0.243432,
		33.525402, 28.956459, 31.628645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178886, 28.899696, 32.124027>,  <33.890816, 28.384239, 31.799046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178886, 28.899696, 32.124027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.812218, 29.041571, 32.050365>,  <33.592216, 29.126696, 32.006168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.812218, 29.041571, 32.050365>,  <34.178886, 28.899696, 32.124027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812218, 29.041571, 32.050365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082539, 0.282828, 0.955613,
		0.391027, 0.891182, -0.229984,
		-0.916670, 0.354688, -0.184151,
		33.537216, 29.147978, 31.995121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198620, 29.635145, 32.512527>,  <34.178886, 28.899696, 32.124027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198620, 29.635145, 32.512527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.824493, 29.502834, 32.462296>,  <33.600018, 29.423449, 32.432156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.824493, 29.502834, 32.462296>,  <34.198620, 29.635145, 32.512527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824493, 29.502834, 32.462296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171096, 0.112164, 0.978849,
		-0.309695, 0.937019, -0.161503,
		-0.935315, -0.330778, -0.125584,
		33.543900, 29.403601, 32.424622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758438, 30.223471, 32.564678>,  <34.198620, 29.635145, 32.512527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758438, 30.223471, 32.564678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.525345, 29.907684, 32.641788>,  <33.385487, 29.718212, 32.688057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.525345, 29.907684, 32.641788>,  <33.758438, 30.223471, 32.564678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525345, 29.907684, 32.641788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128997, 0.324071, 0.937197,
		-0.802359, 0.521270, -0.290686,
		-0.582736, -0.789466, 0.192779,
		33.350525, 29.670845, 32.699623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307014, 30.400131, 33.075703>,  <33.758438, 30.223471, 32.564678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307014, 30.400131, 33.075703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.247894, 30.005323, 33.100838>,  <33.212421, 29.768438, 33.115917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.247894, 30.005323, 33.100838>,  <33.307014, 30.400131, 33.075703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247894, 30.005323, 33.100838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045113, 0.070194, 0.996513,
		-0.987988, 0.144451, -0.054902,
		-0.147801, -0.987019, 0.062834,
		33.203552, 29.709217, 33.119686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829632, 30.274250, 33.696232>,  <33.307014, 30.400131, 33.075703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829632, 30.274250, 33.696232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.009266, 29.931570, 33.594738>,  <33.117046, 29.725962, 33.533840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.009266, 29.931570, 33.594738>,  <32.829632, 30.274250, 33.696232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009266, 29.931570, 33.594738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096056, -0.236049, 0.966982,
		-0.888310, -0.458631, -0.023715,
		0.449086, -0.856702, -0.253739,
		33.143993, 29.674559, 33.518616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601574, 29.830223, 34.240852>,  <32.829632, 30.274250, 33.696232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601574, 29.830223, 34.240852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.931187, 29.673668, 34.077003>,  <33.128952, 29.579735, 33.978695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.931187, 29.673668, 34.077003>,  <32.601574, 29.830223, 34.240852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931187, 29.673668, 34.077003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323856, -0.267841, 0.907402,
		-0.464862, -0.880384, -0.093954,
		0.824027, -0.391389, -0.409626,
		33.178394, 29.556252, 33.954117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676506, 29.079000, 34.497501>,  <32.601574, 29.830223, 34.240852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676506, 29.079000, 34.497501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.028221, 29.233835, 34.386494>,  <33.239250, 29.326736, 34.319889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.028221, 29.233835, 34.386494>,  <32.676506, 29.079000, 34.497501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028221, 29.233835, 34.386494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370240, -0.188936, 0.909519,
		0.299631, -0.902477, -0.309445,
		0.879286, 0.387089, -0.277523,
		33.292007, 29.349962, 34.303238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989498, 28.729853, 35.035175>,  <32.676506, 29.079000, 34.497501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989498, 28.729853, 35.035175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.222675, 29.021812, 34.892391>,  <33.362583, 29.196989, 34.806721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.222675, 29.021812, 34.892391>,  <32.989498, 28.729853, 35.035175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222675, 29.021812, 34.892391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630369, -0.129086, 0.765488,
		0.512651, -0.671255, -0.535356,
		0.582945, 0.729900, -0.356962,
		33.397560, 29.240782, 34.785301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638847, 28.472002, 35.010265>,  <32.989498, 28.729853, 35.035175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638847, 28.472002, 35.010265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.694061, 28.868120, 35.016685>,  <33.727188, 29.105791, 35.020538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.694061, 28.868120, 35.016685>,  <33.638847, 28.472002, 35.010265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694061, 28.868120, 35.016685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728824, -0.112534, 0.675390,
		0.670644, -0.081528, -0.737286,
		0.138033, 0.990298, 0.016051,
		33.735470, 29.165209, 35.021500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357624, 28.588896, 35.237240>,  <33.638847, 28.472002, 35.010265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357624, 28.588896, 35.237240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.191635, 28.950258, 35.280422>,  <34.092041, 29.167076, 35.306332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.191635, 28.950258, 35.280422>,  <34.357624, 28.588896, 35.237240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191635, 28.950258, 35.280422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559733, 0.159946, 0.813091,
		0.717286, 0.397834, -0.572040,
		-0.414971, 0.903408, 0.107953,
		34.067142, 29.221281, 35.312809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852848, 29.072641, 35.264492>,  <34.357624, 28.588896, 35.237240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852848, 29.072641, 35.264492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.543129, 29.235842, 35.457989>,  <34.357300, 29.333761, 35.574085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.543129, 29.235842, 35.457989>,  <34.852848, 29.072641, 35.264492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543129, 29.235842, 35.457989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583644, 0.164954, 0.795078,
		0.244598, 0.897956, -0.365850,
		-0.774294, 0.408001, 0.483740,
		34.310841, 29.358242, 35.603111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090435, 29.700741, 35.596066>,  <34.852848, 29.072641, 35.264492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090435, 29.700741, 35.596066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.763046, 29.583094, 35.793488>,  <34.566612, 29.512506, 35.911942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.763046, 29.583094, 35.793488>,  <35.090435, 29.700741, 35.596066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763046, 29.583094, 35.793488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422835, 0.273250, 0.864028,
		-0.388989, 0.915877, -0.099285,
		-0.818473, -0.294116, 0.493556,
		34.517506, 29.494860, 35.941555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230259, 30.434896, 35.752224>,  <35.090435, 29.700741, 35.596066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230259, 30.434896, 35.752224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.535175, 30.666086, 35.868748>,  <35.718124, 30.804800, 35.938663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.535175, 30.666086, 35.868748>,  <35.230259, 30.434896, 35.752224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535175, 30.666086, 35.868748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563815, -0.371945, -0.737407,
		-0.317849, 0.726364, -0.609399,
		0.762289, 0.577973, 0.291312,
		35.763863, 30.839478, 35.956142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537090, 30.736229, 35.150967>,  <35.230259, 30.434896, 35.752224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537090, 30.736229, 35.150967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.819096, 30.713348, 35.433720>,  <35.988300, 30.699621, 35.603371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.819096, 30.713348, 35.433720>,  <35.537090, 30.736229, 35.150967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819096, 30.713348, 35.433720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647615, -0.354317, -0.674577,
		0.289046, 0.933374, -0.212755,
		0.705016, -0.057200, 0.706881,
		36.030602, 30.696188, 35.645782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215714, 30.923018, 34.794247>,  <35.537090, 30.736229, 35.150967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215714, 30.923018, 34.794247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.311050, 30.711792, 35.120277>,  <36.368252, 30.585056, 35.315895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.311050, 30.711792, 35.120277>,  <36.215714, 30.923018, 34.794247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311050, 30.711792, 35.120277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630176, -0.554499, -0.543515,
		0.738967, 0.643181, 0.200613,
		0.238338, -0.528061, 0.815074,
		36.382553, 30.553373, 35.364799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884369, 31.067225, 34.901531>,  <36.215714, 30.923018, 34.794247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884369, 31.067225, 34.901531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.796333, 30.725403, 35.089703>,  <36.743511, 30.520309, 35.202606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.796333, 30.725403, 35.089703>,  <36.884369, 31.067225, 34.901531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796333, 30.725403, 35.089703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698929, -0.474557, -0.535065,
		0.680485, 0.211036, 0.701715,
		-0.220086, -0.854552, 0.470428,
		36.730309, 30.469038, 35.230831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440941, 30.756367, 34.980396>,  <36.884369, 31.067225, 34.901531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440941, 30.756367, 34.980396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181347, 30.452318, 34.993217>,  <37.025589, 30.269888, 35.000908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181347, 30.452318, 34.993217>,  <37.440941, 30.756367, 34.980396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181347, 30.452318, 34.993217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612579, -0.547071, -0.570491,
		0.451177, -0.350610, 0.820678,
		-0.648989, -0.760123, 0.032049,
		36.986649, 30.224281, 35.002831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801224, 30.187021, 35.098770>,  <37.440941, 30.756367, 34.980396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801224, 30.187021, 35.098770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.462959, 30.047422, 34.937248>,  <37.260002, 29.963663, 34.840336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.462959, 30.047422, 34.937248>,  <37.801224, 30.187021, 35.098770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462959, 30.047422, 34.937248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531015, -0.626247, -0.570822,
		-0.053666, -0.697148, 0.714916,
		-0.845661, -0.348998, -0.403804,
		37.209259, 29.942722, 34.816109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035213, 29.610979, 34.729801>,  <37.801224, 30.187021, 35.098770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035213, 29.610979, 34.729801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.661663, 29.657139, 34.594418>,  <37.437534, 29.684835, 34.513187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.661663, 29.657139, 34.594418>,  <38.035213, 29.610979, 34.729801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661663, 29.657139, 34.594418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277657, -0.362445, -0.889686,
		-0.225344, -0.924833, 0.306438,
		-0.933877, 0.115401, -0.338461,
		37.381500, 29.691759, 34.492878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760563, 28.973967, 34.266529>,  <38.035213, 29.610979, 34.729801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760563, 28.973967, 34.266529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.551716, 29.300165, 34.166645>,  <37.426407, 29.495884, 34.106712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.551716, 29.300165, 34.166645>,  <37.760563, 28.973967, 34.266529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551716, 29.300165, 34.166645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174763, -0.184276, -0.967212,
		-0.834773, -0.548643, -0.046304,
		-0.522121, 0.815495, -0.249712,
		37.395081, 29.544813, 34.091732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326797, 28.731386, 33.789368>,  <37.760563, 28.973967, 34.266529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326797, 28.731386, 33.789368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.360104, 29.122623, 33.713051>,  <37.380085, 29.357367, 33.667259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.360104, 29.122623, 33.713051>,  <37.326797, 28.731386, 33.789368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360104, 29.122623, 33.713051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139014, -0.200984, -0.969681,
		-0.986784, 0.054216, -0.152704,
		0.083263, 0.978093, -0.190791,
		37.385082, 29.416052, 33.655815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147610, 28.722731, 33.083118>,  <37.326797, 28.731386, 33.789368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147610, 28.722731, 33.083118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.219643, 29.111109, 33.146160>,  <37.262863, 29.344135, 33.183987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.219643, 29.111109, 33.146160>,  <37.147610, 28.722731, 33.083118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219643, 29.111109, 33.146160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114286, 0.138491, -0.983747,
		-0.976991, 0.195165, -0.086026,
		0.180079, 0.970944, 0.157609,
		37.273666, 29.402391, 33.193443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693756, 29.012688, 32.640404>,  <37.147610, 28.722731, 33.083118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693756, 29.012688, 32.640404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.998161, 29.262506, 32.710606>,  <37.180805, 29.412397, 32.752728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.998161, 29.262506, 32.710606>,  <36.693756, 29.012688, 32.640404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998161, 29.262506, 32.710606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085847, 0.171205, -0.981488,
		-0.643034, 0.761990, 0.076674,
		0.761011, 0.624548, 0.175505,
		37.226463, 29.449871, 32.763256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618153, 29.626089, 32.286358>,  <36.693756, 29.012688, 32.640404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618153, 29.626089, 32.286358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.017891, 29.622299, 32.300285>,  <37.257736, 29.620026, 32.308643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.017891, 29.622299, 32.300285>,  <36.618153, 29.626089, 32.286358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017891, 29.622299, 32.300285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035458, 0.078240, -0.996304,
		0.006716, 0.996889, 0.078525,
		0.999349, -0.009475, 0.034823,
		37.317696, 29.619457, 32.310734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808285, 30.206108, 31.979811>,  <36.618153, 29.626089, 32.286358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808285, 30.206108, 31.979811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.123207, 29.960266, 31.960192>,  <37.312160, 29.812761, 31.948420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.123207, 29.960266, 31.960192>,  <36.808285, 30.206108, 31.979811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123207, 29.960266, 31.960192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036378, 0.125719, -0.991399,
		0.615485, 0.778753, 0.121338,
		0.787309, -0.614605, -0.049048,
		37.359398, 29.775885, 31.945477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262344, 30.612019, 31.525394>,  <36.808285, 30.206108, 31.979811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262344, 30.612019, 31.525394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.380085, 30.229740, 31.525215>,  <37.450729, 30.000372, 31.525108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.380085, 30.229740, 31.525215>,  <37.262344, 30.612019, 31.525394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380085, 30.229740, 31.525215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203182, 0.063036, -0.977110,
		0.933850, 0.287519, 0.212735,
		0.294348, -0.955698, -0.000447,
		37.468388, 29.943031, 31.525082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936474, 30.674829, 31.152239>,  <37.262344, 30.612019, 31.525394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936474, 30.674829, 31.152239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.794376, 30.300941, 31.156260>,  <37.709118, 30.076609, 31.158672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.794376, 30.300941, 31.156260>,  <37.936474, 30.674829, 31.152239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794376, 30.300941, 31.156260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040990, 0.004832, -0.999148,
		0.933876, -0.355349, -0.040030,
		-0.355240, -0.934721, 0.010054,
		37.687805, 30.020525, 31.159275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379604, 30.381437, 30.695660>,  <37.936474, 30.674829, 31.152239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379604, 30.381437, 30.695660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.092346, 30.107525, 30.745195>,  <37.919991, 29.943176, 30.774918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.092346, 30.107525, 30.745195>,  <38.379604, 30.381437, 30.695660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092346, 30.107525, 30.745195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011711, -0.166043, -0.986049,
		0.695793, -0.709579, 0.111223,
		-0.718147, -0.684783, 0.123841,
		37.876904, 29.902090, 30.782349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621002, 29.672112, 30.383072>,  <38.379604, 30.381437, 30.695660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621002, 29.672112, 30.383072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.225548, 29.731272, 30.372242>,  <37.988277, 29.766768, 30.365744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.225548, 29.731272, 30.372242>,  <38.621002, 29.672112, 30.383072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225548, 29.731272, 30.372242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009055, -0.121158, -0.992592,
		-0.150093, -0.981552, 0.118441,
		-0.988631, 0.147909, -0.027073,
		37.928959, 29.775642, 30.364120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392426, 29.223339, 29.723232>,  <38.621002, 29.672112, 30.383072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392426, 29.223339, 29.723232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.110489, 29.490383, 29.819147>,  <37.941326, 29.650610, 29.876696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.110489, 29.490383, 29.819147>,  <38.392426, 29.223339, 29.723232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110489, 29.490383, 29.819147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056185, 0.284425, -0.957050,
		-0.707136, -0.688041, -0.162965,
		-0.704841, 0.667609, 0.239785,
		37.899036, 29.690666, 29.891083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.905281, 29.079603, 29.173067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.788570, 29.423246, 29.341259>,  <37.718544, 29.629433, 29.442173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.788570, 29.423246, 29.341259>,  <37.905281, 29.079603, 29.173067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788570, 29.423246, 29.341259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345647, 0.315195, -0.883844,
		-0.891849, -0.403221, 0.204981,
		-0.291776, 0.859107, 0.420479,
		37.701038, 29.680979, 29.467403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192497, 29.070593, 28.971466>,  <37.905281, 29.079603, 29.173067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192497, 29.070593, 28.971466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.336334, 29.429482, 29.073984>,  <37.422638, 29.644815, 29.135494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.336334, 29.429482, 29.073984>,  <37.192497, 29.070593, 28.971466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336334, 29.429482, 29.073984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235704, 0.353099, -0.905409,
		-0.902849, 0.265169, 0.338450,
		0.359593, 0.897222, 0.256294,
		37.444214, 29.698648, 29.150873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761978, 29.560408, 28.719872>,  <37.192497, 29.070593, 28.971466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761978, 29.560408, 28.719872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.088737, 29.785194, 28.771830>,  <37.284794, 29.920067, 28.803005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.088737, 29.785194, 28.771830>,  <36.761978, 29.560408, 28.719872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088737, 29.785194, 28.771830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083432, 0.337968, -0.937452,
		-0.570716, 0.754965, 0.322972,
		0.816898, 0.561965, 0.129896,
		37.333805, 29.953783, 28.810799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595726, 30.153339, 28.461885>,  <36.761978, 29.560408, 28.719872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595726, 30.153339, 28.461885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.995270, 30.168331, 28.449993>,  <37.234997, 30.177326, 28.442858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.995270, 30.168331, 28.449993>,  <36.595726, 30.153339, 28.461885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995270, 30.168331, 28.449993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035089, 0.151505, -0.987834,
		-0.032518, 0.987746, 0.152646,
		0.998855, 0.037479, -0.029733,
		37.294926, 30.179575, 28.441072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673279, 30.716251, 27.985443>,  <36.595726, 30.153339, 28.461885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673279, 30.716251, 27.985443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.005062, 30.493385, 28.001324>,  <37.204132, 30.359667, 28.010853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.005062, 30.493385, 28.001324>,  <36.673279, 30.716251, 27.985443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005062, 30.493385, 28.001324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044499, -0.004938, -0.998997,
		0.556800, 0.830389, 0.020697,
		0.829454, -0.557163, 0.039701,
		37.253899, 30.326237, 28.013233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964001, 30.872017, 27.305784>,  <36.673279, 30.716251, 27.985443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964001, 30.872017, 27.305784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.195831, 30.575907, 27.442066>,  <37.334930, 30.398241, 27.523836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.195831, 30.575907, 27.442066>,  <36.964001, 30.872017, 27.305784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195831, 30.575907, 27.442066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258337, -0.229619, -0.938370,
		0.772884, 0.631877, 0.058158,
		0.579580, -0.740275, 0.340706,
		37.369705, 30.353825, 27.544277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590702, 31.107187, 27.096518>,  <36.964001, 30.872017, 27.305784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590702, 31.107187, 27.096518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.582806, 30.708288, 27.125099>,  <37.578068, 30.468948, 27.142248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.582806, 30.708288, 27.125099>,  <37.590702, 31.107187, 27.096518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582806, 30.708288, 27.125099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403559, -0.073334, -0.912010,
		0.914741, 0.010835, 0.403896,
		-0.019738, -0.997249, 0.071454,
		37.576885, 30.409113, 27.146536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190235, 30.828842, 26.813028>,  <37.590702, 31.107187, 27.096518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190235, 30.828842, 26.813028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.938778, 30.517904, 26.822332>,  <37.787903, 30.331341, 26.827915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.938778, 30.517904, 26.822332>,  <38.190235, 30.828842, 26.813028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938778, 30.517904, 26.822332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197164, -0.188238, -0.962129,
		0.752286, -0.600250, 0.271599,
		-0.628644, -0.777346, 0.023261,
		37.750183, 30.284700, 26.829311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595192, 30.307297, 26.564304>,  <38.190235, 30.828842, 26.813028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595192, 30.307297, 26.564304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.218365, 30.187857, 26.503195>,  <37.992268, 30.116192, 26.466530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.218365, 30.187857, 26.503195>,  <38.595192, 30.307297, 26.564304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218365, 30.187857, 26.503195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239995, -0.281892, -0.928945,
		0.234318, -0.911797, 0.337225,
		-0.942071, -0.298601, -0.152774,
		37.935745, 30.098276, 26.457363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579525, 29.569481, 26.363024>,  <38.595192, 30.307297, 26.564304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579525, 29.569481, 26.363024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.247715, 29.730371, 26.208050>,  <38.048630, 29.826906, 26.115067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.247715, 29.730371, 26.208050>,  <38.579525, 29.569481, 26.363024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247715, 29.730371, 26.208050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191547, -0.446744, -0.873916,
		-0.524597, -0.799145, 0.293539,
		-0.829523, 0.402227, -0.387434,
		37.998859, 29.851040, 26.091820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375042, 29.083084, 25.962278>,  <38.579525, 29.569481, 26.363024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375042, 29.083084, 25.962278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.158508, 29.380816, 25.805855>,  <38.028587, 29.559454, 25.712000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.158508, 29.380816, 25.805855>,  <38.375042, 29.083084, 25.962278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158508, 29.380816, 25.805855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140083, -0.378761, -0.914832,
		-0.829055, -0.550013, 0.100769,
		-0.541336, 0.744329, -0.391061,
		37.996109, 29.604115, 25.688536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947128, 28.711340, 25.462952>,  <38.375042, 29.083084, 25.962278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947128, 28.711340, 25.462952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.920647, 29.093452, 25.347673>,  <37.904758, 29.322720, 25.278507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.920647, 29.093452, 25.347673>,  <37.947128, 28.711340, 25.462952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920647, 29.093452, 25.347673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123551, -0.278759, -0.952381,
		-0.990127, -0.098657, -0.099571,
		-0.066203, 0.955280, -0.288196,
		37.900787, 29.380037, 25.261215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654968, 28.681541, 24.746819>,  <37.947128, 28.711340, 25.462952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654968, 28.681541, 24.746819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.848492, 29.030497, 24.774729>,  <37.964607, 29.239870, 24.791475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.848492, 29.030497, 24.774729>,  <37.654968, 28.681541, 24.746819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848492, 29.030497, 24.774729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255750, -0.064684, -0.964576,
		-0.836971, 0.484516, -0.254407,
		0.483808, 0.872388, 0.069776,
		37.993633, 29.292213, 24.795662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321529, 29.189323, 24.211519>,  <37.654968, 28.681541, 24.746819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321529, 29.189323, 24.211519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.698795, 29.290543, 24.297686>,  <37.925156, 29.351274, 24.349386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.698795, 29.290543, 24.297686>,  <37.321529, 29.189323, 24.211519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698795, 29.290543, 24.297686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226653, -0.015763, -0.973848,
		-0.243034, 0.967326, -0.072221,
		0.943166, 0.253047, 0.215417,
		37.981747, 29.366457, 24.362310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412411, 29.903198, 23.828568>,  <37.321529, 29.189323, 24.211519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412411, 29.903198, 23.828568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779694, 29.772734, 23.918463>,  <38.000065, 29.694454, 23.972399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779694, 29.772734, 23.918463>,  <37.412411, 29.903198, 23.828568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779694, 29.772734, 23.918463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292946, 0.177327, -0.939541,
		0.266590, 0.928533, 0.258371,
		0.918212, -0.326161, 0.224736,
		38.055157, 29.674885, 23.985884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817585, 30.407669, 23.533468>,  <37.412411, 29.903198, 23.828568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817585, 30.407669, 23.533468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.043453, 30.078585, 23.559675>,  <38.178974, 29.881134, 23.575399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.043453, 30.078585, 23.559675>,  <37.817585, 30.407669, 23.533468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043453, 30.078585, 23.559675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308413, 0.136712, -0.941377,
		0.765523, 0.551777, 0.330932,
		0.564673, -0.822710, 0.065519,
		38.212856, 29.831772, 23.579330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625298, 30.553612, 23.362240>,  <37.817585, 30.407669, 23.533468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625298, 30.553612, 23.362240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.543503, 30.168617, 23.290899>,  <38.494427, 29.937620, 23.248095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.543503, 30.168617, 23.290899>,  <38.625298, 30.553612, 23.362240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543503, 30.168617, 23.290899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390616, 0.086831, -0.916449,
		0.897555, -0.257068, 0.358206,
		-0.204486, -0.962485, -0.178350,
		38.482159, 29.879871, 23.237394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198486, 30.332422, 22.979885>,  <38.625298, 30.553612, 23.362240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198486, 30.332422, 22.979885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.961044, 30.024580, 22.885786>,  <38.818581, 29.839874, 22.829327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.961044, 30.024580, 22.885786>,  <39.198486, 30.332422, 22.979885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961044, 30.024580, 22.885786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384236, -0.014193, -0.923126,
		0.707105, -0.638361, 0.304135,
		-0.593604, -0.769606, -0.235246,
		38.782963, 29.793697, 22.815212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590729, 29.888124, 22.577799>,  <39.198486, 30.332422, 22.979885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590729, 29.888124, 22.577799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.217304, 29.770620, 22.495653>,  <38.993252, 29.700117, 22.446365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.217304, 29.770620, 22.495653>,  <39.590729, 29.888124, 22.577799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217304, 29.770620, 22.495653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227667, -0.043472, -0.972768,
		0.276834, -0.954890, 0.107464,
		-0.933558, -0.293761, -0.205363,
		38.937237, 29.682491, 22.434044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679646, 29.248016, 22.197769>,  <39.590729, 29.888124, 22.577799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679646, 29.248016, 22.197769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.319046, 29.392923, 22.103052>,  <39.102688, 29.479868, 22.046223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.319046, 29.392923, 22.103052>,  <39.679646, 29.248016, 22.197769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319046, 29.392923, 22.103052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131613, -0.291735, -0.947401,
		-0.412295, -0.885241, 0.215318,
		-0.901494, 0.362270, -0.236791,
		39.048599, 29.501604, 22.032015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341396, 28.675110, 21.845459>,  <39.679646, 29.248016, 22.197769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341396, 28.675110, 21.845459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.130966, 29.005718, 21.765347>,  <39.004707, 29.204082, 21.717279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.130966, 29.005718, 21.765347>,  <39.341396, 28.675110, 21.845459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130966, 29.005718, 21.765347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127086, -0.156458, -0.979475,
		-0.840890, -0.540729, -0.022731,
		-0.526074, 0.826519, -0.200283,
		38.973145, 29.253674, 21.705261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834911, 28.510548, 21.324495>,  <39.341396, 28.675110, 21.845459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834911, 28.510548, 21.324495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.904278, 28.903294, 21.293848>,  <38.945896, 29.138941, 21.275459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.904278, 28.903294, 21.293848>,  <38.834911, 28.510548, 21.324495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904278, 28.903294, 21.293848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037078, -0.084251, -0.995754,
		-0.984150, 0.169840, -0.051017,
		0.173417, 0.981864, -0.076618,
		38.956303, 29.197853, 21.270863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398727, 28.886683, 20.750212>,  <38.834911, 28.510548, 21.324495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398727, 28.886683, 20.750212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724934, 29.104733, 20.827946>,  <38.920658, 29.235563, 20.874586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724934, 29.104733, 20.827946>,  <38.398727, 28.886683, 20.750212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724934, 29.104733, 20.827946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026429, 0.300366, -0.953458,
		-0.578126, 0.782699, 0.230548,
		0.815519, 0.545126, 0.194335,
		38.969589, 29.268270, 20.886246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736568, 28.580282, 20.701641>,  <38.398727, 28.886683, 20.750212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736568, 28.580282, 20.701641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.386936, 28.725637, 20.572681>,  <37.177158, 28.812851, 20.495306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.386936, 28.725637, 20.572681>,  <37.736568, 28.580282, 20.701641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386936, 28.725637, 20.572681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240657, 0.252589, 0.937168,
		0.421989, 0.896743, -0.133331,
		-0.874076, 0.363388, -0.322397,
		37.124714, 28.834654, 20.475962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484203, 29.183950, 21.133013>,  <37.736568, 28.580282, 20.701641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484203, 29.183950, 21.133013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.160702, 29.037546, 20.948862>,  <36.966599, 28.949703, 20.838371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.160702, 29.037546, 20.948862>,  <37.484203, 29.183950, 21.133013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160702, 29.037546, 20.948862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539554, 0.150186, 0.828448,
		-0.234076, 0.918413, -0.318945,
		-0.808758, -0.366008, -0.460378,
		36.918076, 28.927744, 20.810749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839111, 29.682468, 21.295446>,  <37.484203, 29.183950, 21.133013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839111, 29.682468, 21.295446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.659622, 29.351662, 21.159981>,  <36.551929, 29.153177, 21.078701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.659622, 29.351662, 21.159981>,  <36.839111, 29.682468, 21.295446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659622, 29.351662, 21.159981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707462, 0.097186, 0.700037,
		-0.546029, 0.553712, -0.628693,
		-0.448719, -0.827017, -0.338664,
		36.525005, 29.103556, 21.058382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237263, 29.895304, 21.161839>,  <36.839111, 29.682468, 21.295446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237263, 29.895304, 21.161839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.218582, 29.499605, 21.217283>,  <36.207375, 29.262186, 21.250549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.218582, 29.499605, 21.217283>,  <36.237263, 29.895304, 21.161839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218582, 29.499605, 21.217283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783701, 0.122323, 0.608974,
		-0.619380, -0.080192, -0.780985,
		-0.046698, -0.989245, 0.138611,
		36.204575, 29.202831, 21.258867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516903, 29.873075, 21.280210>,  <36.237263, 29.895304, 21.161839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516903, 29.873075, 21.280210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.679466, 29.524044, 21.388607>,  <35.777004, 29.314625, 21.453646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.679466, 29.524044, 21.388607>,  <35.516903, 29.873075, 21.280210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679466, 29.524044, 21.388607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538789, 0.010666, 0.842373,
		-0.737929, -0.488355, -0.465802,
		0.406408, -0.872580, 0.270991,
		35.801388, 29.262270, 21.469904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042233, 29.605314, 21.763622>,  <35.516903, 29.873075, 21.280210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042233, 29.605314, 21.763622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375553, 29.397329, 21.838728>,  <35.575546, 29.272539, 21.883791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375553, 29.397329, 21.838728>,  <35.042233, 29.605314, 21.763622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375553, 29.397329, 21.838728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262219, -0.072749, 0.962262,
		-0.486680, -0.851086, -0.196965,
		0.833297, -0.519962, 0.187765,
		35.625542, 29.241341, 21.895058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847672, 29.037350, 22.107170>,  <35.042233, 29.605314, 21.763622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847672, 29.037350, 22.107170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.233967, 29.063437, 22.207644>,  <35.465744, 29.079088, 22.267927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.233967, 29.063437, 22.207644>,  <34.847672, 29.037350, 22.107170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233967, 29.063437, 22.207644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252730, 0.016530, 0.967396,
		0.058944, -0.997734, 0.032447,
		0.965740, 0.065222, 0.251183,
		35.523689, 29.083000, 22.282999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910927, 28.476278, 22.617031>,  <34.847672, 29.037350, 22.107170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910927, 28.476278, 22.617031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.219532, 28.725342, 22.669281>,  <35.404694, 28.874781, 22.700630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.219532, 28.725342, 22.669281>,  <34.910927, 28.476278, 22.617031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219532, 28.725342, 22.669281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128292, -0.048834, 0.990533,
		0.623144, -0.780967, 0.042206,
		0.771513, 0.622660, 0.130623,
		35.450985, 28.912140, 22.708467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108536, 28.198395, 23.214415>,  <34.910927, 28.476278, 22.617031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108536, 28.198395, 23.214415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.283562, 28.556620, 23.182163>,  <35.388577, 28.771555, 23.162813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.283562, 28.556620, 23.182163>,  <35.108536, 28.198395, 23.214415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283562, 28.556620, 23.182163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060225, 0.118654, 0.991107,
		0.897167, -0.428819, 0.105854,
		0.437566, 0.895564, -0.080627,
		35.414833, 28.825289, 23.157976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542316, 28.201775, 23.775461>,  <35.108536, 28.198395, 23.214415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542316, 28.201775, 23.775461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.498795, 28.585161, 23.670010>,  <35.472679, 28.815193, 23.606739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.498795, 28.585161, 23.670010>,  <35.542316, 28.201775, 23.775461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498795, 28.585161, 23.670010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056373, 0.270726, 0.961004,
		0.992463, 0.089705, -0.083489,
		-0.108810, 0.958468, -0.263629,
		35.466152, 28.872702, 23.590921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014511, 28.464573, 24.223988>,  <35.542316, 28.201775, 23.775461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014511, 28.464573, 24.223988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.823936, 28.796146, 24.106773>,  <35.709591, 28.995090, 24.036444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.823936, 28.796146, 24.106773>,  <36.014511, 28.464573, 24.223988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823936, 28.796146, 24.106773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105841, 0.384950, 0.916849,
		0.872812, 0.405809, -0.271141,
		-0.476441, 0.828935, -0.293038,
		35.681004, 29.044827, 24.018862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398384, 29.024925, 24.598101>,  <36.014511, 28.464573, 24.223988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398384, 29.024925, 24.598101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.021488, 29.121778, 24.505533>,  <35.795349, 29.179890, 24.449993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.021488, 29.121778, 24.505533>,  <36.398384, 29.024925, 24.598101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021488, 29.121778, 24.505533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120186, 0.400490, 0.908385,
		0.312629, 0.883730, -0.348258,
		-0.942241, 0.242132, -0.231417,
		35.738815, 29.194418, 24.436108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385502, 29.684843, 24.838276>,  <36.398384, 29.024925, 24.598101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385502, 29.684843, 24.838276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.005829, 29.559225, 24.830000>,  <35.778027, 29.483854, 24.825035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.005829, 29.559225, 24.830000>,  <36.385502, 29.684843, 24.838276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005829, 29.559225, 24.830000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140760, 0.364806, 0.920382,
		-0.281496, 0.876522, -0.390472,
		-0.949182, -0.314046, -0.020688,
		35.721073, 29.465012, 24.823793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976444, 30.262547, 25.163420>,  <36.385502, 29.684843, 24.838276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976444, 30.262547, 25.163420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.742432, 29.939751, 25.195667>,  <35.602024, 29.746073, 25.215015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.742432, 29.939751, 25.195667>,  <35.976444, 30.262547, 25.163420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742432, 29.939751, 25.195667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194028, 0.235792, 0.952237,
		-0.787457, 0.541449, -0.294525,
		-0.585034, -0.806991, 0.080620,
		35.566921, 29.697653, 25.219852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295460, 30.451927, 25.581974>,  <35.976444, 30.262547, 25.163420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295460, 30.451927, 25.581974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.337128, 30.054705, 25.603830>,  <35.362129, 29.816370, 25.616943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.337128, 30.054705, 25.603830>,  <35.295460, 30.451927, 25.581974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337128, 30.054705, 25.603830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194132, 0.033578, 0.980401,
		-0.975429, -0.112735, -0.189286,
		0.104170, -0.993058, 0.054639,
		35.368378, 29.756788, 25.620222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800640, 30.291525, 26.078426>,  <35.295460, 30.451927, 25.581974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800640, 30.291525, 26.078426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.032913, 29.965961, 26.086020>,  <35.172276, 29.770622, 26.090576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.032913, 29.965961, 26.086020>,  <34.800640, 30.291525, 26.078426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032913, 29.965961, 26.086020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131818, -0.070986, 0.988729,
		-0.803389, -0.576638, -0.148508,
		0.580680, -0.813910, 0.018982,
		35.207119, 29.721788, 26.091715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409184, 29.796103, 26.498810>,  <34.800640, 30.291525, 26.078426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409184, 29.796103, 26.498810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.779560, 29.645250, 26.490770>,  <35.001785, 29.554739, 26.485947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.779560, 29.645250, 26.490770>,  <34.409184, 29.796103, 26.498810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779560, 29.645250, 26.490770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055753, -0.189138, 0.980366,
		-0.373529, -0.906641, -0.196157,
		0.925942, -0.377132, -0.020101,
		35.057343, 29.532110, 26.484739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429859, 29.034214, 26.716839>,  <34.409184, 29.796103, 26.498810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429859, 29.034214, 26.716839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.783585, 29.200342, 26.802162>,  <34.995819, 29.300018, 26.853355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.783585, 29.200342, 26.802162>,  <34.429859, 29.034214, 26.716839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783585, 29.200342, 26.802162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097100, -0.283284, 0.954108,
		0.456686, -0.864442, -0.210184,
		0.884313, 0.415319, 0.213309,
		35.048878, 29.324938, 26.866156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507236, 28.759975, 27.265419>,  <34.429859, 29.034214, 26.716839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507236, 28.759975, 27.265419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.827721, 28.999327, 27.265209>,  <35.020012, 29.142937, 27.265083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.827721, 28.999327, 27.265209>,  <34.507236, 28.759975, 27.265419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827721, 28.999327, 27.265209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056041, -0.074165, 0.995670,
		0.595749, -0.797774, -0.092956,
		0.801214, 0.598379, -0.000525,
		35.068085, 29.178841, 27.265051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166214, 28.418270, 27.587927>,  <34.507236, 28.759975, 27.265419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166214, 28.418270, 27.587927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.130451, 28.814913, 27.625282>,  <35.108994, 29.052898, 27.647696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.130451, 28.814913, 27.625282>,  <35.166214, 28.418270, 27.587927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130451, 28.814913, 27.625282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097094, -0.101997, 0.990035,
		0.991251, 0.079449, 0.105398,
		-0.089407, 0.991607, 0.093390,
		35.103630, 29.112394, 27.653299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422935, 28.537788, 28.195387>,  <35.166214, 28.418270, 27.587927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422935, 28.537788, 28.195387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.259769, 28.894629, 28.117659>,  <35.161869, 29.108732, 28.071022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.259769, 28.894629, 28.117659>,  <35.422935, 28.537788, 28.195387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259769, 28.894629, 28.117659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277161, 0.081800, 0.957335,
		0.869936, 0.444369, 0.213888,
		-0.407914, 0.892101, -0.194323,
		35.137394, 29.162258, 28.059362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.552380, 29.514313, 32.406288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.154724, 29.556982, 32.399231>,  <37.916130, 29.582582, 32.394997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.154724, 29.556982, 32.399231>,  <38.552380, 29.514313, 32.406288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154724, 29.556982, 32.399231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009045, 0.244631, 0.969574,
		0.107742, 0.963731, -0.244162,
		-0.994138, 0.106672, -0.017640,
		37.856483, 29.588984, 32.393940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354309, 30.129940, 32.814884>,  <38.552380, 29.514313, 32.406288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354309, 30.129940, 32.814884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.019886, 29.910542, 32.809914>,  <37.819233, 29.778902, 32.806931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.019886, 29.910542, 32.809914>,  <38.354309, 30.129940, 32.814884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019886, 29.910542, 32.809914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066348, 0.078602, 0.994696,
		-0.544609, 0.832451, -0.102108,
		-0.836061, -0.548495, -0.012424,
		37.769066, 29.745993, 32.806187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968388, 30.453606, 33.377678>,  <38.354309, 30.129940, 32.814884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968388, 30.453606, 33.377678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.735725, 30.133121, 33.321480>,  <37.596130, 29.940830, 33.287762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.735725, 30.133121, 33.321480>,  <37.968388, 30.453606, 33.377678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735725, 30.133121, 33.321480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281177, 0.035963, 0.958982,
		-0.763294, 0.597300, -0.246200,
		-0.581654, -0.801211, -0.140497,
		37.561230, 29.892757, 33.279331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341877, 30.764872, 33.543495>,  <37.968388, 30.453606, 33.377678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341877, 30.764872, 33.543495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.333057, 30.365459, 33.563309>,  <37.327766, 30.125813, 33.575195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.333057, 30.365459, 33.563309>,  <37.341877, 30.764872, 33.543495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333057, 30.365459, 33.563309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435166, 0.054191, 0.898718,
		-0.900080, -0.001737, -0.435721,
		-0.022051, -0.998529, 0.049533,
		37.326443, 30.065901, 33.578167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748600, 30.569441, 33.651543>,  <37.341877, 30.764872, 33.543495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748600, 30.569441, 33.651543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.929466, 30.232637, 33.769234>,  <37.037987, 30.030556, 33.839848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.929466, 30.232637, 33.769234>,  <36.748600, 30.569441, 33.651543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929466, 30.232637, 33.769234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443730, 0.073794, 0.893117,
		-0.773723, -0.534395, -0.340257,
		0.452169, -0.842007, 0.294223,
		37.065117, 29.980036, 33.857502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277641, 29.978733, 33.890285>,  <36.748600, 30.569441, 33.651543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277641, 29.978733, 33.890285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.621609, 29.899221, 34.078342>,  <36.827988, 29.851515, 34.191177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.621609, 29.899221, 34.078342>,  <36.277641, 29.978733, 33.890285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621609, 29.899221, 34.078342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485741, -0.035665, 0.873375,
		-0.156840, -0.979395, -0.127224,
		0.859917, -0.198778, 0.470139,
		36.879585, 29.839588, 34.219383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030663, 29.540272, 34.476494>,  <36.277641, 29.978733, 33.890285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030663, 29.540272, 34.476494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.398205, 29.654335, 34.585587>,  <36.618732, 29.722773, 34.651043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.398205, 29.654335, 34.585587>,  <36.030663, 29.540272, 34.476494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398205, 29.654335, 34.585587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360693, 0.326739, 0.873580,
		0.159993, -0.901071, 0.403080,
		0.918859, 0.285155, 0.272733,
		36.673862, 29.739882, 34.667408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184715, 29.223616, 35.200661>,  <36.030663, 29.540272, 34.476494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184715, 29.223616, 35.200661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.423107, 29.537867, 35.134212>,  <36.566143, 29.726418, 35.094345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.423107, 29.537867, 35.134212>,  <36.184715, 29.223616, 35.200661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423107, 29.537867, 35.134212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234641, 0.368224, 0.899642,
		0.767953, -0.497190, 0.403795,
		0.595980, 0.785629, -0.166117,
		36.601902, 29.773556, 35.084377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618382, 29.335842, 35.875069>,  <36.184715, 29.223616, 35.200661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618382, 29.335842, 35.875069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.617764, 29.678181, 35.668179>,  <36.617393, 29.883583, 35.544044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.617764, 29.678181, 35.668179>,  <36.618382, 29.335842, 35.875069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617764, 29.678181, 35.668179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360453, 0.481984, 0.798602,
		0.932776, 0.187671, 0.307747,
		-0.001545, 0.855845, -0.517230,
		36.617298, 29.934935, 35.513008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816334, 29.874760, 36.381821>,  <36.618382, 29.335842, 35.875069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816334, 29.874760, 36.381821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.682766, 30.092251, 36.073833>,  <36.602623, 30.222746, 35.889038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.682766, 30.092251, 36.073833>,  <36.816334, 29.874760, 36.381821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682766, 30.092251, 36.073833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545705, 0.554532, 0.628251,
		0.768571, 0.629965, 0.111543,
		-0.333922, 0.543726, -0.769973,
		36.582588, 30.255369, 35.842842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027679, 30.638033, 36.443176>,  <36.816334, 29.874760, 36.381821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027679, 30.638033, 36.443176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.709000, 30.655416, 36.202053>,  <36.517792, 30.665846, 36.057381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.709000, 30.655416, 36.202053>,  <37.027679, 30.638033, 36.443176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709000, 30.655416, 36.202053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369615, 0.754106, 0.542871,
		0.478171, 0.655313, -0.584737,
		-0.796704, 0.043458, -0.602805,
		36.469990, 30.668453, 36.021210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928520, 31.329786, 36.374355>,  <37.027679, 30.638033, 36.443176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928520, 31.329786, 36.374355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.574509, 31.174850, 36.271049>,  <36.362103, 31.081890, 36.209064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.574509, 31.174850, 36.271049>,  <36.928520, 31.329786, 36.374355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574509, 31.174850, 36.271049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465012, 0.762051, 0.450602,
		0.022276, 0.518890, -0.854551,
		-0.885024, -0.387338, -0.258266,
		36.309002, 31.058649, 36.193569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525906, 31.873568, 36.186874>,  <36.928520, 31.329786, 36.374355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525906, 31.873568, 36.186874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.246319, 31.603092, 36.280010>,  <36.078568, 31.440807, 36.335892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.246319, 31.603092, 36.280010>,  <36.525906, 31.873568, 36.186874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246319, 31.603092, 36.280010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509580, 0.699343, 0.501246,
		-0.501772, 0.231703, -0.833390,
		-0.698966, -0.676190, 0.232839,
		36.036629, 31.400236, 36.349861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727962, 32.318035, 35.723244>,  <36.525906, 31.873568, 36.186874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727962, 32.318035, 35.723244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.628960, 32.705364, 35.736420>,  <36.569557, 32.937763, 35.744324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.628960, 32.705364, 35.736420>,  <36.727962, 32.318035, 35.723244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628960, 32.705364, 35.736420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609218, -0.129107, -0.782422,
		-0.753387, -0.213725, 0.621877,
		-0.247512, 0.968325, 0.032938,
		36.554707, 32.995861, 35.746300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940041, 32.453503, 35.687016>,  <36.727962, 32.318035, 35.723244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940041, 32.453503, 35.687016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.133163, 32.766693, 35.530128>,  <36.249039, 32.954609, 35.435997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.133163, 32.766693, 35.530128>,  <35.940041, 32.453503, 35.687016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133163, 32.766693, 35.530128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699756, 0.075650, -0.710365,
		-0.526531, 0.617429, 0.584420,
		0.482811, 0.782981, -0.392218,
		36.278008, 33.001587, 35.412464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406429, 32.971512, 35.741631>,  <35.940041, 32.453503, 35.687016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406429, 32.971512, 35.741631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.671265, 33.041862, 35.450233>,  <35.830166, 33.084072, 35.275394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.671265, 33.041862, 35.450233>,  <35.406429, 32.971512, 35.741631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671265, 33.041862, 35.450233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746941, 0.075797, -0.660556,
		-0.060956, 0.981490, 0.181550,
		0.662090, 0.175872, -0.728495,
		35.869892, 33.094624, 35.231686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140373, 33.533623, 35.376083>,  <35.406429, 32.971512, 35.741631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140373, 33.533623, 35.376083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.409595, 33.378357, 35.124264>,  <35.571129, 33.285198, 34.973171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.409595, 33.378357, 35.124264>,  <35.140373, 33.533623, 35.376083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409595, 33.378357, 35.124264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680697, 0.007753, -0.732524,
		0.289218, 0.921559, -0.259001,
		0.673056, -0.388161, -0.629545,
		35.611511, 33.261909, 34.935402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954449, 33.830540, 34.746658>,  <35.140373, 33.533623, 35.376083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954449, 33.830540, 34.746658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.190598, 33.523006, 34.648392>,  <35.332287, 33.338486, 34.589432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.190598, 33.523006, 34.648392>,  <34.954449, 33.830540, 34.746658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190598, 33.523006, 34.648392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478805, -0.088575, -0.873441,
		0.649774, 0.633281, -0.420415,
		0.590373, -0.768836, -0.245665,
		35.367710, 33.292355, 34.574692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077236, 34.000576, 34.061214>,  <34.954449, 33.830540, 34.746658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077236, 34.000576, 34.061214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.169472, 33.611935, 34.082443>,  <35.224815, 33.378750, 34.095181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.169472, 33.611935, 34.082443>,  <35.077236, 34.000576, 34.061214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169472, 33.611935, 34.082443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326168, -0.128568, -0.936528,
		0.916756, 0.198646, -0.346553,
		0.230594, -0.971602, 0.053073,
		35.238651, 33.320454, 34.098366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321426, 33.875217, 33.342739>,  <35.077236, 34.000576, 34.061214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321426, 33.875217, 33.342739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.216873, 33.534924, 33.525135>,  <35.154140, 33.330746, 33.634571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.216873, 33.534924, 33.525135>,  <35.321426, 33.875217, 33.342739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216873, 33.534924, 33.525135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402837, -0.333154, -0.852485,
		0.877156, -0.406511, -0.255629,
		-0.261380, -0.850739, 0.455986,
		35.138458, 33.279701, 33.661930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609104, 33.373028, 32.896076>,  <35.321426, 33.875217, 33.342739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609104, 33.373028, 32.896076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.334888, 33.184299, 33.117855>,  <35.170357, 33.071064, 33.250923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.334888, 33.184299, 33.117855>,  <35.609104, 33.373028, 32.896076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334888, 33.184299, 33.117855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367828, -0.432758, -0.823057,
		0.628278, -0.768184, 0.123126,
		-0.685543, -0.471820, 0.554452,
		35.129227, 33.042755, 33.284191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644642, 32.600075, 32.685638>,  <35.609104, 33.373028, 32.896076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644642, 32.600075, 32.685638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.293659, 32.730915, 32.825966>,  <35.083069, 32.809418, 32.910160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.293659, 32.730915, 32.825966>,  <35.644642, 32.600075, 32.685638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293659, 32.730915, 32.825966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451583, -0.316843, -0.834076,
		-0.161673, -0.890290, 0.425730,
		-0.877459, 0.327100, 0.350815,
		35.030422, 32.829044, 32.931210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167294, 32.064930, 32.547947>,  <35.644642, 32.600075, 32.685638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167294, 32.064930, 32.547947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.953510, 32.399620, 32.595676>,  <34.825241, 32.600433, 32.624313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.953510, 32.399620, 32.595676>,  <35.167294, 32.064930, 32.547947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953510, 32.399620, 32.595676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422828, -0.142462, -0.894942,
		-0.731824, -0.528764, 0.429932,
		-0.534462, 0.836728, 0.119320,
		34.793171, 32.650639, 32.631474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576458, 31.851679, 32.132236>,  <35.167294, 32.064930, 32.547947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576458, 31.851679, 32.132236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.554535, 32.247417, 32.186188>,  <34.541382, 32.484859, 32.218559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.554535, 32.247417, 32.186188>,  <34.576458, 31.851679, 32.132236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554535, 32.247417, 32.186188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484623, 0.091744, -0.869899,
		-0.873004, -0.113043, 0.474431,
		-0.054810, 0.989346, 0.134877,
		34.538094, 32.544220, 32.226650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942280, 32.106979, 31.737494>,  <34.576458, 31.851679, 32.132236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942280, 32.106979, 31.737494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.152382, 32.442734, 31.793402>,  <34.278442, 32.644188, 31.826946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.152382, 32.442734, 31.793402>,  <33.942280, 32.106979, 31.737494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152382, 32.442734, 31.793402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233843, 0.300310, -0.924733,
		-0.818182, 0.453039, 0.354025,
		0.525258, 0.839386, 0.139769,
		34.309959, 32.694550, 31.835333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600010, 32.670082, 31.520151>,  <33.942280, 32.106979, 31.737494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600010, 32.670082, 31.520151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.984753, 32.774822, 31.488480>,  <34.215599, 32.837666, 31.469477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.984753, 32.774822, 31.488480>,  <33.600010, 32.670082, 31.520151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984753, 32.774822, 31.488480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164484, 0.322308, -0.932235,
		-0.218585, 0.909699, 0.353084,
		0.961855, 0.261850, -0.079179,
		34.273308, 32.853378, 31.464725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597084, 33.204494, 31.032972>,  <33.600010, 32.670082, 31.520151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597084, 33.204494, 31.032972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.983696, 33.102127, 31.040178>,  <34.215664, 33.040707, 31.044502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.983696, 33.102127, 31.040178>,  <33.597084, 33.204494, 31.032972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983696, 33.102127, 31.040178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081133, 0.238290, -0.967799,
		0.243384, 0.936869, 0.251078,
		0.966531, -0.255917, 0.018015,
		34.273655, 33.025352, 31.045582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885841, 33.724346, 30.653301>,  <33.597084, 33.204494, 31.032972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885841, 33.724346, 30.653301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.152588, 33.426373, 30.660955>,  <34.312634, 33.247589, 30.665548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.152588, 33.426373, 30.660955>,  <33.885841, 33.724346, 30.653301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152588, 33.426373, 30.660955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301070, 0.245848, -0.921366,
		0.681652, 0.620187, 0.388224,
		0.666864, -0.744934, 0.019137,
		34.352646, 33.202892, 30.666697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167507, 34.504627, 30.690409>,  <33.885841, 33.724346, 30.653301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167507, 34.504627, 30.690409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.853268, 34.737541, 30.606712>,  <33.664726, 34.877289, 30.556496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.853268, 34.737541, 30.606712>,  <34.167507, 34.504627, 30.690409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853268, 34.737541, 30.606712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024947, 0.367703, 0.929609,
		0.618235, 0.725078, -0.303393,
		-0.785597, 0.582285, -0.209239,
		33.617588, 34.912228, 30.543941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328049, 35.127079, 31.016747>,  <34.167507, 34.504627, 30.690409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328049, 35.127079, 31.016747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.933537, 35.064194, 30.996586>,  <33.696831, 35.026463, 30.984489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.933537, 35.064194, 30.996586>,  <34.328049, 35.127079, 31.016747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933537, 35.064194, 30.996586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083104, 0.208981, 0.974382,
		-0.142657, 0.965199, -0.219179,
		-0.986277, -0.157217, -0.050400,
		33.637653, 35.017029, 30.981466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067455, 35.640049, 31.514767>,  <34.328049, 35.127079, 31.016747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067455, 35.640049, 31.514767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.747501, 35.408489, 31.451431>,  <33.555531, 35.269554, 31.413431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.747501, 35.408489, 31.451431>,  <34.067455, 35.640049, 31.514767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747501, 35.408489, 31.451431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357492, 0.247664, 0.900479,
		-0.482069, 0.776879, -0.405052,
		-0.799880, -0.578896, -0.158337,
		33.507538, 35.234821, 31.403931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504128, 36.079113, 31.727066>,  <34.067455, 35.640049, 31.514767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504128, 36.079113, 31.727066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.375771, 35.700977, 31.750271>,  <33.298756, 35.474098, 31.764194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.375771, 35.700977, 31.750271>,  <33.504128, 36.079113, 31.727066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375771, 35.700977, 31.750271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267757, 0.149304, 0.951848,
		-0.908478, 0.289910, -0.301032,
		-0.320896, -0.945336, 0.058014,
		33.279503, 35.417377, 31.767675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941578, 36.129242, 32.109604>,  <33.504128, 36.079113, 31.727066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941578, 36.129242, 32.109604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.056805, 35.747208, 32.137383>,  <33.125942, 35.517986, 32.154049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.056805, 35.747208, 32.137383>,  <32.941578, 36.129242, 32.109604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056805, 35.747208, 32.137383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249242, -0.004759, 0.968429,
		-0.924605, -0.296284, -0.239419,
		0.288070, -0.955088, 0.069446,
		33.143227, 35.460682, 32.158215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445129, 35.850021, 32.402027>,  <32.941578, 36.129242, 32.109604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445129, 35.850021, 32.402027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.755737, 35.610710, 32.481102>,  <32.942101, 35.467125, 32.528545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.755737, 35.610710, 32.481102>,  <32.445129, 35.850021, 32.402027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755737, 35.610710, 32.481102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294026, -0.066571, 0.953476,
		-0.557284, -0.798518, -0.227603,
		0.776520, -0.598278, 0.197686,
		32.988693, 35.431225, 32.540409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252228, 35.271725, 32.902424>,  <32.445129, 35.850021, 32.402027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252228, 35.271725, 32.902424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.644440, 35.299503, 32.975891>,  <32.879768, 35.316170, 33.019970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.644440, 35.299503, 32.975891>,  <32.252228, 35.271725, 32.902424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644440, 35.299503, 32.975891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183710, -0.005858, 0.982963,
		0.069344, -0.997568, 0.007015,
		0.980532, 0.069451, 0.183669,
		32.938599, 35.320335, 33.030991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342052, 34.862160, 33.498631>,  <32.252228, 35.271725, 32.902424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342052, 34.862160, 33.498631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.673328, 35.084438, 33.469505>,  <32.872093, 35.217804, 33.452030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.673328, 35.084438, 33.469505>,  <32.342052, 34.862160, 33.498631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673328, 35.084438, 33.469505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001560, 0.132205, 0.991221,
		0.560443, -0.820807, 0.110358,
		0.828191, 0.555695, -0.072813,
		32.921787, 35.251148, 33.447662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759518, 34.704258, 34.117641>,  <32.342052, 34.862160, 33.498631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759518, 34.704258, 34.117641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.914280, 35.040592, 33.966221>,  <33.007137, 35.242393, 33.875366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.914280, 35.040592, 33.966221>,  <32.759518, 34.704258, 34.117641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914280, 35.040592, 33.966221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080598, 0.439793, 0.894475,
		0.918590, -0.315568, 0.237928,
		0.386906, 0.840832, -0.378555,
		33.030354, 35.292843, 33.852654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195759, 34.940945, 34.618473>,  <32.759518, 34.704258, 34.117641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195759, 34.940945, 34.618473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.130352, 35.273209, 34.405586>,  <33.091106, 35.472569, 34.277855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.130352, 35.273209, 34.405586>,  <33.195759, 34.940945, 34.618473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130352, 35.273209, 34.405586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026441, 0.542978, 0.839331,
		0.986186, 0.123173, -0.110751,
		-0.163518, 0.830664, -0.532220,
		33.081295, 35.522408, 34.245918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558170, 35.485188, 34.985081>,  <33.195759, 34.940945, 34.618473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558170, 35.485188, 34.985081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.283665, 35.669884, 34.760284>,  <33.118961, 35.780701, 34.625408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.283665, 35.669884, 34.760284>,  <33.558170, 35.485188, 34.985081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283665, 35.669884, 34.760284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141494, 0.673142, 0.725851,
		0.713455, 0.577646, -0.396620,
		-0.686266, 0.461743, -0.561990,
		33.077785, 35.808407, 34.591686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739372, 36.145298, 35.091911>,  <33.558170, 35.485188, 34.985081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739372, 36.145298, 35.091911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.353497, 36.112000, 34.991951>,  <33.121971, 36.092022, 34.931976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.353497, 36.112000, 34.991951>,  <33.739372, 36.145298, 35.091911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353497, 36.112000, 34.991951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243426, 0.644174, 0.725109,
		0.100618, 0.760335, -0.641690,
		-0.964687, -0.083245, -0.249901,
		33.064091, 36.087025, 34.916981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.865505, 35.342197, 27.401951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486069, 35.387459, 27.283720>,  <34.258408, 35.414616, 27.212782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486069, 35.387459, 27.283720>,  <34.865505, 35.342197, 27.401951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486069, 35.387459, 27.283720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254172, 0.284129, 0.924482,
		0.188591, 0.952086, -0.240762,
		-0.948594, 0.113154, -0.295578,
		34.201492, 35.421406, 27.195047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649063, 36.034954, 27.644911>,  <34.865505, 35.342197, 27.401951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649063, 36.034954, 27.644911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317833, 35.824638, 27.567104>,  <34.119095, 35.698448, 27.520420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317833, 35.824638, 27.567104>,  <34.649063, 36.034954, 27.644911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317833, 35.824638, 27.567104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317723, 0.154286, 0.935547,
		-0.461890, 0.836505, -0.294816,
		-0.828076, -0.525790, -0.194514,
		34.069408, 35.666901, 27.508751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155758, 36.340015, 28.124916>,  <34.649063, 36.034954, 27.644911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155758, 36.340015, 28.124916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003567, 35.987198, 28.013758>,  <33.912251, 35.775505, 27.947063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003567, 35.987198, 28.013758>,  <34.155758, 36.340015, 28.124916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003567, 35.987198, 28.013758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357165, -0.137025, 0.923936,
		-0.853034, 0.450795, -0.262901,
		-0.380481, -0.882048, -0.277895,
		33.889423, 35.722584, 27.930389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397442, 36.358070, 28.265326>,  <34.155758, 36.340015, 28.124916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397442, 36.358070, 28.265326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487309, 35.968464, 28.253862>,  <33.541229, 35.734699, 28.246984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487309, 35.968464, 28.253862>,  <33.397442, 36.358070, 28.265326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487309, 35.968464, 28.253862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325684, -0.102777, 0.939876,
		-0.918398, -0.201823, -0.340311,
		0.224665, -0.974014, -0.028660,
		33.554707, 35.676258, 28.245264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867699, 35.997036, 28.641666>,  <33.397442, 36.358070, 28.265326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867699, 35.997036, 28.641666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172230, 35.737782, 28.634750>,  <33.354946, 35.582230, 28.630600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172230, 35.737782, 28.634750>,  <32.867699, 35.997036, 28.641666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172230, 35.737782, 28.634750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205963, -0.267045, 0.941417,
		-0.614788, -0.713162, -0.336801,
		0.761324, -0.648140, -0.017291,
		33.400627, 35.543339, 28.629562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641151, 35.296066, 28.733290>,  <32.867699, 35.997036, 28.641666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641151, 35.296066, 28.733290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027130, 35.304722, 28.837915>,  <33.258717, 35.309914, 28.900690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027130, 35.304722, 28.837915>,  <32.641151, 35.296066, 28.733290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027130, 35.304722, 28.837915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226607, -0.434107, 0.871895,
		0.132413, -0.900602, -0.413985,
		0.964944, 0.021638, 0.261564,
		33.316612, 35.311214, 28.916384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713509, 34.782578, 29.156391>,  <32.641151, 35.296066, 28.733290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713509, 34.782578, 29.156391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047928, 34.983139, 29.245493>,  <33.248581, 35.103474, 29.298954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047928, 34.983139, 29.245493>,  <32.713509, 34.782578, 29.156391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047928, 34.983139, 29.245493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084777, -0.283062, 0.955347,
		0.542066, -0.817601, -0.194146,
		0.836048, 0.501402, 0.222753,
		33.298744, 35.133560, 29.312319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125629, 34.217014, 29.476440>,  <32.713509, 34.782578, 29.156391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125629, 34.217014, 29.476440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250668, 34.582485, 29.580345>,  <33.325691, 34.801769, 29.642689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250668, 34.582485, 29.580345>,  <33.125629, 34.217014, 29.476440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250668, 34.582485, 29.580345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010853, -0.270014, 0.962795,
		0.949824, -0.303785, -0.074489,
		0.312595, 0.913678, 0.259763,
		33.344448, 34.856590, 29.658274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632759, 34.096012, 29.966082>,  <33.125629, 34.217014, 29.476440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632759, 34.096012, 29.966082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530170, 34.476215, 30.036222>,  <33.468616, 34.704338, 30.078308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530170, 34.476215, 30.036222>,  <33.632759, 34.096012, 29.966082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530170, 34.476215, 30.036222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116719, -0.149638, 0.981827,
		0.959478, 0.272281, -0.072564,
		-0.256475, 0.950511, 0.175354,
		33.453228, 34.761368, 30.088829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286781, 33.932915, 30.065212>,  <33.632759, 34.096012, 29.966082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286781, 33.932915, 30.065212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396969, 33.552837, 30.123512>,  <34.463081, 33.324791, 30.158493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396969, 33.552837, 30.123512>,  <34.286781, 33.932915, 30.065212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396969, 33.552837, 30.123512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659773, 0.076608, -0.747550,
		0.699153, 0.302091, 0.648017,
		0.275471, -0.950196, 0.145751,
		34.479610, 33.267780, 30.167238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972488, 33.884369, 29.802580>,  <34.286781, 33.932915, 30.065212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972488, 33.884369, 29.802580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875027, 33.497322, 29.828959>,  <34.816551, 33.265095, 29.844786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875027, 33.497322, 29.828959>,  <34.972488, 33.884369, 29.802580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875027, 33.497322, 29.828959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531710, -0.190136, -0.825307,
		0.811122, -0.166022, 0.560819,
		-0.243651, -0.967618, 0.065948,
		34.801929, 33.207035, 29.848743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552452, 33.548279, 29.711681>,  <34.972488, 33.884369, 29.802580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552452, 33.548279, 29.711681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281879, 33.266102, 29.627026>,  <35.119534, 33.096798, 29.576233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281879, 33.266102, 29.627026>,  <35.552452, 33.548279, 29.711681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281879, 33.266102, 29.627026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472857, -0.195665, -0.859140,
		0.564660, -0.681228, 0.465926,
		-0.676436, -0.705438, -0.211639,
		35.078949, 33.054470, 29.563534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965042, 33.010418, 29.596712>,  <35.552452, 33.548279, 29.711681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965042, 33.010418, 29.596712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604336, 32.959732, 29.431417>,  <35.387913, 32.929321, 29.332241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604336, 32.959732, 29.431417>,  <35.965042, 33.010418, 29.596712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604336, 32.959732, 29.431417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428776, -0.141658, -0.892236,
		0.054520, -0.981772, 0.182073,
		-0.901764, -0.126713, -0.413237,
		35.333805, 32.921719, 29.307446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033894, 32.408062, 29.193363>,  <35.965042, 33.010418, 29.596712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033894, 32.408062, 29.193363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722252, 32.603119, 29.035780>,  <35.535267, 32.720154, 28.941231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722252, 32.603119, 29.035780>,  <36.033894, 32.408062, 29.193363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722252, 32.603119, 29.035780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271287, -0.304277, -0.913137,
		-0.565154, -0.818306, 0.104774,
		-0.779105, 0.487639, -0.393959,
		35.488522, 32.749409, 28.917593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833015, 32.015793, 28.659605>,  <36.033894, 32.408062, 29.193363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833015, 32.015793, 28.659605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661015, 32.361668, 28.555750>,  <35.557812, 32.569191, 28.493437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661015, 32.361668, 28.555750>,  <35.833015, 32.015793, 28.659605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661015, 32.361668, 28.555750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299883, -0.134456, -0.944453,
		-0.851566, -0.483981, -0.201488,
		-0.430006, 0.864687, -0.259635,
		35.532013, 32.621075, 28.477859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593010, 31.807484, 28.113354>,  <35.833015, 32.015793, 28.659605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593010, 31.807484, 28.113354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600494, 32.207413, 28.114283>,  <35.604984, 32.447369, 28.114840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600494, 32.207413, 28.114283>,  <35.593010, 31.807484, 28.113354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600494, 32.207413, 28.114283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308870, -0.003571, -0.951098,
		-0.950920, 0.018510, -0.308882,
		0.018708, 0.999822, 0.002321,
		35.606106, 32.507359, 28.114979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247353, 32.021759, 27.511637>,  <35.593010, 31.807484, 28.113354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247353, 32.021759, 27.511637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444950, 32.353065, 27.617428>,  <35.563507, 32.551849, 27.680902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444950, 32.353065, 27.617428>,  <35.247353, 32.021759, 27.511637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444950, 32.353065, 27.617428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157831, 0.213707, -0.964064,
		-0.855020, 0.517984, -0.025156,
		0.493994, 0.828264, 0.264477,
		35.593147, 32.601543, 27.696772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971443, 32.565723, 27.131653>,  <35.247353, 32.021759, 27.511637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971443, 32.565723, 27.131653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333534, 32.699501, 27.236494>,  <35.550789, 32.779770, 27.299400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333534, 32.699501, 27.236494>,  <34.971443, 32.565723, 27.131653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333534, 32.699501, 27.236494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234841, 0.120292, -0.964562,
		-0.354125, 0.934705, 0.030350,
		0.905232, 0.334448, 0.262105,
		35.605103, 32.799835, 27.315126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048332, 33.167103, 26.755869>,  <34.971443, 32.565723, 27.131653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048332, 33.167103, 26.755869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422977, 33.057426, 26.843117>,  <35.647766, 32.991619, 26.895466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422977, 33.057426, 26.843117>,  <35.048332, 33.167103, 26.755869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422977, 33.057426, 26.843117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172619, -0.180619, -0.968287,
		0.304892, 0.944561, -0.121839,
		0.936613, -0.274191, 0.218118,
		35.703960, 32.975170, 26.908552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519444, 33.614304, 26.436045>,  <35.048332, 33.167103, 26.755869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519444, 33.614304, 26.436045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727604, 33.273647, 26.461018>,  <35.852501, 33.069256, 26.476002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727604, 33.273647, 26.461018>,  <35.519444, 33.614304, 26.436045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727604, 33.273647, 26.461018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080508, -0.023857, -0.996468,
		0.850118, 0.523590, 0.056149,
		0.520401, -0.851637, 0.062434,
		35.883724, 33.018158, 26.479748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071747, 33.725925, 25.900215>,  <35.519444, 33.614304, 26.436045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071747, 33.725925, 25.900215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097977, 33.335983, 25.985399>,  <36.113716, 33.102016, 26.036509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097977, 33.335983, 25.985399>,  <36.071747, 33.725925, 25.900215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097977, 33.335983, 25.985399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278041, -0.187115, -0.942168,
		0.958328, 0.120995, 0.258781,
		0.065576, -0.974858, 0.212959,
		36.117649, 33.043526, 26.049288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749943, 33.580933, 25.796408>,  <36.071747, 33.725925, 25.900215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749943, 33.580933, 25.796408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536217, 33.243256, 25.779243>,  <36.407982, 33.040649, 25.768946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536217, 33.243256, 25.779243>,  <36.749943, 33.580933, 25.796408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536217, 33.243256, 25.779243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478724, -0.260378, -0.838467,
		0.696658, -0.468546, 0.543260,
		-0.534313, -0.844197, -0.042910,
		36.375923, 32.989998, 25.766371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218582, 32.932938, 25.691977>,  <36.749943, 33.580933, 25.796408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218582, 32.932938, 25.691977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850178, 32.853477, 25.557947>,  <36.629135, 32.805801, 25.477530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850178, 32.853477, 25.557947>,  <37.218582, 32.932938, 25.691977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850178, 32.853477, 25.557947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381933, -0.291415, -0.877043,
		0.076577, -0.935743, 0.344267,
		-0.921012, -0.198648, -0.335075,
		36.573875, 32.793884, 25.457424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.233364, 28.657774, 25.489899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.417847, 29.003922, 25.568308>,  <32.528538, 29.211611, 25.615353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.417847, 29.003922, 25.568308>,  <32.233364, 28.657774, 25.489899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417847, 29.003922, 25.568308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252130, -0.083997, 0.964041,
		0.850716, -0.494046, 0.179445,
		0.461208, 0.865369, 0.196021,
		32.556210, 29.263533, 25.627113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532890, 28.498810, 26.110779>,  <32.233364, 28.657774, 25.489899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532890, 28.498810, 26.110779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.508442, 28.896729, 26.078180>,  <32.493771, 29.135481, 26.058620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.508442, 28.896729, 26.078180>,  <32.532890, 28.498810, 26.110779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508442, 28.896729, 26.078180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077469, 0.076674, 0.994042,
		0.995119, 0.067072, 0.072380,
		-0.061123, 0.994798, -0.081496,
		32.490105, 29.195168, 26.053732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043938, 28.791502, 26.605309>,  <32.532890, 28.498810, 26.110779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043938, 28.791502, 26.605309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.768127, 29.074385, 26.542814>,  <32.602642, 29.244114, 26.505318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.768127, 29.074385, 26.542814>,  <33.043938, 28.791502, 26.605309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768127, 29.074385, 26.542814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154951, 0.066676, 0.985670,
		0.707489, 0.703856, 0.063607,
		-0.689528, 0.707207, -0.156235,
		32.561268, 29.286547, 26.495943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349949, 29.247526, 27.070143>,  <33.043938, 28.791502, 26.605309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349949, 29.247526, 27.070143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.971970, 29.330946, 26.969278>,  <32.745182, 29.380999, 26.908760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.971970, 29.330946, 26.969278>,  <33.349949, 29.247526, 27.070143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971970, 29.330946, 26.969278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213718, 0.190209, 0.958199,
		0.247797, 0.959337, -0.135166,
		-0.944945, 0.208551, -0.252161,
		32.688484, 29.393511, 26.893631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202579, 29.754910, 27.426199>,  <33.349949, 29.247526, 27.070143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202579, 29.754910, 27.426199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.834293, 29.632353, 27.329525>,  <32.613323, 29.558819, 27.271521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.834293, 29.632353, 27.329525>,  <33.202579, 29.754910, 27.426199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834293, 29.632353, 27.329525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317010, 0.226047, 0.921091,
		-0.227583, 0.924676, -0.305253,
		-0.920712, -0.306393, -0.241687,
		32.558079, 29.540436, 27.257019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756924, 30.362183, 27.480959>,  <33.202579, 29.754910, 27.426199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756924, 30.362183, 27.480959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.495834, 30.059629, 27.498104>,  <32.339180, 29.878098, 27.508390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.495834, 30.059629, 27.498104>,  <32.756924, 30.362183, 27.480959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495834, 30.059629, 27.498104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388789, 0.382991, 0.837951,
		-0.650226, 0.530288, -0.544060,
		-0.652725, -0.756382, 0.042861,
		32.300018, 29.832714, 27.510962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130962, 30.580442, 27.488106>,  <32.756924, 30.362183, 27.480959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130962, 30.580442, 27.488106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.126717, 30.228926, 27.678942>,  <32.124168, 30.018015, 27.793444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.126717, 30.228926, 27.678942>,  <32.130962, 30.580442, 27.488106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126717, 30.228926, 27.678942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136896, 0.473900, 0.869873,
		-0.990529, -0.056076, -0.125334,
		-0.010616, -0.878792, 0.477088,
		32.123531, 29.965288, 27.822067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509380, 30.594044, 27.835951>,  <32.130962, 30.580442, 27.488106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509380, 30.594044, 27.835951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.715981, 30.299751, 28.011190>,  <31.839941, 30.123177, 28.116333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.715981, 30.299751, 28.011190>,  <31.509380, 30.594044, 27.835951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715981, 30.299751, 28.011190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297985, 0.325210, 0.897465,
		-0.802764, -0.594088, -0.051265,
		0.516502, -0.735729, 0.438097,
		31.870932, 30.079033, 28.142620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196596, 30.530998, 28.525333>,  <31.509380, 30.594044, 27.835951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196596, 30.530998, 28.525333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.515472, 30.293194, 28.567373>,  <31.706799, 30.150511, 28.592596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.515472, 30.293194, 28.567373>,  <31.196596, 30.530998, 28.525333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515472, 30.293194, 28.567373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076306, 0.073466, 0.994374,
		-0.598887, -0.800725, 0.013202,
		0.797190, -0.594510, 0.105098,
		31.754629, 30.114841, 28.598904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930727, 29.968283, 28.917336>,  <31.196596, 30.530998, 28.525333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930727, 29.968283, 28.917336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.324139, 30.025667, 28.961311>,  <31.560186, 30.060097, 28.987698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.324139, 30.025667, 28.961311>,  <30.930727, 29.968283, 28.917336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324139, 30.025667, 28.961311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100209, -0.073408, 0.992255,
		0.150420, -0.986930, -0.057823,
		0.983531, 0.143460, 0.109942,
		31.619198, 30.068705, 28.994293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146864, 29.547894, 29.451111>,  <30.930727, 29.968283, 28.917336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146864, 29.547894, 29.451111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.462238, 29.792383, 29.423462>,  <31.651463, 29.939077, 29.406872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.462238, 29.792383, 29.423462>,  <31.146864, 29.547894, 29.451111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462238, 29.792383, 29.423462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004734, 0.106339, 0.994319,
		0.615101, -0.784282, 0.080948,
		0.788434, 0.611223, -0.069122,
		31.698769, 29.975750, 29.402725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487183, 29.221094, 29.871580>,  <31.146864, 29.547894, 29.451111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487183, 29.221094, 29.871580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.603584, 29.602930, 29.846054>,  <31.673426, 29.832031, 29.830738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.603584, 29.602930, 29.846054>,  <31.487183, 29.221094, 29.871580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603584, 29.602930, 29.846054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189292, 0.122833, 0.974208,
		0.937809, -0.271417, 0.216441,
		0.291003, 0.954591, -0.063817,
		31.690886, 29.889307, 29.826908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909000, 29.350319, 30.488234>,  <31.487183, 29.221094, 29.871580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909000, 29.350319, 30.488234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.798531, 29.718424, 30.377350>,  <31.732248, 29.939287, 30.310820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.798531, 29.718424, 30.377350>,  <31.909000, 29.350319, 30.488234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798531, 29.718424, 30.377350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307065, 0.188825, 0.932768,
		0.910735, 0.342727, 0.230432,
		-0.276173, 0.920263, -0.277209,
		31.715679, 29.994503, 30.294188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198994, 29.763275, 30.995604>,  <31.909000, 29.350319, 30.488234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198994, 29.763275, 30.995604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.887697, 29.956261, 30.834818>,  <31.700920, 30.072052, 30.738346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.887697, 29.956261, 30.834818>,  <32.198994, 29.763275, 30.995604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887697, 29.956261, 30.834818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165950, 0.459341, 0.872621,
		0.605645, 0.745813, -0.277412,
		-0.778239, 0.482462, -0.401965,
		31.654226, 30.101000, 30.714228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822037, 30.051735, 31.216442>,  <32.198994, 29.763275, 30.995604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822037, 30.051735, 31.216442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.022572, 29.734846, 31.355610>,  <33.142891, 29.544712, 31.439110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.022572, 29.734846, 31.355610>,  <32.822037, 30.051735, 31.216442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022572, 29.734846, 31.355610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259473, -0.245942, -0.933909,
		0.825430, 0.558478, 0.082260,
		0.501337, -0.792221, 0.347918,
		33.172974, 29.497179, 31.459986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561756, 30.098305, 31.049387>,  <32.822037, 30.051735, 31.216442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561756, 30.098305, 31.049387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.531666, 29.707693, 31.130116>,  <33.513611, 29.473326, 31.178553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.531666, 29.707693, 31.130116>,  <33.561756, 30.098305, 31.049387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531666, 29.707693, 31.130116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610487, -0.205134, -0.765000,
		0.788446, 0.065660, 0.611590,
		-0.075228, -0.976529, 0.201822,
		33.509098, 29.414734, 31.190662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173401, 29.847364, 30.948545>,  <33.561756, 30.098305, 31.049387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173401, 29.847364, 30.948545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.976391, 29.499804, 30.968237>,  <33.858185, 29.291267, 30.980051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.976391, 29.499804, 30.968237>,  <34.173401, 29.847364, 30.948545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976391, 29.499804, 30.968237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351342, -0.250269, -0.902177,
		0.796225, -0.427051, 0.428547,
		-0.492528, -0.868903, 0.049229,
		33.828632, 29.239132, 30.983006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633091, 29.300833, 30.801779>,  <34.173401, 29.847364, 30.948545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633091, 29.300833, 30.801779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.261105, 29.194437, 30.700254>,  <34.037914, 29.130600, 30.639339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.261105, 29.194437, 30.700254>,  <34.633091, 29.300833, 30.801779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261105, 29.194437, 30.700254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321050, -0.251127, -0.913161,
		0.179151, -0.930691, 0.318934,
		-0.929963, -0.265988, -0.253808,
		33.982117, 29.114641, 30.624111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661350, 28.615843, 30.571728>,  <34.633091, 29.300833, 30.801779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661350, 28.615843, 30.571728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.346424, 28.798885, 30.406450>,  <34.157467, 28.908710, 30.307283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.346424, 28.798885, 30.406450>,  <34.661350, 28.615843, 30.571728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346424, 28.798885, 30.406450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352535, -0.215684, -0.910604,
		-0.505817, -0.862599, 0.008489,
		-0.787317, 0.457606, -0.413193,
		34.110229, 28.936167, 30.282492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506023, 28.268370, 29.935608>,  <34.661350, 28.615843, 30.571728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506023, 28.268370, 29.935608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.309441, 28.613073, 29.885262>,  <34.191490, 28.819895, 29.855055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.309441, 28.613073, 29.885262>,  <34.506023, 28.268370, 29.935608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309441, 28.613073, 29.885262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282073, 0.020775, -0.959168,
		-0.823955, -0.506896, -0.253288,
		-0.491460, 0.861757, -0.125864,
		34.162003, 28.871601, 29.847502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104248, 28.154428, 29.269602>,  <34.506023, 28.268370, 29.935608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104248, 28.154428, 29.269602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.157291, 28.544291, 29.341675>,  <34.189117, 28.778208, 29.384918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.157291, 28.544291, 29.341675>,  <34.104248, 28.154428, 29.269602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157291, 28.544291, 29.341675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207631, 0.150437, -0.966570,
		-0.969177, 0.165590, -0.182419,
		0.132612, 0.974653, 0.180182,
		34.197075, 28.836687, 29.395729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807224, 28.492416, 28.676136>,  <34.104248, 28.154428, 29.269602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807224, 28.492416, 28.676136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.044655, 28.768324, 28.841974>,  <34.187111, 28.933868, 28.941477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.044655, 28.768324, 28.841974>,  <33.807224, 28.492416, 28.676136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044655, 28.768324, 28.841974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347492, 0.244996, -0.905111,
		-0.725891, 0.681319, -0.094266,
		0.593574, 0.689769, 0.414594,
		34.222729, 28.975254, 28.966352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788052, 29.127537, 28.184238>,  <33.807224, 28.492416, 28.676136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788052, 29.127537, 28.184238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.107861, 29.157379, 28.422630>,  <34.299747, 29.175285, 28.565666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.107861, 29.157379, 28.422630>,  <33.788052, 29.127537, 28.184238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107861, 29.157379, 28.422630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494901, 0.480422, -0.724063,
		-0.340343, 0.873858, 0.347187,
		0.799525, 0.074607, 0.595981,
		34.347717, 29.179762, 28.601425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995804, 29.738928, 27.931353>,  <33.788052, 29.127537, 28.184238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995804, 29.738928, 27.931353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.327354, 29.623638, 28.123137>,  <34.526287, 29.554464, 28.238207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.327354, 29.623638, 28.123137>,  <33.995804, 29.738928, 27.931353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327354, 29.623638, 28.123137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553424, 0.297265, -0.778046,
		0.081726, 0.910253, 0.405908,
		0.828881, -0.288225, 0.479461,
		34.576019, 29.537170, 28.266975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538212, 30.307146, 27.752169>,  <33.995804, 29.738928, 27.931353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538212, 30.307146, 27.752169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.727036, 29.965643, 27.840038>,  <34.840328, 29.760740, 27.892759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.727036, 29.965643, 27.840038>,  <34.538212, 30.307146, 27.752169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727036, 29.965643, 27.840038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505190, 0.057773, -0.861072,
		0.722457, 0.517452, 0.458583,
		0.472057, -0.853760, 0.219673,
		34.868652, 29.709515, 27.905941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305492, 30.389450, 27.669458>,  <34.538212, 30.307146, 27.752169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305492, 30.389450, 27.669458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.228489, 29.997248, 27.653728>,  <35.182285, 29.761927, 27.644291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.228489, 29.997248, 27.653728>,  <35.305492, 30.389450, 27.669458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228489, 29.997248, 27.653728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465141, -0.055891, -0.883471,
		0.864050, -0.188372, 0.466834,
		-0.192512, -0.980506, -0.039327,
		35.170734, 29.703096, 27.641930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972233, 30.011086, 27.517187>,  <35.305492, 30.389450, 27.669458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972233, 30.011086, 27.517187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.704460, 29.730608, 27.419048>,  <35.543797, 29.562323, 27.360165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.704460, 29.730608, 27.419048>,  <35.972233, 30.011086, 27.517187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704460, 29.730608, 27.419048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220627, 0.127706, -0.966962,
		0.709358, -0.701443, 0.069212,
		-0.669430, -0.701191, -0.245346,
		35.503632, 29.520250, 27.345444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238651, 29.796692, 27.005735>,  <35.972233, 30.011086, 27.517187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238651, 29.796692, 27.005735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.882469, 29.618689, 26.967682>,  <35.668758, 29.511887, 26.944851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.882469, 29.618689, 26.967682>,  <36.238651, 29.796692, 27.005735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882469, 29.618689, 26.967682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161926, -0.114485, -0.980139,
		0.425278, -0.888179, 0.174003,
		-0.890459, -0.445008, -0.095132,
		35.615330, 29.485186, 26.939142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851688, 29.322746, 26.820074>,  <36.238651, 29.796692, 27.005735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851688, 29.322746, 26.820074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.119198, 29.619999, 26.828949>,  <37.279705, 29.798351, 26.834274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.119198, 29.619999, 26.828949>,  <36.851688, 29.322746, 26.820074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119198, 29.619999, 26.828949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065338, 0.029021, 0.997441,
		0.740588, -0.668513, 0.067963,
		0.668775, 0.743134, 0.022187,
		37.319832, 29.842939, 26.835606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421082, 29.174120, 27.247454>,  <36.851688, 29.322746, 26.820074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421082, 29.174120, 27.247454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.488758, 29.567854, 27.227600>,  <37.529362, 29.804094, 27.215689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.488758, 29.567854, 27.227600>,  <37.421082, 29.174120, 27.247454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488758, 29.567854, 27.227600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104957, 0.032078, 0.993959,
		0.979979, -0.173376, -0.097886,
		0.169189, 0.984333, -0.049633,
		37.539516, 29.863153, 27.212709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968735, 29.266384, 27.670773>,  <37.421082, 29.174120, 27.247454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968735, 29.266384, 27.670773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.797779, 29.625961, 27.632317>,  <37.695206, 29.841707, 27.609243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.797779, 29.625961, 27.632317>,  <37.968735, 29.266384, 27.670773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797779, 29.625961, 27.632317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164383, 0.181836, 0.969491,
		0.889000, 0.398542, -0.225486,
		-0.427385, 0.898944, -0.096139,
		37.669563, 29.895645, 27.603476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463409, 29.757010, 27.874235>,  <37.968735, 29.266384, 27.670773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463409, 29.757010, 27.874235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.104427, 29.925489, 27.926645>,  <37.889038, 30.026577, 27.958092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.104427, 29.925489, 27.926645>,  <38.463409, 29.757010, 27.874235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104427, 29.925489, 27.926645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209601, 0.145838, 0.966850,
		0.388131, 0.895165, -0.219167,
		-0.897453, 0.421202, 0.131024,
		37.835190, 30.051849, 27.965952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567570, 30.250141, 28.291039>,  <38.463409, 29.757010, 27.874235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567570, 30.250141, 28.291039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.173862, 30.204294, 28.344828>,  <37.937637, 30.176786, 28.377102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.173862, 30.204294, 28.344828>,  <38.567570, 30.250141, 28.291039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173862, 30.204294, 28.344828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132801, 0.022144, 0.990895,
		-0.116551, 0.993163, -0.006574,
		-0.984266, -0.114617, 0.134474,
		37.878582, 30.169909, 28.385170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458050, 30.558455, 28.935181>,  <38.567570, 30.250141, 28.291039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458050, 30.558455, 28.935181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.115017, 30.355515, 28.901348>,  <37.909199, 30.233751, 28.881048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.115017, 30.355515, 28.901348>,  <38.458050, 30.558455, 28.935181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115017, 30.355515, 28.901348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016183, -0.137750, 0.990335,
		-0.514095, 0.850661, 0.109921,
		-0.857580, -0.507348, -0.084583,
		37.857742, 30.203310, 28.875973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092453, 30.843359, 29.441721>,  <38.458050, 30.558455, 28.935181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092453, 30.843359, 29.441721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.904594, 30.506437, 29.335926>,  <37.791878, 30.304283, 29.272449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.904594, 30.506437, 29.335926>,  <38.092453, 30.843359, 29.441721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904594, 30.506437, 29.335926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213072, -0.182586, 0.959824,
		-0.856757, 0.507133, -0.093721,
		-0.469647, -0.842305, -0.264487,
		37.763699, 30.253746, 29.256580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558750, 30.906738, 29.910158>,  <38.092453, 30.843359, 29.441721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558750, 30.906738, 29.910158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.567387, 30.531979, 29.770586>,  <37.572567, 30.307123, 29.686842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.567387, 30.531979, 29.770586>,  <37.558750, 30.906738, 29.910158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567387, 30.531979, 29.770586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171524, -0.347310, 0.921930,
		-0.984943, 0.039944, -0.168200,
		0.021592, -0.936899, -0.348932,
		37.573864, 30.250908, 29.665907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940342, 30.513847, 30.109333>,  <37.558750, 30.906738, 29.910158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940342, 30.513847, 30.109333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.228210, 30.241564, 30.054621>,  <37.400932, 30.078194, 30.021793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.228210, 30.241564, 30.054621>,  <36.940342, 30.513847, 30.109333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228210, 30.241564, 30.054621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259087, -0.446056, 0.856684,
		-0.644163, -0.581093, -0.497377,
		0.719672, -0.680708, -0.136780,
		37.444111, 30.037352, 30.013588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643848, 29.851421, 30.352512>,  <36.940342, 30.513847, 30.109333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643848, 29.851421, 30.352512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.042423, 29.818195, 30.346687>,  <37.281567, 29.798260, 30.343193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.042423, 29.818195, 30.346687>,  <36.643848, 29.851421, 30.352512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042423, 29.818195, 30.346687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019086, -0.390317, 0.920483,
		-0.082143, -0.916926, -0.390512,
		0.996438, -0.083064, -0.014562,
		37.341354, 29.793276, 30.342319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717487, 29.277433, 30.731689>,  <36.643848, 29.851421, 30.352512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717487, 29.277433, 30.731689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.074566, 29.457396, 30.742069>,  <37.288815, 29.565372, 30.748297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.074566, 29.457396, 30.742069>,  <36.717487, 29.277433, 30.731689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074566, 29.457396, 30.742069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122356, -0.297396, 0.946882,
		0.433726, -0.842105, -0.320534,
		0.892699, 0.449906, 0.025952,
		37.342377, 29.592367, 30.749855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151211, 28.845837, 31.081982>,  <36.717487, 29.277433, 30.731689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151211, 28.845837, 31.081982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.350967, 29.191917, 31.100025>,  <37.470821, 29.399567, 31.110851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.350967, 29.191917, 31.100025>,  <37.151211, 28.845837, 31.081982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350967, 29.191917, 31.100025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270465, -0.205154, 0.940617,
		0.823078, -0.457534, -0.336458,
		0.499391, 0.865202, 0.045110,
		37.500786, 29.451477, 31.113558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703007, 28.686476, 31.481810>,  <37.151211, 28.845837, 31.081982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703007, 28.686476, 31.481810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.659573, 29.084068, 31.487583>,  <37.633514, 29.322624, 31.491047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.659573, 29.084068, 31.487583>,  <37.703007, 28.686476, 31.481810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659573, 29.084068, 31.487583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226600, 0.010609, 0.973930,
		0.967916, 0.109023, -0.226388,
		-0.108582, 0.993983, 0.014436,
		37.626999, 29.382263, 31.491915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292603, 28.893171, 31.854250>,  <37.703007, 28.686476, 31.481810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292603, 28.893171, 31.854250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.014851, 29.179874, 31.879862>,  <37.848198, 29.351896, 31.895229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.014851, 29.179874, 31.879862>,  <38.292603, 28.893171, 31.854250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014851, 29.179874, 31.879862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197066, 0.103826, 0.974877,
		0.692100, 0.689552, -0.213343,
		-0.694379, 0.716756, 0.064030,
		37.806538, 29.394901, 31.899071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.320972, 32.296482, 25.345528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.951973, 32.370491, 25.210018>,  <36.730576, 32.414898, 25.128712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.951973, 32.370491, 25.210018>,  <37.320972, 32.296482, 25.345528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951973, 32.370491, 25.210018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260229, -0.350118, -0.899832,
		-0.285101, -0.918250, 0.274834,
		-0.922495, 0.185023, -0.338774,
		36.675224, 32.425999, 25.108385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993362, 31.665897, 25.014326>,  <37.320972, 32.296482, 25.345528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993362, 31.665897, 25.014326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.815090, 31.992184, 24.866827>,  <36.708126, 32.187958, 24.778328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.815090, 31.992184, 24.866827>,  <36.993362, 31.665897, 25.014326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815090, 31.992184, 24.866827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195083, -0.313518, -0.929327,
		-0.873678, -0.486117, -0.019405,
		-0.445678, 0.815718, -0.368747,
		36.681385, 32.236900, 24.756203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617218, 31.422649, 24.452028>,  <36.993362, 31.665897, 25.014326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617218, 31.422649, 24.452028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.613068, 31.817129, 24.385929>,  <36.610577, 32.053818, 24.346270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.613068, 31.817129, 24.385929>,  <36.617218, 31.422649, 24.452028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613068, 31.817129, 24.385929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146878, -0.161963, -0.975805,
		-0.989100, -0.034400, -0.143169,
		-0.010380, 0.986197, -0.165250,
		36.609955, 32.112988, 24.336353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029507, 31.658272, 23.882910>,  <36.617218, 31.422649, 24.452028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029507, 31.658272, 23.882910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.318764, 31.934536, 23.879818>,  <36.492317, 32.100296, 23.877964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.318764, 31.934536, 23.879818>,  <36.029507, 31.658272, 23.882910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318764, 31.934536, 23.879818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179960, -0.199201, -0.963293,
		-0.666847, 0.695204, -0.268341,
		0.723139, 0.690659, -0.007727,
		36.535706, 32.141735, 23.877501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999447, 31.925743, 23.242685>,  <36.029507, 31.658272, 23.882910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999447, 31.925743, 23.242685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.354218, 32.076939, 23.348883>,  <36.567081, 32.167656, 23.412601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.354218, 32.076939, 23.348883>,  <35.999447, 31.925743, 23.242685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354218, 32.076939, 23.348883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320358, -0.089289, -0.943079,
		-0.332768, 0.921494, -0.200284,
		0.886925, 0.377989, 0.265495,
		36.620296, 32.190334, 23.428532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199085, 32.312126, 22.631649>,  <35.999447, 31.925743, 23.242685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199085, 32.312126, 22.631649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.544178, 32.253273, 22.825163>,  <36.751232, 32.217960, 22.941271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.544178, 32.253273, 22.825163>,  <36.199085, 32.312126, 22.631649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544178, 32.253273, 22.825163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502747, 0.146932, -0.851855,
		0.054253, 0.978142, 0.200734,
		0.862729, -0.147134, 0.483787,
		36.802998, 32.209133, 22.970299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652622, 32.899868, 22.626888>,  <36.199085, 32.312126, 22.631649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652622, 32.899868, 22.626888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.903992, 32.592537, 22.675476>,  <37.054813, 32.408138, 22.704628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.903992, 32.592537, 22.675476>,  <36.652622, 32.899868, 22.626888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903992, 32.592537, 22.675476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543609, 0.322092, -0.775078,
		0.556387, 0.553113, 0.620080,
		0.628428, -0.768325, 0.121469,
		37.092522, 32.362038, 22.711916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219589, 33.145969, 22.479517>,  <36.652622, 32.899868, 22.626888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219589, 33.145969, 22.479517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.325638, 32.760292, 22.477081>,  <37.389267, 32.528885, 22.475620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.325638, 32.760292, 22.477081>,  <37.219589, 33.145969, 22.479517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325638, 32.760292, 22.477081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707157, 0.198729, -0.678555,
		0.655470, 0.175593, 0.734524,
		0.265121, -0.964196, -0.006089,
		37.405174, 32.471035, 22.475254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910904, 33.140240, 22.552584>,  <37.219589, 33.145969, 22.479517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910904, 33.140240, 22.552584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.856812, 32.770676, 22.409416>,  <37.824356, 32.548939, 22.323515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.856812, 32.770676, 22.409416>,  <37.910904, 33.140240, 22.552584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856812, 32.770676, 22.409416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717467, 0.157825, -0.678478,
		0.683341, -0.348545, 0.641531,
		-0.135231, -0.923909, -0.357918,
		37.816242, 32.493504, 22.302040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615929, 32.865837, 22.456778>,  <37.910904, 33.140240, 22.552584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615929, 32.865837, 22.456778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.366638, 32.657742, 22.223215>,  <38.217064, 32.532883, 22.083076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.366638, 32.657742, 22.223215>,  <38.615929, 32.865837, 22.456778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366638, 32.657742, 22.223215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656025, 0.058658, -0.752456,
		0.425707, -0.852005, 0.304732,
		-0.623221, -0.520238, -0.583908,
		38.179672, 32.501671, 22.048042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041756, 32.295834, 22.046730>,  <38.615929, 32.865837, 22.456778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041756, 32.295834, 22.046730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.709564, 32.380634, 21.840679>,  <38.510250, 32.431515, 21.717049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.709564, 32.380634, 21.840679>,  <39.041756, 32.295834, 22.046730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709564, 32.380634, 21.840679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524815, -0.012226, -0.851129,
		-0.186740, -0.977193, -0.101109,
		-0.830481, 0.212003, -0.515128,
		38.460419, 32.444237, 21.686140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039486, 31.958492, 21.430689>,  <39.041756, 32.295834, 22.046730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039486, 31.958492, 21.430689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.729092, 32.158371, 21.276731>,  <38.542854, 32.278297, 21.184357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.729092, 32.158371, 21.276731>,  <39.039486, 31.958492, 21.430689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729092, 32.158371, 21.276731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564439, 0.277781, -0.777332,
		-0.281514, -0.820451, -0.497604,
		-0.775989, 0.499697, -0.384896,
		38.496296, 32.308281, 21.161263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906219, 31.569510, 20.921316>,  <39.039486, 31.958492, 21.430689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906219, 31.569510, 20.921316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.678562, 31.605911, 20.594440>,  <38.541969, 31.627752, 20.398315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.678562, 31.605911, 20.594440>,  <38.906219, 31.569510, 20.921316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678562, 31.605911, 20.594440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395008, 0.901920, -0.174668,
		0.721144, -0.422207, -0.549266,
		-0.569140, 0.091004, -0.817189,
		38.507820, 31.633213, 20.349283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885487, 30.784901, 20.607836>,  <38.906219, 31.569510, 20.921316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885487, 30.784901, 20.607836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.574322, 30.573069, 20.472542>,  <38.387623, 30.445971, 20.391365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.574322, 30.573069, 20.472542>,  <38.885487, 30.784901, 20.607836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574322, 30.573069, 20.472542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305492, 0.151645, -0.940042,
		0.549118, -0.834596, 0.043816,
		-0.777910, -0.529579, -0.338233,
		38.340950, 30.414196, 20.371073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958195, 30.525934, 21.304056>,  <38.885487, 30.784901, 20.607836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958195, 30.525934, 21.304056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.906933, 30.131243, 21.264179>,  <38.876175, 29.894428, 21.240253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.906933, 30.131243, 21.264179>,  <38.958195, 30.525934, 21.304056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906933, 30.131243, 21.264179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317914, -0.054346, 0.946561,
		-0.939419, 0.152998, -0.306731,
		-0.128152, -0.986731, -0.099694,
		38.868488, 29.835224, 21.234270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261780, 30.338549, 21.430975>,  <38.958195, 30.525934, 21.304056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261780, 30.338549, 21.430975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.472374, 30.010534, 21.520729>,  <38.598732, 29.813725, 21.574581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.472374, 30.010534, 21.520729>,  <38.261780, 30.338549, 21.430975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472374, 30.010534, 21.520729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279143, 0.082557, 0.956694,
		-0.803049, -0.566325, -0.185442,
		0.526490, -0.820037, 0.224384,
		38.630322, 29.764523, 21.588043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814007, 29.903067, 21.781706>,  <38.261780, 30.338549, 21.430975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814007, 29.903067, 21.781706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.187763, 29.790276, 21.868799>,  <38.412018, 29.722601, 21.921055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.187763, 29.790276, 21.868799>,  <37.814007, 29.903067, 21.781706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187763, 29.790276, 21.868799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223943, 0.010434, 0.974546,
		-0.277074, -0.959364, -0.053398,
		0.934387, -0.281980, 0.217734,
		38.468079, 29.705683, 21.934120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707012, 29.286812, 22.142366>,  <37.814007, 29.903067, 21.781706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707012, 29.286812, 22.142366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.081219, 29.402100, 22.224087>,  <38.305744, 29.471272, 22.273119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.081219, 29.402100, 22.224087>,  <37.707012, 29.286812, 22.142366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081219, 29.402100, 22.224087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167233, -0.148117, 0.974728,
		0.311197, -0.946039, -0.090366,
		0.935516, 0.288220, 0.204303,
		38.361874, 29.488565, 22.285378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957947, 28.809120, 22.643784>,  <37.707012, 29.286812, 22.142366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957947, 28.809120, 22.643784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.203102, 29.122152, 22.687479>,  <38.350197, 29.309971, 22.713696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.203102, 29.122152, 22.687479>,  <37.957947, 28.809120, 22.643784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203102, 29.122152, 22.687479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152546, -0.018459, 0.988124,
		0.775302, -0.622277, 0.108067,
		0.612892, 0.782580, 0.109237,
		38.386971, 29.356926, 22.720249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393322, 28.608257, 23.103798>,  <37.957947, 28.809120, 22.643784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393322, 28.608257, 23.103798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.413635, 29.007021, 23.127789>,  <38.425823, 29.246279, 23.142183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.413635, 29.007021, 23.127789>,  <38.393322, 28.608257, 23.103798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413635, 29.007021, 23.127789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072737, -0.056203, 0.995766,
		0.996057, -0.054929, 0.069658,
		0.050782, 0.996907, 0.059977,
		38.428871, 29.306093, 23.145782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963314, 28.767097, 23.648924>,  <38.393322, 28.608257, 23.103798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963314, 28.767097, 23.648924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.726940, 29.089287, 23.631016>,  <38.585114, 29.282600, 23.620270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.726940, 29.089287, 23.631016>,  <38.963314, 28.767097, 23.648924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726940, 29.089287, 23.631016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158932, -0.061831, 0.985351,
		0.790906, 0.589398, 0.164554,
		-0.590939, 0.805473, -0.044772,
		38.549660, 29.330929, 23.617584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248718, 29.114847, 24.214235>,  <38.963314, 28.767097, 23.648924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248718, 29.114847, 24.214235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.906231, 29.309191, 24.143995>,  <38.700741, 29.425797, 24.101851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.906231, 29.309191, 24.143995>,  <39.248718, 29.114847, 24.214235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906231, 29.309191, 24.143995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178594, 0.040578, 0.983086,
		0.484766, 0.873095, 0.052028,
		-0.856216, 0.485859, -0.175600,
		38.649364, 29.454948, 24.091314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200310, 29.730148, 24.704283>,  <39.248718, 29.114847, 24.214235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200310, 29.730148, 24.704283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.834156, 29.630632, 24.577686>,  <38.614464, 29.570923, 24.501728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.834156, 29.630632, 24.577686>,  <39.200310, 29.730148, 24.704283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834156, 29.630632, 24.577686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374097, 0.235293, 0.897044,
		-0.148710, 0.939542, -0.308457,
		-0.915389, -0.248792, -0.316490,
		38.559540, 29.555994, 24.482738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679462, 30.358553, 24.864954>,  <39.200310, 29.730148, 24.704283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679462, 30.358553, 24.864954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.452156, 30.032455, 24.820312>,  <38.315773, 29.836798, 24.793528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.452156, 30.032455, 24.820312>,  <38.679462, 30.358553, 24.864954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452156, 30.032455, 24.820312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574093, 0.295643, 0.763552,
		-0.589487, 0.497968, -0.636029,
		-0.568262, -0.815244, -0.111602,
		38.281677, 29.787882, 24.786831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980564, 30.629192, 25.040062>,  <38.679462, 30.358553, 24.864954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980564, 30.629192, 25.040062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.933720, 30.234158, 25.081932>,  <37.905613, 29.997137, 25.107054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.933720, 30.234158, 25.081932>,  <37.980564, 30.629192, 25.040062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933720, 30.234158, 25.081932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678840, 0.156536, 0.717407,
		-0.724887, 0.012959, -0.688746,
		-0.117111, -0.987587, 0.104674,
		37.898586, 29.937881, 25.113335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226395, 30.492167, 25.179760>,  <37.980564, 30.629192, 25.040062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226395, 30.492167, 25.179760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.477531, 30.219206, 25.329502>,  <37.628216, 30.055429, 25.419348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.477531, 30.219206, 25.329502>,  <37.226395, 30.492167, 25.179760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477531, 30.219206, 25.329502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485150, 0.032996, 0.873808,
		-0.608640, -0.730233, -0.310350,
		0.627843, -0.682401, 0.374355,
		37.665886, 30.014486, 25.441809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834473, 30.245663, 25.666483>,  <37.226395, 30.492167, 25.179760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834473, 30.245663, 25.666483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.197071, 30.114063, 25.772337>,  <37.414631, 30.035105, 25.835850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.197071, 30.114063, 25.772337>,  <36.834473, 30.245663, 25.666483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197071, 30.114063, 25.772337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311067, -0.096582, 0.945468,
		-0.285498, -0.939379, -0.189891,
		0.906492, -0.328997, 0.264635,
		37.469017, 30.015364, 25.851728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682316, 29.759802, 26.198927>,  <36.834473, 30.245663, 25.666483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682316, 29.759802, 26.198927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.064098, 29.856106, 26.269409>,  <37.293167, 29.913889, 26.311699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.064098, 29.856106, 26.269409>,  <36.682316, 29.759802, 26.198927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064098, 29.856106, 26.269409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151807, -0.116538, 0.981516,
		0.256846, -0.963562, -0.074681,
		0.954455, 0.240762, 0.176208,
		37.350433, 29.928333, 26.322271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254284, 29.147314, 26.392071>,  <36.682316, 29.759802, 26.198927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254284, 29.147314, 26.392071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.873463, 29.262215, 26.434185>,  <35.644970, 29.331154, 26.459454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.873463, 29.262215, 26.434185>,  <36.254284, 29.147314, 26.392071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873463, 29.262215, 26.434185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153749, -0.151699, -0.976396,
		-0.264499, -0.945766, 0.188590,
		-0.952051, 0.287252, 0.105287,
		35.587849, 29.348389, 26.465771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883274, 28.674496, 26.061342>,  <36.254284, 29.147314, 26.392071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883274, 28.674496, 26.061342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.649204, 28.998190, 26.082182>,  <35.508762, 29.192406, 26.094687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.649204, 28.998190, 26.082182>,  <35.883274, 28.674496, 26.061342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649204, 28.998190, 26.082182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161486, -0.053328, -0.985433,
		-0.794667, -0.585062, 0.161886,
		-0.585173, 0.809234, 0.052102,
		35.473652, 29.240959, 26.097813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531689, 28.510254, 25.454538>,  <35.883274, 28.674496, 26.061342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531689, 28.510254, 25.454538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.428146, 28.891813, 25.515295>,  <35.366020, 29.120749, 25.551748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.428146, 28.891813, 25.515295>,  <35.531689, 28.510254, 25.454538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428146, 28.891813, 25.515295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125092, 0.122820, -0.984514,
		-0.957781, -0.273849, 0.087533,
		-0.258858, 0.953898, 0.151891,
		35.350491, 29.177982, 25.560862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814991, 28.655741, 25.278566>,  <35.531689, 28.510254, 25.454538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814991, 28.655741, 25.278566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.029110, 28.992893, 25.256620>,  <35.157581, 29.195185, 25.243454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.029110, 28.992893, 25.256620>,  <34.814991, 28.655741, 25.278566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029110, 28.992893, 25.256620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006175, -0.061046, -0.998116,
		-0.844642, 0.534626, -0.027473,
		0.535296, 0.842881, -0.054864,
		35.189697, 29.245758, 25.240162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514881, 28.943186, 24.806078>,  <34.814991, 28.655741, 25.278566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514881, 28.943186, 24.806078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.878372, 29.110064, 24.811159>,  <35.096466, 29.210190, 24.814207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.878372, 29.110064, 24.811159>,  <34.514881, 28.943186, 24.806078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878372, 29.110064, 24.811159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055224, -0.090013, -0.994408,
		-0.413720, 0.904348, -0.104837,
		0.908728, 0.417196, 0.012702,
		35.150990, 29.235222, 24.814970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497066, 29.265879, 24.166950>,  <34.514881, 28.943186, 24.806078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497066, 29.265879, 24.166950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.889179, 29.289515, 24.242380>,  <35.124447, 29.303696, 24.287638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.889179, 29.289515, 24.242380>,  <34.497066, 29.265879, 24.166950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889179, 29.289515, 24.242380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188586, 0.005425, -0.982042,
		-0.059051, 0.998238, -0.005825,
		0.980280, 0.059089, 0.188574,
		35.183262, 29.307241, 24.298952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694370, 29.767441, 23.714970>,  <34.497066, 29.265879, 24.166950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694370, 29.767441, 23.714970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.026302, 29.571377, 23.821650>,  <35.225460, 29.453739, 23.885658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.026302, 29.571377, 23.821650>,  <34.694370, 29.767441, 23.714970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026302, 29.571377, 23.821650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186242, -0.207259, -0.960394,
		0.526022, 0.846633, -0.080701,
		0.829828, -0.490159, 0.266701,
		35.275249, 29.424330, 23.901659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623264, 30.378799, 23.680750>,  <34.694370, 29.767441, 23.714970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623264, 30.378799, 23.680750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239777, 30.410734, 23.571585>,  <34.009686, 30.429895, 23.506086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239777, 30.410734, 23.571585>,  <34.623264, 30.378799, 23.680750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239777, 30.410734, 23.571585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283780, -0.207813, 0.936100,
		0.018021, 0.974905, 0.221891,
		-0.958720, 0.079837, -0.272913,
		33.952160, 30.434685, 23.489710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238182, 30.741737, 24.208141>,  <34.623264, 30.378799, 23.680750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238182, 30.741737, 24.208141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940300, 30.573114, 24.001181>,  <33.761570, 30.471941, 23.877005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940300, 30.573114, 24.001181>,  <34.238182, 30.741737, 24.208141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940300, 30.573114, 24.001181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459841, -0.237762, 0.855579,
		-0.483695, 0.875076, -0.016787,
		-0.744705, -0.421558, -0.517400,
		33.716888, 30.446648, 23.845961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640568, 30.924223, 24.491241>,  <34.238182, 30.741737, 24.208141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640568, 30.924223, 24.491241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.532627, 30.597040, 24.288017>,  <33.467861, 30.400730, 24.166082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.532627, 30.597040, 24.288017>,  <33.640568, 30.924223, 24.491241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532627, 30.597040, 24.288017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610053, -0.263000, 0.747440,
		-0.744993, 0.511643, -0.428026,
		-0.269852, -0.817956, -0.508063,
		33.451672, 30.351654, 24.135599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921558, 30.826077, 24.547905>,  <33.640568, 30.924223, 24.491241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921558, 30.826077, 24.547905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.030155, 30.451229, 24.460176>,  <33.095314, 30.226320, 24.407539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.030155, 30.451229, 24.460176>,  <32.921558, 30.826077, 24.547905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030155, 30.451229, 24.460176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443934, -0.324124, 0.835384,
		-0.853940, -0.129439, -0.504016,
		0.271495, -0.937118, -0.219320,
		33.111603, 30.170094, 24.394381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351624, 30.471745, 24.709341>,  <32.921558, 30.826077, 24.547905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351624, 30.471745, 24.709341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.654041, 30.211323, 24.682434>,  <32.835491, 30.055069, 24.666290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.654041, 30.211323, 24.682434>,  <32.351624, 30.471745, 24.709341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654041, 30.211323, 24.682434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387174, -0.527724, 0.756045,
		-0.527724, -0.545561, -0.651054,
		-0.756045, 0.651054, 0.067265,
		32.880856, 30.016006, 24.662254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005302, 29.837381, 24.814053>,  <32.351624, 30.471745, 24.709341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005302, 29.837381, 24.814053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.394588, 29.763147, 24.868320>,  <32.628162, 29.718607, 24.900881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.394588, 29.763147, 24.868320>,  <32.005302, 29.837381, 24.814053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394588, 29.763147, 24.868320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205421, -0.437130, 0.875625,
		-0.103198, -0.880043, -0.463545,
		0.973218, -0.185584, 0.135668,
		32.686554, 29.707472, 24.909021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978275, 29.209005, 25.020729>,  <32.005302, 29.837381, 24.814053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978275, 29.209005, 25.020729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.326622, 29.364811, 25.140644>,  <32.535629, 29.458294, 25.212593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.326622, 29.364811, 25.140644>,  <31.978275, 29.209005, 25.020729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326622, 29.364811, 25.140644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187772, -0.300009, 0.935273,
		0.454240, -0.870789, -0.188128,
		0.870866, 0.389513, 0.299785,
		32.587883, 29.481665, 25.230579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.735390, 34.885674, 20.435417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.965633, 34.598640, 20.592258>,  <36.103779, 34.426418, 20.686363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.965633, 34.598640, 20.592258>,  <35.735390, 34.885674, 20.435417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965633, 34.598640, 20.592258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338963, 0.226985, 0.913007,
		-0.744161, -0.658445, -0.112579,
		0.575612, -0.717585, 0.392102,
		36.138317, 34.383366, 20.709888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318153, 34.384472, 20.784336>,  <35.735390, 34.885674, 20.435417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318153, 34.384472, 20.784336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.685230, 34.374756, 20.942957>,  <35.905476, 34.368927, 21.038130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.685230, 34.374756, 20.942957>,  <35.318153, 34.384472, 20.784336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685230, 34.374756, 20.942957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395574, 0.036996, 0.917689,
		-0.036958, -0.999020, 0.024344,
		0.917690, -0.024286, 0.396554,
		35.960537, 34.367470, 21.061924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265018, 33.781887, 21.303146>,  <35.318153, 34.384472, 20.784336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265018, 33.781887, 21.303146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.566017, 34.018002, 21.419979>,  <35.746616, 34.159672, 21.490078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.566017, 34.018002, 21.419979>,  <35.265018, 33.781887, 21.303146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566017, 34.018002, 21.419979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372998, 0.016465, 0.927686,
		0.542795, -0.807023, 0.232566,
		0.752493, 0.590290, 0.292081,
		35.791767, 34.195087, 21.507603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443775, 33.432404, 21.900171>,  <35.265018, 33.781887, 21.303146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443775, 33.432404, 21.900171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.618378, 33.790806, 21.932728>,  <35.723141, 34.005848, 21.952261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.618378, 33.790806, 21.932728>,  <35.443775, 33.432404, 21.900171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618378, 33.790806, 21.932728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283365, 0.051056, 0.957652,
		0.853911, -0.441089, 0.276184,
		0.436511, 0.896010, 0.081392,
		35.749332, 34.059608, 21.957146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828640, 33.421692, 22.567997>,  <35.443775, 33.432404, 21.900171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828640, 33.421692, 22.567997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.782238, 33.808010, 22.475231>,  <35.754398, 34.039803, 22.419571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.782238, 33.808010, 22.475231>,  <35.828640, 33.421692, 22.567997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782238, 33.808010, 22.475231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321699, 0.184373, 0.928717,
		0.939709, 0.182339, 0.289308,
		-0.116001, 0.965794, -0.231916,
		35.747437, 34.097748, 22.405657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026836, 33.753071, 23.182894>,  <35.828640, 33.421692, 22.567997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026836, 33.753071, 23.182894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.809021, 34.005962, 22.962435>,  <35.678329, 34.157696, 22.830158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.809021, 34.005962, 22.962435>,  <36.026836, 33.753071, 23.182894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809021, 34.005962, 22.962435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450894, 0.333426, 0.827963,
		0.707226, 0.699370, 0.103502,
		-0.544542, 0.632225, -0.551149,
		35.645657, 34.195629, 22.797091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120216, 34.390800, 23.438459>,  <36.026836, 33.753071, 23.182894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120216, 34.390800, 23.438459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.765728, 34.401867, 23.253483>,  <35.553036, 34.408508, 23.142496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.765728, 34.401867, 23.253483>,  <36.120216, 34.390800, 23.438459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765728, 34.401867, 23.253483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412044, 0.409186, 0.814117,
		0.211750, 0.912032, -0.351227,
		-0.886218, 0.027668, -0.462442,
		35.499863, 34.410168, 23.114750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762150, 35.007328, 23.743830>,  <36.120216, 34.390800, 23.438459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762150, 35.007328, 23.743830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.467632, 34.816563, 23.551823>,  <35.290920, 34.702103, 23.436619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.467632, 34.816563, 23.551823>,  <35.762150, 35.007328, 23.743830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467632, 34.816563, 23.551823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663731, 0.371043, 0.649452,
		-0.131627, 0.796793, -0.589743,
		-0.736298, -0.476916, -0.480017,
		35.246742, 34.673489, 23.407818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281315, 35.394844, 23.619371>,  <35.762150, 35.007328, 23.743830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281315, 35.394844, 23.619371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.079136, 35.049782, 23.611904>,  <34.957829, 34.842747, 23.607424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.079136, 35.049782, 23.611904>,  <35.281315, 35.394844, 23.619371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079136, 35.049782, 23.611904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705744, 0.400872, 0.584146,
		-0.496431, 0.308434, -0.811434,
		-0.505452, -0.862653, -0.018670,
		34.927502, 34.790985, 23.606302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656628, 35.648476, 23.698597>,  <35.281315, 35.394844, 23.619371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656628, 35.648476, 23.698597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.592113, 35.262913, 23.783323>,  <34.553406, 35.031574, 23.834160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.592113, 35.262913, 23.783323>,  <34.656628, 35.648476, 23.698597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592113, 35.262913, 23.783323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636607, 0.265616, 0.724003,
		-0.754135, -0.018074, -0.656471,
		-0.161283, -0.963910, 0.211816,
		34.543728, 34.973740, 23.846869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947224, 35.583771, 23.998358>,  <34.656628, 35.648476, 23.698597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947224, 35.583771, 23.998358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.138569, 35.249260, 24.105541>,  <34.253376, 35.048553, 24.169851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.138569, 35.249260, 24.105541>,  <33.947224, 35.583771, 23.998358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138569, 35.249260, 24.105541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456896, 0.023567, 0.889208,
		-0.749943, -0.547794, -0.370820,
		0.478364, -0.836281, 0.267959,
		34.282078, 34.998375, 24.185928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487152, 35.151722, 24.240101>,  <33.947224, 35.583771, 23.998358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487152, 35.151722, 24.240101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.833904, 35.040310, 24.405479>,  <34.041958, 34.973465, 24.504705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.833904, 35.040310, 24.405479>,  <33.487152, 35.151722, 24.240101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833904, 35.040310, 24.405479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444053, -0.054506, 0.894341,
		-0.226566, -0.958880, -0.170932,
		0.866882, -0.278530, 0.413444,
		34.093967, 34.956753, 24.529512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108116, 34.623234, 24.035112>,  <33.487152, 35.151722, 24.240101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108116, 34.623234, 24.035112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.715771, 34.565739, 23.982578>,  <32.480362, 34.531242, 23.951057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.715771, 34.565739, 23.982578>,  <33.108116, 34.623234, 24.035112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715771, 34.565739, 23.982578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173119, -0.335161, -0.926119,
		0.089098, -0.931132, 0.353631,
		-0.980863, -0.143736, -0.131334,
		32.421513, 34.522617, 23.943178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021309, 33.976467, 23.863598>,  <33.108116, 34.623234, 24.035112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021309, 33.976467, 23.863598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.695709, 34.170780, 23.736210>,  <32.500351, 34.287369, 23.659777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.695709, 34.170780, 23.736210>,  <33.021309, 33.976467, 23.863598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695709, 34.170780, 23.736210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109014, -0.410761, -0.905202,
		-0.570549, -0.771548, 0.281401,
		-0.813996, 0.485786, -0.318469,
		32.451511, 34.316517, 23.640669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588604, 33.522423, 23.444300>,  <33.021309, 33.976467, 23.863598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588604, 33.522423, 23.444300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.444340, 33.874004, 23.319487>,  <32.357780, 34.084953, 23.244598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.444340, 33.874004, 23.319487>,  <32.588604, 33.522423, 23.444300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444340, 33.874004, 23.319487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003623, -0.333226, -0.942840,
		-0.932690, -0.341175, 0.116997,
		-0.360660, 0.878954, -0.312033,
		32.336143, 34.137691, 23.225876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176937, 33.291847, 22.862581>,  <32.588604, 33.522423, 23.444300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176937, 33.291847, 22.862581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.224823, 33.686665, 22.819860>,  <32.253555, 33.923557, 22.794228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.224823, 33.686665, 22.819860>,  <32.176937, 33.291847, 22.862581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224823, 33.686665, 22.819860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004860, -0.108159, -0.994122,
		-0.992797, 0.118488, -0.017744,
		0.119711, 0.987047, -0.106804,
		32.260735, 33.982780, 22.787819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847549, 33.455097, 22.307283>,  <32.176937, 33.291847, 22.862581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847549, 33.455097, 22.307283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.056259, 33.795525, 22.330711>,  <32.181484, 33.999783, 22.344769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.056259, 33.795525, 22.330711>,  <31.847549, 33.455097, 22.307283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056259, 33.795525, 22.330711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085699, 0.016019, -0.996192,
		-0.848769, 0.524805, -0.064578,
		0.521772, 0.851072, 0.058572,
		32.212791, 34.050846, 22.348284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523846, 33.909714, 21.817451>,  <31.847549, 33.455097, 22.307283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523846, 33.909714, 21.817451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.894545, 34.044186, 21.884525>,  <32.116966, 34.124870, 21.924770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.894545, 34.044186, 21.884525>,  <31.523846, 33.909714, 21.817451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894545, 34.044186, 21.884525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159220, 0.052802, -0.985830,
		-0.340272, 0.940316, -0.004593,
		0.926749, 0.336181, 0.167684,
		32.172569, 34.145039, 21.934830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546389, 34.469715, 21.456245>,  <31.523846, 33.909714, 21.817451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546389, 34.469715, 21.456245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.921515, 34.335705, 21.492590>,  <32.146591, 34.255299, 21.514397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.921515, 34.335705, 21.492590>,  <31.546389, 34.469715, 21.456245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921515, 34.335705, 21.492590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080517, -0.044666, -0.995752,
		0.337663, 0.941149, -0.014913,
		0.937817, -0.335028, 0.090860,
		32.202858, 34.235195, 21.519848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956835, 34.764820, 21.012245>,  <31.546389, 34.469715, 21.456245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956835, 34.764820, 21.012245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.207554, 34.468346, 21.108383>,  <32.357986, 34.290459, 21.166065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.207554, 34.468346, 21.108383>,  <31.956835, 34.764820, 21.012245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207554, 34.468346, 21.108383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204674, -0.141008, -0.968620,
		0.751821, 0.656320, 0.063319,
		0.626796, -0.741189, 0.240344,
		32.395592, 34.245991, 21.180487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506149, 34.970074, 20.635633>,  <31.956835, 34.764820, 21.012245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506149, 34.970074, 20.635633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.532665, 34.579670, 20.718599>,  <32.548576, 34.345428, 20.768379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.532665, 34.579670, 20.718599>,  <32.506149, 34.970074, 20.635633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532665, 34.579670, 20.718599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341862, -0.173072, -0.923675,
		0.937409, 0.132139, 0.322185,
		0.066292, -0.976005, 0.207413,
		32.552551, 34.286869, 20.780823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171539, 34.812325, 20.414997>,  <32.506149, 34.970074, 20.635633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171539, 34.812325, 20.414997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.981060, 34.460865, 20.428898>,  <32.866772, 34.249989, 20.437239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.981060, 34.460865, 20.428898>,  <33.171539, 34.812325, 20.414997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981060, 34.460865, 20.428898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532409, -0.319550, -0.783855,
		0.699842, -0.354765, 0.619971,
		-0.476196, -0.878652, 0.034754,
		32.838200, 34.197269, 20.439323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679440, 34.322643, 20.264296>,  <33.171539, 34.812325, 20.414997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679440, 34.322643, 20.264296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.340950, 34.115982, 20.212183>,  <33.137856, 33.991985, 20.180916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.340950, 34.115982, 20.212183>,  <33.679440, 34.322643, 20.264296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340950, 34.115982, 20.212183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436136, -0.531186, -0.726379,
		0.306079, -0.671502, 0.674834,
		-0.846227, -0.516649, -0.130281,
		33.087082, 33.960987, 20.173100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856239, 33.679810, 20.279963>,  <33.679440, 34.322643, 20.264296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856239, 33.679810, 20.279963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.513523, 33.681259, 20.073702>,  <33.307892, 33.682129, 19.949945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.513523, 33.681259, 20.073702>,  <33.856239, 33.679810, 20.279963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513523, 33.681259, 20.073702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436009, -0.528822, -0.728178,
		-0.275327, -0.848725, 0.451510,
		-0.856791, 0.003625, -0.515651,
		33.256485, 33.682346, 19.919006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756123, 32.927124, 20.149315>,  <33.856239, 33.679810, 20.279963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756123, 32.927124, 20.149315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.529720, 33.145309, 19.902056>,  <33.393879, 33.276222, 19.753700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.529720, 33.145309, 19.902056>,  <33.756123, 32.927124, 20.149315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529720, 33.145309, 19.902056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187880, -0.644734, -0.740958,
		-0.802708, -0.535524, 0.262441,
		-0.566005, 0.545465, -0.618147,
		33.359921, 33.308949, 19.716612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253590, 32.844749, 20.841730>,  <33.756123, 32.927124, 20.149315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253590, 32.844749, 20.841730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.187088, 32.476006, 20.701706>,  <34.147186, 32.254761, 20.617691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.187088, 32.476006, 20.701706>,  <34.253590, 32.844749, 20.841730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187088, 32.476006, 20.701706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067846, -0.343464, 0.936712,
		-0.983747, 0.179479, -0.005443,
		-0.166251, -0.921857, -0.350058,
		34.137215, 32.199448, 20.596689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638000, 32.568466, 21.222832>,  <34.253590, 32.844749, 20.841730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638000, 32.568466, 21.222832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.802296, 32.238232, 21.068064>,  <33.900871, 32.040092, 20.975203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.802296, 32.238232, 21.068064>,  <33.638000, 32.568466, 21.222832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802296, 32.238232, 21.068064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145823, -0.478388, 0.865957,
		-0.900018, -0.299257, -0.316879,
		0.410735, -0.825585, -0.386920,
		33.925514, 31.990557, 20.951988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234283, 32.079174, 21.470221>,  <33.638000, 32.568466, 21.222832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234283, 32.079174, 21.470221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.556995, 31.874306, 21.352386>,  <33.750626, 31.751385, 21.281687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.556995, 31.874306, 21.352386>,  <33.234283, 32.079174, 21.470221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556995, 31.874306, 21.352386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206188, -0.711292, 0.671975,
		-0.553701, -0.481400, -0.679463,
		0.806785, -0.512170, -0.294584,
		33.799030, 31.720655, 21.264011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974655, 31.391113, 21.494026>,  <33.234283, 32.079174, 21.470221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974655, 31.391113, 21.494026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.374229, 31.382627, 21.510382>,  <33.613976, 31.377537, 21.520195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.374229, 31.382627, 21.510382>,  <32.974655, 31.391113, 21.494026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374229, 31.382627, 21.510382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046011, -0.501648, 0.863847,
		0.002188, -0.864812, -0.502092,
		0.998939, -0.021212, 0.040889,
		33.673912, 31.376265, 21.522648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129707, 30.676638, 21.594185>,  <32.974655, 31.391113, 21.494026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129707, 30.676638, 21.594185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.458805, 30.869308, 21.714899>,  <33.656265, 30.984911, 21.787327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.458805, 30.869308, 21.714899>,  <33.129707, 30.676638, 21.594185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458805, 30.869308, 21.714899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026595, -0.562972, 0.826048,
		0.567785, -0.671603, -0.475994,
		0.822748, 0.481677, 0.301786,
		33.705627, 31.013811, 21.805435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609016, 30.161449, 21.831606>,  <33.129707, 30.676638, 21.594185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609016, 30.161449, 21.831606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.724777, 30.495258, 22.019148>,  <33.794231, 30.695543, 22.131674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.724777, 30.495258, 22.019148>,  <33.609016, 30.161449, 21.831606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724777, 30.495258, 22.019148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073599, -0.507764, 0.858347,
		0.954375, -0.213897, -0.208366,
		0.289398, 0.834520, 0.468854,
		33.811596, 30.745615, 22.159803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221462, 29.999338, 22.281618>,  <33.609016, 30.161449, 21.831606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221462, 29.999338, 22.281618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.056667, 30.325413, 22.444462>,  <33.957790, 30.521057, 22.542168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.056667, 30.325413, 22.444462>,  <34.221462, 29.999338, 22.281618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056667, 30.325413, 22.444462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099939, -0.403666, 0.909432,
		0.905690, 0.415365, 0.084838,
		-0.411992, 0.815185, 0.407107,
		33.933071, 30.569969, 22.566593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503204, 29.958418, 22.890081>,  <34.221462, 29.999338, 22.281618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503204, 29.958418, 22.890081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.218750, 30.231043, 22.959078>,  <34.048077, 30.394617, 23.000475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.218750, 30.231043, 22.959078>,  <34.503204, 29.958418, 22.890081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218750, 30.231043, 22.959078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029988, -0.274528, 0.961111,
		0.702410, 0.678313, 0.215667,
		-0.711141, 0.681561, 0.172491,
		34.005409, 30.435511, 23.010824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190468, 30.112663, 23.314278>,  <34.503204, 29.958418, 22.890081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190468, 30.112663, 23.314278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.310707, 29.743128, 23.409069>,  <35.382851, 29.521406, 23.465944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.310707, 29.743128, 23.409069>,  <35.190468, 30.112663, 23.314278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310707, 29.743128, 23.409069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290184, -0.148102, -0.945441,
		0.908533, 0.352968, 0.223564,
		0.300601, -0.923840, 0.236981,
		35.400887, 29.465977, 23.480164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830132, 29.974874, 23.063015>,  <35.190468, 30.112663, 23.314278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830132, 29.974874, 23.063015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.731789, 29.590086, 23.110615>,  <35.672783, 29.359213, 23.139175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.731789, 29.590086, 23.110615>,  <35.830132, 29.974874, 23.063015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731789, 29.590086, 23.110615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386121, -0.209806, -0.898272,
		0.889080, -0.174902, 0.423021,
		-0.245862, -0.961972, 0.119001,
		35.658031, 29.301495, 23.146315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419838, 29.661148, 23.049625>,  <35.830132, 29.974874, 23.063015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419838, 29.661148, 23.049625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.146179, 29.403181, 22.913378>,  <35.981983, 29.248402, 22.831629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.146179, 29.403181, 22.913378>,  <36.419838, 29.661148, 23.049625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146179, 29.403181, 22.913378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385532, 0.076657, -0.919505,
		0.619115, -0.760398, 0.196192,
		-0.684150, -0.644918, -0.340617,
		35.940933, 29.209705, 22.811193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770012, 29.068106, 22.566145>,  <36.419838, 29.661148, 23.049625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770012, 29.068106, 22.566145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.377953, 29.082901, 22.488232>,  <36.142715, 29.091778, 22.441484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.377953, 29.082901, 22.488232>,  <36.770012, 29.068106, 22.566145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377953, 29.082901, 22.488232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193083, -0.045024, -0.980149,
		-0.045024, -0.998301, 0.036989,
		0.980149, -0.036989, 0.194782,
		36.083908, 29.093998, 22.429796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675179, 28.549530, 22.062523>,  <36.770012, 29.068106, 22.566145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675179, 28.549530, 22.062523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.337486, 28.759727, 22.020327>,  <36.134869, 28.885845, 21.995008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.337486, 28.759727, 22.020327>,  <36.675179, 28.549530, 22.062523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337486, 28.759727, 22.020327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092551, -0.336793, -0.937019,
		-0.527927, -0.781298, 0.332967,
		-0.844232, 0.525494, -0.105492,
		36.084217, 28.917376, 21.988680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201000, 28.054359, 21.898222>,  <36.675179, 28.549530, 22.062523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201000, 28.054359, 21.898222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.108585, 28.414665, 21.751120>,  <36.053135, 28.630850, 21.662859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.108585, 28.414665, 21.751120>,  <36.201000, 28.054359, 21.898222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108585, 28.414665, 21.751120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236354, -0.314697, -0.919295,
		-0.943800, -0.299312, -0.140193,
		-0.231038, 0.900766, -0.367755,
		36.039272, 28.684895, 21.640793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021622, 27.886889, 21.250994>,  <36.201000, 28.054359, 21.898222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021622, 27.886889, 21.250994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.064331, 28.284462, 21.240442>,  <36.089958, 28.523006, 21.234112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.064331, 28.284462, 21.240442>,  <36.021622, 27.886889, 21.250994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064331, 28.284462, 21.240442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411093, -0.068288, -0.909032,
		-0.905319, 0.086219, -0.415890,
		0.106776, 0.993933, -0.026378,
		36.096363, 28.582642, 21.232529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940659, 28.051786, 20.519728>,  <36.021622, 27.886889, 21.250994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940659, 28.051786, 20.519728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.121227, 28.366064, 20.688915>,  <36.229568, 28.554630, 20.790428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.121227, 28.366064, 20.688915>,  <35.940659, 28.051786, 20.519728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121227, 28.366064, 20.688915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595088, 0.088121, -0.798815,
		-0.664897, 0.612305, -0.427778,
		0.451422, 0.785695, 0.422967,
		36.256653, 28.601772, 20.815805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835274, 28.639791, 20.078270>,  <35.940659, 28.051786, 20.519728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835274, 28.639791, 20.078270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.148479, 28.741976, 20.305120>,  <36.336403, 28.803286, 20.441231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.148479, 28.741976, 20.305120>,  <35.835274, 28.639791, 20.078270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148479, 28.741976, 20.305120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568843, 0.074727, -0.819045,
		-0.251612, 0.963928, -0.086804,
		0.783013, 0.255460, 0.567125,
		36.383385, 28.818613, 20.475258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.363541, 29.350952, 36.489368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716816, 29.409618, 36.311172>,  <33.928783, 29.444818, 36.204254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716816, 29.409618, 36.311172>,  <33.363541, 29.350952, 36.489368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716816, 29.409618, 36.311172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429152, -0.130475, -0.893759,
		-0.189210, 0.980543, -0.052292,
		0.883192, 0.146667, -0.445489,
		33.981773, 29.453619, 36.177525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356430, 30.026518, 36.137012>,  <33.363541, 29.350952, 36.489368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356430, 30.026518, 36.137012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.636578, 29.781591, 35.990284>,  <33.804665, 29.634636, 35.902248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.636578, 29.781591, 35.990284>,  <33.356430, 30.026518, 36.137012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636578, 29.781591, 35.990284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379500, 0.115822, -0.917913,
		0.604538, 0.782084, -0.151256,
		0.700366, -0.612315, -0.366820,
		33.846687, 29.597897, 35.880238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601921, 30.359493, 35.614773>,  <33.356430, 30.026518, 36.137012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601921, 30.359493, 35.614773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741982, 29.996428, 35.522213>,  <33.826019, 29.778589, 35.466679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741982, 29.996428, 35.522213>,  <33.601921, 30.359493, 35.614773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741982, 29.996428, 35.522213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252997, 0.146210, -0.956355,
		0.901879, 0.393411, -0.178440,
		0.350151, -0.907662, -0.231396,
		33.847027, 29.724129, 35.452793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982422, 30.449011, 34.982693>,  <33.601921, 30.359493, 35.614773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982422, 30.449011, 34.982693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.883900, 30.061592, 34.996834>,  <33.824787, 29.829142, 35.005318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.883900, 30.061592, 34.996834>,  <33.982422, 30.449011, 34.982693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883900, 30.061592, 34.996834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201031, 0.015368, -0.979464,
		0.948114, -0.248357, -0.198494,
		-0.246307, -0.968547, 0.035356,
		33.810009, 29.771029, 35.007442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196365, 30.187874, 34.405670>,  <33.982422, 30.449011, 34.982693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196365, 30.187874, 34.405670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971977, 29.873608, 34.510006>,  <33.837345, 29.685047, 34.572605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971977, 29.873608, 34.510006>,  <34.196365, 30.187874, 34.405670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971977, 29.873608, 34.510006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225942, -0.157812, -0.961273,
		0.796404, -0.598182, -0.088987,
		-0.560973, -0.785668, 0.260837,
		33.803684, 29.637907, 34.588257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455860, 29.641058, 33.889275>,  <34.196365, 30.187874, 34.405670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455860, 29.641058, 33.889275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.096779, 29.568239, 34.049767>,  <33.881329, 29.524548, 34.146061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.096779, 29.568239, 34.049767>,  <34.455860, 29.641058, 33.889275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096779, 29.568239, 34.049767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404858, -0.018451, -0.914193,
		0.173830, -0.983117, -0.057140,
		-0.897704, -0.182048, 0.401230,
		33.827469, 29.513626, 34.170135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254166, 28.971636, 33.655033>,  <34.455860, 29.641058, 33.889275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254166, 28.971636, 33.655033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.925419, 29.186333, 33.731384>,  <33.728168, 29.315151, 33.777195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.925419, 29.186333, 33.731384>,  <34.254166, 28.971636, 33.655033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925419, 29.186333, 33.731384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279348, -0.087704, -0.956176,
		-0.496479, -0.839176, 0.222019,
		-0.821871, 0.536742, 0.190879,
		33.678856, 29.347355, 33.788647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710758, 28.545887, 33.333179>,  <34.254166, 28.971636, 33.655033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710758, 28.545887, 33.333179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.539722, 28.904486, 33.379581>,  <33.437099, 29.119646, 33.407421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.539722, 28.904486, 33.379581>,  <33.710758, 28.545887, 33.333179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539722, 28.904486, 33.379581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334590, -0.037745, -0.941607,
		-0.839771, -0.441437, 0.316099,
		-0.427591, 0.896498, 0.116003,
		33.411446, 29.173435, 33.414383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994362, 28.425791, 33.210232>,  <33.710758, 28.545887, 33.333179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994362, 28.425791, 33.210232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067337, 28.817274, 33.172615>,  <33.111122, 29.052164, 33.150047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067337, 28.817274, 33.172615>,  <32.994362, 28.425791, 33.210232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067337, 28.817274, 33.172615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130925, -0.070609, -0.988875,
		-0.974462, 0.192719, 0.115256,
		0.182437, 0.978710, -0.094038,
		33.122066, 29.110888, 33.144405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581902, 28.616413, 32.806419>,  <32.994362, 28.425791, 33.210232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581902, 28.616413, 32.806419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.812046, 28.941488, 32.769547>,  <32.950134, 29.136534, 32.747425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.812046, 28.941488, 32.769547>,  <32.581902, 28.616413, 32.806419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812046, 28.941488, 32.769547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191654, 0.024398, -0.981159,
		-0.795126, 0.582190, 0.169792,
		0.575364, 0.812687, -0.092179,
		32.984653, 29.185295, 32.741894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239475, 29.112446, 32.288944>,  <32.581902, 28.616413, 32.806419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239475, 29.112446, 32.288944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.627853, 29.204840, 32.313976>,  <32.860878, 29.260277, 32.328995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.627853, 29.204840, 32.313976>,  <32.239475, 29.112446, 32.288944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627853, 29.204840, 32.313976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052975, 0.047571, -0.997462,
		-0.233375, 0.971794, 0.033952,
		0.970943, 0.230984, 0.062583,
		32.919136, 29.274136, 32.332752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390919, 29.632647, 31.878180>,  <32.239475, 29.112446, 32.288944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390919, 29.632647, 31.878180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.758553, 29.481607, 31.923260>,  <32.979134, 29.390984, 31.950308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.758553, 29.481607, 31.923260>,  <32.390919, 29.632647, 31.878180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758553, 29.481607, 31.923260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180963, 0.150377, -0.971926,
		0.350048, 0.913678, 0.206540,
		0.919086, -0.377597, 0.112702,
		33.034279, 29.368328, 31.957071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774281, 30.175821, 31.607649>,  <32.390919, 29.632647, 31.878180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774281, 30.175821, 31.607649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.519110, 30.281561, 31.318327>,  <31.366007, 30.345005, 31.144733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.519110, 30.281561, 31.318327>,  <31.774281, 30.175821, 31.607649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519110, 30.281561, 31.318327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355284, 0.732284, 0.580976,
		0.683245, 0.627598, -0.373224,
		-0.637925, 0.264348, -0.723306,
		31.327732, 30.360865, 31.101336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838734, 30.992910, 31.620901>,  <31.774281, 30.175821, 31.607649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838734, 30.992910, 31.620901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.495878, 30.852983, 31.469669>,  <31.290165, 30.769028, 31.378929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.495878, 30.852983, 31.469669>,  <31.838734, 30.992910, 31.620901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495878, 30.852983, 31.469669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515002, 0.568565, 0.641488,
		-0.009440, 0.744555, -0.667494,
		-0.857137, -0.349817, -0.378080,
		31.238737, 30.748039, 31.356245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463581, 31.582695, 31.283022>,  <31.838734, 30.992910, 31.620901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463581, 31.582695, 31.283022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.215242, 31.298227, 31.414957>,  <31.066240, 31.127546, 31.494118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.215242, 31.298227, 31.414957>,  <31.463581, 31.582695, 31.283022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215242, 31.298227, 31.414957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539972, 0.692963, 0.477737,
		-0.568315, 0.118498, -0.814233,
		-0.620845, -0.711168, 0.329836,
		31.028990, 31.084877, 31.513908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806923, 31.894621, 31.322586>,  <31.463581, 31.582695, 31.283022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806923, 31.894621, 31.322586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.767273, 31.568787, 31.551191>,  <30.743483, 31.373285, 31.688354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.767273, 31.568787, 31.551191>,  <30.806923, 31.894621, 31.322586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767273, 31.568787, 31.551191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660418, 0.483467, 0.574550,
		-0.744327, -0.320484, -0.585891,
		-0.099125, -0.814585, 0.571511,
		30.737535, 31.324411, 31.722645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088863, 31.975895, 31.454861>,  <30.806923, 31.894621, 31.322586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088863, 31.975895, 31.454861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.190144, 31.696650, 31.722748>,  <30.250912, 31.529102, 31.883480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.190144, 31.696650, 31.722748>,  <30.088863, 31.975895, 31.454861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190144, 31.696650, 31.722748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475585, 0.513025, 0.714580,
		-0.842442, -0.499440, -0.202115,
		0.253200, -0.698115, 0.669720,
		30.266104, 31.487215, 31.923664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497219, 31.737925, 31.711744>,  <30.088863, 31.975895, 31.454861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497219, 31.737925, 31.711744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.773247, 31.643484, 31.985405>,  <29.938864, 31.586821, 32.149601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.773247, 31.643484, 31.985405>,  <29.497219, 31.737925, 31.711744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773247, 31.643484, 31.985405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580779, 0.383412, 0.718116,
		-0.431860, -0.892889, 0.127457,
		0.690067, -0.236101, 0.684152,
		29.980267, 31.572655, 32.190651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135136, 31.377697, 32.279381>,  <29.497219, 31.737925, 31.711744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135136, 31.377697, 32.279381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.487778, 31.476658, 32.440163>,  <29.699362, 31.536036, 32.536633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.487778, 31.476658, 32.440163>,  <29.135136, 31.377697, 32.279381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487778, 31.476658, 32.440163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460932, 0.268022, 0.845994,
		0.101567, -0.931105, 0.350325,
		0.881604, 0.247401, 0.401954,
		29.752258, 31.550879, 32.560749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097294, 31.198282, 33.096062>,  <29.135136, 31.377697, 32.279381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097294, 31.198282, 33.096062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.396048, 31.460955, 33.054230>,  <29.575300, 31.618557, 33.029129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.396048, 31.460955, 33.054230>,  <29.097294, 31.198282, 33.096062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396048, 31.460955, 33.054230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170036, 0.340653, 0.924685,
		0.642848, -0.672849, 0.366087,
		0.746883, 0.656680, -0.104580,
		29.620113, 31.657959, 33.022858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615538, 31.130222, 33.724514>,  <29.097294, 31.198282, 33.096062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615538, 31.130222, 33.724514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.659899, 31.491533, 33.558723>,  <29.686516, 31.708319, 33.459248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.659899, 31.491533, 33.558723>,  <29.615538, 31.130222, 33.724514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659899, 31.491533, 33.558723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156693, 0.427730, 0.890222,
		0.981401, -0.033781, 0.188973,
		0.110902, 0.903275, -0.414481,
		29.693169, 31.762516, 33.434380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961281, 31.472456, 34.310917>,  <29.615538, 31.130222, 33.724514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961281, 31.472456, 34.310917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.784143, 31.724073, 34.055355>,  <29.677860, 31.875044, 33.902020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.784143, 31.724073, 34.055355>,  <29.961281, 31.472456, 34.310917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784143, 31.724073, 34.055355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108237, 0.669864, 0.734552,
		0.890042, 0.394444, -0.228559,
		-0.442843, 0.629044, -0.638900,
		29.651291, 31.912786, 33.863686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065912, 32.104603, 34.604885>,  <29.961281, 31.472456, 34.310917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065912, 32.104603, 34.604885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.805691, 32.218208, 34.323143>,  <29.649559, 32.286373, 34.154099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.805691, 32.218208, 34.323143>,  <30.065912, 32.104603, 34.604885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805691, 32.218208, 34.323143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373493, 0.687895, 0.622337,
		0.661276, 0.667935, -0.341435,
		-0.650552, 0.284013, -0.704357,
		29.610525, 32.303413, 34.111835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105822, 32.803520, 34.565327>,  <30.065912, 32.104603, 34.604885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105822, 32.803520, 34.565327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.752773, 32.723846, 34.395008>,  <29.540943, 32.676041, 34.292816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.752773, 32.723846, 34.395008>,  <30.105822, 32.803520, 34.565327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752773, 32.723846, 34.395008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426405, 0.720527, 0.546827,
		0.197878, 0.664204, -0.720887,
		-0.882623, -0.199184, -0.425796,
		29.487986, 32.664093, 34.267269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698843, 33.505138, 34.429710>,  <30.105822, 32.803520, 34.565327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698843, 33.505138, 34.429710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.423372, 33.216206, 34.454906>,  <29.258091, 33.042847, 34.470024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.423372, 33.216206, 34.454906>,  <29.698843, 33.505138, 34.429710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423372, 33.216206, 34.454906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426316, 0.473661, 0.770649,
		-0.586499, 0.503872, -0.634138,
		-0.688675, -0.722328, 0.062993,
		29.216770, 32.999508, 34.473804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192339, 33.854706, 34.597324>,  <29.698843, 33.505138, 34.429710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192339, 33.854706, 34.597324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.077940, 33.490540, 34.716888>,  <29.009300, 33.272041, 34.788628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.077940, 33.490540, 34.716888>,  <29.192339, 33.854706, 34.597324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077940, 33.490540, 34.716888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310484, 0.383156, 0.869938,
		-0.906535, 0.155993, -0.392251,
		-0.285998, -0.910416, 0.298911,
		28.992140, 33.217415, 34.806561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032013, 34.390678, 34.114643>,  <29.192339, 33.854706, 34.597324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032013, 34.390678, 34.114643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.087021, 34.702469, 34.359104>,  <29.120026, 34.889542, 34.505779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.087021, 34.702469, 34.359104>,  <29.032013, 34.390678, 34.114643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087021, 34.702469, 34.359104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741777, 0.327846, -0.585051,
		-0.656396, 0.533793, -0.533112,
		0.137517, 0.779475, 0.611152,
		29.128277, 34.936310, 34.542450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438585, 34.584171, 33.529610>,  <29.032013, 34.390678, 34.114643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438585, 34.584171, 33.529610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.048588, 34.495293, 33.527767>,  <28.814590, 34.441967, 33.526661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.048588, 34.495293, 33.527767>,  <29.438585, 34.584171, 33.529610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048588, 34.495293, 33.527767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066940, 0.273840, 0.959443,
		-0.211922, 0.935757, -0.281865,
		-0.974991, -0.222195, -0.004607,
		28.756090, 34.428635, 33.526386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769295, 34.734818, 34.232784>,  <29.438585, 34.584171, 33.529610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769295, 34.734818, 34.232784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.091299, 34.972107, 34.235455>,  <30.284502, 35.114479, 34.237057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.091299, 34.972107, 34.235455>,  <29.769295, 34.734818, 34.232784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091299, 34.972107, 34.235455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047176, 0.075227, -0.996050,
		-0.591382, 0.801516, 0.088545,
		0.805010, 0.593223, 0.006675,
		30.332802, 35.150074, 34.237457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538290, 35.281212, 33.905331>,  <29.769295, 34.734818, 34.232784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538290, 35.281212, 33.905331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.935146, 35.317291, 33.870644>,  <30.173260, 35.338940, 33.849831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.935146, 35.317291, 33.870644>,  <29.538290, 35.281212, 33.905331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935146, 35.317291, 33.870644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106786, 0.249181, -0.962552,
		-0.065211, 0.964247, 0.256854,
		0.992141, 0.090197, -0.086718,
		30.232788, 35.344349, 33.844627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809437, 36.015446, 33.675587>,  <29.538290, 35.281212, 33.905331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809437, 36.015446, 33.675587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.064762, 35.726707, 33.568630>,  <30.217957, 35.553467, 33.504456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.064762, 35.726707, 33.568630>,  <29.809437, 36.015446, 33.675587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064762, 35.726707, 33.568630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173245, 0.203743, -0.963574,
		0.750029, 0.661386, 0.004996,
		0.638313, -0.721843, -0.267394,
		30.256256, 35.510155, 33.488411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304314, 36.361500, 32.983044>,  <29.809437, 36.015446, 33.675587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304314, 36.361500, 32.983044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.367891, 35.968472, 33.021584>,  <30.406038, 35.732655, 33.044708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.367891, 35.968472, 33.021584>,  <30.304314, 36.361500, 32.983044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367891, 35.968472, 33.021584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088615, -0.083000, -0.992602,
		0.983303, 0.166307, 0.073879,
		0.158944, -0.982575, 0.096352,
		30.415575, 35.673698, 33.050488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949366, 36.156521, 32.630337>,  <30.304314, 36.361500, 32.983044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949366, 36.156521, 32.630337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.727604, 35.824303, 32.651623>,  <30.594547, 35.624973, 32.664394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.727604, 35.824303, 32.651623>,  <30.949366, 36.156521, 32.630337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727604, 35.824303, 32.651623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075230, -0.113696, -0.990663,
		0.828841, -0.545224, 0.125515,
		-0.554404, -0.830544, 0.053218,
		30.561283, 35.575138, 32.667587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257395, 35.655117, 32.142841>,  <30.949366, 36.156521, 32.630337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257395, 35.655117, 32.142841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.888855, 35.513680, 32.207455>,  <30.667732, 35.428818, 32.246223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.888855, 35.513680, 32.207455>,  <31.257395, 35.655117, 32.142841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888855, 35.513680, 32.207455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024864, -0.361071, -0.932207,
		0.387943, -0.862903, 0.323880,
		-0.921348, -0.353590, 0.161530,
		30.612450, 35.407604, 32.255913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309374, 35.004662, 31.829081>,  <31.257395, 35.655117, 32.142841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309374, 35.004662, 31.829081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.924704, 35.110718, 31.857018>,  <30.693901, 35.174351, 31.873779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.924704, 35.110718, 31.857018>,  <31.309374, 35.004662, 31.829081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924704, 35.110718, 31.857018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140343, -0.257160, -0.956124,
		-0.235554, -0.929282, 0.284516,
		-0.961675, 0.265148, 0.069843,
		30.636200, 35.190262, 31.877972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035688, 34.550179, 31.294277>,  <31.309374, 35.004662, 31.829081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035688, 34.550179, 31.294277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.745975, 34.820889, 31.347031>,  <30.572147, 34.983315, 31.378683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.745975, 34.820889, 31.347031>,  <31.035688, 34.550179, 31.294277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745975, 34.820889, 31.347031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190567, -0.012660, -0.981593,
		-0.662648, -0.736081, 0.138141,
		-0.724281, 0.676775, 0.131884,
		30.528690, 35.023922, 31.386597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438917, 34.268833, 30.995548>,  <31.035688, 34.550179, 31.294277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438917, 34.268833, 30.995548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.398426, 34.666771, 30.993298>,  <30.374132, 34.905533, 30.991947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.398426, 34.666771, 30.993298>,  <30.438917, 34.268833, 30.995548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398426, 34.666771, 30.993298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007139, -0.004930, -0.999963,
		-0.994838, -0.101264, -0.006603,
		-0.101228, 0.994847, -0.005628,
		30.368057, 34.965225, 30.991610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947899, 34.340122, 30.458523>,  <30.438917, 34.268833, 30.995548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947899, 34.340122, 30.458523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.093086, 34.710659, 30.498819>,  <30.180199, 34.932980, 30.522997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.093086, 34.710659, 30.498819>,  <29.947899, 34.340122, 30.458523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093086, 34.710659, 30.498819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152455, 0.165697, -0.974321,
		-0.919245, 0.338290, 0.201368,
		0.362970, 0.926339, 0.100742,
		30.201977, 34.988560, 30.529041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615047, 34.723740, 29.921333>,  <29.947899, 34.340122, 30.458523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615047, 34.723740, 29.921333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.923763, 34.948143, 30.041075>,  <30.108992, 35.082787, 30.112919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.923763, 34.948143, 30.041075>,  <29.615047, 34.723740, 29.921333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923763, 34.948143, 30.041075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218022, 0.208770, -0.953353,
		-0.597336, 0.801051, 0.038814,
		0.771788, 0.561010, 0.299352,
		30.155300, 35.116447, 30.130880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612890, 35.449738, 29.587986>,  <29.615047, 34.723740, 29.921333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612890, 35.449738, 29.587986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.987320, 35.354595, 29.691669>,  <30.211979, 35.297512, 29.753880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.987320, 35.354595, 29.691669>,  <29.612890, 35.449738, 29.587986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987320, 35.354595, 29.691669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285157, 0.081488, -0.955011,
		0.206029, 0.967877, 0.144104,
		0.936076, -0.237852, 0.259208,
		30.268143, 35.283241, 29.769432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023788, 35.745659, 29.141716>,  <29.612890, 35.449738, 29.587986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023788, 35.745659, 29.141716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.327278, 35.525383, 29.280899>,  <30.509373, 35.393215, 29.364408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.327278, 35.525383, 29.280899>,  <30.023788, 35.745659, 29.141716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327278, 35.525383, 29.280899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443037, 0.044645, -0.895391,
		0.477550, 0.833514, 0.277850,
		0.758725, -0.550691, 0.347958,
		30.554895, 35.360176, 29.385286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613302, 36.102989, 28.853214>,  <30.023788, 35.745659, 29.141716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613302, 36.102989, 28.853214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.750893, 35.744556, 28.965441>,  <30.833447, 35.529495, 29.032778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.750893, 35.744556, 28.965441>,  <30.613302, 36.102989, 28.853214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750893, 35.744556, 28.965441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468409, -0.095214, -0.878366,
		0.813801, 0.433559, 0.386981,
		0.343978, -0.896081, 0.280568,
		30.854086, 35.475731, 29.049610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354734, 36.001091, 28.660875>,  <30.613302, 36.102989, 28.853214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354734, 36.001091, 28.660875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.189342, 35.639111, 28.701073>,  <31.090107, 35.421921, 28.725191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.189342, 35.639111, 28.701073>,  <31.354734, 36.001091, 28.660875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189342, 35.639111, 28.701073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324906, -0.249750, -0.912174,
		0.850571, -0.344513, 0.397290,
		-0.413479, -0.904950, 0.100496,
		31.065298, 35.367626, 28.731222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824883, 35.491924, 28.384945>,  <31.354734, 36.001091, 28.660875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824883, 35.491924, 28.384945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.477524, 35.293682, 28.378504>,  <31.269108, 35.174736, 28.374640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.477524, 35.293682, 28.378504>,  <31.824883, 35.491924, 28.384945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477524, 35.293682, 28.378504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191083, -0.304498, -0.933150,
		0.457571, -0.813423, 0.359127,
		-0.868399, -0.495605, -0.016102,
		31.217005, 35.145000, 28.373672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079586, 34.906082, 28.210003>,  <31.824883, 35.491924, 28.384945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079586, 34.906082, 28.210003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.692699, 34.928860, 28.111015>,  <31.460566, 34.942524, 28.051622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.692699, 34.928860, 28.111015>,  <32.079586, 34.906082, 28.210003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692699, 34.928860, 28.111015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213236, -0.347071, -0.913275,
		-0.137893, -0.936108, 0.323553,
		-0.967221, 0.056941, -0.247470,
		31.402533, 34.945942, 28.036774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007366, 34.337135, 27.681253>,  <32.079586, 34.906082, 28.210003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007366, 34.337135, 27.681253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.657484, 34.530647, 27.669556>,  <31.447556, 34.646755, 27.662537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.657484, 34.530647, 27.669556>,  <32.007366, 34.337135, 27.681253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657484, 34.530647, 27.669556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020673, -0.097525, -0.995018,
		-0.484220, -0.869740, 0.095306,
		-0.874702, 0.483778, -0.029244,
		31.395073, 34.675781, 27.660782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443378, 33.850285, 27.271879>,  <32.007366, 34.337135, 27.681253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443378, 33.850285, 27.271879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.363583, 34.237251, 27.209522>,  <31.315704, 34.469433, 27.172108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.363583, 34.237251, 27.209522>,  <31.443378, 33.850285, 27.271879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363583, 34.237251, 27.209522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045595, -0.168082, -0.984718,
		-0.978839, -0.189332, 0.077641,
		-0.199489, 0.967420, -0.155893,
		31.303736, 34.527477, 27.162754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110378, 33.824913, 26.730034>,  <31.443378, 33.850285, 27.271879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110378, 33.824913, 26.730034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.190773, 34.216663, 26.738382>,  <31.239010, 34.451714, 26.743391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.190773, 34.216663, 26.738382>,  <31.110378, 33.824913, 26.730034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190773, 34.216663, 26.738382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068997, 0.007100, -0.997592,
		-0.977161, 0.201944, -0.066147,
		0.200988, 0.979371, 0.020871,
		31.251070, 34.510475, 26.744644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643143, 34.134853, 26.200960>,  <31.110378, 33.824913, 26.730034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643143, 34.134853, 26.200960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.969591, 34.362919, 26.238596>,  <31.165461, 34.499760, 26.261177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.969591, 34.362919, 26.238596>,  <30.643143, 34.134853, 26.200960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969591, 34.362919, 26.238596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073211, 0.059494, -0.995540,
		-0.573223, 0.819371, 0.006812,
		0.816122, 0.570168, 0.094090,
		31.214428, 34.533970, 26.266823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669121, 34.541771, 25.543106>,  <30.643143, 34.134853, 26.200960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669121, 34.541771, 25.543106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.038530, 34.581661, 25.691248>,  <31.260176, 34.605595, 25.780132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.038530, 34.581661, 25.691248>,  <30.669121, 34.541771, 25.543106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038530, 34.581661, 25.691248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373512, -0.014420, -0.927513,
		-0.087159, 0.994910, -0.050567,
		0.923522, 0.099729, 0.370354,
		31.315586, 34.611580, 25.802355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825079, 35.125259, 25.183231>,  <30.669121, 34.541771, 25.543106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825079, 35.125259, 25.183231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.167830, 34.956127, 25.301199>,  <31.373480, 34.854649, 25.371981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.167830, 34.956127, 25.301199>,  <30.825079, 35.125259, 25.183231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167830, 34.956127, 25.301199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353330, 0.065109, -0.933230,
		0.375399, 0.903865, 0.205190,
		0.856874, -0.422834, 0.294921,
		31.424892, 34.829277, 25.389675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450689, 35.527138, 24.899029>,  <30.825079, 35.125259, 25.183231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450689, 35.527138, 24.899029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.603598, 35.162434, 24.959122>,  <31.695343, 34.943611, 24.995176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.603598, 35.162434, 24.959122>,  <31.450689, 35.527138, 24.899029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603598, 35.162434, 24.959122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247289, -0.055708, -0.967339,
		0.890346, 0.406938, 0.204172,
		0.382273, -0.911756, 0.150231,
		31.718279, 34.888908, 25.004190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155514, 35.521015, 24.624199>,  <31.450689, 35.527138, 24.899029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155514, 35.521015, 24.624199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.051373, 35.135109, 24.639378>,  <31.988886, 34.903564, 24.648485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.051373, 35.135109, 24.639378>,  <32.155514, 35.521015, 24.624199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051373, 35.135109, 24.639378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378037, -0.138028, -0.915443,
		0.888427, -0.223996, 0.400654,
		-0.260357, -0.964766, 0.037949,
		31.973265, 34.845680, 24.650763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802017, 35.144672, 24.541277>,  <32.155514, 35.521015, 24.624199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802017, 35.144672, 24.541277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.517704, 34.883038, 24.437769>,  <32.347115, 34.726059, 24.375664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.517704, 34.883038, 24.437769>,  <32.802017, 35.144672, 24.541277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517704, 34.883038, 24.437769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497253, -0.207033, -0.842542,
		0.497519, -0.727539, 0.472400,
		-0.710784, -0.654083, -0.258768,
		32.304470, 34.686813, 24.360138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283272, 34.644371, 24.758001>,  <32.802017, 35.144672, 24.541277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283272, 34.644371, 24.758001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.656769, 34.735645, 24.868309>,  <33.880867, 34.790409, 24.934494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.656769, 34.735645, 24.868309>,  <33.283272, 34.644371, 24.758001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656769, 34.735645, 24.868309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324296, 0.213243, 0.921607,
		0.151493, -0.949978, 0.273114,
		0.933746, 0.228187, 0.275770,
		33.936893, 34.804104, 24.951040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382664, 34.365810, 25.412899>,  <33.283272, 34.644371, 24.758001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382664, 34.365810, 25.412899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.680141, 34.632072, 25.388161>,  <33.858627, 34.791828, 25.373318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.680141, 34.632072, 25.388161>,  <33.382664, 34.365810, 25.412899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680141, 34.632072, 25.388161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166721, 0.274264, 0.947092,
		0.647397, -0.694036, 0.314946,
		0.743695, 0.665652, -0.061847,
		33.903252, 34.831768, 25.369606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698849, 34.288517, 25.986094>,  <33.382664, 34.365810, 25.412899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698849, 34.288517, 25.986094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.845245, 34.646870, 25.885342>,  <33.933083, 34.861881, 25.824890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.845245, 34.646870, 25.885342>,  <33.698849, 34.288517, 25.986094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845245, 34.646870, 25.885342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161271, 0.327621, 0.930944,
		0.916536, -0.300100, 0.264388,
		0.365995, 0.895882, -0.251879,
		33.955044, 34.915634, 25.809778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118832, 34.457863, 26.547745>,  <33.698849, 34.288517, 25.986094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118832, 34.457863, 26.547745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.051773, 34.816349, 26.383455>,  <34.011539, 35.031441, 26.284882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.051773, 34.816349, 26.383455>,  <34.118832, 34.457863, 26.547745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051773, 34.816349, 26.383455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179845, 0.381826, 0.906567,
		0.969304, 0.225849, 0.097168,
		-0.167646, 0.896215, -0.410724,
		34.001480, 35.085213, 26.260239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578693, 34.908386, 26.912739>,  <34.118832, 34.457863, 26.547745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578693, 34.908386, 26.912739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.264462, 35.119453, 26.783472>,  <34.075924, 35.246094, 26.705912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.264462, 35.119453, 26.783472>,  <34.578693, 34.908386, 26.912739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264462, 35.119453, 26.783472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121863, 0.380112, 0.916877,
		0.606643, 0.759661, -0.234305,
		-0.785578, 0.527665, -0.323167,
		34.028790, 35.277752, 26.686522>
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
