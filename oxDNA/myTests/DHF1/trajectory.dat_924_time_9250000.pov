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
	<4.620073, 2.845933, 1.893655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.920982, 2.947258, 1.650372>,  <5.101528, 3.008053, 1.504402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.920982, 2.947258, 1.650372>,  <4.620073, 2.845933, 1.893655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.920982, 2.947258, 1.650372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096495, 0.955541, 0.278621,
		0.651746, -0.150910, 0.743273,
		0.752274, 0.253312, -0.608208,
		5.146665, 3.023252, 1.467909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.006323, 3.280648, 2.294847>,  <4.620073, 2.845933, 1.893655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.006323, 3.280648, 2.294847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.050926, 3.345459, 1.902660>,  <5.077688, 3.384346, 1.667349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.050926, 3.345459, 1.902660>,  <5.006323, 3.280648, 2.294847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.050926, 3.345459, 1.902660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145485, 0.978650, 0.145182,
		0.983057, 0.126454, 0.132697,
		0.111505, 0.162027, -0.980466,
		5.084378, 3.394067, 1.608521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.415965, 3.837855, 2.136490>,  <5.006323, 3.280648, 2.294847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.415965, 3.837855, 2.136490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.172218, 3.837006, 1.819336>,  <5.025970, 3.836496, 1.629043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.172218, 3.837006, 1.819336>,  <5.415965, 3.837855, 2.136490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.172218, 3.837006, 1.819336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175123, 0.975661, 0.131977,
		0.773308, 0.219275, -0.594907,
		-0.609366, -0.002123, -0.792886,
		4.989408, 3.836369, 1.581470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.706563, 4.168722, 1.602952>,  <5.415965, 3.837855, 2.136490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.706563, 4.168722, 1.602952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.306770, 4.175724, 1.613781>,  <5.066895, 4.179925, 1.620278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.306770, 4.175724, 1.613781>,  <5.706563, 4.168722, 1.602952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.306770, 4.175724, 1.613781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019017, 0.998212, 0.056658,
		-0.026031, 0.057143, -0.998026,
		-0.999480, 0.017505, 0.027072,
		5.006926, 4.180975, 1.621902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.444096, 4.655492, 1.167971>,  <5.706563, 4.168722, 1.602952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.444096, 4.655492, 1.167971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.143356, 4.613976, 1.428417>,  <4.962913, 4.589066, 1.584685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.143356, 4.613976, 1.428417>,  <5.444096, 4.655492, 1.167971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.143356, 4.613976, 1.428417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144309, 0.989493, -0.008905,
		-0.643349, -0.100657, -0.758928,
		-0.751850, -0.103791, 0.651114,
		4.917801, 4.582839, 1.623752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.117125, 5.271461, 1.062946>,  <5.444096, 4.655492, 1.167971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.117125, 5.271461, 1.062946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.980797, 5.127087, 1.410179>,  <4.899000, 5.040462, 1.618519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.980797, 5.127087, 1.410179>,  <5.117125, 5.271461, 1.062946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.980797, 5.127087, 1.410179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116994, 0.899905, 0.420100,
		-0.932820, 0.244740, -0.264478,
		-0.340820, -0.360935, 0.868082,
		4.878551, 5.018806, 1.670604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.490869, 5.605252, 1.223681>,  <5.117125, 5.271461, 1.062946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.490869, 5.605252, 1.223681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.677284, 5.483833, 1.556107>,  <4.789134, 5.410982, 1.755562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.677284, 5.483833, 1.556107>,  <4.490869, 5.605252, 1.223681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.677284, 5.483833, 1.556107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093873, 0.917040, 0.387590,
		-0.879770, -0.258646, 0.398881,
		0.466039, -0.303546, 0.831064,
		4.817096, 5.392769, 1.805426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.111104, 5.975837, 1.711256>,  <4.490869, 5.605252, 1.223681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.111104, 5.975837, 1.711256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.434090, 5.855587, 1.914284>,  <4.627881, 5.783437, 2.036100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.434090, 5.855587, 1.914284>,  <4.111104, 5.975837, 1.711256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.434090, 5.855587, 1.914284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038913, 0.885678, 0.462667,
		-0.588632, -0.353836, 0.726851,
		0.807464, -0.300625, 0.507569,
		4.676329, 5.765399, 2.066555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.601907, 1.974464, 1.819996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.738159, 1.806705, 2.156586>,  <0.819910, 1.706050, 2.358540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.738159, 1.806705, 2.156586>,  <0.601907, 1.974464, 1.819996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.738159, 1.806705, 2.156586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639509, -0.759420, -0.119626,
		0.689203, -0.497382, -0.526888,
		0.340629, -0.419396, 0.841474,
		0.840348, 1.680887, 2.409028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.939477, 1.310945, 1.730534>,  <0.601907, 1.974464, 1.819996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.939477, 1.310945, 1.730534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.754440, 1.299549, 2.084980>,  <0.643418, 1.292712, 2.297647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.754440, 1.299549, 2.084980>,  <0.939477, 1.310945, 1.730534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.754440, 1.299549, 2.084980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467593, -0.841328, -0.271154,
		0.753237, -0.539774, 0.375869,
		-0.462591, -0.028489, 0.886114,
		0.615663, 1.291002, 2.350814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.994170, 0.744966, 2.141456>,  <0.939477, 1.310945, 1.730534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.994170, 0.744966, 2.141456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.643852, 0.870411, 2.288223>,  <0.433661, 0.945678, 2.376284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.643852, 0.870411, 2.288223>,  <0.994170, 0.744966, 2.141456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.643852, 0.870411, 2.288223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383499, -0.913709, -0.134403,
		0.293107, -0.258423, 0.920493,
		-0.875795, 0.313613, 0.366919,
		0.381114, 0.964495, 2.398299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.775011, 0.234718, 2.634406>,  <0.994170, 0.744966, 2.141456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.775011, 0.234718, 2.634406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.446556, 0.423946, 2.506695>,  <0.249483, 0.537483, 2.430068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.446556, 0.423946, 2.506695>,  <0.775011, 0.234718, 2.634406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.446556, 0.423946, 2.506695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420662, -0.879734, -0.221612,
		-0.385718, -0.047665, 0.921385,
		-0.821137, 0.473071, -0.319278,
		0.200215, 0.565868, 2.410911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.308195, -0.070643, 2.875845>,  <0.775011, 0.234718, 2.634406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.308195, -0.070643, 2.875845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.135315, 0.089767, 2.552765>,  <0.031587, 0.186014, 2.358917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.135315, 0.089767, 2.552765>,  <0.308195, -0.070643, 2.875845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.135315, 0.089767, 2.552765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392445, -0.890057, -0.231918,
		-0.811905, 0.216743, 0.542064,
		-0.432201, 0.401025, -0.807701,
		0.005655, 0.210075, 2.310455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.479657, -0.207005, 2.949992>,  <0.308195, -0.070643, 2.875845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.479657, -0.207005, 2.949992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.349411, -0.168419, 2.573765>,  <-0.271263, -0.145267, 2.348028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.349411, -0.168419, 2.573765>,  <-0.479657, -0.207005, 2.949992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.349411, -0.168419, 2.573765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456752, -0.854959, -0.245809,
		-0.827860, 0.509646, -0.234327,
		0.325616, 0.096466, -0.940568,
		-0.251726, -0.139479, 2.291594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.034032, -0.420285, 2.506494>,  <-0.479657, -0.207005, 2.949992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.034032, -0.420285, 2.506494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.737808, -0.446114, 2.238941>,  <-0.560074, -0.461611, 2.078410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.737808, -0.446114, 2.238941>,  <-1.034032, -0.420285, 2.506494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.737808, -0.446114, 2.238941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410809, -0.831216, -0.374588,
		-0.531797, 0.552187, -0.642092,
		0.740559, -0.064572, -0.668881,
		-0.515640, -0.465485, 2.038277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.287041, -0.299829, 1.829385>,  <-1.034032, -0.420285, 2.506494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.287041, -0.299829, 1.829385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.976311, -0.548328, 1.870552>,  <-0.789873, -0.697428, 1.895252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.976311, -0.548328, 1.870552>,  <-1.287041, -0.299829, 1.829385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.976311, -0.548328, 1.870552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518448, -0.723729, -0.455444,
		0.357428, 0.300443, -0.884296,
		0.776825, -0.621250, 0.102917,
		-0.743263, -0.734703, 1.901427>
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
