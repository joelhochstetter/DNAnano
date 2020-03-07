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
	<3.345289, 0.441149, 0.035425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.102856, 0.307732, -0.253410>,  <2.957396, 0.227681, -0.426712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.102856, 0.307732, -0.253410>,  <3.345289, 0.441149, 0.035425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.102856, 0.307732, -0.253410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780868, 0.076759, 0.619962,
		-0.151357, 0.939605, -0.306975,
		-0.606083, -0.333543, -0.722089,
		2.921031, 0.207669, -0.470037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.899392, 0.804244, -0.080569>,  <3.345289, 0.441149, 0.035425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.899392, 0.804244, -0.080569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.703999, 0.484589, -0.220718>,  <2.586762, 0.292795, -0.304808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.703999, 0.484589, -0.220718>,  <2.899392, 0.804244, -0.080569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.703999, 0.484589, -0.220718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798938, 0.248176, 0.547821,
		-0.350830, 0.547527, -0.759692,
		-0.488484, -0.799139, -0.350372,
		2.557453, 0.244847, -0.325830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.235627, 1.014605, -0.246641>,  <2.899392, 0.804244, -0.080569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.235627, 1.014605, -0.246641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.221767, 0.624641, -0.158684>,  <2.213452, 0.390663, -0.105909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.221767, 0.624641, -0.158684>,  <2.235627, 1.014605, -0.246641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.221767, 0.624641, -0.158684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918252, 0.117902, 0.378037,
		-0.394477, -0.188819, -0.899297,
		-0.034648, -0.974909, 0.219893,
		2.211373, 0.332169, -0.092716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.715964, 0.664078, -0.631127>,  <2.235627, 1.014605, -0.246641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.715964, 0.664078, -0.631127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.800037, 0.515724, -0.269295>,  <1.850482, 0.426712, -0.052195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.800037, 0.515724, -0.269295>,  <1.715964, 0.664078, -0.631127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.800037, 0.515724, -0.269295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966398, 0.061231, 0.249652,
		-0.147981, -0.926658, -0.345554,
		0.210184, -0.370886, 0.904581,
		1.863093, 0.404459, 0.002080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.657283, -0.043337, -0.548734>,  <1.715964, 0.664078, -0.631127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.657283, -0.043337, -0.548734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.594013, 0.137634, -0.197670>,  <1.556051, 0.246217, 0.012969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.594013, 0.137634, -0.197670>,  <1.657283, -0.043337, -0.548734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.594013, 0.137634, -0.197670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981161, -0.171866, -0.088232,
		0.110921, -0.875083, 0.471090,
		-0.158174, 0.452429, 0.877661,
		1.546561, 0.273363, 0.065628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.200181, -0.451645, -0.121684>,  <1.657283, -0.043337, -0.548734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.200181, -0.451645, -0.121684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.187450, -0.099670, 0.067924>,  <1.179812, 0.111515, 0.181690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.187450, -0.099670, 0.067924>,  <1.200181, -0.451645, -0.121684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.187450, -0.099670, 0.067924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977831, -0.125616, 0.167532,
		0.206962, -0.458182, 0.864428,
		-0.031826, 0.879938, 0.474022,
		1.177903, 0.164311, 0.210131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.813810, -0.627149, 0.493556>,  <1.200181, -0.451645, -0.121684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.813810, -0.627149, 0.493556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.794884, -0.229767, 0.451973>,  <0.783528, 0.008663, 0.427023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.794884, -0.229767, 0.451973>,  <0.813810, -0.627149, 0.493556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.794884, -0.229767, 0.451973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973126, -0.022365, 0.229183,
		0.225358, 0.112007, 0.967816,
		-0.047315, 0.993456, -0.103957,
		0.780689, 0.068270, 0.420786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.359790, -0.398146, 0.981517>,  <0.813810, -0.627149, 0.493556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.359790, -0.398146, 0.981517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.336639, -0.093285, 0.723595>,  <0.322749, 0.089632, 0.568841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.336639, -0.093285, 0.723595>,  <0.359790, -0.398146, 0.981517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.336639, -0.093285, 0.723595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996955, -0.010310, 0.077297,
		0.052264, 0.647315, 0.760428,
		-0.057876, 0.762152, -0.644805,
		0.319277, 0.135361, 0.530153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-1.560912, 0.058224, 0.736882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.719513, 0.408676, 0.627205>,  <-1.814673, 0.618947, 0.561398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.719513, 0.408676, 0.627205>,  <-1.560912, 0.058224, 0.736882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.719513, 0.408676, 0.627205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272874, 0.397652, 0.876021,
		0.876542, 0.272524, -0.396743,
		-0.396502, 0.876130, -0.274194,
		-1.838464, 0.671515, 0.544947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.099065, -0.115046, 0.342957>,  <-1.560912, 0.058224, 0.736882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.099065, -0.115046, 0.342957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.016396, 0.273666, 0.388435>,  <-0.966794, 0.506894, 0.415722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.016396, 0.273666, 0.388435>,  <-1.099065, -0.115046, 0.342957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.016396, 0.273666, 0.388435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970223, -0.218558, 0.104403,
		0.126306, 0.088733, -0.988015,
		0.206675, 0.971781, 0.113696,
		-0.954393, 0.565201, 0.422544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.605290, 0.147158, -0.182667>,  <-1.099065, -0.115046, 0.342957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.605290, 0.147158, -0.182667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.546186, 0.398895, 0.122513>,  <-0.510724, 0.549938, 0.305621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.546186, 0.398895, 0.122513>,  <-0.605290, 0.147158, -0.182667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.546186, 0.398895, 0.122513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989006, -0.098618, -0.110191,
		0.005893, 0.770844, -0.636997,
		0.147759, 0.629344, 0.762950,
		-0.501859, 0.587699, 0.351398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.164068, 0.538937, -0.523333>,  <-0.605290, 0.147158, -0.182667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.164068, 0.538937, -0.523333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.138103, 0.578369, -0.126129>,  <-0.122525, 0.602029, 0.112193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.138103, 0.578369, -0.126129>,  <-0.164068, 0.538937, -0.523333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.138103, 0.578369, -0.126129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997233, -0.042548, -0.060963,
		0.036241, 0.994219, -0.101070,
		0.064911, 0.098581, 0.993010,
		-0.118630, 0.607943, 0.171774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.304888, 1.082554, -0.303897>,  <-0.164068, 0.538937, -0.523333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.304888, 1.082554, -0.303897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.296635, 0.814667, -0.006966>,  <0.291683, 0.653934, 0.171193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.296635, 0.814667, -0.006966>,  <0.304888, 1.082554, -0.303897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.296635, 0.814667, -0.006966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998769, 0.019689, 0.045524,
		-0.045104, 0.742354, 0.668487,
		-0.020633, -0.669718, 0.742329,
		0.290445, 0.613751, 0.215733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.687885, 1.336809, 0.244329>,  <0.304888, 1.082554, -0.303897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.687885, 1.336809, 0.244329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.706896, 0.942169, 0.306763>,  <0.718302, 0.705385, 0.344223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.706896, 0.942169, 0.306763>,  <0.687885, 1.336809, 0.244329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.706896, 0.942169, 0.306763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995509, 0.059593, 0.073560,
		-0.081876, 0.151888, 0.985001,
		0.047526, -0.986599, 0.156085,
		0.721154, 0.646189, 0.353588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.019516, 1.295117, 0.850650>,  <0.687885, 1.336809, 0.244329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.019516, 1.295117, 0.850650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.072323, 0.955292, 0.646370>,  <1.104007, 0.751397, 0.523802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.072323, 0.955292, 0.646370>,  <1.019516, 1.295117, 0.850650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.072323, 0.955292, 0.646370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974828, 0.017889, 0.222237,
		-0.179668, -0.527183, 0.830540,
		0.132017, -0.849563, -0.510699,
		1.111928, 0.700423, 0.493160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.325265, 0.800680, 1.265321>,  <1.019516, 1.295117, 0.850650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.325265, 0.800680, 1.265321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.414803, 0.716888, 0.884583>,  <1.468525, 0.666614, 0.656139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.414803, 0.716888, 0.884583>,  <1.325265, 0.800680, 1.265321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.414803, 0.716888, 0.884583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972608, -0.014783, 0.231981,
		-0.062666, -0.977701, 0.200432,
		0.223845, -0.209479, -0.951846,
		1.481956, 0.654045, 0.599028>
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
