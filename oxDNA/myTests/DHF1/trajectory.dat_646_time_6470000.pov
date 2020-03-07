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
	<1.843089, 1.177660, 1.537501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.817963, 1.440327, 1.236877>,  <1.802887, 1.597927, 1.056503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.817963, 1.440327, 1.236877>,  <1.843089, 1.177660, 1.537501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.817963, 1.440327, 1.236877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760335, 0.456311, 0.462246,
		0.646486, 0.600474, 0.470623,
		-0.062816, 0.656667, -0.751560,
		1.799118, 1.637327, 1.011409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.996913, 1.846286, 1.780599>,  <1.843089, 1.177660, 1.537501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.996913, 1.846286, 1.780599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.739212, 1.814877, 1.476291>,  <1.584592, 1.796031, 1.293706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.739212, 1.814877, 1.476291>,  <1.996913, 1.846286, 1.780599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.739212, 1.814877, 1.476291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723144, 0.386394, 0.572506,
		0.249002, 0.918985, -0.305720,
		-0.644252, -0.078524, -0.760771,
		1.545936, 1.791319, 1.248059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.469638, 2.474288, 1.769577>,  <1.996913, 1.846286, 1.780599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.469638, 2.474288, 1.769577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.311893, 2.168213, 1.566021>,  <1.217247, 1.984568, 1.443887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.311893, 2.168213, 1.566021>,  <1.469638, 2.474288, 1.769577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.311893, 2.168213, 1.566021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887815, 0.174306, 0.425913,
		-0.237200, 0.619764, -0.748083,
		-0.394361, -0.765186, -0.508891,
		1.193585, 1.938657, 1.413354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.929720, 2.665744, 1.329144>,  <1.469638, 2.474288, 1.769577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.929720, 2.665744, 1.329144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.879333, 2.287121, 1.447912>,  <0.849102, 2.059947, 1.519173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.879333, 2.287121, 1.447912>,  <0.929720, 2.665744, 1.329144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.879333, 2.287121, 1.447912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864014, 0.251750, 0.436007,
		-0.487455, -0.201623, -0.849550,
		-0.125965, -0.946557, 0.296922,
		0.841544, 2.003154, 1.536989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.312239, 2.559824, 1.241308>,  <0.929720, 2.665744, 1.329144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.312239, 2.559824, 1.241308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.435623, 2.321255, 1.537722>,  <0.509653, 2.178113, 1.715570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.435623, 2.321255, 1.537722>,  <0.312239, 2.559824, 1.241308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.435623, 2.321255, 1.537722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794254, 0.267207, 0.545675,
		-0.523463, -0.756888, -0.391289,
		0.308460, -0.596424, 0.741035,
		0.528161, 2.142328, 1.760032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.248434, 2.187400, 1.551303>,  <0.312239, 2.559824, 1.241308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.248434, 2.187400, 1.551303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.034416, 2.166458, 1.833362>,  <0.204126, 2.153893, 2.002597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.034416, 2.166458, 1.833362>,  <-0.248434, 2.187400, 1.551303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.034416, 2.166458, 1.833362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694725, 0.134228, 0.706640,
		-0.131647, -0.989567, 0.058543,
		0.707125, -0.052355, 0.705147,
		0.246554, 2.150752, 2.044906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.602662, 1.790790, 2.157682>,  <-0.248434, 2.187400, 1.551303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.602662, 1.790790, 2.157682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.290352, 1.995319, 2.301313>,  <-0.102966, 2.118037, 2.387492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.290352, 1.995319, 2.301313>,  <-0.602662, 1.790790, 2.157682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.290352, 1.995319, 2.301313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547235, 0.282278, 0.787942,
		0.301550, -0.811696, 0.500218,
		0.780770, 0.511341, 0.359067,
		-0.056119, 2.148716, 2.409037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.493320, 1.582011, 2.808684>,  <-0.602662, 1.790790, 2.157682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.493320, 1.582011, 2.808684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.335571, 1.949223, 2.792226>,  <-0.240922, 2.169550, 2.782351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.335571, 1.949223, 2.792226>,  <-0.493320, 1.582011, 2.808684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.335571, 1.949223, 2.792226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599603, 0.290993, 0.745519,
		0.696382, -0.269341, 0.665213,
		0.394371, 0.918030, -0.041145,
		-0.217260, 2.224632, 2.779882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-1.291278, 2.694558, 3.137249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.072357, 2.981018, 3.310494>,  <-0.941005, 3.152894, 3.414441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.072357, 2.981018, 3.310494>,  <-1.291278, 2.694558, 3.137249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.072357, 2.981018, 3.310494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802318, -0.301654, -0.515063,
		-0.238213, 0.629390, -0.739677,
		0.547302, 0.716151, 0.433114,
		-0.908166, 3.195863, 3.440428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.982639, 3.224977, 2.666367>,  <-1.291278, 2.694558, 3.137249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.982639, 3.224977, 2.666367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.769318, 3.161228, 2.998677>,  <-0.641325, 3.122979, 3.198063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.769318, 3.161228, 2.998677>,  <-0.982639, 3.224977, 2.666367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.769318, 3.161228, 2.998677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666409, -0.525764, -0.528651,
		0.521043, 0.835568, -0.174186,
		0.533305, -0.159371, 0.830775,
		-0.609326, 3.113417, 3.247909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.310517, 3.438346, 2.443851>,  <-0.982640, 3.224977, 2.666367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.310517, 3.438346, 2.443851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.270142, 3.160572, 2.728827>,  <-0.245916, 2.993907, 2.899812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.270142, 3.160572, 2.728827>,  <-0.310517, 3.438346, 2.443851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.270142, 3.160572, 2.728827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667528, -0.483713, -0.566064,
		0.737712, 0.532711, 0.414730,
		0.100938, -0.694436, 0.712440,
		-0.239860, 2.952241, 2.942559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.420119, 3.296247, 2.792681>,  <-0.310517, 3.438346, 2.443851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.420119, 3.296247, 2.792681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.220314, 2.949724, 2.792680>,  <0.100431, 2.741811, 2.792680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.220314, 2.949724, 2.792680>,  <0.420119, 3.296247, 2.792681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.220314, 2.949724, 2.792680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746470, -0.430413, -0.507471,
		0.439626, -0.253489, 0.861668,
		-0.499512, -0.866307, -0.000001,
		0.070460, 2.689832, 2.792680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.846705, 2.776253, 3.090552>,  <0.420119, 3.296247, 2.792681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.846705, 2.776253, 3.090552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.577461, 2.599211, 2.853563>,  <0.415915, 2.492986, 2.711369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.577461, 2.599211, 2.853563>,  <0.846705, 2.776253, 3.090552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.577461, 2.599211, 2.853563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735133, -0.487805, -0.470772,
		-0.080645, -0.752428, 0.653719,
		-0.673109, -0.442605, -0.592474,
		0.375529, 2.466429, 2.675821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.053990, 2.143299, 3.045045>,  <0.846705, 2.776253, 3.090552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.053990, 2.143299, 3.045045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.805954, 2.159092, 2.731630>,  <0.657133, 2.168568, 2.543581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.805954, 2.159092, 2.731630>,  <1.053990, 2.143299, 3.045045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.805954, 2.159092, 2.731630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629400, -0.571178, -0.526888,
		-0.468342, -0.819876, 0.329330,
		-0.620089, 0.039483, -0.783537,
		0.619927, 2.170937, 2.496569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.991380, 1.479142, 2.853830>,  <1.053990, 2.143299, 3.045045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.991380, 1.479142, 2.853830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.866447, 1.691265, 2.538560>,  <0.791488, 1.818539, 2.349398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.866447, 1.691265, 2.538560>,  <0.991380, 1.479142, 2.853830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.866447, 1.691265, 2.538560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636386, -0.499200, -0.588058,
		-0.705309, -0.685254, -0.181565,
		-0.312332, 0.530308, -0.788176,
		0.772748, 1.850358, 2.302107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.739401, 1.014717, 2.256496>,  <0.991380, 1.479142, 2.853830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.739401, 1.014717, 2.256496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.909195, 1.361786, 2.152991>,  <1.011071, 1.570027, 2.090888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.909195, 1.361786, 2.152991>,  <0.739401, 1.014717, 2.256496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.909195, 1.361786, 2.152991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643704, -0.490177, -0.587683,
		-0.636756, 0.082896, -0.766596,
		0.424484, 0.867672, -0.258763,
		1.036540, 1.622087, 2.075362>
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
