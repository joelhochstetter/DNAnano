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
	<3.504161, 2.109074, 2.993557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.305537, 2.126640, 2.646801>,  <3.186363, 2.137180, 2.438747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.305537, 2.126640, 2.646801>,  <3.504161, 2.109074, 2.993557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.305537, 2.126640, 2.646801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041228, 0.996399, 0.074093,
		0.867022, 0.072532, -0.492962,
		-0.496561, 0.043916, -0.866890,
		3.156569, 2.139815, 2.386734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.803308, 2.632629, 2.538325>,  <3.504161, 2.109074, 2.993557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.803308, 2.632629, 2.538325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.419991, 2.602081, 2.428164>,  <3.190002, 2.583753, 2.362067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.419991, 2.602081, 2.428164>,  <3.803308, 2.632629, 2.538325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.419991, 2.602081, 2.428164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066995, 0.996813, -0.043302,
		0.277832, -0.023046, -0.960353,
		-0.958291, -0.076369, -0.275402,
		3.132504, 2.579170, 2.345543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.678118, 2.976024, 1.811345>,  <3.803308, 2.632629, 2.538325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.678118, 2.976024, 1.811345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.344060, 2.963318, 2.030989>,  <3.143625, 2.955694, 2.162775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.344060, 2.963318, 2.030989>,  <3.678118, 2.976024, 1.811345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.344060, 2.963318, 2.030989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153216, 0.972252, -0.176781,
		-0.528258, -0.231771, -0.816839,
		-0.835146, -0.031766, 0.549111,
		3.093516, 2.953788, 2.195722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.035143, 3.337151, 1.479881>,  <3.678118, 2.976024, 1.811345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.035143, 3.337151, 1.479881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.033916, 3.377937, 1.877794>,  <3.033181, 3.402409, 2.116542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.033916, 3.377937, 1.877794>,  <3.035143, 3.337151, 1.479881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.033916, 3.377937, 1.877794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031228, 0.994293, -0.102012,
		-0.999508, -0.031378, 0.000136,
		-0.003066, 0.101966, 0.994783,
		3.032997, 3.408527, 2.176229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.363914, 3.796101, 1.661864>,  <3.035143, 3.337151, 1.479881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.363914, 3.796101, 1.661864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.674612, 3.805206, 1.913626>,  <2.861031, 3.810670, 2.064683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.674612, 3.805206, 1.913626>,  <2.363914, 3.796101, 1.661864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.674612, 3.805206, 1.913626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008803, 0.998857, -0.046989,
		-0.629755, 0.042039, 0.775655,
		0.776744, 0.022764, 0.629405,
		2.907635, 3.812035, 2.102447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.302574, 4.256409, 2.151578>,  <2.363914, 3.796101, 1.661864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.302574, 4.256409, 2.151578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.701757, 4.237732, 2.169004>,  <2.941267, 4.226526, 2.179460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.701757, 4.237732, 2.169004>,  <2.302574, 4.256409, 2.151578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.701757, 4.237732, 2.169004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049756, 0.996155, -0.072104,
		-0.040032, 0.074125, 0.996445,
		0.997959, -0.046693, 0.043566,
		3.001145, 4.223724, 2.182074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.458455, 4.748897, 2.615085>,  <2.302574, 4.256409, 2.151578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.458455, 4.748897, 2.615085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.794394, 4.674988, 2.410923>,  <2.995958, 4.630642, 2.288426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.794394, 4.674988, 2.410923>,  <2.458455, 4.748897, 2.615085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.794394, 4.674988, 2.410923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233016, 0.971961, 0.031558,
		0.490263, -0.145437, 0.859355,
		0.839849, -0.184771, -0.510405,
		3.046349, 4.619556, 2.257802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.024649, 5.028385, 3.113511>,  <2.458455, 4.748897, 2.615085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.024649, 5.028385, 3.113511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.136523, 5.014511, 2.729725>,  <3.203648, 5.006187, 2.499453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.136523, 5.014511, 2.729725>,  <3.024649, 5.028385, 3.113511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.136523, 5.014511, 2.729725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239060, 0.970388, 0.034608,
		0.929853, -0.239049, 0.279695,
		0.279686, -0.034683, -0.959465,
		3.220429, 5.004106, 2.441885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.965504, 1.294793, 2.593691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.071766, 1.434471, 2.234249>,  <3.135523, 1.518278, 2.018584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.071766, 1.434471, 2.234249>,  <2.965504, 1.294793, 2.593691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.071766, 1.434471, 2.234249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151598, -0.935631, -0.318766,
		-0.952074, -0.051545, -0.301493,
		0.265656, 0.349195, -0.898604,
		3.151463, 1.539230, 1.964668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.616230, 0.987507, 2.138001>,  <2.965504, 1.294793, 2.593691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.616230, 0.987507, 2.138001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.989738, 1.068100, 2.019695>,  <3.213843, 1.116456, 1.948712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.989738, 1.068100, 2.019695>,  <2.616230, 0.987507, 2.138001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.989738, 1.068100, 2.019695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188093, -0.979407, -0.073365,
		-0.304456, 0.012875, -0.952440,
		0.933771, 0.201484, -0.295764,
		3.269870, 1.128545, 1.930966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.760787, 0.701874, 1.522990>,  <2.616230, 0.987507, 2.138001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.760787, 0.701874, 1.522990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.108021, 0.735550, 1.718681>,  <3.316361, 0.755755, 1.836096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.108021, 0.735550, 1.718681>,  <2.760787, 0.701874, 1.522990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.108021, 0.735550, 1.718681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171638, -0.975635, -0.136660,
		0.465802, 0.202602, -0.861383,
		0.868083, 0.084189, 0.489227,
		3.368446, 0.760807, 1.865450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.214521, 0.204376, 1.277649>,  <2.760787, 0.701874, 1.522990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.214521, 0.204376, 1.277649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.328617, 0.284645, 1.652534>,  <3.397074, 0.332807, 1.877466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.328617, 0.284645, 1.652534>,  <3.214521, 0.204376, 1.277649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.328617, 0.284645, 1.652534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289748, -0.950138, 0.115256,
		0.913611, 0.238681, -0.329161,
		0.285239, 0.200673, 0.937213,
		3.414189, 0.344847, 1.933699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.817252, -0.114582, 1.315881>,  <3.214521, 0.204376, 1.277649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.817252, -0.114582, 1.315881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.665123, -0.078934, 1.684101>,  <3.573846, -0.057545, 1.905033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.665123, -0.078934, 1.684101>,  <3.817252, -0.114582, 1.315881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.665123, -0.078934, 1.684101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193104, -0.965756, 0.173278,
		0.904470, 0.243664, 0.350090,
		-0.380323, 0.089121, 0.920550,
		3.551026, -0.052198, 1.960266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.326503, -0.429255, 1.759719>,  <3.817252, -0.114582, 1.315881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.326503, -0.429255, 1.759719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.958855, -0.440475, 1.916908>,  <3.738266, -0.447208, 2.011222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.958855, -0.440475, 1.916908>,  <4.326503, -0.429255, 1.759719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.958855, -0.440475, 1.916908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112466, -0.974638, 0.193473,
		0.377580, 0.222022, 0.898966,
		-0.919122, -0.028051, 0.392974,
		3.683118, -0.448891, 2.034801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.232131, -0.932959, 2.232518>,  <4.326503, -0.429255, 1.759719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.232131, -0.932959, 2.232518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.837379, -0.869392, 2.221077>,  <3.600529, -0.831252, 2.214212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.837379, -0.869392, 2.221077>,  <4.232131, -0.932959, 2.232518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.837379, -0.869392, 2.221077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157444, -0.907731, 0.388891,
		0.035837, 0.388291, 0.920840,
		-0.986878, 0.158917, -0.028604,
		3.541316, -0.821717, 2.212496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.969013, -1.088867, 2.860498>,  <4.232131, -0.932959, 2.232518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.969013, -1.088867, 2.860498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.656448, -1.134613, 2.615120>,  <3.468910, -1.162060, 2.467893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.656448, -1.134613, 2.615120>,  <3.969013, -1.088867, 2.860498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.656448, -1.134613, 2.615120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056870, -0.965920, 0.252517,
		-0.621419, 0.232207, 0.748277,
		-0.781412, -0.114364, -0.613446,
		3.422025, -1.168922, 2.431086>
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
