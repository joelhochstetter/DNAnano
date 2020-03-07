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
	<0.673924, 3.662396, 4.790655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.021652, 3.856018, 4.830597>,  <1.230289, 3.972191, 4.854562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.021652, 3.856018, 4.830597>,  <0.673924, 3.662396, 4.790655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.021652, 3.856018, 4.830597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183023, -0.127603, -0.974792,
		-0.459112, 0.865683, -0.199522,
		0.869321, 0.484056, 0.099856,
		1.282449, 4.001235, 4.860554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.574400, 4.308574, 4.435854>,  <0.673924, 3.662396, 4.790655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.574400, 4.308574, 4.435854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.944061, 4.158890, 4.466599>,  <1.165858, 4.069079, 4.485045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.944061, 4.158890, 4.466599>,  <0.574400, 4.308574, 4.435854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.944061, 4.158890, 4.466599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110306, 0.068759, -0.991516,
		0.365751, 0.924791, 0.104822,
		0.924153, -0.374211, 0.076861,
		1.221307, 4.046627, 4.489657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.092049, 4.813069, 4.230114>,  <0.574400, 4.308574, 4.435854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.092049, 4.813069, 4.230114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.183014, 4.434982, 4.136436>,  <1.237593, 4.208130, 4.080230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.183014, 4.434982, 4.136436>,  <1.092049, 4.813069, 4.230114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.183014, 4.434982, 4.136436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106256, 0.214973, -0.970822,
		0.967984, 0.245662, -0.051548,
		0.227413, -0.945218, -0.234194,
		1.251238, 4.151417, 4.066178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.604257, 4.807589, 3.682260>,  <1.092049, 4.813069, 4.230114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.604257, 4.807589, 3.682260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.393131, 4.468063, 3.670074>,  <1.266456, 4.264349, 3.662763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.393131, 4.468063, 3.670074>,  <1.604257, 4.807589, 3.682260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.393131, 4.468063, 3.670074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337979, 0.242800, -0.909295,
		0.779218, -0.469644, -0.415035,
		-0.527815, -0.848813, -0.030464,
		1.234787, 4.213419, 3.660935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.596321, 4.465979, 3.016880>,  <1.604257, 4.807589, 3.682260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.596321, 4.465979, 3.016880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.267223, 4.308731, 3.181099>,  <1.069765, 4.214382, 3.279630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.267223, 4.308731, 3.181099>,  <1.596321, 4.465979, 3.016880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.267223, 4.308731, 3.181099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442109, -0.011376, -0.896889,
		0.357255, -0.919417, -0.164442,
		-0.822744, -0.393120, 0.410547,
		1.020400, 4.190795, 3.304263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.415946, 3.738579, 2.745801>,  <1.596321, 4.465979, 3.016880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.415946, 3.738579, 2.745801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.094097, 3.941650, 2.868988>,  <0.900988, 4.063493, 2.942900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.094097, 3.941650, 2.868988>,  <1.415946, 3.738579, 2.745801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.094097, 3.941650, 2.868988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388133, -0.057172, -0.919828,
		-0.449372, -0.859647, 0.243049,
		-0.804623, 0.507680, 0.307966,
		0.852710, 4.093954, 2.961378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.889132, 3.282349, 2.484310>,  <1.415946, 3.738579, 2.745801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.889132, 3.282349, 2.484310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.742489, 3.647781, 2.554703>,  <0.654503, 3.867041, 2.596938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.742489, 3.647781, 2.554703>,  <0.889132, 3.282349, 2.484310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.742489, 3.647781, 2.554703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521463, -0.045120, -0.852080,
		-0.770504, -0.404146, 0.492940,
		-0.366607, 0.913581, 0.175982,
		0.632507, 3.921856, 2.607497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.146806, 3.205546, 2.287416>,  <0.889132, 3.282349, 2.484310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.146806, 3.205546, 2.287416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.233826, 3.595566, 2.305084>,  <0.286038, 3.829578, 2.315685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.233826, 3.595566, 2.305084>,  <0.146806, 3.205546, 2.287416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.233826, 3.595566, 2.305084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527201, 0.155470, -0.835397,
		-0.821420, 0.158454, 0.547870,
		0.217549, 0.975050, 0.044169,
		0.299091, 3.888081, 2.318335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.699108, 3.509995, 1.106779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.692429, 3.110504, 1.125824>,  <0.688421, 2.870810, 1.137251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.692429, 3.110504, 1.125824>,  <0.699108, 3.509995, 1.106779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.692429, 3.110504, 1.125824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969085, -0.027889, -0.245147,
		0.246163, 0.042047, 0.968316,
		-0.016698, -0.998726, 0.047613,
		0.687419, 2.810886, 1.140108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.345871, 3.337477, 1.437456>,  <0.699108, 3.509995, 1.106779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.345871, 3.337477, 1.437456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.214983, 3.026749, 1.222244>,  <1.136450, 2.840312, 1.093117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.214983, 3.026749, 1.222244>,  <1.345871, 3.337477, 1.437456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.214983, 3.026749, 1.222244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926072, -0.150391, -0.346081,
		0.187928, -0.611499, 0.768604,
		-0.327220, -0.776821, -0.538030,
		1.116817, 2.793702, 1.060835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.166702, 4.117445, 1.593217>,  <1.345871, 3.337477, 1.437456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.166702, 4.117445, 1.593217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.775153, 4.199066, 1.588005>,  <0.540224, 4.248039, 1.584878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.775153, 4.199066, 1.588005>,  <1.166702, 4.117445, 1.593217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.775153, 4.199066, 1.588005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040973, 0.258195, 0.965224,
		0.200322, 0.944298, -0.261101,
		-0.978873, 0.204053, -0.013031,
		0.481491, 4.260282, 1.584096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.147239, 4.807432, 1.883703>,  <1.166702, 4.117445, 1.593217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.147239, 4.807432, 1.883703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.794323, 4.620728, 1.908028>,  <0.582574, 4.508705, 1.922622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.794323, 4.620728, 1.908028>,  <1.147239, 4.807432, 1.883703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.794323, 4.620728, 1.908028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092620, 0.298816, 0.949806,
		-0.461503, 0.832372, -0.306873,
		-0.882290, -0.466761, 0.060811,
		0.529636, 4.480699, 1.926271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.582046, 5.122228, 2.284807>,  <1.147239, 4.807432, 1.883703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.582046, 5.122228, 2.284807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.461167, 4.741714, 2.309258>,  <0.388639, 4.513406, 2.323928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.461167, 4.741714, 2.309258>,  <0.582046, 5.122228, 2.284807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.461167, 4.741714, 2.309258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131456, 0.021922, 0.991080,
		-0.944137, 0.307538, 0.118427,
		-0.302199, -0.951283, 0.061125,
		0.370507, 4.456329, 2.327595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.019732, 5.043445, 2.849865>,  <0.582046, 5.122228, 2.284807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.019732, 5.043445, 2.849865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.218210, 4.703827, 2.777298>,  <0.337297, 4.500056, 2.733758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.218210, 4.703827, 2.777298>,  <0.019732, 5.043445, 2.849865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.218210, 4.703827, 2.777298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148066, -0.123140, 0.981281,
		-0.855492, -0.513770, 0.064614,
		0.496196, -0.849045, -0.181417,
		0.367069, 4.449113, 2.722873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.116894, 4.695610, 3.455747>,  <0.019732, 5.043445, 2.849865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.116894, 4.695610, 3.455747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.182163, 4.496613, 3.279778>,  <0.361597, 4.377214, 3.174196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.182163, 4.496613, 3.279778>,  <-0.116894, 4.695610, 3.455747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.182163, 4.496613, 3.279778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341743, -0.279783, 0.897181,
		-0.569426, -0.821109, -0.039162,
		0.747640, -0.497495, -0.439924,
		0.406455, 4.347364, 3.147800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.134481, 3.943707, 3.803117>,  <-0.116894, 4.695610, 3.455747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.134481, 3.943707, 3.803117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.226727, 4.041611, 3.661896>,  <0.443452, 4.100353, 3.577163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.226727, 4.041611, 3.661896>,  <-0.134481, 3.943707, 3.803117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.226727, 4.041611, 3.661896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352109, 0.049132, 0.934668,
		0.246117, -0.968338, -0.041816,
		0.903020, 0.244761, -0.353053,
		0.497633, 4.115039, 3.555980>
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
