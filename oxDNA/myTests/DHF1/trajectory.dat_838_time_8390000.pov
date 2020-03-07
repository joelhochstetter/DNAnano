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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<0.030129, 5.146434, 0.029247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.411098, 5.210213, -0.074651>,  <0.639680, 5.248480, -0.136989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.411098, 5.210213, -0.074651>,  <0.030129, 5.146434, 0.029247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.411098, 5.210213, -0.074651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217827, -0.952191, 0.214206,
		-0.213170, -0.260594, -0.941620,
		0.952423, 0.159448, -0.259743,
		0.696825, 5.258047, -0.152574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.255119, 4.587523, -0.460134>,  <0.030129, 5.146434, 0.029247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.255119, 4.587523, -0.460134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.546040, 4.741211, -0.232658>,  <0.720592, 4.833424, -0.096173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.546040, 4.741211, -0.232658>,  <0.255119, 4.587523, -0.460134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.546040, 4.741211, -0.232658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236905, -0.918225, 0.317394,
		0.644134, -0.096116, -0.758850,
		0.727301, 0.384220, 0.568689,
		0.764230, 4.856477, -0.062052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.851192, 4.195474, -0.472107>,  <0.255119, 4.587523, -0.460134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.851192, 4.195474, -0.472107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.906898, 4.373558, -0.118296>,  <0.940323, 4.480409, 0.093991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.906898, 4.373558, -0.118296>,  <0.851192, 4.195474, -0.472107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.906898, 4.373558, -0.118296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395778, -0.843814, 0.362404,
		0.907725, 0.299606, -0.293720,
		0.139267, 0.445211, 0.884529,
		0.948679, 4.507122, 0.147063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.398375, 3.807991, -0.216481>,  <0.851192, 4.195474, -0.472107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.398375, 3.807991, -0.216481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.157681, 3.927567, 0.079776>,  <1.013264, 3.999312, 0.257530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.157681, 3.927567, 0.079776>,  <1.398375, 3.807991, -0.216481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.157681, 3.927567, 0.079776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155302, -0.865822, 0.475640,
		0.783451, 0.401232, 0.474570,
		-0.601736, 0.298939, 0.740642,
		0.977160, 4.017248, 0.301968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.792084, 3.630654, 0.280138>,  <1.398375, 3.807991, -0.216481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.792084, 3.630654, 0.280138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.403202, 3.655708, 0.370378>,  <1.169873, 3.670741, 0.424521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.403202, 3.655708, 0.370378>,  <1.792084, 3.630654, 0.280138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.403202, 3.655708, 0.370378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019057, -0.939187, 0.342878,
		0.233355, 0.337647, 0.911888,
		-0.972205, 0.062635, 0.225598,
		1.111541, 3.674499, 0.438057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.808877, 3.509844, 0.952731>,  <1.792084, 3.630654, 0.280138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.808877, 3.509844, 0.952731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.439209, 3.424957, 0.825687>,  <1.217408, 3.374025, 0.749461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.439209, 3.424957, 0.825687>,  <1.808877, 3.509844, 0.952731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.439209, 3.424957, 0.825687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128361, -0.955656, 0.265038,
		-0.359771, 0.204171, 0.910428,
		-0.924169, -0.212216, -0.317610,
		1.161958, 3.361292, 0.730404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.503947, 3.105415, 1.482364>,  <1.808877, 3.509844, 0.952731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.503947, 3.105415, 1.482364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.277237, 3.014549, 1.165590>,  <1.141211, 2.960030, 0.975526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.277237, 3.014549, 1.165590>,  <1.503947, 3.105415, 1.482364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.277237, 3.014549, 1.165590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071716, -0.971191, 0.227256,
		-0.820744, 0.072009, 0.566739,
		-0.566776, -0.227163, -0.791935,
		1.107204, 2.946400, 0.928010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.976148, 2.641351, 1.682581>,  <1.503947, 3.105415, 1.482364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.976148, 2.641351, 1.682581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.008377, 2.567619, 1.290758>,  <1.027715, 2.523381, 1.055665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.008377, 2.567619, 1.290758>,  <0.976148, 2.641351, 1.682581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.008377, 2.567619, 1.290758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178810, -0.964136, 0.196135,
		-0.980579, -0.190957, -0.044723,
		0.080572, -0.184329, -0.979557,
		1.032549, 2.512321, 0.996891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.682336, 2.551894, 0.507941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.017403, 2.629524, 0.303726>,  <2.218443, 2.676103, 0.181197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.017403, 2.629524, 0.303726>,  <1.682336, 2.551894, 0.507941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.017403, 2.629524, 0.303726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426662, 0.351055, 0.833498,
		0.340992, -0.916020, 0.211260,
		0.837665, 0.194080, -0.510538,
		2.268703, 2.687747, 0.150565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.813719, 1.868050, 0.848475>,  <1.682336, 2.551894, 0.507941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.813719, 1.868050, 0.848475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.441223, 1.759453, 0.751245>,  <1.217726, 1.694295, 0.692908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.441223, 1.759453, 0.751245>,  <1.813719, 1.868050, 0.848475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.441223, 1.759453, 0.751245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183507, 0.925667, -0.330857,
		0.314829, -0.263501, -0.911839,
		-0.931240, -0.271492, -0.243072,
		1.161851, 1.678005, 0.678324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.571011, 1.913068, 0.055285>,  <1.813719, 1.868050, 0.848475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.571011, 1.913068, 0.055285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.292702, 1.967598, 0.337367>,  <1.125716, 2.000316, 0.506617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.292702, 1.967598, 0.337367>,  <1.571011, 1.913068, 0.055285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.292702, 1.967598, 0.337367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223578, 0.891939, -0.393011,
		-0.682578, -0.431115, -0.590107,
		-0.695773, 0.136325, 0.705206,
		1.083970, 2.008496, 0.548929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.126906, 2.412965, -0.287668>,  <1.571011, 1.913068, 0.055285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.126906, 2.412965, -0.287668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.094193, 2.444412, 0.109750>,  <1.074564, 2.463281, 0.348200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.094193, 2.444412, 0.109750>,  <1.126906, 2.412965, -0.287668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.094193, 2.444412, 0.109750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157536, 0.983332, -0.090778,
		-0.984121, -0.163943, -0.068035,
		-0.081784, 0.078619, 0.993544,
		1.069657, 2.467998, 0.407813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.483967, 2.844542, -0.171425>,  <1.126906, 2.412965, -0.287668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.483967, 2.844542, -0.171425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.653656, 2.853333, 0.190691>,  <0.755469, 2.858607, 0.407961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.653656, 2.853333, 0.190691>,  <0.483967, 2.844542, -0.171425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.653656, 2.853333, 0.190691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299403, 0.946887, 0.117315,
		-0.854631, -0.320815, 0.408269,
		0.424221, 0.021977, 0.905292,
		0.780922, 2.859926, 0.462279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.029028, 3.048618, 0.307526>,  <0.483967, 2.844542, -0.171425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.029028, 3.048618, 0.307526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.334473, 3.156883, 0.434593>,  <0.552573, 3.221843, 0.510832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.334473, 3.156883, 0.434593>,  <-0.029028, 3.048618, 0.307526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.334473, 3.156883, 0.434593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246568, 0.962328, -0.114580,
		-0.336711, 0.025798, 0.941254,
		0.908752, 0.270664, 0.317666,
		0.607098, 3.238082, 0.529892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.208167, 3.627521, 0.743621>,  <-0.029028, 3.048618, 0.307526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.208167, 3.627521, 0.743621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.183296, 3.645279, 0.663365>,  <0.418174, 3.655934, 0.615211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.183296, 3.645279, 0.663365>,  <-0.208167, 3.627521, 0.743621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.183296, 3.645279, 0.663365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036695, 0.998446, 0.041938,
		0.202191, -0.033681, 0.978767,
		0.978658, 0.044395, -0.200640,
		0.476894, 3.658597, 0.603173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.147138, 4.054144, 1.324929>,  <-0.208167, 3.627521, 0.743621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.147138, 4.054144, 1.324929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.406113, 4.073837, 1.020718>,  <0.561497, 4.085653, 0.838191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.406113, 4.073837, 1.020718>,  <0.147138, 4.054144, 1.324929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.406113, 4.073837, 1.020718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027177, 0.995785, 0.087600,
		0.761635, -0.077384, 0.643369,
		0.647436, 0.049234, -0.760528,
		0.600343, 4.088607, 0.792559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
