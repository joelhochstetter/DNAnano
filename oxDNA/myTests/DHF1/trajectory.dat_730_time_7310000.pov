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
	<2.090549, 2.182438, 0.693055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.005859, 2.373810, 1.033943>,  <1.955046, 2.488633, 1.238476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.005859, 2.373810, 1.033943>,  <2.090549, 2.182438, 0.693055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.005859, 2.373810, 1.033943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944500, 0.123946, -0.304232,
		-0.251183, -0.869334, 0.425635,
		-0.211724, 0.478430, 0.852219,
		1.942342, 2.517339, 1.289609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.444760, 1.938936, 1.003163>,  <2.090549, 2.182438, 0.693055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.444760, 1.938936, 1.003163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.465591, 2.308922, 1.153750>,  <1.478090, 2.530913, 1.244103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.465591, 2.308922, 1.153750>,  <1.444760, 1.938936, 1.003163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.465591, 2.308922, 1.153750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915671, 0.194675, -0.351637,
		-0.398541, -0.326409, 0.857101,
		0.052079, 0.924964, 0.376469,
		1.481215, 2.586411, 1.266691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.946270, 2.177940, 1.537822>,  <1.444760, 1.938936, 1.003163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.946270, 2.177940, 1.537822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.032093, 2.517998, 1.345480>,  <1.083587, 2.722033, 1.230076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.032093, 2.517998, 1.345480>,  <0.946270, 2.177940, 1.537822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.032093, 2.517998, 1.345480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954372, 0.077790, -0.288309,
		-0.207699, 0.520771, 0.828045,
		0.214557, 0.850145, -0.480852,
		1.096460, 2.773041, 1.201225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.510174, 2.677163, 1.799810>,  <0.946270, 2.177940, 1.537822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.510174, 2.677163, 1.799810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.627869, 2.729485, 1.421114>,  <0.698485, 2.760877, 1.193897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.627869, 2.729485, 1.421114>,  <0.510174, 2.677163, 1.799810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.627869, 2.729485, 1.421114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955207, 0.007408, -0.295845,
		-0.031684, 0.991381, 0.127124,
		0.294237, 0.130804, -0.946739,
		0.716140, 2.768726, 1.137092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.015015, 3.088227, 1.596815>,  <0.510174, 2.677163, 1.799810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.015015, 3.088227, 1.596815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.130295, 2.959354, 1.247133>,  <0.217481, 2.882031, 1.037324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.130295, 2.959354, 1.247133>,  <-0.015015, 3.088227, 1.596815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.130295, 2.959354, 1.247133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927624, -0.037586, -0.371620,
		0.086872, 0.945931, -0.312517,
		0.363274, -0.322181, -0.874203,
		0.239277, 2.862700, 0.984872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.299373, 3.510945, 1.080964>,  <-0.015015, 3.088227, 1.596815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.299373, 3.510945, 1.080964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.169228, 3.189556, 0.881536>,  <-0.091140, 2.996723, 0.761880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.169228, 3.189556, 0.881536>,  <-0.299373, 3.510945, 1.080964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.169228, 3.189556, 0.881536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818544, 0.024658, -0.573915,
		0.473418, 0.594832, -0.649654,
		0.325364, -0.803472, -0.498570,
		-0.071619, 2.948514, 0.731966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.426684, 3.740422, 0.399642>,  <-0.299373, 3.510945, 1.080964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.426684, 3.740422, 0.399642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.386982, 3.342400, 0.401158>,  <-0.363161, 3.103586, 0.402068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.386982, 3.342400, 0.401158>,  <-0.426684, 3.740422, 0.399642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.386982, 3.342400, 0.401158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840802, -0.085905, -0.534483,
		0.532166, 0.049862, -0.845171,
		0.099255, -0.995055, 0.003791,
		-0.357206, 3.043883, 0.402296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.641014, 3.543092, -0.286180>,  <-0.426684, 3.740422, 0.399642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.641014, 3.543092, -0.286180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.679996, 3.224388, -0.047626>,  <-0.703386, 3.033166, 0.095507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.679996, 3.224388, -0.047626>,  <-0.641014, 3.543092, -0.286180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.679996, 3.224388, -0.047626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865290, -0.228225, -0.446302,
		0.491706, -0.559542, -0.667186,
		-0.097457, -0.796759, 0.596386,
		-0.709234, 2.985360, 0.131290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.540079, 2.673892, -0.380240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.407646, 2.321468, -0.245115>,  <3.328187, 2.110014, -0.164040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.407646, 2.321468, -0.245115>,  <3.540079, 2.673892, -0.380240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.407646, 2.321468, -0.245115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645393, 0.049727, 0.762230,
		-0.688370, 0.470382, 0.552167,
		-0.331082, -0.881061, 0.337812,
		3.308322, 2.057150, -0.143772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.286440, 2.789903, 0.315157>,  <3.540079, 2.673892, -0.380240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.286440, 2.789903, 0.315157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.453598, 2.441540, 0.211712>,  <3.553893, 2.232522, 0.149645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.453598, 2.441540, 0.211712>,  <3.286440, 2.789903, 0.315157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.453598, 2.441540, 0.211712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767869, 0.186464, 0.612870,
		-0.485531, -0.454697, 0.746666,
		0.417896, -0.870909, -0.258613,
		3.578967, 2.180267, 0.134128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.608076, 2.404140, 0.897136>,  <3.286440, 2.789903, 0.315157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.608076, 2.404140, 0.897136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.793816, 2.348545, 0.547264>,  <3.905259, 2.315188, 0.337341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.793816, 2.348545, 0.547264>,  <3.608076, 2.404140, 0.897136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.793816, 2.348545, 0.547264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848218, 0.353887, 0.394068,
		0.254767, -0.924903, 0.282218,
		0.464348, -0.138987, -0.874679,
		3.933120, 2.306849, 0.284860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.195884, 1.976278, 0.930151>,  <3.608076, 2.404140, 0.897136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.195884, 1.976278, 0.930151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.251709, 2.247009, 0.641035>,  <4.285204, 2.409448, 0.467565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.251709, 2.247009, 0.641035>,  <4.195884, 1.976278, 0.930151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.251709, 2.247009, 0.641035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864251, 0.273016, 0.422532,
		0.483315, -0.683642, -0.546846,
		0.139564, 0.676828, -0.722791,
		4.293578, 2.450058, 0.424198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.800659, 1.785516, 0.568621>,  <4.195884, 1.976278, 0.930151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.800659, 1.785516, 0.568621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.761490, 2.168682, 0.460688>,  <4.737988, 2.398582, 0.395928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.761490, 2.168682, 0.460688>,  <4.800659, 1.785516, 0.568621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.761490, 2.168682, 0.460688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933065, 0.182670, 0.309874,
		0.346124, -0.221428, -0.911684,
		-0.097923, 0.957915, -0.269834,
		4.732113, 2.456057, 0.379738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.323898, 1.851491, 0.113316>,  <4.800659, 1.785516, 0.568621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.323898, 1.851491, 0.113316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.207916, 2.194729, 0.282833>,  <5.138327, 2.400671, 0.384543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.207916, 2.194729, 0.282833>,  <5.323898, 1.851491, 0.113316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.207916, 2.194729, 0.282833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928864, 0.145665, 0.340579,
		0.230517, 0.492399, -0.839289,
		-0.289956, 0.858094, 0.423793,
		5.120930, 2.452157, 0.409971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.783806, 2.377060, -0.104249>,  <5.323898, 1.851491, 0.113316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.783806, 2.377060, -0.104249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.620468, 2.523216, 0.230354>,  <5.522466, 2.610910, 0.431116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.620468, 2.523216, 0.230354>,  <5.783806, 2.377060, -0.104249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.620468, 2.523216, 0.230354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910557, 0.227648, 0.345054,
		-0.064350, 0.902588, -0.425668,
		-0.408344, 0.365391, 0.836507,
		5.497965, 2.632834, 0.481307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.014816, 3.100052, -0.079681>,  <5.783806, 2.377060, -0.104249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.014816, 3.100052, -0.079681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.915260, 2.953251, 0.278841>,  <5.855526, 2.865170, 0.493954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.915260, 2.953251, 0.278841>,  <6.014816, 3.100052, -0.079681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.915260, 2.953251, 0.278841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873969, 0.313730, 0.371148,
		-0.417410, 0.875718, 0.242665,
		-0.248890, -0.367002, 0.896305,
		5.840593, 2.843150, 0.547733>
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
