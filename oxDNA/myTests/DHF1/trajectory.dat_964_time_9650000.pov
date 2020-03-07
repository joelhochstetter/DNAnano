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
	<4.805658, 2.067936, 1.891697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.479614, 2.249371, 2.035839>,  <4.283988, 2.358231, 2.122324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.479614, 2.249371, 2.035839>,  <4.805658, 2.067936, 1.891697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.479614, 2.249371, 2.035839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134247, 0.753010, -0.644169,
		-0.563538, -0.476691, -0.674678,
		-0.815109, 0.453587, 0.360356,
		4.235082, 2.385447, 2.143946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.334246, 2.189381, 1.349441>,  <4.805658, 2.067936, 1.891697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.334246, 2.189381, 1.349441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.319275, 2.456367, 1.646921>,  <4.310292, 2.616559, 1.825409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.319275, 2.456367, 1.646921>,  <4.334246, 2.189381, 1.349441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.319275, 2.456367, 1.646921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088979, 0.743491, -0.662800,
		-0.995330, 0.041367, -0.087217,
		-0.037428, 0.667466, 0.743699,
		4.308047, 2.656607, 1.870031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.743344, 2.588360, 1.298694>,  <4.334246, 2.189381, 1.349441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.743344, 2.588360, 1.298694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.027695, 2.799435, 1.484684>,  <4.198305, 2.926079, 1.596278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.027695, 2.799435, 1.484684>,  <3.743344, 2.588360, 1.298694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.027695, 2.799435, 1.484684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002170, 0.662761, -0.748828,
		-0.703314, 0.531315, 0.472286,
		0.710876, 0.527686, 0.464976,
		4.240957, 2.957741, 1.624177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.485910, 3.286633, 1.391374>,  <3.743344, 2.588360, 1.298694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.485910, 3.286633, 1.391374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.882484, 3.262550, 1.345016>,  <4.120429, 3.248101, 1.317202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.882484, 3.262550, 1.345016>,  <3.485910, 3.286633, 1.391374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.882484, 3.262550, 1.345016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059718, 0.580203, -0.812280,
		0.116146, 0.812244, 0.571638,
		0.991435, -0.060206, -0.115893,
		4.179915, 3.244489, 1.310248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.616852, 3.929456, 1.247612>,  <3.485910, 3.286633, 1.391374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.616852, 3.929456, 1.247612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.933609, 3.724346, 1.114967>,  <4.123663, 3.601280, 1.035381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.933609, 3.724346, 1.114967>,  <3.616852, 3.929456, 1.247612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.933609, 3.724346, 1.114967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038954, 0.584349, -0.810567,
		0.609415, 0.628965, 0.482717,
		0.791894, -0.512776, -0.331611,
		4.171177, 3.570513, 1.015484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.162819, 4.341178, 1.089489>,  <3.616852, 3.929456, 1.247612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.162819, 4.341178, 1.089489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.212250, 4.017010, 0.860422>,  <4.241908, 3.822509, 0.722982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.212250, 4.017010, 0.860422>,  <4.162819, 4.341178, 1.089489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.212250, 4.017010, 0.860422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195233, 0.585667, -0.786688,
		0.972941, -0.014588, 0.230595,
		0.123576, -0.810421, -0.572667,
		4.249322, 3.773884, 0.688622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.747551, 4.514909, 0.619656>,  <4.162819, 4.341178, 1.089489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.747551, 4.514909, 0.619656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.590401, 4.199345, 0.430651>,  <4.496110, 4.010006, 0.317247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.590401, 4.199345, 0.430651>,  <4.747551, 4.514909, 0.619656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.590401, 4.199345, 0.430651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094741, 0.476371, -0.874125,
		0.914698, -0.388189, -0.112412,
		-0.392876, -0.788910, -0.472513,
		4.472538, 3.962672, 0.288897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.188081, 4.235186, 0.023795>,  <4.747551, 4.514909, 0.619656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.188081, 4.235186, 0.023795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.791122, 4.210976, -0.019072>,  <4.552947, 4.196450, -0.044791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.791122, 4.210976, -0.019072>,  <5.188081, 4.235186, 0.023795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.791122, 4.210976, -0.019072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073628, 0.405780, -0.911000,
		0.098624, -0.911965, -0.398238,
		-0.992397, -0.060525, -0.107166,
		4.493403, 4.192818, -0.051221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.498224, 1.632276, 2.944299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.876633, 1.753838, 2.989353>,  <3.103678, 1.826774, 3.016386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.876633, 1.753838, 2.989353>,  <2.498224, 1.632276, 2.944299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.876633, 1.753838, 2.989353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318878, 0.810589, 0.491185,
		0.057971, -0.500589, 0.863742,
		0.946021, 0.303903, 0.112636,
		3.160439, 1.845008, 3.023144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.605346, 1.879352, 3.662474>,  <2.498224, 1.632276, 2.944299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.605346, 1.879352, 3.662474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.905273, 2.049255, 3.459555>,  <3.085230, 2.151197, 3.337803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.905273, 2.049255, 3.459555>,  <2.605346, 1.879352, 3.662474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.905273, 2.049255, 3.459555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086972, 0.823348, 0.560833,
		0.655901, -0.376403, 0.654305,
		0.749820, 0.424757, -0.507299,
		3.130219, 2.176683, 3.307365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.079877, 2.162402, 4.118202>,  <2.605346, 1.879352, 3.662474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.079877, 2.162402, 4.118202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.093842, 2.356613, 3.768793>,  <3.102220, 2.473140, 3.559148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.093842, 2.356613, 3.768793>,  <3.079877, 2.162402, 4.118202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.093842, 2.356613, 3.768793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161577, 0.865299, 0.474500,
		0.986242, 0.124576, 0.108658,
		0.034911, 0.485529, -0.873523,
		3.104315, 2.502272, 3.506736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.442778, 2.768836, 4.197330>,  <3.079877, 2.162402, 4.118202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.442778, 2.768836, 4.197330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.229706, 2.858921, 3.871010>,  <3.101863, 2.912972, 3.675218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.229706, 2.858921, 3.871010>,  <3.442778, 2.768836, 4.197330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.229706, 2.858921, 3.871010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120010, 0.934101, 0.336234,
		0.837765, 0.277009, -0.470549,
		-0.532680, 0.225214, -0.815801,
		3.069902, 2.926485, 3.626270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.847557, 3.048114, 4.667284>,  <3.442778, 2.768836, 4.197330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.847557, 3.048114, 4.667284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.056763, 3.325077, 4.866091>,  <4.182286, 3.491255, 4.985375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.056763, 3.325077, 4.866091>,  <3.847557, 3.048114, 4.667284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.056763, 3.325077, 4.866091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025920, -0.595785, 0.802726,
		0.851930, -0.406954, -0.329551,
		0.523013, 0.692408, 0.497019,
		4.213667, 3.532799, 5.015196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.547938, 2.776289, 4.960738>,  <3.847557, 3.048114, 4.667284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.547938, 2.776289, 4.960738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.460526, 3.087299, 5.196602>,  <4.408078, 3.273906, 5.338120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.460526, 3.087299, 5.196602>,  <4.547938, 2.776289, 4.960738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.460526, 3.087299, 5.196602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156613, -0.568486, 0.807649,
		0.963180, 0.268845, 0.002462,
		-0.218531, 0.777526, 0.589659,
		4.394966, 3.320557, 5.373499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.147967, 2.808084, 5.561022>,  <4.547938, 2.776289, 4.960738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.147967, 2.808084, 5.561022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.847511, 3.033607, 5.698374>,  <4.667238, 3.168922, 5.780785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.847511, 3.033607, 5.698374>,  <5.147967, 2.808084, 5.561022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.847511, 3.033607, 5.698374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169603, -0.337878, 0.925783,
		0.637986, 0.753629, 0.158169,
		-0.751138, 0.563810, 0.343379,
		4.622170, 3.202750, 5.801388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.441527, 2.982302, 6.138775>,  <5.147967, 2.808084, 5.561022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.441527, 2.982302, 6.138775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.050812, 3.060566, 6.173655>,  <4.816383, 3.107524, 6.194582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.050812, 3.060566, 6.173655>,  <5.441527, 2.982302, 6.138775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.050812, 3.060566, 6.173655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025011, -0.508460, 0.860722,
		0.212745, 0.838562, 0.501551,
		-0.976788, 0.195659, 0.087199,
		4.757775, 3.119263, 6.199814>
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
