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
	<3.067081, 1.173209, 1.145565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.795296, 1.274433, 0.870090>,  <2.632225, 1.335168, 0.704806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.795296, 1.274433, 0.870090>,  <3.067081, 1.173209, 1.145565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.795296, 1.274433, 0.870090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733106, -0.196080, 0.651236,
		0.029765, 0.947371, 0.318750,
		-0.679463, 0.253061, -0.688687,
		2.591457, 1.350352, 0.663484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.411644, 1.509381, 1.366086>,  <3.067081, 1.173209, 1.145565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.411644, 1.509381, 1.366086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.300447, 1.283863, 1.054996>,  <2.233729, 1.148552, 0.868342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.300447, 1.283863, 1.054996>,  <2.411644, 1.509381, 1.366086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.300447, 1.283863, 1.054996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786370, -0.331413, 0.521332,
		-0.551673, 0.756506, -0.351221,
		-0.277992, -0.563794, -0.777725,
		2.217050, 1.114725, 0.821679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.658913, 1.607705, 1.358461>,  <2.411644, 1.509381, 1.366086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.658913, 1.607705, 1.358461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.778482, 1.261986, 1.196655>,  <1.850224, 1.054554, 1.099572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.778482, 1.261986, 1.196655>,  <1.658913, 1.607705, 1.358461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.778482, 1.261986, 1.196655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656615, -0.493884, 0.570031,
		-0.692461, 0.095216, -0.715145,
		0.298922, -0.864299, -0.404515,
		1.868159, 1.002696, 1.075301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.054035, 1.186703, 0.990200>,  <1.658913, 1.607705, 1.358461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.054035, 1.186703, 0.990200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.330055, 0.938820, 1.139755>,  <1.495667, 0.790090, 1.229488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.330055, 0.938820, 1.139755>,  <1.054035, 1.186703, 0.990200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.330055, 0.938820, 1.139755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695540, -0.424958, 0.579341,
		-0.200135, -0.659829, -0.724273,
		0.690051, -0.619707, 0.373888,
		1.537071, 0.752908, 1.251921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.932135, 0.463707, 0.899542>,  <1.054035, 1.186703, 0.990200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.932135, 0.463707, 0.899542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.145184, 0.516098, 1.234005>,  <1.273013, 0.547532, 1.434683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.145184, 0.516098, 1.234005>,  <0.932135, 0.463707, 0.899542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.145184, 0.516098, 1.234005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736833, -0.414311, 0.534250,
		0.416404, -0.900662, -0.124162,
		0.532620, 0.130978, 0.836158,
		1.304970, 0.555391, 1.484852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.858154, -0.157112, 1.154658>,  <0.932135, 0.463707, 0.899542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.858154, -0.157112, 1.154658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.990427, 0.077984, 1.450012>,  <1.069791, 0.219041, 1.627224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.990427, 0.077984, 1.450012>,  <0.858154, -0.157112, 1.154658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.990427, 0.077984, 1.450012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765283, -0.290847, 0.574238,
		0.552259, -0.754964, 0.353609,
		0.330683, 0.587739, 0.738384,
		1.089632, 0.254306, 1.671528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.918332, -0.571769, 1.851102>,  <0.858154, -0.157112, 1.154658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.918332, -0.571769, 1.851102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.899401, -0.181324, 1.935921>,  <0.888042, 0.052943, 1.986812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.899401, -0.181324, 1.935921>,  <0.918332, -0.571769, 1.851102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.899401, -0.181324, 1.935921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692427, -0.185062, 0.697350,
		0.719934, -0.113822, 0.684646,
		-0.047328, 0.976113, 0.212046,
		0.885202, 0.111510, 1.999534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.960319, -0.463635, 2.554885>,  <0.918332, -0.571769, 1.851102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.960319, -0.463635, 2.554885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.782866, -0.139763, 2.401207>,  <0.676394, 0.054561, 2.309000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.782866, -0.139763, 2.401207>,  <0.960319, -0.463635, 2.554885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.782866, -0.139763, 2.401207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806966, -0.174403, 0.564260,
		0.389866, 0.560357, 0.730756,
		-0.443633, 0.809681, -0.384195,
		0.649776, 0.103141, 2.285949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.122795, -0.570248, 2.477918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.299919, -0.255783, 2.650368>,  <-0.406193, -0.067104, 2.753838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.299919, -0.255783, 2.650368>,  <-0.122795, -0.570248, 2.477918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.299919, -0.255783, 2.650368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785933, 0.571758, -0.235374,
		-0.431542, 0.234609, -0.871051,
		-0.442810, 0.786162, 0.431125,
		-0.432762, -0.019934, 2.779705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.366922, 0.018374, 1.999070>,  <-0.122795, -0.570248, 2.477918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.366922, 0.018374, 1.999070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.266357, 0.160728, 2.359100>,  <-0.206019, 0.246141, 2.575119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.266357, 0.160728, 2.359100>,  <-0.366922, 0.018374, 1.999070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.266357, 0.160728, 2.359100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747874, 0.518881, -0.414061,
		-0.614391, 0.777244, -0.135704,
		0.251412, 0.355885, 0.900076,
		-0.190934, 0.267494, 2.629123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.401964, 0.729112, 1.976195>,  <-0.366922, 0.018374, 1.999070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.401964, 0.729112, 1.976195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.129234, 0.580467, 2.228233>,  <0.034403, 0.491280, 2.379457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.129234, 0.580467, 2.228233>,  <-0.401964, 0.729112, 1.976195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.129234, 0.580467, 2.228233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724404, 0.462820, -0.510917,
		-0.101758, 0.804800, 0.584759,
		0.681824, -0.371612, 0.630096,
		0.075313, 0.468984, 2.417262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.121182, 1.265308, 2.219915>,  <-0.401964, 0.729112, 1.976195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.121182, 1.265308, 2.219915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.288666, 0.903343, 2.250420>,  <0.389156, 0.686164, 2.268722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.288666, 0.903343, 2.250420>,  <0.121182, 1.265308, 2.219915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.288666, 0.903343, 2.250420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840297, 0.354226, -0.410397,
		0.344359, 0.235919, 0.908713,
		0.418710, -0.904912, 0.076261,
		0.414279, 0.631870, 2.273298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.829979, 1.393277, 2.245001>,  <0.121182, 1.265308, 2.219915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.829979, 1.393277, 2.245001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.832901, 1.002914, 2.157776>,  <0.834654, 0.768697, 2.105441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.832901, 1.002914, 2.157776>,  <0.829979, 1.393277, 2.245001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.832901, 1.002914, 2.157776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926415, 0.088695, -0.365908,
		0.376433, -0.199343, 0.904743,
		0.007305, -0.975908, -0.218062,
		0.835093, 0.710142, 2.092357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.502218, 1.180769, 2.469866>,  <0.829979, 1.393277, 2.245001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.502218, 1.180769, 2.469866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.359230, 0.898849, 2.224762>,  <1.273437, 0.729698, 2.077699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.359230, 0.898849, 2.224762>,  <1.502218, 1.180769, 2.469866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.359230, 0.898849, 2.224762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889034, -0.055831, -0.454424,
		0.286066, -0.707207, 0.646547,
		-0.357469, -0.704798, -0.612760,
		1.251989, 0.687410, 2.040934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.990125, 0.565542, 2.545166>,  <1.502218, 1.180769, 2.469866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.990125, 0.565542, 2.545166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.788834, 0.540657, 2.200401>,  <1.668059, 0.525726, 1.993543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.788834, 0.540657, 2.200401>,  <1.990125, 0.565542, 2.545166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.788834, 0.540657, 2.200401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857893, -0.155811, -0.489635,
		-0.103833, -0.985825, 0.131781,
		-0.503228, -0.062214, -0.861912,
		1.637865, 0.521993, 1.941828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.152067, -0.106688, 2.146619>,  <1.990125, 0.565542, 2.545166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.152067, -0.106688, 2.146619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.038742, 0.200485, 1.916832>,  <1.970747, 0.384789, 1.778960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.038742, 0.200485, 1.916832>,  <2.152067, -0.106688, 2.146619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.038742, 0.200485, 1.916832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872529, -0.042210, -0.486736,
		-0.398029, -0.639138, -0.658085,
		-0.283313, 0.767933, -0.574467,
		1.953748, 0.430865, 1.744492>
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
