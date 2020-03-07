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
	<1.932306, 2.499749, 1.368202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.176735, 2.646267, 1.087512>,  <2.323392, 2.734178, 0.919098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.176735, 2.646267, 1.087512>,  <1.932306, 2.499749, 1.368202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.176735, 2.646267, 1.087512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136656, 0.824366, 0.549315,
		0.779689, -0.431567, 0.453692,
		0.611074, 0.366295, -0.701724,
		2.360057, 2.756155, 0.876995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.477243, 2.900431, 1.697997>,  <1.932306, 2.499749, 1.368202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.477243, 2.900431, 1.697997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.404747, 3.065144, 1.340766>,  <2.361249, 3.163971, 1.126428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.404747, 3.065144, 1.340766>,  <2.477243, 2.900431, 1.697997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.404747, 3.065144, 1.340766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044309, 0.903776, 0.425707,
		0.982440, 0.116726, -0.145555,
		-0.181241, 0.411782, -0.893077,
		2.350375, 3.188678, 1.072843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.924370, 3.515631, 1.648431>,  <2.477243, 2.900431, 1.697997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.924370, 3.515631, 1.648431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.635731, 3.548897, 1.373511>,  <2.462547, 3.568856, 1.208560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.635731, 3.548897, 1.373511>,  <2.924370, 3.515631, 1.648431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.635731, 3.548897, 1.373511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184290, 0.933864, 0.306487,
		0.667333, 0.347823, -0.658548,
		-0.721598, 0.083165, -0.687299,
		2.419251, 3.573846, 1.167322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.010226, 4.146698, 1.151884>,  <2.924370, 3.515631, 1.648431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.010226, 4.146698, 1.151884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.632160, 4.032146, 1.089079>,  <2.405321, 3.963415, 1.051396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.632160, 4.032146, 1.089079>,  <3.010226, 4.146698, 1.151884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.632160, 4.032146, 1.089079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294297, 0.955267, 0.029228,
		0.141619, 0.073833, -0.987164,
		-0.945163, -0.286380, -0.157013,
		2.348611, 3.946232, 1.041975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.728166, 4.320830, 0.458257>,  <3.010226, 4.146698, 1.151884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.728166, 4.320830, 0.458257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.489849, 4.327835, 0.779436>,  <2.346859, 4.332038, 0.972143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.489849, 4.327835, 0.779436>,  <2.728166, 4.320830, 0.458257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.489849, 4.327835, 0.779436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071848, 0.994591, -0.075005,
		-0.799919, -0.102378, -0.591311,
		-0.595791, 0.017513, 0.802948,
		2.311112, 4.333089, 1.020320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.018326, 4.658179, 0.411655>,  <2.728166, 4.320830, 0.458257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.018326, 4.658179, 0.411655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.113464, 4.678093, 0.799665>,  <2.170547, 4.690041, 1.032471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.113464, 4.678093, 0.799665>,  <2.018326, 4.658179, 0.411655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.113464, 4.678093, 0.799665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135500, 0.990621, -0.017617,
		-0.961805, -0.127248, 0.242361,
		0.237846, 0.049784, 0.970026,
		2.184818, 4.693028, 1.090673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.533943, 5.074392, 0.870442>,  <2.018326, 4.658179, 0.411655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.533943, 5.074392, 0.870442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.926876, 5.102707, 0.939740>,  <2.162636, 5.119696, 0.981319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.926876, 5.102707, 0.939740>,  <1.533943, 5.074392, 0.870442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.926876, 5.102707, 0.939740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048007, 0.990044, -0.132318,
		-0.180888, 0.121663, 0.975950,
		0.982331, 0.070787, 0.173246,
		2.221575, 5.123943, 0.991714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.785391, 4.766975, 1.561203>,  <1.533943, 5.074392, 0.870442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.785391, 4.766975, 1.561203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.619579, 4.430016, 1.698915>,  <1.520092, 4.227840, 1.781543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.619579, 4.430016, 1.698915>,  <1.785391, 4.766975, 1.561203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.619579, 4.430016, 1.698915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775776, -0.524886, -0.350238,
		0.475749, 0.121902, 0.871093,
		-0.414529, -0.842398, 0.344283,
		1.495220, 4.177296, 1.802200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.913029, -0.441175, 4.024982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.976382, -0.098103, 4.220655>,  <2.014394, 0.107741, 4.338059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.976382, -0.098103, 4.220655>,  <1.913029, -0.441175, 4.024982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.976382, -0.098103, 4.220655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965487, 0.238274, -0.105168,
		-0.206760, -0.455643, 0.865817,
		0.158382, 0.857680, 0.489183,
		2.023897, 0.159201, 4.367410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.438216, -0.398300, 4.593679>,  <1.913029, -0.441175, 4.024982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.438216, -0.398300, 4.593679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.522684, -0.031448, 4.458457>,  <1.573365, 0.188663, 4.377324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.522684, -0.031448, 4.458457>,  <1.438216, -0.398300, 4.593679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.522684, -0.031448, 4.458457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977095, 0.188753, -0.098275,
		-0.026322, 0.351065, 0.935981,
		0.211170, 0.917129, -0.338055,
		1.586035, 0.243690, 4.357040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.062908, 0.067988, 4.956324>,  <1.438216, -0.398300, 4.593679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.062908, 0.067988, 4.956324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.136949, 0.238262, 4.602030>,  <1.181373, 0.340427, 4.389453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.136949, 0.238262, 4.602030>,  <1.062908, 0.067988, 4.956324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.136949, 0.238262, 4.602030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940403, 0.338368, -0.033906,
		0.285272, 0.839225, 0.462949,
		0.185102, 0.425686, -0.885736,
		1.192479, 0.365968, 4.336309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.960231, 0.865683, 5.030143>,  <1.062908, 0.067988, 4.956324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.960231, 0.865683, 5.030143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.915254, 0.730530, 4.656364>,  <0.888267, 0.649438, 4.432097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.915254, 0.730530, 4.656364>,  <0.960231, 0.865683, 5.030143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.915254, 0.730530, 4.656364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925810, 0.377165, -0.024973,
		0.360879, 0.862312, -0.355225,
		-0.112444, -0.337883, -0.934447,
		0.881521, 0.629165, 4.376030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.752137, 1.507955, 4.539598>,  <0.960231, 0.865683, 5.030143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.752137, 1.507955, 4.539598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.602004, 1.160290, 4.410802>,  <0.511924, 0.951690, 4.333524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.602004, 1.160290, 4.410802>,  <0.752137, 1.507955, 4.539598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.602004, 1.160290, 4.410802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916268, 0.400367, -0.012668,
		0.139925, 0.290276, -0.946658,
		-0.375333, -0.869164, -0.321992,
		0.489404, 0.899541, 4.314204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.127081, 1.692248, 4.255965>,  <0.752137, 1.507955, 4.539598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.127081, 1.692248, 4.255965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.054617, 1.299156, 4.271054>,  <0.011138, 1.063301, 4.280107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.054617, 1.299156, 4.271054>,  <0.127081, 1.692248, 4.255965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.054617, 1.299156, 4.271054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945108, 0.184575, 0.269634,
		-0.271940, 0.013195, -0.962224,
		-0.181161, -0.982730, 0.037723,
		0.000269, 1.004337, 4.282371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.320550, 1.303130, 3.733584>,  <0.127081, 1.692248, 4.255965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.320550, 1.303130, 3.733584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.312993, 1.219627, 4.124698>,  <-0.308459, 1.169526, 4.359366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.312993, 1.219627, 4.124698>,  <-0.320550, 1.303130, 3.733584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.312993, 1.219627, 4.124698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962623, 0.260478, 0.074212,
		-0.270184, -0.942641, -0.196033,
		0.018893, -0.208756, 0.977785,
		-0.307325, 1.157000, 4.418033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.808429, 0.725174, 3.943632>,  <-0.320550, 1.303130, 3.733584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.808429, 0.725174, 3.943632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.733168, 1.037663, 4.181722>,  <-0.688011, 1.225155, 4.324575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.733168, 1.037663, 4.181722>,  <-0.808429, 0.725174, 3.943632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.733168, 1.037663, 4.181722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970846, 0.239586, -0.007564,
		-0.148516, -0.576449, 0.803524,
		0.188152, 0.781221, 0.595225,
		-0.676722, 1.272029, 4.360289>
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
