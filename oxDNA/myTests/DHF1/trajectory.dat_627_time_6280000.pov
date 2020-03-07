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
	<5.797823, 1.285500, 1.560411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.500124, 1.107145, 1.361502>,  <5.321505, 1.000132, 1.242156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.500124, 1.107145, 1.361502>,  <5.797823, 1.285500, 1.560411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.500124, 1.107145, 1.361502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349902, -0.373890, 0.858938,
		-0.568915, 0.813259, 0.122250,
		-0.744248, -0.445887, -0.497272,
		5.276850, 0.973379, 1.212320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.161361, 1.613232, 1.899168>,  <5.797823, 1.285500, 1.560411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.161361, 1.613232, 1.899168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.077734, 1.254044, 1.744280>,  <5.027557, 1.038531, 1.651347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.077734, 1.254044, 1.744280>,  <5.161361, 1.613232, 1.899168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.077734, 1.254044, 1.744280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445542, -0.265016, 0.855136,
		-0.870507, 0.351305, -0.344678,
		-0.209068, -0.897971, -0.387219,
		5.015014, 0.984652, 1.628114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.462611, 1.381404, 1.805939>,  <5.161361, 1.613232, 1.899168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.462611, 1.381404, 1.805939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.727507, 1.100933, 1.911612>,  <4.886444, 0.932651, 1.975015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.727507, 1.100933, 1.911612>,  <4.462611, 1.381404, 1.805939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.727507, 1.100933, 1.911612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494691, -0.144331, 0.857000,
		-0.562780, -0.698226, -0.442448,
		0.662238, -0.701177, 0.264180,
		4.926178, 0.890580, 1.990866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.143234, 0.649344, 1.758019>,  <4.462611, 1.381404, 1.805939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.143234, 0.649344, 1.758019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.391066, 0.782961, 2.042143>,  <4.539764, 0.863131, 2.212617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.391066, 0.782961, 2.042143>,  <4.143234, 0.649344, 1.758019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.391066, 0.782961, 2.042143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747010, -0.026950, 0.664266,
		0.241037, -0.942172, 0.232836,
		0.619578, 0.334044, 0.710308,
		4.576939, 0.883174, 2.255235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.114298, 0.171759, 2.144434>,  <4.143234, 0.649344, 1.758019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.114298, 0.171759, 2.144434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.248550, 0.476330, 2.366274>,  <4.329102, 0.659072, 2.499378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.248550, 0.476330, 2.366274>,  <4.114298, 0.171759, 2.144434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.248550, 0.476330, 2.366274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695498, -0.196775, 0.691058,
		0.635322, -0.617664, 0.463527,
		0.335631, 0.761427, 0.554600,
		4.349240, 0.704758, 2.532654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.001143, -0.165428, 2.862841>,  <4.114298, 0.171759, 2.144434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.001143, -0.165428, 2.862841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.034805, 0.231155, 2.902700>,  <4.055002, 0.469105, 2.926616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.034805, 0.231155, 2.902700>,  <4.001143, -0.165428, 2.862841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.034805, 0.231155, 2.902700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705608, -0.011318, 0.708512,
		0.703588, -0.129936, 0.698628,
		0.084154, 0.991458, 0.099647,
		4.060051, 0.528593, 2.932595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.047359, 0.003517, 3.645468>,  <4.001143, -0.165428, 2.862841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.047359, 0.003517, 3.645468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.934849, 0.346395, 3.472910>,  <3.867343, 0.552122, 3.369375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.934849, 0.346395, 3.472910>,  <4.047359, 0.003517, 3.645468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.934849, 0.346395, 3.472910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642521, 0.165680, 0.748143,
		0.712778, 0.487613, 0.504164,
		-0.281274, 0.857195, -0.431395,
		3.850467, 0.603554, 3.343492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.172905, 0.560448, 4.152299>,  <4.047359, 0.003517, 3.645468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.172905, 0.560448, 4.152299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.894405, 0.677666, 3.890197>,  <3.727305, 0.747996, 3.732935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.894405, 0.677666, 3.890197>,  <4.172905, 0.560448, 4.152299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.894405, 0.677666, 3.890197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616512, 0.223393, 0.754989,
		0.367625, 0.929635, 0.025128,
		-0.696250, 0.293044, -0.655256,
		3.685530, 0.765579, 3.693620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.775673, 0.292906, 4.392624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.915485, 0.656241, 4.484491>,  <2.999373, 0.874243, 4.539612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.915485, 0.656241, 4.484491>,  <2.775673, 0.292906, 4.392624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.915485, 0.656241, 4.484491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023679, 0.236488, -0.971346,
		-0.936626, 0.344954, 0.061151,
		0.349531, 0.908339, 0.229669,
		3.020345, 0.928743, 4.553392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.363139, 0.709646, 3.982948>,  <2.775673, 0.292906, 4.392624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.363139, 0.709646, 3.982948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.695236, 0.917792, 4.062866>,  <2.894494, 1.042680, 4.110817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.695236, 0.917792, 4.062866>,  <2.363139, 0.709646, 3.982948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.695236, 0.917792, 4.062866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120628, 0.182210, -0.975832,
		-0.544194, 0.834278, 0.088508,
		0.830242, 0.520365, 0.199795,
		2.944309, 1.073902, 4.122805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.336835, 1.284662, 3.496160>,  <2.363139, 0.709646, 3.982948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.336835, 1.284662, 3.496160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.698395, 1.173499, 3.626226>,  <2.915331, 1.106801, 3.704266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.698395, 1.173499, 3.626226>,  <2.336835, 1.284662, 3.496160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.698395, 1.173499, 3.626226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375521, 0.151567, -0.914337,
		0.204817, 0.948575, 0.241361,
		0.903899, -0.277908, 0.325166,
		2.969565, 1.090127, 3.723776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.856351, 1.369193, 2.885219>,  <2.336835, 1.284662, 3.496160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.856351, 1.369193, 2.885219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.119312, 1.210374, 3.141399>,  <3.277089, 1.115083, 3.295107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.119312, 1.210374, 3.141399>,  <2.856351, 1.369193, 2.885219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.119312, 1.210374, 3.141399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667328, -0.087998, -0.739547,
		0.349992, 0.913571, 0.207110,
		0.657403, -0.397046, 0.640450,
		3.316533, 1.091261, 3.333534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.470223, 1.657511, 2.684434>,  <2.856351, 1.369193, 2.885219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.470223, 1.657511, 2.684434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.585461, 1.325398, 2.875278>,  <3.654603, 1.126131, 2.989785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.585461, 1.325398, 2.875278>,  <3.470223, 1.657511, 2.684434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.585461, 1.325398, 2.875278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817828, -0.045858, -0.573633,
		0.498156, 0.555456, 0.665815,
		0.288095, -0.830280, 0.477112,
		3.671889, 1.076314, 3.018412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.141713, 1.838237, 2.761799>,  <3.470223, 1.657511, 2.684434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.141713, 1.838237, 2.761799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.112644, 1.447487, 2.842234>,  <4.095203, 1.213037, 2.890494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.112644, 1.447487, 2.842234>,  <4.141713, 1.838237, 2.761799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.112644, 1.447487, 2.842234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884564, -0.156266, -0.439462,
		0.460722, 0.145937, 0.875464,
		-0.072672, -0.976874, 0.201086,
		4.090843, 1.154425, 2.902559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.710432, 1.691400, 3.241502>,  <4.141713, 1.838237, 2.761799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.710432, 1.691400, 3.241502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.578102, 1.383286, 3.023432>,  <4.498704, 1.198418, 2.892590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.578102, 1.383286, 3.023432>,  <4.710432, 1.691400, 3.241502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.578102, 1.383286, 3.023432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864046, -0.014956, -0.503191,
		0.379447, -0.637525, 0.670509,
		-0.330825, -0.770284, -0.545176,
		4.478855, 1.152201, 2.859879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.278915, 1.252978, 3.296215>,  <4.710432, 1.691400, 3.241502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.278915, 1.252978, 3.296215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.075611, 1.176974, 2.960222>,  <4.953629, 1.131372, 2.758627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.075611, 1.176974, 2.960222>,  <5.278915, 1.252978, 3.296215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.075611, 1.176974, 2.960222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822548, 0.181833, -0.538843,
		0.255121, -0.964797, 0.063874,
		-0.508259, -0.190009, -0.839981,
		4.923133, 1.119972, 2.708228>
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
