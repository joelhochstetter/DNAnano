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
	<2.059431, 6.007145, 1.771582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.903437, 5.943745, 2.134413>,  <1.809840, 5.905704, 2.352111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.903437, 5.943745, 2.134413>,  <2.059431, 6.007145, 1.771582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.903437, 5.943745, 2.134413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130527, -0.984643, -0.115937,
		0.911523, 0.073185, 0.404684,
		-0.389985, -0.158502, 0.907077,
		1.786441, 5.896194, 2.406536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.535676, 5.549877, 2.220875>,  <2.059431, 6.007145, 1.771582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.535676, 5.549877, 2.220875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.148613, 5.511410, 2.314159>,  <1.916375, 5.488329, 2.370130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.148613, 5.511410, 2.314159>,  <2.535676, 5.549877, 2.220875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.148613, 5.511410, 2.314159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078630, -0.993410, -0.083386,
		0.239694, -0.062352, 0.968844,
		-0.967659, -0.096167, 0.233212,
		1.858315, 5.482560, 2.384123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.385543, 5.026732, 2.843061>,  <2.535676, 5.549877, 2.220875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.385543, 5.026732, 2.843061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.102493, 5.074661, 2.564519>,  <1.932663, 5.103419, 2.397394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.102493, 5.074661, 2.564519>,  <2.385543, 5.026732, 2.843061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.102493, 5.074661, 2.564519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061397, -0.971362, -0.229535,
		-0.703916, -0.205179, 0.680003,
		-0.707624, 0.119823, -0.696355,
		1.890206, 5.110608, 2.355613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.692739, 4.600100, 2.926347>,  <2.385543, 5.026732, 2.843061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.692739, 4.600100, 2.926347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.802992, 4.666836, 2.547677>,  <1.869144, 4.706878, 2.320475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.802992, 4.666836, 2.547677>,  <1.692739, 4.600100, 2.926347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.802992, 4.666836, 2.547677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020009, -0.985605, -0.167876,
		-0.961055, 0.027330, -0.275003,
		0.275633, 0.166841, -0.946674,
		1.885682, 4.716888, 2.263675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.327782, 4.112664, 2.523617>,  <1.692739, 4.600100, 2.926347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.327782, 4.112664, 2.523617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.641827, 4.211681, 2.296523>,  <1.830253, 4.271092, 2.160267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.641827, 4.211681, 2.296523>,  <1.327782, 4.112664, 2.523617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.641827, 4.211681, 2.296523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176257, -0.968053, -0.178346,
		-0.593745, 0.039954, -0.803661,
		0.785112, 0.247543, -0.567734,
		1.877360, 4.285944, 2.126203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.402108, 3.523676, 2.096134>,  <1.327782, 4.112664, 2.523617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.402108, 3.523676, 2.096134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.743402, 3.727367, 2.051100>,  <1.948179, 3.849582, 2.024079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.743402, 3.727367, 2.051100>,  <1.402108, 3.523676, 2.096134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.743402, 3.727367, 2.051100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488310, -0.855866, -0.170432,
		-0.183147, 0.090442, -0.978916,
		0.853235, 0.509229, -0.112585,
		1.999373, 3.880136, 2.017324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.765595, 3.141423, 1.594349>,  <1.402108, 3.523676, 2.096134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.765595, 3.141423, 1.594349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.036182, 3.378250, 1.769549>,  <2.198535, 3.520347, 1.874669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.036182, 3.378250, 1.769549>,  <1.765595, 3.141423, 1.594349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.036182, 3.378250, 1.769549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725738, -0.637073, -0.259699,
		0.125278, 0.493551, -0.860647,
		0.676469, 0.592069, 0.438000,
		2.239123, 3.555871, 1.900949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.448125, 3.165774, 1.165583>,  <1.765595, 3.141423, 1.594349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.448125, 3.165774, 1.165583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.564810, 3.264328, 1.535275>,  <2.634820, 3.323460, 1.757089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.564810, 3.264328, 1.535275>,  <2.448125, 3.165774, 1.165583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.564810, 3.264328, 1.535275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791926, -0.604110, -0.088907,
		0.536430, 0.757857, -0.371343,
		0.291711, 0.246384, 0.924229,
		2.652323, 3.338243, 1.812543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.848759, 2.437095, 2.085998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.223053, 2.373680, 2.212024>,  <2.447629, 2.335631, 2.287639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.223053, 2.373680, 2.212024>,  <1.848759, 2.437095, 2.085998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.223053, 2.373680, 2.212024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207532, 0.969767, -0.128386,
		-0.285185, 0.185521, 0.940347,
		0.935735, -0.158538, 0.315064,
		2.503773, 2.326119, 2.306543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.993046, 2.840298, 2.707149>,  <1.848759, 2.437095, 2.085998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.993046, 2.840298, 2.707149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.339836, 2.775116, 2.518767>,  <2.547910, 2.736006, 2.405738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.339836, 2.775116, 2.518767>,  <1.993046, 2.840298, 2.707149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.339836, 2.775116, 2.518767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108837, 0.984128, -0.140163,
		0.486320, 0.070261, 0.870951,
		0.866976, -0.162956, -0.470954,
		2.599929, 2.726229, 2.377481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.488842, 3.226620, 3.051649>,  <1.993046, 2.840298, 2.707149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.488842, 3.226620, 3.051649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.626518, 3.135391, 2.687338>,  <2.709124, 3.080654, 2.468752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.626518, 3.135391, 2.687338>,  <2.488842, 3.226620, 3.051649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.626518, 3.135391, 2.687338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071856, 0.973602, -0.216649,
		0.936146, 0.009125, 0.351493,
		0.344191, -0.228072, -0.910778,
		2.729776, 3.066970, 2.414105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.042108, 3.600655, 3.027185>,  <2.488842, 3.226620, 3.051649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.042108, 3.600655, 3.027185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.923790, 3.525505, 2.652547>,  <2.852799, 3.480415, 2.427765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.923790, 3.525505, 2.652547>,  <3.042108, 3.600655, 3.027185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.923790, 3.525505, 2.652547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035928, 0.981963, -0.185629,
		0.954575, -0.021258, -0.297210,
		-0.295796, -0.187875, -0.936594,
		2.835051, 3.469142, 2.371569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.279890, 4.162402, 2.426167>,  <3.042108, 3.600655, 3.027185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.279890, 4.162402, 2.426167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.955090, 4.009323, 2.249895>,  <2.760210, 3.917476, 2.144132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.955090, 4.009323, 2.249895>,  <3.279890, 4.162402, 2.426167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.955090, 4.009323, 2.249895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305509, 0.922024, -0.237775,
		0.497313, -0.058442, -0.865600,
		-0.812000, -0.382697, -0.440680,
		2.711490, 3.894514, 2.117691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.142374, 4.554163, 1.890378>,  <3.279890, 4.162402, 2.426167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.142374, 4.554163, 1.890378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.798119, 4.350655, 1.898895>,  <2.591565, 4.228549, 1.904005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.798119, 4.350655, 1.898895>,  <3.142374, 4.554163, 1.890378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.798119, 4.350655, 1.898895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496688, 0.829511, -0.255368,
		0.112263, -0.230355, -0.966609,
		-0.860638, -0.508772, 0.021291,
		2.539927, 4.198023, 1.905282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.712408, 4.650147, 1.209680>,  <3.142374, 4.554163, 1.890378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.712408, 4.650147, 1.209680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.454880, 4.546997, 1.497846>,  <2.300363, 4.485107, 1.670745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.454880, 4.546997, 1.497846>,  <2.712408, 4.650147, 1.209680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.454880, 4.546997, 1.497846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531560, 0.827961, -0.178674,
		-0.550399, -0.497977, -0.670134,
		-0.643821, -0.257875, 0.720414,
		2.261734, 4.469635, 1.713970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.996850, 4.752127, 0.914991>,  <2.712408, 4.650147, 1.209680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.996850, 4.752127, 0.914991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.970329, 4.786880, 1.312595>,  <1.954417, 4.807733, 1.551157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.970329, 4.786880, 1.312595>,  <1.996850, 4.752127, 0.914991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.970329, 4.786880, 1.312595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682717, 0.722553, -0.108694,
		-0.727668, -0.685834, 0.011410,
		-0.066302, 0.086883, 0.994010,
		1.950439, 4.812945, 1.610798>
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
