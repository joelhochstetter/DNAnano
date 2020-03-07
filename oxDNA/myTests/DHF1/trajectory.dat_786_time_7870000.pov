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
	<3.053065, 0.174642, 1.013062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.406931, 0.282047, 1.165518>,  <3.619251, 0.346491, 1.256992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.406931, 0.282047, 1.165518>,  <3.053065, 0.174642, 1.013062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.406931, 0.282047, 1.165518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370309, -0.092005, 0.924341,
		0.283266, -0.958872, 0.018040,
		0.884665, 0.268515, 0.381141,
		3.672330, 0.362601, 1.279860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.323970, -0.576417, 1.475590>,  <3.053065, 0.174642, 1.013062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.323970, -0.576417, 1.475590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.400242, -0.188591, 1.537022>,  <3.446005, 0.044104, 1.573880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.400242, -0.188591, 1.537022>,  <3.323970, -0.576417, 1.475590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.400242, -0.188591, 1.537022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403755, -0.065142, 0.912545,
		0.894775, -0.236012, 0.379046,
		0.190680, 0.969564, 0.153579,
		3.457446, 0.102278, 1.583095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.898827, -0.427502, 1.885816>,  <3.323970, -0.576417, 1.475590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.898827, -0.427502, 1.885816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.645180, -0.121243, 1.929041>,  <3.492991, 0.062513, 1.954976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.645180, -0.121243, 1.929041>,  <3.898827, -0.427502, 1.885816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.645180, -0.121243, 1.929041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062328, -0.088684, 0.994108,
		0.770720, 0.637117, 0.008515,
		-0.634118, 0.765648, 0.108061,
		3.454944, 0.108452, 1.961459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.167702, -0.049759, 2.413981>,  <3.898827, -0.427502, 1.885816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.167702, -0.049759, 2.413981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.775023, 0.022480, 2.389801>,  <3.539415, 0.065823, 2.375293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.775023, 0.022480, 2.389801>,  <4.167702, -0.049759, 2.413981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.775023, 0.022480, 2.389801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067088, -0.030867, 0.997270,
		0.178238, 0.983073, 0.042419,
		-0.981698, 0.180598, -0.060451,
		3.480513, 0.076659, 2.371666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.035990, 0.499270, 2.736746>,  <4.167702, -0.049759, 2.413981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.035990, 0.499270, 2.736746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.672115, 0.333614, 2.724356>,  <3.453790, 0.234221, 2.716921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.672115, 0.333614, 2.724356>,  <4.035990, 0.499270, 2.736746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.672115, 0.333614, 2.724356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088740, 0.120975, 0.988681,
		-0.405703, 0.902139, -0.146800,
		-0.909687, -0.414138, -0.030976,
		3.399209, 0.209373, 2.715063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.381466, 0.912433, 3.147349>,  <4.035990, 0.499270, 2.736746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.381466, 0.912433, 3.147349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.262056, 0.533165, 3.103794>,  <3.190411, 0.305604, 3.077662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.262056, 0.533165, 3.103794>,  <3.381466, 0.912433, 3.147349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.262056, 0.533165, 3.103794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204029, -0.048050, 0.977785,
		-0.932339, 0.314108, -0.179110,
		-0.298524, -0.948170, -0.108886,
		3.172499, 0.248714, 3.071128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.879731, 0.820646, 3.608354>,  <3.381466, 0.912433, 3.147349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.879731, 0.820646, 3.608354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.974749, 0.438366, 3.538830>,  <3.031759, 0.208998, 3.497115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.974749, 0.438366, 3.538830>,  <2.879731, 0.820646, 3.608354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.974749, 0.438366, 3.538830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065928, -0.194382, 0.978708,
		-0.969137, -0.221027, -0.109182,
		0.237544, -0.955700, -0.173811,
		3.046012, 0.151656, 3.486686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.364330, 0.426801, 3.881796>,  <2.879731, 0.820646, 3.608354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.364330, 0.426801, 3.881796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.686539, 0.190308, 3.865892>,  <2.879864, 0.048412, 3.856350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.686539, 0.190308, 3.865892>,  <2.364330, 0.426801, 3.881796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.686539, 0.190308, 3.865892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147672, -0.265267, 0.952799,
		-0.573872, -0.761628, -0.300987,
		0.805521, -0.591233, -0.039758,
		2.928195, 0.012938, 3.853965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.383314, 5.630897, 4.861979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.498844, 5.256081, 4.940499>,  <3.568162, 5.031191, 4.987612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.498844, 5.256081, 4.940499>,  <3.383314, 5.630897, 4.861979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.498844, 5.256081, 4.940499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259627, -0.274018, -0.926017,
		0.921506, 0.216492, -0.322425,
		0.288826, -0.937041, 0.196302,
		3.585492, 4.974968, 4.999390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.951098, 5.399470, 4.410828>,  <3.383314, 5.630897, 4.861979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.951098, 5.399470, 4.410828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.696503, 5.102402, 4.494084>,  <3.543746, 4.924160, 4.544038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.696503, 5.102402, 4.494084>,  <3.951098, 5.399470, 4.410828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.696503, 5.102402, 4.494084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233490, -0.071665, -0.969715,
		0.735096, -0.665810, -0.127793,
		-0.636488, -0.742671, 0.208141,
		3.505556, 4.879601, 4.556526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.199757, 4.786859, 4.020433>,  <3.951098, 5.399470, 4.410828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.199757, 4.786859, 4.020433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.813046, 4.755730, 4.117826>,  <3.581019, 4.737052, 4.176262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.813046, 4.755730, 4.117826>,  <4.199757, 4.786859, 4.020433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.813046, 4.755730, 4.117826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240828, -0.042005, -0.969659,
		0.085688, -0.996082, 0.021868,
		-0.966778, -0.077822, 0.243483,
		3.523012, 4.732383, 4.190871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.934332, 4.139608, 3.698270>,  <4.199757, 4.786859, 4.020433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.934332, 4.139608, 3.698270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.631680, 4.394859, 3.755264>,  <3.450088, 4.548010, 3.789460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.631680, 4.394859, 3.755264>,  <3.934332, 4.139608, 3.698270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.631680, 4.394859, 3.755264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268297, -0.104286, -0.957675,
		-0.596260, -0.762834, 0.250115,
		-0.756631, 0.638129, 0.142485,
		3.404690, 4.586298, 3.798009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.241420, 3.890059, 3.446186>,  <3.934332, 4.139608, 3.698270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.241420, 3.890059, 3.446186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.177586, 4.284836, 3.437438>,  <3.139285, 4.521702, 3.432190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.177586, 4.284836, 3.437438>,  <3.241420, 3.890059, 3.446186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.177586, 4.284836, 3.437438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123748, -0.041977, -0.991425,
		-0.979397, -0.155512, 0.128831,
		-0.159587, 0.986942, -0.021868,
		3.129709, 4.580918, 3.430878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.904984, 3.985973, 2.860652>,  <3.241420, 3.890059, 3.446186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.904984, 3.985973, 2.860652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.971539, 4.372757, 2.937910>,  <3.011472, 4.604827, 2.984264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.971539, 4.372757, 2.937910>,  <2.904984, 3.985973, 2.860652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.971539, 4.372757, 2.937910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125633, 0.215067, -0.968485,
		-0.978025, 0.136878, 0.157266,
		0.166387, 0.966960, 0.193145,
		3.021455, 4.662845, 2.995853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.291903, 4.455715, 2.644931>,  <2.904984, 3.985973, 2.860652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.291903, 4.455715, 2.644931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.609833, 4.696999, 2.671448>,  <2.800591, 4.841769, 2.687358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.609833, 4.696999, 2.671448>,  <2.291903, 4.455715, 2.644931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.609833, 4.696999, 2.671448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180752, 0.339612, -0.923034,
		-0.579296, 0.721668, 0.378963,
		0.794824, 0.603208, 0.066292,
		2.848280, 4.877961, 2.691335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.132509, 5.164255, 2.355606>,  <2.291903, 4.455715, 2.644931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.132509, 5.164255, 2.355606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.529785, 5.125801, 2.329288>,  <2.768151, 5.102729, 2.313498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.529785, 5.125801, 2.329288>,  <2.132509, 5.164255, 2.355606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.529785, 5.125801, 2.329288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047961, 0.177261, -0.982994,
		0.106162, 0.979457, 0.171444,
		0.993191, -0.096134, -0.065794,
		2.827743, 5.096961, 2.309550>
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
