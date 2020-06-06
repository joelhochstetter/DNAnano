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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.621756, 34.982418, 35.018997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.241436, 35.105297, 35.035084>,  <24.013245, 35.179024, 35.044735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.241436, 35.105297, 35.035084>,  <24.621756, 34.982418, 35.018997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.241436, 35.105297, 35.035084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243439, 0.660471, 0.710293,
		0.191632, 0.685135, -0.702756,
		-0.950797, 0.307194, 0.040221,
		23.956198, 35.197456, 35.047150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.057468, 35.595146, 34.802910>,  <24.621756, 34.982418, 35.018997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.057468, 35.595146, 34.802910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.055681, 35.980873, 34.908794>,  <25.054609, 36.212311, 34.972324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.055681, 35.980873, 34.908794>,  <25.057468, 35.595146, 34.802910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.055681, 35.980873, 34.908794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175052, 0.261377, -0.949231,
		-0.984549, 0.042095, -0.169974,
		-0.004469, 0.964318, 0.264707,
		25.054340, 36.270168, 34.988205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.547380, 35.954075, 34.349957>,  <25.057468, 35.595146, 34.802910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.547380, 35.954075, 34.349957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838921, 36.191925, 34.485718>,  <25.013844, 36.334637, 34.567173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838921, 36.191925, 34.485718>,  <24.547380, 35.954075, 34.349957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.838921, 36.191925, 34.485718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322582, 0.139015, -0.936278,
		-0.603920, 0.791891, -0.090495,
		0.728849, 0.594629, 0.339404,
		25.057575, 36.370316, 34.587540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.481861, 36.593937, 33.974743>,  <24.547380, 35.954075, 34.349957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.481861, 36.593937, 33.974743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.850105, 36.546890, 34.123680>,  <25.071053, 36.518661, 34.213043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.850105, 36.546890, 34.123680>,  <24.481861, 36.593937, 33.974743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.850105, 36.546890, 34.123680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389426, 0.206548, -0.897600,
		0.028669, 0.971341, 0.235955,
		0.920611, -0.117620, 0.372344,
		25.126289, 36.511604, 34.235382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.842278, 37.198399, 33.714592>,  <24.481861, 36.593937, 33.974743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.842278, 37.198399, 33.714592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.119282, 36.925144, 33.807335>,  <25.285484, 36.761192, 33.862980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.119282, 36.925144, 33.807335>,  <24.842278, 37.198399, 33.714592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.119282, 36.925144, 33.807335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383249, 0.076090, -0.920505,
		0.611187, 0.726318, 0.314504,
		0.692510, -0.683134, 0.231856,
		25.327034, 36.720203, 33.876892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.584867, 37.417725, 33.619801>,  <24.842278, 37.198399, 33.714592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.584867, 37.417725, 33.619801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.518518, 37.030247, 33.545925>,  <25.478710, 36.797760, 33.501598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.518518, 37.030247, 33.545925>,  <25.584867, 37.417725, 33.619801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.518518, 37.030247, 33.545925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462932, 0.088876, -0.881927,
		0.870736, -0.231783, 0.433700,
		-0.165870, -0.968699, -0.184688,
		25.468758, 36.739635, 33.490520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075987, 37.223106, 33.107746>,  <25.584867, 37.417725, 33.619801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075987, 37.223106, 33.107746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818817, 36.920486, 33.059940>,  <25.664516, 36.738914, 33.031258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818817, 36.920486, 33.059940>,  <26.075987, 37.223106, 33.107746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.818817, 36.920486, 33.059940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125162, 0.050166, -0.990867,
		0.755636, -0.652009, 0.062439,
		-0.642922, -0.756549, -0.119514,
		25.625940, 36.693523, 33.024086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.378805, 36.557640, 32.701611>,  <26.075987, 37.223106, 33.107746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.378805, 36.557640, 32.701611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985792, 36.606361, 32.645332>,  <25.749985, 36.635593, 32.611565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985792, 36.606361, 32.645332>,  <26.378805, 36.557640, 32.701611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985792, 36.606361, 32.645332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151854, 0.087758, -0.984499,
		-0.107569, -0.988667, -0.104721,
		-0.982532, 0.121804, -0.140693,
		25.691032, 36.642902, 32.603123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161610, 36.062588, 32.226055>,  <26.378805, 36.557640, 32.701611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161610, 36.062588, 32.226055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885345, 36.351341, 32.208786>,  <25.719587, 36.524593, 32.198425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885345, 36.351341, 32.208786>,  <26.161610, 36.062588, 32.226055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.885345, 36.351341, 32.208786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330880, 0.262357, -0.906469,
		-0.643043, -0.640349, -0.420059,
		-0.690662, 0.721888, -0.043172,
		25.678146, 36.567909, 32.195835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.881866, 36.086174, 31.579954>,  <26.161610, 36.062588, 32.226055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.881866, 36.086174, 31.579954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799984, 36.466354, 31.673540>,  <25.750854, 36.694462, 31.729692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799984, 36.466354, 31.673540>,  <25.881866, 36.086174, 31.579954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799984, 36.466354, 31.673540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257565, 0.282909, -0.923917,
		-0.944328, -0.128870, -0.302716,
		-0.204706, 0.950450, 0.233966,
		25.738571, 36.751488, 31.743731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.535652, 36.401661, 30.946918>,  <25.881866, 36.086174, 31.579954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.535652, 36.401661, 30.946918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673237, 36.708782, 31.163132>,  <25.755787, 36.893055, 31.292860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673237, 36.708782, 31.163132>,  <25.535652, 36.401661, 30.946918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673237, 36.708782, 31.163132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314504, 0.448202, -0.836781,
		-0.884748, 0.457818, -0.087313,
		0.343960, 0.767800, 0.540532,
		25.776424, 36.939121, 31.325291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295235, 37.148724, 30.716249>,  <25.535652, 36.401661, 30.946918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.295235, 37.148724, 30.716249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666176, 37.118328, 30.862808>,  <25.888741, 37.100090, 30.950743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666176, 37.118328, 30.862808>,  <25.295235, 37.148724, 30.716249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.666176, 37.118328, 30.862808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358357, 0.462187, -0.811149,
		-0.107707, 0.883521, 0.455840,
		0.927351, -0.075987, 0.366397,
		25.944382, 37.095531, 30.972727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673418, 37.288364, 30.023796>,  <25.295235, 37.148724, 30.716249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673418, 37.288364, 30.023796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929300, 37.580349, 30.120068>,  <26.082830, 37.755539, 30.177830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929300, 37.580349, 30.120068>,  <25.673418, 37.288364, 30.023796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929300, 37.580349, 30.120068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072001, -0.368665, 0.926770,
		0.765239, -0.575532, -0.288396,
		0.639707, 0.729965, 0.240678,
		26.121212, 37.799339, 30.192270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137766, 36.919662, 30.425682>,  <25.673418, 37.288364, 30.023796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.137766, 36.919662, 30.425682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129128, 37.311005, 30.507999>,  <26.123945, 37.545811, 30.557390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129128, 37.311005, 30.507999>,  <26.137766, 36.919662, 30.425682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.129128, 37.311005, 30.507999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080734, -0.206874, 0.975031,
		0.996502, 0.004442, 0.083454,
		-0.021596, 0.978358, 0.205792,
		26.122648, 37.604511, 30.569736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696049, 37.078743, 30.910833>,  <26.137766, 36.919662, 30.425682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696049, 37.078743, 30.910833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373919, 37.315853, 30.914286>,  <26.180641, 37.458118, 30.916357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373919, 37.315853, 30.914286>,  <26.696049, 37.078743, 30.910833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.373919, 37.315853, 30.914286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243076, -0.343449, 0.907170,
		0.540709, 0.728468, 0.420676,
		-0.805325, 0.592771, 0.008633,
		26.132320, 37.493683, 30.916876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670895, 37.381962, 31.570484>,  <26.696049, 37.078743, 30.910833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670895, 37.381962, 31.570484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306362, 37.416824, 31.409550>,  <26.087643, 37.437744, 31.312988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306362, 37.416824, 31.409550>,  <26.670895, 37.381962, 31.570484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306362, 37.416824, 31.409550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410132, -0.107853, 0.905626,
		0.035540, 0.990339, 0.134037,
		-0.911333, 0.087159, -0.402337,
		26.032963, 37.442970, 31.288849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.194248, 37.896725, 31.994682>,  <26.670895, 37.381962, 31.570484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.194248, 37.896725, 31.994682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018599, 37.604507, 31.785500>,  <25.913210, 37.429176, 31.659990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018599, 37.604507, 31.785500>,  <26.194248, 37.896725, 31.994682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018599, 37.604507, 31.785500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348305, -0.398131, 0.848632,
		-0.828164, 0.554801, -0.079622,
		-0.439122, -0.730539, -0.522957,
		25.886862, 37.385345, 31.628613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.429956, 37.889717, 32.222157>,  <26.194248, 37.896725, 31.994682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.429956, 37.889717, 32.222157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529306, 37.524597, 32.092476>,  <25.588917, 37.305527, 32.014668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529306, 37.524597, 32.092476>,  <25.429956, 37.889717, 32.222157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.529306, 37.524597, 32.092476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436728, -0.404265, 0.803641,
		-0.864627, -0.058014, -0.499054,
		0.248373, -0.912800, -0.324202,
		25.603819, 37.250755, 31.995214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.825571, 37.520905, 32.313671>,  <25.429956, 37.889717, 32.222157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.825571, 37.520905, 32.313671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.079992, 37.218365, 32.252529>,  <25.232645, 37.036839, 32.215843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.079992, 37.218365, 32.252529>,  <24.825571, 37.520905, 32.313671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.079992, 37.218365, 32.252529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497959, -0.553649, 0.667466,
		-0.589470, -0.348426, -0.728783,
		0.636052, -0.756355, -0.152858,
		25.270809, 36.991459, 32.206673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.470787, 36.866970, 32.343563>,  <24.825571, 37.520905, 32.313671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.470787, 36.866970, 32.343563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.853224, 36.791981, 32.433662>,  <25.082685, 36.746986, 32.487720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.853224, 36.791981, 32.433662>,  <24.470787, 36.866970, 32.343563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.853224, 36.791981, 32.433662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288923, -0.474280, 0.831614,
		-0.049077, -0.860181, -0.507623,
		0.956094, -0.187477, 0.225250,
		25.140053, 36.735737, 32.501236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.625555, 36.210182, 32.515614>,  <24.470787, 36.866970, 32.343563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.625555, 36.210182, 32.515614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015869, 36.283722, 32.563019>,  <25.250057, 36.327847, 32.591461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015869, 36.283722, 32.563019>,  <24.625555, 36.210182, 32.515614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.015869, 36.283722, 32.563019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030994, -0.420110, 0.906944,
		0.216532, -0.888654, -0.404238,
		0.975783, 0.183853, 0.118510,
		25.308603, 36.338879, 32.598572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.944988, 35.720737, 32.870182>,  <24.625555, 36.210182, 32.515614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.944988, 35.720737, 32.870182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220055, 36.002739, 32.939564>,  <25.385096, 36.171940, 32.981194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220055, 36.002739, 32.939564>,  <24.944988, 35.720737, 32.870182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.220055, 36.002739, 32.939564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015285, -0.224792, 0.974287,
		0.725864, -0.672637, -0.143806,
		0.687668, 0.705002, 0.173450,
		25.426355, 36.214241, 32.991600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.541277, 35.446014, 33.258167>,  <24.944988, 35.720737, 32.870182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.541277, 35.446014, 33.258167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520363, 35.840496, 33.320992>,  <25.507814, 36.077187, 33.358685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520363, 35.840496, 33.320992>,  <25.541277, 35.446014, 33.258167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.520363, 35.840496, 33.320992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075772, -0.152902, 0.985332,
		0.995753, 0.063419, -0.066733,
		-0.052285, 0.986204, 0.157058,
		25.504677, 36.136356, 33.368111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792122, 35.463554, 33.813881>,  <25.541277, 35.446014, 33.258167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792122, 35.463554, 33.813881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.746088, 35.857376, 33.761105>,  <25.718468, 36.093670, 33.729439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.746088, 35.857376, 33.761105>,  <25.792122, 35.463554, 33.813881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.746088, 35.857376, 33.761105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133617, 0.116274, 0.984189,
		0.984328, 0.130895, 0.118172,
		-0.115086, 0.984554, -0.131941,
		25.711563, 36.152740, 33.721523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.286316, 35.864479, 34.261848>,  <25.792122, 35.463554, 33.813881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.286316, 35.864479, 34.261848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980972, 36.102413, 34.161083>,  <25.797766, 36.245174, 34.100624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980972, 36.102413, 34.161083>,  <26.286316, 35.864479, 34.261848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.980972, 36.102413, 34.161083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197637, 0.156206, 0.967750,
		0.614999, 0.788526, -0.001680,
		-0.763359, 0.594832, -0.251909,
		25.751965, 36.280865, 34.085510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349648, 36.452587, 34.695133>,  <26.286316, 35.864479, 34.261848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.349648, 36.452587, 34.695133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972996, 36.470066, 34.561611>,  <25.747005, 36.480553, 34.481499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972996, 36.470066, 34.561611>,  <26.349648, 36.452587, 34.695133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972996, 36.470066, 34.561611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326893, 0.118347, 0.937622,
		0.080476, 0.992010, -0.097155,
		-0.941629, 0.043697, -0.333805,
		25.690508, 36.483173, 34.461468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.044413, 37.093727, 35.018097>,  <26.349648, 36.452587, 34.695133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.044413, 37.093727, 35.018097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767773, 36.831600, 34.896610>,  <25.601788, 36.674324, 34.823719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767773, 36.831600, 34.896610>,  <26.044413, 37.093727, 35.018097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767773, 36.831600, 34.896610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437843, 0.045954, 0.897876,
		-0.574440, 0.753951, -0.318710,
		-0.691601, -0.655321, -0.303715,
		25.560293, 36.635002, 34.805496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627195, 37.497429, 35.018204>,  <26.044413, 37.093727, 35.018097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627195, 37.497429, 35.018204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926125, 37.391727, 35.262066>,  <27.105482, 37.328308, 35.408382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926125, 37.391727, 35.262066>,  <26.627195, 37.497429, 35.018204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926125, 37.391727, 35.262066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512177, 0.813603, -0.275181,
		-0.423303, 0.517901, 0.743366,
		0.747321, -0.264250, 0.609658,
		27.150320, 37.312454, 35.444962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829842, 37.989487, 35.667236>,  <26.627195, 37.497429, 35.018204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829842, 37.989487, 35.667236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.161930, 37.822872, 35.519058>,  <27.361183, 37.722904, 35.430153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.161930, 37.822872, 35.519058>,  <26.829842, 37.989487, 35.667236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.161930, 37.822872, 35.519058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421507, 0.903979, -0.071793,
		0.364776, -0.096540, 0.926077,
		0.830223, -0.416536, -0.370442,
		27.410997, 37.697910, 35.407925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364565, 38.419102, 35.949287>,  <26.829842, 37.989487, 35.667236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364565, 38.419102, 35.949287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516893, 38.207760, 35.645756>,  <27.608292, 38.080956, 35.463638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516893, 38.207760, 35.645756>,  <27.364565, 38.419102, 35.949287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516893, 38.207760, 35.645756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443157, 0.824563, -0.351722,
		0.811533, -0.202335, 0.548156,
		0.380823, -0.528353, -0.758826,
		27.631140, 38.049255, 35.418110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160154, 38.458946, 35.919857>,  <27.364565, 38.419102, 35.949287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160154, 38.458946, 35.919857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016611, 38.375118, 35.556034>,  <27.930485, 38.324821, 35.337738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016611, 38.375118, 35.556034>,  <28.160154, 38.458946, 35.919857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016611, 38.375118, 35.556034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534473, 0.752757, -0.384312,
		0.765219, -0.624049, -0.158121,
		-0.358857, -0.209571, -0.909561,
		27.908955, 38.312248, 35.283165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902802, 38.534615, 36.217701>,  <28.160154, 38.458946, 35.919857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902802, 38.534615, 36.217701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135607, 38.464516, 36.535328>,  <29.275290, 38.422459, 36.725906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135607, 38.464516, 36.535328>,  <28.902802, 38.534615, 36.217701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135607, 38.464516, 36.535328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485892, 0.708066, 0.512398,
		-0.652050, -0.684055, 0.326954,
		0.582014, -0.175244, 0.794071,
		29.310211, 38.411942, 36.773548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480244, 38.476646, 36.744423>,  <28.902802, 38.534615, 36.217701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480244, 38.476646, 36.744423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813049, 38.562187, 36.949173>,  <29.012733, 38.613510, 37.072025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813049, 38.562187, 36.949173>,  <28.480244, 38.476646, 36.744423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813049, 38.562187, 36.949173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511462, 0.653040, 0.558521,
		-0.214838, -0.726504, 0.652715,
		0.832016, 0.213847, 0.511877,
		29.062654, 38.626343, 37.102737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215750, 38.543041, 37.339481>,  <28.480244, 38.476646, 36.744423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215750, 38.543041, 37.339481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565010, 38.736412, 37.364468>,  <28.774567, 38.852436, 37.379459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565010, 38.736412, 37.364468>,  <28.215750, 38.543041, 37.339481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565010, 38.736412, 37.364468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412884, 0.665379, 0.621931,
		0.259097, -0.568831, 0.780577,
		0.873153, 0.483428, 0.062464,
		28.826956, 38.881439, 37.383205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010933, 38.209198, 37.996799>,  <28.215750, 38.543041, 37.339481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.010933, 38.209198, 37.996799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942707, 38.108101, 38.377750>,  <27.901772, 38.047443, 38.606323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942707, 38.108101, 38.377750>,  <28.010933, 38.209198, 37.996799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942707, 38.108101, 38.377750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975666, -0.178472, 0.127370,
		0.137781, 0.950930, 0.277034,
		-0.170563, -0.252744, 0.952381,
		27.891539, 38.032276, 38.663464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348076, 38.838505, 38.118847>,  <28.010933, 38.209198, 37.996799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348076, 38.838505, 38.118847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705702, 38.813232, 37.941463>,  <28.920277, 38.798069, 37.835033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705702, 38.813232, 37.941463>,  <28.348076, 38.838505, 38.118847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705702, 38.813232, 37.941463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206024, 0.937074, 0.281861,
		0.397745, -0.343365, 0.850823,
		0.894065, -0.063181, -0.443458,
		28.973921, 38.794277, 37.808426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904108, 38.759789, 38.589554>,  <28.348076, 38.838505, 38.118847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904108, 38.759789, 38.589554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980646, 38.957375, 38.250286>,  <29.026569, 39.075928, 38.046726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980646, 38.957375, 38.250286>,  <28.904108, 38.759789, 38.589554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980646, 38.957375, 38.250286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068390, 0.868741, 0.490522,
		0.979138, -0.035852, 0.200010,
		0.191343, 0.493968, -0.848165,
		29.038050, 39.105564, 37.995838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330631, 39.211964, 38.778008>,  <28.904108, 38.759789, 38.589554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330631, 39.211964, 38.778008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227640, 39.395470, 38.437836>,  <29.165846, 39.505573, 38.233730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227640, 39.395470, 38.437836>,  <29.330631, 39.211964, 38.778008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227640, 39.395470, 38.437836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122706, 0.857459, 0.499707,
		0.958462, 0.233016, -0.164482,
		-0.257476, 0.458768, -0.850434,
		29.150396, 39.533100, 38.182705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739399, 39.750519, 38.757099>,  <29.330631, 39.211964, 38.778008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739399, 39.750519, 38.757099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406918, 39.828590, 38.548866>,  <29.207430, 39.875435, 38.423927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406918, 39.828590, 38.548866>,  <29.739399, 39.750519, 38.757099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406918, 39.828590, 38.548866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272732, 0.672803, 0.687715,
		0.484479, 0.713611, -0.506004,
		-0.831202, 0.195180, -0.520584,
		29.157557, 39.887146, 38.392693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612446, 40.525787, 38.726349>,  <29.739399, 39.750519, 38.757099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612446, 40.525787, 38.726349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280781, 40.308292, 38.674454>,  <29.081781, 40.177795, 38.643314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280781, 40.308292, 38.674454>,  <29.612446, 40.525787, 38.726349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280781, 40.308292, 38.674454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423820, 0.460140, 0.780159,
		-0.364506, 0.701866, -0.611980,
		-0.829163, -0.543742, -0.129742,
		29.032032, 40.145168, 38.635532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056719, 40.490444, 39.092716>,  <29.612446, 40.525787, 38.726349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056719, 40.490444, 39.092716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814535, 40.778625, 38.957443>,  <28.669226, 40.951534, 38.876278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814535, 40.778625, 38.957443>,  <29.056719, 40.490444, 39.092716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814535, 40.778625, 38.957443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261605, -0.581462, -0.770366,
		-0.751653, -0.377955, 0.540525,
		-0.605459, 0.720452, -0.338183,
		28.632896, 40.994762, 38.855988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449747, 40.227909, 39.019569>,  <29.056719, 40.490444, 39.092716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449747, 40.227909, 39.019569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505529, 40.513607, 38.745228>,  <28.539000, 40.685028, 38.580624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505529, 40.513607, 38.745228>,  <28.449747, 40.227909, 39.019569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505529, 40.513607, 38.745228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104355, -0.678169, -0.727459,
		-0.984714, 0.173022, -0.020040,
		0.139457, 0.714248, -0.685858,
		28.547367, 40.727882, 38.539471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881285, 40.199905, 38.468426>,  <28.449747, 40.227909, 39.019569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881285, 40.199905, 38.468426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254219, 40.303810, 38.367805>,  <28.477980, 40.366154, 38.307434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254219, 40.303810, 38.367805>,  <27.881285, 40.199905, 38.468426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254219, 40.303810, 38.367805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086589, -0.835801, -0.542162,
		-0.351077, 0.483695, -0.801738,
		0.932334, 0.259762, -0.251548,
		28.533920, 40.381741, 38.292339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097679, 40.242886, 37.725540>,  <27.881285, 40.199905, 38.468426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097679, 40.242886, 37.725540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424597, 40.133091, 37.928200>,  <28.620747, 40.067215, 38.049793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424597, 40.133091, 37.928200>,  <28.097679, 40.242886, 37.725540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424597, 40.133091, 37.928200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147675, -0.750116, -0.644607,
		0.556977, 0.601652, -0.572531,
		0.817294, -0.274483, 0.506646,
		28.669785, 40.050747, 38.080193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477114, 40.118382, 37.219627>,  <28.097679, 40.242886, 37.725540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477114, 40.118382, 37.219627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659584, 39.923862, 37.517735>,  <28.769066, 39.807152, 37.696598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659584, 39.923862, 37.517735>,  <28.477114, 40.118382, 37.219627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659584, 39.923862, 37.517735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371146, -0.657194, -0.656008,
		0.808797, 0.575858, -0.119310,
		0.456177, -0.486296, 0.745264,
		28.796436, 39.777973, 37.741314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123741, 39.919811, 36.983177>,  <28.477114, 40.118382, 37.219627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123741, 39.919811, 36.983177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055426, 39.686241, 37.300632>,  <29.014437, 39.546097, 37.491104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055426, 39.686241, 37.300632>,  <29.123741, 39.919811, 36.983177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055426, 39.686241, 37.300632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423651, -0.770735, -0.475908,
		0.889579, 0.254945, 0.379014,
		-0.170789, -0.583927, 0.793637,
		29.004189, 39.511063, 37.538723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845154, 39.611778, 37.249340>,  <29.123741, 39.919811, 36.983177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845154, 39.611778, 37.249340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536058, 39.368870, 37.323200>,  <29.350601, 39.223125, 37.367516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536058, 39.368870, 37.323200>,  <29.845154, 39.611778, 37.249340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536058, 39.368870, 37.323200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574443, -0.792841, -0.203515,
		0.269986, -0.051194, 0.961502,
		-0.772738, -0.607274, 0.184648,
		29.304237, 39.186687, 37.378593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114637, 39.118912, 37.658955>,  <29.845154, 39.611778, 37.249340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114637, 39.118912, 37.658955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799931, 38.953735, 37.475445>,  <29.611107, 38.854630, 37.365337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799931, 38.953735, 37.475445>,  <30.114637, 39.118912, 37.658955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799931, 38.953735, 37.475445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585394, -0.734880, -0.342440,
		-0.195737, -0.537985, 0.819914,
		-0.786766, -0.412945, -0.458776,
		29.563900, 38.829853, 37.337811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136652, 38.362488, 37.766018>,  <30.114637, 39.118912, 37.658955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136652, 38.362488, 37.766018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908661, 38.409851, 37.440784>,  <29.771866, 38.438267, 37.245644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908661, 38.409851, 37.440784>,  <30.136652, 38.362488, 37.766018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908661, 38.409851, 37.440784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497472, -0.737849, -0.456180,
		-0.653948, -0.664499, 0.361654,
		-0.569977, 0.118406, -0.813085,
		29.737667, 38.445374, 37.196857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793468, 37.818947, 37.482563>,  <30.136652, 38.362488, 37.766018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793468, 37.818947, 37.482563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915062, 38.040611, 37.172596>,  <29.988018, 38.173611, 36.986614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915062, 38.040611, 37.172596>,  <29.793468, 37.818947, 37.482563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915062, 38.040611, 37.172596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832949, -0.549384, -0.066125,
		-0.462373, -0.625369, -0.628589,
		0.303985, 0.554157, -0.774921,
		30.006258, 38.206860, 36.940121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045795, 37.503487, 36.911785>,  <29.793468, 37.818947, 37.482563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045795, 37.503487, 36.911785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237820, 37.854137, 36.924877>,  <30.353035, 38.064526, 36.932732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237820, 37.854137, 36.924877>,  <30.045795, 37.503487, 36.911785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237820, 37.854137, 36.924877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867011, -0.468457, -0.169821,
		-0.133535, 0.109905, -0.984931,
		0.480062, 0.876624, 0.032733,
		30.381838, 38.117123, 36.934696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372932, 37.678642, 36.258270>,  <30.045795, 37.503487, 36.911785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372932, 37.678642, 36.258270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533958, 37.821503, 36.595409>,  <30.630575, 37.907219, 36.797691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533958, 37.821503, 36.595409>,  <30.372932, 37.678642, 36.258270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533958, 37.821503, 36.595409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841482, -0.506836, -0.187150,
		0.360344, 0.784579, -0.504568,
		0.402567, 0.357146, 0.842844,
		30.654728, 37.928646, 36.848263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143427, 37.969650, 36.118706>,  <30.372932, 37.678642, 36.258270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143427, 37.969650, 36.118706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117006, 37.840767, 36.496452>,  <31.101154, 37.763435, 36.723099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117006, 37.840767, 36.496452>,  <31.143427, 37.969650, 36.118706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117006, 37.840767, 36.496452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869308, -0.483193, -0.104059,
		0.489838, 0.814068, 0.312013,
		-0.066051, -0.322207, 0.944362,
		31.097191, 37.744106, 36.779762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681639, 38.202625, 36.560650>,  <31.143427, 37.969650, 36.118706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681639, 38.202625, 36.560650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547972, 37.829727, 36.616138>,  <31.467772, 37.605988, 36.649433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547972, 37.829727, 36.616138>,  <31.681639, 38.202625, 36.560650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547972, 37.829727, 36.616138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846564, -0.361580, -0.390626,
		0.414321, -0.013096, 0.910037,
		-0.334166, -0.932249, 0.138723,
		31.447721, 37.550053, 36.657757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063026, 37.567310, 36.918133>,  <31.681639, 38.202625, 36.560650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063026, 37.567310, 36.918133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869734, 37.433807, 36.594383>,  <31.753759, 37.353706, 36.400131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869734, 37.433807, 36.594383>,  <32.063026, 37.567310, 36.918133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869734, 37.433807, 36.594383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873805, -0.241268, -0.422202,
		-0.054362, -0.911259, 0.408231,
		-0.483228, -0.333762, -0.809378,
		31.724766, 37.333679, 36.351570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459389, 37.032578, 36.751114>,  <32.063026, 37.567310, 36.918133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459389, 37.032578, 36.751114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225391, 37.106266, 36.435177>,  <32.084991, 37.150478, 36.245617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225391, 37.106266, 36.435177>,  <32.459389, 37.032578, 36.751114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225391, 37.106266, 36.435177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726891, -0.312870, -0.611345,
		-0.359743, -0.931758, 0.049113,
		-0.584991, 0.184227, -0.789839,
		32.049892, 37.161533, 36.198227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992664, 37.251434, 36.391449>,  <32.459389, 37.032578, 36.751114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992664, 37.251434, 36.391449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983616, 37.269653, 36.790932>,  <32.978188, 37.280582, 37.030621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983616, 37.269653, 36.790932>,  <32.992664, 37.251434, 36.391449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983616, 37.269653, 36.790932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262140, -0.963740, 0.049887,
		0.964765, 0.262929, 0.009860,
		-0.022619, 0.045544, 0.998706,
		32.976830, 37.283318, 37.090542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619247, 37.122353, 36.666931>,  <32.992664, 37.251434, 36.391449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619247, 37.122353, 36.666931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311657, 36.990746, 36.886173>,  <33.127102, 36.911781, 37.017719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311657, 36.990746, 36.886173>,  <33.619247, 37.122353, 36.666931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311657, 36.990746, 36.886173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342252, -0.936047, -0.081727,
		0.539939, 0.124742, 0.832409,
		-0.768979, -0.329021, 0.548102,
		33.080963, 36.892040, 37.050606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897942, 36.695705, 37.137333>,  <33.619247, 37.122353, 36.666931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897942, 36.695705, 37.137333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523838, 36.559380, 37.099106>,  <33.299374, 36.477585, 37.076168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523838, 36.559380, 37.099106>,  <33.897942, 36.695705, 37.137333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523838, 36.559380, 37.099106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349195, -0.932555, -0.091675,
		-0.057882, -0.119114, 0.991192,
		-0.935261, -0.340813, -0.095572,
		33.243259, 36.457134, 37.070435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553238, 36.330772, 37.051781>,  <33.897942, 36.695705, 37.137333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553238, 36.330772, 37.051781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348873, 36.586048, 36.821415>,  <34.226254, 36.739212, 36.683193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348873, 36.586048, 36.821415>,  <34.553238, 36.330772, 37.051781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348873, 36.586048, 36.821415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243872, -0.534829, -0.809002,
		-0.824316, -0.553779, 0.117613,
		-0.510911, 0.638191, -0.575919,
		34.195599, 36.777504, 36.648640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136410, 35.901642, 37.270668>,  <34.553238, 36.330772, 37.051781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136410, 35.901642, 37.270668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226250, 35.512104, 37.284477>,  <35.280151, 35.278381, 37.292763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226250, 35.512104, 37.284477>,  <35.136410, 35.901642, 37.270668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226250, 35.512104, 37.284477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475678, -0.078644, 0.876097,
		-0.850463, -0.213193, -0.480897,
		0.224597, -0.973840, 0.034527,
		35.293629, 35.219952, 37.294834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441975, 35.478291, 37.281193>,  <35.136410, 35.901642, 37.270668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441975, 35.478291, 37.281193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783066, 35.388065, 37.469646>,  <34.987720, 35.333931, 37.582718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783066, 35.388065, 37.469646>,  <34.441975, 35.478291, 37.281193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783066, 35.388065, 37.469646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481053, 0.012364, 0.876604,
		-0.203557, -0.974149, -0.097966,
		0.852732, -0.225566, 0.471135,
		35.038887, 35.320396, 37.610989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063210, 35.141083, 36.693790>,  <34.441975, 35.478291, 37.281193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063210, 35.141083, 36.693790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410728, 35.017792, 36.538776>,  <34.619240, 34.943817, 36.445766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410728, 35.017792, 36.538776>,  <34.063210, 35.141083, 36.693790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410728, 35.017792, 36.538776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478443, -0.320868, -0.817396,
		0.127599, 0.895565, -0.426241,
		0.868798, -0.308231, -0.387534,
		34.671368, 34.925323, 36.422516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159050, 35.374817, 35.965153>,  <34.063210, 35.141083, 36.693790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159050, 35.374817, 35.965153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357689, 35.036327, 36.042408>,  <34.476871, 34.833233, 36.088760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357689, 35.036327, 36.042408>,  <34.159050, 35.374817, 35.965153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357689, 35.036327, 36.042408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514404, -0.466154, -0.719784,
		0.699128, 0.258092, -0.666790,
		0.496597, -0.846220, 0.193138,
		34.506668, 34.782463, 36.100349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582951, 35.094307, 35.460789>,  <34.159050, 35.374817, 35.965153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582951, 35.094307, 35.460789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434269, 34.799324, 35.686356>,  <34.345062, 34.622334, 35.821693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434269, 34.799324, 35.686356>,  <34.582951, 35.094307, 35.460789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434269, 34.799324, 35.686356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338677, -0.457852, -0.821991,
		0.864371, -0.496518, -0.079576,
		-0.371700, -0.737456, 0.563913,
		34.322758, 34.578087, 35.855530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809155, 34.392361, 35.240326>,  <34.582951, 35.094307, 35.460789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809155, 34.392361, 35.240326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447163, 34.400185, 35.410332>,  <34.229969, 34.404881, 35.512337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447163, 34.400185, 35.410332>,  <34.809155, 34.392361, 35.240326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447163, 34.400185, 35.410332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390689, -0.433755, -0.811923,
		0.168470, -0.900818, 0.400180,
		-0.904975, 0.019562, 0.425015,
		34.175671, 34.406052, 35.537834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298176, 33.712849, 35.226849>,  <34.809155, 34.392361, 35.240326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298176, 33.712849, 35.226849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055931, 34.030643, 35.208813>,  <33.910583, 34.221321, 35.197990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055931, 34.030643, 35.208813>,  <34.298176, 33.712849, 35.226849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055931, 34.030643, 35.208813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437081, -0.379452, -0.815461,
		-0.664980, -0.474142, 0.577054,
		-0.605609, 0.794484, -0.045090,
		33.874249, 34.268990, 35.195286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561111, 33.474743, 35.085426>,  <34.298176, 33.712849, 35.226849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561111, 33.474743, 35.085426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607758, 33.850700, 34.957058>,  <33.635746, 34.076275, 34.880035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607758, 33.850700, 34.957058>,  <33.561111, 33.474743, 35.085426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607758, 33.850700, 34.957058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448223, -0.238545, -0.861506,
		-0.886283, 0.244311, 0.393466,
		0.116617, 0.939898, -0.320924,
		33.642742, 34.132671, 34.860783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823051, 33.801121, 34.869717>,  <33.561111, 33.474743, 35.085426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823051, 33.801121, 34.869717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132042, 33.991554, 34.701607>,  <33.317436, 34.105816, 34.600742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132042, 33.991554, 34.701607>,  <32.823051, 33.801121, 34.869717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132042, 33.991554, 34.701607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468725, -0.019071, -0.883138,
		-0.428464, 0.879193, 0.208421,
		0.772474, 0.476085, -0.420271,
		33.363785, 34.134380, 34.575527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466354, 34.371861, 34.451530>,  <32.823051, 33.801121, 34.869717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466354, 34.371861, 34.451530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841999, 34.340443, 34.317726>,  <33.067387, 34.321590, 34.237442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841999, 34.340443, 34.317726>,  <32.466354, 34.371861, 34.451530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841999, 34.340443, 34.317726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318249, 0.168215, -0.932964,
		0.129551, 0.982616, 0.132975,
		0.939113, -0.078548, -0.334509,
		33.123734, 34.316879, 34.217373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544415, 35.026150, 34.140568>,  <32.466354, 34.371861, 34.451530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544415, 35.026150, 34.140568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791058, 34.754684, 33.980961>,  <32.939045, 34.591805, 33.885197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791058, 34.754684, 33.980961>,  <32.544415, 35.026150, 34.140568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791058, 34.754684, 33.980961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392842, 0.173986, -0.902997,
		0.682252, 0.713546, -0.159325,
		0.616610, -0.678661, -0.399013,
		32.976040, 34.551086, 33.861256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746075, 35.290977, 33.555977>,  <32.544415, 35.026150, 34.140568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746075, 35.290977, 33.555977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809059, 34.902496, 33.484447>,  <32.846851, 34.669407, 33.441528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809059, 34.902496, 33.484447>,  <32.746075, 35.290977, 33.555977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809059, 34.902496, 33.484447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215948, 0.142839, -0.965900,
		0.963624, 0.190711, -0.187237,
		0.157463, -0.971198, -0.178826,
		32.856297, 34.611137, 33.430801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016712, 35.303974, 32.874279>,  <32.746075, 35.290977, 33.555977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016712, 35.303974, 32.874279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902061, 34.924232, 32.925785>,  <32.833271, 34.696388, 32.956688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902061, 34.924232, 32.925785>,  <33.016712, 35.303974, 32.874279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902061, 34.924232, 32.925785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263161, -0.051220, -0.963391,
		0.921191, -0.310018, -0.235151,
		-0.286625, -0.949350, 0.128768,
		32.816074, 34.639427, 32.964417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190506, 34.966621, 32.289093>,  <33.016712, 35.303974, 32.874279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190506, 34.966621, 32.289093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904587, 34.724545, 32.429268>,  <32.733036, 34.579300, 32.513374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904587, 34.724545, 32.429268>,  <33.190506, 34.966621, 32.289093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904587, 34.724545, 32.429268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343195, -0.133045, -0.929793,
		0.609324, -0.784886, -0.112597,
		-0.714802, -0.605187, 0.350437,
		32.690147, 34.542988, 32.534397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075020, 34.438900, 31.755545>,  <33.190506, 34.966621, 32.289093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075020, 34.438900, 31.755545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749935, 34.408916, 31.986671>,  <32.554882, 34.390926, 32.125347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749935, 34.408916, 31.986671>,  <33.075020, 34.438900, 31.755545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749935, 34.408916, 31.986671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557013, -0.191029, -0.808235,
		0.170968, -0.978718, 0.113497,
		-0.812715, -0.074963, 0.577819,
		32.506119, 34.386429, 32.160019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620544, 33.827892, 31.485268>,  <33.075020, 34.438900, 31.755545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620544, 33.827892, 31.485268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392845, 34.090523, 31.683203>,  <32.256226, 34.248100, 31.801964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392845, 34.090523, 31.683203>,  <32.620544, 33.827892, 31.485268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392845, 34.090523, 31.683203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678269, -0.034877, -0.733985,
		-0.464658, -0.753454, 0.465189,
		-0.569248, 0.656575, 0.494838,
		32.222069, 34.287495, 31.831654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017754, 33.434467, 31.505516>,  <32.620544, 33.827892, 31.485268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017754, 33.434467, 31.505516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923590, 33.820576, 31.550825>,  <31.867092, 34.052242, 31.578011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923590, 33.820576, 31.550825>,  <32.017754, 33.434467, 31.505516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923590, 33.820576, 31.550825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567226, -0.041816, -0.822500,
		-0.789200, -0.257876, 0.557371,
		-0.235410, 0.965273, 0.113273,
		31.852966, 34.110157, 31.584806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336599, 33.497807, 31.152739>,  <32.017754, 33.434467, 31.505516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336599, 33.497807, 31.152739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450237, 33.877884, 31.203989>,  <31.518419, 34.105930, 31.234739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450237, 33.877884, 31.203989>,  <31.336599, 33.497807, 31.152739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450237, 33.877884, 31.203989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575404, 0.275857, -0.769944,
		-0.766942, 0.145013, 0.625117,
		0.284094, 0.950197, 0.128126,
		31.535465, 34.162945, 31.242426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649136, 33.892994, 31.142609>,  <31.336599, 33.497807, 31.152739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649136, 33.892994, 31.142609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979403, 34.104748, 31.064610>,  <31.177563, 34.231800, 31.017811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979403, 34.104748, 31.064610>,  <30.649136, 33.892994, 31.142609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979403, 34.104748, 31.064610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421971, 0.350091, -0.836287,
		-0.374455, 0.772776, 0.512445,
		0.825666, 0.529389, -0.194995,
		31.227102, 34.263565, 31.006111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349337, 34.466938, 30.837635>,  <30.649136, 33.892994, 31.142609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349337, 34.466938, 30.837635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738897, 34.495277, 30.751381>,  <30.972633, 34.512283, 30.699629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738897, 34.495277, 30.751381>,  <30.349337, 34.466938, 30.837635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738897, 34.495277, 30.751381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221069, 0.511454, -0.830387,
		0.051453, 0.856384, 0.513769,
		0.973900, 0.070852, -0.215635,
		31.031067, 34.516533, 30.686689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544722, 35.262177, 30.754276>,  <30.349337, 34.466938, 30.837635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544722, 35.262177, 30.754276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797510, 35.041393, 30.536671>,  <30.949184, 34.908924, 30.406107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797510, 35.041393, 30.536671>,  <30.544722, 35.262177, 30.754276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797510, 35.041393, 30.536671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208679, 0.554840, -0.805361,
		0.746367, 0.622490, 0.235461,
		0.631973, -0.551959, -0.544015,
		30.987103, 34.875805, 30.373466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901802, 35.835800, 30.275673>,  <30.544722, 35.262177, 30.754276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901802, 35.835800, 30.275673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962980, 35.476536, 30.110790>,  <30.999687, 35.260979, 30.011860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962980, 35.476536, 30.110790>,  <30.901802, 35.835800, 30.275673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962980, 35.476536, 30.110790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107476, 0.399522, -0.910401,
		0.982373, 0.183545, -0.035425,
		0.152947, -0.898161, -0.412207,
		31.008863, 35.207088, 29.987127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167459, 36.034286, 29.657255>,  <30.901802, 35.835800, 30.275673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167459, 36.034286, 29.657255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069601, 35.650307, 29.602623>,  <31.010885, 35.419918, 29.569843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069601, 35.650307, 29.602623>,  <31.167459, 36.034286, 29.657255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069601, 35.650307, 29.602623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207593, 0.189449, -0.959695,
		0.947129, -0.206433, -0.245626,
		-0.244646, -0.959945, -0.136578,
		30.996206, 35.362324, 29.561649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501671, 35.888500, 29.030821>,  <31.167459, 36.034286, 29.657255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501671, 35.888500, 29.030821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222416, 35.610977, 29.101517>,  <31.054863, 35.444466, 29.143934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222416, 35.610977, 29.101517>,  <31.501671, 35.888500, 29.030821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222416, 35.610977, 29.101517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442757, 0.224382, -0.868112,
		0.562644, -0.684315, -0.463837,
		-0.698140, -0.693805, 0.176738,
		31.012974, 35.402836, 29.154539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477924, 35.528709, 28.395651>,  <31.501671, 35.888500, 29.030821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477924, 35.528709, 28.395651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137745, 35.501522, 28.604309>,  <30.933638, 35.485210, 28.729504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137745, 35.501522, 28.604309>,  <31.477924, 35.528709, 28.395651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137745, 35.501522, 28.604309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516262, 0.298298, -0.802802,
		-0.101041, -0.952049, -0.288778,
		-0.850450, -0.067969, 0.521647,
		30.882610, 35.481133, 28.760803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955969, 35.212791, 27.889669>,  <31.477924, 35.528709, 28.395651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955969, 35.212791, 27.889669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735085, 35.348526, 28.194277>,  <30.602554, 35.429966, 28.377041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735085, 35.348526, 28.194277>,  <30.955969, 35.212791, 27.889669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735085, 35.348526, 28.194277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654453, 0.389426, -0.648104,
		-0.516481, -0.856270, 0.007034,
		-0.552212, 0.339336, 0.761520,
		30.569420, 35.450325, 28.422733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263990, 35.068375, 27.749451>,  <30.955969, 35.212791, 27.889669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263990, 35.068375, 27.749451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198317, 35.349857, 28.025955>,  <30.158913, 35.518745, 28.191858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198317, 35.349857, 28.025955>,  <30.263990, 35.068375, 27.749451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198317, 35.349857, 28.025955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783452, 0.332774, -0.524847,
		-0.599372, -0.627741, 0.496683,
		-0.164185, 0.703706, 0.691260,
		30.149061, 35.560970, 28.233334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567120, 35.141747, 27.757271>,  <30.263990, 35.068375, 27.749451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567120, 35.141747, 27.757271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682726, 35.481052, 27.934774>,  <29.752090, 35.684635, 28.041277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682726, 35.481052, 27.934774>,  <29.567120, 35.141747, 27.757271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682726, 35.481052, 27.934774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718178, 0.498620, -0.485385,
		-0.633000, -0.178414, 0.753312,
		0.289016, 0.848261, 0.443760,
		29.769430, 35.735531, 28.067902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978159, 35.433563, 28.068329>,  <29.567120, 35.141747, 27.757271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978159, 35.433563, 28.068329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.248137, 35.718525, 27.991451>,  <29.410122, 35.889500, 27.945326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.248137, 35.718525, 27.991451>,  <28.978159, 35.433563, 28.068329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248137, 35.718525, 27.991451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688892, 0.515074, -0.510027,
		-0.264350, 0.476639, 0.838412,
		0.674943, 0.712401, -0.192193,
		29.450619, 35.932243, 27.933794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590469, 36.046616, 27.988087>,  <28.978159, 35.433563, 28.068329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590469, 36.046616, 27.988087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938719, 36.127823, 27.808844>,  <29.147669, 36.176548, 27.701298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938719, 36.127823, 27.808844>,  <28.590469, 36.046616, 27.988087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938719, 36.127823, 27.808844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430789, 0.754478, -0.495160,
		0.237564, 0.624138, 0.744322,
		0.870623, 0.203014, -0.448109,
		29.199905, 36.188728, 27.674412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624146, 36.831863, 27.849817>,  <28.590469, 36.046616, 27.988087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624146, 36.831863, 27.849817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909000, 36.679825, 27.613722>,  <29.079914, 36.588600, 27.472065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909000, 36.679825, 27.613722>,  <28.624146, 36.831863, 27.849817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909000, 36.679825, 27.613722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290335, 0.606028, -0.740564,
		0.639191, 0.698751, 0.321219,
		0.712138, -0.380101, -0.590240,
		29.122643, 36.565796, 27.436649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937738, 37.454540, 27.542059>,  <28.624146, 36.831863, 27.849817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937738, 37.454540, 27.542059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047266, 37.146515, 27.311573>,  <29.112982, 36.961700, 27.173281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047266, 37.146515, 27.311573>,  <28.937738, 37.454540, 27.542059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047266, 37.146515, 27.311573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272450, 0.512468, -0.814339,
		0.922385, 0.379971, -0.069481,
		0.273818, -0.770064, -0.576216,
		29.129412, 36.915497, 27.138708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372526, 37.702999, 26.981319>,  <28.937738, 37.454540, 27.542059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372526, 37.702999, 26.981319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185837, 37.366982, 26.870695>,  <29.073822, 37.165371, 26.804319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185837, 37.366982, 26.870695>,  <29.372526, 37.702999, 26.981319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185837, 37.366982, 26.870695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287943, 0.440008, -0.850577,
		0.836216, -0.317351, -0.447248,
		-0.466724, -0.840049, -0.276563,
		29.045820, 37.114967, 26.787727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598097, 37.576466, 26.289190>,  <29.372526, 37.702999, 26.981319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598097, 37.576466, 26.289190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266144, 37.358387, 26.336617>,  <29.066973, 37.227539, 26.365072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266144, 37.358387, 26.336617>,  <29.598097, 37.576466, 26.289190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266144, 37.358387, 26.336617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380648, 0.397885, -0.834742,
		0.407942, -0.737856, -0.537728,
		-0.829874, -0.545212, 0.118549,
		29.017179, 37.194828, 26.372185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498762, 37.207031, 25.601440>,  <29.598097, 37.576466, 26.289190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498762, 37.207031, 25.601440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162579, 37.218918, 25.817865>,  <28.960869, 37.226051, 25.947720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162579, 37.218918, 25.817865>,  <29.498762, 37.207031, 25.601440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162579, 37.218918, 25.817865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486565, 0.398096, -0.777672,
		-0.238505, -0.916862, -0.320123,
		-0.840458, 0.029718, 0.541062,
		28.910440, 37.227833, 25.980185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999802, 36.889946, 25.241686>,  <29.498762, 37.207031, 25.601440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999802, 36.889946, 25.241686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782061, 37.121841, 25.484201>,  <28.651417, 37.260979, 25.629711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782061, 37.121841, 25.484201>,  <28.999802, 36.889946, 25.241686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782061, 37.121841, 25.484201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483600, 0.373683, -0.791513,
		-0.685428, -0.724064, 0.076945,
		-0.544353, 0.579736, 0.606290,
		28.618755, 37.295761, 25.666088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328821, 36.737518, 25.069784>,  <28.999802, 36.889946, 25.241686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328821, 36.737518, 25.069784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258280, 37.044140, 25.316782>,  <28.215956, 37.228111, 25.464981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258280, 37.044140, 25.316782>,  <28.328821, 36.737518, 25.069784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258280, 37.044140, 25.316782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635886, 0.390138, -0.665914,
		-0.751365, -0.510092, 0.418637,
		-0.176351, 0.766550, 0.617496,
		28.205374, 37.274105, 25.502031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637962, 36.781681, 25.212322>,  <28.328821, 36.737518, 25.069784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637962, 36.781681, 25.212322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805088, 37.143806, 25.242895>,  <27.905363, 37.361080, 25.261238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805088, 37.143806, 25.242895>,  <27.637962, 36.781681, 25.212322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805088, 37.143806, 25.242895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577081, 0.329420, -0.747302,
		-0.701720, 0.268126, 0.660074,
		0.417812, 0.905313, 0.076430,
		27.930431, 37.415401, 25.265823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102709, 37.212479, 25.138052>,  <27.637962, 36.781681, 25.212322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102709, 37.212479, 25.138052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410940, 37.445000, 25.033522>,  <27.595879, 37.584515, 24.970804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410940, 37.445000, 25.033522>,  <27.102709, 37.212479, 25.138052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410940, 37.445000, 25.033522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521071, 0.338502, -0.783519,
		-0.367007, 0.739931, 0.563744,
		0.770579, 0.581307, -0.261324,
		27.642115, 37.619392, 24.955124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816679, 37.865494, 24.919783>,  <27.102709, 37.212479, 25.138052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816679, 37.865494, 24.919783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186813, 37.882919, 24.769129>,  <27.408894, 37.893375, 24.678736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186813, 37.882919, 24.769129>,  <26.816679, 37.865494, 24.919783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186813, 37.882919, 24.769129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355858, 0.442567, -0.823104,
		0.130830, 0.895677, 0.425025,
		0.925337, 0.043562, -0.376635,
		27.464415, 37.895988, 24.656137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.850727, 38.464188, 24.559149>,  <26.816679, 37.865494, 24.919783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.850727, 38.464188, 24.559149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.182278, 38.295597, 24.412006>,  <27.381208, 38.194443, 24.323721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.182278, 38.295597, 24.412006>,  <26.850727, 38.464188, 24.559149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182278, 38.295597, 24.412006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151897, 0.463294, -0.873090,
		0.538416, 0.779560, 0.319992,
		0.828876, -0.421480, -0.367858,
		27.430941, 38.169151, 24.301649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144518, 38.944172, 24.202627>,  <26.850727, 38.464188, 24.559149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144518, 38.944172, 24.202627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326002, 38.622715, 24.048586>,  <27.434893, 38.429840, 23.956161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326002, 38.622715, 24.048586>,  <27.144518, 38.944172, 24.202627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326002, 38.622715, 24.048586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099260, 0.383882, -0.918032,
		0.885603, 0.454748, 0.094402,
		0.453712, -0.803641, -0.385105,
		27.462116, 38.381622, 23.933054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638485, 39.119305, 23.800722>,  <27.144518, 38.944172, 24.202627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638485, 39.119305, 23.800722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566433, 38.758465, 23.643867>,  <27.523201, 38.541962, 23.549755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566433, 38.758465, 23.643867>,  <27.638485, 39.119305, 23.800722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566433, 38.758465, 23.643867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245023, 0.427240, -0.870305,
		0.952637, -0.060688, -0.297994,
		-0.180132, -0.902099, -0.392134,
		27.512394, 38.487835, 23.526228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084229, 39.024746, 23.165689>,  <27.638485, 39.119305, 23.800722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084229, 39.024746, 23.165689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.793320, 38.752827, 23.127850>,  <27.618774, 38.589676, 23.105146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.793320, 38.752827, 23.127850>,  <28.084229, 39.024746, 23.165689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793320, 38.752827, 23.127850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150915, 0.292841, -0.944176,
		0.669555, -0.672395, -0.315566,
		-0.727270, -0.679801, -0.094598,
		27.575138, 38.548885, 23.099470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128136, 38.784637, 22.433643>,  <28.084229, 39.024746, 23.165689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128136, 38.784637, 22.433643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.759291, 38.681877, 22.549377>,  <27.537985, 38.620220, 22.618818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.759291, 38.681877, 22.549377>,  <28.128136, 38.784637, 22.433643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.759291, 38.681877, 22.549377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372525, 0.387334, -0.843325,
		0.104583, -0.885423, -0.452867,
		-0.922110, -0.256902, 0.289334,
		27.482658, 38.604805, 22.636177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782249, 38.362373, 21.907417>,  <28.128136, 38.784637, 22.433643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782249, 38.362373, 21.907417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477707, 38.512672, 22.118757>,  <27.294981, 38.602852, 22.245562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477707, 38.512672, 22.118757>,  <27.782249, 38.362373, 21.907417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477707, 38.512672, 22.118757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271396, 0.555387, -0.786059,
		-0.588795, -0.741864, -0.320873,
		-0.761357, 0.375744, 0.528348,
		27.249300, 38.625397, 22.277262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230467, 38.386948, 21.339447>,  <27.782249, 38.362373, 21.907417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230467, 38.386948, 21.339447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122072, 38.622299, 21.644178>,  <27.057035, 38.763508, 21.827017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122072, 38.622299, 21.644178>,  <27.230467, 38.386948, 21.339447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122072, 38.622299, 21.644178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547204, 0.556959, -0.624792,
		-0.791919, -0.586185, 0.171033,
		-0.270985, 0.588374, 0.761829,
		27.040777, 38.798813, 21.872726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542645, 38.542965, 21.172981>,  <27.230467, 38.386948, 21.339447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542645, 38.542965, 21.172981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640699, 38.793190, 21.469246>,  <26.699532, 38.943325, 21.647005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640699, 38.793190, 21.469246>,  <26.542645, 38.542965, 21.172981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640699, 38.793190, 21.469246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498043, 0.736713, -0.457392,
		-0.831782, -0.256757, 0.492154,
		0.245137, 0.625564, 0.740660,
		26.714241, 38.980858, 21.691444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878492, 38.839489, 21.324808>,  <26.542645, 38.542965, 21.172981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878492, 38.839489, 21.324808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170967, 39.082527, 21.448872>,  <26.346451, 39.228348, 21.523310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170967, 39.082527, 21.448872>,  <25.878492, 38.839489, 21.324808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170967, 39.082527, 21.448872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350950, 0.724913, -0.592735,
		-0.584981, 0.324548, 0.743280,
		0.731185, 0.607593, 0.310160,
		26.390322, 39.264805, 21.541920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531990, 39.476360, 21.500805>,  <25.878492, 38.839489, 21.324808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531990, 39.476360, 21.500805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919447, 39.569889, 21.467190>,  <26.151920, 39.626007, 21.447020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919447, 39.569889, 21.467190>,  <25.531990, 39.476360, 21.500805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919447, 39.569889, 21.467190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242912, 0.820076, -0.518140,
		-0.052232, 0.522306, 0.851157,
		0.968641, 0.233820, -0.084040,
		26.210039, 39.640034, 21.441978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.644058, 40.175144, 21.789358>,  <25.531990, 39.476360, 21.500805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.644058, 40.175144, 21.789358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924519, 40.083691, 21.519213>,  <26.092794, 40.028820, 21.357124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924519, 40.083691, 21.519213>,  <25.644058, 40.175144, 21.789358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924519, 40.083691, 21.519213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162566, 0.870988, -0.463629,
		0.694235, 0.434865, 0.573525,
		0.701149, -0.228632, -0.675364,
		26.134863, 40.015102, 21.316603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010084, 40.812023, 21.770021>,  <25.644058, 40.175144, 21.789358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.010084, 40.812023, 21.770021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025402, 40.577225, 21.446548>,  <26.034594, 40.436344, 21.252464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025402, 40.577225, 21.446548>,  <26.010084, 40.812023, 21.770021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025402, 40.577225, 21.446548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200025, 0.788393, -0.581744,
		0.979042, 0.184034, -0.087224,
		0.038294, -0.586999, -0.808681,
		26.036890, 40.401127, 21.203943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483599, 40.938858, 21.253656>,  <26.010084, 40.812023, 21.770021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483599, 40.938858, 21.253656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182442, 40.770031, 21.051664>,  <26.001747, 40.668736, 20.930470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182442, 40.770031, 21.051664>,  <26.483599, 40.938858, 21.253656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.182442, 40.770031, 21.051664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084921, 0.823172, -0.561405,
		0.652638, -0.379796, -0.655605,
		-0.752895, -0.422069, -0.504981,
		25.956573, 40.643410, 20.900169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529341, 40.915627, 20.490723>,  <26.483599, 40.938858, 21.253656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529341, 40.915627, 20.490723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154110, 40.976677, 20.615122>,  <25.928972, 41.013306, 20.689762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154110, 40.976677, 20.615122>,  <26.529341, 40.915627, 20.490723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154110, 40.976677, 20.615122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051882, 0.825703, -0.561713,
		-0.342525, -0.543065, -0.766653,
		-0.938075, 0.152626, 0.310999,
		25.872688, 41.022465, 20.708422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670193, 41.107159, 19.836227>,  <26.529341, 40.915627, 20.490723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670193, 41.107159, 19.836227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733608, 41.501106, 19.864222>,  <26.771658, 41.737476, 19.881018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733608, 41.501106, 19.864222>,  <26.670193, 41.107159, 19.836227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733608, 41.501106, 19.864222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863586, -0.172676, 0.473711,
		0.478628, -0.014663, -0.877895,
		0.158538, 0.984869, 0.069985,
		26.781170, 41.796566, 19.885218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361574, 41.210045, 19.490633>,  <26.670193, 41.107159, 19.836227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361574, 41.210045, 19.490633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245020, 41.490623, 19.750809>,  <27.175087, 41.658970, 19.906914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245020, 41.490623, 19.750809>,  <27.361574, 41.210045, 19.490633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245020, 41.490623, 19.750809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841838, -0.134894, 0.522601,
		0.454315, 0.699844, -0.551196,
		-0.291386, 0.701443, 0.650439,
		27.157604, 41.701057, 19.945940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930780, 41.622734, 19.590549>,  <27.361574, 41.210045, 19.490633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930780, 41.622734, 19.590549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699448, 41.661877, 19.914513>,  <27.560648, 41.685360, 20.108891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699448, 41.661877, 19.914513>,  <27.930780, 41.622734, 19.590549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699448, 41.661877, 19.914513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798947, -0.132816, 0.586552,
		0.164965, 0.986298, -0.001368,
		-0.578334, 0.097854, 0.809910,
		27.525948, 41.691235, 20.157486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404318, 41.861492, 19.945665>,  <27.930780, 41.622734, 19.590549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404318, 41.861492, 19.945665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140987, 41.809547, 20.242245>,  <27.982990, 41.778381, 20.420193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140987, 41.809547, 20.242245>,  <28.404318, 41.861492, 19.945665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140987, 41.809547, 20.242245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720908, 0.174617, 0.670672,
		-0.216566, 0.976035, -0.021334,
		-0.658324, -0.129865, 0.741447,
		27.943491, 41.770588, 20.464680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331326, 42.415874, 20.401911>,  <28.404318, 41.861492, 19.945665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331326, 42.415874, 20.401911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215099, 42.089909, 20.602505>,  <28.145365, 41.894329, 20.722862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215099, 42.089909, 20.602505>,  <28.331326, 42.415874, 20.401911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215099, 42.089909, 20.602505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438947, 0.352179, 0.826617,
		-0.850235, 0.460310, 0.255374,
		-0.290563, -0.814914, 0.501486,
		28.127930, 41.845436, 20.752951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991936, 42.493366, 21.114067>,  <28.331326, 42.415874, 20.401911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991936, 42.493366, 21.114067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845533, 42.122025, 21.140001>,  <27.757692, 41.899220, 21.155561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845533, 42.122025, 21.140001>,  <27.991936, 42.493366, 21.114067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845533, 42.122025, 21.140001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490646, -0.133299, 0.861103,
		-0.790764, 0.346978, 0.504280,
		-0.366004, -0.928352, 0.064835,
		27.735733, 41.843517, 21.159452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809486, 42.519142, 21.783810>,  <27.991936, 42.493366, 21.114067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809486, 42.519142, 21.783810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861721, 42.137802, 21.674944>,  <27.893061, 41.908997, 21.609625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861721, 42.137802, 21.674944>,  <27.809486, 42.519142, 21.783810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861721, 42.137802, 21.674944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392138, -0.202464, 0.897350,
		-0.910591, -0.223906, 0.347406,
		0.130584, -0.953349, -0.272164,
		27.900896, 41.851799, 21.593294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388105, 42.200893, 22.229797>,  <27.809486, 42.519142, 21.783810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388105, 42.200893, 22.229797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669970, 41.944157, 22.108805>,  <27.839088, 41.790115, 22.036209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669970, 41.944157, 22.108805>,  <27.388105, 42.200893, 22.229797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.669970, 41.944157, 22.108805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329153, -0.081960, 0.940713,
		-0.628581, -0.762444, 0.153510,
		0.704659, -0.641843, -0.302479,
		27.881367, 41.751602, 22.018061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300318, 41.643429, 22.628567>,  <27.388105, 42.200893, 22.229797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300318, 41.643429, 22.628567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680216, 41.642513, 22.503361>,  <27.908155, 41.641964, 22.428238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680216, 41.642513, 22.503361>,  <27.300318, 41.643429, 22.628567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680216, 41.642513, 22.503361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307266, -0.184110, 0.933644,
		-0.059765, -0.982903, -0.174155,
		0.949745, -0.002288, -0.313015,
		27.965139, 41.641827, 22.409456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540588, 41.096672, 23.032637>,  <27.300318, 41.643429, 22.628567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540588, 41.096672, 23.032637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863527, 41.278030, 22.881575>,  <28.057291, 41.386845, 22.790937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863527, 41.278030, 22.881575>,  <27.540588, 41.096672, 23.032637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863527, 41.278030, 22.881575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521465, -0.248679, 0.816231,
		0.276163, -0.855914, -0.437201,
		0.807346, 0.453398, -0.377653,
		28.105732, 41.414051, 22.768278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024609, 40.570339, 22.935198>,  <27.540588, 41.096672, 23.032637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024609, 40.570339, 22.935198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224058, 40.913925, 22.981771>,  <28.343729, 41.120075, 23.009716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224058, 40.913925, 22.981771>,  <28.024609, 40.570339, 22.935198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224058, 40.913925, 22.981771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446643, -0.369718, 0.814751,
		0.742888, -0.354250, -0.568000,
		0.498625, 0.858962, 0.116436,
		28.373646, 41.171616, 23.016703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694345, 40.336845, 23.104666>,  <28.024609, 40.570339, 22.935198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694345, 40.336845, 23.104666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707462, 40.725418, 23.198681>,  <28.715332, 40.958561, 23.255091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707462, 40.725418, 23.198681>,  <28.694345, 40.336845, 23.104666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707462, 40.725418, 23.198681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552683, -0.213563, 0.805563,
		0.832746, 0.103485, -0.543898,
		0.032793, 0.971433, 0.235039,
		28.717300, 41.016850, 23.269192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370708, 40.475475, 23.339098>,  <28.694345, 40.336845, 23.104666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370708, 40.475475, 23.339098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172291, 40.793743, 23.478151>,  <29.053240, 40.984703, 23.561583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172291, 40.793743, 23.478151>,  <29.370708, 40.475475, 23.339098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172291, 40.793743, 23.478151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604390, 0.028948, 0.796163,
		0.623419, 0.605040, -0.495254,
		-0.496046, 0.795669, 0.347633,
		29.023478, 41.032444, 23.582441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857759, 41.067337, 23.565239>,  <29.370708, 40.475475, 23.339098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857759, 41.067337, 23.565239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516758, 41.103039, 23.771257>,  <29.312157, 41.124462, 23.894869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516758, 41.103039, 23.771257>,  <29.857759, 41.067337, 23.565239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516758, 41.103039, 23.771257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512569, -0.050520, 0.857158,
		0.102528, 0.994726, -0.002682,
		-0.852503, 0.089258, 0.515046,
		29.261007, 41.129818, 23.925772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041454, 41.440315, 24.135395>,  <29.857759, 41.067337, 23.565239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041454, 41.440315, 24.135395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695019, 41.273441, 24.245556>,  <29.487158, 41.173317, 24.311653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695019, 41.273441, 24.245556>,  <30.041454, 41.440315, 24.135395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695019, 41.273441, 24.245556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371480, -0.168480, 0.913027,
		-0.334498, 0.893070, 0.300893,
		-0.866091, -0.417182, 0.275402,
		29.435192, 41.148289, 24.328176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863039, 41.708984, 24.847647>,  <30.041454, 41.440315, 24.135395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863039, 41.708984, 24.847647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652990, 41.368866, 24.833498>,  <29.526960, 41.164795, 24.825008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652990, 41.368866, 24.833498>,  <29.863039, 41.708984, 24.847647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652990, 41.368866, 24.833498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202672, -0.165319, 0.965191,
		-0.826542, 0.499674, 0.259143,
		-0.525122, -0.850291, -0.035373,
		29.495453, 41.113777, 24.822886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405489, 41.632298, 25.496899>,  <29.863039, 41.708984, 24.847647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405489, 41.632298, 25.496899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430784, 41.263344, 25.344475>,  <29.445961, 41.041973, 25.253021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430784, 41.263344, 25.344475>,  <29.405489, 41.632298, 25.496899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430784, 41.263344, 25.344475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090896, -0.374914, 0.922593,
		-0.993851, -0.092980, 0.060132,
		0.063239, -0.922385, -0.381060,
		29.449757, 40.986629, 25.230156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987530, 41.201408, 25.899004>,  <29.405489, 41.632298, 25.496899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987530, 41.201408, 25.899004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224989, 40.944767, 25.704714>,  <29.367464, 40.790783, 25.588140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224989, 40.944767, 25.704714>,  <28.987530, 41.201408, 25.899004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224989, 40.944767, 25.704714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218019, -0.452784, 0.864554,
		-0.774628, -0.619138, -0.128914,
		0.593649, -0.641603, -0.485723,
		29.403084, 40.752285, 25.558996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947262, 40.681385, 26.298805>,  <28.987530, 41.201408, 25.899004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947262, 40.681385, 26.298805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268654, 40.566959, 26.089966>,  <29.461489, 40.498302, 25.964663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268654, 40.566959, 26.089966>,  <28.947262, 40.681385, 26.298805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268654, 40.566959, 26.089966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354350, -0.474912, 0.805540,
		-0.478418, -0.832230, -0.280196,
		0.803463, -0.286098, -0.522107,
		29.509697, 40.481140, 25.933336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033363, 39.993431, 26.420280>,  <28.947262, 40.681385, 26.298805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033363, 39.993431, 26.420280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402309, 40.104504, 26.312847>,  <29.623676, 40.171146, 26.248386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402309, 40.104504, 26.312847>,  <29.033363, 39.993431, 26.420280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402309, 40.104504, 26.312847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385107, -0.605880, 0.696133,
		0.030572, -0.745522, -0.665779,
		0.922365, 0.277678, -0.268583,
		29.679020, 40.187805, 26.232273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397207, 39.364166, 26.432798>,  <29.033363, 39.993431, 26.420280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397207, 39.364166, 26.432798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.669582, 39.655369, 26.464613>,  <29.833008, 39.830090, 26.483702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.669582, 39.655369, 26.464613>,  <29.397207, 39.364166, 26.432798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669582, 39.655369, 26.464613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441544, -0.494772, 0.748491,
		0.584261, -0.474557, -0.658357,
		0.680938, 0.728008, 0.079538,
		29.873863, 39.873772, 26.488474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020374, 39.070286, 26.474211>,  <29.397207, 39.364166, 26.432798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020374, 39.070286, 26.474211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072289, 39.438759, 26.620953>,  <30.103437, 39.659843, 26.708998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072289, 39.438759, 26.620953>,  <30.020374, 39.070286, 26.474211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072289, 39.438759, 26.620953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621001, -0.363947, 0.694190,
		0.772990, 0.137721, -0.619289,
		0.129784, 0.921181, 0.366853,
		30.111223, 39.715115, 26.731009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760269, 39.109589, 26.654011>,  <30.020374, 39.070286, 26.474211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760269, 39.109589, 26.654011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552572, 39.379745, 26.863478>,  <30.427954, 39.541840, 26.989159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552572, 39.379745, 26.863478>,  <30.760269, 39.109589, 26.654011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552572, 39.379745, 26.863478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382132, -0.364602, 0.849141,
		0.764436, 0.641020, -0.068773,
		-0.519242, 0.675395, 0.523669,
		30.396799, 39.582363, 27.020578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194008, 39.244217, 27.178928>,  <30.760269, 39.109589, 26.654011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194008, 39.244217, 27.178928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859571, 39.413143, 27.318987>,  <30.658911, 39.514500, 27.403021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859571, 39.413143, 27.318987>,  <31.194008, 39.244217, 27.178928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859571, 39.413143, 27.318987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299549, -0.183265, 0.936314,
		0.459591, 0.887729, 0.026722,
		-0.836090, 0.422317, 0.350145,
		30.608744, 39.539837, 27.424030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416250, 39.656414, 27.638039>,  <31.194008, 39.244217, 27.178928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416250, 39.656414, 27.638039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033133, 39.605736, 27.741253>,  <30.803263, 39.575329, 27.803181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033133, 39.605736, 27.741253>,  <31.416250, 39.656414, 27.638039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033133, 39.605736, 27.741253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279493, -0.200577, 0.938964,
		-0.067202, 0.971452, 0.227520,
		-0.957793, -0.126691, 0.258035,
		30.745794, 39.567730, 27.818663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324888, 40.032520, 28.277609>,  <31.416250, 39.656414, 27.638039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324888, 40.032520, 28.277609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037283, 39.755344, 28.298990>,  <30.864719, 39.589039, 28.311819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037283, 39.755344, 28.298990>,  <31.324888, 40.032520, 28.277609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037283, 39.755344, 28.298990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258063, -0.194779, 0.946290,
		-0.645309, 0.694188, 0.318870,
		-0.719013, -0.692938, 0.053452,
		30.821579, 39.547462, 28.315025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037962, 40.057461, 28.973827>,  <31.324888, 40.032520, 28.277609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037962, 40.057461, 28.973827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927494, 39.704395, 28.821703>,  <30.861214, 39.492558, 28.730429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927494, 39.704395, 28.821703>,  <31.037962, 40.057461, 28.973827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927494, 39.704395, 28.821703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160876, -0.432569, 0.887132,
		-0.947549, 0.183816, 0.261462,
		-0.276169, -0.882664, -0.380309,
		30.844643, 39.439594, 28.707611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549118, 39.787930, 29.405500>,  <31.037962, 40.057461, 28.973827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549118, 39.787930, 29.405500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670784, 39.460533, 29.210543>,  <30.743784, 39.264095, 29.093569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670784, 39.460533, 29.210543>,  <30.549118, 39.787930, 29.405500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670784, 39.460533, 29.210543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066195, -0.528559, 0.846312,
		-0.950316, -0.225156, -0.214950,
		0.304166, -0.818493, -0.487394,
		30.762033, 39.214985, 29.064325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111481, 39.322685, 29.545847>,  <30.549118, 39.787930, 29.405500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111481, 39.322685, 29.545847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398418, 39.071957, 29.424181>,  <30.570581, 38.921520, 29.351181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398418, 39.071957, 29.424181>,  <30.111481, 39.322685, 29.545847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398418, 39.071957, 29.424181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011563, -0.447216, 0.894351,
		-0.696622, -0.638041, -0.328056,
		0.717345, -0.626818, -0.304163,
		30.613623, 38.883911, 29.332932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921343, 38.600250, 29.804871>,  <30.111481, 39.322685, 29.545847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921343, 38.600250, 29.804871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314964, 38.612144, 29.734728>,  <30.551138, 38.619282, 29.692642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314964, 38.612144, 29.734728>,  <29.921343, 38.600250, 29.804871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314964, 38.612144, 29.734728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169763, -0.451151, 0.876153,
		-0.053058, -0.891952, -0.449006,
		0.984055, 0.029738, -0.175357,
		30.610182, 38.621067, 29.682121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185022, 37.886574, 29.978102>,  <29.921343, 38.600250, 29.804871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185022, 37.886574, 29.978102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498636, 38.134449, 29.992393>,  <30.686804, 38.283176, 30.000969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498636, 38.134449, 29.992393>,  <30.185022, 37.886574, 29.978102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498636, 38.134449, 29.992393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322581, -0.455955, 0.829486,
		0.530316, -0.638818, -0.557383,
		0.784032, 0.619691, 0.035729,
		30.733847, 38.320354, 30.003113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819733, 37.558876, 30.243366>,  <30.185022, 37.886574, 29.978102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819733, 37.558876, 30.243366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907377, 37.944576, 30.302973>,  <30.959963, 38.175999, 30.338737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907377, 37.944576, 30.302973>,  <30.819733, 37.558876, 30.243366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907377, 37.944576, 30.302973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396182, -0.227495, 0.889542,
		0.891645, -0.135870, -0.431867,
		0.219110, 0.964254, 0.149016,
		30.973110, 38.233852, 30.347677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429213, 37.577126, 30.579615>,  <30.819733, 37.558876, 30.243366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429213, 37.577126, 30.579615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270115, 37.933243, 30.668316>,  <31.174656, 38.146915, 30.721537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270115, 37.933243, 30.668316>,  <31.429213, 37.577126, 30.579615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270115, 37.933243, 30.668316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286837, -0.108916, 0.951767,
		0.871507, 0.442166, -0.212049,
		-0.397744, 0.890296, 0.221751,
		31.150791, 38.200333, 30.734840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953571, 37.921181, 30.880280>,  <31.429213, 37.577126, 30.579615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953571, 37.921181, 30.880280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629410, 38.126236, 30.993731>,  <31.434912, 38.249268, 31.061802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629410, 38.126236, 30.993731>,  <31.953571, 37.921181, 30.880280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629410, 38.126236, 30.993731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323363, -0.012312, 0.946195,
		0.488549, 0.858516, -0.155791,
		-0.810405, 0.512639, 0.283628,
		31.386288, 38.280029, 31.078819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219875, 38.504963, 31.254135>,  <31.953571, 37.921181, 30.880280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219875, 38.504963, 31.254135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847361, 38.426624, 31.376999>,  <31.623852, 38.379620, 31.450718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847361, 38.426624, 31.376999>,  <32.219875, 38.504963, 31.254135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847361, 38.426624, 31.376999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342077, -0.180269, 0.922218,
		-0.125243, 0.963922, 0.234878,
		-0.931288, -0.195848, 0.307159,
		31.567974, 38.367870, 31.469147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091820, 38.871017, 31.890139>,  <32.219875, 38.504963, 31.254135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091820, 38.871017, 31.890139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834019, 38.566322, 31.916563>,  <31.679337, 38.383503, 31.932417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834019, 38.566322, 31.916563>,  <32.091820, 38.871017, 31.890139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834019, 38.566322, 31.916563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410854, -0.272161, 0.870131,
		-0.644835, 0.587945, 0.488374,
		-0.644505, -0.761741, 0.066060,
		31.640667, 38.337799, 31.936380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929111, 38.855980, 32.614834>,  <32.091820, 38.871017, 31.890139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929111, 38.855980, 32.614834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771101, 38.510429, 32.489830>,  <31.676294, 38.303097, 32.414825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771101, 38.510429, 32.489830>,  <31.929111, 38.855980, 32.614834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771101, 38.510429, 32.489830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289496, -0.439908, 0.850102,
		-0.871863, 0.245343, 0.423866,
		-0.395029, -0.863879, -0.312514,
		31.652592, 38.251266, 32.396076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457806, 38.599697, 33.113136>,  <31.929111, 38.855980, 32.614834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457806, 38.599697, 33.113136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580856, 38.286537, 32.896832>,  <31.654686, 38.098640, 32.767048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580856, 38.286537, 32.896832>,  <31.457806, 38.599697, 33.113136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580856, 38.286537, 32.896832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521405, -0.336699, 0.784073,
		-0.795929, -0.523160, 0.304632,
		0.307626, -0.782904, -0.540766,
		31.673143, 38.051666, 32.734600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280653, 37.933205, 33.565388>,  <31.457806, 38.599697, 33.113136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280653, 37.933205, 33.565388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548107, 37.819729, 33.290447>,  <31.708580, 37.751644, 33.125484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548107, 37.819729, 33.290447>,  <31.280653, 37.933205, 33.565388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548107, 37.819729, 33.290447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486018, -0.532858, 0.692711,
		-0.562778, -0.797233, -0.218405,
		0.668631, -0.283694, -0.687350,
		31.748697, 37.734623, 33.084244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429632, 37.229488, 33.743023>,  <31.280653, 37.933205, 33.565388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429632, 37.229488, 33.743023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733351, 37.310413, 33.495625>,  <31.915583, 37.358971, 33.347187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733351, 37.310413, 33.495625>,  <31.429632, 37.229488, 33.743023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733351, 37.310413, 33.495625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629012, -0.471758, 0.617890,
		-0.166772, -0.858204, -0.485462,
		0.759296, 0.202315, -0.618496,
		31.961140, 37.371109, 33.310074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882948, 36.569664, 33.689259>,  <31.429632, 37.229488, 33.743023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882948, 36.569664, 33.689259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105957, 36.879772, 33.570511>,  <32.239761, 37.065838, 33.499264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105957, 36.879772, 33.570511>,  <31.882948, 36.569664, 33.689259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105957, 36.879772, 33.570511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727388, -0.283850, 0.624769,
		0.400097, -0.564260, -0.722172,
		0.557521, 0.775267, -0.296869,
		32.273212, 37.112350, 33.481449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564342, 36.267281, 33.475983>,  <31.882948, 36.569664, 33.689259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564342, 36.267281, 33.475983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600811, 36.656071, 33.562664>,  <32.622692, 36.889343, 33.614674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600811, 36.656071, 33.562664>,  <32.564342, 36.267281, 33.475983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600811, 36.656071, 33.562664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705314, -0.216649, 0.674978,
		0.703008, 0.091303, -0.705297,
		0.091175, 0.971971, 0.216703,
		32.628162, 36.947662, 33.627674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320793, 36.348324, 33.387077>,  <32.564342, 36.267281, 33.475983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320793, 36.348324, 33.387077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168610, 36.659126, 33.587681>,  <33.077301, 36.845608, 33.708042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168610, 36.659126, 33.587681>,  <33.320793, 36.348324, 33.387077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168610, 36.659126, 33.587681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783402, -0.017401, 0.621272,
		0.491462, 0.629247, -0.602091,
		-0.380457, 0.777010, 0.501505,
		33.054474, 36.892231, 33.738132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868763, 36.791306, 33.421936>,  <33.320793, 36.348324, 33.387077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868763, 36.791306, 33.421936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624123, 36.861584, 33.730503>,  <33.477341, 36.903751, 33.915642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624123, 36.861584, 33.730503>,  <33.868763, 36.791306, 33.421936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624123, 36.861584, 33.730503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784515, 0.008486, 0.620051,
		0.102391, 0.984409, -0.143023,
		-0.611598, 0.175691, 0.771415,
		33.440643, 36.914291, 33.961929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174171, 37.437778, 33.786503>,  <33.868763, 36.791306, 33.421936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174171, 37.437778, 33.786503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939648, 37.217808, 34.024433>,  <33.798935, 37.085827, 34.167191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939648, 37.217808, 34.024433>,  <34.174171, 37.437778, 33.786503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939648, 37.217808, 34.024433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717387, -0.011395, 0.696582,
		-0.376292, 0.835134, 0.401192,
		-0.586311, -0.549928, 0.594826,
		33.763756, 37.052830, 34.202881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573837, 37.933182, 33.638767>,  <34.174171, 37.437778, 33.786503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573837, 37.933182, 33.638767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962421, 38.010326, 33.693996>,  <34.195572, 38.056614, 33.727135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962421, 38.010326, 33.693996>,  <33.573837, 37.933182, 33.638767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962421, 38.010326, 33.693996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095619, 0.214289, -0.972079,
		-0.217068, 0.957540, 0.189732,
		0.971462, 0.192865, 0.138074,
		34.253860, 38.068188, 33.735420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690712, 38.615093, 33.405735>,  <33.573837, 37.933182, 33.638767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690712, 38.615093, 33.405735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044140, 38.430309, 33.375011>,  <34.256195, 38.319439, 33.356579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044140, 38.430309, 33.375011>,  <33.690712, 38.615093, 33.405735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044140, 38.430309, 33.375011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117507, 0.377467, -0.918537,
		0.453319, 0.802566, 0.387802,
		0.883569, -0.461960, -0.076805,
		34.309212, 38.291721, 33.351971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109444, 39.016018, 32.946358>,  <33.690712, 38.615093, 33.405735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109444, 39.016018, 32.946358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324257, 38.679371, 32.969223>,  <34.453144, 38.477383, 32.982941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324257, 38.679371, 32.969223>,  <34.109444, 39.016018, 32.946358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324257, 38.679371, 32.969223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291069, 0.121274, -0.948984,
		0.791754, 0.526274, 0.310099,
		0.537033, -0.841622, 0.057163,
		34.485367, 38.426884, 32.986370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801853, 39.229374, 32.734039>,  <34.109444, 39.016018, 32.946358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801853, 39.229374, 32.734039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754810, 38.836868, 32.672989>,  <34.726585, 38.601364, 32.636356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754810, 38.836868, 32.672989>,  <34.801853, 39.229374, 32.734039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754810, 38.836868, 32.672989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220880, 0.123997, -0.967387,
		0.968184, -0.147483, 0.202158,
		-0.117606, -0.981261, -0.152628,
		34.719528, 38.542488, 32.627201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383186, 39.061905, 32.372498>,  <34.801853, 39.229374, 32.734039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383186, 39.061905, 32.372498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106937, 38.782310, 32.298244>,  <34.941189, 38.614555, 32.253693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106937, 38.782310, 32.298244>,  <35.383186, 39.061905, 32.372498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106937, 38.782310, 32.298244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073483, 0.187533, -0.979506,
		0.719473, -0.690109, -0.078151,
		-0.690622, -0.698985, -0.185636,
		34.899750, 38.572617, 32.242554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679928, 38.741158, 31.705704>,  <35.383186, 39.061905, 32.372498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679928, 38.741158, 31.705704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298962, 38.641705, 31.776241>,  <35.070381, 38.582035, 31.818563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298962, 38.641705, 31.776241>,  <35.679928, 38.741158, 31.705704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298962, 38.641705, 31.776241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192618, 0.042522, -0.980352,
		0.236246, -0.967665, -0.088389,
		-0.952411, -0.248629, 0.176344,
		35.013237, 38.567116, 31.829145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484699, 38.220852, 31.159266>,  <35.679928, 38.741158, 31.705704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484699, 38.220852, 31.159266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147934, 38.396626, 31.284531>,  <34.945873, 38.502090, 31.359690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147934, 38.396626, 31.284531>,  <35.484699, 38.220852, 31.159266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147934, 38.396626, 31.284531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267031, 0.165016, -0.949455,
		-0.468904, -0.882986, -0.021586,
		-0.841917, 0.439439, 0.313161,
		34.895359, 38.528458, 31.378479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054367, 38.192459, 30.571699>,  <35.484699, 38.220852, 31.159266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054367, 38.192459, 30.571699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879173, 38.473026, 30.796618>,  <34.774055, 38.641369, 30.931568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879173, 38.473026, 30.796618>,  <35.054367, 38.192459, 30.571699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879173, 38.473026, 30.796618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353638, 0.440621, -0.825102,
		-0.826503, -0.560232, 0.055063,
		-0.437987, 0.701422, 0.562294,
		34.747776, 38.683453, 30.965305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471069, 38.353981, 30.176184>,  <35.054367, 38.192459, 30.571699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471069, 38.353981, 30.176184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516987, 38.657784, 30.432299>,  <34.544537, 38.840065, 30.585968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516987, 38.657784, 30.432299>,  <34.471069, 38.353981, 30.176184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516987, 38.657784, 30.432299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321465, 0.638270, -0.699480,
		-0.939938, -0.125535, 0.317424,
		0.114794, 0.759508, 0.640289,
		34.551426, 38.885635, 30.624386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854027, 38.602669, 30.098005>,  <34.471069, 38.353981, 30.176184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854027, 38.602669, 30.098005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077343, 38.891197, 30.261955>,  <34.211334, 39.064316, 30.360325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077343, 38.891197, 30.261955>,  <33.854027, 38.602669, 30.098005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077343, 38.891197, 30.261955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518593, 0.689044, -0.506242,
		-0.647587, 0.070073, 0.758763,
		0.558294, 0.721324, 0.409876,
		34.244831, 39.107594, 30.384918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450169, 39.103611, 30.366104>,  <33.854027, 38.602669, 30.098005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450169, 39.103611, 30.366104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797657, 39.291126, 30.302158>,  <34.006149, 39.403637, 30.263790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797657, 39.291126, 30.302158>,  <33.450169, 39.103611, 30.366104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797657, 39.291126, 30.302158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476491, 0.702916, -0.528077,
		-0.135183, 0.534928, 0.834013,
		0.868724, 0.468787, -0.159866,
		34.058273, 39.431763, 30.254198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236572, 39.817562, 30.337847>,  <33.450169, 39.103611, 30.366104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236572, 39.817562, 30.337847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604202, 39.833046, 30.180975>,  <33.824780, 39.842335, 30.086851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604202, 39.833046, 30.180975>,  <33.236572, 39.817562, 30.337847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604202, 39.833046, 30.180975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296227, 0.724196, -0.622728,
		0.259909, 0.688507, 0.677057,
		0.919074, 0.038710, -0.392179,
		33.879925, 39.844658, 30.063322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215084, 40.524662, 30.199303>,  <33.236572, 39.817562, 30.337847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215084, 40.524662, 30.199303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519089, 40.354195, 30.003035>,  <33.701492, 40.251915, 29.885275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519089, 40.354195, 30.003035>,  <33.215084, 40.524662, 30.199303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519089, 40.354195, 30.003035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121211, 0.648788, -0.751253,
		0.638502, 0.630439, 0.441433,
		0.760015, -0.426170, -0.490669,
		33.747093, 40.226345, 29.855833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567146, 41.088276, 29.926544>,  <33.215084, 40.524662, 30.199303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567146, 41.088276, 29.926544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669922, 40.784012, 29.688089>,  <33.731586, 40.601452, 29.545017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669922, 40.784012, 29.688089>,  <33.567146, 41.088276, 29.926544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669922, 40.784012, 29.688089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151480, 0.577521, -0.802199,
		0.954481, 0.296422, 0.033166,
		0.256944, -0.760660, -0.596135,
		33.747005, 40.555813, 29.509249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936237, 41.410831, 29.318037>,  <33.567146, 41.088276, 29.926544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936237, 41.410831, 29.318037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879189, 41.034454, 29.195210>,  <33.844959, 40.808628, 29.121513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879189, 41.034454, 29.195210>,  <33.936237, 41.410831, 29.318037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879189, 41.034454, 29.195210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286676, 0.336214, -0.897094,
		0.947351, -0.039920, -0.317697,
		-0.142626, -0.940939, -0.307069,
		33.836399, 40.752174, 29.103088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489876, 41.193153, 28.717974>,  <33.936237, 41.410831, 29.318037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489876, 41.193153, 28.717974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161537, 40.965019, 28.705847>,  <33.964531, 40.828140, 28.698570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161537, 40.965019, 28.705847>,  <34.489876, 41.193153, 28.717974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161537, 40.965019, 28.705847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251764, 0.408977, -0.877128,
		0.512659, -0.712357, -0.479299,
		-0.820850, -0.570338, -0.030320,
		33.915283, 40.793919, 28.696751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572712, 40.955441, 28.107559>,  <34.489876, 41.193153, 28.717974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572712, 40.955441, 28.107559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192642, 40.850300, 28.174591>,  <33.964600, 40.787216, 28.214811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192642, 40.850300, 28.174591>,  <34.572712, 40.955441, 28.107559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192642, 40.850300, 28.174591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251610, 0.329306, -0.910082,
		0.184031, -0.906899, -0.379034,
		-0.950171, -0.262852, 0.167582,
		33.907593, 40.771442, 28.224865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339561, 40.353455, 27.542488>,  <34.572712, 40.955441, 28.107559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339561, 40.353455, 27.542488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028904, 40.560833, 27.685616>,  <33.842510, 40.685261, 27.771492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028904, 40.560833, 27.685616>,  <34.339561, 40.353455, 27.542488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028904, 40.560833, 27.685616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346815, 0.122272, -0.929930,
		-0.525869, -0.846323, 0.084842,
		-0.776648, 0.518446, 0.357817,
		33.795910, 40.716366, 27.792961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839394, 40.094364, 27.219278>,  <34.339561, 40.353455, 27.542488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839394, 40.094364, 27.219278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678642, 40.440216, 27.339882>,  <33.582191, 40.647728, 27.412245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678642, 40.440216, 27.339882>,  <33.839394, 40.094364, 27.219278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678642, 40.440216, 27.339882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476651, 0.083619, -0.875107,
		-0.781857, -0.495397, 0.378524,
		-0.401874, 0.864632, 0.301510,
		33.558079, 40.699604, 27.430334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158775, 40.081863, 26.976086>,  <33.839394, 40.094364, 27.219278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158775, 40.081863, 26.976086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238335, 40.471889, 27.015448>,  <33.286072, 40.705906, 27.039064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238335, 40.471889, 27.015448>,  <33.158775, 40.081863, 26.976086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238335, 40.471889, 27.015448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587306, 0.198977, -0.784526,
		-0.784545, 0.098249, 0.612239,
		0.198900, 0.975067, 0.098404,
		33.298004, 40.764408, 27.044970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477062, 40.486721, 26.948780>,  <33.158775, 40.081863, 26.976086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477062, 40.486721, 26.948780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768841, 40.742630, 26.851955>,  <32.943909, 40.896175, 26.793861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768841, 40.742630, 26.851955>,  <32.477062, 40.486721, 26.948780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768841, 40.742630, 26.851955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454660, 0.189080, -0.870364,
		-0.511068, 0.744941, 0.428804,
		0.729448, 0.639775, -0.242062,
		32.987675, 40.934563, 26.779337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106182, 41.099876, 26.767181>,  <32.477062, 40.486721, 26.948780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106182, 41.099876, 26.767181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466423, 41.108479, 26.593536>,  <32.682568, 41.113640, 26.489349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466423, 41.108479, 26.593536>,  <32.106182, 41.099876, 26.767181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466423, 41.108479, 26.593536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434124, -0.004464, -0.900842,
		-0.021313, 0.999759, 0.005317,
		0.900601, 0.021507, -0.434114,
		32.736603, 41.114929, 26.463303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122337, 41.537025, 26.214567>,  <32.106182, 41.099876, 26.767181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122337, 41.537025, 26.214567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407196, 41.275620, 26.111992>,  <32.578110, 41.118774, 26.050447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407196, 41.275620, 26.111992>,  <32.122337, 41.537025, 26.214567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407196, 41.275620, 26.111992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286613, 0.062800, -0.955986,
		0.640860, 0.754300, -0.142584,
		0.712146, -0.653519, -0.256438,
		32.620838, 41.079563, 26.035061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523945, 41.868324, 25.552404>,  <32.122337, 41.537025, 26.214567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523945, 41.868324, 25.552404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520077, 41.470856, 25.597174>,  <32.517757, 41.232376, 25.624035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520077, 41.470856, 25.597174>,  <32.523945, 41.868324, 25.552404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520077, 41.470856, 25.597174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336035, -0.102189, -0.936289,
		0.941800, -0.046660, -0.332920,
		-0.009667, -0.993670, 0.111921,
		32.517178, 41.172756, 25.630751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706238, 41.658901, 24.822447>,  <32.523945, 41.868324, 25.552404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706238, 41.658901, 24.822447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556564, 41.341129, 25.013805>,  <32.466763, 41.150467, 25.128620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556564, 41.341129, 25.013805>,  <32.706238, 41.658901, 24.822447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556564, 41.341129, 25.013805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513361, -0.252171, -0.820287,
		0.772302, -0.552525, -0.313474,
		-0.374180, -0.794435, 0.478397,
		32.444309, 41.102798, 25.157324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820812, 41.171150, 24.369183>,  <32.706238, 41.658901, 24.822447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820812, 41.171150, 24.369183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530998, 41.021214, 24.600540>,  <32.357109, 40.931252, 24.739355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530998, 41.021214, 24.600540>,  <32.820812, 41.171150, 24.369183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530998, 41.021214, 24.600540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494515, -0.301834, -0.815078,
		0.480104, -0.876579, 0.033326,
		-0.724539, -0.374842, 0.578393,
		32.313637, 40.908760, 24.774057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797489, 40.510506, 24.215391>,  <32.820812, 41.171150, 24.369183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797489, 40.510506, 24.215391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437977, 40.593021, 24.370123>,  <32.222271, 40.642529, 24.462961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437977, 40.593021, 24.370123>,  <32.797489, 40.510506, 24.215391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437977, 40.593021, 24.370123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437382, -0.361981, -0.823205,
		-0.029792, -0.909074, 0.415568,
		-0.898782, 0.206287, 0.386829,
		32.168343, 40.654907, 24.486172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483173, 39.924873, 24.095011>,  <32.797489, 40.510506, 24.215391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483173, 39.924873, 24.095011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183746, 40.186363, 24.139376>,  <32.004089, 40.343258, 24.165995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183746, 40.186363, 24.139376>,  <32.483173, 39.924873, 24.095011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183746, 40.186363, 24.139376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477972, -0.416067, -0.773583,
		-0.459563, -0.632087, 0.623913,
		-0.748562, 0.653724, 0.110911,
		31.959177, 40.382481, 24.172649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939423, 39.553852, 23.926500>,  <32.483173, 39.924873, 24.095011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939423, 39.553852, 23.926500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796379, 39.926605, 23.902107>,  <31.710554, 40.150257, 23.887472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796379, 39.926605, 23.902107>,  <31.939423, 39.553852, 23.926500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796379, 39.926605, 23.902107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644290, -0.293462, -0.706237,
		-0.676024, -0.213265, 0.705344,
		-0.357607, 0.931879, -0.060983,
		31.689096, 40.206169, 23.883812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200926, 39.537540, 23.878738>,  <31.939423, 39.553852, 23.926500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200926, 39.537540, 23.878738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254124, 39.915001, 23.757523>,  <31.286041, 40.141476, 23.684793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254124, 39.915001, 23.757523>,  <31.200926, 39.537540, 23.878738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254124, 39.915001, 23.757523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675526, -0.137431, -0.724415,
		-0.725243, 0.301054, 0.619184,
		0.132992, 0.943652, -0.303041,
		31.294022, 40.198097, 23.666611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513706, 39.909691, 23.943125>,  <31.200926, 39.537540, 23.878738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513706, 39.909691, 23.943125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765030, 40.066109, 23.674109>,  <30.915825, 40.159958, 23.512699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765030, 40.066109, 23.674109>,  <30.513706, 39.909691, 23.943125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765030, 40.066109, 23.674109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603194, -0.301083, -0.738584,
		-0.491310, 0.869732, 0.046703,
		0.628309, 0.391045, -0.672541,
		30.953522, 40.183422, 23.472345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123726, 40.139610, 23.454369>,  <30.513706, 39.909691, 23.943125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123726, 40.139610, 23.454369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478960, 40.153160, 23.270998>,  <30.692101, 40.161289, 23.160975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478960, 40.153160, 23.270998>,  <30.123726, 40.139610, 23.454369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478960, 40.153160, 23.270998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446046, -0.177572, -0.877218,
		-0.111117, 0.983525, -0.142591,
		0.888086, 0.033871, -0.458429,
		30.745386, 40.163322, 23.133469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912279, 40.452431, 22.789074>,  <30.123726, 40.139610, 23.454369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912279, 40.452431, 22.789074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273960, 40.293007, 22.727665>,  <30.490969, 40.197353, 22.690821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273960, 40.293007, 22.727665>,  <29.912279, 40.452431, 22.789074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273960, 40.293007, 22.727665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220531, -0.127846, -0.966965,
		0.365770, 0.908186, -0.203494,
		0.904200, -0.398563, -0.153521,
		30.545219, 40.173439, 22.681608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162161, 40.787079, 22.168556>,  <29.912279, 40.452431, 22.789074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162161, 40.787079, 22.168556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374115, 40.451641, 22.219131>,  <30.501287, 40.250378, 22.249475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374115, 40.451641, 22.219131>,  <30.162161, 40.787079, 22.168556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374115, 40.451641, 22.219131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087526, -0.202368, -0.975390,
		0.843539, 0.505781, -0.180631,
		0.529888, -0.838590, 0.126436,
		30.533081, 40.200066, 22.257063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630194, 40.743889, 21.532770>,  <30.162161, 40.787079, 22.168556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630194, 40.743889, 21.532770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618065, 40.369961, 21.674303>,  <30.610788, 40.145603, 21.759222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618065, 40.369961, 21.674303>,  <30.630194, 40.743889, 21.532770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618065, 40.369961, 21.674303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066277, -0.351334, -0.933901,
		0.997340, -0.051769, -0.051304,
		-0.030322, -0.934818, 0.353830,
		30.608969, 40.089516, 21.780453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066719, 40.333927, 21.096916>,  <30.630194, 40.743889, 21.532770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066719, 40.333927, 21.096916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805897, 40.092594, 21.280577>,  <30.649403, 39.947796, 21.390772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805897, 40.092594, 21.280577>,  <31.066719, 40.333927, 21.096916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805897, 40.092594, 21.280577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237223, -0.412840, -0.879368,
		0.720102, -0.682318, 0.126071,
		-0.652056, -0.603328, 0.459149,
		30.610279, 39.911594, 21.418322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161572, 39.676834, 20.911825>,  <31.066719, 40.333927, 21.096916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161572, 39.676834, 20.911825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779472, 39.724030, 21.020330>,  <30.550213, 39.752346, 21.085434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779472, 39.724030, 21.020330>,  <31.161572, 39.676834, 20.911825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779472, 39.724030, 21.020330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295451, -0.335311, -0.894581,
		-0.014589, -0.934690, 0.355163,
		-0.955246, 0.117985, 0.271263,
		30.492899, 39.759426, 21.101709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806471, 39.009384, 20.791569>,  <31.161572, 39.676834, 20.911825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806471, 39.009384, 20.791569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588366, 39.343506, 20.763418>,  <30.457502, 39.543980, 20.746529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588366, 39.343506, 20.763418>,  <30.806471, 39.009384, 20.791569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588366, 39.343506, 20.763418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400528, -0.333361, -0.853492,
		-0.736386, -0.437192, 0.516332,
		-0.545264, 0.835304, -0.070375,
		30.424786, 39.594097, 20.742306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976610, 38.800232, 20.072662>,  <30.806471, 39.009384, 20.791569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976610, 38.800232, 20.072662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269583, 38.649223, 19.846029>,  <31.445366, 38.558617, 19.710049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269583, 38.649223, 19.846029>,  <30.976610, 38.800232, 20.072662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269583, 38.649223, 19.846029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519745, -0.227504, 0.823473,
		-0.439782, -0.897617, 0.029586,
		0.732432, -0.377526, -0.566584,
		31.489313, 38.535965, 19.676054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129375, 38.035927, 20.316668>,  <30.976610, 38.800232, 20.072662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129375, 38.035927, 20.316668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452814, 38.142494, 20.106834>,  <31.646877, 38.206436, 19.980934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452814, 38.142494, 20.106834>,  <31.129375, 38.035927, 20.316668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452814, 38.142494, 20.106834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586732, -0.298813, 0.752633,
		0.043765, -0.916368, -0.397938,
		0.808598, 0.266421, -0.524585,
		31.695393, 38.222420, 19.949459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556444, 37.508610, 20.322565>,  <31.129375, 38.035927, 20.316668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556444, 37.508610, 20.322565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795429, 37.822289, 20.255545>,  <31.938820, 38.010494, 20.215332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795429, 37.822289, 20.255545>,  <31.556444, 37.508610, 20.322565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795429, 37.822289, 20.255545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626710, -0.326277, 0.707656,
		0.500274, -0.527804, -0.686403,
		0.597461, 0.784198, -0.167552,
		31.974669, 38.057549, 20.205278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149250, 37.264244, 20.425360>,  <31.556444, 37.508610, 20.322565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149250, 37.264244, 20.425360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226170, 37.656151, 20.447542>,  <32.272320, 37.891296, 20.460852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226170, 37.656151, 20.447542>,  <32.149250, 37.264244, 20.425360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226170, 37.656151, 20.447542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613890, -0.164189, 0.772127,
		0.765612, -0.114433, -0.633043,
		0.192295, 0.979769, 0.055456,
		32.283859, 37.950081, 20.464178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899311, 37.355019, 20.484959>,  <32.149250, 37.264244, 20.425360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899311, 37.355019, 20.484959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770077, 37.702969, 20.634050>,  <32.692535, 37.911739, 20.723505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770077, 37.702969, 20.634050>,  <32.899311, 37.355019, 20.484959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770077, 37.702969, 20.634050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612941, -0.107739, 0.782749,
		0.721054, 0.481354, -0.498376,
		-0.323085, 0.869880, 0.372728,
		32.673153, 37.963932, 20.745869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480995, 37.802982, 20.773752>,  <32.899311, 37.355019, 20.484959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480995, 37.802982, 20.773752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152046, 37.926651, 20.964796>,  <32.954678, 38.000851, 21.079422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152046, 37.926651, 20.964796>,  <33.480995, 37.802982, 20.773752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152046, 37.926651, 20.964796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473848, -0.092449, 0.875741,
		0.314906, 0.946503, -0.070471,
		-0.822376, 0.309168, 0.477611,
		32.905334, 38.019402, 21.108080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749466, 38.247089, 21.319551>,  <33.480995, 37.802982, 20.773752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749466, 38.247089, 21.319551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367878, 38.173126, 21.413994>,  <33.138924, 38.128746, 21.470659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367878, 38.173126, 21.413994>,  <33.749466, 38.247089, 21.319551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367878, 38.173126, 21.413994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251578, -0.064904, 0.965658,
		-0.163236, 0.980610, 0.108436,
		-0.953972, -0.184910, 0.236105,
		33.081688, 38.117653, 21.484825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558262, 38.640312, 21.819815>,  <33.749466, 38.247089, 21.319551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558262, 38.640312, 21.819815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301868, 38.335361, 21.855438>,  <33.148033, 38.152393, 21.876812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301868, 38.335361, 21.855438>,  <33.558262, 38.640312, 21.819815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301868, 38.335361, 21.855438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202446, -0.055996, 0.977691,
		-0.740379, 0.644709, 0.190232,
		-0.640979, -0.762374, 0.089061,
		33.109573, 38.106647, 21.882156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097427, 38.865776, 22.262949>,  <33.558262, 38.640312, 21.819815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097427, 38.865776, 22.262949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082226, 38.468376, 22.305870>,  <33.073105, 38.229935, 22.331623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082226, 38.468376, 22.305870>,  <33.097427, 38.865776, 22.262949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082226, 38.468376, 22.305870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101141, 0.103005, 0.989525,
		-0.994146, 0.048455, 0.096570,
		-0.038001, -0.993500, 0.107303,
		33.070827, 38.170326, 22.338060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593384, 38.652821, 22.827288>,  <33.097427, 38.865776, 22.262949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593384, 38.652821, 22.827288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823559, 38.327446, 22.793358>,  <32.961662, 38.132221, 22.772999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823559, 38.327446, 22.793358>,  <32.593384, 38.652821, 22.827288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823559, 38.327446, 22.793358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126869, -0.013680, 0.991825,
		-0.807946, -0.581494, 0.095328,
		0.575437, -0.813435, -0.084826,
		32.996189, 38.083416, 22.767910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446968, 38.249260, 23.366238>,  <32.593384, 38.652821, 22.827288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446968, 38.249260, 23.366238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789558, 38.072605, 23.259346>,  <32.995113, 37.966614, 23.195211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789558, 38.072605, 23.259346>,  <32.446968, 38.249260, 23.366238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789558, 38.072605, 23.259346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318995, 0.045828, 0.946648,
		-0.405826, -0.896024, 0.180130,
		0.856473, -0.441635, -0.267229,
		33.046501, 37.940113, 23.179176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599789, 37.854774, 23.938620>,  <32.446968, 38.249260, 23.366238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599789, 37.854774, 23.938620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938843, 37.873241, 23.727194>,  <33.142277, 37.884323, 23.600338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938843, 37.873241, 23.727194>,  <32.599789, 37.854774, 23.938620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938843, 37.873241, 23.727194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521263, 0.113386, 0.845830,
		0.098972, -0.992478, 0.072051,
		0.847637, 0.046156, -0.528565,
		33.193134, 37.887093, 23.568624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028091, 37.275928, 24.250360>,  <32.599789, 37.854774, 23.938620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028091, 37.275928, 24.250360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260796, 37.542225, 24.063452>,  <33.400417, 37.702003, 23.951305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260796, 37.542225, 24.063452>,  <33.028091, 37.275928, 24.250360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260796, 37.542225, 24.063452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594407, 0.044156, 0.802951,
		0.555192, -0.744874, -0.370034,
		0.581759, 0.665743, -0.467273,
		33.435322, 37.741947, 23.923269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690300, 36.996227, 24.329718>,  <33.028091, 37.275928, 24.250360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690300, 36.996227, 24.329718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696674, 37.392761, 24.277573>,  <33.700497, 37.630684, 24.246286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696674, 37.392761, 24.277573>,  <33.690300, 36.996227, 24.329718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696674, 37.392761, 24.277573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634964, 0.090683, 0.767201,
		0.772377, -0.094998, -0.628019,
		0.015932, 0.991338, -0.130362,
		33.701454, 37.690163, 24.238464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374878, 37.177967, 24.421186>,  <33.690300, 36.996227, 24.329718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374878, 37.177967, 24.421186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188320, 37.523529, 24.497238>,  <34.076385, 37.730865, 24.542870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188320, 37.523529, 24.497238>,  <34.374878, 37.177967, 24.421186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188320, 37.523529, 24.497238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612123, 0.160035, 0.774399,
		0.638580, 0.477555, -0.603454,
		-0.466392, 0.863904, 0.190128,
		34.048401, 37.782700, 24.554276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955238, 37.657627, 24.557137>,  <34.374878, 37.177967, 24.421186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955238, 37.657627, 24.557137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633179, 37.850040, 24.695894>,  <34.439941, 37.965488, 24.779150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633179, 37.850040, 24.695894>,  <34.955238, 37.657627, 24.557137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633179, 37.850040, 24.695894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542237, 0.360148, 0.759126,
		0.240233, 0.799311, -0.550809,
		-0.805150, 0.481036, 0.346896,
		34.391632, 37.994350, 24.799963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116749, 38.357239, 24.788433>,  <34.955238, 37.657627, 24.557137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116749, 38.357239, 24.788433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769535, 38.300442, 24.978743>,  <34.561207, 38.266365, 25.092928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769535, 38.300442, 24.978743>,  <35.116749, 38.357239, 24.788433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769535, 38.300442, 24.978743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396920, 0.377233, 0.836749,
		-0.298288, 0.915169, -0.271092,
		-0.868032, -0.141991, 0.475773,
		34.509125, 38.257843, 25.121475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054096, 38.983116, 25.265316>,  <35.116749, 38.357239, 24.788433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054096, 38.983116, 25.265316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758205, 38.754837, 25.407921>,  <34.580669, 38.617870, 25.493484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758205, 38.754837, 25.407921>,  <35.054096, 38.983116, 25.265316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758205, 38.754837, 25.407921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185779, 0.336010, 0.923354,
		-0.646750, 0.749266, -0.142532,
		-0.739730, -0.570700, 0.356512,
		34.536285, 38.583626, 25.514875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455421, 39.407356, 25.682673>,  <35.054096, 38.983116, 25.265316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455421, 39.407356, 25.682673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480427, 39.029427, 25.811291>,  <34.495430, 38.802670, 25.888462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480427, 39.029427, 25.811291>,  <34.455421, 39.407356, 25.682673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480427, 39.029427, 25.811291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125447, 0.327059, 0.936640,
		-0.990129, -0.018217, 0.138972,
		0.062515, -0.944828, 0.321546,
		34.499180, 38.745979, 25.907755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184021, 39.489887, 26.270609>,  <34.455421, 39.407356, 25.682673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184021, 39.489887, 26.270609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375061, 39.138851, 26.287308>,  <34.489685, 38.928230, 26.297327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375061, 39.138851, 26.287308>,  <34.184021, 39.489887, 26.270609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375061, 39.138851, 26.287308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205471, 0.157765, 0.965863,
		-0.854214, -0.452716, 0.255666,
		0.477597, -0.877586, 0.041745,
		34.518341, 38.875576, 26.299831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993370, 39.180965, 26.913397>,  <34.184021, 39.489887, 26.270609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993370, 39.180965, 26.913397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333530, 38.997849, 26.809677>,  <34.537628, 38.887978, 26.747446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333530, 38.997849, 26.809677>,  <33.993370, 39.180965, 26.913397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333530, 38.997849, 26.809677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350883, 0.126252, 0.927869,
		-0.392039, -0.880047, 0.267998,
		0.850404, -0.457797, -0.259298,
		34.588650, 38.860508, 26.731888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166149, 38.906788, 27.473295>,  <33.993370, 39.180965, 26.913397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166149, 38.906788, 27.473295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509666, 38.876579, 27.270605>,  <34.715778, 38.858456, 27.148991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509666, 38.876579, 27.270605>,  <34.166149, 38.906788, 27.473295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509666, 38.876579, 27.270605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510947, 0.053809, 0.857926,
		-0.037528, -0.995691, 0.084800,
		0.858792, -0.075524, -0.506726,
		34.767303, 38.853924, 27.118587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577549, 38.412815, 27.859447>,  <34.166149, 38.906788, 27.473295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577549, 38.412815, 27.859447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857719, 38.563828, 27.617170>,  <35.025822, 38.654434, 27.471804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857719, 38.563828, 27.617170>,  <34.577549, 38.412815, 27.859447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857719, 38.563828, 27.617170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644929, 0.028724, 0.763703,
		0.305723, -0.925549, -0.223364,
		0.700429, 0.377535, -0.605695,
		35.067848, 38.677090, 27.435461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172626, 37.937923, 27.834896>,  <34.577549, 38.412815, 27.859447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172626, 37.937923, 27.834896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301426, 38.308777, 27.758232>,  <35.378704, 38.531288, 27.712234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301426, 38.308777, 27.758232>,  <35.172626, 37.937923, 27.834896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301426, 38.308777, 27.758232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665563, -0.077707, 0.742285,
		0.673307, -0.366576, -0.642090,
		0.321999, 0.927137, -0.191659,
		35.398026, 38.586918, 27.700735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901333, 37.932091, 28.059921>,  <35.172626, 37.937923, 27.834896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901333, 37.932091, 28.059921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822948, 38.321903, 28.016300>,  <35.775917, 38.555790, 27.990128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822948, 38.321903, 28.016300>,  <35.901333, 37.932091, 28.059921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822948, 38.321903, 28.016300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745731, 0.220314, 0.628766,
		0.636776, 0.041893, -0.769910,
		-0.195963, 0.974529, -0.109050,
		35.764160, 38.614262, 27.983585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530643, 38.290245, 27.906054>,  <35.901333, 37.932091, 28.059921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530643, 38.290245, 27.906054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310024, 38.578201, 28.074606>,  <36.177654, 38.750973, 28.175737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310024, 38.578201, 28.074606>,  <36.530643, 38.290245, 27.906054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310024, 38.578201, 28.074606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785983, 0.279340, 0.551543,
		0.279340, 0.635400, -0.719887,
		-0.551543, 0.719887, 0.421383,
		36.144562, 38.794167, 28.201021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015083, 38.876640, 28.040054>,  <36.530643, 38.290245, 27.906054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015083, 38.876640, 28.040054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705486, 38.934963, 28.286526>,  <36.519730, 38.969959, 28.434408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705486, 38.934963, 28.286526>,  <37.015083, 38.876640, 28.040054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705486, 38.934963, 28.286526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629335, 0.069829, 0.773991,
		0.069829, 0.986845, -0.145811,
		-0.773991, 0.145811, 0.616179,
		36.473289, 38.978706, 28.471380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186260, 39.494469, 28.312584>,  <37.015083, 38.876640, 28.040054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186260, 39.494469, 28.312584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926819, 39.303482, 28.549681>,  <36.771156, 39.188889, 28.691938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926819, 39.303482, 28.549681>,  <37.186260, 39.494469, 28.312584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926819, 39.303482, 28.549681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649993, 0.057726, 0.757744,
		-0.396014, 0.876752, 0.272909,
		-0.648600, -0.477466, 0.592743,
		36.732239, 39.160244, 28.727503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427197, 39.799393, 28.993792>,  <37.186260, 39.494469, 28.312584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427197, 39.799393, 28.993792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178516, 39.491447, 29.051479>,  <37.029308, 39.306679, 29.086092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178516, 39.491447, 29.051479>,  <37.427197, 39.799393, 28.993792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178516, 39.491447, 29.051479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446821, -0.197366, 0.872581,
		-0.643304, 0.606924, 0.466694,
		-0.621700, -0.769864, 0.144220,
		36.992008, 39.260487, 29.094746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146118, 39.795254, 29.605646>,  <37.427197, 39.799393, 28.993792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146118, 39.795254, 29.605646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141113, 39.406380, 29.512093>,  <37.138111, 39.173054, 29.455961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141113, 39.406380, 29.512093>,  <37.146118, 39.795254, 29.605646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141113, 39.406380, 29.512093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481930, -0.210805, 0.850473,
		-0.876120, -0.102077, 0.471162,
		-0.012509, -0.972184, -0.233884,
		37.137360, 39.114723, 29.441927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884605, 39.306965, 30.305216>,  <37.146118, 39.795254, 29.605646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884605, 39.306965, 30.305216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069172, 39.060520, 30.049873>,  <37.179913, 38.912651, 29.896667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069172, 39.060520, 30.049873>,  <36.884605, 39.306965, 30.305216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069172, 39.060520, 30.049873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448221, -0.459060, 0.767048,
		-0.765634, -0.640051, 0.064339,
		0.461414, -0.616116, -0.638356,
		37.207596, 38.875687, 29.858366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748337, 38.514885, 30.454258>,  <36.884605, 39.306965, 30.305216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748337, 38.514885, 30.454258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107090, 38.511345, 30.277388>,  <37.322342, 38.509220, 30.171265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107090, 38.511345, 30.277388>,  <36.748337, 38.514885, 30.454258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107090, 38.511345, 30.277388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345042, -0.611445, 0.712096,
		-0.276666, -0.791238, -0.545343,
		0.896884, -0.008847, -0.442176,
		37.376156, 38.508690, 30.144735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939686, 37.769131, 30.472527>,  <36.748337, 38.514885, 30.454258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939686, 37.769131, 30.472527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278282, 37.957668, 30.373505>,  <37.481441, 38.070793, 30.314091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278282, 37.957668, 30.373505>,  <36.939686, 37.769131, 30.472527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278282, 37.957668, 30.373505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503473, -0.557507, 0.660076,
		0.173112, -0.683386, -0.709236,
		0.846491, 0.471349, -0.247556,
		37.532230, 38.099072, 30.299238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441078, 37.312866, 30.216991>,  <36.939686, 37.769131, 30.472527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441078, 37.312866, 30.216991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691113, 37.611099, 30.309402>,  <37.841133, 37.790039, 30.364849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691113, 37.611099, 30.309402>,  <37.441078, 37.312866, 30.216991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691113, 37.611099, 30.309402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539524, -0.626597, 0.562397,
		0.564074, -0.226902, -0.793937,
		0.625087, 0.745582, 0.231028,
		37.878639, 37.834774, 30.378712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101318, 36.995682, 30.219660>,  <37.441078, 37.312866, 30.216991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101318, 36.995682, 30.219660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201374, 37.337975, 30.400837>,  <38.261406, 37.543350, 30.509542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201374, 37.337975, 30.400837>,  <38.101318, 36.995682, 30.219660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201374, 37.337975, 30.400837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574992, -0.507679, 0.641597,
		0.778983, 0.099949, -0.619028,
		0.250141, 0.855729, 0.452944,
		38.276417, 37.594692, 30.536720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844635, 37.180210, 30.201206>,  <38.101318, 36.995682, 30.219660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844635, 37.180210, 30.201206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701508, 37.356617, 30.530441>,  <38.615631, 37.462460, 30.727982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701508, 37.356617, 30.530441>,  <38.844635, 37.180210, 30.201206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701508, 37.356617, 30.530441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693135, -0.465208, 0.550586,
		0.625725, 0.767518, -0.139227,
		-0.357815, 0.441018, 0.823086,
		38.594162, 37.488922, 30.777367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458290, 37.248703, 30.731606>,  <38.844635, 37.180210, 30.201206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458290, 37.248703, 30.731606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128685, 37.277321, 30.956419>,  <38.930923, 37.294491, 31.091307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128685, 37.277321, 30.956419>,  <39.458290, 37.248703, 30.731606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128685, 37.277321, 30.956419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489835, -0.408545, 0.770164,
		0.284715, 0.909930, 0.301604,
		-0.824014, 0.071541, 0.562035,
		38.881481, 37.298782, 31.125029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742378, 37.339497, 31.339993>,  <39.458290, 37.248703, 30.731606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742378, 37.339497, 31.339993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373260, 37.230015, 31.448467>,  <39.151791, 37.164326, 31.513552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373260, 37.230015, 31.448467>,  <39.742378, 37.339497, 31.339993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373260, 37.230015, 31.448467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365032, -0.395756, 0.842691,
		-0.123329, 0.876619, 0.465112,
		-0.922790, -0.273709, 0.271186,
		39.096424, 37.147903, 31.529823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749203, 37.468021, 32.193150>,  <39.742378, 37.339497, 31.339993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749203, 37.468021, 32.193150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459724, 37.213680, 32.085854>,  <39.286037, 37.061077, 32.021477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459724, 37.213680, 32.085854>,  <39.749203, 37.468021, 32.193150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459724, 37.213680, 32.085854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196779, -0.562685, 0.802909,
		-0.661465, 0.528281, 0.532337,
		-0.723700, -0.635849, -0.268242,
		39.242615, 37.022926, 32.005383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387287, 37.319790, 32.811699>,  <39.749203, 37.468021, 32.193150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387287, 37.319790, 32.811699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332798, 37.034466, 32.536705>,  <39.300106, 36.863274, 32.371708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332798, 37.034466, 32.536705>,  <39.387287, 37.319790, 32.811699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332798, 37.034466, 32.536705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209118, -0.699023, 0.683839,
		-0.968356, -0.050612, 0.244388,
		-0.136222, -0.713306, -0.687487,
		39.291931, 36.820473, 32.330460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986073, 36.679283, 33.162144>,  <39.387287, 37.319790, 32.811699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986073, 36.679283, 33.162144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273495, 36.618088, 32.890770>,  <39.445950, 36.581371, 32.727947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273495, 36.618088, 32.890770>,  <38.986073, 36.679283, 33.162144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273495, 36.618088, 32.890770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469550, -0.612881, 0.635531,
		-0.513029, -0.775223, -0.368553,
		0.718557, -0.152991, -0.678432,
		39.489063, 36.572189, 32.687241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981853, 35.967236, 33.020180>,  <38.986073, 36.679283, 33.162144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981853, 35.967236, 33.020180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333370, 36.147373, 32.957047>,  <39.544281, 36.255455, 32.919167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333370, 36.147373, 32.957047>,  <38.981853, 35.967236, 33.020180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333370, 36.147373, 32.957047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439921, -0.636367, 0.633645,
		0.184918, -0.626278, -0.757351,
		0.878792, 0.450347, -0.157837,
		39.597008, 36.282478, 32.909695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470554, 35.443424, 33.074142>,  <38.981853, 35.967236, 33.020180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470554, 35.443424, 33.074142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690502, 35.775414, 33.111652>,  <39.822472, 35.974606, 33.134159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690502, 35.775414, 33.111652>,  <39.470554, 35.443424, 33.074142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690502, 35.775414, 33.111652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616135, -0.478857, 0.625359,
		0.563932, -0.286090, -0.774682,
		0.549871, 0.829969, 0.093773,
		39.855465, 36.024403, 33.139786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163589, 35.315449, 32.854591>,  <39.470554, 35.443424, 33.074142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163589, 35.315449, 32.854591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132881, 35.573338, 33.158810>,  <40.114456, 35.728073, 33.341343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132881, 35.573338, 33.158810>,  <40.163589, 35.315449, 32.854591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132881, 35.573338, 33.158810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649173, -0.546638, 0.528924,
		0.756756, 0.534335, -0.376571,
		-0.076774, 0.644726, 0.760548,
		40.109848, 35.766754, 33.386974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772366, 35.271626, 33.125763>,  <40.163589, 35.315449, 32.854591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772366, 35.271626, 33.125763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568970, 35.474911, 33.403801>,  <40.446934, 35.596882, 33.570625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568970, 35.474911, 33.403801>,  <40.772366, 35.271626, 33.125763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568970, 35.474911, 33.403801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492638, -0.490378, 0.718914,
		0.706221, 0.707991, -0.001013,
		-0.508487, 0.508211, 0.695099,
		40.416424, 35.627373, 33.612331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221584, 35.415665, 33.519928>,  <40.772366, 35.271626, 33.125763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221584, 35.415665, 33.519928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914822, 35.474316, 33.769840>,  <40.730762, 35.509506, 33.919788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914822, 35.474316, 33.769840>,  <41.221584, 35.415665, 33.519928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914822, 35.474316, 33.769840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521012, -0.426167, 0.739546,
		0.374701, 0.892682, 0.250435,
		-0.766906, 0.146629, 0.624784,
		40.684750, 35.518303, 33.957275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547871, 35.538033, 34.176228>,  <41.221584, 35.415665, 33.519928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547871, 35.538033, 34.176228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161648, 35.484585, 34.265537>,  <40.929916, 35.452515, 34.319122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161648, 35.484585, 34.265537>,  <41.547871, 35.538033, 34.176228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161648, 35.484585, 34.265537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258864, -0.406429, 0.876244,
		-0.026344, 0.903858, 0.427020,
		-0.965554, -0.133624, 0.223270,
		40.871983, 35.444496, 34.332520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527699, 35.766567, 34.872437>,  <41.547871, 35.538033, 34.176228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527699, 35.766567, 34.872437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217968, 35.529373, 34.784088>,  <41.032131, 35.387054, 34.731079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217968, 35.529373, 34.784088>,  <41.527699, 35.766567, 34.872437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217968, 35.529373, 34.784088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203350, -0.563713, 0.800547,
		-0.599222, 0.574971, 0.557082,
		-0.774327, -0.592988, -0.220869,
		40.985668, 35.351475, 34.717827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585194, 35.420280, 35.426586>,  <41.527699, 35.766567, 34.872437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585194, 35.420280, 35.426586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293270, 35.203922, 35.259346>,  <41.118114, 35.074108, 35.159000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293270, 35.203922, 35.259346>,  <41.585194, 35.420280, 35.426586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293270, 35.203922, 35.259346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231001, -0.770710, 0.593839,
		-0.643437, 0.336810, 0.687421,
		-0.729813, -0.540893, -0.418100,
		41.074326, 35.041653, 35.133915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350655, 35.118633, 35.885887>,  <41.585194, 35.420280, 35.426586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350655, 35.118633, 35.885887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171890, 34.900955, 35.601883>,  <41.064632, 34.770348, 35.431480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171890, 34.900955, 35.601883>,  <41.350655, 35.118633, 35.885887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171890, 34.900955, 35.601883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017338, -0.798807, 0.601338,
		-0.894410, 0.256435, 0.366432,
		-0.446913, -0.544195, -0.710015,
		41.037815, 34.737698, 35.388878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888752, 34.644325, 36.189159>,  <41.350655, 35.118633, 35.885887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888752, 34.644325, 36.189159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004383, 34.483826, 35.841496>,  <41.073761, 34.387527, 35.632896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004383, 34.483826, 35.841496>,  <40.888752, 34.644325, 36.189159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004383, 34.483826, 35.841496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016246, -0.909847, 0.414627,
		-0.957167, -0.105740, -0.269537,
		0.289080, -0.401246, -0.869157,
		41.091106, 34.363453, 35.580750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373959, 34.078785, 36.005245>,  <40.888752, 34.644325, 36.189159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373959, 34.078785, 36.005245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744904, 34.055599, 35.857384>,  <40.967468, 34.041687, 35.768665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744904, 34.055599, 35.857384>,  <40.373959, 34.078785, 36.005245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744904, 34.055599, 35.857384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083801, -0.930658, 0.356164,
		-0.364670, -0.361269, -0.858196,
		0.927358, -0.057965, -0.369658,
		41.023109, 34.038208, 35.746487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341156, 33.486858, 35.521465>,  <40.373959, 34.078785, 36.005245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341156, 33.486858, 35.521465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709152, 33.525047, 35.673519>,  <40.929951, 33.547962, 35.764751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709152, 33.525047, 35.673519>,  <40.341156, 33.486858, 35.521465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709152, 33.525047, 35.673519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034319, -0.985776, 0.164522,
		0.390436, -0.138313, -0.910181,
		0.919990, 0.095472, 0.380135,
		40.985149, 33.553688, 35.787560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750648, 33.077263, 35.126499>,  <40.341156, 33.486858, 35.521465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750648, 33.077263, 35.126499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907734, 33.128460, 35.490784>,  <41.001984, 33.159176, 35.709354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907734, 33.128460, 35.490784>,  <40.750648, 33.077263, 35.126499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907734, 33.128460, 35.490784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128221, -0.988217, 0.083590,
		0.910680, 0.083946, -0.404494,
		0.392710, 0.127988, 0.910713,
		41.025547, 33.166855, 35.763996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477680, 32.761059, 35.195904>,  <40.750648, 33.077263, 35.126499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477680, 32.761059, 35.195904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386040, 32.788425, 35.584301>,  <41.331055, 32.804844, 35.817341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386040, 32.788425, 35.584301>,  <41.477680, 32.761059, 35.195904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386040, 32.788425, 35.584301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304162, -0.942546, 0.138176,
		0.924661, 0.326996, 0.195128,
		-0.229100, 0.068415, 0.970996,
		41.317310, 32.808949, 35.875599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068504, 32.483757, 35.498505>,  <41.477680, 32.761059, 35.195904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068504, 32.483757, 35.498505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802090, 32.504204, 35.796169>,  <41.642242, 32.516472, 35.974770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802090, 32.504204, 35.796169>,  <42.068504, 32.483757, 35.498505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802090, 32.504204, 35.796169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288142, -0.902576, 0.319892,
		0.688018, 0.427485, 0.586419,
		-0.666036, 0.051120, 0.744165,
		41.602280, 32.519539, 36.019421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408810, 32.296749, 35.978962>,  <42.068504, 32.483757, 35.498505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408810, 32.296749, 35.978962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034481, 32.213539, 36.092773>,  <41.809883, 32.163612, 36.161060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034481, 32.213539, 36.092773>,  <42.408810, 32.296749, 35.978962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034481, 32.213539, 36.092773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287570, -0.917407, 0.275078,
		0.203804, 0.339247, 0.918355,
		-0.935824, -0.208029, 0.284529,
		41.753735, 32.151131, 36.178131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450142, 32.050392, 36.684727>,  <42.408810, 32.296749, 35.978962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450142, 32.050392, 36.684727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116726, 31.894903, 36.527699>,  <41.916676, 31.801611, 36.433483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116726, 31.894903, 36.527699>,  <42.450142, 32.050392, 36.684727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116726, 31.894903, 36.527699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284257, -0.911069, 0.298581,
		-0.473720, 0.137289, 0.869908,
		-0.833539, -0.388721, -0.392567,
		41.866665, 31.778286, 36.409927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155411, 31.521996, 37.213066>,  <42.450142, 32.050392, 36.684727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155411, 31.521996, 37.213066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995365, 31.426588, 36.859112>,  <41.899338, 31.369343, 36.646740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995365, 31.426588, 36.859112>,  <42.155411, 31.521996, 37.213066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995365, 31.426588, 36.859112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046150, -0.959070, 0.279384,
		-0.915303, 0.152623, 0.372729,
		-0.400113, -0.238519, -0.884883,
		41.875332, 31.355032, 36.593647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471001, 31.318943, 37.285500>,  <42.155411, 31.521996, 37.213066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471001, 31.318943, 37.285500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599838, 31.131939, 36.956211>,  <41.677139, 31.019737, 36.758640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599838, 31.131939, 36.956211>,  <41.471001, 31.318943, 37.285500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599838, 31.131939, 36.956211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132961, -0.883281, 0.449596,
		-0.937325, -0.035356, -0.346659,
		0.322093, -0.467510, -0.823220,
		41.696465, 30.991686, 36.709244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053272, 30.821547, 36.968628>,  <41.471001, 31.318943, 37.285500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053272, 30.821547, 36.968628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403755, 30.668972, 36.850807>,  <41.614044, 30.577427, 36.780113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403755, 30.668972, 36.850807>,  <41.053272, 30.821547, 36.968628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403755, 30.668972, 36.850807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234729, -0.871578, 0.430412,
		-0.420900, -0.307991, -0.853220,
		0.876211, -0.381436, -0.294552,
		41.666618, 30.554541, 36.762440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991241, 30.193697, 36.519951>,  <41.053272, 30.821547, 36.968628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991241, 30.193697, 36.519951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315014, 30.227921, 36.752327>,  <41.509277, 30.248455, 36.891754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315014, 30.227921, 36.752327>,  <40.991241, 30.193697, 36.519951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315014, 30.227921, 36.752327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211061, -0.880824, 0.423796,
		0.547968, -0.465650, -0.694911,
		0.809434, 0.085558, 0.580944,
		41.557846, 30.253588, 36.926609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583759, 29.722107, 36.417114>,  <40.991241, 30.193697, 36.519951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583759, 29.722107, 36.417114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569614, 29.837532, 36.799839>,  <41.561127, 29.906786, 37.029472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569614, 29.837532, 36.799839>,  <41.583759, 29.722107, 36.417114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569614, 29.837532, 36.799839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346155, -0.901678, 0.259140,
		0.937510, -0.322039, 0.131776,
		-0.035366, 0.288561, 0.956808,
		41.559006, 29.924101, 37.086880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541489, 29.303780, 35.842834>,  <41.583759, 29.722107, 36.417114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541489, 29.303780, 35.842834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264977, 29.541466, 36.007294>,  <41.099072, 29.684078, 36.105968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264977, 29.541466, 36.007294>,  <41.541489, 29.303780, 35.842834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264977, 29.541466, 36.007294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298504, 0.283333, -0.911382,
		-0.658050, -0.752747, -0.018486,
		-0.691278, 0.594217, 0.411146,
		41.057594, 29.719730, 36.130638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903286, 29.693701, 35.211266>,  <41.541489, 29.303780, 35.842834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903286, 29.693701, 35.211266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205658, 29.917980, 35.076099>,  <42.387081, 30.052547, 34.994999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205658, 29.917980, 35.076099>,  <41.903286, 29.693701, 35.211266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205658, 29.917980, 35.076099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649141, 0.575144, -0.497821,
		-0.084774, 0.595674, 0.798740,
		0.755929, 0.560697, -0.337919,
		42.432438, 30.086189, 34.974724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651817, 30.386118, 35.400673>,  <41.903286, 29.693701, 35.211266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651817, 30.386118, 35.400673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907028, 30.355431, 35.094200>,  <42.060154, 30.337019, 34.910316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907028, 30.355431, 35.094200>,  <41.651817, 30.386118, 35.400673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907028, 30.355431, 35.094200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630437, 0.519278, -0.576975,
		0.442127, 0.851155, 0.282946,
		0.638023, -0.076717, -0.766186,
		42.098434, 30.332415, 34.864346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323502, 31.058109, 35.433872>,  <41.651817, 30.386118, 35.400673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323502, 31.058109, 35.433872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461452, 31.134296, 35.801521>,  <41.544224, 31.180010, 36.022110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461452, 31.134296, 35.801521>,  <41.323502, 31.058109, 35.433872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461452, 31.134296, 35.801521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370545, 0.927294, -0.053126,
		-0.862413, -0.322253, 0.390379,
		0.344876, 0.190470, 0.919120,
		41.564915, 31.191437, 36.077259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730652, 31.317909, 35.877243>,  <41.323502, 31.058109, 35.433872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730652, 31.317909, 35.877243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067627, 31.461544, 36.037914>,  <41.269814, 31.547726, 36.134319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067627, 31.461544, 36.037914>,  <40.730652, 31.317909, 35.877243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067627, 31.461544, 36.037914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356487, 0.930500, -0.084179,
		-0.403992, -0.072278, 0.911903,
		0.842442, 0.359089, 0.401681,
		41.320358, 31.569271, 36.158417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538937, 31.881445, 36.378361>,  <40.730652, 31.317909, 35.877243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538937, 31.881445, 36.378361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920513, 31.982733, 36.314026>,  <41.149460, 32.043507, 36.275425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920513, 31.982733, 36.314026>,  <40.538937, 31.881445, 36.378361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920513, 31.982733, 36.314026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265880, 0.961982, -0.062442,
		0.138909, 0.102330, 0.985004,
		0.953946, 0.253219, -0.160835,
		41.206696, 32.058697, 36.265774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573570, 32.446812, 36.798714>,  <40.538937, 31.881445, 36.378361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573570, 32.446812, 36.798714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909725, 32.462372, 36.582481>,  <41.111420, 32.471706, 36.452740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909725, 32.462372, 36.582481>,  <40.573570, 32.446812, 36.798714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909725, 32.462372, 36.582481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032677, 0.999243, 0.021104,
		0.540994, -0.000070, 0.841026,
		0.840391, 0.038899, -0.540583,
		41.161842, 32.474041, 36.420307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932922, 32.940678, 37.102325>,  <40.573570, 32.446812, 36.798714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932922, 32.940678, 37.102325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061989, 32.898022, 36.726131>,  <41.139427, 32.872429, 36.500416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061989, 32.898022, 36.726131>,  <40.932922, 32.940678, 37.102325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061989, 32.898022, 36.726131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107897, 0.983012, -0.148481,
		0.940343, 0.149385, 0.305678,
		0.322666, -0.106641, -0.940486,
		41.158787, 32.866028, 36.443985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578831, 33.359291, 36.993603>,  <40.932922, 32.940678, 37.102325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578831, 33.359291, 36.993603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398968, 33.307743, 36.640060>,  <41.291050, 33.276814, 36.427937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398968, 33.307743, 36.640060>,  <41.578831, 33.359291, 36.993603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398968, 33.307743, 36.640060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039762, 0.985668, -0.163942,
		0.892314, -0.108862, -0.438092,
		-0.449661, -0.128868, -0.883854,
		41.264069, 33.269081, 36.374905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992680, 33.709148, 36.444103>,  <41.578831, 33.359291, 36.993603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992680, 33.709148, 36.444103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613045, 33.673149, 36.323345>,  <41.385265, 33.651550, 36.250893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613045, 33.673149, 36.323345>,  <41.992680, 33.709148, 36.444103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613045, 33.673149, 36.323345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007647, 0.964618, -0.263540,
		0.314931, -0.247813, -0.916192,
		-0.949084, -0.090003, -0.301893,
		41.328320, 33.646149, 36.232777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827457, 34.115868, 35.831211>,  <41.992680, 33.709148, 36.444103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827457, 34.115868, 35.831211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495037, 34.058250, 36.046097>,  <41.295586, 34.023678, 36.175030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495037, 34.058250, 36.046097>,  <41.827457, 34.115868, 35.831211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495037, 34.058250, 36.046097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201094, 0.978358, -0.048755,
		-0.518567, -0.148549, -0.842034,
		-0.831053, -0.144045, 0.537217,
		41.245720, 34.015038, 36.207260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271564, 33.909081, 35.149448>,  <41.827457, 34.115868, 35.831211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271564, 33.909081, 35.149448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904953, 33.869579, 35.304485>,  <41.684986, 33.845879, 35.397507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904953, 33.869579, 35.304485>,  <42.271564, 33.909081, 35.149448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904953, 33.869579, 35.304485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277549, 0.854786, -0.438529,
		-0.288003, -0.509499, -0.810842,
		-0.916527, -0.098750, 0.387592,
		41.629993, 33.839954, 35.420761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724773, 33.788624, 34.644859>,  <42.271564, 33.909081, 35.149448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724773, 33.788624, 34.644859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540089, 33.973835, 34.947495>,  <41.429279, 34.084961, 35.129074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540089, 33.973835, 34.947495>,  <41.724773, 33.788624, 34.644859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540089, 33.973835, 34.947495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316169, 0.711016, -0.628087,
		-0.828770, -0.529204, -0.181888,
		-0.461712, 0.463032, 0.756587,
		41.401577, 34.112743, 35.174469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284840, 34.204338, 34.308887>,  <41.724773, 33.788624, 34.644859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284840, 34.204338, 34.308887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206570, 34.316345, 34.684822>,  <41.159607, 34.383549, 34.910385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206570, 34.316345, 34.684822>,  <41.284840, 34.204338, 34.308887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206570, 34.316345, 34.684822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444167, 0.829127, -0.339506,
		-0.874314, -0.483880, -0.037869,
		-0.195678, 0.280016, 0.939841,
		41.147865, 34.400349, 34.966774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578594, 34.157230, 34.430691>,  <41.284840, 34.204338, 34.308887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578594, 34.157230, 34.430691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677986, 34.464409, 34.666832>,  <40.737621, 34.648716, 34.808517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677986, 34.464409, 34.666832>,  <40.578594, 34.157230, 34.430691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677986, 34.464409, 34.666832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563382, 0.610352, -0.556840,
		-0.787945, -0.194228, 0.584309,
		0.248481, 0.767949, 0.590348,
		40.752529, 34.694794, 34.843937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045540, 34.495331, 34.606625>,  <40.578594, 34.157230, 34.430691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045540, 34.495331, 34.606625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359447, 34.742939, 34.594284>,  <40.547791, 34.891506, 34.586880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359447, 34.742939, 34.594284>,  <40.045540, 34.495331, 34.606625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359447, 34.742939, 34.594284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511889, 0.619278, -0.595369,
		-0.349443, 0.483017, 0.802860,
		0.784767, 0.619022, -0.030849,
		40.594879, 34.928646, 34.585030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698029, 35.064426, 34.700802>,  <40.045540, 34.495331, 34.606625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698029, 35.064426, 34.700802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055214, 35.197128, 34.579109>,  <40.269524, 35.276749, 34.506092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055214, 35.197128, 34.579109>,  <39.698029, 35.064426, 34.700802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055214, 35.197128, 34.579109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448833, 0.707593, -0.545767,
		0.034214, 0.623900, 0.780755,
		0.892961, 0.331756, -0.304236,
		40.323101, 35.296654, 34.487839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864098, 35.785686, 34.877800>,  <39.698029, 35.064426, 34.700802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864098, 35.785686, 34.877800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045967, 35.697090, 34.532730>,  <40.155090, 35.643932, 34.325687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045967, 35.697090, 34.532730>,  <39.864098, 35.785686, 34.877800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045967, 35.697090, 34.532730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335347, 0.854736, -0.396192,
		0.825114, 0.469436, 0.314353,
		0.454675, -0.221486, -0.862678,
		40.182369, 35.630646, 34.273926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813099, 36.374153, 34.495407>,  <39.864098, 35.785686, 34.877800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813099, 36.374153, 34.495407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027321, 36.172039, 34.224743>,  <40.155853, 36.050770, 34.062344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027321, 36.172039, 34.224743>,  <39.813099, 36.374153, 34.495407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027321, 36.172039, 34.224743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184527, 0.711881, -0.677625,
		0.824097, 0.487766, 0.288010,
		0.535551, -0.505282, -0.676665,
		40.187984, 36.020454, 34.021744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218491, 36.953960, 34.044525>,  <39.813099, 36.374153, 34.495407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218491, 36.953960, 34.044525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172596, 36.602268, 33.859577>,  <40.145058, 36.391251, 33.748608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172596, 36.602268, 33.859577>,  <40.218491, 36.953960, 34.044525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172596, 36.602268, 33.859577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262900, 0.475719, -0.839390,
		0.957977, 0.025247, -0.285733,
		-0.114737, -0.879235, -0.462365,
		40.138176, 36.338497, 33.720867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570179, 37.028152, 33.431423>,  <40.218491, 36.953960, 34.044525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570179, 37.028152, 33.431423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329426, 36.716648, 33.360687>,  <40.184975, 36.529747, 33.318245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329426, 36.716648, 33.360687>,  <40.570179, 37.028152, 33.431423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329426, 36.716648, 33.360687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076203, 0.276441, -0.958005,
		0.794940, -0.563132, -0.225729,
		-0.601884, -0.778758, -0.176841,
		40.148861, 36.483021, 33.307636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658169, 36.954128, 32.699806>,  <40.570179, 37.028152, 33.431423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658169, 36.954128, 32.699806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325962, 36.741436, 32.766148>,  <40.126637, 36.613823, 32.805954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325962, 36.741436, 32.766148>,  <40.658169, 36.954128, 32.699806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325962, 36.741436, 32.766148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325920, 0.222453, -0.918853,
		0.451685, -0.817178, -0.358051,
		-0.830516, -0.531728, 0.165856,
		40.076809, 36.581917, 32.815903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636974, 36.515980, 32.039181>,  <40.658169, 36.954128, 32.699806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636974, 36.515980, 32.039181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287338, 36.574234, 32.224552>,  <40.077557, 36.609188, 32.335773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287338, 36.574234, 32.224552>,  <40.636974, 36.515980, 32.039181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287338, 36.574234, 32.224552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459560, 0.061223, -0.886034,
		-0.157413, -0.987442, 0.013416,
		-0.874086, 0.145639, 0.463426,
		40.025112, 36.617924, 32.363579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031471, 36.027668, 31.599766>,  <40.636974, 36.515980, 32.039181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031471, 36.027668, 31.599766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882893, 36.003525, 31.229170>,  <40.793743, 35.989037, 31.006813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882893, 36.003525, 31.229170>,  <41.031471, 36.027668, 31.599766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882893, 36.003525, 31.229170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591154, -0.784849, -0.185873,
		-0.715934, -0.616740, 0.327216,
		-0.371450, -0.060362, -0.926489,
		40.771458, 35.985416, 30.951223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727242, 35.384174, 31.593737>,  <41.031471, 36.027668, 31.599766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727242, 35.384174, 31.593737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826443, 35.142780, 31.290606>,  <40.885963, 34.997944, 31.108727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826443, 35.142780, 31.290606>,  <40.727242, 35.384174, 31.593737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826443, 35.142780, 31.290606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648282, 0.684681, -0.333081,
		0.719879, -0.408682, 0.561029,
		0.248002, -0.603483, -0.757828,
		40.900845, 34.961735, 31.063257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501072, 35.185940, 31.597277>,  <40.727242, 35.384174, 31.593737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501072, 35.185940, 31.597277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351006, 35.183861, 31.226500>,  <41.260967, 35.182613, 31.004034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351006, 35.183861, 31.226500>,  <41.501072, 35.185940, 31.597277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351006, 35.183861, 31.226500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667822, 0.691986, -0.274169,
		0.642856, -0.721892, -0.256141,
		-0.375166, -0.005194, -0.926943,
		41.238457, 35.182301, 30.948416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275894, 35.414135, 31.836567>,  <41.501072, 35.185940, 31.597277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275894, 35.414135, 31.836567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635651, 35.341278, 31.995522>,  <42.851505, 35.297565, 32.090893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635651, 35.341278, 31.995522>,  <42.275894, 35.414135, 31.836567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635651, 35.341278, 31.995522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413468, 0.649542, -0.638075,
		-0.141897, 0.738186, 0.659504,
		0.899394, -0.182143, 0.397384,
		42.905468, 35.286636, 32.114738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532597, 36.022560, 32.069031>,  <42.275894, 35.414135, 31.836567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532597, 36.022560, 32.069031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850018, 35.785938, 32.011982>,  <43.040470, 35.643967, 31.977753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850018, 35.785938, 32.011982>,  <42.532597, 36.022560, 32.069031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850018, 35.785938, 32.011982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439633, 0.719405, -0.537754,
		0.420712, 0.364035, 0.830951,
		0.793552, -0.591553, -0.142620,
		43.088081, 35.608471, 31.969196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176823, 36.440948, 32.208813>,  <42.532597, 36.022560, 32.069031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176823, 36.440948, 32.208813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.263477, 36.146774, 31.952003>,  <43.315472, 35.970268, 31.797916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.263477, 36.146774, 31.952003>,  <43.176823, 36.440948, 32.208813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.263477, 36.146774, 31.952003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515240, 0.644725, -0.564675,
		0.829215, -0.208469, 0.518597,
		0.216635, -0.735439, -0.642027,
		43.328468, 35.926144, 31.759396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.979355, 36.640324, 32.076698>,  <43.176823, 36.440948, 32.208813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.979355, 36.640324, 32.076698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.828022, 36.408649, 31.787861>,  <43.737221, 36.269646, 31.614559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.828022, 36.408649, 31.787861>,  <43.979355, 36.640324, 32.076698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.828022, 36.408649, 31.787861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559555, 0.478326, -0.676833,
		0.737404, -0.660115, 0.143119,
		-0.378330, -0.579182, -0.722090,
		43.714523, 36.234894, 31.571234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.508797, 36.132156, 31.825417>,  <43.979355, 36.640324, 32.076698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.508797, 36.132156, 31.825417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220337, 36.242920, 31.571405>,  <44.047260, 36.309380, 31.418999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220337, 36.242920, 31.571405>,  <44.508797, 36.132156, 31.825417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.220337, 36.242920, 31.571405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670231, 0.510814, -0.538385,
		0.175294, -0.813872, -0.553971,
		-0.721153, 0.276913, -0.635026,
		44.003990, 36.325993, 31.380898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892910, 36.586079, 31.361685>,  <44.508797, 36.132156, 31.825417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892910, 36.586079, 31.361685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511246, 36.629242, 31.250013>,  <44.282249, 36.655140, 31.183010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511246, 36.629242, 31.250013>,  <44.892910, 36.586079, 31.361685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.511246, 36.629242, 31.250013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290043, 0.563622, -0.773437,
		0.073890, -0.818954, -0.569082,
		-0.954157, 0.107909, -0.279178,
		44.224998, 36.661613, 31.166260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.154594, 36.723900, 32.063503>,  <44.892910, 36.586079, 31.361685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.154594, 36.723900, 32.063503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.024719, 36.687469, 32.440075>,  <44.946793, 36.665611, 32.666016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.024719, 36.687469, 32.440075>,  <45.154594, 36.723900, 32.063503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.024719, 36.687469, 32.440075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652015, 0.742603, -0.153030,
		-0.685168, -0.663511, -0.300496,
		-0.324686, -0.091077, 0.941427,
		44.927315, 36.660145, 32.722504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.612514, 36.755196, 31.641567>,  <45.154594, 36.723900, 32.063503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.612514, 36.755196, 31.641567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.547531, 36.731167, 31.247614>,  <45.508541, 36.716751, 31.011242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.547531, 36.731167, 31.247614>,  <45.612514, 36.755196, 31.641567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.547531, 36.731167, 31.247614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782454, -0.600263, 0.165680,
		-0.601143, 0.797543, 0.050515,
		-0.162460, -0.060072, -0.984885,
		45.498795, 36.713146, 30.952148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.033428, 36.681465, 32.153427>,  <45.612514, 36.755196, 31.641567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.033428, 36.681465, 32.153427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.281567, 36.866001, 32.407146>,  <46.430450, 36.976723, 32.559380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.281567, 36.866001, 32.407146>,  <46.033428, 36.681465, 32.153427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.281567, 36.866001, 32.407146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180945, -0.702721, 0.688071,
		0.763172, -0.541614, -0.352452,
		0.620344, 0.461342, 0.634300,
		46.467670, 37.004402, 32.597435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.519180, 36.115726, 32.378220>,  <46.033428, 36.681465, 32.153427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.519180, 36.115726, 32.378220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.509563, 36.431240, 32.623901>,  <46.503792, 36.620548, 32.771309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.509563, 36.431240, 32.623901>,  <46.519180, 36.115726, 32.378220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.509563, 36.431240, 32.623901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008887, -0.614524, 0.788848,
		0.999671, 0.013509, 0.021785,
		-0.024044, 0.788782, 0.614203,
		46.502350, 36.667873, 32.808163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.064281, 35.724918, 32.330662>,  <46.519180, 36.115726, 32.378220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.064281, 35.724918, 32.330662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.012798, 35.328514, 32.345245>,  <46.981907, 35.090672, 32.353996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.012798, 35.328514, 32.345245>,  <47.064281, 35.724918, 32.330662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.012798, 35.328514, 32.345245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054454, 0.029644, 0.998076,
		-0.990187, 0.130444, 0.050149,
		-0.128706, -0.991012, 0.036456,
		46.974186, 35.031212, 32.356182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.360165, 35.472092, 32.757610>,  <47.064281, 35.724918, 32.330662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.360165, 35.472092, 32.757610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.661602, 35.209324, 32.767033>,  <46.842464, 35.051662, 32.772686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.661602, 35.209324, 32.767033>,  <46.360165, 35.472092, 32.757610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.661602, 35.209324, 32.767033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006598, 0.043391, 0.999036,
		-0.657306, -0.752713, 0.037033,
		0.753595, -0.656917, 0.023555,
		46.887680, 35.012249, 32.774097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.083138, 34.967327, 33.315884>,  <46.360165, 35.472092, 32.757610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.083138, 34.967327, 33.315884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.479645, 34.985851, 33.266483>,  <46.717548, 34.996967, 33.236843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.479645, 34.985851, 33.266483>,  <46.083138, 34.967327, 33.315884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.479645, 34.985851, 33.266483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128306, -0.121645, 0.984246,
		0.030560, -0.991493, -0.126524,
		0.991264, 0.046313, -0.123497,
		46.777023, 34.999744, 33.229435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.403332, 34.284863, 33.555050>,  <46.083138, 34.967327, 33.315884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.403332, 34.284863, 33.555050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.642864, 34.601177, 33.605728>,  <46.786583, 34.790966, 33.636135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.642864, 34.601177, 33.605728>,  <46.403332, 34.284863, 33.555050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.642864, 34.601177, 33.605728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041869, -0.188888, 0.981106,
		0.799777, -0.582216, -0.146223,
		0.598835, 0.790788, 0.126692,
		46.822514, 34.838413, 33.643734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.859135, 33.974174, 34.032043>,  <46.403332, 34.284863, 33.555050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.859135, 33.974174, 34.032043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.898033, 34.372189, 34.023495>,  <46.921371, 34.610996, 34.018364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.898033, 34.372189, 34.023495>,  <46.859135, 33.974174, 34.032043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.898033, 34.372189, 34.023495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237252, -0.002322, 0.971445,
		0.966569, -0.099537, -0.236299,
		0.097244, 0.995031, -0.021371,
		46.927208, 34.670696, 34.017082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.534920, 34.156170, 34.202145>,  <46.859135, 33.974174, 34.032043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.534920, 34.156170, 34.202145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.268730, 34.440319, 34.293808>,  <47.109016, 34.610809, 34.348808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.268730, 34.440319, 34.293808>,  <47.534920, 34.156170, 34.202145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.268730, 34.440319, 34.293808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357705, 0.034048, 0.933214,
		0.655130, 0.702998, -0.276764,
		-0.665470, 0.710376, 0.229160,
		47.069088, 34.653431, 34.362556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.979076, 34.591431, 34.581585>,  <47.534920, 34.156170, 34.202145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.979076, 34.591431, 34.581585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.616150, 34.701199, 34.709003>,  <47.398396, 34.767059, 34.785454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.616150, 34.701199, 34.709003>,  <47.979076, 34.591431, 34.581585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.616150, 34.701199, 34.709003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377451, 0.197836, 0.904650,
		0.185236, 0.941039, -0.283080,
		-0.907314, 0.274422, 0.318549,
		47.343956, 34.783524, 34.804569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.059235, 35.238182, 34.808086>,  <47.979076, 34.591431, 34.581585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.059235, 35.238182, 34.808086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.758186, 35.063702, 35.005386>,  <47.577557, 34.959015, 35.123768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.758186, 35.063702, 35.005386>,  <48.059235, 35.238182, 34.808086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.758186, 35.063702, 35.005386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403160, 0.287007, 0.868959,
		-0.520604, 0.852854, -0.040150,
		-0.752618, -0.436196, 0.493253,
		47.532402, 34.932842, 35.153362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.795536, 33.621143, 25.486370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.443562, 33.678097, 25.667673>,  <30.232376, 33.712269, 25.776455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.443562, 33.678097, 25.667673>,  <30.795536, 33.621143, 25.486370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443562, 33.678097, 25.667673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355250, -0.436271, 0.826719,
		0.315453, 0.888479, 0.333309,
		-0.879936, 0.142383, 0.453255,
		30.179581, 33.720810, 25.803650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927715, 34.116596, 26.129194>,  <30.795536, 33.621143, 25.486370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927715, 34.116596, 26.129194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.601055, 33.892075, 26.182884>,  <30.405060, 33.757362, 26.215097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.601055, 33.892075, 26.182884>,  <30.927715, 34.116596, 26.129194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601055, 33.892075, 26.182884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357695, -0.309751, 0.880970,
		-0.452920, 0.767455, 0.453735,
		-0.816650, -0.561308, 0.134223,
		30.356060, 33.723682, 26.223150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921278, 34.207447, 26.937452>,  <30.927715, 34.116596, 26.129194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921278, 34.207447, 26.937452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.653540, 33.927479, 26.837786>,  <30.492897, 33.759499, 26.777985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.653540, 33.927479, 26.837786>,  <30.921278, 34.207447, 26.937452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653540, 33.927479, 26.837786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087485, -0.407295, 0.909097,
		-0.737782, 0.586702, 0.333854,
		-0.669347, -0.699922, -0.249168,
		30.452736, 33.717503, 26.763035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565056, 34.177498, 27.526127>,  <30.921278, 34.207447, 26.937452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565056, 34.177498, 27.526127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.552893, 33.828156, 27.331675>,  <30.545595, 33.618549, 27.215004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.552893, 33.828156, 27.331675>,  <30.565056, 34.177498, 27.526127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552893, 33.828156, 27.331675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450280, -0.446178, 0.773417,
		-0.892370, -0.195374, 0.406824,
		-0.030410, -0.873358, -0.486129,
		30.543770, 33.566147, 27.185837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392050, 33.888618, 28.095179>,  <30.565056, 34.177498, 27.526127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392050, 33.888618, 28.095179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.488369, 33.611744, 27.823034>,  <30.546162, 33.445618, 27.659748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.488369, 33.611744, 27.823034>,  <30.392050, 33.888618, 28.095179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488369, 33.611744, 27.823034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435919, -0.549177, 0.713007,
		-0.867173, -0.468275, 0.169496,
		0.240800, -0.692187, -0.680361,
		30.560610, 33.404087, 27.618925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244194, 33.204079, 28.434113>,  <30.392050, 33.888618, 28.095179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244194, 33.204079, 28.434113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.528484, 33.152725, 28.157452>,  <30.699059, 33.121914, 27.991455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.528484, 33.152725, 28.157452>,  <30.244194, 33.204079, 28.434113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528484, 33.152725, 28.157452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621972, -0.344666, 0.703104,
		-0.328660, -0.929904, -0.165109,
		0.710727, -0.128389, -0.691653,
		30.741703, 33.114208, 27.949957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612398, 32.652546, 28.675947>,  <30.244194, 33.204079, 28.434113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612398, 32.652546, 28.675947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.871853, 32.788128, 28.403366>,  <31.027527, 32.869476, 28.239819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.871853, 32.788128, 28.403366>,  <30.612398, 32.652546, 28.675947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871853, 32.788128, 28.403366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760401, -0.250339, 0.599266,
		0.032533, -0.906883, -0.420124,
		0.648638, 0.338959, -0.681451,
		31.066444, 32.889816, 28.198931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213221, 32.100018, 28.703239>,  <30.612398, 32.652546, 28.675947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213221, 32.100018, 28.703239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.366169, 32.430458, 28.537661>,  <31.457939, 32.628723, 28.438314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.366169, 32.430458, 28.537661>,  <31.213221, 32.100018, 28.703239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366169, 32.430458, 28.537661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898312, -0.227435, 0.375910,
		0.216394, -0.515590, -0.829060,
		0.382373, 0.826099, -0.413945,
		31.480881, 32.678288, 28.413477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825871, 31.986258, 28.309557>,  <31.213221, 32.100018, 28.703239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825871, 31.986258, 28.309557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.852444, 32.374836, 28.400669>,  <31.868387, 32.607983, 28.455336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.852444, 32.374836, 28.400669>,  <31.825871, 31.986258, 28.309557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852444, 32.374836, 28.400669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881515, -0.164093, 0.442725,
		0.467459, 0.171379, -0.867243,
		0.066434, 0.971444, 0.227780,
		31.872374, 32.666267, 28.469004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493252, 32.281178, 28.103577>,  <31.825871, 31.986258, 28.309557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493252, 32.281178, 28.103577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.366573, 32.538551, 28.382345>,  <32.290565, 32.692974, 28.549606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.366573, 32.538551, 28.382345>,  <32.493252, 32.281178, 28.103577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366573, 32.538551, 28.382345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913804, 0.009991, 0.406032,
		0.254290, 0.765439, -0.591134,
		-0.316699, 0.643431, 0.696921,
		32.271564, 32.731579, 28.591421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021290, 32.685131, 28.305319>,  <32.493252, 32.281178, 28.103577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021290, 32.685131, 28.305319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.801285, 32.794655, 28.620916>,  <32.669281, 32.860371, 28.810274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.801285, 32.794655, 28.620916>,  <33.021290, 32.685131, 28.305319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801285, 32.794655, 28.620916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834562, 0.215818, 0.506882,
		-0.031488, 0.937256, -0.347217,
		-0.550014, 0.273814, 0.788994,
		32.636280, 32.876801, 28.857615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208248, 33.346191, 28.478729>,  <33.021290, 32.685131, 28.305319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208248, 33.346191, 28.478729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.054348, 33.184021, 28.810415>,  <32.962009, 33.086720, 29.009426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.054348, 33.184021, 28.810415>,  <33.208248, 33.346191, 28.478729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054348, 33.184021, 28.810415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822015, 0.258115, 0.507610,
		-0.419832, 0.876929, 0.233960,
		-0.384749, -0.405430, 0.829214,
		32.938923, 33.062393, 29.059179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381199, 33.748295, 29.000641>,  <33.208248, 33.346191, 28.478729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381199, 33.748295, 29.000641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.284672, 33.423813, 29.213697>,  <33.226757, 33.229122, 29.341532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.284672, 33.423813, 29.213697>,  <33.381199, 33.748295, 29.000641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284672, 33.423813, 29.213697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676514, 0.252889, 0.691648,
		-0.695769, 0.527247, 0.487766,
		-0.241319, -0.811207, 0.532643,
		33.212276, 33.180450, 29.373489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478764, 33.946968, 29.705555>,  <33.381199, 33.748295, 29.000641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478764, 33.946968, 29.705555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.473541, 33.547028, 29.710035>,  <33.470409, 33.307064, 29.712723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.473541, 33.547028, 29.710035>,  <33.478764, 33.946968, 29.705555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473541, 33.547028, 29.710035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603622, 0.001049, 0.797270,
		-0.797164, 0.017170, 0.603519,
		-0.013056, -0.999852, 0.011200,
		33.469624, 33.247070, 29.713396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349167, 33.812061, 30.375484>,  <33.478764, 33.946968, 29.705555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349167, 33.812061, 30.375484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.501350, 33.467651, 30.240498>,  <33.592659, 33.261005, 30.159506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.501350, 33.467651, 30.240498>,  <33.349167, 33.812061, 30.375484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501350, 33.467651, 30.240498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606127, -0.043444, 0.794180,
		-0.698472, -0.506699, 0.505364,
		0.380455, -0.861028, -0.337469,
		33.615486, 33.209343, 30.139257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503139, 33.459255, 30.973265>,  <33.349167, 33.812061, 30.375484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503139, 33.459255, 30.973265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.737720, 33.304600, 30.688566>,  <33.878468, 33.211807, 30.517746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.737720, 33.304600, 30.688566>,  <33.503139, 33.459255, 30.973265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737720, 33.304600, 30.688566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796667, 0.116639, 0.593058,
		-0.146283, -0.914824, 0.376427,
		0.586450, -0.386642, -0.711748,
		33.913654, 33.188606, 30.475042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914597, 33.080723, 31.347513>,  <33.503139, 33.459255, 30.973265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914597, 33.080723, 31.347513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.129524, 33.093559, 31.010406>,  <34.258480, 33.101261, 30.808142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.129524, 33.093559, 31.010406>,  <33.914597, 33.080723, 31.347513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129524, 33.093559, 31.010406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837281, -0.140254, 0.528479,
		-0.101243, -0.989595, -0.102229,
		0.537318, 0.032090, -0.842769,
		34.290718, 33.103188, 30.757576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371880, 32.621326, 31.562521>,  <33.914597, 33.080723, 31.347513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371880, 32.621326, 31.562521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.506721, 32.850437, 31.263645>,  <34.587627, 32.987904, 31.084320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.506721, 32.850437, 31.263645>,  <34.371880, 32.621326, 31.562521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506721, 32.850437, 31.263645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805394, 0.235550, 0.543928,
		0.487548, -0.785142, -0.381903,
		0.337103, 0.572773, -0.747190,
		34.607853, 33.022270, 31.039488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095993, 32.446968, 31.475889>,  <34.371880, 32.621326, 31.562521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095993, 32.446968, 31.475889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.076733, 32.810387, 31.309889>,  <35.065174, 33.028439, 31.210289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.076733, 32.810387, 31.309889>,  <35.095993, 32.446968, 31.475889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076733, 32.810387, 31.309889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824418, 0.270727, 0.497032,
		0.563929, -0.318201, -0.762058,
		-0.048153, 0.908546, -0.415001,
		35.062286, 33.082951, 31.185389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828575, 32.710758, 31.397110>,  <35.095993, 32.446968, 31.475889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828575, 32.710758, 31.397110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.611725, 33.044498, 31.357183>,  <35.481613, 33.244743, 31.333227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.611725, 33.044498, 31.357183>,  <35.828575, 32.710758, 31.397110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611725, 33.044498, 31.357183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608183, 0.471566, 0.638544,
		0.579839, 0.285463, -0.763084,
		-0.542126, 0.834348, -0.099818,
		35.449089, 33.294804, 31.327238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332630, 33.290371, 31.292711>,  <35.828575, 32.710758, 31.397110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332630, 33.290371, 31.292711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.992531, 33.463264, 31.412882>,  <35.788471, 33.567001, 31.484983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.992531, 33.463264, 31.412882>,  <36.332630, 33.290371, 31.292711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992531, 33.463264, 31.412882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471824, 0.372762, 0.799019,
		0.233378, 0.821110, -0.520878,
		-0.850245, 0.432236, 0.300425,
		35.737457, 33.592934, 31.503010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513493, 34.024563, 31.551638>,  <36.332630, 33.290371, 31.292711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513493, 34.024563, 31.551638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.195446, 33.835896, 31.704123>,  <36.004620, 33.722694, 31.795614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.195446, 33.835896, 31.704123>,  <36.513493, 34.024563, 31.551638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195446, 33.835896, 31.704123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394409, 0.075327, 0.915842,
		-0.460690, 0.878552, 0.126137,
		-0.795114, -0.471669, 0.381212,
		35.956913, 33.694393, 31.818485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215202, 34.319153, 31.244490>,  <36.513493, 34.024563, 31.551638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215202, 34.319153, 31.244490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.525158, 34.441273, 31.023098>,  <37.711132, 34.514545, 30.890263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.525158, 34.441273, 31.023098>,  <37.215202, 34.319153, 31.244490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525158, 34.441273, 31.023098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618180, 0.183274, -0.764372,
		-0.131927, 0.934452, 0.330749,
		0.774886, 0.305304, -0.553480,
		37.757626, 34.532864, 30.857054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154591, 34.977280, 31.012224>,  <37.215202, 34.319153, 31.244490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154591, 34.977280, 31.012224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.384514, 34.811108, 30.730227>,  <37.522469, 34.711403, 30.561028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.384514, 34.811108, 30.730227>,  <37.154591, 34.977280, 31.012224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384514, 34.811108, 30.730227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688949, 0.219175, -0.690877,
		0.441527, 0.882826, -0.160226,
		0.574807, -0.415429, -0.704994,
		37.556957, 34.686478, 30.518728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153019, 35.413849, 30.346104>,  <37.154591, 34.977280, 31.012224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153019, 35.413849, 30.346104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.258957, 35.042953, 30.240215>,  <37.322521, 34.820415, 30.176682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.258957, 35.042953, 30.240215>,  <37.153019, 35.413849, 30.346104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258957, 35.042953, 30.240215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766269, -0.035713, -0.641527,
		0.585397, 0.372754, -0.719975,
		0.264845, -0.927243, -0.264723,
		37.338409, 34.764782, 30.160799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976280, 35.415958, 29.684397>,  <37.153019, 35.413849, 30.346104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976280, 35.415958, 29.684397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.043617, 35.024147, 29.728542>,  <37.084019, 34.789059, 29.755030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.043617, 35.024147, 29.728542>,  <36.976280, 35.415958, 29.684397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043617, 35.024147, 29.728542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586284, -0.189504, -0.787629,
		0.792421, 0.067889, -0.606185,
		0.168346, -0.979530, 0.110365,
		37.094120, 34.730289, 29.761652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953064, 35.095440, 28.966187>,  <36.976280, 35.415958, 29.684397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953064, 35.095440, 28.966187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.874722, 34.806389, 29.231350>,  <36.827717, 34.632957, 29.390448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.874722, 34.806389, 29.231350>,  <36.953064, 35.095440, 28.966187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874722, 34.806389, 29.231350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563476, -0.470330, -0.679180,
		0.802581, -0.506553, -0.315068,
		-0.195854, -0.722630, 0.662908,
		36.815964, 34.589600, 29.430222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779678, 34.586987, 28.479874>,  <36.953064, 35.095440, 28.966187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779678, 34.586987, 28.479874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.656437, 34.418068, 28.820869>,  <36.582493, 34.316715, 29.025467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.656437, 34.418068, 28.820869>,  <36.779678, 34.586987, 28.479874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656437, 34.418068, 28.820869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887171, -0.196016, -0.417738,
		0.343513, -0.885008, -0.314262,
		-0.308101, -0.422302, 0.852487,
		36.564007, 34.291378, 29.076616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619869, 33.794384, 28.388277>,  <36.779678, 34.586987, 28.479874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619869, 33.794384, 28.388277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.426903, 33.928684, 28.711893>,  <36.311123, 34.009266, 28.906063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.426903, 33.928684, 28.711893>,  <36.619869, 33.794384, 28.388277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426903, 33.928684, 28.711893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846186, -0.417320, -0.331380,
		0.226366, -0.844461, 0.485432,
		-0.482418, 0.335752, 0.809038,
		36.282177, 34.029411, 28.954605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045647, 33.252911, 28.521849>,  <36.619869, 33.794384, 28.388277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045647, 33.252911, 28.521849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941517, 33.597073, 28.697086>,  <35.879040, 33.803570, 28.802229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941517, 33.597073, 28.697086>,  <36.045647, 33.252911, 28.521849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941517, 33.597073, 28.697086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927392, -0.096576, -0.361411,
		-0.268652, -0.500369, 0.823078,
		-0.260328, 0.860409, 0.438093,
		35.863419, 33.855194, 28.828514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412113, 33.148804, 28.703539>,  <36.045647, 33.252911, 28.521849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412113, 33.148804, 28.703539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.425312, 33.548450, 28.693159>,  <35.433231, 33.788239, 28.686932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.425312, 33.548450, 28.693159>,  <35.412113, 33.148804, 28.703539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425312, 33.548450, 28.693159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865828, 0.015610, -0.500098,
		-0.499252, 0.038970, 0.865580,
		0.033001, 0.999119, -0.025948,
		35.435211, 33.848186, 28.685375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753178, 33.315594, 28.931416>,  <35.412113, 33.148804, 28.703539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753178, 33.315594, 28.931416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.907661, 33.633720, 28.744518>,  <35.000351, 33.824596, 28.632380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.907661, 33.633720, 28.744518>,  <34.753178, 33.315594, 28.931416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907661, 33.633720, 28.744518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866668, 0.139451, -0.478998,
		-0.315796, 0.589940, 0.743131,
		0.386211, 0.795314, -0.467244,
		35.023525, 33.872314, 28.604345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278004, 33.903927, 29.029768>,  <34.753178, 33.315594, 28.931416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278004, 33.903927, 29.029768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.512894, 33.949364, 28.709202>,  <34.653828, 33.976627, 28.516863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.512894, 33.949364, 28.709202>,  <34.278004, 33.903927, 29.029768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512894, 33.949364, 28.709202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801787, 0.217334, -0.556690,
		0.110939, 0.969465, 0.218700,
		0.587223, 0.113592, -0.801415,
		34.689060, 33.983440, 28.468777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087494, 34.462273, 28.692562>,  <34.278004, 33.903927, 29.029768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087494, 34.462273, 28.692562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.303741, 34.268513, 28.417437>,  <34.433491, 34.152256, 28.252361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.303741, 34.268513, 28.417437>,  <34.087494, 34.462273, 28.692562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303741, 34.268513, 28.417437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683655, 0.223491, -0.694743,
		0.490256, 0.845816, -0.210341,
		0.540616, -0.484403, -0.687814,
		34.465927, 34.123192, 28.211092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197285, 34.908772, 28.024933>,  <34.087494, 34.462273, 28.692562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197285, 34.908772, 28.024933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.208832, 34.515743, 27.951487>,  <34.215759, 34.279926, 27.907419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.208832, 34.515743, 27.951487>,  <34.197285, 34.908772, 28.024933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208832, 34.515743, 27.951487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707972, 0.109579, -0.697688,
		0.705651, 0.150135, -0.692472,
		0.028867, -0.982574, -0.183616,
		34.217491, 34.220970, 27.896402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287067, 34.814312, 27.253704>,  <34.197285, 34.908772, 28.024933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287067, 34.814312, 27.253704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.178558, 34.436222, 27.326323>,  <34.113453, 34.209366, 27.369894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.178558, 34.436222, 27.326323>,  <34.287067, 34.814312, 27.253704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178558, 34.436222, 27.326323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511695, -0.018130, -0.858976,
		0.815219, -0.325909, -0.478750,
		-0.271268, -0.945227, 0.181546,
		34.097179, 34.152653, 27.380787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454910, 34.445656, 26.655748>,  <34.287067, 34.814312, 27.253704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454910, 34.445656, 26.655748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.201530, 34.193092, 26.834663>,  <34.049503, 34.041553, 26.942013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.201530, 34.193092, 26.834663>,  <34.454910, 34.445656, 26.655748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201530, 34.193092, 26.834663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547548, -0.042676, -0.835685,
		0.546748, -0.774274, -0.318694,
		-0.633449, -0.631410, 0.447286,
		34.011497, 34.003670, 26.968849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477768, 33.835938, 26.242170>,  <34.454910, 34.445656, 26.655748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477768, 33.835938, 26.242170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.132046, 33.843632, 26.443213>,  <33.924614, 33.848248, 26.563837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.132046, 33.843632, 26.443213>,  <34.477768, 33.835938, 26.242170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132046, 33.843632, 26.443213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501319, -0.113894, -0.857734,
		0.040743, -0.993307, 0.108082,
		-0.864303, 0.019237, 0.502604,
		33.872753, 33.849403, 26.593994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039127, 33.189835, 26.065153>,  <34.477768, 33.835938, 26.242170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039127, 33.189835, 26.065153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.807072, 33.496819, 26.174290>,  <33.667839, 33.681011, 26.239771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.807072, 33.496819, 26.174290>,  <34.039127, 33.189835, 26.065153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807072, 33.496819, 26.174290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507237, -0.078315, -0.858241,
		-0.637300, -0.636293, 0.434718,
		-0.580138, 0.767462, 0.272841,
		33.633030, 33.727058, 26.256142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496151, 33.133389, 25.655840>,  <34.039127, 33.189835, 26.065153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496151, 33.133389, 25.655840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.372780, 33.480724, 25.811201>,  <33.298759, 33.689125, 25.904417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.372780, 33.480724, 25.811201>,  <33.496151, 33.133389, 25.655840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372780, 33.480724, 25.811201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664216, 0.095696, -0.741390,
		-0.680949, -0.486646, 0.547252,
		-0.308425, 0.868342, 0.388402,
		33.280251, 33.741226, 25.927721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.686737, 33.166195, 25.639700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.812119, 33.543530, 25.683266>,  <32.887348, 33.769932, 25.709406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.812119, 33.543530, 25.683266>,  <32.686737, 33.166195, 25.639700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812119, 33.543530, 25.683266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610941, 0.288139, -0.737378,
		-0.726980, 0.164591, 0.666641,
		0.313451, 0.943338, 0.108916,
		32.906155, 33.826530, 25.715940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080784, 33.624165, 25.573467>,  <32.686737, 33.166195, 25.639700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080784, 33.624165, 25.573467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.372055, 33.892174, 25.515739>,  <32.546818, 34.052979, 25.481102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.372055, 33.892174, 25.515739>,  <32.080784, 33.624165, 25.573467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372055, 33.892174, 25.515739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573405, 0.480197, -0.663791,
		-0.375453, 0.566111, 0.733862,
		0.728178, 0.670022, -0.144319,
		32.590508, 34.093182, 25.472445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816505, 34.328247, 25.665224>,  <32.080784, 33.624165, 25.573467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816505, 34.328247, 25.665224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.147324, 34.379684, 25.446331>,  <32.345814, 34.410545, 25.314995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.147324, 34.379684, 25.446331>,  <31.816505, 34.328247, 25.665224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147324, 34.379684, 25.446331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544078, 0.427887, -0.721728,
		0.141343, 0.894637, 0.423847,
		0.827044, 0.128594, -0.547231,
		32.395435, 34.418262, 25.282162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776764, 35.038509, 25.391787>,  <31.816505, 34.328247, 25.665224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776764, 35.038509, 25.391787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.035931, 34.850681, 25.151884>,  <32.191429, 34.737984, 25.007942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.035931, 34.850681, 25.151884>,  <31.776764, 35.038509, 25.391787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035931, 34.850681, 25.151884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374299, 0.489486, -0.787593,
		0.663405, 0.734781, 0.141384,
		0.647915, -0.469574, -0.599756,
		32.230305, 34.709808, 24.971958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138248, 35.534756, 24.957396>,  <31.776764, 35.038509, 25.391787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138248, 35.534756, 24.957396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.159283, 35.182560, 24.768936>,  <32.171902, 34.971245, 24.655861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.159283, 35.182560, 24.768936>,  <32.138248, 35.534756, 24.957396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159283, 35.182560, 24.768936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365373, 0.422123, -0.829647,
		0.929375, 0.215768, -0.299511,
		0.052581, -0.880486, -0.471146,
		32.175056, 34.918415, 24.627592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497562, 35.665482, 24.287649>,  <32.138248, 35.534756, 24.957396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497562, 35.665482, 24.287649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.303699, 35.317230, 24.253914>,  <32.187382, 35.108280, 24.233673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.303699, 35.317230, 24.253914>,  <32.497562, 35.665482, 24.287649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303699, 35.317230, 24.253914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450933, 0.331306, -0.828792,
		0.749512, -0.363648, -0.553165,
		-0.484656, -0.870630, -0.084337,
		32.158302, 35.056042, 24.228613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406700, 35.583851, 23.645081>,  <32.497562, 35.665482, 24.287649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406700, 35.583851, 23.645081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.146408, 35.296448, 23.743307>,  <31.990232, 35.124008, 23.802244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.146408, 35.296448, 23.743307>,  <32.406700, 35.583851, 23.645081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146408, 35.296448, 23.743307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549891, 0.222910, -0.804941,
		0.523615, -0.658834, -0.540153,
		-0.650728, -0.718505, 0.245568,
		31.951189, 35.080898, 23.816978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360001, 35.205292, 23.120974>,  <32.406700, 35.583851, 23.645081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360001, 35.205292, 23.120974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.023415, 35.130787, 23.323851>,  <31.821463, 35.086086, 23.445578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.023415, 35.130787, 23.323851>,  <32.360001, 35.205292, 23.120974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023415, 35.130787, 23.323851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519042, 0.017872, -0.854562,
		0.150109, -0.982337, -0.111717,
		-0.841465, -0.186263, 0.507192,
		31.770975, 35.074909, 23.476007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983856, 34.700127, 22.669798>,  <32.360001, 35.205292, 23.120974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983856, 34.700127, 22.669798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.700645, 34.825493, 22.922928>,  <31.530720, 34.900711, 23.074806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.700645, 34.825493, 22.922928>,  <31.983856, 34.700127, 22.669798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700645, 34.825493, 22.922928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610433, 0.178937, -0.771591,
		-0.355066, -0.932605, 0.064629,
		-0.708025, 0.313417, 0.632827,
		31.488237, 34.919518, 23.112776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338844, 34.370647, 22.543489>,  <31.983856, 34.700127, 22.669798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338844, 34.370647, 22.543489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.264896, 34.722263, 22.719267>,  <31.220528, 34.933235, 22.824734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.264896, 34.722263, 22.719267>,  <31.338844, 34.370647, 22.543489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264896, 34.722263, 22.719267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549656, 0.278187, -0.787712,
		-0.814678, -0.387167, 0.431742,
		-0.184871, 0.879041, 0.439442,
		31.209435, 34.985977, 22.851099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639227, 34.579350, 22.300724>,  <31.338844, 34.370647, 22.543489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639227, 34.579350, 22.300724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.747021, 34.923195, 22.474361>,  <30.811697, 35.129501, 22.578545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.747021, 34.923195, 22.474361>,  <30.639227, 34.579350, 22.300724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747021, 34.923195, 22.474361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441427, 0.510890, -0.737654,
		-0.855874, 0.007164, 0.517134,
		0.269484, 0.859616, 0.434095,
		30.827866, 35.181080, 22.604589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029057, 34.891331, 22.291748>,  <30.639227, 34.579350, 22.300724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029057, 34.891331, 22.291748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.340502, 35.142330, 22.290977>,  <30.527369, 35.292931, 22.290516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.340502, 35.142330, 22.290977>,  <30.029057, 34.891331, 22.291748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340502, 35.142330, 22.290977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422319, 0.521749, -0.741232,
		-0.464118, 0.577947, 0.671247,
		0.778615, 0.627499, -0.001924,
		30.574087, 35.330582, 22.290400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720314, 35.525028, 22.141047>,  <30.029057, 34.891331, 22.291748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720314, 35.525028, 22.141047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.108845, 35.560520, 22.052818>,  <30.341963, 35.581818, 21.999882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.108845, 35.560520, 22.052818>,  <29.720314, 35.525028, 22.141047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108845, 35.560520, 22.052818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233863, 0.523675, -0.819190,
		0.042817, 0.847284, 0.529411,
		0.971326, 0.088734, -0.220570,
		30.400242, 35.587139, 21.986647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733208, 36.163826, 21.728804>,  <29.720314, 35.525028, 22.141047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733208, 36.163826, 21.728804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.085197, 35.985241, 21.663908>,  <30.296391, 35.878090, 21.624969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.085197, 35.985241, 21.663908>,  <29.733208, 36.163826, 21.728804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085197, 35.985241, 21.663908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117871, 0.536085, -0.835894,
		0.460166, 0.716441, 0.524365,
		0.879974, -0.446458, -0.162240,
		30.349190, 35.851303, 21.615236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240921, 36.723721, 21.564837>,  <29.733208, 36.163826, 21.728804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240921, 36.723721, 21.564837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.385973, 36.387207, 21.404467>,  <30.473005, 36.185299, 21.308245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.385973, 36.387207, 21.404467>,  <30.240921, 36.723721, 21.564837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385973, 36.387207, 21.404467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191065, 0.488184, -0.851570,
		0.912136, 0.232204, 0.337770,
		0.362632, -0.841284, -0.400924,
		30.494762, 36.134823, 21.284189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727194, 36.899364, 21.096352>,  <30.240921, 36.723721, 21.564837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727194, 36.899364, 21.096352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.664110, 36.536640, 20.939983>,  <30.626259, 36.319004, 20.846163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.664110, 36.536640, 20.939983>,  <30.727194, 36.899364, 21.096352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664110, 36.536640, 20.939983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051155, 0.387839, -0.920306,
		0.986160, -0.165139, -0.014778,
		-0.157710, -0.906813, -0.390918,
		30.616796, 36.264595, 20.822708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295860, 36.838783, 20.626268>,  <30.727194, 36.899364, 21.096352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295860, 36.838783, 20.626268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.011589, 36.571907, 20.537010>,  <30.841026, 36.411781, 20.483456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.011589, 36.571907, 20.537010>,  <31.295860, 36.838783, 20.626268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011589, 36.571907, 20.537010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070288, 0.382934, -0.921098,
		0.699996, -0.638921, -0.319039,
		-0.710679, -0.667189, -0.223144,
		30.798386, 36.371750, 20.470068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537859, 36.465801, 20.031004>,  <31.295860, 36.838783, 20.626268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537859, 36.465801, 20.031004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.140963, 36.416180, 20.034397>,  <30.902824, 36.386406, 20.036434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.140963, 36.416180, 20.034397>,  <31.537859, 36.465801, 20.031004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140963, 36.416180, 20.034397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052612, 0.357020, -0.932614,
		0.112669, -0.925822, -0.360776,
		-0.992239, -0.124058, 0.008484,
		30.843290, 36.378963, 20.036942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394915, 36.186272, 19.396326>,  <31.537859, 36.465801, 20.031004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394915, 36.186272, 19.396326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.050714, 36.341015, 19.528923>,  <30.844194, 36.433861, 19.608480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.050714, 36.341015, 19.528923>,  <31.394915, 36.186272, 19.396326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050714, 36.341015, 19.528923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148057, 0.432699, -0.889298,
		-0.487464, -0.814319, -0.315061,
		-0.860499, 0.386854, 0.331490,
		30.792564, 36.457069, 19.628370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948116, 36.176388, 18.911180>,  <31.394915, 36.186272, 19.396326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948116, 36.176388, 18.911180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.742891, 36.447952, 19.121265>,  <30.619757, 36.610889, 19.247316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.742891, 36.447952, 19.121265>,  <30.948116, 36.176388, 18.911180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742891, 36.447952, 19.121265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322970, 0.414224, -0.850946,
		-0.795271, -0.606217, 0.006744,
		-0.513064, 0.678910, 0.525211,
		30.588972, 36.651627, 19.278828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210323, 36.188007, 18.669970>,  <30.948116, 36.176388, 18.911180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210323, 36.188007, 18.669970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.276863, 36.542828, 18.842234>,  <30.316786, 36.755718, 18.945593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.276863, 36.542828, 18.842234>,  <30.210323, 36.188007, 18.669970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276863, 36.542828, 18.842234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370992, 0.460958, -0.806153,
		-0.913615, -0.025670, 0.405768,
		0.166348, 0.887050, 0.430662,
		30.326767, 36.808941, 18.971432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604464, 36.585148, 18.510118>,  <30.210323, 36.188007, 18.669970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604464, 36.585148, 18.510118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.874516, 36.858387, 18.621532>,  <30.036547, 37.022331, 18.688381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.874516, 36.858387, 18.621532>,  <29.604464, 36.585148, 18.510118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874516, 36.858387, 18.621532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246034, 0.564453, -0.787947,
		-0.695463, 0.463436, 0.549143,
		0.675128, 0.683096, 0.278535,
		30.077053, 37.063316, 18.705093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197969, 37.214138, 18.558220>,  <29.604464, 36.585148, 18.510118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197969, 37.214138, 18.558220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.587255, 37.290829, 18.507481>,  <29.820827, 37.336845, 18.477037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.587255, 37.290829, 18.507481>,  <29.197969, 37.214138, 18.558220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587255, 37.290829, 18.507481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220774, 0.625581, -0.748269,
		-0.064111, 0.756233, 0.651154,
		0.973216, 0.191730, -0.126850,
		29.879221, 37.348347, 18.469425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825357, 36.519009, 18.669128>,  <29.197969, 37.214138, 18.558220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825357, 36.519009, 18.669128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.604082, 36.852230, 18.670414>,  <28.471317, 37.052162, 18.671186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.604082, 36.852230, 18.670414>,  <28.825357, 36.519009, 18.669128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.604082, 36.852230, 18.670414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148625, -0.102492, 0.983568,
		0.819691, 0.543620, 0.180509,
		-0.553188, 0.833050, 0.003216,
		28.438126, 37.102146, 18.671379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022949, 37.049301, 19.251936>,  <28.825357, 36.519009, 18.669128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022949, 37.049301, 19.251936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.634037, 37.102604, 19.175083>,  <28.400690, 37.134586, 19.128971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.634037, 37.102604, 19.175083>,  <29.022949, 37.049301, 19.251936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634037, 37.102604, 19.175083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199416, -0.043513, 0.978948,
		0.122093, 0.990125, 0.068881,
		-0.972279, 0.133259, -0.192134,
		28.342354, 37.142582, 19.117443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761824, 37.641987, 19.623453>,  <29.022949, 37.049301, 19.251936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761824, 37.641987, 19.623453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.459616, 37.388149, 19.558369>,  <28.278290, 37.235847, 19.519318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.459616, 37.388149, 19.558369>,  <28.761824, 37.641987, 19.623453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459616, 37.388149, 19.558369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215783, 0.006547, 0.976419,
		-0.618567, 0.772816, -0.141882,
		-0.755521, -0.634596, -0.162711,
		28.232960, 37.197769, 19.509556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326763, 37.897530, 20.041803>,  <28.761824, 37.641987, 19.623453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326763, 37.897530, 20.041803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.214695, 37.521446, 19.964323>,  <28.147455, 37.295795, 19.917835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.214695, 37.521446, 19.964323>,  <28.326763, 37.897530, 20.041803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214695, 37.521446, 19.964323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051803, -0.186679, 0.981054,
		-0.958552, 0.284896, 0.003596,
		-0.280170, -0.940205, -0.193700,
		28.130644, 37.239384, 19.906214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749096, 37.734924, 20.512394>,  <28.326763, 37.897530, 20.041803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749096, 37.734924, 20.512394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.848557, 37.361881, 20.407768>,  <27.908234, 37.138054, 20.344992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.848557, 37.361881, 20.407768>,  <27.749096, 37.734924, 20.512394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848557, 37.361881, 20.407768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129000, -0.299527, 0.945326,
		-0.959964, -0.201317, -0.194785,
		0.248653, -0.932606, -0.261566,
		27.923153, 37.082100, 20.329298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.319323, 37.275528, 20.911659>,  <27.749096, 37.734924, 20.512394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.319323, 37.275528, 20.911659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.616629, 37.037064, 20.790236>,  <27.795013, 36.893986, 20.717381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.616629, 37.037064, 20.790236>,  <27.319323, 37.275528, 20.911659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616629, 37.037064, 20.790236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013805, -0.439992, 0.897896,
		-0.668854, -0.671566, -0.318801,
		0.743266, -0.596160, -0.303562,
		27.839609, 36.858215, 20.699167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082336, 36.510162, 20.942169>,  <27.319323, 37.275528, 20.911659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082336, 36.510162, 20.942169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.475449, 36.567425, 20.988897>,  <27.711317, 36.601780, 21.016933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.475449, 36.567425, 20.988897>,  <27.082336, 36.510162, 20.942169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475449, 36.567425, 20.988897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040725, -0.448864, 0.892672,
		0.180226, -0.882059, -0.435305,
		0.982782, 0.143155, 0.116819,
		27.770283, 36.610371, 21.023943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228277, 36.003586, 21.384632>,  <27.082336, 36.510162, 20.942169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228277, 36.003586, 21.384632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.577768, 36.194633, 21.421471>,  <27.787462, 36.309261, 21.443575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.577768, 36.194633, 21.421471>,  <27.228277, 36.003586, 21.384632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577768, 36.194633, 21.421471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136749, -0.422893, 0.895802,
		0.466801, -0.770091, -0.434807,
		0.873726, 0.477620, 0.092098,
		27.839886, 36.337921, 21.449100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756025, 35.521889, 21.520660>,  <27.228277, 36.003586, 21.384632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756025, 35.521889, 21.520660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.922283, 35.867569, 21.634071>,  <28.022038, 36.074978, 21.702118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.922283, 35.867569, 21.634071>,  <27.756025, 35.521889, 21.520660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922283, 35.867569, 21.634071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234390, -0.402978, 0.884687,
		0.878806, -0.301261, -0.370057,
		0.415646, 0.864205, 0.283526,
		28.046978, 36.126831, 21.719130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350199, 35.316029, 21.718895>,  <27.756025, 35.521889, 21.520660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350199, 35.316029, 21.718895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.320370, 35.679020, 21.884270>,  <28.302473, 35.896812, 21.983494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.320370, 35.679020, 21.884270>,  <28.350199, 35.316029, 21.718895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320370, 35.679020, 21.884270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404862, -0.351333, 0.844187,
		0.911332, 0.230337, -0.341202,
		-0.074572, 0.907474, 0.413436,
		28.297998, 35.951263, 22.008301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979246, 35.565403, 21.982937>,  <28.350199, 35.316029, 21.718895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979246, 35.565403, 21.982937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.715691, 35.779686, 22.194174>,  <28.557556, 35.908257, 22.320917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.715691, 35.779686, 22.194174>,  <28.979246, 35.565403, 21.982937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715691, 35.779686, 22.194174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466267, -0.260057, 0.845556,
		0.590304, 0.803361, -0.078433,
		-0.658890, 0.535707, 0.528093,
		28.518024, 35.940399, 22.352602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324408, 35.932606, 22.582073>,  <28.979246, 35.565403, 21.982937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324408, 35.932606, 22.582073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.941366, 35.919140, 22.696520>,  <28.711542, 35.911060, 22.765188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.941366, 35.919140, 22.696520>,  <29.324408, 35.932606, 22.582073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941366, 35.919140, 22.696520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285478, -0.244325, 0.926719,
		0.038708, 0.969109, 0.243576,
		-0.957603, -0.033664, 0.286117,
		28.654085, 35.909042, 22.782354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328621, 36.269875, 23.187777>,  <29.324408, 35.932606, 22.582073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328621, 36.269875, 23.187777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.032017, 36.001587, 23.180882>,  <28.854053, 35.840614, 23.176744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.032017, 36.001587, 23.180882>,  <29.328621, 36.269875, 23.187777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032017, 36.001587, 23.180882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315392, -0.371124, 0.873381,
		-0.592190, 0.642186, 0.486732,
		-0.741511, -0.670719, -0.017235,
		28.809563, 35.800373, 23.175711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027773, 36.272854, 23.821827>,  <29.328621, 36.269875, 23.187777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.027773, 36.272854, 23.821827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.870331, 35.929371, 23.690561>,  <28.775866, 35.723282, 23.611803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.870331, 35.929371, 23.690561>,  <29.027773, 36.272854, 23.821827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870331, 35.929371, 23.690561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289112, -0.454498, 0.842524,
		-0.872633, 0.236747, 0.427156,
		-0.393607, -0.858710, -0.328163,
		28.752249, 35.671757, 23.592112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621794, 36.001907, 24.400808>,  <29.027773, 36.272854, 23.821827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621794, 36.001907, 24.400808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.697855, 35.672611, 24.186846>,  <28.743492, 35.475033, 24.058468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.697855, 35.672611, 24.186846>,  <28.621794, 36.001907, 24.400808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697855, 35.672611, 24.186846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451212, -0.410610, 0.792343,
		-0.871924, -0.392020, 0.293376,
		0.190151, -0.823237, -0.534905,
		28.754900, 35.425640, 24.026375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348743, 35.444584, 24.729509>,  <28.621794, 36.001907, 24.400808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348743, 35.444584, 24.729509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.610313, 35.251316, 24.496639>,  <28.767256, 35.135353, 24.356916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.610313, 35.251316, 24.496639>,  <28.348743, 35.444584, 24.729509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610313, 35.251316, 24.496639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236839, -0.600089, 0.764068,
		-0.718534, -0.637524, -0.277978,
		0.653923, -0.483173, -0.582175,
		28.806490, 35.106365, 24.321987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295828, 34.802437, 24.936312>,  <28.348743, 35.444584, 24.729509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295828, 34.802437, 24.936312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.653429, 34.801323, 24.757090>,  <28.867989, 34.800655, 24.649557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.653429, 34.801323, 24.757090>,  <28.295828, 34.802437, 24.936312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653429, 34.801323, 24.757090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316760, -0.703325, 0.636394,
		-0.316897, -0.710863, -0.627893,
		0.894002, -0.002781, -0.448055,
		28.921629, 34.800488, 24.622673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412897, 34.083305, 24.890303>,  <28.295828, 34.802437, 24.936312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412897, 34.083305, 24.890303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.768135, 34.260429, 24.840965>,  <28.981277, 34.366703, 24.811363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.768135, 34.260429, 24.840965>,  <28.412897, 34.083305, 24.890303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768135, 34.260429, 24.840965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428434, -0.700182, 0.571131,
		0.166538, -0.560061, -0.811540,
		0.888094, 0.442806, -0.123342,
		29.034563, 34.393272, 24.803963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924376, 33.605148, 24.807371>,  <28.412897, 34.083305, 24.890303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924376, 33.605148, 24.807371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.177450, 33.903221, 24.891666>,  <29.329294, 34.082066, 24.942244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.177450, 33.903221, 24.891666>,  <28.924376, 33.605148, 24.807371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177450, 33.903221, 24.891666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538898, -0.619090, 0.571241,
		0.556144, -0.247851, -0.793268,
		0.632687, 0.745183, 0.210737,
		29.367256, 34.126778, 24.954887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603857, 33.252083, 24.856134>,  <28.924376, 33.605148, 24.807371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603857, 33.252083, 24.856134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.634592, 33.611553, 25.028866>,  <29.653032, 33.827236, 25.132505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.634592, 33.611553, 25.028866>,  <29.603857, 33.252083, 24.856134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634592, 33.611553, 25.028866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597801, -0.388152, 0.701408,
		0.797954, 0.204254, -0.567053,
		0.076837, 0.898676, 0.431831,
		29.657642, 33.881157, 25.158415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304014, 33.426476, 24.961920>,  <29.603857, 33.252083, 24.856134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304014, 33.426476, 24.961920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.108526, 33.637920, 25.239542>,  <29.991234, 33.764790, 25.406116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.108526, 33.637920, 25.239542>,  <30.304014, 33.426476, 24.961920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108526, 33.637920, 25.239542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458927, -0.520811, 0.719821,
		0.741982, 0.670314, 0.011935,
		-0.488722, 0.528616, 0.694058,
		29.961910, 33.796505, 25.447760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.234283, 33.586620, 27.322931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.984589, 33.736050, 27.597383>,  <34.834774, 33.825706, 27.762054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.984589, 33.736050, 27.597383>,  <35.234283, 33.586620, 27.322931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984589, 33.736050, 27.597383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759993, 0.086954, 0.644088,
		0.180950, 0.923518, -0.338190,
		-0.624234, 0.373569, 0.686133,
		34.797318, 33.848122, 27.803223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599842, 34.159309, 27.574203>,  <35.234283, 33.586620, 27.322931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599842, 34.159309, 27.574203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.297062, 34.106625, 27.830229>,  <35.115395, 34.075016, 27.983845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.297062, 34.106625, 27.830229>,  <35.599842, 34.159309, 27.574203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297062, 34.106625, 27.830229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614239, 0.190886, 0.765685,
		-0.223027, 0.972736, -0.063590,
		-0.756948, -0.131709, 0.640065,
		35.069977, 34.067112, 28.022247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691692, 34.764046, 27.980833>,  <35.599842, 34.159309, 27.574203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691692, 34.764046, 27.980833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.457863, 34.511520, 28.184685>,  <35.317566, 34.360004, 28.306995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.457863, 34.511520, 28.184685>,  <35.691692, 34.764046, 27.980833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457863, 34.511520, 28.184685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616164, 0.063213, 0.785077,
		-0.527843, 0.772949, 0.352039,
		-0.584571, -0.631311, 0.509630,
		35.282490, 34.322128, 28.337574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463955, 35.142067, 28.691532>,  <35.691692, 34.764046, 27.980833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463955, 35.142067, 28.691532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.464546, 34.742081, 28.695000>,  <35.464901, 34.502090, 28.697081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.464546, 34.742081, 28.695000>,  <35.463955, 35.142067, 28.691532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464546, 34.742081, 28.695000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668768, 0.007433, 0.743434,
		-0.743470, 0.004701, 0.668753,
		0.001476, -0.999961, 0.008670,
		35.464989, 34.442093, 28.697601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337032, 34.870373, 29.394567>,  <35.463955, 35.142067, 28.691532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337032, 34.870373, 29.394567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.529396, 34.571457, 29.211140>,  <35.644814, 34.392109, 29.101084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.529396, 34.571457, 29.211140>,  <35.337032, 34.870373, 29.394567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529396, 34.571457, 29.211140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580986, -0.120099, 0.805004,
		-0.656644, -0.653557, 0.376408,
		0.480910, -0.747288, -0.458569,
		35.673668, 34.347271, 29.073568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532970, 34.444862, 29.927626>,  <35.337032, 34.870373, 29.394567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532970, 34.444862, 29.927626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.769386, 34.321995, 29.629280>,  <35.911236, 34.248272, 29.450274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.769386, 34.321995, 29.629280>,  <35.532970, 34.444862, 29.927626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769386, 34.321995, 29.629280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805155, 0.168594, 0.568595,
		-0.048908, -0.936601, 0.346967,
		0.591044, -0.307171, -0.745864,
		35.946701, 34.229843, 29.405521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974026, 33.943375, 30.186314>,  <35.532970, 34.444862, 29.927626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974026, 33.943375, 30.186314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.162666, 34.057529, 29.852573>,  <36.275852, 34.126022, 29.652328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.162666, 34.057529, 29.852573>,  <35.974026, 33.943375, 30.186314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162666, 34.057529, 29.852573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816335, 0.216494, 0.535470,
		0.333448, -0.933641, -0.130871,
		0.471604, 0.285386, -0.834353,
		36.304146, 34.143147, 29.602268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578087, 33.524090, 30.153576>,  <35.974026, 33.943375, 30.186314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578087, 33.524090, 30.153576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.639080, 33.863903, 29.951571>,  <36.675678, 34.067791, 29.830368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.639080, 33.863903, 29.951571>,  <36.578087, 33.524090, 30.153576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639080, 33.863903, 29.951571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797501, 0.196041, 0.570579,
		0.583730, -0.489754, -0.647611,
		0.152485, 0.849535, -0.505014,
		36.684826, 34.118763, 29.800066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265244, 33.470726, 29.883432>,  <36.578087, 33.524090, 30.153576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265244, 33.470726, 29.883432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.205502, 33.865665, 29.862152>,  <37.169659, 34.102631, 29.849384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.205502, 33.865665, 29.862152>,  <37.265244, 33.470726, 29.883432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205502, 33.865665, 29.862152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834523, 0.154728, 0.528801,
		0.530344, 0.034579, -0.847077,
		-0.149352, 0.987352, -0.053202,
		37.160698, 34.161873, 29.846191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977303, 33.736885, 29.778139>,  <37.265244, 33.470726, 29.883432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977303, 33.736885, 29.778139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.762161, 34.049385, 29.904865>,  <37.633076, 34.236885, 29.980902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.762161, 34.049385, 29.904865>,  <37.977303, 33.736885, 29.778139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762161, 34.049385, 29.904865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761191, 0.288508, 0.580820,
		0.362359, 0.553551, -0.749851,
		-0.537852, 0.781245, 0.316815,
		37.600807, 34.283760, 29.999910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428394, 34.211540, 29.747303>,  <37.977303, 33.736885, 29.778139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428394, 34.211540, 29.747303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.138641, 34.354382, 29.983183>,  <37.964790, 34.440086, 30.124710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.138641, 34.354382, 29.983183>,  <38.428394, 34.211540, 29.747303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138641, 34.354382, 29.983183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689356, 0.366080, 0.625119,
		0.007353, 0.859340, -0.511352,
		-0.724386, 0.357100, 0.589699,
		37.921326, 34.461510, 30.160093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718418, 34.866032, 29.993692>,  <38.428394, 34.211540, 29.747303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718418, 34.866032, 29.993692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.439079, 34.760475, 30.259829>,  <38.271477, 34.697140, 30.419510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.439079, 34.760475, 30.259829>,  <38.718418, 34.866032, 29.993692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439079, 34.760475, 30.259829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629782, 0.215186, 0.746371,
		-0.340133, 0.940243, 0.015920,
		-0.698344, -0.263891, 0.665340,
		38.229576, 34.681309, 30.459431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511463, 35.368671, 30.472622>,  <38.718418, 34.866032, 29.993692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511463, 35.368671, 30.472622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.451172, 35.028397, 30.674065>,  <38.414997, 34.824234, 30.794930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.451172, 35.028397, 30.674065>,  <38.511463, 35.368671, 30.472622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451172, 35.028397, 30.674065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585089, 0.333858, 0.739060,
		-0.796839, 0.406051, 0.447404,
		-0.150726, -0.850683, 0.503607,
		38.405952, 34.773193, 30.825148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218513, 35.493118, 31.249125>,  <38.511463, 35.368671, 30.472622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218513, 35.493118, 31.249125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.413414, 35.148899, 31.189743>,  <38.530354, 34.942368, 31.154114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.413414, 35.148899, 31.189743>,  <38.218513, 35.493118, 31.249125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413414, 35.148899, 31.189743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353006, 0.038612, 0.934824,
		-0.798730, -0.507902, 0.322592,
		0.487255, -0.860549, -0.148452,
		38.559589, 34.890736, 31.145208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834373, 35.833076, 31.565435>,  <38.218513, 35.493118, 31.249125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834373, 35.833076, 31.565435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.953522, 36.121998, 31.815094>,  <39.025009, 36.295349, 31.964890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.953522, 36.121998, 31.815094>,  <38.834373, 35.833076, 31.565435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953522, 36.121998, 31.815094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386487, 0.689091, -0.613010,
		-0.872871, -0.058630, 0.484416,
		0.297866, 0.722299, 0.624147,
		39.042881, 36.338688, 32.002338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221272, 36.239559, 31.753839>,  <38.834373, 35.833076, 31.565435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221272, 36.239559, 31.753839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.532856, 36.477352, 31.833652>,  <38.719807, 36.620026, 31.881540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.532856, 36.477352, 31.833652>,  <38.221272, 36.239559, 31.753839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532856, 36.477352, 31.833652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406828, 0.721246, -0.560621,
		-0.477189, 0.355527, 0.803673,
		0.778962, 0.594479, 0.199532,
		38.766544, 36.655697, 31.893513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883606, 36.808075, 31.859156>,  <38.221272, 36.239559, 31.753839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883606, 36.808075, 31.859156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.253586, 36.932449, 31.771723>,  <38.475574, 37.007076, 31.719263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.253586, 36.932449, 31.771723>,  <37.883606, 36.808075, 31.859156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253586, 36.932449, 31.771723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378201, 0.695818, -0.610575,
		-0.037756, 0.647422, 0.761196,
		0.924953, 0.310938, -0.218584,
		38.531071, 37.025730, 31.706148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019157, 37.501347, 31.987679>,  <37.883606, 36.808075, 31.859156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019157, 37.501347, 31.987679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.290287, 37.452763, 31.697630>,  <38.452965, 37.423611, 31.523600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.290287, 37.452763, 31.697630>,  <38.019157, 37.501347, 31.987679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290287, 37.452763, 31.697630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344110, 0.819159, -0.458876,
		0.649728, 0.560558, 0.513447,
		0.677822, -0.121462, -0.725124,
		38.493633, 37.416325, 31.480093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329056, 38.221703, 31.776375>,  <38.019157, 37.501347, 31.987679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329056, 38.221703, 31.776375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.391430, 37.967171, 31.474178>,  <38.428856, 37.814453, 31.292860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.391430, 37.967171, 31.474178>,  <38.329056, 38.221703, 31.776375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391430, 37.967171, 31.474178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425719, 0.646870, -0.632711,
		0.891317, 0.420291, -0.170026,
		0.155938, -0.636329, -0.755492,
		38.438210, 37.776272, 31.247530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422882, 38.655445, 31.308702>,  <38.329056, 38.221703, 31.776375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422882, 38.655445, 31.308702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.373547, 38.329075, 31.082764>,  <38.343945, 38.133251, 30.947201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.373547, 38.329075, 31.082764>,  <38.422882, 38.655445, 31.308702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373547, 38.329075, 31.082764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302722, 0.572998, -0.761599,
		0.945065, 0.077057, -0.317672,
		-0.123339, -0.815926, -0.564846,
		38.336544, 38.084297, 30.913309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605152, 38.865028, 30.631817>,  <38.422882, 38.655445, 31.308702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605152, 38.865028, 30.631817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.394554, 38.533714, 30.555138>,  <38.268196, 38.334927, 30.509130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.394554, 38.533714, 30.555138>,  <38.605152, 38.865028, 30.631817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394554, 38.533714, 30.555138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356010, 0.419548, -0.835007,
		0.772050, -0.371380, -0.515767,
		-0.526494, -0.828285, -0.191697,
		38.236607, 38.285229, 30.497629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616276, 38.844151, 29.949163>,  <38.605152, 38.865028, 30.631817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616276, 38.844151, 29.949163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.300446, 38.630169, 30.069427>,  <38.110947, 38.501778, 30.141586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.300446, 38.630169, 30.069427>,  <38.616276, 38.844151, 29.949163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300446, 38.630169, 30.069427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536063, 0.362814, -0.762235,
		0.298678, -0.763014, -0.573238,
		-0.789575, -0.534955, 0.300659,
		38.063572, 38.469681, 30.159624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321877, 38.551941, 29.305073>,  <38.616276, 38.844151, 29.949163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321877, 38.551941, 29.305073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.022423, 38.518425, 29.568138>,  <37.842751, 38.498314, 29.725977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.022423, 38.518425, 29.568138>,  <38.321877, 38.551941, 29.305073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022423, 38.518425, 29.568138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662888, 0.111212, -0.740413,
		-0.011100, -0.990258, -0.138801,
		-0.748636, -0.083791, 0.657664,
		37.797832, 38.493286, 29.765438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792484, 38.086815, 28.956726>,  <38.321877, 38.551941, 29.305073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792484, 38.086815, 28.956726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.599468, 38.301083, 29.233913>,  <37.483658, 38.429646, 29.400227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.599468, 38.301083, 29.233913>,  <37.792484, 38.086815, 28.956726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599468, 38.301083, 29.233913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779436, 0.098277, -0.618726,
		-0.399538, -0.838686, 0.370101,
		-0.482544, 0.535674, 0.692968,
		37.454704, 38.461784, 29.441803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078781, 37.870846, 29.036674>,  <37.792484, 38.086815, 28.956726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078781, 37.870846, 29.036674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.094692, 38.251053, 29.159920>,  <37.104240, 38.479176, 29.233868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.094692, 38.251053, 29.159920>,  <37.078781, 37.870846, 29.036674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094692, 38.251053, 29.159920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766956, 0.226693, -0.600325,
		-0.640466, -0.212429, 0.738022,
		0.039778, 0.950518, 0.308113,
		37.106625, 38.536209, 29.252354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353645, 38.075722, 29.264210>,  <37.078781, 37.870846, 29.036674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353645, 38.075722, 29.264210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.531162, 38.431461, 29.220200>,  <36.637672, 38.644905, 29.193792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.531162, 38.431461, 29.220200>,  <36.353645, 38.075722, 29.264210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531162, 38.431461, 29.220200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799937, 0.337811, -0.495968,
		-0.403922, 0.308119, 0.861342,
		0.443788, 0.889352, -0.110027,
		36.664299, 38.698265, 29.187191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837887, 38.602711, 29.515707>,  <36.353645, 38.075722, 29.264210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837887, 38.602711, 29.515707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.110451, 38.776955, 29.280449>,  <36.273991, 38.881500, 29.139294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.110451, 38.776955, 29.280449>,  <35.837887, 38.602711, 29.515707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110451, 38.776955, 29.280449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731831, 0.394695, -0.555552,
		-0.009868, 0.808985, 0.587746,
		0.681414, 0.435613, -0.588146,
		36.314877, 38.907639, 29.104006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564945, 39.211979, 29.372154>,  <35.837887, 38.602711, 29.515707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564945, 39.211979, 29.372154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.823650, 39.136463, 29.076572>,  <35.978874, 39.091156, 28.899223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.823650, 39.136463, 29.076572>,  <35.564945, 39.211979, 29.372154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823650, 39.136463, 29.076572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718774, 0.173143, -0.673339,
		0.255062, 0.966634, -0.023712,
		0.646767, -0.188786, -0.738954,
		36.017681, 39.079826, 28.854887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096455, 39.845512, 29.545311>,  <35.564945, 39.211979, 29.372154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096455, 39.845512, 29.545311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.726612, 39.824860, 29.696272>,  <34.504707, 39.812469, 29.786848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.726612, 39.824860, 29.696272>,  <35.096455, 39.845512, 29.545311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726612, 39.824860, 29.696272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354493, -0.479215, 0.802925,
		0.139403, 0.876178, 0.461388,
		-0.924609, -0.051629, 0.377402,
		34.449230, 39.809372, 29.809492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090675, 40.212486, 30.228109>,  <35.096455, 39.845512, 29.545311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090675, 40.212486, 30.228109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.785519, 39.953892, 30.225029>,  <34.602425, 39.798737, 30.223181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.785519, 39.953892, 30.225029>,  <35.090675, 40.212486, 30.228109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785519, 39.953892, 30.225029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372746, -0.449533, 0.811776,
		-0.528264, 0.616423, 0.583918,
		-0.762888, -0.646485, -0.007703,
		34.556652, 39.759945, 30.222717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049305, 40.070881, 30.866850>,  <35.090675, 40.212486, 30.228109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049305, 40.070881, 30.866850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.822800, 39.783981, 30.704418>,  <34.686897, 39.611843, 30.606960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.822800, 39.783981, 30.704418>,  <35.049305, 40.070881, 30.866850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822800, 39.783981, 30.704418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224367, -0.608216, 0.761402,
		-0.793096, 0.340046, 0.505339,
		-0.566267, -0.717246, -0.406078,
		34.652920, 39.568806, 30.582594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699539, 39.837048, 31.426853>,  <35.049305, 40.070881, 30.866850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699539, 39.837048, 31.426853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.646263, 39.528328, 31.178150>,  <34.614296, 39.343094, 31.028929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.646263, 39.528328, 31.178150>,  <34.699539, 39.837048, 31.426853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646263, 39.528328, 31.178150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026208, -0.624385, 0.780677,
		-0.990744, 0.120274, 0.062935,
		-0.133191, -0.771801, -0.621758,
		34.606304, 39.296787, 30.991623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068192, 39.547649, 31.736256>,  <34.699539, 39.837048, 31.426853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068192, 39.547649, 31.736256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.271160, 39.276276, 31.523745>,  <34.392941, 39.113453, 31.396238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.271160, 39.276276, 31.523745>,  <34.068192, 39.547649, 31.736256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271160, 39.276276, 31.523745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093929, -0.569324, 0.816729,
		-0.856563, -0.464329, -0.225163,
		0.507422, -0.678431, -0.531276,
		34.423386, 39.072746, 31.364361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823803, 38.907040, 31.941977>,  <34.068192, 39.547649, 31.736256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823803, 38.907040, 31.941977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.154755, 38.789452, 31.750551>,  <34.353325, 38.718899, 31.635696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.154755, 38.789452, 31.750551>,  <33.823803, 38.907040, 31.941977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154755, 38.789452, 31.750551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242087, -0.582195, 0.776172,
		-0.506788, -0.758044, -0.410531,
		0.827381, -0.293971, -0.478563,
		34.402969, 38.701260, 31.606983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792194, 38.191349, 31.998283>,  <33.823803, 38.907040, 31.941977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792194, 38.191349, 31.998283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.163475, 38.334095, 31.956175>,  <34.386246, 38.419743, 31.930910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.163475, 38.334095, 31.956175>,  <33.792194, 38.191349, 31.998283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163475, 38.334095, 31.956175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258160, -0.413974, 0.872914,
		0.267932, -0.837421, -0.476381,
		0.928206, 0.356864, -0.105272,
		34.441936, 38.441154, 31.924593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101063, 37.629425, 31.996952>,  <33.792194, 38.191349, 31.998283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101063, 37.629425, 31.996952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.361313, 37.921131, 32.081661>,  <34.517464, 38.096157, 32.132488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.361313, 37.921131, 32.081661>,  <34.101063, 37.629425, 31.996952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361313, 37.921131, 32.081661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169809, -0.411523, 0.895441,
		0.740167, -0.546639, -0.391585,
		0.650629, 0.729270, 0.211772,
		34.556503, 38.139912, 32.145191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682159, 37.264671, 32.375252>,  <34.101063, 37.629425, 31.996952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682159, 37.264671, 32.375252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.693062, 37.654270, 32.465218>,  <34.699604, 37.888031, 32.519199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.693062, 37.654270, 32.465218>,  <34.682159, 37.264671, 32.375252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693062, 37.654270, 32.465218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167345, -0.226271, 0.959582,
		0.985521, 0.011484, -0.169161,
		0.027256, 0.973997, 0.224916,
		34.701241, 37.946468, 32.532692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015293, 37.302528, 33.016079>,  <34.682159, 37.264671, 32.375252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015293, 37.302528, 33.016079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.853760, 37.667995, 32.997646>,  <34.756840, 37.887276, 32.986588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.853760, 37.667995, 32.997646>,  <35.015293, 37.302528, 33.016079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853760, 37.667995, 32.997646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012824, 0.044709, 0.998918,
		0.914743, 0.403986, -0.006338,
		-0.403832, 0.913672, -0.046079,
		34.732609, 37.942097, 32.983822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476059, 37.689789, 33.412560>,  <35.015293, 37.302528, 33.016079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476059, 37.689789, 33.412560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.130196, 37.888645, 33.383675>,  <34.922676, 38.007957, 33.366344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.130196, 37.888645, 33.383675>,  <35.476059, 37.689789, 33.412560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130196, 37.888645, 33.383675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029967, 0.092444, 0.995267,
		0.501460, 0.862733, -0.065035,
		-0.864661, 0.497138, -0.072210,
		34.870796, 38.037788, 33.362011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511238, 38.384472, 33.780094>,  <35.476059, 37.689789, 33.412560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511238, 38.384472, 33.780094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.129608, 38.264793, 33.774155>,  <34.900631, 38.192986, 33.770592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.129608, 38.264793, 33.774155>,  <35.511238, 38.384472, 33.780094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129608, 38.264793, 33.774155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057059, 0.132840, 0.989494,
		-0.294078, 0.944900, -0.143811,
		-0.954077, -0.299194, -0.014849,
		34.843384, 38.175034, 33.769699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.953709, 41.763985, 26.655577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630455, 41.529179, 26.674873>,  <33.436501, 41.388294, 26.686451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630455, 41.529179, 26.674873>,  <33.953709, 41.763985, 26.655577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630455, 41.529179, 26.674873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141045, -0.113350, 0.983493,
		-0.571855, 0.801603, 0.174398,
		-0.808139, -0.587013, 0.048243,
		33.388012, 41.353073, 26.689346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576920, 42.008327, 27.277712>,  <33.953709, 41.763985, 26.655577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576920, 42.008327, 27.277712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471573, 41.627728, 27.214117>,  <33.408363, 41.399368, 27.175961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471573, 41.627728, 27.214117>,  <33.576920, 42.008327, 27.277712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471573, 41.627728, 27.214117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224452, -0.220723, 0.949159,
		-0.938220, 0.214295, 0.271699,
		-0.263371, -0.951504, -0.158988,
		33.392563, 41.342278, 27.166420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133377, 41.853043, 27.821264>,  <33.576920, 42.008327, 27.277712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133377, 41.853043, 27.821264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250805, 41.492275, 27.694548>,  <33.321262, 41.275814, 27.618519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250805, 41.492275, 27.694548>,  <33.133377, 41.853043, 27.821264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250805, 41.492275, 27.694548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120743, -0.293752, 0.948225,
		-0.948281, -0.316621, 0.022664,
		0.293571, -0.901921, -0.316789,
		33.338875, 41.221699, 27.599510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730423, 41.408550, 28.207850>,  <33.133377, 41.853043, 27.821264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730423, 41.408550, 28.207850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053913, 41.203510, 28.092468>,  <33.248009, 41.080486, 28.023239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053913, 41.203510, 28.092468>,  <32.730423, 41.408550, 28.207850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053913, 41.203510, 28.092468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115997, -0.341784, 0.932592,
		-0.576635, -0.787670, -0.216949,
		0.808725, -0.512600, -0.288453,
		33.296532, 41.049732, 28.005932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637783, 40.673668, 28.387205>,  <32.730423, 41.408550, 28.207850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637783, 40.673668, 28.387205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033901, 40.715988, 28.351158>,  <33.271572, 40.741383, 28.329531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033901, 40.715988, 28.351158>,  <32.637783, 40.673668, 28.387205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033901, 40.715988, 28.351158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128377, -0.447993, 0.884772,
		0.053241, -0.887754, -0.457228,
		0.990295, 0.105804, -0.090116,
		33.330990, 40.747730, 28.324123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816376, 40.045238, 28.594608>,  <32.637783, 40.673668, 28.387205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816376, 40.045238, 28.594608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146561, 40.269730, 28.618715>,  <33.344673, 40.404423, 28.633181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146561, 40.269730, 28.618715>,  <32.816376, 40.045238, 28.594608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146561, 40.269730, 28.618715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309750, -0.539652, 0.782835,
		0.471874, -0.627534, -0.619303,
		0.825463, 0.561228, 0.060269,
		33.394199, 40.438099, 28.636795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329697, 39.579193, 28.731924>,  <32.816376, 40.045238, 28.594608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329697, 39.579193, 28.731924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478737, 39.938202, 28.826271>,  <33.568161, 40.153606, 28.882879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478737, 39.938202, 28.826271>,  <33.329697, 39.579193, 28.731924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478737, 39.938202, 28.826271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576054, -0.422966, 0.699473,
		0.727553, -0.124749, -0.674614,
		0.372597, 0.897518, 0.235868,
		33.590515, 40.207458, 28.897032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028961, 39.517166, 28.717499>,  <33.329697, 39.579193, 28.731924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028961, 39.517166, 28.717499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939632, 39.826126, 28.955330>,  <33.886036, 40.011501, 29.098028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939632, 39.826126, 28.955330>,  <34.028961, 39.517166, 28.717499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939632, 39.826126, 28.955330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559053, -0.398189, 0.727259,
		0.798490, 0.494814, -0.342888,
		-0.223324, 0.772402, 0.594577,
		33.872635, 40.057846, 29.133703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654976, 39.704121, 28.990276>,  <34.028961, 39.517166, 28.717499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654976, 39.704121, 28.990276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381641, 39.848003, 29.244415>,  <34.217640, 39.934334, 29.396898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381641, 39.848003, 29.244415>,  <34.654976, 39.704121, 28.990276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381641, 39.848003, 29.244415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504586, -0.396275, 0.767046,
		0.527682, 0.844737, 0.089287,
		-0.683334, 0.359703, 0.635349,
		34.176640, 39.955914, 29.435020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381660, 39.665646, 28.729145>,  <34.654976, 39.704121, 28.990276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381660, 39.665646, 28.729145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609085, 39.380245, 28.565361>,  <35.745541, 39.209003, 28.467091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609085, 39.380245, 28.565361>,  <35.381660, 39.665646, 28.729145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609085, 39.380245, 28.565361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672568, -0.116555, -0.730799,
		0.473701, 0.690893, -0.546145,
		0.568560, -0.713500, -0.409460,
		35.779652, 39.166195, 28.442524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405308, 39.885700, 27.986628>,  <35.381660, 39.665646, 28.729145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405308, 39.885700, 27.986628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489029, 39.495037, 28.005978>,  <35.539261, 39.260639, 28.017588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489029, 39.495037, 28.005978>,  <35.405308, 39.885700, 27.986628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489029, 39.495037, 28.005978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593959, -0.166277, -0.787124,
		0.776791, 0.136016, -0.614894,
		0.209305, -0.976653, 0.048375,
		35.551819, 39.202042, 28.020491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730038, 39.782772, 27.333611>,  <35.405308, 39.885700, 27.986628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730038, 39.782772, 27.333611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643242, 39.408772, 27.445816>,  <35.591164, 39.184372, 27.513140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643242, 39.408772, 27.445816>,  <35.730038, 39.782772, 27.333611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643242, 39.408772, 27.445816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336883, -0.197980, -0.920496,
		0.916203, -0.294234, -0.272028,
		-0.216985, -0.935003, 0.280512,
		35.578148, 39.128269, 27.529970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010815, 39.327358, 26.835150>,  <35.730038, 39.782772, 27.333611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010815, 39.327358, 26.835150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714237, 39.125465, 27.012016>,  <35.536293, 39.004330, 27.118135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714237, 39.125465, 27.012016>,  <36.010815, 39.327358, 26.835150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714237, 39.125465, 27.012016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446664, -0.120509, -0.886549,
		0.500758, -0.854821, -0.136097,
		-0.741440, -0.504736, 0.442164,
		35.491806, 38.974045, 27.144665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901390, 38.804268, 26.424641>,  <36.010815, 39.327358, 26.835150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901390, 38.804268, 26.424641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561413, 38.823231, 26.634535>,  <35.357426, 38.834610, 26.760471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561413, 38.823231, 26.634535>,  <35.901390, 38.804268, 26.424641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561413, 38.823231, 26.634535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515505, -0.280598, -0.809641,
		0.108855, -0.958654, 0.262933,
		-0.849944, 0.047410, 0.524735,
		35.306431, 38.837456, 26.791956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647316, 38.166317, 26.545855>,  <35.901390, 38.804268, 26.424641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647316, 38.166317, 26.545855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315826, 38.388100, 26.576315>,  <35.116932, 38.521168, 26.594591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315826, 38.388100, 26.576315>,  <35.647316, 38.166317, 26.545855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315826, 38.388100, 26.576315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415305, -0.518033, -0.747773,
		-0.375157, -0.651322, 0.659573,
		-0.828721, 0.554456, 0.076153,
		35.067211, 38.554436, 26.599161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136501, 37.753468, 26.435194>,  <35.647316, 38.166317, 26.545855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136501, 37.753468, 26.435194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954006, 38.103184, 26.368912>,  <34.844509, 38.313015, 26.329142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954006, 38.103184, 26.368912>,  <35.136501, 37.753468, 26.435194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954006, 38.103184, 26.368912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556310, -0.425578, -0.713725,
		-0.694524, -0.233447, 0.680543,
		-0.456241, 0.874292, -0.165705,
		34.817135, 38.365471, 26.319201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469067, 37.527725, 26.297802>,  <35.136501, 37.753468, 26.435194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469067, 37.527725, 26.297802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498302, 37.903553, 26.164021>,  <34.515842, 38.129051, 26.083752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498302, 37.903553, 26.164021>,  <34.469067, 37.527725, 26.297802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498302, 37.903553, 26.164021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462474, -0.265187, -0.846046,
		-0.883615, 0.216515, 0.415145,
		0.073090, 0.939573, -0.334456,
		34.520229, 38.185425, 26.063684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786121, 37.695686, 26.074951>,  <34.469067, 37.527725, 26.297802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786121, 37.695686, 26.074951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050270, 37.945683, 25.908438>,  <34.208759, 38.095680, 25.808529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050270, 37.945683, 25.908438>,  <33.786121, 37.695686, 26.074951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050270, 37.945683, 25.908438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418226, -0.154315, -0.895139,
		-0.623691, 0.765229, 0.159481,
		0.660376, 0.624989, -0.416283,
		34.248383, 38.133179, 25.783552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349247, 38.092400, 25.682470>,  <33.786121, 37.695686, 26.074951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349247, 38.092400, 25.682470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700409, 38.160976, 25.503632>,  <33.911106, 38.202122, 25.396328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700409, 38.160976, 25.503632>,  <33.349247, 38.092400, 25.682470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700409, 38.160976, 25.503632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446472, -0.044374, -0.893697,
		-0.173055, 0.984195, 0.037588,
		0.877903, 0.171441, -0.447095,
		33.963779, 38.212410, 25.369503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244984, 38.588413, 25.222113>,  <33.349247, 38.092400, 25.682470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244984, 38.588413, 25.222113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583244, 38.423950, 25.085985>,  <33.786201, 38.325272, 25.004309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583244, 38.423950, 25.085985>,  <33.244984, 38.588413, 25.222113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583244, 38.423950, 25.085985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426405, -0.136958, -0.894104,
		0.321008, 0.901217, -0.291139,
		0.845655, -0.411158, -0.340319,
		33.836941, 38.300602, 24.983891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425114, 38.931622, 24.553391>,  <33.244984, 38.588413, 25.222113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425114, 38.931622, 24.553391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633320, 38.590199, 24.544352>,  <33.758244, 38.385345, 24.538929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633320, 38.590199, 24.544352>,  <33.425114, 38.931622, 24.553391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633320, 38.590199, 24.544352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310873, -0.164795, -0.936056,
		0.795250, 0.494256, -0.351125,
		0.520515, -0.853554, -0.022598,
		33.789474, 38.334133, 24.537573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019501, 38.930672, 24.072786>,  <33.425114, 38.931622, 24.553391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019501, 38.930672, 24.072786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911079, 38.547493, 24.110441>,  <33.846027, 38.317585, 24.133034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911079, 38.547493, 24.110441>,  <34.019501, 38.930672, 24.072786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911079, 38.547493, 24.110441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247858, -0.025037, -0.968473,
		0.930106, -0.285840, -0.230649,
		-0.271054, -0.957950, 0.094135,
		33.829762, 38.260109, 24.138681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260017, 38.598930, 23.464682>,  <34.019501, 38.930672, 24.072786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260017, 38.598930, 23.464682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989269, 38.345158, 23.613998>,  <33.826820, 38.192894, 23.703588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989269, 38.345158, 23.613998>,  <34.260017, 38.598930, 23.464682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989269, 38.345158, 23.613998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382245, -0.130448, -0.914807,
		0.629079, -0.761891, -0.154212,
		-0.676867, -0.634433, 0.373291,
		33.786209, 38.154827, 23.725986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.726538, 37.221287, 26.650579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.060486, 37.201145, 26.431326>,  <28.260855, 37.189060, 26.299774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.060486, 37.201145, 26.431326>,  <27.726538, 37.221287, 26.650579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060486, 37.201145, 26.431326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345185, -0.727776, 0.592612,
		-0.428761, -0.683964, -0.590219,
		0.834872, -0.050354, -0.548136,
		28.310947, 37.186039, 26.266886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876963, 36.485279, 26.509214>,  <27.726538, 37.221287, 26.650579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876963, 36.485279, 26.509214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.214733, 36.699242, 26.497742>,  <28.417395, 36.827618, 26.490858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.214733, 36.699242, 26.497742>,  <27.876963, 36.485279, 26.509214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214733, 36.699242, 26.497742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439887, -0.661880, 0.606972,
		0.305691, -0.525158, -0.794206,
		0.844425, 0.534907, -0.028680,
		28.468060, 36.859715, 26.489138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482323, 36.083817, 26.272198>,  <27.876963, 36.485279, 26.509214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482323, 36.083817, 26.272198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.651354, 36.402874, 26.444336>,  <28.752773, 36.594307, 26.547619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.651354, 36.402874, 26.444336>,  <28.482323, 36.083817, 26.272198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651354, 36.402874, 26.444336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514982, -0.602045, 0.610193,
		0.745802, -0.036234, -0.665181,
		0.422579, 0.797639, 0.430347,
		28.778128, 36.642166, 26.573441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213184, 35.937248, 26.259356>,  <28.482323, 36.083817, 26.272198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213184, 35.937248, 26.259356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.211882, 36.233028, 26.528639>,  <29.211100, 36.410496, 26.690208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.211882, 36.233028, 26.528639>,  <29.213184, 35.937248, 26.259356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211882, 36.233028, 26.528639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607118, -0.533477, 0.588905,
		0.794605, 0.410635, -0.447194,
		-0.003257, 0.739446, 0.673208,
		29.210905, 36.454861, 26.730600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907063, 36.151436, 26.497972>,  <29.213184, 35.937248, 26.259356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907063, 36.151436, 26.497972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.676039, 36.275009, 26.800228>,  <29.537424, 36.349152, 26.981581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.676039, 36.275009, 26.800228>,  <29.907063, 36.151436, 26.497972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676039, 36.275009, 26.800228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646658, -0.391823, 0.654452,
		0.498256, 0.866624, 0.026528,
		-0.577558, 0.308930, 0.755638,
		29.502771, 36.367687, 27.026920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315468, 36.522747, 27.044228>,  <29.907063, 36.151436, 26.497972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315468, 36.522747, 27.044228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.986046, 36.413879, 27.243298>,  <29.788393, 36.348560, 27.362740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.986046, 36.413879, 27.243298>,  <30.315468, 36.522747, 27.044228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986046, 36.413879, 27.243298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547134, -0.149663, 0.823556,
		-0.149663, 0.950539, 0.272169,
		-0.823556, -0.272169, 0.497674,
		29.738979, 36.332230, 27.392599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387781, 36.855618, 27.714911>,  <30.315468, 36.522747, 27.044228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387781, 36.855618, 27.714911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.100042, 36.589016, 27.793211>,  <29.927399, 36.429054, 27.840191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.100042, 36.589016, 27.793211>,  <30.387781, 36.855618, 27.714911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100042, 36.589016, 27.793211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548362, -0.371855, 0.749015,
		-0.426428, 0.646143, 0.632976,
		-0.719346, -0.666501, 0.195751,
		29.884239, 36.389065, 27.851936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142426, 36.920597, 28.402929>,  <30.387781, 36.855618, 27.714911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142426, 36.920597, 28.402929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.057306, 36.542892, 28.302458>,  <30.006235, 36.316269, 28.242174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.057306, 36.542892, 28.302458>,  <30.142426, 36.920597, 28.402929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057306, 36.542892, 28.302458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499332, -0.326056, 0.802718,
		-0.839872, 0.045394, 0.540882,
		-0.212796, -0.944260, -0.251179,
		29.993467, 36.259613, 28.227104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004211, 36.655899, 29.026690>,  <30.142426, 36.920597, 28.402929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004211, 36.655899, 29.026690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.057587, 36.326580, 28.806007>,  <30.089613, 36.128990, 28.673599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.057587, 36.326580, 28.806007>,  <30.004211, 36.655899, 29.026690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057587, 36.326580, 28.806007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312295, -0.493391, 0.811811,
		-0.940567, -0.280622, 0.191273,
		0.133440, -0.823296, -0.551704,
		30.097618, 36.079590, 28.640495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844437, 36.064548, 29.390902>,  <30.004211, 36.655899, 29.026690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844437, 36.064548, 29.390902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.035908, 35.873932, 29.095936>,  <30.150791, 35.759563, 28.918957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.035908, 35.873932, 29.095936>,  <29.844437, 36.064548, 29.390902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035908, 35.873932, 29.095936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349479, -0.667069, 0.657939,
		-0.805439, -0.572651, -0.152770,
		0.478678, -0.476540, -0.737413,
		30.179510, 35.730968, 28.874712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732019, 35.238235, 29.330574>,  <29.844437, 36.064548, 29.390902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732019, 35.238235, 29.330574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.082432, 35.330723, 29.161291>,  <30.292679, 35.386215, 29.059721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.082432, 35.330723, 29.161291>,  <29.732019, 35.238235, 29.330574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082432, 35.330723, 29.161291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459753, -0.665334, 0.588181,
		-0.145580, -0.709838, -0.689156,
		0.876033, 0.231214, -0.423209,
		30.345242, 35.400085, 29.034328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949070, 34.588470, 29.363031>,  <29.732019, 35.238235, 29.330574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949070, 34.588470, 29.363031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.258957, 34.836784, 29.314959>,  <30.444889, 34.985771, 29.286116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.258957, 34.836784, 29.314959>,  <29.949070, 34.588470, 29.363031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258957, 34.836784, 29.314959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531192, -0.535856, 0.656272,
		0.343004, -0.572263, -0.744891,
		0.774715, 0.620784, -0.120180,
		30.491371, 35.023018, 29.278904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529015, 34.162621, 29.337660>,  <29.949070, 34.588470, 29.363031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529015, 34.162621, 29.337660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.683958, 34.523643, 29.412868>,  <30.776924, 34.740257, 29.457994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.683958, 34.523643, 29.412868>,  <30.529015, 34.162621, 29.337660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683958, 34.523643, 29.412868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606610, -0.403094, 0.685230,
		0.694247, -0.151371, -0.703639,
		0.387357, 0.902553, 0.188023,
		30.800165, 34.794411, 29.469276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066051, 33.931446, 29.595106>,  <30.529015, 34.162621, 29.337660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066051, 33.931446, 29.595106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.064909, 34.319431, 29.692400>,  <31.064224, 34.552223, 29.750776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.064909, 34.319431, 29.692400>,  <31.066051, 33.931446, 29.595106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064909, 34.319431, 29.692400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414512, -0.220207, 0.883000,
		0.910039, 0.103345, -0.401432,
		-0.002855, 0.969963, 0.243235,
		31.064053, 34.610420, 29.765371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610592, 33.561111, 29.302822>,  <31.066051, 33.931446, 29.595106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610592, 33.561111, 29.302822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.850355, 33.318115, 29.094334>,  <31.994213, 33.172318, 28.969240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.850355, 33.318115, 29.094334>,  <31.610592, 33.561111, 29.302822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850355, 33.318115, 29.094334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560328, 0.146563, -0.815200,
		0.571616, 0.780691, -0.252541,
		0.599407, -0.607487, -0.521220,
		32.030178, 33.135868, 28.937967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846655, 33.975330, 28.729263>,  <31.610592, 33.561111, 29.302822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846655, 33.975330, 28.729263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.863194, 33.582310, 28.656733>,  <31.873116, 33.346497, 28.613214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.863194, 33.582310, 28.656733>,  <31.846655, 33.975330, 28.729263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863194, 33.582310, 28.656733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650878, 0.111206, -0.750993,
		0.758055, 0.149071, -0.634925,
		0.041344, -0.982554, -0.181328,
		31.875597, 33.287544, 28.602335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964811, 33.823643, 28.116602>,  <31.846655, 33.975330, 28.729263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964811, 33.823643, 28.116602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.811512, 33.463264, 28.198013>,  <31.719532, 33.247040, 28.246861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.811512, 33.463264, 28.198013>,  <31.964811, 33.823643, 28.116602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811512, 33.463264, 28.198013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425836, -0.023185, -0.904503,
		0.819624, -0.433319, -0.374768,
		-0.383249, -0.900942, 0.203526,
		31.696537, 33.192982, 28.259071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968216, 33.461540, 27.485418>,  <31.964811, 33.823643, 28.116602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968216, 33.461540, 27.485418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.687592, 33.258533, 27.685514>,  <31.519217, 33.136730, 27.805573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.687592, 33.258533, 27.685514>,  <31.968216, 33.461540, 27.485418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687592, 33.258533, 27.685514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574835, -0.011835, -0.818184,
		0.421165, -0.861559, -0.283437,
		-0.701559, -0.507520, 0.500239,
		31.477123, 33.106277, 27.835587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695137, 33.078583, 27.006901>,  <31.968216, 33.461540, 27.485418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695137, 33.078583, 27.006901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.399984, 33.072224, 27.276798>,  <31.222893, 33.068409, 27.438738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.399984, 33.072224, 27.276798>,  <31.695137, 33.078583, 27.006901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399984, 33.072224, 27.276798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668254, 0.157497, -0.727071,
		-0.094710, -0.987391, -0.126839,
		-0.737880, -0.015900, 0.674745,
		31.178619, 33.067455, 27.479221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163521, 32.569511, 26.864119>,  <31.695137, 33.078583, 27.006901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163521, 32.569511, 26.864119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.976967, 32.847771, 27.082680>,  <30.865034, 33.014729, 27.213818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.976967, 32.847771, 27.082680>,  <31.163521, 32.569511, 26.864119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976967, 32.847771, 27.082680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611176, 0.193143, -0.767567,
		-0.639493, -0.691929, 0.335086,
		-0.466383, 0.695651, 0.546404,
		30.837051, 33.056465, 27.246601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472975, 32.396027, 26.700548>,  <31.163521, 32.569511, 26.864119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472975, 32.396027, 26.700548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.466179, 32.764778, 26.855394>,  <30.462101, 32.986027, 26.948301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.466179, 32.764778, 26.855394>,  <30.472975, 32.396027, 26.700548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466179, 32.764778, 26.855394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547985, 0.315257, -0.774807,
		-0.836316, -0.225298, 0.499817,
		-0.016991, 0.921875, 0.387114,
		30.461081, 33.041340, 26.971529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753496, 32.692062, 26.614723>,  <30.472975, 32.396027, 26.700548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753496, 32.692062, 26.614723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.944370, 33.038589, 26.673771>,  <30.058895, 33.246506, 26.709200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.944370, 33.038589, 26.673771>,  <29.753496, 32.692062, 26.614723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944370, 33.038589, 26.673771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530461, 0.417870, -0.737560,
		-0.700646, 0.273646, 0.658948,
		0.477186, 0.866315, 0.147620,
		30.087526, 33.298485, 26.718058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234735, 33.233494, 26.528835>,  <29.753496, 32.692062, 26.614723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234735, 33.233494, 26.528835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.595592, 33.394005, 26.465446>,  <29.812107, 33.490311, 26.427414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.595592, 33.394005, 26.465446>,  <29.234735, 33.233494, 26.528835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595592, 33.394005, 26.465446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368166, 0.524536, -0.767669,
		-0.224925, 0.750891, 0.620943,
		0.902143, 0.401279, -0.158471,
		29.866236, 33.514389, 26.417906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006292, 33.881012, 26.368176>,  <29.234735, 33.233494, 26.528835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006292, 33.881012, 26.368176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.373953, 33.858040, 26.212299>,  <29.594549, 33.844257, 26.118773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.373953, 33.858040, 26.212299>,  <29.006292, 33.881012, 26.368176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373953, 33.858040, 26.212299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311241, 0.500481, -0.807866,
		0.241427, 0.863841, 0.442145,
		0.919153, -0.057427, -0.389693,
		29.649698, 33.840813, 26.095392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131842, 34.593422, 26.109402>,  <29.006292, 33.881012, 26.368176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131842, 34.593422, 26.109402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.390846, 34.348309, 25.928190>,  <29.546249, 34.201241, 25.819464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.390846, 34.348309, 25.928190>,  <29.131842, 34.593422, 26.109402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390846, 34.348309, 25.928190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219086, 0.419692, -0.880829,
		0.729885, 0.669597, 0.137503,
		0.647510, -0.612779, -0.453026,
		29.585098, 34.164474, 25.792282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512789, 35.027439, 25.844645>,  <29.131842, 34.593422, 26.109402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512789, 35.027439, 25.844645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.581379, 34.698776, 25.627214>,  <29.622534, 34.501579, 25.496756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.581379, 34.698776, 25.627214>,  <29.512789, 35.027439, 25.844645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581379, 34.698776, 25.627214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332879, 0.470977, -0.816928,
		0.927247, 0.321030, -0.192751,
		0.171477, -0.821657, -0.543576,
		29.632822, 34.452278, 25.464142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055155, 35.130379, 25.355614>,  <29.512789, 35.027439, 25.844645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055155, 35.130379, 25.355614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.833107, 34.824787, 25.224049>,  <29.699879, 34.641434, 25.145109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.833107, 34.824787, 25.224049>,  <30.055155, 35.130379, 25.355614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833107, 34.824787, 25.224049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331223, 0.565772, -0.755112,
		0.762976, -0.310235, -0.567117,
		-0.555121, -0.763974, -0.328913,
		29.666571, 34.595596, 25.125374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137478, 35.053711, 24.622963>,  <30.055155, 35.130379, 25.355614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137478, 35.053711, 24.622963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.797480, 34.851330, 24.681641>,  <29.593481, 34.729900, 24.716846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.797480, 34.851330, 24.681641>,  <30.137478, 35.053711, 24.622963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797480, 34.851330, 24.681641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377004, 0.389768, -0.840208,
		0.367918, -0.769484, -0.522045,
		-0.850003, -0.505940, 0.146696,
		29.542480, 34.699543, 24.725649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751463, 34.774605, 24.183908>,  <30.137478, 35.053711, 24.622963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751463, 34.774605, 24.183908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.060549, 34.855007, 23.943073>,  <31.246000, 34.903248, 23.798573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.060549, 34.855007, 23.943073>,  <30.751463, 34.774605, 24.183908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060549, 34.855007, 23.943073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621252, -0.434099, 0.652384,
		-0.130235, -0.878155, -0.460308,
		0.772713, 0.201004, -0.602090,
		31.292362, 34.915310, 23.762445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048738, 34.165604, 24.029217>,  <30.751463, 34.774605, 24.183908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048738, 34.165604, 24.029217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.328327, 34.447800, 23.982359>,  <31.496080, 34.617119, 23.954245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.328327, 34.447800, 23.982359>,  <31.048738, 34.165604, 24.029217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328327, 34.447800, 23.982359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622653, -0.519776, 0.584924,
		0.351768, -0.481786, -0.802584,
		0.698972, 0.705489, -0.117145,
		31.538019, 34.659447, 23.947216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618242, 33.835571, 24.095469>,  <31.048738, 34.165604, 24.029217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618242, 33.835571, 24.095469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.778437, 34.200294, 24.131710>,  <31.874554, 34.419128, 24.153454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.778437, 34.200294, 24.131710>,  <31.618242, 33.835571, 24.095469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778437, 34.200294, 24.131710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694444, -0.366540, 0.619190,
		0.597794, -0.185059, -0.779997,
		0.400487, 0.911812, 0.090602,
		31.898582, 34.473839, 24.158890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359253, 33.752277, 24.050100>,  <31.618242, 33.835571, 24.095469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359253, 33.752277, 24.050100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.293224, 34.106934, 24.222897>,  <32.253605, 34.319729, 24.326574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.293224, 34.106934, 24.222897>,  <32.359253, 33.752277, 24.050100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293224, 34.106934, 24.222897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645355, -0.234116, 0.727122,
		0.745833, 0.398815, -0.533553,
		-0.165074, 0.886643, 0.431989,
		32.243702, 34.372925, 24.352493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026505, 34.036900, 24.200718>,  <32.359253, 33.752277, 24.050100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026505, 34.036900, 24.200718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.791023, 34.256542, 24.438005>,  <32.649734, 34.388329, 24.580379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.791023, 34.256542, 24.438005>,  <33.026505, 34.036900, 24.200718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791023, 34.256542, 24.438005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573710, -0.233170, 0.785168,
		0.569465, 0.802565, -0.177763,
		-0.588699, 0.549110, 0.593221,
		32.614414, 34.421276, 24.615973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452316, 34.542908, 24.582329>,  <33.026505, 34.036900, 24.200718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452316, 34.542908, 24.582329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.124756, 34.499657, 24.807791>,  <32.928219, 34.473705, 24.943068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.124756, 34.499657, 24.807791>,  <33.452316, 34.542908, 24.582329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124756, 34.499657, 24.807791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573257, -0.201819, 0.794132,
		0.027887, 0.973436, 0.227256,
		-0.818901, -0.108130, 0.563657,
		32.879086, 34.467216, 24.976889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711189, 34.719116, 25.172779>,  <33.452316, 34.542908, 24.582329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711189, 34.719116, 25.172779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.368725, 34.531120, 25.258667>,  <33.163246, 34.418324, 25.310200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.368725, 34.531120, 25.258667>,  <33.711189, 34.719116, 25.172779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368725, 34.531120, 25.258667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336083, -0.190876, 0.922288,
		-0.392478, 0.861788, 0.321375,
		-0.856160, -0.469986, 0.214718,
		33.111877, 34.390125, 25.323082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386669, 35.022820, 25.680176>,  <33.711189, 34.719116, 25.172779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386669, 35.022820, 25.680176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.244526, 34.649029, 25.688906>,  <33.159241, 34.424755, 25.694143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.244526, 34.649029, 25.688906>,  <33.386669, 35.022820, 25.680176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244526, 34.649029, 25.688906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490931, -0.166716, 0.855098,
		-0.795430, 0.314581, 0.518006,
		-0.355358, -0.934476, 0.021827,
		33.137920, 34.368687, 25.695454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055939, 34.879532, 26.430132>,  <33.386669, 35.022820, 25.680176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055939, 34.879532, 26.430132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.069946, 34.508896, 26.280355>,  <33.078350, 34.286514, 26.190491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.069946, 34.508896, 26.280355>,  <33.055939, 34.879532, 26.430132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069946, 34.508896, 26.280355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432110, -0.323798, 0.841686,
		-0.901140, -0.191277, 0.389049,
		0.035022, -0.926589, -0.374440,
		33.080452, 34.230919, 26.168024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725903, 34.491215, 26.907515>,  <33.055939, 34.879532, 26.430132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725903, 34.491215, 26.907515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.988609, 34.270214, 26.702229>,  <33.146233, 34.137611, 26.579056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.988609, 34.270214, 26.702229>,  <32.725903, 34.491215, 26.907515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988609, 34.270214, 26.702229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430572, -0.283972, 0.856719,
		-0.619082, -0.783643, 0.051390,
		0.656769, -0.552506, -0.513217,
		33.185638, 34.104462, 26.548264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776474, 33.757996, 27.245382>,  <32.725903, 34.491215, 26.907515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776474, 33.757996, 27.245382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.117218, 33.798294, 27.039789>,  <33.321667, 33.822472, 26.916433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.117218, 33.798294, 27.039789>,  <32.776474, 33.757996, 27.245382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117218, 33.798294, 27.039789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508006, -0.397816, 0.763985,
		-0.127505, -0.911918, -0.390063,
		0.851864, 0.100742, -0.513983,
		33.372776, 33.828518, 26.885593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135208, 33.182667, 27.429745>,  <32.776474, 33.757996, 27.245382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135208, 33.182667, 27.429745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.415829, 33.433743, 27.294794>,  <33.584202, 33.584389, 27.213823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.415829, 33.433743, 27.294794>,  <33.135208, 33.182667, 27.429745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415829, 33.433743, 27.294794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613441, -0.291023, 0.734163,
		0.362645, -0.722016, -0.589221,
		0.701555, 0.627693, -0.337376,
		33.626297, 33.622051, 27.193581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826015, 32.915451, 27.553236>,  <33.135208, 33.182667, 27.429745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826015, 32.915451, 27.553236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.894493, 33.308498, 27.524542>,  <33.935577, 33.544327, 27.507326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.894493, 33.308498, 27.524542>,  <33.826015, 32.915451, 27.553236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894493, 33.308498, 27.524542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610499, -0.048649, 0.790522,
		0.773295, -0.179123, -0.608218,
		0.171190, 0.982623, -0.071735,
		33.945850, 33.603287, 27.503021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526913, 33.029095, 27.600143>,  <33.826015, 32.915451, 27.553236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526913, 33.029095, 27.600143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.401245, 33.396511, 27.696123>,  <34.325844, 33.616962, 27.753712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.401245, 33.396511, 27.696123>,  <34.526913, 33.029095, 27.600143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401245, 33.396511, 27.696123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618753, 0.006417, 0.785560,
		0.720032, 0.395265, -0.570368,
		-0.314164, 0.918545, 0.239951,
		34.306995, 33.672073, 27.768108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.359039, 37.930290, 23.016747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.996265, 37.899689, 23.182455>,  <33.778603, 37.881329, 23.281881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.996265, 37.899689, 23.182455>,  <34.359039, 37.930290, 23.016747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996265, 37.899689, 23.182455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383264, -0.258384, -0.886762,
		0.174884, -0.963008, 0.205015,
		-0.906931, -0.076505, 0.414274,
		33.724186, 37.876736, 23.306738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077892, 37.445667, 22.648705>,  <34.359039, 37.930290, 23.016747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077892, 37.445667, 22.648705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.749466, 37.570580, 22.839842>,  <33.552410, 37.645527, 22.954523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.749466, 37.570580, 22.839842>,  <34.077892, 37.445667, 22.648705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749466, 37.570580, 22.839842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535305, -0.130499, -0.834517,
		-0.198250, -0.940982, 0.274316,
		-0.821064, 0.312286, 0.477841,
		33.503147, 37.664265, 22.983194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617023, 36.967571, 22.609119>,  <34.077892, 37.445667, 22.648705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617023, 36.967571, 22.609119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.409801, 37.305153, 22.664780>,  <33.285469, 37.507702, 22.698175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.409801, 37.305153, 22.664780>,  <33.617023, 36.967571, 22.609119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409801, 37.305153, 22.664780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445142, -0.127101, -0.886394,
		-0.730388, -0.521143, 0.441524,
		-0.518057, 0.843952, 0.139149,
		33.254383, 37.558338, 22.706524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894741, 36.884602, 22.295456>,  <33.617023, 36.967571, 22.609119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894741, 36.884602, 22.295456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.941235, 37.281170, 22.319347>,  <32.969131, 37.519112, 22.333681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.941235, 37.281170, 22.319347>,  <32.894741, 36.884602, 22.295456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941235, 37.281170, 22.319347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314209, 0.093752, -0.944713,
		-0.942211, 0.091044, 0.322412,
		0.116237, 0.991424, 0.059728,
		32.976105, 37.578598, 22.337265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208508, 37.201473, 22.037949>,  <32.894741, 36.884602, 22.295456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208508, 37.201473, 22.037949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.506336, 37.465038, 21.995152>,  <32.685036, 37.623177, 21.969473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.506336, 37.465038, 21.995152>,  <32.208508, 37.201473, 22.037949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506336, 37.465038, 21.995152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382095, 0.289249, -0.877690,
		-0.547371, 0.694386, 0.467133,
		0.744573, 0.658910, -0.106995,
		32.729710, 37.662712, 21.963053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856535, 37.788128, 21.838274>,  <32.208508, 37.201473, 22.037949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856535, 37.788128, 21.838274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.231289, 37.884075, 21.736521>,  <32.456142, 37.941643, 21.675468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.231289, 37.884075, 21.736521>,  <31.856535, 37.788128, 21.838274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231289, 37.884075, 21.736521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338081, 0.435942, -0.834060,
		-0.089170, 0.867419, 0.489523,
		0.936883, 0.239871, -0.254385,
		32.512352, 37.956036, 21.660206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834131, 38.512447, 21.576880>,  <31.856535, 37.788128, 21.838274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834131, 38.512447, 21.576880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.178780, 38.374660, 21.427774>,  <32.385567, 38.291988, 21.338312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.178780, 38.374660, 21.427774>,  <31.834131, 38.512447, 21.576880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178780, 38.374660, 21.427774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206345, 0.433255, -0.877332,
		0.463716, 0.832844, 0.302221,
		0.861620, -0.344471, -0.372761,
		32.437267, 38.271320, 21.315947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127708, 39.060055, 21.271404>,  <31.834131, 38.512447, 21.576880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127708, 39.060055, 21.271404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.301735, 38.736450, 21.113306>,  <32.406151, 38.542286, 21.018448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.301735, 38.736450, 21.113306>,  <32.127708, 39.060055, 21.271404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301735, 38.736450, 21.113306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243756, 0.316749, -0.916653,
		0.866777, 0.495146, -0.059395,
		0.435064, -0.809012, -0.395246,
		32.432255, 38.493748, 20.994732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453716, 39.236828, 20.644428>,  <32.127708, 39.060055, 21.271404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453716, 39.236828, 20.644428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.413445, 38.840683, 20.606392>,  <32.389282, 38.602997, 20.583570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.413445, 38.840683, 20.606392>,  <32.453716, 39.236828, 20.644428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413445, 38.840683, 20.606392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271215, 0.119277, -0.955100,
		0.957239, -0.070367, -0.280610,
		-0.100678, -0.990364, -0.095092,
		32.383240, 38.543575, 20.577864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743793, 39.017998, 19.965778>,  <32.453716, 39.236828, 20.644428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743793, 39.017998, 19.965778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.495052, 38.712543, 20.035252>,  <32.345806, 38.529270, 20.076935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.495052, 38.712543, 20.035252>,  <32.743793, 39.017998, 19.965778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495052, 38.712543, 20.035252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415667, 0.133881, -0.899609,
		0.663717, -0.631619, -0.400671,
		-0.621852, -0.763632, 0.173684,
		32.308498, 38.483456, 20.087357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735100, 38.649693, 19.333673>,  <32.743793, 39.017998, 19.965778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735100, 38.649693, 19.333673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.414295, 38.527771, 19.539148>,  <32.221813, 38.454620, 19.662434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.414295, 38.527771, 19.539148>,  <32.735100, 38.649693, 19.333673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414295, 38.527771, 19.539148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534842, -0.016434, -0.844792,
		0.265936, -0.952274, -0.149840,
		-0.802011, -0.304801, 0.513687,
		32.173691, 38.436329, 19.693254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422710, 38.043400, 18.902283>,  <32.735100, 38.649693, 19.333673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422710, 38.043400, 18.902283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.116917, 38.162025, 19.131235>,  <31.933441, 38.233200, 19.268606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.116917, 38.162025, 19.131235>,  <32.422710, 38.043400, 18.902283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116917, 38.162025, 19.131235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451644, 0.387158, -0.803820,
		-0.459983, -0.873018, -0.162036,
		-0.764482, 0.296561, 0.572379,
		31.887571, 38.250996, 19.302948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737553, 37.794376, 18.670713>,  <32.422710, 38.043400, 18.902283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737553, 37.794376, 18.670713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.714788, 38.144524, 18.862751>,  <31.701130, 38.354610, 18.977974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.714788, 38.144524, 18.862751>,  <31.737553, 37.794376, 18.670713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714788, 38.144524, 18.862751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527467, 0.381921, -0.758890,
		-0.847667, -0.296425, 0.439992,
		-0.056912, 0.875368, 0.480096,
		31.697714, 38.407135, 19.006781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948372, 37.786701, 18.345964>,  <31.737553, 37.794376, 18.670713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948372, 37.786701, 18.345964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.559597, 37.725574, 18.417507>,  <30.326332, 37.688900, 18.460432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.559597, 37.725574, 18.417507>,  <30.948372, 37.786701, 18.345964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559597, 37.725574, 18.417507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233581, -0.536565, 0.810887,
		-0.027945, 0.829907, 0.557201,
		-0.971936, -0.152812, 0.178856,
		30.268017, 37.679729, 18.471165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066252, 37.910488, 19.040447>,  <30.948372, 37.786701, 18.345964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066252, 37.910488, 19.040447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.753521, 37.682468, 18.939417>,  <30.565882, 37.545658, 18.878799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.753521, 37.682468, 18.939417>,  <31.066252, 37.910488, 19.040447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753521, 37.682468, 18.939417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140966, -0.556218, 0.818994,
		-0.607350, 0.604707, 0.515224,
		-0.781828, -0.570045, -0.252575,
		30.518972, 37.511456, 18.863644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479156, 37.929977, 19.590576>,  <31.066252, 37.910488, 19.040447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479156, 37.929977, 19.590576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.452288, 37.576710, 19.404888>,  <30.436167, 37.364750, 19.293474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.452288, 37.576710, 19.404888>,  <30.479156, 37.929977, 19.590576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452288, 37.576710, 19.404888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144410, -0.451767, 0.880371,
		-0.987235, 0.126175, -0.097192,
		-0.067173, -0.883168, -0.464221,
		30.432137, 37.311760, 19.265621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855930, 37.503902, 19.881437>,  <30.479156, 37.929977, 19.590576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855930, 37.503902, 19.881437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.117926, 37.254654, 19.710457>,  <30.275122, 37.105106, 19.607868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.117926, 37.254654, 19.710457>,  <29.855930, 37.503902, 19.881437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117926, 37.254654, 19.710457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004693, -0.569021, 0.822310,
		-0.755627, -0.536595, -0.375624,
		0.654985, -0.623122, -0.427449,
		30.314421, 37.067719, 19.582222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721668, 36.954002, 20.211103>,  <29.855930, 37.503902, 19.881437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721668, 36.954002, 20.211103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.054342, 36.820431, 20.033659>,  <30.253948, 36.740288, 19.927193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.054342, 36.820431, 20.033659>,  <29.721668, 36.954002, 20.211103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054342, 36.820431, 20.033659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126732, -0.663693, 0.737191,
		-0.540587, -0.669332, -0.509666,
		0.831687, -0.333925, -0.443610,
		30.303848, 36.720253, 19.900576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579107, 36.199654, 20.102476>,  <29.721668, 36.954002, 20.211103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579107, 36.199654, 20.102476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.970716, 36.281143, 20.101158>,  <30.205683, 36.330036, 20.100367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.970716, 36.281143, 20.101158>,  <29.579107, 36.199654, 20.102476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970716, 36.281143, 20.101158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128968, -0.607097, 0.784092,
		0.157736, -0.768070, -0.620635,
		0.979023, 0.203721, -0.003296,
		30.264423, 36.342258, 20.100170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903692, 35.520882, 20.010012>,  <29.579107, 36.199654, 20.102476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903692, 35.520882, 20.010012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.157423, 35.783466, 20.173319>,  <30.309662, 35.941017, 20.271303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.157423, 35.783466, 20.173319>,  <29.903692, 35.520882, 20.010012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157423, 35.783466, 20.173319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119921, -0.605283, 0.786926,
		0.763707, -0.450208, -0.462671,
		0.634327, 0.656465, 0.408269,
		30.347721, 35.980404, 20.295799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431150, 35.040787, 20.390181>,  <29.903692, 35.520882, 20.010012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431150, 35.040787, 20.390181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.472208, 35.416943, 20.519873>,  <30.496841, 35.642635, 20.597689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.472208, 35.416943, 20.519873>,  <30.431150, 35.040787, 20.390181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472208, 35.416943, 20.519873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136113, -0.336166, 0.931915,
		0.985362, -0.051522, -0.162505,
		0.102643, 0.940392, 0.324232,
		30.503000, 35.699059, 20.617142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999321, 35.100849, 20.751335>,  <30.431150, 35.040787, 20.390181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999321, 35.100849, 20.751335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.810209, 35.410252, 20.920172>,  <30.696741, 35.595894, 21.021473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.810209, 35.410252, 20.920172>,  <30.999321, 35.100849, 20.751335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810209, 35.410252, 20.920172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236253, -0.350200, 0.906391,
		0.848918, 0.528244, -0.017176,
		-0.472781, 0.773510, 0.422091,
		30.668375, 35.642303, 21.046799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492435, 35.420048, 21.219168>,  <30.999321, 35.100849, 20.751335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492435, 35.420048, 21.219168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.145292, 35.565434, 21.354647>,  <30.937006, 35.652664, 21.435934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.145292, 35.565434, 21.354647>,  <31.492435, 35.420048, 21.219168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145292, 35.565434, 21.354647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262012, -0.244373, 0.933612,
		0.422104, 0.898985, 0.116849,
		-0.867858, 0.363466, 0.338695,
		30.884935, 35.674473, 21.456255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636120, 35.845566, 21.721210>,  <31.492435, 35.420048, 21.219168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636120, 35.845566, 21.721210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.261511, 35.752068, 21.825735>,  <31.036745, 35.695969, 21.888449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.261511, 35.752068, 21.825735>,  <31.636120, 35.845566, 21.721210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261511, 35.752068, 21.825735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277560, -0.038956, 0.959918,
		-0.214200, 0.971516, 0.101363,
		-0.936525, -0.233749, 0.261310,
		30.980553, 35.681942, 21.904129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480532, 36.257336, 22.343178>,  <31.636120, 35.845566, 21.721210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480532, 36.257336, 22.343178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.218309, 35.955814, 22.325169>,  <31.060976, 35.774902, 22.314363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.218309, 35.955814, 22.325169>,  <31.480532, 36.257336, 22.343178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218309, 35.955814, 22.325169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105046, -0.150071, 0.983079,
		-0.747807, 0.639731, 0.177564,
		-0.655554, -0.753805, -0.045023,
		31.021643, 35.729671, 22.311663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390499, 36.215515, 23.062895>,  <31.480532, 36.257336, 22.343178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390499, 36.215515, 23.062895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.203438, 35.895634, 22.912283>,  <31.091202, 35.703705, 22.821917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.203438, 35.895634, 22.912283>,  <31.390499, 36.215515, 23.062895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203438, 35.895634, 22.912283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186018, -0.505482, 0.842547,
		-0.864117, 0.323978, 0.385150,
		-0.467653, -0.799704, -0.376530,
		31.063141, 35.655724, 22.799324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808508, 36.006001, 23.484486>,  <31.390499, 36.215515, 23.062895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808508, 36.006001, 23.484486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.929142, 35.675068, 23.294931>,  <31.001522, 35.476509, 23.181200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.929142, 35.675068, 23.294931>,  <30.808508, 36.006001, 23.484486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929142, 35.675068, 23.294931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251491, -0.410395, 0.876543,
		-0.919672, -0.383531, 0.084297,
		0.301587, -0.827333, -0.473884,
		31.019619, 35.426868, 23.152767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523783, 35.378353, 23.856960>,  <30.808508, 36.006001, 23.484486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523783, 35.378353, 23.856960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.827141, 35.226994, 23.644676>,  <31.009155, 35.136177, 23.517305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.827141, 35.226994, 23.644676>,  <30.523783, 35.378353, 23.856960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827141, 35.226994, 23.644676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357746, -0.438964, 0.824214,
		-0.544847, -0.814937, -0.197535,
		0.758393, -0.378403, -0.530709,
		31.054659, 35.113472, 23.485464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027910, 34.791069, 23.934826>,  <30.523783, 35.378353, 23.856960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027910, 34.791069, 23.934826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.688120, 34.787304, 24.145844>,  <29.484245, 34.785046, 24.272453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.688120, 34.787304, 24.145844>,  <30.027910, 34.791069, 23.934826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688120, 34.787304, 24.145844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510493, 0.267401, -0.817247,
		-0.133370, -0.963539, -0.231958,
		-0.849476, -0.009417, 0.527543,
		29.433277, 34.784477, 24.304106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642941, 34.449276, 23.577553>,  <30.027910, 34.791069, 23.934826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642941, 34.449276, 23.577553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.396421, 34.657902, 23.813570>,  <29.248510, 34.783077, 23.955181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.396421, 34.657902, 23.813570>,  <29.642941, 34.449276, 23.577553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396421, 34.657902, 23.813570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401217, 0.436768, -0.805145,
		-0.677646, -0.732944, -0.059919,
		-0.616297, 0.521562, 0.590044,
		29.211533, 34.814369, 23.990583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905979, 34.359222, 23.291317>,  <29.642941, 34.449276, 23.577553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905979, 34.359222, 23.291317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.872440, 34.692757, 23.509560>,  <28.852318, 34.892876, 23.640505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.872440, 34.692757, 23.509560>,  <28.905979, 34.359222, 23.291317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872440, 34.692757, 23.509560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571911, 0.408110, -0.711592,
		-0.816019, -0.371705, 0.442661,
		-0.083848, 0.833836, 0.545608,
		28.847286, 34.942905, 23.673243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237696, 34.594051, 23.110989>,  <28.905979, 34.359222, 23.291317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237696, 34.594051, 23.110989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.398283, 34.928043, 23.261524>,  <28.494635, 35.128441, 23.351845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.398283, 34.928043, 23.261524>,  <28.237696, 34.594051, 23.110989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398283, 34.928043, 23.261524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364022, 0.522528, -0.771008,
		-0.840424, 0.172540, 0.513729,
		0.401468, 0.834982, 0.376337,
		28.518723, 35.178539, 23.374426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759148, 35.088097, 23.263052>,  <28.237696, 34.594051, 23.110989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759148, 35.088097, 23.263052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.084112, 35.319668, 23.235247>,  <28.279091, 35.458611, 23.218563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.084112, 35.319668, 23.235247>,  <27.759148, 35.088097, 23.263052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084112, 35.319668, 23.235247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382682, 0.439438, -0.812680,
		-0.439937, 0.686831, 0.578549,
		0.812410, 0.578929, -0.069513,
		28.327835, 35.493347, 23.214394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499203, 35.743057, 23.277458>,  <27.759148, 35.088097, 23.263052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.499203, 35.743057, 23.277458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.857733, 35.785698, 23.105301>,  <28.072851, 35.811283, 23.002007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.857733, 35.785698, 23.105301>,  <27.499203, 35.743057, 23.277458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857733, 35.785698, 23.105301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375119, 0.699833, -0.607881,
		0.236403, 0.706308, 0.667265,
		0.896325, 0.106599, -0.430392,
		28.126631, 35.817677, 22.976183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769667, 36.581367, 23.137300>,  <27.499203, 35.743057, 23.277458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769667, 36.581367, 23.137300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.994606, 36.364685, 22.887400>,  <28.129570, 36.234676, 22.737459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.994606, 36.364685, 22.887400>,  <27.769667, 36.581367, 23.137300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994606, 36.364685, 22.887400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277576, 0.588027, -0.759721,
		0.778918, 0.600645, 0.180311,
		0.562350, -0.541710, -0.624750,
		28.163311, 36.202171, 22.699974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943872, 37.229580, 23.496559>,  <27.769667, 36.581367, 23.137300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943872, 37.229580, 23.496559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.803991, 37.582214, 23.623375>,  <27.720062, 37.793797, 23.699465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.803991, 37.582214, 23.623375>,  <27.943872, 37.229580, 23.496559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803991, 37.582214, 23.623375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350644, -0.190647, 0.916898,
		0.868768, 0.431809, -0.242454,
		-0.349702, 0.881587, 0.317039,
		27.699081, 37.846691, 23.718487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532387, 37.690403, 23.760515>,  <27.943872, 37.229580, 23.496559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532387, 37.690403, 23.760515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.193682, 37.812916, 23.934498>,  <27.990459, 37.886425, 24.038887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.193682, 37.812916, 23.934498>,  <28.532387, 37.690403, 23.760515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193682, 37.812916, 23.934498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334882, -0.328392, 0.883183,
		0.413340, 0.893504, 0.175501,
		-0.846761, 0.306282, 0.434957,
		27.939653, 37.904800, 24.064985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714333, 37.983681, 24.328079>,  <28.532387, 37.690403, 23.760515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714333, 37.983681, 24.328079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.324085, 37.975193, 24.415455>,  <28.089937, 37.970100, 24.467880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.324085, 37.975193, 24.415455>,  <28.714333, 37.983681, 24.328079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324085, 37.975193, 24.415455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219465, -0.089136, 0.971540,
		-0.001148, 0.995793, 0.091621,
		-0.975620, -0.021222, 0.218439,
		28.031399, 37.968826, 24.480988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729834, 38.288845, 24.883869>,  <28.714333, 37.983681, 24.328079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729834, 38.288845, 24.883869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.373524, 38.107418, 24.895145>,  <28.159739, 37.998562, 24.901911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.373524, 38.107418, 24.895145>,  <28.729834, 38.288845, 24.883869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373524, 38.107418, 24.895145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111560, -0.158121, 0.981097,
		-0.440540, 0.877081, 0.191451,
		-0.890774, -0.453571, 0.028188,
		28.106291, 37.971348, 24.903603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551172, 38.555363, 25.413689>,  <28.729834, 38.288845, 24.883869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551172, 38.555363, 25.413689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.363466, 38.207863, 25.350370>,  <28.250843, 37.999363, 25.312380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.363466, 38.207863, 25.350370>,  <28.551172, 38.555363, 25.413689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363466, 38.207863, 25.350370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251568, -0.303352, 0.919071,
		-0.846466, 0.391465, 0.360903,
		-0.469264, -0.868754, -0.158298,
		28.222687, 37.947235, 25.302881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213930, 38.479633, 26.127872>,  <28.551172, 38.555363, 25.413689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213930, 38.479633, 26.127872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.202135, 38.141079, 25.915169>,  <28.195059, 37.937946, 25.787546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.202135, 38.141079, 25.915169>,  <28.213930, 38.479633, 26.127872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202135, 38.141079, 25.915169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367208, -0.503965, 0.781779,
		-0.929671, -0.172214, 0.325658,
		-0.029487, -0.846382, -0.531760,
		28.193289, 37.887165, 25.755640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876501, 37.909695, 26.563238>,  <28.213930, 38.479633, 26.127872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876501, 37.909695, 26.563238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.082827, 37.720303, 26.277651>,  <28.206621, 37.606667, 26.106298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.082827, 37.720303, 26.277651>,  <27.876501, 37.909695, 26.563238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082827, 37.720303, 26.277651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390482, -0.611851, 0.687868,
		-0.762535, -0.633604, -0.130716,
		0.515814, -0.473481, -0.713969,
		28.237572, 37.578259, 26.063459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.638229, 40.099213, 20.908588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.841385, 39.754845, 20.920408>,  <29.963278, 39.548225, 20.927500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.841385, 39.754845, 20.920408>,  <29.638229, 40.099213, 20.908588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841385, 39.754845, 20.920408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335725, 0.229414, 0.913596,
		-0.793308, -0.454085, 0.405548,
		0.507889, -0.860916, 0.029548,
		29.993752, 39.496571, 20.929272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441448, 39.655006, 21.598803>,  <29.638229, 40.099213, 20.908588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441448, 39.655006, 21.598803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.804220, 39.560162, 21.459517>,  <30.021883, 39.503254, 21.375944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.804220, 39.560162, 21.459517>,  <29.441448, 39.655006, 21.598803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804220, 39.560162, 21.459517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404121, 0.256172, 0.878101,
		-0.119008, -0.937098, 0.328153,
		0.906931, -0.237115, -0.348215,
		30.076300, 39.489029, 21.355053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743586, 39.103996, 21.985723>,  <29.441448, 39.655006, 21.598803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743586, 39.103996, 21.985723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.035360, 39.327335, 21.827650>,  <30.210424, 39.461338, 21.732805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.035360, 39.327335, 21.827650>,  <29.743586, 39.103996, 21.985723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035360, 39.327335, 21.827650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364625, 0.171430, 0.915238,
		0.578768, -0.811701, -0.078541,
		0.729436, 0.558349, -0.395184,
		30.254190, 39.494839, 21.709095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500334, 38.910179, 22.294149>,  <29.743586, 39.103996, 21.985723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500334, 38.910179, 22.294149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.500652, 39.278797, 22.138840>,  <30.500843, 39.499966, 22.045654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.500652, 39.278797, 22.138840>,  <30.500334, 38.910179, 22.294149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500652, 39.278797, 22.138840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393706, 0.356629, 0.847238,
		0.919236, -0.153540, -0.362534,
		0.000795, 0.921543, -0.388276,
		30.500891, 39.555260, 22.022358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131849, 39.028458, 22.496925>,  <30.500334, 38.910179, 22.294149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131849, 39.028458, 22.496925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.937651, 39.366085, 22.405848>,  <30.821133, 39.568661, 22.351202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.937651, 39.366085, 22.405848>,  <31.131849, 39.028458, 22.496925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937651, 39.366085, 22.405848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350069, 0.426351, 0.834072,
		0.801091, 0.325230, -0.502473,
		-0.485495, 0.844068, -0.227693,
		30.792002, 39.619305, 22.337540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619383, 39.476379, 22.607355>,  <31.131849, 39.028458, 22.496925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619383, 39.476379, 22.607355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.285501, 39.696278, 22.620274>,  <31.085173, 39.828217, 22.628025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.285501, 39.696278, 22.620274>,  <31.619383, 39.476379, 22.607355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285501, 39.696278, 22.620274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379004, 0.530930, 0.757938,
		0.399529, 0.644895, -0.651527,
		-0.834705, 0.549749, 0.032296,
		31.035089, 39.861202, 22.629963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876627, 40.141479, 22.546047>,  <31.619383, 39.476379, 22.607355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876627, 40.141479, 22.546047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.518953, 40.154198, 22.724674>,  <31.304350, 40.161827, 22.831850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.518953, 40.154198, 22.724674>,  <31.876627, 40.141479, 22.546047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518953, 40.154198, 22.724674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396142, 0.520906, 0.756127,
		-0.208582, 0.853022, -0.478380,
		-0.894184, 0.031792, 0.446570,
		31.250698, 40.163734, 22.858644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709566, 40.890858, 22.654705>,  <31.876627, 40.141479, 22.546047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709566, 40.890858, 22.654705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.492138, 40.662193, 22.900547>,  <31.361681, 40.524994, 23.048052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.492138, 40.662193, 22.900547>,  <31.709566, 40.890858, 22.654705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492138, 40.662193, 22.900547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446533, 0.423067, 0.788431,
		-0.710732, 0.703008, 0.025298,
		-0.543570, -0.571659, 0.614603,
		31.329067, 40.490696, 23.084929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458876, 41.354961, 23.131241>,  <31.709566, 40.890858, 22.654705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458876, 41.354961, 23.131241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.425074, 40.995731, 23.303902>,  <31.404793, 40.780193, 23.407497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.425074, 40.995731, 23.303902>,  <31.458876, 41.354961, 23.131241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425074, 40.995731, 23.303902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394469, 0.367657, 0.842153,
		-0.915015, 0.241438, 0.323194,
		-0.084503, -0.898073, 0.431652,
		31.399723, 40.726311, 23.433397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302851, 41.407227, 23.803282>,  <31.458876, 41.354961, 23.131241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302851, 41.407227, 23.803282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.374321, 41.014328, 23.826160>,  <31.417204, 40.778591, 23.839888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.374321, 41.014328, 23.826160>,  <31.302851, 41.407227, 23.803282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374321, 41.014328, 23.826160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189682, 0.091427, 0.977580,
		-0.965451, -0.163821, 0.202650,
		0.178675, -0.982244, 0.057195,
		31.427923, 40.719654, 23.843319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890160, 41.125885, 24.289824>,  <31.302851, 41.407227, 23.803282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890160, 41.125885, 24.289824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.216885, 40.898373, 24.251232>,  <31.412920, 40.761864, 24.228077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.216885, 40.898373, 24.251232>,  <30.890160, 41.125885, 24.289824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216885, 40.898373, 24.251232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265901, 0.222758, 0.937910,
		-0.511973, -0.791749, 0.333191,
		0.816811, -0.568781, -0.096481,
		31.461927, 40.727737, 24.222288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014391, 40.894058, 25.026817>,  <30.890160, 41.125885, 24.289824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014391, 40.894058, 25.026817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.380526, 40.826828, 24.880440>,  <31.600206, 40.786491, 24.792614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.380526, 40.826828, 24.880440>,  <31.014391, 40.894058, 25.026817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380526, 40.826828, 24.880440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363456, -0.046457, 0.930452,
		-0.173386, -0.984679, 0.018565,
		0.915334, -0.168075, -0.365943,
		31.655127, 40.776405, 24.770657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583128, 40.292686, 25.283527>,  <31.014391, 40.894058, 25.026817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583128, 40.292686, 25.283527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.240158, 40.337910, 25.484343>,  <30.034376, 40.365044, 25.604832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.240158, 40.337910, 25.484343>,  <30.583128, 40.292686, 25.283527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240158, 40.337910, 25.484343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491446, 0.109514, -0.863995,
		-0.152663, -0.987535, -0.038338,
		-0.857423, 0.113059, 0.502038,
		29.982931, 40.371826, 25.634954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112263, 39.845543, 24.942169>,  <30.583128, 40.292686, 25.283527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112263, 39.845543, 24.942169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.901749, 40.138573, 25.114849>,  <29.775440, 40.314388, 25.218456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.901749, 40.138573, 25.114849>,  <30.112263, 39.845543, 24.942169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901749, 40.138573, 25.114849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398781, 0.235756, -0.886224,
		-0.750998, -0.638559, 0.168061,
		-0.526284, 0.732572, 0.431698,
		29.743864, 40.358345, 25.244358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387108, 39.803600, 24.688705>,  <30.112263, 39.845543, 24.942169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387108, 39.803600, 24.688705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.439236, 40.168072, 24.845053>,  <29.470512, 40.386753, 24.938862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.439236, 40.168072, 24.845053>,  <29.387108, 39.803600, 24.688705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439236, 40.168072, 24.845053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550855, 0.394326, -0.735572,
		-0.824364, -0.119452, 0.553313,
		0.130320, 0.911174, 0.390869,
		29.478333, 40.441425, 24.962313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769730, 40.066357, 24.680094>,  <29.387108, 39.803600, 24.688705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769730, 40.066357, 24.680094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.978865, 40.405342, 24.716846>,  <29.104345, 40.608734, 24.738899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.978865, 40.405342, 24.716846>,  <28.769730, 40.066357, 24.680094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978865, 40.405342, 24.716846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562491, 0.423984, -0.709818,
		-0.640503, 0.319436, 0.698367,
		0.522837, 0.847466, 0.091884,
		29.135715, 40.659580, 24.744411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253832, 40.608238, 24.650427>,  <28.769730, 40.066357, 24.680094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253832, 40.608238, 24.650427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.604780, 40.774471, 24.554501>,  <28.815350, 40.874210, 24.496944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.604780, 40.774471, 24.554501>,  <28.253832, 40.608238, 24.650427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.604780, 40.774471, 24.554501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433348, 0.471754, -0.767892,
		-0.205988, 0.777650, 0.593994,
		0.877370, 0.415583, -0.239818,
		28.867990, 40.899147, 24.482555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176920, 41.357666, 24.631807>,  <28.253832, 40.608238, 24.650427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176920, 41.357666, 24.631807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.507376, 41.281239, 24.419775>,  <28.705650, 41.235382, 24.292555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.507376, 41.281239, 24.419775>,  <28.176920, 41.357666, 24.631807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507376, 41.281239, 24.419775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420441, 0.417276, -0.805674,
		0.375128, 0.888467, 0.264396,
		0.826141, -0.191068, -0.530080,
		28.755219, 41.223919, 24.260752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323805, 41.916386, 24.196943>,  <28.176920, 41.357666, 24.631807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323805, 41.916386, 24.196943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.520926, 41.635963, 23.990774>,  <28.639198, 41.467709, 23.867073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.520926, 41.635963, 23.990774>,  <28.323805, 41.916386, 24.196943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520926, 41.635963, 23.990774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352792, 0.380496, -0.854845,
		0.795414, 0.603107, -0.059820,
		0.492802, -0.701060, -0.515423,
		28.668766, 41.425644, 23.836147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692284, 42.278492, 23.637053>,  <28.323805, 41.916386, 24.196943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692284, 42.278492, 23.637053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.704895, 41.894070, 23.527231>,  <28.712461, 41.663418, 23.461338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.704895, 41.894070, 23.527231>,  <28.692284, 42.278492, 23.637053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704895, 41.894070, 23.527231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265392, 0.256779, -0.929318,
		0.963625, 0.102166, -0.246960,
		0.031530, -0.961055, -0.274553,
		28.714354, 41.605755, 23.444866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992548, 42.274426, 22.954391>,  <28.692284, 42.278492, 23.637053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992548, 42.274426, 22.954391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.796318, 41.927155, 22.984324>,  <28.678581, 41.718792, 23.002283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.796318, 41.927155, 22.984324>,  <28.992548, 42.274426, 22.954391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796318, 41.927155, 22.984324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173144, 0.012953, -0.984811,
		0.854025, -0.496079, -0.156675,
		-0.490574, -0.868181, 0.074831,
		28.649145, 41.666698, 23.006773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189390, 41.949535, 22.347294>,  <28.992548, 42.274426, 22.954391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189390, 41.949535, 22.347294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.855122, 41.782547, 22.490051>,  <28.654560, 41.682354, 22.575705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.855122, 41.782547, 22.490051>,  <29.189390, 41.949535, 22.347294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855122, 41.782547, 22.490051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311166, -0.175586, -0.933994,
		0.452584, -0.891563, 0.016827,
		-0.835669, -0.417475, 0.356892,
		28.604422, 41.657303, 22.597118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114479, 41.427898, 21.935867>,  <29.189390, 41.949535, 22.347294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114479, 41.427898, 21.935867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.748466, 41.487144, 22.085951>,  <28.528858, 41.522694, 22.176001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.748466, 41.487144, 22.085951>,  <29.114479, 41.427898, 21.935867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748466, 41.487144, 22.085951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389434, -0.081874, -0.917408,
		-0.105160, -0.985576, 0.132598,
		-0.915032, 0.148113, 0.375207,
		28.473957, 41.531578, 22.198513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597576, 40.730057, 21.777861>,  <29.114479, 41.427898, 21.935867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597576, 40.730057, 21.777861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.388641, 41.067234, 21.829412>,  <28.263281, 41.269543, 21.860344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.388641, 41.067234, 21.829412>,  <28.597576, 40.730057, 21.777861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388641, 41.067234, 21.829412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457860, -0.149735, -0.876324,
		-0.719396, -0.516743, 0.464163,
		-0.522335, 0.842945, 0.128877,
		28.231941, 41.320118, 21.868076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989712, 40.500092, 21.483999>,  <28.597576, 40.730057, 21.777861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989712, 40.500092, 21.483999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.952166, 40.897633, 21.507488>,  <27.929638, 41.136158, 21.521582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.952166, 40.897633, 21.507488>,  <27.989712, 40.500092, 21.483999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952166, 40.897633, 21.507488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460758, 0.008920, -0.887481,
		-0.882548, -0.110362, 0.457087,
		-0.093867, 0.993851, 0.058723,
		27.924006, 41.195789, 21.525105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451330, 40.013729, 21.234480>,  <27.989712, 40.500092, 21.483999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451330, 40.013729, 21.234480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.073112, 39.904976, 21.306067>,  <26.846182, 39.839722, 21.349018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.073112, 39.904976, 21.306067>,  <27.451330, 40.013729, 21.234480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.073112, 39.904976, 21.306067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286567, -0.434584, 0.853824,
		-0.154367, 0.858612, 0.488831,
		-0.945542, -0.271885, 0.178964,
		26.789450, 39.823410, 21.359756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430025, 39.992931, 21.886229>,  <27.451330, 40.013729, 21.234480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430025, 39.992931, 21.886229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.121834, 39.761963, 21.778193>,  <26.936918, 39.623383, 21.713371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.121834, 39.761963, 21.778193>,  <27.430025, 39.992931, 21.886229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121834, 39.761963, 21.778193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176190, -0.600083, 0.780293,
		-0.612632, 0.553613, 0.564087,
		-0.770479, -0.577420, -0.270089,
		26.890690, 39.588737, 21.697166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228828, 39.807377, 22.521069>,  <27.430025, 39.992931, 21.886229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228828, 39.807377, 22.521069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.046484, 39.557373, 22.267595>,  <26.937077, 39.407372, 22.115511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.046484, 39.557373, 22.267595>,  <27.228828, 39.807377, 22.521069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046484, 39.557373, 22.267595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117288, -0.747935, 0.653327,
		-0.882289, 0.223503, 0.414260,
		-0.455861, -0.625011, -0.633681,
		26.909725, 39.369869, 22.077492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646774, 39.565327, 22.797436>,  <27.228828, 39.807377, 22.521069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646774, 39.565327, 22.797436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.752489, 39.295292, 22.521927>,  <26.815918, 39.133270, 22.356621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.752489, 39.295292, 22.521927>,  <26.646774, 39.565327, 22.797436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752489, 39.295292, 22.521927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108137, -0.688919, 0.716727,
		-0.958363, -0.263902, -0.109069,
		0.264285, -0.675090, -0.688772,
		26.831776, 39.092766, 22.315296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.256618, 38.981056, 22.970926>,  <26.646774, 39.565327, 22.797436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.256618, 38.981056, 22.970926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.564915, 38.853283, 22.750410>,  <26.749893, 38.776619, 22.618099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.564915, 38.853283, 22.750410>,  <26.256618, 38.981056, 22.970926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564915, 38.853283, 22.750410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234692, -0.662077, 0.711740,
		-0.592349, -0.677951, -0.435322,
		0.770742, -0.319431, -0.551291,
		26.796137, 38.757454, 22.585022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.250023, 38.228069, 22.943411>,  <26.256618, 38.981056, 22.970926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.250023, 38.228069, 22.943411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.623037, 38.351112, 22.867779>,  <26.846846, 38.424938, 22.822399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.623037, 38.351112, 22.867779>,  <26.250023, 38.228069, 22.943411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623037, 38.351112, 22.867779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346966, -0.618480, 0.705051,
		0.099937, -0.723090, -0.683486,
		0.932538, 0.307607, -0.189078,
		26.902800, 38.443394, 22.811056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612410, 37.680973, 23.004080>,  <26.250023, 38.228069, 22.943411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612410, 37.680973, 23.004080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.921503, 37.934128, 23.023403>,  <27.106958, 38.086021, 23.034998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.921503, 37.934128, 23.023403>,  <26.612410, 37.680973, 23.004080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921503, 37.934128, 23.023403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415914, -0.562368, 0.714673,
		0.479477, -0.532159, -0.697788,
		0.772733, 0.632890, 0.048311,
		27.153322, 38.123993, 23.037897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355715, 37.282810, 23.053400>,  <26.612410, 37.680973, 23.004080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355715, 37.282810, 23.053400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.402632, 37.650085, 23.204750>,  <27.430782, 37.870453, 23.295561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.402632, 37.650085, 23.204750>,  <27.355715, 37.282810, 23.053400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402632, 37.650085, 23.204750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254821, -0.396075, 0.882151,
		0.959848, -0.007051, -0.280431,
		0.117292, 0.918191, 0.378375,
		27.437819, 37.925541, 23.318262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932238, 37.095222, 22.581482>,  <27.355715, 37.282810, 23.053400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932238, 37.095222, 22.581482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.068651, 36.753826, 22.423874>,  <28.150499, 36.548988, 22.329309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.068651, 36.753826, 22.423874>,  <27.932238, 37.095222, 22.581482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068651, 36.753826, 22.423874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134100, 0.370689, -0.919025,
		0.930437, 0.366256, 0.011964,
		0.341033, -0.853491, -0.394018,
		28.170961, 36.497780, 22.305668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590815, 37.221119, 22.146376>,  <27.932238, 37.095222, 22.581482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590815, 37.221119, 22.146376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.438175, 36.879711, 22.004450>,  <28.346592, 36.674866, 21.919294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.438175, 36.879711, 22.004450>,  <28.590815, 37.221119, 22.146376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438175, 36.879711, 22.004450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142584, 0.324914, -0.934934,
		0.913265, -0.407360, -0.002288,
		-0.381598, -0.853516, -0.354815,
		28.323696, 36.623657, 21.898005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875633, 37.071289, 21.510162>,  <28.590815, 37.221119, 22.146376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875633, 37.071289, 21.510162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.566866, 36.818813, 21.479866>,  <28.381605, 36.667328, 21.461687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.566866, 36.818813, 21.479866>,  <28.875633, 37.071289, 21.510162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566866, 36.818813, 21.479866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059191, 0.189987, -0.980001,
		0.632958, -0.751999, -0.184015,
		-0.771920, -0.631192, -0.075742,
		28.335291, 36.629456, 21.457144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023500, 36.625725, 20.970129>,  <28.875633, 37.071289, 21.510162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023500, 36.625725, 20.970129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.623997, 36.609489, 20.981661>,  <28.384295, 36.599747, 20.988581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.623997, 36.609489, 20.981661>,  <29.023500, 36.625725, 20.970129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623997, 36.609489, 20.981661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039196, 0.283996, -0.958024,
		0.030700, -0.957966, -0.285235,
		-0.998760, -0.040592, 0.028829,
		28.324369, 36.597313, 20.990309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879679, 36.193825, 20.375666>,  <29.023500, 36.625725, 20.970129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879679, 36.193825, 20.375666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.541010, 36.382240, 20.474674>,  <28.337809, 36.495289, 20.534079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.541010, 36.382240, 20.474674>,  <28.879679, 36.193825, 20.375666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541010, 36.382240, 20.474674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205399, 0.139802, -0.968642,
		-0.490876, -0.870961, -0.021614,
		-0.846671, 0.471043, 0.247521,
		28.287008, 36.523552, 20.548931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289360, 35.914997, 19.913359>,  <28.879679, 36.193825, 20.375666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289360, 35.914997, 19.913359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.174564, 36.276455, 20.040524>,  <28.105686, 36.493328, 20.116823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.174564, 36.276455, 20.040524>,  <28.289360, 35.914997, 19.913359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174564, 36.276455, 20.040524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240856, 0.253143, -0.936967,
		-0.927159, -0.345473, 0.144998,
		-0.286991, 0.903641, 0.317913,
		28.088467, 36.547546, 20.135897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603052, 36.092010, 19.592161>,  <28.289360, 35.914997, 19.913359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603052, 36.092010, 19.592161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.779627, 36.435310, 19.696888>,  <27.885572, 36.641289, 19.759724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.779627, 36.435310, 19.696888>,  <27.603052, 36.092010, 19.592161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.779627, 36.435310, 19.696888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184066, 0.372194, -0.909720,
		-0.878210, 0.353394, 0.322274,
		0.441438, 0.858245, 0.261817,
		27.912058, 36.692783, 19.775433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079922, 36.607658, 19.333397>,  <27.603052, 36.092010, 19.592161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079922, 36.607658, 19.333397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.423460, 36.803135, 19.394800>,  <27.629583, 36.920422, 19.431643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.423460, 36.803135, 19.394800>,  <27.079922, 36.607658, 19.333397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423460, 36.803135, 19.394800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064862, 0.401023, -0.913769,
		-0.508111, 0.774830, 0.376115,
		0.858846, 0.488692, 0.153507,
		27.681114, 36.949741, 19.440853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066031, 37.250710, 18.965261>,  <27.079922, 36.607658, 19.333397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066031, 37.250710, 18.965261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.461334, 37.214279, 19.014338>,  <27.698517, 37.192421, 19.043783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.461334, 37.214279, 19.014338>,  <27.066031, 37.250710, 18.965261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461334, 37.214279, 19.014338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141741, 0.246516, -0.958718,
		0.057074, 0.964849, 0.256531,
		0.988257, -0.091078, 0.122689,
		27.757811, 37.186954, 19.051144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.872723, 33.690357, 32.327805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.211651, 33.829361, 32.167160>,  <35.415009, 33.912766, 32.070774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.211651, 33.829361, 32.167160>,  <34.872723, 33.690357, 32.327805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211651, 33.829361, 32.167160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326309, -0.255979, -0.909944,
		-0.419021, 0.902059, -0.103499,
		0.847316, 0.347512, -0.401610,
		35.465847, 33.933613, 32.046677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705067, 34.309608, 31.950941>,  <34.872723, 33.690357, 32.327805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705067, 34.309608, 31.950941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.006683, 34.102165, 31.789713>,  <35.187653, 33.977699, 31.692976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.006683, 34.102165, 31.789713>,  <34.705067, 34.309608, 31.950941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006683, 34.102165, 31.789713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580651, -0.239482, -0.778134,
		0.307016, 0.820791, -0.481709,
		0.754046, -0.518604, -0.403068,
		35.232899, 33.946583, 31.668793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798885, 34.413708, 31.218555>,  <34.705067, 34.309608, 31.950941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798885, 34.413708, 31.218555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.012074, 34.075275, 31.214630>,  <35.139988, 33.872215, 31.212275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.012074, 34.075275, 31.214630>,  <34.798885, 34.413708, 31.218555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012074, 34.075275, 31.214630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457116, -0.278154, -0.844793,
		0.712030, 0.454736, -0.535003,
		0.532971, -0.846077, -0.009813,
		35.171967, 33.821453, 31.211687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059708, 34.206512, 30.548027>,  <34.798885, 34.413708, 31.218555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059708, 34.206512, 30.548027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.042034, 33.861656, 30.749922>,  <35.031429, 33.654743, 30.871058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.042034, 33.861656, 30.749922>,  <35.059708, 34.206512, 30.548027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042034, 33.861656, 30.749922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605195, -0.378875, -0.700138,
		0.794850, -0.336397, -0.505025,
		-0.044184, -0.862143, 0.504735,
		35.028778, 33.603012, 30.901342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298874, 33.648338, 30.148617>,  <35.059708, 34.206512, 30.548027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298874, 33.648338, 30.148617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.053410, 33.493355, 30.423805>,  <34.906132, 33.400364, 30.588919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.053410, 33.493355, 30.423805>,  <35.298874, 33.648338, 30.148617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053410, 33.493355, 30.423805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611560, -0.317885, -0.724530,
		0.499421, -0.865347, -0.041883,
		-0.613656, -0.387459, 0.687969,
		34.869312, 33.377117, 30.630196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070946, 33.148079, 29.756512>,  <35.298874, 33.648338, 30.148617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070946, 33.148079, 29.756512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815022, 33.140148, 30.063822>,  <34.661469, 33.135391, 30.248209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815022, 33.140148, 30.063822>,  <35.070946, 33.148079, 29.756512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815022, 33.140148, 30.063822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737238, -0.266531, -0.620839,
		0.217079, -0.963622, 0.155913,
		-0.639809, -0.019826, 0.768277,
		34.623077, 33.134201, 30.294306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782837, 32.574741, 29.741190>,  <35.070946, 33.148079, 29.756512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782837, 32.574741, 29.741190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.513103, 32.782860, 29.950788>,  <34.351265, 32.907730, 30.076548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.513103, 32.782860, 29.950788>,  <34.782837, 32.574741, 29.741190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513103, 32.782860, 29.950788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721453, -0.312921, -0.617726,
		-0.157432, -0.794589, 0.586382,
		-0.674330, 0.520297, 0.523995,
		34.310806, 32.938950, 30.107986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228653, 32.100033, 29.678053>,  <34.782837, 32.574741, 29.741190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228653, 32.100033, 29.678053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.038025, 32.423702, 29.815529>,  <33.923649, 32.617905, 29.898014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.038025, 32.423702, 29.815529>,  <34.228653, 32.100033, 29.678053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038025, 32.423702, 29.815529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827925, -0.281608, -0.485012,
		-0.295675, -0.515687, 0.804141,
		-0.476567, 0.809175, 0.343686,
		33.895054, 32.666454, 29.918634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552959, 31.954807, 29.914707>,  <34.228653, 32.100033, 29.678053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552959, 31.954807, 29.914707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.518494, 32.346909, 29.843515>,  <33.497814, 32.582169, 29.800800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.518494, 32.346909, 29.843515>,  <33.552959, 31.954807, 29.914707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518494, 32.346909, 29.843515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876417, -0.159537, -0.454359,
		-0.473781, 0.116834, 0.872858,
		-0.086168, 0.980254, -0.177981,
		33.492641, 32.640984, 29.790121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860275, 32.050907, 30.016342>,  <33.552959, 31.954807, 29.914707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860275, 32.050907, 30.016342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.978683, 32.386593, 29.833876>,  <33.049728, 32.588005, 29.724396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.978683, 32.386593, 29.833876>,  <32.860275, 32.050907, 30.016342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978683, 32.386593, 29.833876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874652, 0.046234, -0.482541,
		-0.383866, 0.541830, 0.747708,
		0.296025, 0.839216, -0.456165,
		33.067490, 32.638359, 29.697025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349140, 32.719723, 30.171366>,  <32.860275, 32.050907, 30.016342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349140, 32.719723, 30.171366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.528362, 32.794491, 29.821667>,  <32.635895, 32.839352, 29.611847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.528362, 32.794491, 29.821667>,  <32.349140, 32.719723, 30.171366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528362, 32.794491, 29.821667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886214, 0.221695, -0.406787,
		0.117777, 0.957032, 0.264987,
		0.448054, 0.186925, -0.874246,
		32.662777, 32.850567, 29.559393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046673, 33.390884, 29.887976>,  <32.349140, 32.719723, 30.171366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046673, 33.390884, 29.887976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.197712, 33.191956, 29.575542>,  <32.288334, 33.072598, 29.388083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.197712, 33.191956, 29.575542>,  <32.046673, 33.390884, 29.887976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197712, 33.191956, 29.575542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789847, 0.267267, -0.552005,
		0.483282, 0.825373, -0.291888,
		0.377597, -0.497321, -0.781084,
		32.310989, 33.042759, 29.341217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908802, 34.183548, 29.785992>,  <32.046673, 33.390884, 29.887976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908802, 34.183548, 29.785992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.610577, 34.385414, 29.960094>,  <31.431641, 34.506535, 30.064556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.610577, 34.385414, 29.960094>,  <31.908802, 34.183548, 29.785992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610577, 34.385414, 29.960094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397108, -0.188084, 0.898292,
		0.535200, 0.842579, -0.060177,
		-0.745564, 0.504663, 0.435258,
		31.386908, 34.536812, 30.090672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254375, 34.697510, 30.259251>,  <31.908802, 34.183548, 29.785992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254375, 34.697510, 30.259251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.882130, 34.660458, 30.400883>,  <31.658781, 34.638226, 30.485863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.882130, 34.660458, 30.400883>,  <32.254375, 34.697510, 30.259251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882130, 34.660458, 30.400883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365052, -0.304446, 0.879801,
		0.026300, 0.948015, 0.317138,
		-0.930615, -0.092633, 0.354082,
		31.602945, 34.632668, 30.507107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255013, 35.135197, 30.776781>,  <32.254375, 34.697510, 30.259251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255013, 35.135197, 30.776781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.958101, 34.871822, 30.826551>,  <31.779953, 34.713799, 30.856413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.958101, 34.871822, 30.826551>,  <32.255013, 35.135197, 30.776781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958101, 34.871822, 30.826551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309350, -0.172007, 0.935263,
		-0.594407, 0.732720, 0.331365,
		-0.742282, -0.658434, 0.124425,
		31.735416, 34.674294, 30.863878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952152, 35.345673, 31.369074>,  <32.255013, 35.135197, 30.776781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952152, 35.345673, 31.369074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.792023, 34.982109, 31.322388>,  <31.695946, 34.763969, 31.294376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.792023, 34.982109, 31.322388>,  <31.952152, 35.345673, 31.369074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792023, 34.982109, 31.322388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221042, -0.219380, 0.950270,
		-0.889315, 0.354617, 0.288730,
		-0.400323, -0.908911, -0.116713,
		31.671926, 34.709435, 31.287374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468607, 35.279980, 31.907232>,  <31.952152, 35.345673, 31.369074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468607, 35.279980, 31.907232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.601877, 34.920185, 31.794155>,  <31.681839, 34.704308, 31.726309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.601877, 34.920185, 31.794155>,  <31.468607, 35.279980, 31.907232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601877, 34.920185, 31.794155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294017, -0.185759, 0.937575,
		-0.895851, -0.395493, 0.202575,
		0.333174, -0.899488, -0.282694,
		31.701830, 34.650337, 31.709347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307924, 34.863327, 32.504478>,  <31.468607, 35.279980, 31.907232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307924, 34.863327, 32.504478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.592617, 34.675808, 32.295227>,  <31.763433, 34.563297, 32.169674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.592617, 34.675808, 32.295227>,  <31.307924, 34.863327, 32.504478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592617, 34.675808, 32.295227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503196, -0.179375, 0.845351,
		-0.490135, -0.864901, 0.108231,
		0.711731, -0.468797, -0.523133,
		31.806137, 34.535168, 32.138287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359842, 34.232918, 32.825005>,  <31.307924, 34.863327, 32.504478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359842, 34.232918, 32.825005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.705191, 34.331367, 32.648815>,  <31.912399, 34.390438, 32.543102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.705191, 34.331367, 32.648815>,  <31.359842, 34.232918, 32.825005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705191, 34.331367, 32.648815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441520, 0.054044, 0.895622,
		0.244243, -0.967729, -0.062010,
		0.863369, 0.246128, -0.440472,
		31.964201, 34.405205, 32.516674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818655, 33.867493, 33.184700>,  <31.359842, 34.232918, 32.825005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818655, 33.867493, 33.184700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.082199, 34.085678, 32.977482>,  <32.240326, 34.216591, 32.853149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.082199, 34.085678, 32.977482>,  <31.818655, 33.867493, 33.184700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082199, 34.085678, 32.977482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626385, -0.016430, 0.779341,
		0.416589, -0.837974, -0.352494,
		0.658859, 0.545462, -0.518050,
		32.279858, 34.249317, 32.822067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398018, 33.449852, 33.251858>,  <31.818655, 33.867493, 33.184700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398018, 33.449852, 33.251858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.549503, 33.809528, 33.164200>,  <32.640396, 34.025333, 33.111603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.549503, 33.809528, 33.164200>,  <32.398018, 33.449852, 33.251858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549503, 33.809528, 33.164200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596388, -0.056029, 0.800738,
		0.707739, -0.433951, -0.557487,
		0.378717, 0.899192, -0.219149,
		32.663116, 34.079285, 33.098454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028500, 33.377079, 33.266350>,  <32.398018, 33.449852, 33.251858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028500, 33.377079, 33.266350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.003288, 33.772709, 33.319653>,  <32.988159, 34.010086, 33.351635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.003288, 33.772709, 33.319653>,  <33.028500, 33.377079, 33.266350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003288, 33.772709, 33.319653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591407, -0.070539, 0.803282,
		0.803906, 0.129443, -0.580499,
		-0.063031, 0.989075, 0.133260,
		32.984379, 34.069431, 33.359631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730370, 33.658180, 33.325794>,  <33.028500, 33.377079, 33.266350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730370, 33.658180, 33.325794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.496017, 33.930290, 33.501961>,  <33.355408, 34.093559, 33.607662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.496017, 33.930290, 33.501961>,  <33.730370, 33.658180, 33.325794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496017, 33.930290, 33.501961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572080, -0.037747, 0.819329,
		0.573997, 0.731980, -0.367059,
		-0.585877, 0.680280, 0.440417,
		33.320255, 34.134373, 33.634087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287487, 34.216858, 33.633514>,  <33.730370, 33.658180, 33.325794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287487, 34.216858, 33.633514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.937130, 34.238190, 33.825336>,  <33.726917, 34.250988, 33.940430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.937130, 34.238190, 33.825336>,  <34.287487, 34.216858, 33.633514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937130, 34.238190, 33.825336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479459, 0.207767, 0.852615,
		-0.054162, 0.976723, -0.207552,
		-0.875891, 0.053333, 0.479552,
		33.674362, 34.254189, 33.969204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205349, 34.923992, 33.976933>,  <34.287487, 34.216858, 33.633514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205349, 34.923992, 33.976933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.962257, 34.662376, 34.157112>,  <33.816402, 34.505409, 34.265221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.962257, 34.662376, 34.157112>,  <34.205349, 34.923992, 33.976933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962257, 34.662376, 34.157112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387120, 0.251270, 0.887131,
		-0.693400, 0.713512, 0.100486,
		-0.607730, -0.654036, 0.450445,
		33.779938, 34.466164, 34.292244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918167, 35.346012, 34.550293>,  <34.205349, 34.923992, 33.976933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918167, 35.346012, 34.550293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.821663, 34.966309, 34.630985>,  <33.763760, 34.738487, 34.679401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.821663, 34.966309, 34.630985>,  <33.918167, 35.346012, 34.550293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821663, 34.966309, 34.630985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470129, 0.067524, 0.880011,
		-0.848982, 0.307153, 0.429985,
		-0.241264, -0.949262, 0.201728,
		33.749283, 34.681530, 34.691505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627804, 35.341362, 35.175053>,  <33.918167, 35.346012, 34.550293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627804, 35.341362, 35.175053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799965, 34.990814, 35.088581>,  <33.903263, 34.780487, 35.036697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799965, 34.990814, 35.088581>,  <33.627804, 35.341362, 35.175053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799965, 34.990814, 35.088581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503822, 0.034528, 0.863117,
		-0.748944, -0.480403, 0.456395,
		0.430402, -0.876368, -0.216178,
		33.929085, 34.727905, 35.023727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522141, 35.990784, 34.882019>,  <33.627804, 35.341362, 35.175053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522141, 35.990784, 34.882019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676895, 36.351925, 34.807007>,  <33.769749, 36.568611, 34.761997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676895, 36.351925, 34.807007>,  <33.522141, 35.990784, 34.882019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676895, 36.351925, 34.807007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878260, 0.298801, -0.373332,
		-0.281030, 0.309140, 0.908545,
		0.386887, 0.902857, -0.187534,
		33.792961, 36.622784, 34.750748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097961, 36.454281, 35.156483>,  <33.522141, 35.990784, 34.882019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097961, 36.454281, 35.156483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.279335, 36.633949, 34.848549>,  <33.388157, 36.741749, 34.663788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.279335, 36.633949, 34.848549>,  <33.097961, 36.454281, 35.156483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279335, 36.633949, 34.848549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871527, 0.404330, -0.277414,
		0.186663, 0.796721, 0.574798,
		0.453429, 0.449169, -0.769837,
		33.415363, 36.768700, 34.617599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634956, 37.106522, 35.038857>,  <33.097961, 36.454281, 35.156483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634956, 37.106522, 35.038857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.858753, 37.071915, 34.709133>,  <32.993031, 37.051151, 34.511299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.858753, 37.071915, 34.709133>,  <32.634956, 37.106522, 35.038857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858753, 37.071915, 34.709133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760706, 0.341274, -0.552140,
		0.329086, 0.935973, 0.125122,
		0.559489, -0.086520, -0.824309,
		33.026600, 37.045959, 34.461842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585369, 37.755726, 34.576904>,  <32.634956, 37.106522, 35.038857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585369, 37.755726, 34.576904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.736645, 37.511837, 34.298275>,  <32.827412, 37.365505, 34.131100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.736645, 37.511837, 34.298275>,  <32.585369, 37.755726, 34.576904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736645, 37.511837, 34.298275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640795, 0.370624, -0.672324,
		0.668096, 0.700626, -0.250540,
		0.378192, -0.609722, -0.696570,
		32.850101, 37.328922, 34.089302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891785, 38.108295, 33.975964>,  <32.585369, 37.755726, 34.576904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891785, 38.108295, 33.975964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.792953, 37.742039, 33.849121>,  <32.733654, 37.522285, 33.773014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.792953, 37.742039, 33.849121>,  <32.891785, 38.108295, 33.975964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792953, 37.742039, 33.849121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516963, 0.401352, -0.756086,
		0.819573, -0.022881, -0.572518,
		-0.247081, -0.915638, -0.317108,
		32.718830, 37.467346, 33.753990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987331, 38.190186, 33.237915>,  <32.891785, 38.108295, 33.975964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987331, 38.190186, 33.237915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.771046, 37.860783, 33.306568>,  <32.641273, 37.663139, 33.347759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.771046, 37.860783, 33.306568>,  <32.987331, 38.190186, 33.237915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771046, 37.860783, 33.306568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573899, 0.211952, -0.791022,
		0.615037, -0.526218, -0.587218,
		-0.540712, -0.823512, 0.171637,
		32.608833, 37.613728, 33.358059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947361, 37.752117, 32.581833>,  <32.987331, 38.190186, 33.237915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947361, 37.752117, 32.581833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.644566, 37.615139, 32.804440>,  <32.462891, 37.532951, 32.938004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.644566, 37.615139, 32.804440>,  <32.947361, 37.752117, 32.581833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644566, 37.615139, 32.804440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620992, 0.111999, -0.775774,
		0.203333, -0.932838, -0.297439,
		-0.756984, -0.342448, 0.556512,
		32.417469, 37.512405, 32.971394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543583, 37.295097, 32.143024>,  <32.947361, 37.752117, 32.581833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543583, 37.295097, 32.143024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.309593, 37.444042, 32.431232>,  <32.169197, 37.533409, 32.604156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.309593, 37.444042, 32.431232>,  <32.543583, 37.295097, 32.143024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309593, 37.444042, 32.431232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641765, 0.330699, -0.691936,
		-0.495924, -0.867172, 0.045516,
		-0.584976, 0.372359, 0.720523,
		32.134102, 37.555748, 32.647388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862415, 36.966187, 32.038841>,  <32.543583, 37.295097, 32.143024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862415, 36.966187, 32.038841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.817423, 37.301311, 32.252537>,  <31.790426, 37.502388, 32.380756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.817423, 37.301311, 32.252537>,  <31.862415, 36.966187, 32.038841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817423, 37.301311, 32.252537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604915, 0.368805, -0.705734,
		-0.788305, -0.402554, 0.465322,
		-0.112483, 0.837814, 0.534242,
		31.783678, 37.552654, 32.412811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217581, 37.150223, 31.900408>,  <31.862415, 36.966187, 32.038841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217581, 37.150223, 31.900408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.363491, 37.494781, 32.041794>,  <31.451038, 37.701515, 32.126625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.363491, 37.494781, 32.041794>,  <31.217581, 37.150223, 31.900408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363491, 37.494781, 32.041794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548940, 0.505590, -0.665615,
		-0.752066, 0.048770, 0.657281,
		0.364777, 0.861395, 0.353465,
		31.472923, 37.753201, 32.147835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677292, 37.485367, 32.013760>,  <31.217581, 37.150223, 31.900408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677292, 37.485367, 32.013760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.975609, 37.747063, 31.963539>,  <31.154600, 37.904079, 31.933407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.975609, 37.747063, 31.963539>,  <30.677292, 37.485367, 32.013760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975609, 37.747063, 31.963539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486532, 0.406177, -0.773503,
		-0.455059, 0.637959, 0.621233,
		0.745794, 0.654239, -0.125553,
		31.199347, 37.943333, 31.925873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360302, 38.199390, 31.828279>,  <30.677292, 37.485367, 32.013760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360302, 38.199390, 31.828279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.747141, 38.227016, 31.730335>,  <30.979244, 38.243591, 31.671570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.747141, 38.227016, 31.730335>,  <30.360302, 38.199390, 31.828279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747141, 38.227016, 31.730335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242033, 0.546313, -0.801849,
		0.078393, 0.834729, 0.545052,
		0.967096, 0.069061, -0.244859,
		31.037270, 38.247734, 31.656878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425518, 38.939438, 31.561501>,  <30.360302, 38.199390, 31.828279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425518, 38.939438, 31.561501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.733366, 38.734219, 31.409468>,  <30.918076, 38.611088, 31.318247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.733366, 38.734219, 31.409468>,  <30.425518, 38.939438, 31.561501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733366, 38.734219, 31.409468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154207, 0.428301, -0.890381,
		0.619599, 0.743868, 0.250514,
		0.769621, -0.513049, -0.380085,
		30.964252, 38.580303, 31.295443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647587, 39.350800, 31.033506>,  <30.425518, 38.939438, 31.561501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647587, 39.350800, 31.033506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.803179, 38.993969, 30.941509>,  <30.896534, 38.779873, 30.886311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.803179, 38.993969, 30.941509>,  <30.647587, 39.350800, 31.033506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803179, 38.993969, 30.941509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006422, 0.247023, -0.968989,
		0.921223, 0.378396, 0.090359,
		0.388982, -0.892074, -0.229993,
		30.919874, 38.726345, 30.872511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174990, 39.457146, 30.548788>,  <30.647587, 39.350800, 31.033506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174990, 39.457146, 30.548788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.146149, 39.063374, 30.484676>,  <31.128843, 38.827110, 30.446209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.146149, 39.063374, 30.484676>,  <31.174990, 39.457146, 30.548788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146149, 39.063374, 30.484676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091192, 0.166531, -0.981810,
		0.993220, -0.056175, -0.101780,
		-0.072103, -0.984435, -0.160279,
		31.124517, 38.768044, 30.436592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759838, 39.174377, 30.053125>,  <31.174990, 39.457146, 30.548788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759838, 39.174377, 30.053125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.448816, 38.923923, 30.029915>,  <31.262203, 38.773651, 30.015987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.448816, 38.923923, 30.029915>,  <31.759838, 39.174377, 30.053125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448816, 38.923923, 30.029915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046933, 0.149809, -0.987601,
		0.627064, -0.765188, -0.145870,
		-0.777552, -0.626135, -0.058027,
		31.215551, 38.736084, 30.012506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877640, 38.613247, 29.517250>,  <31.759838, 39.174377, 30.053125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877640, 38.613247, 29.517250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.483328, 38.665981, 29.558931>,  <31.246740, 38.697620, 29.583941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.483328, 38.665981, 29.558931>,  <31.877640, 38.613247, 29.517250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483328, 38.665981, 29.558931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095736, 0.069044, -0.993009,
		-0.138110, -0.988864, -0.055441,
		-0.985779, 0.131837, 0.104205,
		31.187593, 38.705532, 29.590193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698732, 38.196499, 28.948286>,  <31.877640, 38.613247, 29.517250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698732, 38.196499, 28.948286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.375196, 38.402332, 29.062117>,  <31.181074, 38.525833, 29.130415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.375196, 38.402332, 29.062117>,  <31.698732, 38.196499, 28.948286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375196, 38.402332, 29.062117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276835, 0.093737, -0.956335,
		-0.518788, -0.852302, 0.066637,
		-0.808839, 0.514582, 0.284577,
		31.132545, 38.556705, 29.147490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104918, 38.063194, 28.475609>,  <31.698732, 38.196499, 28.948286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104918, 38.063194, 28.475609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.003359, 38.409214, 28.648685>,  <30.942423, 38.616825, 28.752531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.003359, 38.409214, 28.648685>,  <31.104918, 38.063194, 28.475609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003359, 38.409214, 28.648685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172607, 0.399645, -0.900272,
		-0.951705, -0.303263, 0.047845,
		-0.253898, 0.865052, 0.432690,
		30.927189, 38.668728, 28.778492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471230, 38.281921, 28.148741>,  <31.104918, 38.063194, 28.475609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471230, 38.281921, 28.148741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.610662, 38.610451, 28.329370>,  <30.694323, 38.807568, 28.437748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.610662, 38.610451, 28.329370>,  <30.471230, 38.281921, 28.148741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610662, 38.610451, 28.329370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218247, 0.539675, -0.813093,
		-0.911514, 0.184875, 0.367372,
		0.348582, 0.821324, 0.451573,
		30.715237, 38.856850, 28.464842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884514, 38.733036, 28.104519>,  <30.471230, 38.281921, 28.148741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884514, 38.733036, 28.104519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.184553, 38.971344, 28.219353>,  <30.364576, 39.114326, 28.288254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.184553, 38.971344, 28.219353>,  <29.884514, 38.733036, 28.104519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184553, 38.971344, 28.219353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248073, 0.655882, -0.712936,
		-0.613037, 0.463553, 0.639768,
		0.750097, 0.595766, 0.287086,
		30.409582, 39.150074, 28.305479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535261, 39.312469, 28.157818>,  <29.884514, 38.733036, 28.104519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535261, 39.312469, 28.157818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.909353, 39.386181, 28.036896>,  <30.133808, 39.430408, 27.964342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.909353, 39.386181, 28.036896>,  <29.535261, 39.312469, 28.157818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909353, 39.386181, 28.036896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345982, 0.656846, -0.669962,
		0.075111, 0.731160, 0.678058,
		0.935230, 0.184274, -0.302305,
		30.189922, 39.441463, 27.946205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610800, 40.063564, 28.054853>,  <29.535261, 39.312469, 28.157818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610800, 40.063564, 28.054853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.904768, 39.896374, 27.841242>,  <30.081148, 39.796059, 27.713074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.904768, 39.896374, 27.841242>,  <29.610800, 40.063564, 28.054853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904768, 39.896374, 27.841242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291333, 0.516513, -0.805195,
		0.612389, 0.747333, 0.257824,
		0.734918, -0.417980, -0.534030,
		30.125244, 39.770981, 27.681032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785904, 40.623287, 27.571621>,  <29.610800, 40.063564, 28.054853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785904, 40.623287, 27.571621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.973240, 40.300327, 27.428089>,  <30.085642, 40.106552, 27.341970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.973240, 40.300327, 27.428089>,  <29.785904, 40.623287, 27.571621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973240, 40.300327, 27.428089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072854, 0.369453, -0.926389,
		0.880540, 0.460007, 0.114207,
		0.468340, -0.807402, -0.358831,
		30.113741, 40.058105, 27.320440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247738, 40.963825, 27.039932>,  <29.785904, 40.623287, 27.571621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247738, 40.963825, 27.039932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.222752, 40.571877, 26.964083>,  <30.207760, 40.336708, 26.918573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.222752, 40.571877, 26.964083>,  <30.247738, 40.963825, 27.039932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222752, 40.571877, 26.964083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114504, 0.195775, -0.973941,
		0.991457, -0.039126, -0.124428,
		-0.062466, -0.979868, -0.189623,
		30.204012, 40.277916, 26.907196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776058, 40.803764, 26.551115>,  <30.247738, 40.963825, 27.039932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776058, 40.803764, 26.551115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.483747, 40.530800, 26.544510>,  <30.308361, 40.367020, 26.540546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.483747, 40.530800, 26.544510>,  <30.776058, 40.803764, 26.551115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483747, 40.530800, 26.544510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115022, 0.146946, -0.982434,
		0.672855, -0.716042, -0.185878,
		-0.730778, -0.682415, -0.016513,
		30.264513, 40.326077, 26.539557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823658, 40.667191, 25.880928>,  <30.776058, 40.803764, 26.551115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823658, 40.667191, 25.880928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.473024, 40.512875, 25.996004>,  <30.262644, 40.420284, 26.065050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.473024, 40.512875, 25.996004>,  <30.823658, 40.667191, 25.880928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473024, 40.512875, 25.996004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336624, 0.064316, -0.939440,
		0.343928, -0.920340, -0.186246,
		-0.876583, -0.385795, 0.287689,
		30.210049, 40.397137, 26.082312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458744, 40.349815, 25.554350>,  <30.823658, 40.667191, 25.880928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458744, 40.349815, 25.554350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.742916, 40.496838, 25.314283>,  <31.913420, 40.585049, 25.170244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.742916, 40.496838, 25.314283>,  <31.458744, 40.349815, 25.554350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742916, 40.496838, 25.314283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551179, 0.239673, 0.799223,
		0.437601, -0.898588, -0.032317,
		0.710428, 0.367554, -0.600165,
		31.956045, 40.607101, 25.134233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002480, 40.098621, 25.837749>,  <31.458744, 40.349815, 25.554350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002480, 40.098621, 25.837749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.149052, 40.389961, 25.606150>,  <32.236996, 40.564766, 25.467190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.149052, 40.389961, 25.606150>,  <32.002480, 40.098621, 25.837749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149052, 40.389961, 25.606150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667575, 0.227672, 0.708878,
		0.648132, -0.646279, -0.402801,
		0.366427, 0.728346, -0.579002,
		32.258980, 40.608463, 25.432449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707134, 39.920372, 25.678026>,  <32.002480, 40.098621, 25.837749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707134, 39.920372, 25.678026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.634117, 40.312954, 25.654621>,  <32.590305, 40.548504, 25.640577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.634117, 40.312954, 25.654621>,  <32.707134, 39.920372, 25.678026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634117, 40.312954, 25.654621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674612, 0.168321, 0.718725,
		0.715246, 0.091726, -0.692828,
		-0.182543, 0.981455, -0.058512,
		32.579353, 40.607391, 25.637068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364136, 40.090714, 25.812170>,  <32.707134, 39.920372, 25.678026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364136, 40.090714, 25.812170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129780, 40.402470, 25.900965>,  <32.989166, 40.589523, 25.954241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129780, 40.402470, 25.900965>,  <33.364136, 40.090714, 25.812170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129780, 40.402470, 25.900965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550253, 0.181502, 0.815033,
		0.594940, 0.599670, -0.535203,
		-0.585891, 0.779393, 0.221987,
		32.954014, 40.636288, 25.967562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776459, 40.616207, 25.985777>,  <33.364136, 40.090714, 25.812170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776459, 40.616207, 25.985777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.459496, 40.793346, 26.153578>,  <33.269318, 40.899632, 26.254259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.459496, 40.793346, 26.153578>,  <33.776459, 40.616207, 25.985777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459496, 40.793346, 26.153578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565208, 0.274372, 0.777985,
		0.229429, 0.853585, -0.467714,
		-0.792403, 0.442847, 0.419504,
		33.221775, 40.926201, 26.279428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
