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
	<0.002941, 1.573616, 1.919012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.161560, 1.614235, 2.281351>,  <-0.260261, 1.638606, 2.498755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.161560, 1.614235, 2.281351>,  <0.002941, 1.573616, 1.919012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.161560, 1.614235, 2.281351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372401, 0.925773, 0.065289,
		-0.831979, 0.364189, -0.418542,
		-0.411252, 0.101546, 0.905848,
		-0.284936, 1.644699, 2.553105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.388980, 2.209203, 1.905264>,  <0.002941, 1.573616, 1.919012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.388980, 2.209203, 1.905264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.236122, 2.120064, 2.263996>,  <-0.144407, 2.066581, 2.479235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.236122, 2.120064, 2.263996>,  <-0.388980, 2.209203, 1.905264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.236122, 2.120064, 2.263996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407052, 0.911858, 0.053134,
		-0.829623, 0.344752, 0.439172,
		0.382145, -0.222847, 0.896830,
		-0.121479, 2.053210, 2.533045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.512771, 2.707095, 2.334722>,  <-0.388980, 2.209203, 1.905264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.512771, 2.707095, 2.334722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.189777, 2.541290, 2.502603>,  <0.004019, 2.441807, 2.603331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.189777, 2.541290, 2.502603>,  <-0.512771, 2.707095, 2.334722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.189777, 2.541290, 2.502603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388945, 0.909049, 0.149501,
		-0.443500, 0.042522, 0.895265,
		0.807483, -0.414513, 0.419702,
		0.052468, 2.416936, 2.628513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.344255, 3.093299, 2.920712>,  <-0.512771, 2.707095, 2.334722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.344255, 3.093299, 2.920712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.015972, 2.958244, 2.811183>,  <0.232108, 2.877211, 2.745466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.015972, 2.958244, 2.811183>,  <-0.344255, 3.093299, 2.920712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.015972, 2.958244, 2.811183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382091, 0.915193, 0.128168,
		0.207325, -0.220049, 0.953202,
		0.900568, -0.337638, -0.273821,
		0.286143, 2.856953, 2.729037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.092508, 3.327114, 3.445155>,  <-0.344255, 3.093299, 2.920712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.092508, 3.327114, 3.445155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.256844, 3.303284, 3.081251>,  <0.355445, 3.288985, 2.862909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.256844, 3.303284, 3.081251>,  <0.092508, 3.327114, 3.445155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.256844, 3.303284, 3.081251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477620, 0.864039, 0.159107,
		0.776589, -0.499887, 0.383436,
		0.410840, -0.059576, -0.909759,
		0.380095, 3.285411, 2.808323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.801794, 3.583302, 3.487185>,  <0.092508, 3.327114, 3.445155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.801794, 3.583302, 3.487185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.697113, 3.617760, 3.102666>,  <0.634305, 3.638435, 2.871955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.697113, 3.617760, 3.102666>,  <0.801794, 3.583302, 3.487185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.697113, 3.617760, 3.102666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339698, 0.940499, -0.008197,
		0.903392, -0.328696, -0.275394,
		-0.261702, 0.086145, -0.961296,
		0.618602, 3.643603, 2.814277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.374542, 3.870183, 3.207124>,  <0.801794, 3.583302, 3.487185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.374542, 3.870183, 3.207124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.064831, 3.930244, 2.961214>,  <0.879004, 3.966282, 2.813668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.064831, 3.930244, 2.961214>,  <1.374542, 3.870183, 3.207124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.064831, 3.930244, 2.961214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250953, 0.964650, -0.080453,
		0.580962, -0.216572, -0.784589,
		-0.774278, 0.150155, -0.614774,
		0.832548, 3.975291, 2.776782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.665807, 4.166565, 2.671796>,  <1.374542, 3.870183, 3.207124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.665807, 4.166565, 2.671796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.276955, 4.260040, 2.664291>,  <1.043643, 4.316125, 2.659789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.276955, 4.260040, 2.664291>,  <1.665807, 4.166565, 2.671796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.276955, 4.260040, 2.664291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234365, 0.970731, -0.052481,
		0.005948, -0.055415, -0.998446,
		-0.972131, 0.233688, -0.018761,
		0.985315, 4.330147, 2.658663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.263593, 5.385256, 3.474440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.971413, 5.480957, 3.218565>,  <0.796105, 5.538378, 3.065040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.971413, 5.480957, 3.218565>,  <1.263593, 5.385256, 3.474440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.971413, 5.480957, 3.218565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282305, -0.958642, -0.036185,
		-0.621889, 0.154156, 0.767782,
		-0.730450, 0.239252, -0.639688,
		0.752278, 5.552732, 3.026659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.668411, 4.950452, 3.593347>,  <1.263593, 5.385256, 3.474440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.668411, 4.950452, 3.593347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.609581, 5.078072, 3.218844>,  <0.574283, 5.154644, 2.994142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.609581, 5.078072, 3.218844>,  <0.668411, 4.950452, 3.593347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.609581, 5.078072, 3.218844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331851, -0.907604, -0.257156,
		-0.931796, 0.272877, 0.239362,
		-0.147074, 0.319049, -0.936256,
		0.565459, 5.173787, 2.937967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.066500, 4.804483, 3.197600>,  <0.668411, 4.950452, 3.593347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.066500, 4.804483, 3.197600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.252541, 4.827393, 2.957416>,  <0.443965, 4.841138, 2.813305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.252541, 4.827393, 2.957416>,  <-0.066500, 4.804483, 3.197600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.252541, 4.827393, 2.957416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209429, -0.907257, -0.364724,
		-0.565662, 0.416658, -0.711634,
		0.797600, 0.057274, -0.600461,
		0.491821, 4.844575, 2.777278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.333841, 4.604841, 2.506542>,  <-0.066500, 4.804483, 3.197600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.333841, 4.604841, 2.506542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.057968, 4.532318, 2.541554>,  <0.293054, 4.488804, 2.562561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.057968, 4.532318, 2.541554>,  <-0.333841, 4.604841, 2.506542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.057968, 4.532318, 2.541554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131413, -0.905142, -0.404288,
		0.152527, 0.384507, -0.910434,
		0.979523, -0.181308, 0.087529,
		0.351825, 4.477926, 2.567813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.134859, 4.255773, 1.933528>,  <-0.333841, 4.604841, 2.506542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.134859, 4.255773, 1.933528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.162132, 4.167198, 2.186413>,  <0.340327, 4.114053, 2.338144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.162132, 4.167198, 2.186413>,  <-0.134859, 4.255773, 1.933528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.162132, 4.167198, 2.186413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015601, -0.949243, -0.314156,
		0.669689, 0.223391, -0.708247,
		0.742478, -0.221436, 0.632212,
		0.384876, 4.100767, 2.376077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.263308, 3.773410, 1.578255>,  <-0.134859, 4.255773, 1.933528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.263308, 3.773410, 1.578255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.367020, 3.731148, 1.962257>,  <0.429247, 3.705790, 2.192659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.367020, 3.731148, 1.962257>,  <0.263308, 3.773410, 1.578255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.367020, 3.731148, 1.962257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126920, -0.989105, -0.074581,
		0.957427, -0.102507, -0.269864,
		0.259279, -0.105657, 0.960006,
		0.444803, 3.699451, 2.250259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.744905, 3.261247, 1.592041>,  <0.263308, 3.773410, 1.578255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.744905, 3.261247, 1.592041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.605927, 3.271034, 1.966993>,  <0.522540, 3.276906, 2.191965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.605927, 3.271034, 1.966993>,  <0.744905, 3.261247, 1.592041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.605927, 3.271034, 1.966993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123146, -0.992192, -0.019746,
		0.929579, -0.122295, 0.347746,
		-0.347446, 0.024468, 0.937381,
		0.501693, 3.278375, 2.248208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.168984, 2.848437, 2.078746>,  <0.744905, 3.261247, 1.592041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.168984, 2.848437, 2.078746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.773117, 2.891769, 2.116320>,  <0.535597, 2.917769, 2.138865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.773117, 2.891769, 2.116320>,  <1.168984, 2.848437, 2.078746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.773117, 2.891769, 2.116320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109771, -0.993904, -0.010296,
		0.092248, -0.020502, 0.995525,
		-0.989667, 0.108330, 0.093937,
		0.476217, 2.924268, 2.144501>
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
