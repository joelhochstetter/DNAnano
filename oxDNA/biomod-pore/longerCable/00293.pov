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
	<24.126268, 34.891884, 34.337048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.225573, 34.908474, 34.724171>,  <24.285156, 34.918427, 34.956444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.225573, 34.908474, 34.724171>,  <24.126268, 34.891884, 34.337048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.225573, 34.908474, 34.724171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862095, -0.465086, -0.201213,
		0.441766, 0.884294, -0.151220,
		0.248262, 0.041477, 0.967805,
		24.300051, 34.920918, 35.014511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.664013, 35.497131, 34.484196>,  <24.126268, 34.891884, 34.337048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.664013, 35.497131, 34.484196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.743732, 35.146275, 34.309422>,  <24.791563, 34.935760, 34.204559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.743732, 35.146275, 34.309422>,  <24.664013, 35.497131, 34.484196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.743732, 35.146275, 34.309422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840279, -0.382377, 0.384343,
		-0.504194, 0.290546, -0.813247,
		0.199298, -0.877138, -0.436932,
		24.803522, 34.883133, 34.178341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.792507, 34.847446, 34.712524>,  <24.664013, 35.497131, 34.484196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.792507, 34.847446, 34.712524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046148, 34.699894, 34.984360>,  <25.198332, 34.611362, 35.147461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046148, 34.699894, 34.984360>,  <24.792507, 34.847446, 34.712524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.046148, 34.699894, 34.984360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328895, -0.924077, -0.194705,
		0.699817, -0.100051, -0.707281,
		0.634102, -0.368879, 0.679591,
		25.236380, 34.589230, 35.188236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.274961, 34.318756, 34.345165>,  <24.792507, 34.847446, 34.712524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.274961, 34.318756, 34.345165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254328, 34.241879, 34.737164>,  <25.241947, 34.195751, 34.972363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254328, 34.241879, 34.737164>,  <25.274961, 34.318756, 34.345165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.254328, 34.241879, 34.737164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233355, -0.951821, -0.198953,
		0.971022, -0.238951, 0.004251,
		-0.051587, -0.192195, 0.980000,
		25.238852, 34.184219, 35.031162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.802580, 33.765575, 34.486485>,  <25.274961, 34.318756, 34.345165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.802580, 33.765575, 34.486485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550201, 33.760979, 34.796780>,  <25.398773, 33.758221, 34.982956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550201, 33.760979, 34.796780>,  <25.802580, 33.765575, 34.486485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.550201, 33.760979, 34.796780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227649, -0.953134, -0.199279,
		0.741674, -0.302331, 0.598762,
		-0.630948, -0.011492, 0.775740,
		25.360916, 33.757530, 35.029503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067331, 33.139221, 34.848934>,  <25.802580, 33.765575, 34.486485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067331, 33.139221, 34.848934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.709009, 33.241043, 34.994663>,  <25.494015, 33.302135, 35.082100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.709009, 33.241043, 34.994663>,  <26.067331, 33.139221, 34.848934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.709009, 33.241043, 34.994663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257322, -0.965420, 0.041832,
		0.362373, -0.056275, 0.930332,
		-0.895807, 0.254554, 0.364323,
		25.440268, 33.317410, 35.103962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.972843, 32.809746, 35.454788>,  <26.067331, 33.139221, 34.848934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.972843, 32.809746, 35.454788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619152, 32.869030, 35.277622>,  <25.406937, 32.904602, 35.171322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619152, 32.869030, 35.277622>,  <25.972843, 32.809746, 35.454788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.619152, 32.869030, 35.277622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150127, -0.988182, -0.030962,
		-0.442270, 0.039117, 0.896028,
		-0.884228, 0.148212, -0.442916,
		25.353884, 32.913494, 35.144749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.491020, 32.445053, 35.839642>,  <25.972843, 32.809746, 35.454788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.491020, 32.445053, 35.839642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439157, 32.474228, 35.444092>,  <25.408039, 32.491734, 35.206764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439157, 32.474228, 35.444092>,  <25.491020, 32.445053, 35.839642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.439157, 32.474228, 35.444092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138833, -0.986131, -0.090943,
		-0.981791, -0.149079, 0.117732,
		-0.129657, 0.072942, -0.988872,
		25.400261, 32.496109, 35.147430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.863976, 32.095837, 35.647087>,  <25.491020, 32.445053, 35.839642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.863976, 32.095837, 35.647087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.153685, 32.070496, 35.372448>,  <25.327511, 32.055290, 35.207664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.153685, 32.070496, 35.372448>,  <24.863976, 32.095837, 35.647087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.153685, 32.070496, 35.372448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021747, -0.993177, 0.114575,
		-0.689170, -0.097914, -0.717953,
		0.724273, -0.063348, -0.686597,
		25.370966, 32.051491, 35.166470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.617819, 31.575258, 35.122440>,  <24.863976, 32.095837, 35.647087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.617819, 31.575258, 35.122440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016081, 31.585140, 35.086529>,  <25.255037, 31.591068, 35.064980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016081, 31.585140, 35.086529>,  <24.617819, 31.575258, 35.122440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.016081, 31.585140, 35.086529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023979, -0.999671, -0.009133,
		-0.089978, 0.006940, -0.995920,
		0.995655, 0.024703, -0.089782,
		25.314777, 31.592550, 35.059593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.754850, 30.922909, 34.760746>,  <24.617819, 31.575258, 35.122440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.754850, 30.922909, 34.760746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105282, 31.044468, 34.910484>,  <25.315540, 31.117403, 35.000328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105282, 31.044468, 34.910484>,  <24.754850, 30.922909, 34.760746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.105282, 31.044468, 34.910484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270778, -0.952475, 0.139535,
		0.398961, -0.020879, -0.916730,
		0.876077, 0.303899, 0.374347,
		25.368105, 31.135637, 35.022789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.379511, 30.593267, 34.517063>,  <24.754850, 30.922909, 34.760746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.379511, 30.593267, 34.517063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.473967, 30.714792, 34.886265>,  <25.530640, 30.787706, 35.107784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.473967, 30.714792, 34.886265>,  <25.379511, 30.593267, 34.517063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.473967, 30.714792, 34.886265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463206, -0.870196, 0.167923,
		0.854212, 0.387889, -0.346215,
		0.236140, 0.303810, 0.923005,
		25.544809, 30.805935, 35.163166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.087971, 30.275116, 34.659988>,  <25.379511, 30.593267, 34.517063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.087971, 30.275116, 34.659988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885128, 30.319807, 35.001835>,  <25.763422, 30.346621, 35.206944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885128, 30.319807, 35.001835>,  <26.087971, 30.275116, 34.659988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.885128, 30.319807, 35.001835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394866, -0.851262, 0.345591,
		0.766111, 0.512708, 0.387562,
		-0.507105, 0.111726, 0.854612,
		25.732996, 30.353325, 35.258217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570518, 30.152779, 35.440506>,  <26.087971, 30.275116, 34.659988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570518, 30.152779, 35.440506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189831, 30.043104, 35.385288>,  <25.961418, 29.977301, 35.352158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189831, 30.043104, 35.385288>,  <26.570518, 30.152779, 35.440506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.189831, 30.043104, 35.385288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252469, -0.954931, 0.156098,
		-0.174625, 0.113709, 0.978047,
		-0.951717, -0.274185, -0.138047,
		25.904316, 29.960848, 35.343876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319351, 30.773365, 35.809250>,  <26.570518, 30.152779, 35.440506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319351, 30.773365, 35.809250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147091, 30.777412, 35.448265>,  <26.043736, 30.779840, 35.231674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147091, 30.777412, 35.448265>,  <26.319351, 30.773365, 35.809250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.147091, 30.777412, 35.448265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258803, 0.956559, 0.134223,
		0.864616, 0.291363, -0.409325,
		-0.430651, 0.010117, -0.902462,
		26.017895, 30.780447, 35.177528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573837, 31.293886, 35.339108>,  <26.319351, 30.773365, 35.809250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573837, 31.293886, 35.339108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206520, 31.271646, 35.182316>,  <25.986130, 31.258303, 35.088242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206520, 31.271646, 35.182316>,  <26.573837, 31.293886, 35.339108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206520, 31.271646, 35.182316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059871, 0.998205, -0.001330,
		0.391347, 0.022247, -0.919974,
		-0.918294, -0.055600, -0.391976,
		25.931032, 31.254967, 35.064724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596424, 31.724216, 34.840397>,  <26.573837, 31.293886, 35.339108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596424, 31.724216, 34.840397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205982, 31.682770, 34.916798>,  <25.971718, 31.657902, 34.962639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205982, 31.682770, 34.916798>,  <26.596424, 31.724216, 34.840397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205982, 31.682770, 34.916798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125214, 0.986591, -0.104685,
		-0.177596, -0.126100, -0.975991,
		-0.976105, -0.103616, 0.191004,
		25.913151, 31.651686, 34.974098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284048, 32.170639, 34.306179>,  <26.596424, 31.724216, 34.840397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284048, 32.170639, 34.306179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000042, 32.104862, 34.580067>,  <25.829639, 32.065395, 34.744400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000042, 32.104862, 34.580067>,  <26.284048, 32.170639, 34.306179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.000042, 32.104862, 34.580067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361918, 0.919317, -0.154504,
		-0.604066, -0.357512, -0.712242,
		-0.710014, -0.164443, 0.684718,
		25.787039, 32.055531, 34.785480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.534294, 31.988220, 34.321613>,  <26.284048, 32.170639, 34.306179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.534294, 31.988220, 34.321613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179996, 31.950512, 34.503414>,  <24.967417, 31.927887, 34.612495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179996, 31.950512, 34.503414>,  <25.534294, 31.988220, 34.321613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.179996, 31.950512, 34.503414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102495, 0.994712, 0.006568,
		-0.452713, -0.040766, -0.890724,
		-0.885746, -0.094269, 0.454498,
		24.914272, 31.922232, 34.639763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.908829, 32.171089, 34.044476>,  <25.534294, 31.988220, 34.321613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.908829, 32.171089, 34.044476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.856840, 32.229424, 34.436768>,  <24.825647, 32.264423, 34.672142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.856840, 32.229424, 34.436768>,  <24.908829, 32.171089, 34.044476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.856840, 32.229424, 34.436768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042018, 0.987426, -0.152399,
		-0.990627, -0.061016, -0.122208,
		-0.129970, 0.145835, 0.980734,
		24.817848, 32.273174, 34.730988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.554287, 32.707691, 34.097767>,  <24.908829, 32.171089, 34.044476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.554287, 32.707691, 34.097767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.697449, 32.695831, 34.471081>,  <24.783346, 32.688713, 34.695068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.697449, 32.695831, 34.471081>,  <24.554287, 32.707691, 34.097767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.697449, 32.695831, 34.471081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017035, 0.999122, 0.038276,
		-0.933603, -0.029597, 0.357085,
		0.357904, -0.029652, 0.933287,
		24.804819, 32.686935, 34.751068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.213493, 33.242085, 34.554363>,  <24.554287, 32.707691, 34.097767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.213493, 33.242085, 34.554363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.548090, 33.155231, 34.755611>,  <24.748848, 33.103119, 34.876362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.548090, 33.155231, 34.755611>,  <24.213493, 33.242085, 34.554363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.548090, 33.155231, 34.755611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145491, 0.973195, 0.178111,
		-0.528311, -0.075789, 0.845662,
		0.836493, -0.217134, 0.503123,
		24.799038, 33.090092, 34.906548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.699986, 33.754494, 34.717896>,  <24.213493, 33.242085, 34.554363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.699986, 33.754494, 34.717896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.573818, 33.911564, 34.372337>,  <24.498117, 34.005806, 34.165001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.573818, 33.911564, 34.372337>,  <24.699986, 33.754494, 34.717896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.573818, 33.911564, 34.372337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926410, -0.324670, 0.190668,
		-0.205610, 0.860462, 0.466186,
		-0.315420, 0.392676, -0.863896,
		24.479193, 34.029366, 34.113167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.266716, 33.576271, 35.420139>,  <24.699986, 33.754494, 34.717896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.266716, 33.576271, 35.420139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.649965, 33.472900, 35.370792>,  <24.879915, 33.410877, 35.341187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.649965, 33.472900, 35.370792>,  <24.266716, 33.576271, 35.420139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.649965, 33.472900, 35.370792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283112, 0.919540, 0.272568,
		0.043000, -0.296080, 0.954195,
		0.958123, -0.258424, -0.123364,
		24.937403, 33.395374, 35.333782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.593197, 33.791691, 36.052937>,  <24.266716, 33.576271, 35.420139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.593197, 33.791691, 36.052937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.837337, 33.774616, 35.736546>,  <24.983822, 33.764370, 35.546711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.837337, 33.774616, 35.736546>,  <24.593197, 33.791691, 36.052937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.837337, 33.774616, 35.736546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335834, 0.918308, 0.209587,
		0.717415, -0.393560, 0.574828,
		0.610354, -0.042686, -0.790978,
		25.020443, 33.761810, 35.499252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.268187, 33.911575, 36.304523>,  <24.593197, 33.791691, 36.052937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.268187, 33.911575, 36.304523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270882, 33.990311, 35.912357>,  <25.272499, 34.037552, 35.677059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270882, 33.990311, 35.912357>,  <25.268187, 33.911575, 36.304523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.270882, 33.990311, 35.912357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523319, 0.834764, 0.171191,
		0.852110, -0.514223, -0.097384,
		0.006738, 0.196837, -0.980413,
		25.272903, 34.049362, 35.618233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941082, 33.918884, 36.092884>,  <25.268187, 33.911575, 36.304523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941082, 33.918884, 36.092884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741282, 34.127563, 35.816238>,  <25.621401, 34.252769, 35.650249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741282, 34.127563, 35.816238>,  <25.941082, 33.918884, 36.092884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.741282, 34.127563, 35.816238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493142, 0.827603, 0.268111,
		0.712257, -0.207144, -0.670657,
		-0.499500, 0.521694, -0.691618,
		25.591431, 34.284073, 35.608753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356491, 34.316689, 35.625042>,  <25.941082, 33.918884, 36.092884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.356491, 34.316689, 35.625042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020494, 34.532982, 35.607063>,  <25.818897, 34.662758, 35.596275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020494, 34.532982, 35.607063>,  <26.356491, 34.316689, 35.625042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020494, 34.532982, 35.607063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538641, 0.840983, 0.051125,
		0.065446, 0.018733, -0.997680,
		-0.839990, 0.540737, -0.044949,
		25.768497, 34.695202, 35.593578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.904234, 34.813145, 35.390537>,  <26.356491, 34.316689, 35.625042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.904234, 34.813145, 35.390537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519407, 34.921497, 35.377575>,  <26.288511, 34.986507, 35.369797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519407, 34.921497, 35.377575>,  <26.904234, 34.813145, 35.390537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519407, 34.921497, 35.377575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261484, 0.881722, -0.392673,
		-0.077798, -0.386250, -0.919107,
		-0.962067, 0.270881, -0.032402,
		26.230787, 35.002762, 35.367855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773329, 35.018425, 34.703785>,  <26.904234, 34.813145, 35.390537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773329, 35.018425, 34.703785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552460, 35.192001, 34.988544>,  <26.419937, 35.296146, 35.159401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552460, 35.192001, 34.988544>,  <26.773329, 35.018425, 34.703785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552460, 35.192001, 34.988544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338704, 0.896992, -0.284051,
		-0.761829, 0.084277, -0.642273,
		-0.552174, 0.433939, 0.711899,
		26.386806, 35.322182, 35.202114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.329969, 35.659580, 34.741665>,  <26.773329, 35.018425, 34.703785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.329969, 35.659580, 34.741665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422983, 35.963692, 34.499046>,  <26.478790, 36.146160, 34.353474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422983, 35.963692, 34.499046>,  <26.329969, 35.659580, 34.741665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422983, 35.963692, 34.499046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013449, -0.626098, -0.779628,
		-0.972496, 0.173131, -0.155813,
		0.232532, 0.760280, -0.606550,
		26.492743, 36.191776, 34.317081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.826864, 35.956551, 34.169380>,  <26.329969, 35.659580, 34.741665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.826864, 35.956551, 34.169380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204727, 35.986847, 34.041702>,  <26.431446, 36.005024, 33.965096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204727, 35.986847, 34.041702>,  <25.826864, 35.956551, 34.169380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204727, 35.986847, 34.041702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187673, -0.673266, -0.715187,
		-0.269071, 0.735511, -0.621791,
		0.944659, 0.075743, -0.319191,
		26.488125, 36.009571, 33.945946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912695, 36.243809, 33.406532>,  <25.826864, 35.956551, 34.169380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912695, 36.243809, 33.406532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180614, 35.977833, 33.538731>,  <26.341366, 35.818249, 33.618050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180614, 35.977833, 33.538731>,  <25.912695, 36.243809, 33.406532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180614, 35.977833, 33.538731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130639, -0.543666, -0.829072,
		0.730961, 0.512135, -0.451013,
		0.669797, -0.664940, 0.330494,
		26.381554, 35.778351, 33.637878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.351521, 36.106396, 32.842449>,  <25.912695, 36.243809, 33.406532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.351521, 36.106396, 32.842449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405581, 35.789223, 33.080101>,  <26.438017, 35.598919, 33.222691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405581, 35.789223, 33.080101>,  <26.351521, 36.106396, 32.842449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405581, 35.789223, 33.080101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218453, -0.608723, -0.762716,
		0.966443, -0.026708, -0.255488,
		0.135150, -0.792933, 0.594131,
		26.446125, 35.551342, 33.258339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812702, 35.755737, 32.461830>,  <26.351521, 36.106396, 32.842449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812702, 35.755737, 32.461830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618645, 35.522697, 32.722664>,  <26.502211, 35.382874, 32.879162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618645, 35.522697, 32.722664>,  <26.812702, 35.755737, 32.461830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618645, 35.522697, 32.722664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109184, -0.780242, -0.615874,
		0.867591, -0.227591, 0.442140,
		-0.485144, -0.582602, 0.652082,
		26.473103, 35.347916, 32.918289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507736, 35.548115, 32.775940>,  <26.812702, 35.755737, 32.461830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507736, 35.548115, 32.775940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302620, 35.248734, 32.944164>,  <27.179550, 35.069107, 33.045097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302620, 35.248734, 32.944164>,  <27.507736, 35.548115, 32.775940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302620, 35.248734, 32.944164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125197, -0.549822, -0.825846,
		0.849335, -0.370834, 0.375647,
		-0.512791, -0.748450, 0.420556,
		27.148783, 35.024197, 33.070332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811550, 34.887741, 32.581646>,  <27.507736, 35.548115, 32.775940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811550, 34.887741, 32.581646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439949, 34.804653, 32.704155>,  <27.216988, 34.754799, 32.777660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439949, 34.804653, 32.704155>,  <27.811550, 34.887741, 32.581646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439949, 34.804653, 32.704155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128437, -0.595185, -0.793258,
		0.347066, -0.776277, 0.526250,
		-0.929004, -0.207723, 0.306271,
		27.161247, 34.742336, 32.796036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698690, 34.134464, 32.691719>,  <27.811550, 34.887741, 32.581646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698690, 34.134464, 32.691719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340677, 34.299488, 32.623940>,  <27.125870, 34.398502, 32.583271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340677, 34.299488, 32.623940>,  <27.698690, 34.134464, 32.691719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340677, 34.299488, 32.623940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159608, -0.651052, -0.742062,
		-0.416462, -0.637125, 0.648561,
		-0.895033, 0.412556, -0.169448,
		27.072166, 34.423256, 32.573105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129608, 33.664551, 32.616077>,  <27.698690, 34.134464, 32.691719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129608, 33.664551, 32.616077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011272, 33.988129, 32.412868>,  <26.940271, 34.182278, 32.290943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011272, 33.988129, 32.412868>,  <27.129608, 33.664551, 32.616077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011272, 33.988129, 32.412868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124708, -0.559980, -0.819067,
		-0.947062, -0.178959, 0.266548,
		-0.295841, 0.808947, -0.508018,
		26.922520, 34.230812, 32.260464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.571102, 33.468369, 32.227139>,  <27.129608, 33.664551, 32.616077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.571102, 33.468369, 32.227139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736544, 33.785755, 32.048546>,  <26.835808, 33.976189, 31.941391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736544, 33.785755, 32.048546>,  <26.571102, 33.468369, 32.227139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736544, 33.785755, 32.048546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071430, -0.460598, -0.884730,
		-0.907651, 0.397818, -0.133827,
		0.413602, 0.793467, -0.446479,
		26.860624, 34.023796, 31.914602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023504, 33.784870, 31.744942>,  <26.571102, 33.468369, 32.227139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023504, 33.784870, 31.744942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407148, 33.818188, 31.636744>,  <26.637335, 33.838177, 31.571825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407148, 33.818188, 31.636744>,  <26.023504, 33.784870, 31.744942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.407148, 33.818188, 31.636744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195520, -0.496030, -0.846006,
		-0.204638, 0.864301, -0.459464,
		0.959112, 0.083290, -0.270495,
		26.694881, 33.843174, 31.555595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.729914, 34.226322, 31.352278>,  <26.023504, 33.784870, 31.744942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.729914, 34.226322, 31.352278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.044516, 33.986034, 31.294939>,  <26.233276, 33.841862, 31.260536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.044516, 33.986034, 31.294939>,  <25.729914, 34.226322, 31.352278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.044516, 33.986034, 31.294939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398317, -0.316029, -0.861086,
		0.471972, 0.734343, -0.487835,
		0.786502, -0.600721, -0.143345,
		26.280466, 33.805817, 31.251936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393711, 34.762592, 31.803400>,  <25.729914, 34.226322, 31.352278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393711, 34.762592, 31.803400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.085247, 34.776451, 31.549120>,  <24.900169, 34.784767, 31.396553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.085247, 34.776451, 31.549120>,  <25.393711, 34.762592, 31.803400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.085247, 34.776451, 31.549120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615649, 0.213722, 0.758485,
		0.162143, 0.976280, -0.143482,
		-0.771159, 0.034648, -0.635699,
		24.853899, 34.786846, 31.358410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.868637, 34.789482, 32.432293>,  <25.393711, 34.762592, 31.803400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.868637, 34.789482, 32.432293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245502, 34.672085, 32.497028>,  <26.471621, 34.601646, 32.535870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245502, 34.672085, 32.497028>,  <25.868637, 34.789482, 32.432293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245502, 34.672085, 32.497028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106668, 0.720355, 0.685354,
		-0.317730, -0.628451, 0.709998,
		0.942162, -0.293491, 0.161843,
		26.528151, 34.584038, 32.545582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899462, 34.718727, 33.104481>,  <25.868637, 34.789482, 32.432293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899462, 34.718727, 33.104481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.287266, 34.725113, 33.006664>,  <26.519947, 34.728947, 32.947975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.287266, 34.725113, 33.006664>,  <25.899462, 34.718727, 33.104481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.287266, 34.725113, 33.006664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184689, 0.608272, 0.771942,
		0.161071, -0.793568, 0.586776,
		0.969508, 0.015967, -0.244538,
		26.578117, 34.729904, 32.933304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346596, 34.449421, 33.598301>,  <25.899462, 34.718727, 33.104481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346596, 34.449421, 33.598301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505850, 34.729042, 33.360710>,  <26.601402, 34.896816, 33.218155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505850, 34.729042, 33.360710>,  <26.346596, 34.449421, 33.598301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505850, 34.729042, 33.360710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021498, 0.640223, 0.767888,
		0.917074, -0.318494, 0.239868,
		0.398137, 0.699054, -0.593979,
		26.625292, 34.938759, 33.182518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941330, 34.566135, 33.935421>,  <26.346596, 34.449421, 33.598301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941330, 34.566135, 33.935421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.830597, 34.887703, 33.724869>,  <26.764156, 35.080643, 33.598537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.830597, 34.887703, 33.724869>,  <26.941330, 34.566135, 33.935421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.830597, 34.887703, 33.724869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088670, 0.566823, 0.819054,
		0.956818, 0.180067, -0.228199,
		-0.276833, 0.803920, -0.526380,
		26.747547, 35.128880, 33.566956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352894, 35.027828, 34.072926>,  <26.941330, 34.566135, 33.935421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352894, 35.027828, 34.072926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048283, 35.254253, 33.946659>,  <26.865517, 35.390110, 33.870899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048283, 35.254253, 33.946659>,  <27.352894, 35.027828, 34.072926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048283, 35.254253, 33.946659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132889, 0.613065, 0.778776,
		0.634362, 0.551111, -0.542089,
		-0.761528, 0.566064, -0.315669,
		26.819824, 35.424072, 33.851959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.642900, 35.675983, 33.956341>,  <27.352894, 35.027828, 34.072926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.642900, 35.675983, 33.956341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256113, 35.686211, 34.057785>,  <27.024040, 35.692348, 34.118652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256113, 35.686211, 34.057785>,  <27.642900, 35.675983, 33.956341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256113, 35.686211, 34.057785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209441, 0.646808, 0.733330,
		-0.145288, 0.762224, -0.630798,
		-0.966967, 0.025571, 0.253614,
		26.966022, 35.693882, 34.133869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368618, 36.368454, 33.974823>,  <27.642900, 35.675983, 33.956341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368618, 36.368454, 33.974823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205633, 36.116283, 34.239105>,  <27.107841, 35.964981, 34.397675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205633, 36.116283, 34.239105>,  <27.368618, 36.368454, 33.974823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.205633, 36.116283, 34.239105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334353, 0.570267, 0.750336,
		-0.849813, 0.526642, -0.021576,
		-0.407463, -0.630431, 0.660705,
		27.083395, 35.927155, 34.437317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843946, 36.678577, 34.489117>,  <27.368618, 36.368454, 33.974823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843946, 36.678577, 34.489117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096111, 36.382500, 34.582664>,  <27.247410, 36.204853, 34.638794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096111, 36.382500, 34.582664>,  <26.843946, 36.678577, 34.489117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096111, 36.382500, 34.582664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445528, 0.591727, 0.671836,
		-0.635675, -0.319338, 0.702808,
		0.630414, -0.740191, 0.233872,
		27.285236, 36.160442, 34.652824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770004, 36.306431, 35.059963>,  <26.843946, 36.678577, 34.489117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770004, 36.306431, 35.059963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165354, 36.279827, 35.005276>,  <27.402563, 36.263866, 34.972462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165354, 36.279827, 35.005276>,  <26.770004, 36.306431, 35.059963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165354, 36.279827, 35.005276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151760, 0.485967, 0.860700,
		0.009195, -0.871443, 0.490411,
		0.988374, -0.066511, -0.136719,
		27.461866, 36.259872, 34.964260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187693, 35.984638, 35.598385>,  <26.770004, 36.306431, 35.059963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187693, 35.984638, 35.598385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.398224, 36.274372, 35.420254>,  <27.524542, 36.448212, 35.313377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.398224, 36.274372, 35.420254>,  <27.187693, 35.984638, 35.598385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398224, 36.274372, 35.420254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092879, 0.471627, 0.876893,
		0.845194, -0.502894, 0.180954,
		0.526327, 0.724338, -0.445324,
		27.556122, 36.491673, 35.286655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722412, 35.446671, 35.922516>,  <27.187693, 35.984638, 35.598385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722412, 35.446671, 35.922516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079916, 35.273743, 35.874695>,  <28.294418, 35.169987, 35.846004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079916, 35.273743, 35.874695>,  <27.722412, 35.446671, 35.922516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079916, 35.273743, 35.874695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448214, -0.850572, -0.275011,
		0.017207, 0.299378, -0.953980,
		0.893760, -0.432320, -0.119549,
		28.348043, 35.144047, 35.838829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664112, 34.928593, 35.307873>,  <27.722412, 35.446671, 35.922516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.664112, 34.928593, 35.307873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982525, 34.791283, 35.507271>,  <28.173573, 34.708897, 35.626911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982525, 34.791283, 35.507271>,  <27.664112, 34.928593, 35.307873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982525, 34.791283, 35.507271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243492, -0.935651, -0.255478,
		0.554118, 0.081988, -0.828391,
		0.796030, -0.343272, 0.498498,
		28.221334, 34.688301, 35.656818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992392, 34.320812, 34.968616>,  <27.664112, 34.928593, 35.307873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.992392, 34.320812, 34.968616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140301, 34.286877, 35.338711>,  <28.229046, 34.266514, 35.560768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140301, 34.286877, 35.338711>,  <27.992392, 34.320812, 34.968616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140301, 34.286877, 35.338711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177026, -0.984013, -0.019484,
		0.912102, -0.156587, -0.378881,
		0.369772, -0.084843, 0.925240,
		28.251232, 34.261425, 35.616283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290070, 33.636127, 34.897263>,  <27.992392, 34.320812, 34.968616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290070, 33.636127, 34.897263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241768, 33.716877, 35.286037>,  <28.212788, 33.765327, 35.519302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241768, 33.716877, 35.286037>,  <28.290070, 33.636127, 34.897263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241768, 33.716877, 35.286037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221770, -0.959844, 0.171809,
		0.967593, -0.194800, 0.160673,
		-0.120753, 0.201873, 0.971939,
		28.205542, 33.777439, 35.577618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683208, 33.100494, 35.211834>,  <28.290070, 33.636127, 34.897263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683208, 33.100494, 35.211834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384922, 33.233044, 35.443039>,  <28.205950, 33.312572, 35.581760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384922, 33.233044, 35.443039>,  <28.683208, 33.100494, 35.211834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384922, 33.233044, 35.443039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398400, -0.917136, 0.011796,
		0.534024, -0.221484, 0.815943,
		-0.745719, 0.331371, 0.578012,
		28.161207, 33.332455, 35.616444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638124, 32.673046, 35.762043>,  <28.683208, 33.100494, 35.211834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638124, 32.673046, 35.762043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278595, 32.842976, 35.718891>,  <28.062878, 32.944935, 35.693001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278595, 32.842976, 35.718891>,  <28.638124, 32.673046, 35.762043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278595, 32.842976, 35.718891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436630, -0.889358, 0.135635,
		-0.038324, 0.169016, 0.984868,
		-0.898825, 0.424825, -0.107881,
		28.008947, 32.970425, 35.686527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184483, 32.368069, 36.280441>,  <28.638124, 32.673046, 35.762043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184483, 32.368069, 36.280441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957109, 32.492805, 35.975903>,  <27.820686, 32.567646, 35.793179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957109, 32.492805, 35.975903>,  <28.184483, 32.368069, 36.280441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957109, 32.492805, 35.975903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639127, -0.750088, 0.169955,
		-0.518075, 0.583203, 0.625678,
		-0.568432, 0.311838, -0.761342,
		27.786579, 32.586357, 35.747501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369274, 32.531227, 36.439392>,  <28.184483, 32.368069, 36.280441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369274, 32.531227, 36.439392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411839, 32.455692, 36.048901>,  <27.437378, 32.410370, 35.814606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411839, 32.455692, 36.048901>,  <27.369274, 32.531227, 36.439392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411839, 32.455692, 36.048901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852696, -0.522345, 0.008095,
		-0.511455, 0.831562, -0.216607,
		0.106412, -0.188840, -0.976225,
		27.443762, 32.399040, 35.756035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041796, 33.200436, 36.226460>,  <27.369274, 32.531227, 36.439392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041796, 33.200436, 36.226460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420166, 33.136154, 36.113747>,  <27.647188, 33.097584, 36.046120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420166, 33.136154, 36.113747>,  <27.041796, 33.200436, 36.226460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420166, 33.136154, 36.113747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164765, 0.986288, -0.009400,
		0.279425, -0.037536, 0.959433,
		0.945925, -0.160707, -0.281778,
		27.703943, 33.087940, 36.029213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313070, 33.837570, 36.369545>,  <27.041796, 33.200436, 36.226460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313070, 33.837570, 36.369545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.636406, 33.667854, 36.206295>,  <27.830408, 33.566025, 36.108345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.636406, 33.667854, 36.206295>,  <27.313070, 33.837570, 36.369545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636406, 33.667854, 36.206295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443021, 0.894947, -0.052936,
		0.387707, -0.138016, 0.911392,
		0.808341, -0.424289, -0.408121,
		27.878908, 33.540569, 36.083858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998190, 34.065960, 36.803543>,  <27.313070, 33.837570, 36.369545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998190, 34.065960, 36.803543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096901, 33.952675, 36.432838>,  <28.156128, 33.884705, 36.210415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096901, 33.952675, 36.432838>,  <27.998190, 34.065960, 36.803543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096901, 33.952675, 36.432838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563016, 0.820282, -0.100750,
		0.788743, -0.496921, 0.361876,
		0.246776, -0.283208, -0.926766,
		28.170933, 33.867714, 36.154808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763914, 34.107616, 36.772617>,  <27.998190, 34.065960, 36.803543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763914, 34.107616, 36.772617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624268, 34.134602, 36.398758>,  <28.540480, 34.150795, 36.174442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624268, 34.134602, 36.398758>,  <28.763914, 34.107616, 36.772617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624268, 34.134602, 36.398758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578105, 0.800488, -0.158155,
		0.737504, -0.595539, -0.318464,
		-0.349115, 0.067465, -0.934648,
		28.519533, 34.154842, 36.118362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291233, 34.277687, 36.310848>,  <28.763914, 34.107616, 36.772617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291233, 34.277687, 36.310848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974552, 34.410797, 36.105923>,  <28.784544, 34.490662, 35.982967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974552, 34.410797, 36.105923>,  <29.291233, 34.277687, 36.310848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974552, 34.410797, 36.105923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488974, 0.847896, -0.204883,
		0.366209, -0.412715, -0.834001,
		-0.791704, 0.332775, -0.512314,
		28.737041, 34.510628, 35.952229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586605, 34.580006, 35.837971>,  <29.291233, 34.277687, 36.310848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586605, 34.580006, 35.837971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220182, 34.739140, 35.858242>,  <29.000328, 34.834621, 35.870403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220182, 34.739140, 35.858242>,  <29.586605, 34.580006, 35.837971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220182, 34.739140, 35.858242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378343, 0.899179, -0.219852,
		-0.133033, -0.182223, -0.974216,
		-0.916056, 0.397835, 0.050678,
		28.945366, 34.858490, 35.873444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867561, 34.290134, 35.235081>,  <29.586605, 34.580006, 35.837971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867561, 34.290134, 35.235081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141874, 34.576599, 35.286957>,  <30.306463, 34.748478, 35.318081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141874, 34.576599, 35.286957>,  <29.867561, 34.290134, 35.235081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141874, 34.576599, 35.286957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427577, -0.252243, -0.868074,
		-0.588964, 0.650763, -0.479196,
		0.685784, 0.716157, 0.129689,
		30.347610, 34.791447, 35.325863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797483, 34.684380, 34.680161>,  <29.867561, 34.290134, 35.235081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797483, 34.684380, 34.680161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174412, 34.748287, 34.797806>,  <30.400570, 34.786633, 34.868393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174412, 34.748287, 34.797806>,  <29.797483, 34.684380, 34.680161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174412, 34.748287, 34.797806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307716, -0.067834, -0.949057,
		-0.131681, 0.984821, -0.113086,
		0.942322, 0.159771, 0.294112,
		30.457108, 34.796219, 34.886040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101833, 35.078606, 34.181602>,  <29.797483, 34.684380, 34.680161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101833, 35.078606, 34.181602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409939, 34.901928, 34.365604>,  <30.594801, 34.795921, 34.476006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409939, 34.901928, 34.365604>,  <30.101833, 35.078606, 34.181602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409939, 34.901928, 34.365604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527778, 0.036617, -0.848592,
		0.357975, 0.896418, 0.261321,
		0.770262, -0.441694, 0.460002,
		30.641018, 34.769421, 34.503605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591183, 35.408401, 33.891857>,  <30.101833, 35.078606, 34.181602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591183, 35.408401, 33.891857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778408, 35.084251, 34.032833>,  <30.890743, 34.889763, 34.117420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778408, 35.084251, 34.032833>,  <30.591183, 35.408401, 33.891857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778408, 35.084251, 34.032833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535482, -0.057175, -0.842609,
		0.702977, 0.583121, 0.407177,
		0.468063, -0.810370, 0.352444,
		30.918827, 34.841141, 34.138565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330601, 35.457268, 33.604919>,  <30.591183, 35.408401, 33.891857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330601, 35.457268, 33.604919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298357, 35.073547, 33.713169>,  <31.279011, 34.843315, 33.778118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298357, 35.073547, 33.713169>,  <31.330601, 35.457268, 33.604919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298357, 35.073547, 33.713169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574577, -0.266579, -0.773820,
		0.814471, 0.093115, 0.572683,
		-0.080611, -0.959305, 0.270623,
		31.274174, 34.785755, 33.794357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935402, 35.235111, 33.337769>,  <31.330601, 35.457268, 33.604919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935402, 35.235111, 33.337769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715181, 34.908016, 33.404942>,  <31.583050, 34.711758, 33.445244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715181, 34.908016, 33.404942>,  <31.935402, 35.235111, 33.337769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715181, 34.908016, 33.404942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432517, -0.451471, -0.780450,
		0.714020, -0.357042, 0.602243,
		-0.550549, -0.817737, 0.167933,
		31.550016, 34.662697, 33.455322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346428, 34.695236, 33.276928>,  <31.935402, 35.235111, 33.337769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346428, 34.695236, 33.276928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982456, 34.550762, 33.195374>,  <31.764072, 34.464077, 33.146442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982456, 34.550762, 33.195374>,  <32.346428, 34.695236, 33.276928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982456, 34.550762, 33.195374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330748, -0.335289, -0.882149,
		0.250260, -0.870130, 0.424551,
		-0.909932, -0.361186, -0.203885,
		31.709476, 34.442406, 33.134209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496845, 34.178474, 32.876987>,  <32.346428, 34.695236, 33.276928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496845, 34.178474, 32.876987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102818, 34.189213, 32.808975>,  <31.866400, 34.195656, 32.768169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102818, 34.189213, 32.808975>,  <32.496845, 34.178474, 32.876987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102818, 34.189213, 32.808975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131267, -0.521812, -0.842901,
		-0.111355, -0.852638, 0.510498,
		-0.985073, 0.026849, -0.170029,
		31.807295, 34.197269, 32.757965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371635, 33.649937, 32.414860>,  <32.496845, 34.178474, 32.876987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371635, 33.649937, 32.414860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030197, 33.851223, 32.360973>,  <31.825335, 33.971996, 32.328644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030197, 33.851223, 32.360973>,  <32.371635, 33.649937, 32.414860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030197, 33.851223, 32.360973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089826, -0.396901, -0.913455,
		-0.513138, -0.767618, 0.383995,
		-0.853593, 0.503221, -0.134713,
		31.774118, 34.002190, 32.320560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882164, 33.178417, 32.040188>,  <32.371635, 33.649937, 32.414860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882164, 33.178417, 32.040188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734247, 33.543827, 31.972391>,  <31.645496, 33.763073, 31.931713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734247, 33.543827, 31.972391>,  <31.882164, 33.178417, 32.040188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734247, 33.543827, 31.972391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147634, -0.237881, -0.960009,
		-0.917310, -0.329981, 0.222834,
		-0.369793, 0.913524, -0.169494,
		31.623310, 33.817883, 31.921543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293404, 33.024593, 31.695415>,  <31.882164, 33.178417, 32.040188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293404, 33.024593, 31.695415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391533, 33.402569, 31.608776>,  <31.450411, 33.629353, 31.556791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391533, 33.402569, 31.608776>,  <31.293404, 33.024593, 31.695415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391533, 33.402569, 31.608776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115629, -0.193312, -0.974300,
		-0.962521, 0.264064, 0.061838,
		0.245323, 0.944934, -0.216600,
		31.465130, 33.686050, 31.543797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745548, 33.259369, 31.193403>,  <31.293404, 33.024593, 31.695415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745548, 33.259369, 31.193403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076246, 33.481464, 31.157183>,  <31.274666, 33.614723, 31.135450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076246, 33.481464, 31.157183>,  <30.745548, 33.259369, 31.193403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076246, 33.481464, 31.157183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050419, -0.087183, -0.994916,
		-0.560310, 0.827109, -0.044084,
		0.826747, 0.555239, -0.090552,
		31.324270, 33.648037, 31.130016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565466, 33.719711, 30.628283>,  <30.745548, 33.259369, 31.193403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565466, 33.719711, 30.628283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963856, 33.742332, 30.656111>,  <31.202888, 33.755905, 30.672808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963856, 33.742332, 30.656111>,  <30.565466, 33.719711, 30.628283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963856, 33.742332, 30.656111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072220, -0.046208, -0.996318,
		-0.053126, 0.997330, -0.050105,
		0.995973, 0.056549, 0.069572,
		31.262648, 33.759296, 30.676983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790936, 34.293591, 30.220295>,  <30.565466, 33.719711, 30.628283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790936, 34.293591, 30.220295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128424, 34.082672, 30.260490>,  <31.330915, 33.956120, 30.284607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128424, 34.082672, 30.260490>,  <30.790936, 34.293591, 30.220295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128424, 34.082672, 30.260490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124252, 0.009725, -0.992203,
		0.522207, 0.849626, 0.073722,
		0.843719, -0.527295, 0.100489,
		31.381538, 33.924484, 30.290638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326933, 34.724491, 29.910749>,  <30.790936, 34.293591, 30.220295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326933, 34.724491, 29.910749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440262, 34.341076, 29.898489>,  <31.508259, 34.111027, 29.891132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440262, 34.341076, 29.898489>,  <31.326933, 34.724491, 29.910749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440262, 34.341076, 29.898489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284714, 0.114589, -0.951739,
		0.915787, 0.260922, 0.305374,
		0.283322, -0.958535, -0.030651,
		31.525259, 34.053516, 29.889294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952698, 34.791122, 29.625834>,  <31.326933, 34.724491, 29.910749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952698, 34.791122, 29.625834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862421, 34.403515, 29.585705>,  <31.808254, 34.170952, 29.561628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862421, 34.403515, 29.585705>,  <31.952698, 34.791122, 29.625834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862421, 34.403515, 29.585705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401554, 0.001290, -0.915835,
		0.887590, -0.246983, 0.388822,
		-0.225694, -0.969019, -0.100322,
		31.794712, 34.112808, 29.555609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542774, 34.605247, 29.329773>,  <31.952698, 34.791122, 29.625834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542774, 34.605247, 29.329773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265141, 34.323986, 29.268038>,  <32.098560, 34.155231, 29.230997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265141, 34.323986, 29.268038>,  <32.542774, 34.605247, 29.329773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265141, 34.323986, 29.268038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226295, -0.009588, -0.974012,
		0.683398, -0.710975, 0.165774,
		-0.694087, -0.703152, -0.154338,
		32.056915, 34.113041, 29.221737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835445, 34.147259, 28.879803>,  <32.542774, 34.605247, 29.329773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835445, 34.147259, 28.879803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445759, 34.078800, 28.820990>,  <32.211948, 34.037724, 28.785702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445759, 34.078800, 28.820990>,  <32.835445, 34.147259, 28.879803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445759, 34.078800, 28.820990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148417, 0.004749, -0.988913,
		0.169950, -0.985234, 0.020774,
		-0.974212, -0.171149, -0.147032,
		32.153496, 34.027454, 28.776880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831425, 33.549915, 28.332169>,  <32.835445, 34.147259, 28.879803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831425, 33.549915, 28.332169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462044, 33.703281, 28.326166>,  <32.240414, 33.795300, 28.322565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462044, 33.703281, 28.326166>,  <32.831425, 33.549915, 28.332169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462044, 33.703281, 28.326166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011972, -0.010301, -0.999875,
		-0.383522, -0.923519, 0.004923,
		-0.923454, 0.383415, -0.015007,
		32.185009, 33.818306, 28.321665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327972, 33.117424, 27.902269>,  <32.831425, 33.549915, 28.332169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327972, 33.117424, 27.902269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181564, 33.489624, 27.908043>,  <32.093719, 33.712944, 27.911507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181564, 33.489624, 27.908043>,  <32.327972, 33.117424, 27.902269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181564, 33.489624, 27.908043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094360, -0.021678, -0.995302,
		-0.925812, -0.365659, 0.095736,
		-0.366016, 0.930497, 0.014434,
		32.071758, 33.768772, 27.912373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645405, 33.129322, 27.594414>,  <32.327972, 33.117424, 27.902269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645405, 33.129322, 27.594414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772099, 33.508659, 27.587212>,  <31.848114, 33.736263, 27.582890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772099, 33.508659, 27.587212>,  <31.645405, 33.129322, 27.594414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772099, 33.508659, 27.587212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185652, 0.043367, -0.981658,
		-0.930169, 0.314266, 0.189798,
		0.316732, 0.948344, -0.018006,
		31.867119, 33.793163, 27.581810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161356, 33.396061, 27.192526>,  <31.645405, 33.129322, 27.594414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161356, 33.396061, 27.192526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451952, 33.670219, 27.172762>,  <31.626310, 33.834717, 27.160904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451952, 33.670219, 27.172762>,  <31.161356, 33.396061, 27.192526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451952, 33.670219, 27.172762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382703, 0.343829, -0.857508,
		-0.570746, 0.641881, 0.512092,
		0.726490, 0.685398, -0.049411,
		31.669899, 33.875839, 27.157938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890659, 33.897842, 26.798473>,  <31.161356, 33.396061, 27.192526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890659, 33.897842, 26.798473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280155, 33.988590, 26.790854>,  <31.513853, 34.043037, 26.786282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280155, 33.988590, 26.790854>,  <30.890659, 33.897842, 26.798473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280155, 33.988590, 26.790854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099362, 0.348190, -0.932143,
		-0.204843, 0.909557, 0.361589,
		0.973738, 0.226871, -0.019051,
		31.572277, 34.056652, 26.785137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852266, 34.529922, 26.460360>,  <30.890659, 33.897842, 26.798473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852266, 34.529922, 26.460360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219637, 34.373783, 26.434685>,  <31.440060, 34.280098, 26.419279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219637, 34.373783, 26.434685>,  <30.852266, 34.529922, 26.460360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219637, 34.373783, 26.434685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050824, 0.277340, -0.959427,
		0.392317, 0.877899, 0.274555,
		0.918425, -0.390353, -0.064187,
		31.495165, 34.256676, 26.415428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196476, 34.966045, 26.102123>,  <30.852266, 34.529922, 26.460360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196476, 34.966045, 26.102123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419022, 34.640442, 26.035383>,  <31.552549, 34.445080, 25.995338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419022, 34.640442, 26.035383>,  <31.196476, 34.966045, 26.102123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419022, 34.640442, 26.035383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221661, 0.338916, -0.914332,
		0.800826, 0.471719, 0.368996,
		0.556366, -0.814013, -0.166851,
		31.585932, 34.396236, 25.985329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892366, 35.166340, 25.754841>,  <31.196476, 34.966045, 26.102123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892366, 35.166340, 25.754841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824972, 34.779354, 25.679342>,  <31.784534, 34.547161, 25.634043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824972, 34.779354, 25.679342>,  <31.892366, 35.166340, 25.754841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824972, 34.779354, 25.679342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349000, 0.120528, -0.929340,
		0.921852, -0.222454, 0.317337,
		-0.168488, -0.967464, -0.188746,
		31.774426, 34.489117, 25.622719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479130, 34.934368, 25.328554>,  <31.892366, 35.166340, 25.754841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479130, 34.934368, 25.328554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189304, 34.666485, 25.263453>,  <32.015408, 34.505753, 25.224392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189304, 34.666485, 25.263453>,  <32.479130, 34.934368, 25.328554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189304, 34.666485, 25.263453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113612, 0.116855, -0.986629,
		0.679776, -0.733369, -0.008581,
		-0.724566, -0.669712, -0.162755,
		31.971935, 34.465572, 25.214626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758911, 34.534275, 24.927603>,  <32.479130, 34.934368, 25.328554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758911, 34.534275, 24.927603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367496, 34.483894, 24.862370>,  <32.132648, 34.453667, 24.823229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367496, 34.483894, 24.862370>,  <32.758911, 34.534275, 24.927603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367496, 34.483894, 24.862370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166333, -0.015653, -0.985945,
		0.121635, -0.991912, 0.036268,
		-0.978539, -0.125958, -0.163084,
		32.073936, 34.446106, 24.813444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619484, 33.913277, 24.517132>,  <32.758911, 34.534275, 24.927603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619484, 33.913277, 24.517132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302422, 34.147533, 24.449341>,  <32.112186, 34.288090, 24.408667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302422, 34.147533, 24.449341>,  <32.619484, 33.913277, 24.517132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302422, 34.147533, 24.449341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228347, 0.027436, -0.973193,
		-0.565295, -0.810104, -0.155478,
		-0.792653, 0.585644, -0.169475,
		32.064625, 34.323227, 24.398499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441391, 33.735336, 23.871704>,  <32.619484, 33.913277, 24.517132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441391, 33.735336, 23.871704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235672, 34.073757, 23.927843>,  <32.112240, 34.276810, 23.961527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235672, 34.073757, 23.927843>,  <32.441391, 33.735336, 23.871704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235672, 34.073757, 23.927843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278116, 0.319342, -0.905910,
		-0.811263, -0.426875, -0.399537,
		-0.514299, 0.846049, 0.140350,
		32.081383, 34.327572, 23.969948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100777, 33.913975, 23.176086>,  <32.441391, 33.735336, 23.871704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100777, 33.913975, 23.176086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066265, 34.262810, 23.368763>,  <32.045559, 34.472111, 23.484369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066265, 34.262810, 23.368763>,  <32.100777, 33.913975, 23.176086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066265, 34.262810, 23.368763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328468, 0.481360, -0.812651,
		-0.940566, 0.088110, -0.327981,
		-0.086274, 0.872083, 0.481692,
		32.040382, 34.524433, 23.513271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769815, 34.415054, 22.703604>,  <32.100777, 33.913975, 23.176086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769815, 34.415054, 22.703604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982126, 34.626144, 22.968866>,  <32.109512, 34.752800, 23.128025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982126, 34.626144, 22.968866>,  <31.769815, 34.415054, 22.703604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982126, 34.626144, 22.968866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455240, 0.482479, -0.748312,
		-0.714864, 0.699084, 0.015847,
		0.530779, 0.527727, 0.663158,
		32.141361, 34.784462, 23.167814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789700, 35.067314, 22.373520>,  <31.769815, 34.415054, 22.703604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789700, 35.067314, 22.373520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045410, 35.102295, 22.679115>,  <32.198837, 35.123283, 22.862473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045410, 35.102295, 22.679115>,  <31.789700, 35.067314, 22.373520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045410, 35.102295, 22.679115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562522, 0.624217, -0.542146,
		-0.524304, 0.776342, 0.349856,
		0.639277, 0.087448, 0.763988,
		32.237194, 35.128529, 22.908312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015106, 35.791439, 22.376009>,  <31.789700, 35.067314, 22.373520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015106, 35.791439, 22.376009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291592, 35.562561, 22.552565>,  <32.457481, 35.425236, 22.658497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291592, 35.562561, 22.552565>,  <32.015106, 35.791439, 22.376009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291592, 35.562561, 22.552565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719974, 0.597809, -0.352508,
		-0.062164, 0.561445, 0.825176,
		0.691212, -0.572191, 0.441388,
		32.498955, 35.390903, 22.684980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529221, 36.258064, 22.732653>,  <32.015106, 35.791439, 22.376009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529221, 36.258064, 22.732653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729012, 35.919216, 22.660093>,  <32.848885, 35.715908, 22.616558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729012, 35.919216, 22.660093>,  <32.529221, 36.258064, 22.732653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729012, 35.919216, 22.660093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746256, 0.527066, -0.406575,
		0.440028, 0.067705, 0.895428,
		0.499477, -0.847123, -0.181398,
		32.878853, 35.665081, 22.605673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224430, 36.398811, 22.842976>,  <32.529221, 36.258064, 22.732653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224430, 36.398811, 22.842976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227234, 36.066792, 22.619915>,  <33.228916, 35.867580, 22.486078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227234, 36.066792, 22.619915>,  <33.224430, 36.398811, 22.842976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227234, 36.066792, 22.619915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615509, 0.443085, -0.651785,
		0.788098, -0.338673, 0.514006,
		0.007006, -0.830046, -0.557651,
		33.229336, 35.817780, 22.452620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960793, 36.115791, 22.898731>,  <33.224430, 36.398811, 22.842976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960793, 36.115791, 22.898731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791485, 35.956383, 22.573273>,  <33.689899, 35.860737, 22.377996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791485, 35.956383, 22.573273>,  <33.960793, 36.115791, 22.898731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791485, 35.956383, 22.573273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707415, 0.415713, -0.571618,
		0.566048, -0.817533, 0.105965,
		-0.423266, -0.398525, -0.813648,
		33.664505, 35.836826, 22.329178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413975, 35.650558, 22.614466>,  <33.960793, 36.115791, 22.898731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413975, 35.650558, 22.614466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202820, 35.690956, 22.277151>,  <34.076126, 35.715195, 22.074762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202820, 35.690956, 22.277151>,  <34.413975, 35.650558, 22.614466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202820, 35.690956, 22.277151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675487, 0.651797, -0.344787,
		0.514833, -0.751639, -0.412294,
		-0.527888, 0.100991, -0.843288,
		34.044453, 35.721252, 22.024164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890133, 35.491734, 22.020180>,  <34.413975, 35.650558, 22.614466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890133, 35.491734, 22.020180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583466, 35.719078, 21.900723>,  <34.399467, 35.855484, 21.829048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583466, 35.719078, 21.900723>,  <34.890133, 35.491734, 22.020180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583466, 35.719078, 21.900723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640960, 0.704605, -0.304470,
		0.037374, -0.424844, -0.904495,
		-0.766664, 0.568365, -0.298642,
		34.353466, 35.889587, 21.811131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991833, 35.783779, 21.274864>,  <34.890133, 35.491734, 22.020180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991833, 35.783779, 21.274864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723091, 36.037762, 21.427412>,  <34.561848, 36.190151, 21.518942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723091, 36.037762, 21.427412>,  <34.991833, 35.783779, 21.274864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723091, 36.037762, 21.427412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609125, 0.766591, -0.203234,
		-0.421400, 0.095759, -0.901805,
		-0.671854, 0.634955, 0.381371,
		34.521534, 36.228249, 21.541822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103836, 36.453079, 20.797314>,  <34.991833, 35.783779, 21.274864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103836, 36.453079, 20.797314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862358, 36.581303, 21.089285>,  <34.717472, 36.658237, 21.264467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862358, 36.581303, 21.089285>,  <35.103836, 36.453079, 20.797314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862358, 36.581303, 21.089285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354664, 0.927993, -0.114210,
		-0.713979, 0.189931, -0.673914,
		-0.603695, 0.320556, 0.729929,
		34.681248, 36.677471, 21.308264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638859, 37.017864, 20.547165>,  <35.103836, 36.453079, 20.797314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638859, 37.017864, 20.547165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664486, 37.049797, 20.945065>,  <34.679863, 37.068958, 21.183804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664486, 37.049797, 20.945065>,  <34.638859, 37.017864, 20.547165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664486, 37.049797, 20.945065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340070, 0.935387, -0.096971,
		-0.938215, 0.344496, 0.032776,
		0.064064, 0.079833, 0.994747,
		34.683704, 37.073746, 21.243488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366890, 37.673580, 20.891796>,  <34.638859, 37.017864, 20.547165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366890, 37.673580, 20.891796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643311, 37.532665, 21.144251>,  <34.809162, 37.448116, 21.295723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643311, 37.532665, 21.144251>,  <34.366890, 37.673580, 20.891796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643311, 37.532665, 21.144251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194343, 0.931589, 0.307202,
		-0.696184, -0.089637, 0.712245,
		0.691056, -0.352289, 0.631137,
		34.850628, 37.426979, 21.333591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974533, 37.977886, 20.821913>,  <34.366890, 37.673580, 20.891796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974533, 37.977886, 20.821913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930851, 38.373047, 20.777868>,  <34.904644, 38.610142, 20.751442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930851, 38.373047, 20.777868>,  <34.974533, 37.977886, 20.821913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930851, 38.373047, 20.777868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139141, -0.124877, -0.982367,
		-0.984233, -0.091957, 0.151095,
		-0.109203, 0.987902, -0.110113,
		34.898090, 38.669418, 20.744835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415081, 37.999859, 20.257507>,  <34.974533, 37.977886, 20.821913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415081, 37.999859, 20.257507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602203, 38.352398, 20.284016>,  <34.714478, 38.563919, 20.299921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602203, 38.352398, 20.284016>,  <34.415081, 37.999859, 20.257507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602203, 38.352398, 20.284016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066418, 0.039715, -0.997001,
		-0.881333, 0.470804, -0.039958,
		0.467805, 0.881344, 0.066272,
		34.742546, 38.616802, 20.303898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134983, 38.392925, 19.684843>,  <34.415081, 37.999859, 20.257507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134983, 38.392925, 19.684843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474178, 38.589001, 19.765465>,  <34.677696, 38.706646, 19.813839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474178, 38.589001, 19.765465>,  <34.134983, 38.392925, 19.684843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474178, 38.589001, 19.765465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129129, 0.177748, -0.975567,
		-0.514039, 0.853299, 0.087431,
		0.847991, 0.490190, 0.201555,
		34.728577, 38.736057, 19.825932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048813, 39.096905, 19.465752>,  <34.134983, 38.392925, 19.684843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048813, 39.096905, 19.465752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425068, 38.962929, 19.443800>,  <34.650822, 38.882545, 19.430630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425068, 38.962929, 19.443800>,  <34.048813, 39.096905, 19.465752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425068, 38.962929, 19.443800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008755, 0.137689, -0.990437,
		0.339290, 0.932126, 0.126584,
		0.940641, -0.334937, -0.054878,
		34.707260, 38.862446, 19.427336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580997, 39.178356, 19.007669>,  <34.048813, 39.096905, 19.465752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580997, 39.178356, 19.007669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185513, 39.122093, 18.987020>,  <33.948223, 39.088337, 18.974632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185513, 39.122093, 18.987020>,  <34.580997, 39.178356, 19.007669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185513, 39.122093, 18.987020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053611, -0.653836, 0.754734,
		-0.139909, 0.743447, 0.653996,
		-0.988712, -0.140656, -0.051620,
		33.888901, 39.079895, 18.971535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023239, 38.749218, 18.490990>,  <34.580997, 39.178356, 19.007669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023239, 38.749218, 18.490990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026093, 39.102272, 18.678993>,  <35.027805, 39.314102, 18.791796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026093, 39.102272, 18.678993>,  <35.023239, 38.749218, 18.490990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026093, 39.102272, 18.678993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277958, -0.453249, 0.846939,
		0.960567, 0.124602, -0.248567,
		0.007132, 0.882632, 0.470010,
		35.028233, 39.367062, 18.819996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587677, 38.662701, 18.886974>,  <35.023239, 38.749218, 18.490990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587677, 38.662701, 18.886974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379307, 38.965958, 19.043869>,  <35.254284, 39.147911, 19.138006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379307, 38.965958, 19.043869>,  <35.587677, 38.662701, 18.886974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379307, 38.965958, 19.043869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086026, -0.410539, 0.907776,
		0.849255, 0.506629, 0.148641,
		-0.520928, 0.758146, 0.392235,
		35.223030, 39.193401, 19.161539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805195, 38.795437, 19.612206>,  <35.587677, 38.662701, 18.886974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805195, 38.795437, 19.612206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452709, 38.983467, 19.592243>,  <35.241219, 39.096287, 19.580265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452709, 38.983467, 19.592243>,  <35.805195, 38.795437, 19.612206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452709, 38.983467, 19.592243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192794, -0.260991, 0.945894,
		0.431615, 0.843157, 0.320616,
		-0.881214, 0.470075, -0.049908,
		35.188343, 39.124489, 19.577271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837627, 39.404076, 20.022934>,  <35.805195, 38.795437, 19.612206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837627, 39.404076, 20.022934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480160, 39.232727, 19.969482>,  <35.265678, 39.129917, 19.937412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480160, 39.232727, 19.969482>,  <35.837627, 39.404076, 20.022934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480160, 39.232727, 19.969482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106483, -0.086843, 0.990515,
		-0.435915, 0.899419, 0.031994,
		-0.893666, -0.428373, -0.133629,
		35.212059, 39.104214, 19.929394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375877, 39.814758, 20.290123>,  <35.837627, 39.404076, 20.022934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375877, 39.814758, 20.290123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202370, 39.454674, 20.305403>,  <35.098267, 39.238621, 20.314569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202370, 39.454674, 20.305403>,  <35.375877, 39.814758, 20.290123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202370, 39.454674, 20.305403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244967, 0.158622, 0.956467,
		-0.867085, 0.405528, -0.289328,
		-0.433768, -0.900215, 0.038198,
		35.072239, 39.184608, 20.316862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809578, 39.901917, 20.650715>,  <35.375877, 39.814758, 20.290123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809578, 39.901917, 20.650715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829136, 39.505600, 20.701216>,  <34.840870, 39.267811, 20.731516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829136, 39.505600, 20.701216>,  <34.809578, 39.901917, 20.650715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829136, 39.505600, 20.701216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242781, 0.110822, 0.963730,
		-0.968848, -0.077769, -0.235128,
		0.048891, -0.990793, 0.126251,
		34.843803, 39.208363, 20.739092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265793, 39.692749, 21.083500>,  <34.809578, 39.901917, 20.650715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265793, 39.692749, 21.083500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530758, 39.394444, 21.111910>,  <34.689735, 39.215458, 21.128956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530758, 39.394444, 21.111910>,  <34.265793, 39.692749, 21.083500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530758, 39.394444, 21.111910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230111, -0.112326, 0.966660,
		-0.712925, -0.656669, -0.246015,
		0.662410, -0.745767, 0.071027,
		34.729481, 39.170715, 21.133219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978031, 39.117943, 21.528936>,  <34.265793, 39.692749, 21.083500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978031, 39.117943, 21.528936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376041, 39.078312, 21.533110>,  <34.614849, 39.054535, 21.535614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376041, 39.078312, 21.533110>,  <33.978031, 39.117943, 21.528936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376041, 39.078312, 21.533110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016352, -0.059104, 0.998118,
		-0.098277, -0.993323, -0.060430,
		0.995025, -0.099080, 0.010434,
		34.674549, 39.048588, 21.536240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041870, 38.696587, 22.103094>,  <33.978031, 39.117943, 21.528936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041870, 38.696587, 22.103094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413586, 38.832268, 22.044617>,  <34.636616, 38.913677, 22.009529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413586, 38.832268, 22.044617>,  <34.041870, 38.696587, 22.103094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413586, 38.832268, 22.044617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152880, 0.007087, 0.988219,
		0.336242, -0.940687, -0.045271,
		0.929284, 0.339202, -0.146195,
		34.692371, 38.934029, 22.000759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444839, 38.391106, 22.585909>,  <34.041870, 38.696587, 22.103094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444839, 38.391106, 22.585909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691181, 38.687344, 22.478394>,  <34.838985, 38.865086, 22.413885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691181, 38.687344, 22.478394>,  <34.444839, 38.391106, 22.585909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691181, 38.687344, 22.478394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305653, 0.089853, 0.947894,
		0.726157, -0.665916, -0.171029,
		0.615850, 0.740596, -0.268787,
		34.875935, 38.909523, 22.397757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051914, 38.248749, 22.964842>,  <34.444839, 38.391106, 22.585909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051914, 38.248749, 22.964842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049046, 38.633904, 22.856922>,  <35.047325, 38.864998, 22.792171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049046, 38.633904, 22.856922>,  <35.051914, 38.248749, 22.964842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049046, 38.633904, 22.856922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190675, 0.266172, 0.944878,
		0.981627, -0.044666, -0.185508,
		-0.007173, 0.962890, -0.269798,
		35.046894, 38.922771, 22.775982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587807, 38.606052, 23.140009>,  <35.051914, 38.248749, 22.964842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587807, 38.606052, 23.140009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318459, 38.900951, 23.117947>,  <35.156849, 39.077888, 23.104710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318459, 38.900951, 23.117947>,  <35.587807, 38.606052, 23.140009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318459, 38.900951, 23.117947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152158, 0.211207, 0.965525,
		0.723478, 0.641764, -0.254398,
		-0.673370, 0.737245, -0.055154,
		35.116447, 39.122124, 23.101400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808342, 38.957939, 23.626135>,  <35.587807, 38.606052, 23.140009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808342, 38.957939, 23.626135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440567, 39.109299, 23.583334>,  <35.219902, 39.200115, 23.557653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440567, 39.109299, 23.583334>,  <35.808342, 38.957939, 23.626135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440567, 39.109299, 23.583334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043135, 0.173413, 0.983904,
		0.390863, 0.909254, -0.143121,
		-0.919437, 0.378399, -0.107001,
		35.164734, 39.222816, 23.551233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808365, 39.611168, 24.140160>,  <35.808342, 38.957939, 23.626135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808365, 39.611168, 24.140160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440842, 39.471680, 24.066196>,  <35.220329, 39.387989, 24.021818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440842, 39.471680, 24.066196>,  <35.808365, 39.611168, 24.140160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440842, 39.471680, 24.066196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190270, -0.019136, 0.981545,
		-0.345820, 0.937032, -0.048769,
		-0.918806, -0.348718, -0.184907,
		35.165199, 39.367065, 24.010725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385109, 40.024883, 24.391718>,  <35.808365, 39.611168, 24.140160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385109, 40.024883, 24.391718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137878, 39.711308, 24.368313>,  <34.989540, 39.523163, 24.354269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137878, 39.711308, 24.368313>,  <35.385109, 40.024883, 24.391718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137878, 39.711308, 24.368313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289493, 0.157777, 0.944087,
		-0.730873, 0.600457, -0.324463,
		-0.618076, -0.783937, -0.058514,
		34.952454, 39.476128, 24.350760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799324, 40.191509, 24.718405>,  <35.385109, 40.024883, 24.391718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799324, 40.191509, 24.718405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762039, 39.794605, 24.751211>,  <34.739670, 39.556461, 24.770895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762039, 39.794605, 24.751211>,  <34.799324, 40.191509, 24.718405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762039, 39.794605, 24.751211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293228, 0.106078, 0.950140,
		-0.951488, 0.064512, -0.300846,
		-0.093209, -0.992263, 0.082015,
		34.734077, 39.496925, 24.775816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469028, 40.117176, 25.242598>,  <34.799324, 40.191509, 24.718405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469028, 40.117176, 25.242598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559933, 39.728279, 25.220297>,  <34.614475, 39.494942, 25.206917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559933, 39.728279, 25.220297>,  <34.469028, 40.117176, 25.242598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559933, 39.728279, 25.220297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293669, -0.123002, 0.947960,
		-0.928500, -0.199058, -0.313469,
		0.227257, -0.972238, -0.055750,
		34.628109, 39.436607, 25.203571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847183, 39.744522, 25.415518>,  <34.469028, 40.117176, 25.242598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847183, 39.744522, 25.415518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146538, 39.487789, 25.482407>,  <34.326149, 39.333748, 25.522539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146538, 39.487789, 25.482407>,  <33.847183, 39.744522, 25.415518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146538, 39.487789, 25.482407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345508, -0.162045, 0.924319,
		-0.566164, -0.749524, -0.343032,
		0.748386, -0.641837, 0.167222,
		34.371056, 39.295238, 25.532574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559441, 39.125542, 25.758595>,  <33.847183, 39.744522, 25.415518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559441, 39.125542, 25.758595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950439, 39.096210, 25.837709>,  <34.185040, 39.078613, 25.885180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950439, 39.096210, 25.837709>,  <33.559441, 39.125542, 25.758595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950439, 39.096210, 25.837709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208570, -0.195674, 0.958233,
		-0.031561, -0.977924, -0.206565,
		0.977498, -0.073326, 0.197790,
		34.243690, 39.074211, 25.897047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606739, 38.571465, 26.214975>,  <33.559441, 39.125542, 25.758595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606739, 38.571465, 26.214975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913525, 38.820759, 26.276085>,  <34.097595, 38.970337, 26.312750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913525, 38.820759, 26.276085>,  <33.606739, 38.571465, 26.214975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913525, 38.820759, 26.276085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241671, 0.059996, 0.968502,
		0.594443, -0.779727, 0.196634,
		0.766964, 0.623240, 0.152774,
		34.143612, 39.007732, 26.321917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933254, 38.231647, 26.874172>,  <33.606739, 38.571465, 26.214975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933254, 38.231647, 26.874172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084820, 38.599072, 26.829157>,  <34.175758, 38.819527, 26.802149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084820, 38.599072, 26.829157>,  <33.933254, 38.231647, 26.874172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084820, 38.599072, 26.829157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270489, 0.226224, 0.935766,
		0.885019, -0.324136, 0.334181,
		0.378916, 0.918563, -0.112537,
		34.198494, 38.874641, 26.795395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411846, 38.261707, 27.500288>,  <33.933254, 38.231647, 26.874172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411846, 38.261707, 27.500288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321838, 38.631512, 27.377226>,  <34.267834, 38.853394, 27.303389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321838, 38.631512, 27.377226>,  <34.411846, 38.261707, 27.500288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321838, 38.631512, 27.377226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235479, 0.254795, 0.937886,
		0.945472, 0.283488, 0.160369,
		-0.225018, 0.924508, -0.307657,
		34.254333, 38.908863, 27.284929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806847, 38.813297, 27.939383>,  <34.411846, 38.261707, 27.500288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806847, 38.813297, 27.939383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477623, 38.971207, 27.776056>,  <34.280087, 39.065952, 27.678061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477623, 38.971207, 27.776056>,  <34.806847, 38.813297, 27.939383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477623, 38.971207, 27.776056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359655, 0.194133, 0.912667,
		0.439564, 0.898035, -0.017802,
		-0.823063, 0.394773, -0.408317,
		34.230705, 39.089638, 27.653561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756157, 39.404949, 28.295101>,  <34.806847, 38.813297, 27.939383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756157, 39.404949, 28.295101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402748, 39.331501, 28.122746>,  <34.190701, 39.287434, 28.019333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402748, 39.331501, 28.122746>,  <34.756157, 39.404949, 28.295101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402748, 39.331501, 28.122746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468236, 0.323263, 0.822348,
		-0.011711, 0.928323, -0.371589,
		-0.883526, -0.183622, -0.430889,
		34.137691, 39.276413, 27.993479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390461, 39.980694, 28.491613>,  <34.756157, 39.404949, 28.295101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390461, 39.980694, 28.491613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121056, 39.707443, 28.378674>,  <33.959412, 39.543495, 28.310909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121056, 39.707443, 28.378674>,  <34.390461, 39.980694, 28.491613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121056, 39.707443, 28.378674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601747, 0.284883, 0.746152,
		-0.429277, 0.672447, -0.602940,
		-0.673514, -0.683123, -0.282349,
		33.919003, 39.502506, 28.293968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616928, 40.313847, 28.530838>,  <34.390461, 39.980694, 28.491613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616928, 40.313847, 28.530838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581104, 39.915642, 28.543045>,  <33.559608, 39.676720, 28.550369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581104, 39.915642, 28.543045>,  <33.616928, 40.313847, 28.530838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581104, 39.915642, 28.543045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685800, 0.083860, 0.722943,
		-0.722259, 0.043816, -0.690233,
		-0.089560, -0.995514, 0.030519,
		33.554237, 39.616989, 28.552200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863979, 40.272942, 28.651819>,  <33.616928, 40.313847, 28.530838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863979, 40.272942, 28.651819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034332, 39.921387, 28.737782>,  <33.136543, 39.710453, 28.789358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034332, 39.921387, 28.737782>,  <32.863979, 40.272942, 28.651819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034332, 39.921387, 28.737782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543280, -0.058471, 0.837513,
		-0.723512, -0.473437, -0.502382,
		0.425885, -0.878885, 0.214904,
		33.162098, 39.657722, 28.802254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532631, 40.115219, 29.243305>,  <32.863979, 40.272942, 28.651819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532631, 40.115219, 29.243305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809525, 39.826572, 29.246866>,  <32.975662, 39.653385, 29.249002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809525, 39.826572, 29.246866>,  <32.532631, 40.115219, 29.243305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809525, 39.826572, 29.246866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258347, -0.236275, 0.936713,
		-0.673845, -0.650725, -0.349985,
		0.692235, -0.721617, 0.008900,
		33.017197, 39.610088, 29.249537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303185, 39.693642, 29.751278>,  <32.532631, 40.115219, 29.243305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303185, 39.693642, 29.751278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682755, 39.572483, 29.715969>,  <32.910496, 39.499786, 29.694784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682755, 39.572483, 29.715969>,  <32.303185, 39.693642, 29.751278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682755, 39.572483, 29.715969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111344, -0.583292, 0.804595,
		-0.295199, -0.753673, -0.587227,
		0.948926, -0.302900, -0.088270,
		32.967434, 39.481613, 29.689487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365467, 38.993694, 29.817583>,  <32.303185, 39.693642, 29.751278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365467, 38.993694, 29.817583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748306, 39.082756, 29.891754>,  <32.978012, 39.136192, 29.936256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748306, 39.082756, 29.891754>,  <32.365467, 38.993694, 29.817583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748306, 39.082756, 29.891754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013759, -0.604294, 0.796642,
		0.289428, -0.765018, -0.575307,
		0.957101, 0.222655, 0.185426,
		33.035435, 39.149551, 29.947382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607876, 38.377457, 30.120489>,  <32.365467, 38.993694, 29.817583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607876, 38.377457, 30.120489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849735, 38.678764, 30.224010>,  <32.994850, 38.859550, 30.286123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849735, 38.678764, 30.224010>,  <32.607876, 38.377457, 30.120489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849735, 38.678764, 30.224010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069171, -0.373364, 0.925103,
		0.793483, -0.541460, -0.277858,
		0.604648, 0.753273, 0.258805,
		33.031128, 38.904747, 30.301651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276615, 38.069912, 30.419641>,  <32.607876, 38.377457, 30.120489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276615, 38.069912, 30.419641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216969, 38.436905, 30.567152>,  <33.181179, 38.657101, 30.655659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216969, 38.436905, 30.567152>,  <33.276615, 38.069912, 30.419641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216969, 38.436905, 30.567152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171374, -0.343322, 0.923451,
		0.973856, 0.200901, -0.106037,
		-0.149117, 0.917480, 0.368775,
		33.172234, 38.712151, 30.677784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757477, 38.079739, 30.947613>,  <33.276615, 38.069912, 30.419641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757477, 38.079739, 30.947613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492039, 38.371841, 31.012558>,  <33.332775, 38.547104, 31.051525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492039, 38.371841, 31.012558>,  <33.757477, 38.079739, 30.947613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492039, 38.371841, 31.012558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009244, -0.225023, 0.974310,
		0.748032, 0.645049, 0.156075,
		-0.663598, 0.730258, 0.162362,
		33.292961, 38.590919, 31.061266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969543, 38.524197, 31.562090>,  <33.757477, 38.079739, 30.947613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969543, 38.524197, 31.562090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573910, 38.555836, 31.512365>,  <33.336529, 38.574821, 31.482531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573910, 38.555836, 31.512365>,  <33.969543, 38.524197, 31.562090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573910, 38.555836, 31.512365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140646, -0.255335, 0.956568,
		0.043925, 0.963611, 0.263673,
		-0.989085, 0.079102, -0.124312,
		33.277184, 38.579567, 31.475071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741631, 38.940926, 32.188183>,  <33.969543, 38.524197, 31.562090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741631, 38.940926, 32.188183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426929, 38.752735, 32.028351>,  <33.238110, 38.639820, 31.932451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426929, 38.752735, 32.028351>,  <33.741631, 38.940926, 32.188183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426929, 38.752735, 32.028351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293551, -0.284278, 0.912696,
		-0.542994, 0.835368, 0.085549,
		-0.786756, -0.470476, -0.399584,
		33.190903, 38.611591, 31.908476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270664, 39.074848, 32.694458>,  <33.741631, 38.940926, 32.188183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270664, 39.074848, 32.694458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096630, 38.784592, 32.481239>,  <32.992210, 38.610439, 32.353306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096630, 38.784592, 32.481239>,  <33.270664, 39.074848, 32.694458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096630, 38.784592, 32.481239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444668, -0.341615, 0.827992,
		-0.782923, 0.597279, -0.174037,
		-0.435089, -0.725642, -0.533049,
		32.966103, 38.566898, 32.321323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581116, 38.966301, 33.027897>,  <33.270664, 39.074848, 32.694458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581116, 38.966301, 33.027897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572468, 38.640938, 32.795380>,  <32.567280, 38.445721, 32.655869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572468, 38.640938, 32.795380>,  <32.581116, 38.966301, 33.027897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572468, 38.640938, 32.795380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396243, -0.526840, 0.751951,
		-0.917891, 0.246592, -0.310916,
		-0.021622, -0.813407, -0.581292,
		32.565983, 38.396915, 32.620991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893084, 38.827564, 32.845398>,  <32.581116, 38.966301, 33.027897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893084, 38.827564, 32.845398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164722, 38.534416, 32.862011>,  <32.327705, 38.358528, 32.871979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164722, 38.534416, 32.862011>,  <31.893084, 38.827564, 32.845398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164722, 38.534416, 32.862011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491356, -0.411814, 0.767449,
		-0.545341, -0.541578, -0.639763,
		0.679097, -0.732873, 0.041528,
		32.368450, 38.314556, 32.874470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522043, 38.290668, 33.098770>,  <31.893084, 38.827564, 32.845398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522043, 38.290668, 33.098770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893019, 38.144413, 33.130161>,  <32.115604, 38.056660, 33.148994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893019, 38.144413, 33.130161>,  <31.522043, 38.290668, 33.098770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893019, 38.144413, 33.130161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243995, -0.432605, 0.867940,
		-0.283407, -0.824111, -0.490431,
		0.927441, -0.365643, 0.078475,
		32.171249, 38.034721, 33.153706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454508, 37.645653, 33.417427>,  <31.522043, 38.290668, 33.098770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454508, 37.645653, 33.417427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840664, 37.734402, 33.472260>,  <32.072357, 37.787651, 33.505157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840664, 37.734402, 33.472260>,  <31.454508, 37.645653, 33.417427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840664, 37.734402, 33.472260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001328, -0.521419, 0.853300,
		0.260802, -0.823950, -0.503079,
		0.965391, 0.221874, 0.137081,
		32.130280, 37.800964, 33.513386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820332, 36.990662, 33.438034>,  <31.454508, 37.645653, 33.417427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820332, 36.990662, 33.438034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030075, 37.272327, 33.629532>,  <32.155922, 37.441326, 33.744431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030075, 37.272327, 33.629532>,  <31.820332, 36.990662, 33.438034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030075, 37.272327, 33.629532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024248, -0.549666, 0.835032,
		0.851151, -0.449467, -0.271149,
		0.524361, 0.704163, 0.478748,
		32.187382, 37.483578, 33.773155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360680, 36.591801, 33.892242>,  <31.820332, 36.990662, 33.438034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360680, 36.591801, 33.892242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316952, 36.950665, 34.063431>,  <32.290714, 37.165981, 34.166142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316952, 36.950665, 34.063431>,  <32.360680, 36.591801, 33.892242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316952, 36.950665, 34.063431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039218, -0.426321, 0.903721,
		0.993233, 0.115575, 0.011419,
		-0.109316, 0.897158, 0.427969,
		32.284157, 37.219810, 34.191822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848450, 36.577030, 34.378197>,  <32.360680, 36.591801, 33.892242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848450, 36.577030, 34.378197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598030, 36.867805, 34.491062>,  <32.447777, 37.042271, 34.558781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598030, 36.867805, 34.491062>,  <32.848450, 36.577030, 34.378197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598030, 36.867805, 34.491062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142455, -0.249133, 0.957935,
		0.766658, 0.639912, 0.052414,
		-0.626052, 0.726942, 0.282159,
		32.410213, 37.085888, 34.575710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160671, 36.849911, 35.010628>,  <32.848450, 36.577030, 34.378197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160671, 36.849911, 35.010628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773804, 36.943813, 35.049576>,  <32.541683, 37.000156, 35.072945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773804, 36.943813, 35.049576>,  <33.160671, 36.849911, 35.010628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773804, 36.943813, 35.049576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023364, -0.463614, 0.885729,
		0.253071, 0.854372, 0.453877,
		-0.967166, 0.234757, 0.097366,
		32.483654, 37.014240, 35.078785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690544, 37.276611, 35.211563>,  <33.160671, 36.849911, 35.010628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690544, 37.276611, 35.211563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050949, 37.267765, 35.384850>,  <34.267193, 37.262455, 35.488823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050949, 37.267765, 35.384850>,  <33.690544, 37.276611, 35.211563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050949, 37.267765, 35.384850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417761, 0.313188, -0.852871,
		-0.116814, 0.949433, 0.291429,
		0.901016, -0.022120, 0.433221,
		34.321255, 37.261127, 35.514816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954716, 37.908836, 35.011806>,  <33.690544, 37.276611, 35.211563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954716, 37.908836, 35.011806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270233, 37.686199, 35.116123>,  <34.459541, 37.552616, 35.178711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270233, 37.686199, 35.116123>,  <33.954716, 37.908836, 35.011806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270233, 37.686199, 35.116123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426643, 0.190360, -0.884160,
		0.442475, 0.808681, 0.387622,
		0.788791, -0.556595, 0.260788,
		34.506870, 37.519222, 35.194359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472286, 38.266895, 34.786819>,  <33.954716, 37.908836, 35.011806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472286, 38.266895, 34.786819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644421, 37.910583, 34.845230>,  <34.747700, 37.696796, 34.880276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644421, 37.910583, 34.845230>,  <34.472286, 38.266895, 34.786819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644421, 37.910583, 34.845230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504127, 0.102975, -0.857468,
		0.748776, 0.442618, 0.493379,
		0.430337, -0.890778, 0.146030,
		34.773521, 37.643349, 34.889038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266479, 38.395428, 34.676529>,  <34.472286, 38.266895, 34.786819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266479, 38.395428, 34.676529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190731, 38.004848, 34.635162>,  <35.145283, 37.770500, 34.610344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190731, 38.004848, 34.635162>,  <35.266479, 38.395428, 34.676529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190731, 38.004848, 34.635162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573026, -0.024373, -0.819174,
		0.797358, -0.214385, 0.564144,
		-0.189369, -0.976445, -0.103414,
		35.133919, 37.711914, 34.604137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923512, 38.076126, 34.605747>,  <35.266479, 38.395428, 34.676529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923512, 38.076126, 34.605747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646397, 37.843880, 34.434666>,  <35.480129, 37.704533, 34.332016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646397, 37.843880, 34.434666>,  <35.923512, 38.076126, 34.605747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646397, 37.843880, 34.434666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519652, 0.009287, -0.854327,
		0.500008, -0.814125, 0.295284,
		-0.692787, -0.580615, -0.427705,
		35.438560, 37.669697, 34.306355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315933, 37.621475, 34.232933>,  <35.923512, 38.076126, 34.605747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315933, 37.621475, 34.232933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960117, 37.620579, 34.050190>,  <35.746628, 37.620041, 33.940544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960117, 37.620579, 34.050190>,  <36.315933, 37.621475, 34.232933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960117, 37.620579, 34.050190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451308, 0.151204, -0.879465,
		0.071051, -0.988500, -0.133489,
		-0.889535, -0.002242, -0.456861,
		35.693256, 37.619907, 33.913132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375435, 37.119961, 33.673786>,  <36.315933, 37.621475, 34.232933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375435, 37.119961, 33.673786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053997, 37.340553, 33.584259>,  <35.861134, 37.472908, 33.530540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053997, 37.340553, 33.584259>,  <36.375435, 37.119961, 33.673786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053997, 37.340553, 33.584259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290303, 0.034904, -0.956298,
		-0.519570, -0.833456, -0.188146,
		-0.803599, 0.551483, -0.223820,
		35.812916, 37.505997, 33.517113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231766, 36.922840, 32.972923>,  <36.375435, 37.119961, 33.673786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231766, 36.922840, 32.972923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024448, 37.263405, 33.005093>,  <35.900059, 37.467743, 33.024395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024448, 37.263405, 33.005093>,  <36.231766, 36.922840, 32.972923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024448, 37.263405, 33.005093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222882, 0.225269, -0.948461,
		-0.825646, -0.473660, -0.306521,
		-0.518298, 0.851411, 0.080422,
		35.868958, 37.518829, 33.029221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841072, 36.995209, 32.363930>,  <36.231766, 36.922840, 32.972923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841072, 36.995209, 32.363930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819500, 37.367470, 32.508698>,  <35.806557, 37.590824, 32.595558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819500, 37.367470, 32.508698>,  <35.841072, 36.995209, 32.363930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819500, 37.367470, 32.508698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132290, 0.365908, -0.921201,
		-0.989743, -0.001800, -0.142848,
		-0.053927, 0.930649, 0.361917,
		35.803322, 37.646664, 32.617271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285782, 37.477886, 32.015160>,  <35.841072, 36.995209, 32.363930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285782, 37.477886, 32.015160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561337, 37.720303, 32.174236>,  <35.726669, 37.865753, 32.269680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561337, 37.720303, 32.174236>,  <35.285782, 37.477886, 32.015160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561337, 37.720303, 32.174236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034229, 0.575219, -0.817283,
		-0.724063, 0.549401, 0.417003,
		0.688884, 0.606038, 0.397689,
		35.768002, 37.902115, 32.293545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058517, 38.197670, 31.910887>,  <35.285782, 37.477886, 32.015160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058517, 38.197670, 31.910887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451584, 38.226921, 31.979036>,  <35.687424, 38.244473, 32.019924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451584, 38.226921, 31.979036>,  <35.058517, 38.197670, 31.910887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451584, 38.226921, 31.979036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134516, 0.351197, -0.926588,
		-0.127592, 0.933442, 0.335272,
		0.982662, 0.073126, 0.170373,
		35.746384, 38.248859, 32.030148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210472, 38.944218, 31.681280>,  <35.058517, 38.197670, 31.910887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210472, 38.944218, 31.681280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552689, 38.737480, 31.693415>,  <35.758018, 38.613438, 31.700695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552689, 38.737480, 31.693415>,  <35.210472, 38.944218, 31.681280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552689, 38.737480, 31.693415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285468, 0.422036, -0.860461,
		0.431920, 0.744821, 0.508612,
		0.855542, -0.516843, 0.030337,
		35.809353, 38.582428, 31.702517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644608, 39.423618, 31.597036>,  <35.210472, 38.944218, 31.681280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644608, 39.423618, 31.597036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812050, 39.078663, 31.483152>,  <35.912514, 38.871689, 31.414822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812050, 39.078663, 31.483152>,  <35.644608, 39.423618, 31.597036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812050, 39.078663, 31.483152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363000, 0.446252, -0.817979,
		0.832466, 0.239061, 0.499850,
		0.418606, -0.862386, -0.284711,
		35.937630, 38.819946, 31.397739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315784, 39.658283, 31.335188>,  <35.644608, 39.423618, 31.597036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315784, 39.658283, 31.335188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285114, 39.282631, 31.201227>,  <36.266712, 39.057240, 31.120852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285114, 39.282631, 31.201227>,  <36.315784, 39.658283, 31.335188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285114, 39.282631, 31.201227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488623, 0.257399, -0.833663,
		0.869120, -0.227558, 0.439145,
		-0.076671, -0.939129, -0.334901,
		36.262112, 39.000893, 31.100758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974472, 39.474476, 31.145601>,  <36.315784, 39.658283, 31.335188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974472, 39.474476, 31.145601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709080, 39.257843, 30.939112>,  <36.549847, 39.127865, 30.815218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709080, 39.257843, 30.939112>,  <36.974472, 39.474476, 31.145601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709080, 39.257843, 30.939112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390776, 0.337542, -0.856364,
		0.638036, -0.769908, -0.012316,
		-0.663479, -0.541578, -0.516226,
		36.510036, 39.095371, 30.784245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374908, 39.205669, 30.563778>,  <36.974472, 39.474476, 31.145601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374908, 39.205669, 30.563778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996361, 39.166313, 30.440681>,  <36.769234, 39.142700, 30.366823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996361, 39.166313, 30.440681>,  <37.374908, 39.205669, 30.563778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996361, 39.166313, 30.440681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285686, 0.190001, -0.939299,
		0.150894, -0.976841, -0.151701,
		-0.946369, -0.098396, -0.307739,
		36.712448, 39.136795, 30.348360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469467, 38.886211, 30.004915>,  <37.374908, 39.205669, 30.563778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469467, 38.886211, 30.004915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107903, 39.050755, 29.958061>,  <36.890965, 39.149483, 29.929949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107903, 39.050755, 29.958061>,  <37.469467, 38.886211, 30.004915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107903, 39.050755, 29.958061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214512, 0.199076, -0.956218,
		-0.370032, -0.889466, -0.268190,
		-0.903914, 0.411361, -0.117136,
		36.836727, 39.174164, 29.922920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225605, 38.397095, 29.473379>,  <37.469467, 38.886211, 30.004915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225605, 38.397095, 29.473379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005718, 38.730698, 29.454439>,  <36.873787, 38.930859, 29.443075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005718, 38.730698, 29.454439>,  <37.225605, 38.397095, 29.473379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005718, 38.730698, 29.454439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029915, -0.036992, -0.998868,
		-0.834814, -0.550513, -0.004614,
		-0.549719, 0.834007, -0.047350,
		36.840801, 38.980900, 29.440233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683147, 38.227100, 29.055765>,  <37.225605, 38.397095, 29.473379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683147, 38.227100, 29.055765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699471, 38.626659, 29.046484>,  <36.709263, 38.866394, 29.040916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699471, 38.626659, 29.046484>,  <36.683147, 38.227100, 29.055765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699471, 38.626659, 29.046484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155275, -0.016599, -0.987732,
		-0.987028, 0.043911, 0.154426,
		0.040809, 0.998897, -0.023202,
		36.711712, 38.926331, 29.039524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130692, 38.526184, 28.587400>,  <36.683147, 38.227100, 29.055765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130692, 38.526184, 28.587400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423164, 38.798843, 28.598217>,  <36.598648, 38.962440, 28.604708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423164, 38.798843, 28.598217>,  <36.130692, 38.526184, 28.587400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423164, 38.798843, 28.598217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073462, 0.118088, -0.990282,
		-0.678220, 0.722086, 0.136419,
		0.731178, 0.681651, 0.027043,
		36.642517, 39.003338, 28.606331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866840, 38.976295, 28.049553>,  <36.130692, 38.526184, 28.587400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866840, 38.976295, 28.049553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253777, 39.043499, 28.125469>,  <36.485939, 39.083820, 28.171019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253777, 39.043499, 28.125469>,  <35.866840, 38.976295, 28.049553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253777, 39.043499, 28.125469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181108, 0.065725, -0.981265,
		-0.177333, 0.983593, 0.033152,
		0.967343, 0.168006, 0.189792,
		36.543980, 39.093903, 28.182407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003365, 39.573162, 27.598408>,  <35.866840, 38.976295, 28.049553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003365, 39.573162, 27.598408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349953, 39.392639, 27.683784>,  <36.557907, 39.284325, 27.735010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349953, 39.392639, 27.683784>,  <36.003365, 39.573162, 27.598408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349953, 39.392639, 27.683784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273078, 0.070544, -0.959402,
		0.417924, 0.889578, 0.184365,
		0.866469, -0.451303, 0.213443,
		36.609894, 39.257248, 27.747818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577576, 39.794033, 27.056671>,  <36.003365, 39.573162, 27.598408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577576, 39.794033, 27.056671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707962, 39.451283, 27.216427>,  <36.786194, 39.245632, 27.312281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707962, 39.451283, 27.216427>,  <36.577576, 39.794033, 27.056671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707962, 39.451283, 27.216427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262743, -0.323706, -0.908944,
		0.908136, 0.401225, 0.119619,
		0.325969, -0.856874, 0.399388,
		36.805752, 39.194221, 27.336243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148170, 39.697380, 26.699499>,  <36.577576, 39.794033, 27.056671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148170, 39.697380, 26.699499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080276, 39.343037, 26.872215>,  <37.039539, 39.130428, 26.975845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080276, 39.343037, 26.872215>,  <37.148170, 39.697380, 26.699499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080276, 39.343037, 26.872215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266553, -0.463083, -0.845283,
		0.948757, -0.028379, 0.314729,
		-0.169734, -0.885860, 0.431789,
		37.029358, 39.077278, 27.001753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762287, 39.164948, 26.543873>,  <37.148170, 39.697380, 26.699499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762287, 39.164948, 26.543873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426548, 38.959759, 26.615822>,  <37.225105, 38.836647, 26.658991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426548, 38.959759, 26.615822>,  <37.762287, 39.164948, 26.543873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426548, 38.959759, 26.615822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142594, -0.527084, -0.837765,
		0.524554, -0.677530, 0.515554,
		-0.839352, -0.512967, 0.179872,
		37.174744, 38.805870, 26.669783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870834, 38.519558, 26.214207>,  <37.762287, 39.164948, 26.543873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870834, 38.519558, 26.214207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474243, 38.533257, 26.264477>,  <37.236286, 38.541477, 26.294640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474243, 38.533257, 26.264477>,  <37.870834, 38.519558, 26.214207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474243, 38.533257, 26.264477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125838, -0.501035, -0.856229,
		0.033645, -0.864749, 0.501076,
		-0.991480, 0.034246, 0.125676,
		37.176800, 38.543530, 26.302179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592064, 37.898338, 26.170525>,  <37.870834, 38.519558, 26.214207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592064, 37.898338, 26.170525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263054, 38.102757, 26.070694>,  <37.065647, 38.225407, 26.010796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263054, 38.102757, 26.070694>,  <37.592064, 37.898338, 26.170525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263054, 38.102757, 26.070694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169010, -0.638647, -0.750710,
		-0.543035, -0.575297, 0.611675,
		-0.822525, 0.511041, -0.249577,
		37.016296, 38.256069, 25.995821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224304, 37.408131, 25.958582>,  <37.592064, 37.898338, 26.170525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224304, 37.408131, 25.958582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068573, 37.740536, 25.799665>,  <36.975136, 37.939980, 25.704315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068573, 37.740536, 25.799665>,  <37.224304, 37.408131, 25.958582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068573, 37.740536, 25.799665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035782, -0.417353, -0.908040,
		-0.920406, -0.367737, 0.132750,
		-0.389324, 0.831015, -0.397292,
		36.951775, 37.989841, 25.680477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957039, 37.197334, 25.441200>,  <37.224304, 37.408131, 25.958582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957039, 37.197334, 25.441200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978889, 37.584705, 25.343908>,  <36.992001, 37.817127, 25.285534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978889, 37.584705, 25.343908>,  <36.957039, 37.197334, 25.441200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978889, 37.584705, 25.343908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111052, -0.247973, -0.962381,
		-0.992312, 0.025562, -0.121092,
		0.054628, 0.968429, -0.243228,
		36.995277, 37.875233, 25.270941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504002, 37.339642, 24.767580>,  <36.957039, 37.197334, 25.441200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504002, 37.339642, 24.767580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773579, 37.632542, 24.806803>,  <36.935326, 37.808281, 24.830336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773579, 37.632542, 24.806803>,  <36.504002, 37.339642, 24.767580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773579, 37.632542, 24.806803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126421, 0.016462, -0.991840,
		-0.727889, 0.680837, -0.081477,
		0.673940, 0.732250, 0.098055,
		36.975761, 37.852215, 24.836220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257812, 37.729122, 24.244244>,  <36.504002, 37.339642, 24.767580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257812, 37.729122, 24.244244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641068, 37.814316, 24.320772>,  <36.871021, 37.865433, 24.366690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641068, 37.814316, 24.320772>,  <36.257812, 37.729122, 24.244244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641068, 37.814316, 24.320772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204359, -0.040763, -0.978047,
		-0.200513, 0.976204, -0.082582,
		0.958140, 0.212987, 0.191322,
		36.928509, 37.878212, 24.378168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482243, 38.423222, 23.779161>,  <36.257812, 37.729122, 24.244244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482243, 38.423222, 23.779161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826183, 38.240490, 23.870342>,  <37.032547, 38.130852, 23.925051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826183, 38.240490, 23.870342>,  <36.482243, 38.423222, 23.779161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826183, 38.240490, 23.870342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181549, -0.143712, -0.972824,
		0.477177, 0.877867, -0.040633,
		0.859850, -0.456832, 0.227952,
		37.084137, 38.103439, 23.938728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108543, 38.765373, 23.399593>,  <36.482243, 38.423222, 23.779161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108543, 38.765373, 23.399593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253113, 38.407085, 23.503183>,  <37.339855, 38.192112, 23.565336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253113, 38.407085, 23.503183>,  <37.108543, 38.765373, 23.399593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253113, 38.407085, 23.503183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381152, -0.111551, -0.917758,
		0.850940, 0.430405, 0.301087,
		0.361421, -0.895716, 0.258973,
		37.361538, 38.138371, 23.580875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676590, 38.730312, 23.039251>,  <37.108543, 38.765373, 23.399593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676590, 38.730312, 23.039251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631989, 38.346840, 23.143942>,  <37.605228, 38.116756, 23.206757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631989, 38.346840, 23.143942>,  <37.676590, 38.730312, 23.039251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631989, 38.346840, 23.143942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576376, -0.276933, -0.768830,
		0.809542, 0.065123, 0.583439,
		-0.111505, -0.958680, 0.261724,
		37.598537, 38.059235, 23.222460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222317, 38.483742, 22.812000>,  <37.676590, 38.730312, 23.039251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222317, 38.483742, 22.812000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012753, 38.145721, 22.854702>,  <37.887012, 37.942909, 22.880323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012753, 38.145721, 22.854702>,  <38.222317, 38.483742, 22.812000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012753, 38.145721, 22.854702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331743, -0.317876, -0.888201,
		0.784514, -0.429926, 0.446880,
		-0.523913, -0.845056, 0.106753,
		37.855579, 37.892204, 22.886728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617546, 38.026138, 22.548227>,  <38.222317, 38.483742, 22.812000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617546, 38.026138, 22.548227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273743, 37.822128, 22.534807>,  <38.067463, 37.699722, 22.526754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273743, 37.822128, 22.534807>,  <38.617546, 38.026138, 22.548227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273743, 37.822128, 22.534807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180615, -0.241657, -0.953405,
		0.478153, -0.825515, 0.299824,
		-0.859505, -0.510026, -0.033551,
		38.015892, 37.669121, 22.524742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783184, 37.396793, 22.143908>,  <38.617546, 38.026138, 22.548227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783184, 37.396793, 22.143908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388645, 37.460823, 22.128403>,  <38.151924, 37.499241, 22.119101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388645, 37.460823, 22.128403>,  <38.783184, 37.396793, 22.143908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388645, 37.460823, 22.128403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002758, -0.251360, -0.967890,
		-0.164680, -0.954565, 0.248368,
		-0.986343, 0.160077, -0.038761,
		38.092743, 37.508846, 22.116774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489376, 36.963348, 21.736786>,  <38.783184, 37.396793, 22.143908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489376, 36.963348, 21.736786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210991, 37.250561, 21.739990>,  <38.043961, 37.422890, 21.741913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210991, 37.250561, 21.739990>,  <38.489376, 36.963348, 21.736786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210991, 37.250561, 21.739990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106132, -0.091820, -0.990103,
		-0.710192, -0.689925, 0.140110,
		-0.695962, 0.718034, 0.008013,
		38.002201, 37.465973, 21.742393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718006, 36.400497, 21.518120>,  <38.489376, 36.963348, 21.736786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718006, 36.400497, 21.518120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945076, 36.072140, 21.493240>,  <39.081318, 35.875126, 21.478313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945076, 36.072140, 21.493240>,  <38.718006, 36.400497, 21.518120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945076, 36.072140, 21.493240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365862, -0.319242, 0.874202,
		-0.737486, -0.473510, -0.481562,
		0.567679, -0.820897, -0.062198,
		39.115379, 35.825871, 21.474581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257137, 35.847973, 21.690744>,  <38.718006, 36.400497, 21.518120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257137, 35.847973, 21.690744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630936, 35.727386, 21.766466>,  <38.855213, 35.655033, 21.811899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630936, 35.727386, 21.766466>,  <38.257137, 35.847973, 21.690744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630936, 35.727386, 21.766466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283560, -0.308903, 0.907840,
		-0.215206, -0.902051, -0.374152,
		0.934494, -0.301467, 0.189307,
		38.911285, 35.636944, 21.823257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130211, 35.342682, 21.983362>,  <38.257137, 35.847973, 21.690744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130211, 35.342682, 21.983362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509434, 35.420860, 22.083746>,  <38.736969, 35.467770, 22.143976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509434, 35.420860, 22.083746>,  <38.130211, 35.342682, 21.983362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509434, 35.420860, 22.083746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218149, -0.174688, 0.960154,
		0.231500, -0.965031, -0.122978,
		0.948061, 0.195448, 0.250960,
		38.793854, 35.479496, 22.159035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440125, 34.791473, 22.405338>,  <38.130211, 35.342682, 21.983362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440125, 34.791473, 22.405338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664074, 35.108620, 22.501595>,  <38.798443, 35.298908, 22.559347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664074, 35.108620, 22.501595>,  <38.440125, 34.791473, 22.405338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664074, 35.108620, 22.501595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285754, -0.087842, 0.954268,
		0.777743, -0.603034, 0.177384,
		0.559875, 0.792864, 0.240638,
		38.832035, 35.346478, 22.573786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823681, 34.632324, 23.000238>,  <38.440125, 34.791473, 22.405338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823681, 34.632324, 23.000238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797810, 35.031342, 22.989475>,  <38.782288, 35.270752, 22.983017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797810, 35.031342, 22.989475>,  <38.823681, 34.632324, 23.000238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797810, 35.031342, 22.989475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264561, 0.008858, 0.964328,
		0.962198, 0.069488, 0.263338,
		-0.064677, 0.997543, -0.026907,
		38.778408, 35.330605, 22.981403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115318, 34.820038, 23.646660>,  <38.823681, 34.632324, 23.000238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115318, 34.820038, 23.646660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909042, 35.137939, 23.518637>,  <38.785278, 35.328678, 23.441822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909042, 35.137939, 23.518637>,  <39.115318, 34.820038, 23.646660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909042, 35.137939, 23.518637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422669, 0.088956, 0.901908,
		0.745264, 0.600380, 0.290044,
		-0.515686, 0.794752, -0.320058,
		38.754337, 35.376366, 23.422619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099556, 35.132504, 24.228559>,  <39.115318, 34.820038, 23.646660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099556, 35.132504, 24.228559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827156, 35.326614, 24.009197>,  <38.663715, 35.443081, 23.877581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827156, 35.326614, 24.009197>,  <39.099556, 35.132504, 24.228559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827156, 35.326614, 24.009197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495194, 0.246525, 0.833071,
		0.539467, 0.838886, 0.072424,
		-0.680998, 0.485278, -0.548404,
		38.622856, 35.472198, 23.844677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170444, 35.820934, 24.377659>,  <39.099556, 35.132504, 24.228559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170444, 35.820934, 24.377659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800652, 35.719196, 24.264063>,  <38.578777, 35.658154, 24.195906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800652, 35.719196, 24.264063>,  <39.170444, 35.820934, 24.377659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800652, 35.719196, 24.264063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343814, 0.234378, 0.909317,
		-0.164719, 0.938283, -0.304125,
		-0.924478, -0.254344, -0.283989,
		38.523308, 35.642895, 24.178865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760979, 36.408642, 24.562592>,  <39.170444, 35.820934, 24.377659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760979, 36.408642, 24.562592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528786, 36.085030, 24.525690>,  <38.389469, 35.890862, 24.503550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528786, 36.085030, 24.525690>,  <38.760979, 36.408642, 24.562592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528786, 36.085030, 24.525690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523564, 0.284067, 0.803235,
		-0.623634, 0.514566, -0.588475,
		-0.580484, -0.809029, -0.092255,
		38.354641, 35.842319, 24.498014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082714, 36.728588, 24.739458>,  <38.760979, 36.408642, 24.562592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082714, 36.728588, 24.739458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049805, 36.331200, 24.771061>,  <38.030060, 36.092766, 24.790022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049805, 36.331200, 24.771061>,  <38.082714, 36.728588, 24.739458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049805, 36.331200, 24.771061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553004, 0.111459, 0.825690,
		-0.829107, 0.024238, -0.558564,
		-0.082270, -0.993473, 0.079008,
		38.025124, 36.033157, 24.794764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428310, 36.724907, 24.959278>,  <38.082714, 36.728588, 24.739458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428310, 36.724907, 24.959278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606869, 36.378563, 25.049625>,  <37.714005, 36.170757, 25.103834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606869, 36.378563, 25.049625>,  <37.428310, 36.724907, 24.959278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606869, 36.378563, 25.049625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467761, -0.010614, 0.883791,
		-0.762841, -0.500176, -0.409753,
		0.446400, -0.865858, 0.225866,
		37.740788, 36.118805, 25.117386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896561, 36.415844, 25.240734>,  <37.428310, 36.724907, 24.959278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896561, 36.415844, 25.240734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244358, 36.270397, 25.374454>,  <37.453037, 36.183128, 25.454685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244358, 36.270397, 25.374454>,  <36.896561, 36.415844, 25.240734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244358, 36.270397, 25.374454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342928, 0.042703, 0.938390,
		-0.355494, -0.930568, -0.087566,
		0.869497, -0.363621, 0.334298,
		37.505207, 36.161312, 25.474745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696083, 35.927803, 25.727844>,  <36.896561, 36.415844, 25.240734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696083, 35.927803, 25.727844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081535, 35.992588, 25.812878>,  <37.312805, 36.031460, 25.863897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081535, 35.992588, 25.812878>,  <36.696083, 35.927803, 25.727844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081535, 35.992588, 25.812878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217998, 0.016231, 0.975814,
		0.154600, -0.986663, 0.050949,
		0.963626, 0.161967, 0.212581,
		37.370625, 36.041176, 25.876652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776539, 35.570816, 26.346596>,  <36.696083, 35.927803, 25.727844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776539, 35.570816, 26.346596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103691, 35.799923, 26.324642>,  <37.299984, 35.937386, 26.311470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103691, 35.799923, 26.324642>,  <36.776539, 35.570816, 26.346596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103691, 35.799923, 26.324642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106717, 0.244731, 0.963700,
		0.565404, -0.782335, 0.261285,
		0.817881, 0.572764, -0.054883,
		37.349056, 35.971752, 26.308178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220966, 35.304428, 26.841974>,  <36.776539, 35.570816, 26.346596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220966, 35.304428, 26.841974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335766, 35.684055, 26.789957>,  <37.404644, 35.911831, 26.758747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335766, 35.684055, 26.789957>,  <37.220966, 35.304428, 26.841974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335766, 35.684055, 26.789957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008957, 0.133087, 0.991064,
		0.957890, -0.285595, 0.029694,
		0.286994, 0.949064, -0.130041,
		37.421864, 35.968773, 26.750944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873375, 35.408764, 27.296856>,  <37.220966, 35.304428, 26.841974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873375, 35.408764, 27.296856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707977, 35.766045, 27.226198>,  <37.608738, 35.980415, 27.183804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707977, 35.766045, 27.226198>,  <37.873375, 35.408764, 27.296856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707977, 35.766045, 27.226198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041040, 0.212093, 0.976387,
		0.909581, 0.396483, -0.124356,
		-0.413496, 0.893207, -0.176644,
		37.583927, 36.034008, 27.173204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267574, 35.828857, 27.608913>,  <37.873375, 35.408764, 27.296856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267574, 35.828857, 27.608913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933392, 36.040653, 27.550049>,  <37.732883, 36.167732, 27.514730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933392, 36.040653, 27.550049>,  <38.267574, 35.828857, 27.608913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933392, 36.040653, 27.550049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024981, 0.230913, 0.972654,
		0.548992, 0.816284, -0.179690,
		-0.835454, 0.529490, -0.147161,
		37.682755, 36.199501, 27.505901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406784, 36.551579, 27.847466>,  <38.267574, 35.828857, 27.608913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406784, 36.551579, 27.847466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018410, 36.455841, 27.847115>,  <37.785385, 36.398399, 27.846905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018410, 36.455841, 27.847115>,  <38.406784, 36.551579, 27.847466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018410, 36.455841, 27.847115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049805, 0.198453, 0.978844,
		-0.234110, 0.950436, -0.204605,
		-0.970934, -0.239347, -0.000877,
		37.727131, 36.384037, 27.846851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151478, 37.043495, 28.402634>,  <38.406784, 36.551579, 27.847466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151478, 37.043495, 28.402634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843468, 36.792522, 28.356337>,  <37.658661, 36.641937, 28.328558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843468, 36.792522, 28.356337>,  <38.151478, 37.043495, 28.402634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843468, 36.792522, 28.356337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263952, 0.148122, 0.953094,
		-0.580858, 0.764454, -0.279669,
		-0.770022, -0.627432, -0.115741,
		37.612461, 36.604294, 28.321613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597763, 37.382042, 28.726545>,  <38.151478, 37.043495, 28.402634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597763, 37.382042, 28.726545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521637, 36.989746, 28.708996>,  <37.475964, 36.754368, 28.698465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521637, 36.989746, 28.708996>,  <37.597763, 37.382042, 28.726545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521637, 36.989746, 28.708996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286750, 0.012790, 0.957920,
		-0.938912, 0.194885, -0.283662,
		-0.190312, -0.980743, -0.043874,
		37.464542, 36.695522, 28.695833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927876, 37.338253, 28.976837>,  <37.597763, 37.382042, 28.726545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927876, 37.338253, 28.976837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114460, 36.987419, 29.022690>,  <37.226410, 36.776920, 29.050201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114460, 36.987419, 29.022690>,  <36.927876, 37.338253, 28.976837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114460, 36.987419, 29.022690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144816, 0.052121, 0.988085,
		-0.872608, -0.477501, -0.102704,
		0.466458, -0.877084, 0.114631,
		37.254398, 36.724293, 29.057079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466404, 36.989159, 29.507507>,  <36.927876, 37.338253, 28.976837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466404, 36.989159, 29.507507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816559, 36.796196, 29.494942>,  <37.026653, 36.680420, 29.487402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816559, 36.796196, 29.494942>,  <36.466404, 36.989159, 29.507507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816559, 36.796196, 29.494942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058373, -0.169983, 0.983717,
		-0.479888, -0.859297, -0.176960,
		0.875385, -0.482404, -0.031413,
		37.079174, 36.651474, 29.485518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393578, 36.456139, 29.905067>,  <36.466404, 36.989159, 29.507507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393578, 36.456139, 29.905067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789116, 36.515640, 29.908216>,  <37.026440, 36.551342, 29.910107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789116, 36.515640, 29.908216>,  <36.393578, 36.456139, 29.905067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789116, 36.515640, 29.908216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003908, -0.078750, 0.996887,
		0.148910, -0.985734, -0.078452,
		0.988843, 0.148753, 0.007874,
		37.085770, 36.560265, 29.910580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594238, 35.995941, 30.410881>,  <36.393578, 36.456139, 29.905067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594238, 35.995941, 30.410881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916924, 36.229073, 30.371847>,  <37.110535, 36.368950, 30.348427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916924, 36.229073, 30.371847>,  <36.594238, 35.995941, 30.410881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916924, 36.229073, 30.371847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222424, -0.146476, 0.963884,
		0.547485, -0.799284, -0.247800,
		0.806714, 0.582829, -0.097587,
		37.158939, 36.403923, 30.342571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141022, 35.671822, 30.845053>,  <36.594238, 35.995941, 30.410881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141022, 35.671822, 30.845053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289345, 36.040539, 30.799807>,  <37.378338, 36.261768, 30.772659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289345, 36.040539, 30.799807>,  <37.141022, 35.671822, 30.845053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289345, 36.040539, 30.799807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464400, -0.078563, 0.882134,
		0.804261, -0.379631, -0.457214,
		0.370805, 0.921796, -0.113115,
		37.400585, 36.317078, 30.765873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803944, 35.664654, 30.973034>,  <37.141022, 35.671822, 30.845053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803944, 35.664654, 30.973034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711998, 36.050831, 31.022160>,  <37.656830, 36.282536, 31.051634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711998, 36.050831, 31.022160>,  <37.803944, 35.664654, 30.973034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711998, 36.050831, 31.022160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556098, 0.026732, 0.830687,
		0.798697, 0.259240, -0.543026,
		-0.229864, 0.965443, 0.122812,
		37.643040, 36.340466, 31.059004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454308, 35.905495, 31.223347>,  <37.803944, 35.664654, 30.973034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454308, 35.905495, 31.223347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167713, 36.171013, 31.309153>,  <37.995758, 36.330326, 31.360636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167713, 36.171013, 31.309153>,  <38.454308, 35.905495, 31.223347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167713, 36.171013, 31.309153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312308, 0.030255, 0.949499,
		0.623787, 0.747298, -0.228988,
		-0.716487, 0.663800, 0.214515,
		37.952766, 36.370152, 31.373507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742329, 36.462887, 31.673548>,  <38.454308, 35.905495, 31.223347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742329, 36.462887, 31.673548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349064, 36.497913, 31.737696>,  <38.113106, 36.518929, 31.776184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349064, 36.497913, 31.737696>,  <38.742329, 36.462887, 31.673548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349064, 36.497913, 31.737696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166353, 0.065892, 0.983862,
		0.075590, 0.993977, -0.079350,
		-0.983165, 0.087571, 0.160370,
		38.054115, 36.524185, 31.785807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674591, 36.965309, 32.217850>,  <38.742329, 36.462887, 31.673548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674591, 36.965309, 32.217850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356213, 36.723259, 32.224651>,  <38.165184, 36.578030, 32.228733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356213, 36.723259, 32.224651>,  <38.674591, 36.965309, 32.217850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356213, 36.723259, 32.224651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005027, 0.034700, 0.999385,
		-0.605345, 0.795372, -0.030661,
		-0.795947, -0.605127, 0.017007,
		38.117428, 36.541721, 32.229752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247669, 37.255852, 32.789467>,  <38.674591, 36.965309, 32.217850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247669, 37.255852, 32.789467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090912, 36.896103, 32.711948>,  <37.996857, 36.680256, 32.665440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090912, 36.896103, 32.711948>,  <38.247669, 37.255852, 32.789467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090912, 36.896103, 32.711948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098754, -0.168303, 0.980776,
		-0.914696, 0.403496, -0.022860,
		-0.391891, -0.899369, -0.193793,
		37.973343, 36.626293, 32.653809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598564, 37.210754, 33.242226>,  <38.247669, 37.255852, 32.789467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598564, 37.210754, 33.242226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694077, 36.837563, 33.134491>,  <37.751385, 36.613647, 33.069851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694077, 36.837563, 33.134491>,  <37.598564, 37.210754, 33.242226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694077, 36.837563, 33.134491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003770, -0.278244, 0.960503,
		-0.971066, -0.228333, -0.069957,
		0.238780, -0.932976, -0.269333,
		37.765709, 36.557671, 33.053692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059479, 36.793114, 33.525288>,  <37.598564, 37.210754, 33.242226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059479, 36.793114, 33.525288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342010, 36.517075, 33.462219>,  <37.511532, 36.351452, 33.424377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342010, 36.517075, 33.462219>,  <37.059479, 36.793114, 33.525288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342010, 36.517075, 33.462219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096161, -0.314207, 0.944472,
		-0.701318, -0.651950, -0.288295,
		0.706333, -0.690098, -0.157667,
		37.553909, 36.310047, 33.414921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764153, 36.131313, 33.692013>,  <37.059479, 36.793114, 33.525288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764153, 36.131313, 33.692013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160652, 36.087410, 33.721352>,  <37.398552, 36.061069, 33.738956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160652, 36.087410, 33.721352>,  <36.764153, 36.131313, 33.692013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160652, 36.087410, 33.721352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115662, -0.454267, 0.883326,
		-0.063631, -0.884079, -0.462986,
		0.991248, -0.109757, 0.073348,
		37.458027, 36.054482, 33.743355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936771, 35.436859, 33.849731>,  <36.764153, 36.131313, 33.692013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936771, 35.436859, 33.849731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254826, 35.650982, 33.963718>,  <37.445656, 35.779457, 34.032112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254826, 35.650982, 33.963718>,  <36.936771, 35.436859, 33.849731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254826, 35.650982, 33.963718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026914, -0.500594, 0.865264,
		0.605839, -0.680329, -0.412446,
		0.795132, 0.535311, 0.284968,
		37.493366, 35.811577, 34.049210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295696, 35.005798, 34.359497>,  <36.936771, 35.436859, 33.849731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295696, 35.005798, 34.359497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471550, 35.354752, 34.444981>,  <37.577065, 35.564121, 34.496273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471550, 35.354752, 34.444981>,  <37.295696, 35.005798, 34.359497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471550, 35.354752, 34.444981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054276, -0.263309, 0.963183,
		0.896535, -0.411850, -0.163109,
		0.439636, 0.872380, 0.213713,
		37.603439, 35.616467, 34.509094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794682, 34.755520, 34.851665>,  <37.295696, 35.005798, 34.359497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794682, 34.755520, 34.851665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730358, 35.148243, 34.892052>,  <37.691765, 35.383877, 34.916283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730358, 35.148243, 34.892052>,  <37.794682, 34.755520, 34.851665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730358, 35.148243, 34.892052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001066, -0.102467, 0.994736,
		0.986985, 0.159857, 0.017524,
		-0.160811, 0.981808, 0.100963,
		37.682114, 35.442787, 34.922340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280403, 34.990807, 35.383736>,  <37.794682, 34.755520, 34.851665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280403, 34.990807, 35.383736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991035, 35.266518, 35.367912>,  <37.817413, 35.431942, 35.358418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991035, 35.266518, 35.367912>,  <38.280403, 34.990807, 35.383736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991035, 35.266518, 35.367912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072320, -0.018671, 0.997207,
		0.686611, 0.724259, 0.063355,
		-0.723419, 0.689275, -0.039559,
		37.774010, 35.473301, 35.356045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481373, 35.580978, 35.774403>,  <38.280403, 34.990807, 35.383736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481373, 35.580978, 35.774403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081512, 35.570400, 35.775146>,  <37.841599, 35.564053, 35.775593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081512, 35.570400, 35.775146>,  <38.481373, 35.580978, 35.774403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081512, 35.570400, 35.775146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002245, -0.014481, 0.999893,
		-0.026418, 0.999545, 0.014535,
		-0.999649, -0.026448, 0.001862,
		37.781616, 35.562466, 35.775703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205147, 36.070118, 36.330013>,  <38.481373, 35.580978, 35.774403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205147, 36.070118, 36.330013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858746, 35.893940, 36.235321>,  <37.650906, 35.788235, 36.178505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858746, 35.893940, 36.235321>,  <38.205147, 36.070118, 36.330013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858746, 35.893940, 36.235321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307516, 0.095807, 0.946707,
		-0.394291, 0.892653, -0.218413,
		-0.866007, -0.440444, -0.236729,
		37.598942, 35.761806, 36.164303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638260, 36.459225, 36.620708>,  <38.205147, 36.070118, 36.330013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638260, 36.459225, 36.620708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497898, 36.085487, 36.595840>,  <37.413681, 35.861244, 36.580917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497898, 36.085487, 36.595840>,  <37.638260, 36.459225, 36.620708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497898, 36.085487, 36.595840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254211, 0.031149, 0.966647,
		-0.901247, 0.355002, -0.248452,
		-0.350900, -0.934347, -0.062173,
		37.392628, 35.805183, 36.577190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046585, 36.383343, 36.956261>,  <37.638260, 36.459225, 36.620708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046585, 36.383343, 36.956261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209511, 36.018047, 36.960171>,  <37.307266, 35.798870, 36.962517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209511, 36.018047, 36.960171>,  <37.046585, 36.383343, 36.956261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209511, 36.018047, 36.960171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150484, -0.056556, 0.986993,
		-0.900805, -0.403488, -0.160463,
		0.407315, -0.913235, 0.009773,
		37.331707, 35.744076, 36.963104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749413, 36.103409, 37.523422>,  <37.046585, 36.383343, 36.956261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749413, 36.103409, 37.523422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075802, 35.884727, 37.448269>,  <37.271637, 35.753521, 37.403175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075802, 35.884727, 37.448269>,  <36.749413, 36.103409, 37.523422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075802, 35.884727, 37.448269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204671, -0.030746, 0.978348,
		-0.540639, -0.836764, 0.086806,
		0.815977, -0.546700, -0.187884,
		37.320595, 35.720718, 37.391903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641163, 35.562977, 37.961475>,  <36.749413, 36.103409, 37.523422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641163, 35.562977, 37.961475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030064, 35.611122, 37.881229>,  <37.263405, 35.640007, 37.833084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030064, 35.611122, 37.881229>,  <36.641163, 35.562977, 37.961475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030064, 35.611122, 37.881229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186082, 0.121858, 0.974948,
		0.141797, -0.985222, 0.096078,
		0.972249, 0.120367, -0.200611,
		37.321739, 35.647228, 37.821045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947678, 35.195274, 38.473701>,  <36.641163, 35.562977, 37.961475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947678, 35.195274, 38.473701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237633, 35.433369, 38.335007>,  <37.411606, 35.576225, 38.251789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237633, 35.433369, 38.335007>,  <36.947678, 35.195274, 38.473701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237633, 35.433369, 38.335007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348069, 0.117872, 0.930029,
		0.594458, -0.794858, -0.121739,
		0.724892, 0.595237, -0.346736,
		37.455101, 35.611938, 38.230988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448956, 34.883629, 38.759350>,  <36.947678, 35.195274, 38.473701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448956, 34.883629, 38.759350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501831, 35.271011, 38.674850>,  <37.533554, 35.503441, 38.624149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501831, 35.271011, 38.674850>,  <37.448956, 34.883629, 38.759350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501831, 35.271011, 38.674850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208783, 0.181136, 0.961041,
		0.968987, -0.171141, -0.178253,
		0.132186, 0.968452, -0.211250,
		37.541489, 35.561546, 38.611477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004387, 35.051365, 39.184986>,  <37.448956, 34.883629, 38.759350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004387, 35.051365, 39.184986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815311, 35.395199, 39.107349>,  <37.701866, 35.601498, 39.060768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815311, 35.395199, 39.107349>,  <38.004387, 35.051365, 39.184986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815311, 35.395199, 39.107349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207425, 0.322599, 0.923528,
		0.856467, 0.396285, -0.330790,
		-0.472694, 0.859586, -0.194096,
		37.673504, 35.653076, 39.049122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463749, 35.437714, 39.545135>,  <38.004387, 35.051365, 39.184986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463749, 35.437714, 39.545135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142769, 35.661510, 39.462139>,  <37.950180, 35.795788, 39.412342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142769, 35.661510, 39.462139>,  <38.463749, 35.437714, 39.545135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142769, 35.661510, 39.462139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088786, 0.455792, 0.885647,
		0.590083, 0.692261, -0.415424,
		-0.802446, 0.559489, -0.207492,
		37.902035, 35.829357, 39.399891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744270, 36.080444, 39.717556>,  <38.463749, 35.437714, 39.545135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744270, 36.080444, 39.717556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344818, 36.101383, 39.716686>,  <38.105148, 36.113945, 39.716164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344818, 36.101383, 39.716686>,  <38.744270, 36.080444, 39.717556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344818, 36.101383, 39.716686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018145, 0.384464, 0.922962,
		0.049150, 0.921654, -0.384886,
		-0.998627, 0.052348, -0.002173,
		38.045231, 36.117088, 39.716034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604237, 36.745785, 39.857773>,  <38.744270, 36.080444, 39.717556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604237, 36.745785, 39.857773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290596, 36.537998, 39.993618>,  <38.102413, 36.413326, 40.075127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290596, 36.537998, 39.993618>,  <38.604237, 36.745785, 39.857773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290596, 36.537998, 39.993618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115723, 0.415238, 0.902322,
		-0.609749, 0.746813, -0.265474,
		-0.784101, -0.519468, 0.339614,
		38.055367, 36.382156, 40.095501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333309, 37.175903, 40.455242>,  <38.604237, 36.745785, 39.857773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333309, 37.175903, 40.455242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150017, 36.822468, 40.493805>,  <38.040043, 36.610405, 40.516941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150017, 36.822468, 40.493805>,  <38.333309, 37.175903, 40.455242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150017, 36.822468, 40.493805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054969, 0.080087, 0.995271,
		-0.887134, 0.461360, 0.011872,
		-0.458227, -0.883591, 0.096408,
		38.012550, 36.557392, 40.522728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861557, 37.223606, 41.134331>,  <38.333309, 37.175903, 40.455242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861557, 37.223606, 41.134331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883678, 36.829887, 41.067284>,  <37.896950, 36.593655, 41.027054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883678, 36.829887, 41.067284>,  <37.861557, 37.223606, 41.134331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883678, 36.829887, 41.067284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068165, -0.163764, 0.984142,
		-0.996140, -0.065851, 0.058038,
		0.055302, -0.984299, -0.167620,
		37.900269, 36.534599, 41.016998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324665, 36.932667, 41.546455>,  <37.861557, 37.223606, 41.134331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324665, 36.932667, 41.546455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608986, 36.669106, 41.447979>,  <37.779579, 36.510967, 41.388893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608986, 36.669106, 41.447979>,  <37.324665, 36.932667, 41.546455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608986, 36.669106, 41.447979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154759, -0.194937, 0.968529,
		-0.686160, -0.726530, -0.036589,
		0.710798, -0.658904, -0.246195,
		37.822224, 36.471436, 41.374119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237095, 36.444805, 42.012299>,  <37.324665, 36.932667, 41.546455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237095, 36.444805, 42.012299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608570, 36.400604, 41.870693>,  <37.831455, 36.374084, 41.785728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608570, 36.400604, 41.870693>,  <37.237095, 36.444805, 42.012299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608570, 36.400604, 41.870693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268074, -0.459591, 0.846706,
		-0.256267, -0.881229, -0.397194,
		0.928689, -0.110506, -0.354013,
		37.887177, 36.367451, 41.764488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318298, 35.783600, 42.165573>,  <37.237095, 36.444805, 42.012299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318298, 35.783600, 42.165573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664753, 35.983269, 42.155529>,  <37.872627, 36.103069, 42.149502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664753, 35.983269, 42.155529>,  <37.318298, 35.783600, 42.165573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664753, 35.983269, 42.155529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292362, -0.465256, 0.835501,
		0.405376, -0.731001, -0.548915,
		0.866138, 0.499174, -0.025114,
		37.924595, 36.133022, 42.147995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820744, 35.348911, 42.391144>,  <37.318298, 35.783600, 42.165573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820744, 35.348911, 42.391144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996376, 35.702679, 42.454407>,  <38.101753, 35.914940, 42.492363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996376, 35.702679, 42.454407>,  <37.820744, 35.348911, 42.391144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996376, 35.702679, 42.454407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474344, -0.377692, 0.795202,
		0.763025, -0.274138, -0.585355,
		0.439079, 0.884419, 0.158153,
		38.128101, 35.968006, 42.501854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476501, 35.215351, 42.425426>,  <37.820744, 35.348911, 42.391144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476501, 35.215351, 42.425426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396873, 35.554901, 42.621296>,  <38.349098, 35.758633, 42.738815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396873, 35.554901, 42.621296>,  <38.476501, 35.215351, 42.425426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396873, 35.554901, 42.621296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356255, -0.402800, 0.843110,
		0.912937, 0.342285, -0.222232,
		-0.199069, 0.848878, 0.489672,
		38.337154, 35.809563, 42.768196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102573, 35.381729, 42.750046>,  <38.476501, 35.215351, 42.425426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102573, 35.381729, 42.750046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836895, 35.614578, 42.937649>,  <38.677486, 35.754288, 43.050213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836895, 35.614578, 42.937649>,  <39.102573, 35.381729, 42.750046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836895, 35.614578, 42.937649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339485, -0.324085, 0.883017,
		0.666025, 0.745721, 0.017634,
		-0.664199, 0.582125, 0.469010,
		38.637634, 35.789215, 43.078350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540806, 35.727295, 43.216549>,  <39.102573, 35.381729, 42.750046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540806, 35.727295, 43.216549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165478, 35.735798, 43.354591>,  <38.940281, 35.740898, 43.437416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165478, 35.735798, 43.354591>,  <39.540806, 35.727295, 43.216549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165478, 35.735798, 43.354591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299949, -0.446450, 0.843038,
		0.171992, 0.894556, 0.412538,
		-0.938323, 0.021255, 0.345107,
		38.883980, 35.742176, 43.458122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662025, 36.020290, 43.811893>,  <39.540806, 35.727295, 43.216549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662025, 36.020290, 43.811893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297157, 35.861618, 43.853046>,  <39.078236, 35.766415, 43.877739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297157, 35.861618, 43.853046>,  <39.662025, 36.020290, 43.811893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297157, 35.861618, 43.853046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302712, -0.483001, 0.821630,
		-0.276235, 0.780611, 0.560661,
		-0.912173, -0.396681, 0.102878,
		39.023506, 35.742615, 43.883911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470139, 36.144981, 44.389217>,  <39.662025, 36.020290, 43.811893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470139, 36.144981, 44.389217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265148, 35.818714, 44.281841>,  <39.142155, 35.622955, 44.217415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265148, 35.818714, 44.281841>,  <39.470139, 36.144981, 44.389217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265148, 35.818714, 44.281841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406804, -0.505917, 0.760630,
		-0.756230, 0.280599, 0.591085,
		-0.512472, -0.815667, -0.268441,
		39.111408, 35.574013, 44.201309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037670, 35.799774, 45.005802>,  <39.470139, 36.144981, 44.389217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037670, 35.799774, 45.005802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135040, 35.524139, 44.732773>,  <39.193462, 35.358757, 44.568954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135040, 35.524139, 44.732773>,  <39.037670, 35.799774, 45.005802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135040, 35.524139, 44.732773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263770, -0.630186, 0.730268,
		-0.933365, -0.357807, 0.028358,
		0.243423, -0.689086, -0.682572,
		39.208069, 35.317413, 44.528000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289528, 35.152985, 45.359367>,  <39.037670, 35.799774, 45.005802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289528, 35.152985, 45.359367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018402, 34.858891, 45.359299>,  <38.855724, 34.682434, 45.359257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018402, 34.858891, 45.359299>,  <39.289528, 35.152985, 45.359367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018402, 34.858891, 45.359299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254571, 0.234467, 0.938200,
		-0.689752, 0.635972, -0.346095,
		-0.677817, -0.735231, -0.000176,
		38.815056, 34.638321, 45.359245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780998, 34.620331, 45.221420>,  <39.289528, 35.152985, 45.359367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780998, 34.620331, 45.221420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488838, 34.410786, 45.046116>,  <39.313541, 34.285057, 44.940933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488838, 34.410786, 45.046116>,  <39.780998, 34.620331, 45.221420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488838, 34.410786, 45.046116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463868, 0.851446, -0.244676,
		0.501333, 0.024583, -0.864905,
		-0.730405, -0.523866, -0.438261,
		39.269718, 34.253624, 44.914639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752831, 34.801636, 44.483761>,  <39.780998, 34.620331, 45.221420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752831, 34.801636, 44.483761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383156, 34.675266, 44.569611>,  <39.161350, 34.599445, 44.621120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383156, 34.675266, 44.569611>,  <39.752831, 34.801636, 44.483761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383156, 34.675266, 44.569611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380745, 0.806406, -0.452485,
		-0.030124, -0.499899, -0.865560,
		-0.924189, -0.315927, 0.214626,
		39.105900, 34.580486, 44.633999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328087, 34.663319, 43.880589>,  <39.752831, 34.801636, 44.483761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328087, 34.663319, 43.880589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113144, 34.794380, 44.191429>,  <38.984177, 34.873016, 44.377934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113144, 34.794380, 44.191429>,  <39.328087, 34.663319, 43.880589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113144, 34.794380, 44.191429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349205, 0.752297, -0.558664,
		-0.767661, -0.571571, -0.289834,
		-0.537357, 0.327653, 0.777104,
		38.951935, 34.892677, 44.424561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479706, 34.707314, 43.743916>,  <39.328087, 34.663319, 43.880589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479706, 34.707314, 43.743916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642803, 34.991516, 43.973324>,  <38.740662, 35.162037, 44.110970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642803, 34.991516, 43.973324>,  <38.479706, 34.707314, 43.743916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642803, 34.991516, 43.973324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429083, 0.703528, -0.566512,
		-0.806000, -0.015099, 0.591723,
		0.407739, 0.710507, 0.573523,
		38.765125, 35.204670, 44.145382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855019, 35.133991, 43.968903>,  <38.479706, 34.707314, 43.743916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855019, 35.133991, 43.968903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205284, 35.325932, 43.947132>,  <38.415443, 35.441097, 43.934071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205284, 35.325932, 43.947132>,  <37.855019, 35.133991, 43.968903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205284, 35.325932, 43.947132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379868, 0.614818, -0.691158,
		-0.298191, 0.625894, 0.720651,
		0.875661, 0.479849, -0.054424,
		38.467983, 35.469887, 43.930805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785080, 35.903152, 44.093227>,  <37.855019, 35.133991, 43.968903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785080, 35.903152, 44.093227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106201, 35.828239, 43.866798>,  <38.298874, 35.783291, 43.730942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106201, 35.828239, 43.866798>,  <37.785080, 35.903152, 44.093227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106201, 35.828239, 43.866798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343201, 0.631210, -0.695548,
		0.487573, 0.752663, 0.442460,
		0.802799, -0.187278, -0.566075,
		38.347042, 35.772057, 43.696976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803802, 36.545044, 43.713856>,  <37.785080, 35.903152, 44.093227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803802, 36.545044, 43.713856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086193, 36.327629, 43.532238>,  <38.255627, 36.197182, 43.423267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086193, 36.327629, 43.532238>,  <37.803802, 36.545044, 43.713856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086193, 36.327629, 43.532238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132052, 0.528836, -0.838388,
		0.695813, 0.651842, 0.301572,
		0.705979, -0.543539, -0.454048,
		38.297985, 36.164566, 43.396023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151100, 37.055141, 43.200764>,  <37.803802, 36.545044, 43.713856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151100, 37.055141, 43.200764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203362, 36.678265, 43.077351>,  <38.234718, 36.452137, 43.003304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203362, 36.678265, 43.077351>,  <38.151100, 37.055141, 43.200764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203362, 36.678265, 43.077351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077543, 0.300540, -0.950612,
		0.988391, 0.148125, -0.033794,
		0.130653, -0.942196, -0.308537,
		38.242558, 36.395607, 42.984791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671593, 37.124138, 42.702633>,  <38.151100, 37.055141, 43.200764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671593, 37.124138, 42.702633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499214, 36.766918, 42.650860>,  <38.395786, 36.552586, 42.619797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499214, 36.766918, 42.650860>,  <38.671593, 37.124138, 42.702633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499214, 36.766918, 42.650860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145692, 0.210410, -0.966696,
		0.890537, -0.397740, -0.220786,
		-0.430949, -0.893046, -0.129430,
		38.369930, 36.499004, 42.612030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077209, 36.842083, 42.122711>,  <38.671593, 37.124138, 42.702633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077209, 36.842083, 42.122711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728874, 36.646301, 42.140961>,  <38.519875, 36.528831, 42.151913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728874, 36.646301, 42.140961>,  <39.077209, 36.842083, 42.122711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728874, 36.646301, 42.140961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274736, 0.407633, -0.870836,
		0.407633, -0.770890, -0.489452,
		0.870836, 0.489452, -0.045627,
		38.467625, 36.499466, 42.154648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911732, 36.705414, 41.529095>,  <39.077209, 36.842083, 42.122711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911732, 36.705414, 41.529095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559448, 36.708485, 41.718533>,  <38.348080, 36.710327, 41.832195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559448, 36.708485, 41.718533>,  <38.911732, 36.705414, 41.529095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559448, 36.708485, 41.718533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399839, 0.523985, -0.752043,
		-0.253927, -0.851693, -0.458410,
		-0.880710, 0.007674, 0.473594,
		38.295235, 36.710785, 41.860611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480038, 36.135162, 41.740368>,  <38.911732, 36.705414, 41.529095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480038, 36.135162, 41.740368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115322, 35.976505, 41.782925>,  <37.896492, 35.881313, 41.808456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115322, 35.976505, 41.782925>,  <38.480038, 36.135162, 41.740368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115322, 35.976505, 41.782925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133485, 0.041257, -0.990192,
		0.388360, -0.917047, -0.090563,
		-0.911789, -0.396639, 0.106390,
		37.841785, 35.857513, 41.814842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546864, 35.657883, 41.204670>,  <38.480038, 36.135162, 41.740368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546864, 35.657883, 41.204670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197865, 35.846336, 41.256496>,  <37.988464, 35.959408, 41.287594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197865, 35.846336, 41.256496>,  <38.546864, 35.657883, 41.204670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197865, 35.846336, 41.256496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130937, 0.030039, -0.990936,
		-0.470751, -0.881552, 0.035479,
		-0.872496, 0.471130, 0.129569,
		37.936115, 35.987675, 41.295368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937756, 35.266464, 40.894054>,  <38.546864, 35.657883, 41.204670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937756, 35.266464, 40.894054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904125, 35.664574, 40.913460>,  <37.883945, 35.903439, 40.925102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904125, 35.664574, 40.913460>,  <37.937756, 35.266464, 40.894054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904125, 35.664574, 40.913460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154599, 0.035067, -0.987355,
		-0.984394, -0.090512, 0.150921,
		-0.084075, 0.995278, 0.048513,
		37.878902, 35.963158, 40.928013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374176, 35.406174, 40.549351>,  <37.937756, 35.266464, 40.894054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374176, 35.406174, 40.549351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579163, 35.749519, 40.559002>,  <37.702156, 35.955528, 40.564793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579163, 35.749519, 40.559002>,  <37.374176, 35.406174, 40.549351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579163, 35.749519, 40.559002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216484, 0.156331, -0.963688,
		-0.830969, 0.488639, 0.265937,
		0.512471, 0.858366, 0.024124,
		37.732903, 36.007030, 40.566238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911602, 35.878777, 40.389984>,  <37.374176, 35.406174, 40.549351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911602, 35.878777, 40.389984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270557, 36.005245, 40.266872>,  <37.485931, 36.081127, 40.193005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270557, 36.005245, 40.266872>,  <36.911602, 35.878777, 40.389984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270557, 36.005245, 40.266872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361566, 0.127100, -0.923643,
		-0.252913, 0.940149, 0.228376,
		0.897388, 0.316175, -0.307780,
		37.539772, 36.100098, 40.174538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803387, 36.460060, 39.811638>,  <36.911602, 35.878777, 40.389984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803387, 36.460060, 39.811638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181629, 36.334690, 39.776772>,  <37.408573, 36.259468, 39.755852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181629, 36.334690, 39.776772>,  <36.803387, 36.460060, 39.811638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181629, 36.334690, 39.776772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130500, -0.120007, -0.984159,
		0.297999, 0.942000, -0.154381,
		0.945604, -0.313425, -0.087169,
		37.465309, 36.240662, 39.750622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870731, 36.659634, 39.207317>,  <36.803387, 36.460060, 39.811638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870731, 36.659634, 39.207317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188694, 36.423958, 39.265255>,  <37.379471, 36.282555, 39.300018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188694, 36.423958, 39.265255>,  <36.870731, 36.659634, 39.207317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188694, 36.423958, 39.265255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070874, -0.146921, -0.986606,
		0.602575, 0.794527, -0.075031,
		0.794909, -0.589186, 0.144842,
		37.427166, 36.247200, 39.308708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305222, 36.852085, 38.685623>,  <36.870731, 36.659634, 39.207317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305222, 36.852085, 38.685623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443489, 36.495262, 38.802074>,  <37.526451, 36.281170, 38.871944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443489, 36.495262, 38.802074>,  <37.305222, 36.852085, 38.685623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443489, 36.495262, 38.802074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234104, -0.218457, -0.947350,
		0.908685, 0.395624, 0.133319,
		0.345670, -0.892053, 0.291125,
		37.547192, 36.227646, 38.889412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863010, 36.837681, 38.296062>,  <37.305222, 36.852085, 38.685623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863010, 36.837681, 38.296062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800346, 36.453140, 38.386627>,  <37.762749, 36.222416, 38.440968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800346, 36.453140, 38.386627>,  <37.863010, 36.837681, 38.296062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800346, 36.453140, 38.386627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017820, -0.231957, -0.972563,
		0.987491, -0.148332, 0.053471,
		-0.156665, -0.961350, 0.226412,
		37.753345, 36.164734, 38.454552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392334, 36.408733, 37.881325>,  <37.863010, 36.837681, 38.296062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392334, 36.408733, 37.881325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096722, 36.154606, 37.970947>,  <37.919353, 36.002129, 38.024719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096722, 36.154606, 37.970947>,  <38.392334, 36.408733, 37.881325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096722, 36.154606, 37.970947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043955, -0.377353, -0.925026,
		0.672237, -0.673774, 0.306801,
		-0.739030, -0.635322, 0.224054,
		37.875011, 35.964008, 38.038162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583729, 35.826447, 37.570465>,  <38.392334, 36.408733, 37.881325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583729, 35.826447, 37.570465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203545, 35.743496, 37.663082>,  <37.975433, 35.693726, 37.718651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203545, 35.743496, 37.663082>,  <38.583729, 35.826447, 37.570465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203545, 35.743496, 37.663082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150367, -0.345199, -0.926406,
		0.272041, -0.915333, 0.296917,
		-0.950465, -0.207374, 0.231544,
		37.918404, 35.681282, 37.732544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414021, 35.136806, 37.419586>,  <38.583729, 35.826447, 37.570465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414021, 35.136806, 37.419586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075005, 35.343533, 37.371292>,  <37.871593, 35.467567, 37.342316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075005, 35.343533, 37.371292>,  <38.414021, 35.136806, 37.419586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075005, 35.343533, 37.371292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196286, -0.516594, -0.833428,
		-0.493088, -0.682673, 0.539280,
		-0.847547, 0.516806, -0.120727,
		37.820740, 35.498577, 37.335072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060249, 34.703552, 37.028095>,  <38.414021, 35.136806, 37.419586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060249, 34.703552, 37.028095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828358, 35.029396, 37.020916>,  <37.689224, 35.224903, 37.016609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828358, 35.029396, 37.020916>,  <38.060249, 34.703552, 37.028095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828358, 35.029396, 37.020916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423128, -0.319805, -0.847754,
		-0.696333, -0.483869, 0.530086,
		-0.579726, 0.814614, -0.017952,
		37.654438, 35.273781, 37.015530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559017, 34.729370, 36.484127>,  <38.060249, 34.703552, 37.028095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559017, 34.729370, 36.484127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931435, 34.583412, 36.482620>,  <39.154884, 34.495838, 36.481716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931435, 34.583412, 36.482620>,  <38.559017, 34.729370, 36.484127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931435, 34.583412, 36.482620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025027, -0.053539, -0.998252,
		0.364058, 0.929507, -0.058979,
		0.931040, -0.364898, -0.003771,
		39.210747, 34.473942, 36.481487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887329, 35.015503, 35.880337>,  <38.559017, 34.729370, 36.484127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887329, 35.015503, 35.880337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069515, 34.671150, 35.971058>,  <39.178829, 34.464539, 36.025490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069515, 34.671150, 35.971058>,  <38.887329, 35.015503, 35.880337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069515, 34.671150, 35.971058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080546, -0.213866, -0.973536,
		0.886601, 0.461683, -0.028069,
		0.455468, -0.860877, 0.226801,
		39.206154, 34.412888, 36.039097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472878, 34.984493, 35.487209>,  <38.887329, 35.015503, 35.880337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472878, 34.984493, 35.487209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326218, 34.618530, 35.554741>,  <39.238220, 34.398952, 35.595261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326218, 34.618530, 35.554741>,  <39.472878, 34.984493, 35.487209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326218, 34.618530, 35.554741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065271, -0.155723, -0.985642,
		0.928066, -0.372407, -0.002622,
		-0.366651, -0.914912, 0.168828,
		39.216221, 34.344055, 35.605389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197639, 35.270691, 35.576237>,  <39.472878, 34.984493, 35.487209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197639, 35.270691, 35.576237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483513, 35.064247, 35.387405>,  <40.655037, 34.940380, 35.274105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483513, 35.064247, 35.387405>,  <40.197639, 35.270691, 35.576237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483513, 35.064247, 35.387405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571177, 0.820203, -0.032006,
		0.403721, -0.246768, 0.880974,
		0.714679, -0.516113, -0.472082,
		40.697918, 34.909412, 35.245781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726860, 35.324661, 36.021626>,  <40.197639, 35.270691, 35.576237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726860, 35.324661, 36.021626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854748, 35.277946, 35.645512>,  <40.931480, 35.249916, 35.419842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854748, 35.277946, 35.645512>,  <40.726860, 35.324661, 36.021626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854748, 35.277946, 35.645512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624157, 0.772599, 0.116271,
		0.712885, -0.624061, 0.319911,
		0.319723, -0.116787, -0.940286,
		40.950665, 35.242912, 35.363426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480312, 35.152126, 36.033794>,  <40.726860, 35.324661, 36.021626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480312, 35.152126, 36.033794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378868, 35.332031, 35.691242>,  <41.318001, 35.439976, 35.485710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378868, 35.332031, 35.691242>,  <41.480312, 35.152126, 36.033794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378868, 35.332031, 35.691242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637269, 0.743731, 0.201875,
		0.727714, -0.494548, -0.475241,
		-0.253615, 0.449764, -0.856383,
		41.302784, 35.466961, 35.434326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961796, 34.912136, 36.607849>,  <41.480312, 35.152126, 36.033794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961796, 34.912136, 36.607849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581486, 35.013210, 36.679596>,  <41.353298, 35.073856, 36.722645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581486, 35.013210, 36.679596>,  <41.961796, 34.912136, 36.607849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581486, 35.013210, 36.679596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187682, -0.930166, 0.315542,
		0.246570, 0.266348, 0.931806,
		-0.950778, 0.252687, 0.179362,
		41.296253, 35.089016, 36.733406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.383144, 35.447399, 36.816288>,  <41.961796, 34.912136, 36.607849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.383144, 35.447399, 36.816288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577213, 35.100067, 36.857494>,  <42.693653, 34.891666, 36.882217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577213, 35.100067, 36.857494>,  <42.383144, 35.447399, 36.816288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577213, 35.100067, 36.857494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065279, -0.153454, -0.985997,
		0.871979, 0.471653, -0.131135,
		0.485172, -0.868329, 0.103020,
		42.722763, 34.839569, 36.888401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869591, 35.470058, 36.341511>,  <42.383144, 35.447399, 36.816288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869591, 35.470058, 36.341511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734253, 35.108387, 36.445812>,  <42.653049, 34.891384, 36.508392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734253, 35.108387, 36.445812>,  <42.869591, 35.470058, 36.341511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734253, 35.108387, 36.445812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279766, -0.167921, -0.945269,
		0.898475, -0.392774, -0.196143,
		-0.338341, -0.904174, 0.260757,
		42.632751, 34.837135, 36.524040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158905, 34.887985, 35.888744>,  <42.869591, 35.470058, 36.341511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158905, 34.887985, 35.888744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798950, 34.813866, 36.046661>,  <42.582977, 34.769394, 36.141411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798950, 34.813866, 36.046661>,  <43.158905, 34.887985, 35.888744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798950, 34.813866, 36.046661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416689, 0.098166, -0.903733,
		0.128722, -0.977763, -0.165558,
		-0.899889, -0.185316, 0.394787,
		42.528984, 34.758274, 36.165096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045822, 34.349735, 35.654861>,  <43.158905, 34.887985, 35.888744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045822, 34.349735, 35.654861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.704609, 34.542080, 35.735970>,  <42.499882, 34.657486, 35.784634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.704609, 34.542080, 35.735970>,  <43.045822, 34.349735, 35.654861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704609, 34.542080, 35.735970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143877, 0.156788, -0.977096,
		-0.501635, -0.862666, -0.064561,
		-0.853031, 0.480857, 0.202768,
		42.448700, 34.686337, 35.796799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715034, 33.982819, 35.411835>,  <43.045822, 34.349735, 35.654861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715034, 33.982819, 35.411835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835312, 34.010353, 35.031342>,  <43.907478, 34.026875, 34.803047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835312, 34.010353, 35.031342>,  <43.715034, 33.982819, 35.411835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835312, 34.010353, 35.031342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897639, 0.316551, 0.306660,
		0.322224, -0.946074, 0.033393,
		0.300693, 0.068839, -0.951233,
		43.925522, 34.031002, 34.745972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327145, 33.515427, 35.286308>,  <43.715034, 33.982819, 35.411835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327145, 33.515427, 35.286308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299454, 33.862537, 35.089462>,  <44.282841, 34.070805, 34.971355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299454, 33.862537, 35.089462>,  <44.327145, 33.515427, 35.286308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299454, 33.862537, 35.089462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971837, 0.170046, 0.163146,
		0.225256, -0.466963, -0.855105,
		-0.069224, 0.867773, -0.492116,
		44.278687, 34.122868, 34.941826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.879391, 33.636673, 34.687340>,  <44.327145, 33.515427, 35.286308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.879391, 33.636673, 34.687340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.765617, 33.977173, 34.863735>,  <44.697353, 34.181473, 34.969570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.765617, 33.977173, 34.863735>,  <44.879391, 33.636673, 34.687340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.765617, 33.977173, 34.863735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946691, 0.176835, 0.269269,
		0.151234, 0.494067, -0.856169,
		-0.284437, 0.851250, 0.440986,
		44.680286, 34.232548, 34.996033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.250053, 34.145073, 34.315880>,  <44.879391, 33.636673, 34.687340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.250053, 34.145073, 34.315880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208195, 34.202728, 34.709484>,  <45.183079, 34.237320, 34.945648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208195, 34.202728, 34.709484>,  <45.250053, 34.145073, 34.315880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208195, 34.202728, 34.709484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982472, 0.168461, 0.079809,
		-0.154264, 0.975113, -0.159237,
		-0.104648, 0.144135, 0.984009,
		45.176800, 34.245968, 35.004688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.488991, 34.790146, 34.441608>,  <45.250053, 34.145073, 34.315880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.488991, 34.790146, 34.441608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560509, 34.541115, 34.746353>,  <45.603420, 34.391697, 34.929199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560509, 34.541115, 34.746353>,  <45.488991, 34.790146, 34.441608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.560509, 34.541115, 34.746353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981278, 0.056493, -0.184123,
		0.071591, 0.780518, 0.621020,
		0.178794, -0.622575, 0.761862,
		45.614147, 34.354343, 34.974911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.755844, 35.133953, 34.995007>,  <45.488991, 34.790146, 34.441608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.755844, 35.133953, 34.995007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.872402, 34.752232, 34.968525>,  <45.942337, 34.523197, 34.952637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.872402, 34.752232, 34.968525>,  <45.755844, 35.133953, 34.995007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.872402, 34.752232, 34.968525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888130, 0.295605, -0.351913,
		0.355404, 0.043750, 0.933688,
		0.291399, -0.954308, -0.066203,
		45.959824, 34.465939, 34.948666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.354763, 35.167908, 35.340855>,  <45.755844, 35.133953, 34.995007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.354763, 35.167908, 35.340855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.340012, 34.867294, 35.077389>,  <46.331161, 34.686928, 34.919308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.340012, 34.867294, 35.077389>,  <46.354763, 35.167908, 35.340855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.340012, 34.867294, 35.077389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864371, 0.306784, -0.398430,
		0.501500, -0.584026, 0.638287,
		-0.036877, -0.751530, -0.658668,
		46.328949, 34.641834, 34.879787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.034409, 34.769436, 35.325401>,  <46.354763, 35.167908, 35.340855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.034409, 34.769436, 35.325401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.839386, 34.727627, 34.978676>,  <46.722374, 34.702541, 34.770641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.839386, 34.727627, 34.978676>,  <47.034409, 34.769436, 35.325401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.839386, 34.727627, 34.978676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834180, 0.237331, -0.497814,
		0.257754, -0.965790, -0.028521,
		-0.487552, -0.104522, -0.866815,
		46.693119, 34.696270, 34.718632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.501057, 34.437004, 34.884686>,  <47.034409, 34.769436, 35.325401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.501057, 34.437004, 34.884686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.251923, 34.627583, 34.636471>,  <47.102440, 34.741932, 34.487541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.251923, 34.627583, 34.636471>,  <47.501057, 34.437004, 34.884686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.251923, 34.627583, 34.636471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747307, 0.127584, -0.652115,
		-0.231529, -0.869896, -0.435518,
		-0.622837, 0.476449, -0.620540,
		47.065071, 34.770515, 34.450310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.083584, 34.993927, 35.024605>,  <47.501057, 34.437004, 34.884686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.083584, 34.993927, 35.024605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.729664, 35.175495, 35.066734>,  <47.517311, 35.284435, 35.092010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.729664, 35.175495, 35.066734>,  <48.083584, 34.993927, 35.024605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.729664, 35.175495, 35.066734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462854, -0.882244, -0.086093,
		0.053843, -0.124925, 0.990704,
		-0.884798, 0.453916, 0.105325,
		47.464226, 35.311668, 35.098331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.933414, 32.518642, 26.511158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.560642, 32.634800, 26.424284>,  <34.336979, 32.704494, 26.372160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.560642, 32.634800, 26.424284>,  <34.933414, 32.518642, 26.511158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560642, 32.634800, 26.424284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293432, -0.251994, 0.922170,
		0.213066, 0.923130, 0.320053,
		-0.931934, 0.290397, -0.217185,
		34.281063, 32.721920, 26.359129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628960, 33.059608, 26.997868>,  <34.933414, 32.518642, 26.511158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628960, 33.059608, 26.997868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.355865, 32.813793, 26.839769>,  <34.192009, 32.666306, 26.744909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.355865, 32.813793, 26.839769>,  <34.628960, 33.059608, 26.997868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355865, 32.813793, 26.839769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340038, -0.211562, 0.916305,
		-0.646724, 0.759990, -0.064526,
		-0.682732, -0.614538, -0.395248,
		34.151047, 32.629433, 26.721195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086559, 33.207489, 27.438457>,  <34.628960, 33.059608, 26.997868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086559, 33.207489, 27.438457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.009491, 32.854050, 27.267750>,  <33.963249, 32.641987, 27.165325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.009491, 32.854050, 27.267750>,  <34.086559, 33.207489, 27.438457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009491, 32.854050, 27.267750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283807, -0.366150, 0.886221,
		-0.939325, 0.291868, -0.180226,
		-0.192670, -0.883599, -0.426768,
		33.951691, 32.588970, 27.139719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353828, 33.086571, 27.567715>,  <34.086559, 33.207489, 27.438457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353828, 33.086571, 27.567715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.548916, 32.742081, 27.510563>,  <33.665970, 32.535385, 27.476273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.548916, 32.742081, 27.510563>,  <33.353828, 33.086571, 27.567715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548916, 32.742081, 27.510563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233613, -0.286449, 0.929178,
		-0.841162, -0.419800, -0.340902,
		0.487720, -0.861229, -0.142880,
		33.695232, 32.483711, 27.467699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889072, 32.517094, 27.735342>,  <33.353828, 33.086571, 27.567715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889072, 32.517094, 27.735342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.257496, 32.362057, 27.750423>,  <33.478550, 32.269035, 27.759472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.257496, 32.362057, 27.750423>,  <32.889072, 32.517094, 27.735342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257496, 32.362057, 27.750423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211508, -0.416613, 0.884137,
		-0.326975, -0.822318, -0.465705,
		0.921060, -0.387591, 0.037705,
		33.533813, 32.245777, 27.761734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712769, 31.944860, 28.099613>,  <32.889072, 32.517094, 27.735342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712769, 31.944860, 28.099613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.110340, 31.982204, 28.122871>,  <33.348885, 32.004612, 28.136827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.110340, 31.982204, 28.122871>,  <32.712769, 31.944860, 28.099613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110340, 31.982204, 28.122871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028452, -0.292433, 0.955863,
		0.106245, -0.951718, -0.288002,
		0.993933, 0.093362, 0.058148,
		33.408520, 32.010212, 28.140316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731903, 31.469833, 28.504887>,  <32.712769, 31.944860, 28.099613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731903, 31.469833, 28.504887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.076347, 31.672441, 28.522440>,  <33.283012, 31.794006, 28.532972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.076347, 31.672441, 28.522440>,  <32.731903, 31.469833, 28.504887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076347, 31.672441, 28.522440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061781, 0.018572, 0.997917,
		0.504653, -0.862026, 0.047286,
		0.861109, 0.506523, 0.043884,
		33.334679, 31.824398, 28.535604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165203, 31.178715, 29.038713>,  <32.731903, 31.469833, 28.504887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165203, 31.178715, 29.038713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.315125, 31.543076, 28.969687>,  <33.405079, 31.761692, 28.928270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.315125, 31.543076, 28.969687>,  <33.165203, 31.178715, 29.038713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315125, 31.543076, 28.969687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228460, 0.089650, 0.969417,
		0.898514, -0.402767, -0.174503,
		0.374805, 0.910901, -0.172568,
		33.427567, 31.816345, 28.917915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938057, 31.271362, 29.348087>,  <33.165203, 31.178715, 29.038713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938057, 31.271362, 29.348087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.762337, 31.628696, 29.310217>,  <33.656906, 31.843098, 29.287495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.762337, 31.628696, 29.310217>,  <33.938057, 31.271362, 29.348087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762337, 31.628696, 29.310217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308992, 0.249221, 0.917830,
		0.843528, 0.373948, -0.385517,
		-0.439299, 0.893338, -0.094678,
		33.630547, 31.896698, 29.281813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375694, 31.668169, 29.627110>,  <33.938057, 31.271362, 29.348087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375694, 31.668169, 29.627110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.033947, 31.875656, 29.639715>,  <33.828899, 32.000149, 29.647280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.033947, 31.875656, 29.639715>,  <34.375694, 31.668169, 29.627110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033947, 31.875656, 29.639715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303874, 0.449468, 0.840023,
		0.421568, 0.727263, -0.541635,
		-0.854366, 0.518716, 0.031515,
		33.777637, 32.031269, 29.649170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566452, 32.214508, 29.963232>,  <34.375694, 31.668169, 29.627110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566452, 32.214508, 29.963232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.168285, 32.238689, 29.992880>,  <33.929386, 32.253201, 30.010668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.168285, 32.238689, 29.992880>,  <34.566452, 32.214508, 29.963232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168285, 32.238689, 29.992880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094646, 0.510635, 0.854572,
		0.013816, 0.857669, -0.514016,
		-0.995415, 0.060457, 0.074120,
		33.869659, 32.256828, 30.015116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404224, 32.892509, 30.082907>,  <34.566452, 32.214508, 29.963232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404224, 32.892509, 30.082907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.088348, 32.710167, 30.247141>,  <33.898823, 32.600761, 30.345682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.088348, 32.710167, 30.247141>,  <34.404224, 32.892509, 30.082907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088348, 32.710167, 30.247141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131622, 0.527776, 0.839123,
		-0.599221, 0.716689, -0.356778,
		-0.789689, -0.455861, 0.410587,
		33.851440, 32.573410, 30.370317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064892, 33.368427, 30.500845>,  <34.404224, 32.892509, 30.082907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064892, 33.368427, 30.500845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.900208, 33.040081, 30.659172>,  <33.801399, 32.843071, 30.754169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.900208, 33.040081, 30.659172>,  <34.064892, 33.368427, 30.500845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900208, 33.040081, 30.659172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138241, 0.373056, 0.917452,
		-0.900770, 0.432441, -0.040112,
		-0.411708, -0.820868, 0.395819,
		33.776695, 32.793819, 30.777918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661922, 33.668865, 31.054935>,  <34.064892, 33.368427, 30.500845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661922, 33.668865, 31.054935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.725319, 33.280945, 31.129086>,  <33.763359, 33.048191, 31.173576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.725319, 33.280945, 31.129086>,  <33.661922, 33.668865, 31.054935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725319, 33.280945, 31.129086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096454, 0.202059, 0.974612,
		-0.982637, -0.136591, 0.125566,
		0.158495, -0.969802, 0.185376,
		33.772869, 32.990005, 31.184698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125340, 33.364925, 31.545286>,  <33.661922, 33.668865, 31.054935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125340, 33.364925, 31.545286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.454880, 33.140991, 31.580740>,  <33.652603, 33.006630, 31.602013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.454880, 33.140991, 31.580740>,  <33.125340, 33.364925, 31.545286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454880, 33.140991, 31.580740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050854, 0.082740, 0.995273,
		-0.564519, -0.824465, 0.039695,
		0.823852, -0.559831, 0.088636,
		33.702034, 32.973042, 31.607330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010941, 32.931438, 32.162930>,  <33.125340, 33.364925, 31.545286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010941, 32.931438, 32.162930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.405079, 32.924614, 32.095047>,  <33.641563, 32.920521, 32.054317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.405079, 32.924614, 32.095047>,  <33.010941, 32.931438, 32.162930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405079, 32.924614, 32.095047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170377, 0.052668, 0.983970,
		-0.007851, -0.998466, 0.054803,
		0.985348, -0.017062, -0.169702,
		33.700684, 32.919495, 32.044136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248699, 32.478851, 32.729324>,  <33.010941, 32.931438, 32.162930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248699, 32.478851, 32.729324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.584949, 32.655979, 32.604580>,  <33.786701, 32.762257, 32.529732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.584949, 32.655979, 32.604580>,  <33.248699, 32.478851, 32.729324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584949, 32.655979, 32.604580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306917, 0.084957, 0.947936,
		0.446261, -0.892576, -0.064492,
		0.840626, 0.442821, -0.311860,
		33.837139, 32.788826, 32.511021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873268, 32.153038, 32.931332>,  <33.248699, 32.478851, 32.729324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873268, 32.153038, 32.931332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.947586, 32.542171, 32.876091>,  <33.992176, 32.775650, 32.842945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.947586, 32.542171, 32.876091>,  <33.873268, 32.153038, 32.931332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947586, 32.542171, 32.876091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199557, 0.100260, 0.974744,
		0.962111, -0.208663, -0.175508,
		0.185797, 0.972835, -0.138101,
		34.003326, 32.834023, 32.834660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256371, 32.331535, 33.590549>,  <33.873268, 32.153038, 32.931332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256371, 32.331535, 33.590549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.216995, 32.691181, 33.419945>,  <34.193371, 32.906967, 33.317581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.216995, 32.691181, 33.419945>,  <34.256371, 32.331535, 33.590549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216995, 32.691181, 33.419945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254577, 0.437083, 0.862641,
		0.962030, -0.023667, -0.271917,
		-0.098434, 0.899110, -0.426511,
		34.187466, 32.960915, 33.291992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882683, 32.708168, 33.646355>,  <34.256371, 32.331535, 33.590549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882683, 32.708168, 33.646355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.596298, 32.978477, 33.576237>,  <34.424469, 33.140663, 33.534164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.596298, 32.978477, 33.576237>,  <34.882683, 32.708168, 33.646355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596298, 32.978477, 33.576237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298245, 0.523083, 0.798395,
		0.631228, 0.519339, -0.576054,
		-0.715961, 0.675775, -0.175294,
		34.381512, 33.181210, 33.523647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146008, 33.288475, 33.894352>,  <34.882683, 32.708168, 33.646355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146008, 33.288475, 33.894352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.766548, 33.410156, 33.859650>,  <34.538872, 33.483166, 33.838829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.766548, 33.410156, 33.859650>,  <35.146008, 33.288475, 33.894352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766548, 33.410156, 33.859650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146546, 0.665671, 0.731714,
		0.280339, 0.681427, -0.676068,
		-0.948649, 0.304203, -0.086754,
		34.481953, 33.501415, 33.833622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223614, 33.926678, 34.190903>,  <35.146008, 33.288475, 33.894352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223614, 33.926678, 34.190903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.834782, 33.832867, 34.193832>,  <34.601482, 33.776581, 34.195591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.834782, 33.832867, 34.193832>,  <35.223614, 33.926678, 34.190903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834782, 33.832867, 34.193832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113869, 0.498814, 0.859197,
		-0.205160, 0.834375, -0.511593,
		-0.972082, -0.234527, 0.007327,
		34.543156, 33.762508, 34.196030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598740, 34.397278, 34.543037>,  <35.223614, 33.926678, 34.190903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598740, 34.397278, 34.543037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.963287, 34.236572, 34.578785>,  <36.182018, 34.140148, 34.600235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.963287, 34.236572, 34.578785>,  <35.598740, 34.397278, 34.543037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963287, 34.236572, 34.578785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078944, -0.042468, -0.995974,
		0.403942, 0.914758, -0.006987,
		0.911372, -0.401765, 0.089369,
		36.236698, 34.116043, 34.605595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208645, 34.773773, 34.118702>,  <35.598740, 34.397278, 34.543037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208645, 34.773773, 34.118702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.362011, 34.408802, 34.175934>,  <36.454029, 34.189819, 34.210274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.362011, 34.408802, 34.175934>,  <36.208645, 34.773773, 34.118702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362011, 34.408802, 34.175934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191453, -0.073034, -0.978781,
		0.903516, 0.402668, 0.146685,
		0.383411, -0.912428, 0.143079,
		36.477036, 34.135075, 34.218857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770718, 34.750549, 33.768436>,  <36.208645, 34.773773, 34.118702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770718, 34.750549, 33.768436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708862, 34.357891, 33.813103>,  <36.671749, 34.122295, 33.839901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708862, 34.357891, 33.813103>,  <36.770718, 34.750549, 33.768436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708862, 34.357891, 33.813103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231347, -0.145858, -0.961875,
		0.960503, -0.122906, 0.249655,
		-0.154635, -0.981641, 0.111663,
		36.662472, 34.063400, 33.846603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417759, 34.385193, 33.439640>,  <36.770718, 34.750549, 33.768436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417759, 34.385193, 33.439640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.120827, 34.117489, 33.426800>,  <36.942669, 33.956867, 33.419094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.120827, 34.117489, 33.426800>,  <37.417759, 34.385193, 33.439640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120827, 34.117489, 33.426800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196581, -0.171736, -0.965330,
		0.640547, -0.722906, 0.259049,
		-0.742331, -0.669264, -0.032105,
		36.898129, 33.916710, 33.417168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648384, 33.812885, 33.003880>,  <37.417759, 34.385193, 33.439640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648384, 33.812885, 33.003880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.251984, 33.759468, 33.007435>,  <37.014145, 33.727417, 33.009567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.251984, 33.759468, 33.007435>,  <37.648384, 33.812885, 33.003880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251984, 33.759468, 33.007435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029269, -0.281065, -0.959242,
		0.130603, -0.950351, 0.282445,
		-0.991003, -0.133547, 0.008892,
		36.954681, 33.719402, 33.010101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481354, 33.170334, 32.639912>,  <37.648384, 33.812885, 33.003880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481354, 33.170334, 32.639912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.140633, 33.379726, 32.647980>,  <36.936199, 33.505363, 32.652821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.140633, 33.379726, 32.647980>,  <37.481354, 33.170334, 32.639912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140633, 33.379726, 32.647980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196220, -0.283113, -0.938800,
		-0.485734, -0.803625, 0.343873,
		-0.851798, 0.523481, 0.020170,
		36.885094, 33.536770, 32.654030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895149, 32.759327, 32.283085>,  <37.481354, 33.170334, 32.639912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895149, 32.759327, 32.283085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766239, 33.137920, 32.276085>,  <36.688892, 33.365078, 32.271885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766239, 33.137920, 32.276085>,  <36.895149, 32.759327, 32.283085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766239, 33.137920, 32.276085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398503, -0.152408, -0.904415,
		-0.858683, -0.284493, 0.426294,
		-0.322271, 0.946486, -0.017499,
		36.669559, 33.421867, 32.270836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190620, 32.773861, 31.994345>,  <36.895149, 32.759327, 32.283085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190620, 32.773861, 31.994345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.351955, 33.137032, 31.948748>,  <36.448757, 33.354935, 31.921391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.351955, 33.137032, 31.948748>,  <36.190620, 32.773861, 31.994345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351955, 33.137032, 31.948748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162528, -0.051511, -0.985358,
		-0.900501, 0.415959, 0.126787,
		0.403338, 0.907923, -0.113990,
		36.472958, 33.409409, 31.914551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717678, 33.027557, 31.468132>,  <36.190620, 32.773861, 31.994345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717678, 33.027557, 31.468132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.051422, 33.247364, 31.485458>,  <36.251667, 33.379250, 31.495853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.051422, 33.247364, 31.485458>,  <35.717678, 33.027557, 31.468132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051422, 33.247364, 31.485458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045656, 0.147203, -0.988052,
		-0.549331, 0.822410, 0.147909,
		0.834356, 0.549521, 0.043316,
		36.301727, 33.412220, 31.498453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635075, 33.530876, 30.904411>,  <35.717678, 33.027557, 31.468132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635075, 33.530876, 30.904411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.029156, 33.561493, 30.965755>,  <36.265606, 33.579861, 31.002562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.029156, 33.561493, 30.965755>,  <35.635075, 33.530876, 30.904411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029156, 33.561493, 30.965755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162101, -0.125385, -0.978776,
		-0.055684, 0.989152, -0.135936,
		0.985202, 0.076538, 0.153361,
		36.324715, 33.584454, 31.011765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846313, 33.956516, 30.366831>,  <35.635075, 33.530876, 30.904411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846313, 33.956516, 30.366831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.171783, 33.757256, 30.486681>,  <36.367065, 33.637699, 30.558592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.171783, 33.757256, 30.486681>,  <35.846313, 33.956516, 30.366831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171783, 33.757256, 30.486681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241538, -0.179116, -0.953718,
		0.528764, 0.848388, -0.025419,
		0.813676, -0.498152, 0.299628,
		36.415886, 33.607811, 30.576569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330769, 34.213139, 30.003540>,  <35.846313, 33.956516, 30.366831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330769, 34.213139, 30.003540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471962, 33.852211, 30.102512>,  <36.556679, 33.635654, 30.161896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471962, 33.852211, 30.102512>,  <36.330769, 34.213139, 30.003540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471962, 33.852211, 30.102512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474224, -0.055425, -0.878658,
		0.806544, 0.427489, 0.408338,
		0.352984, -0.902320, 0.247429,
		36.577858, 33.581516, 30.176741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900356, 34.138050, 29.506279>,  <36.330769, 34.213139, 30.003540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900356, 34.138050, 29.506279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.861336, 33.766167, 29.648340>,  <36.837921, 33.543037, 29.733576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.861336, 33.766167, 29.648340>,  <36.900356, 34.138050, 29.506279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861336, 33.766167, 29.648340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103774, -0.364411, -0.925438,
		0.989805, -0.053424, 0.132029,
		-0.097553, -0.929704, 0.355152,
		36.832069, 33.487255, 29.754887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460716, 33.714863, 29.376692>,  <36.900356, 34.138050, 29.506279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460716, 33.714863, 29.376692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.218803, 33.404469, 29.448338>,  <37.073654, 33.218231, 29.491325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.218803, 33.404469, 29.448338>,  <37.460716, 33.714863, 29.376692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218803, 33.404469, 29.448338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194193, -0.361809, -0.911802,
		0.772353, -0.516658, 0.369507,
		-0.604781, -0.775989, 0.179112,
		37.037369, 33.171673, 29.502071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910912, 33.057552, 29.325827>,  <37.460716, 33.714863, 29.376692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910912, 33.057552, 29.325827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.525341, 32.975475, 29.258013>,  <37.293999, 32.926228, 29.217325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.525341, 32.975475, 29.258013>,  <37.910912, 33.057552, 29.325827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525341, 32.975475, 29.258013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242488, -0.414338, -0.877225,
		0.109759, -0.886690, 0.449149,
		-0.963926, -0.205197, -0.169534,
		37.236164, 32.913918, 29.207153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965355, 32.527607, 28.927517>,  <37.910912, 33.057552, 29.325827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965355, 32.527607, 28.927517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.582504, 32.633820, 28.881214>,  <37.352795, 32.697548, 28.853432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.582504, 32.633820, 28.881214>,  <37.965355, 32.527607, 28.927517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582504, 32.633820, 28.881214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021444, -0.333579, -0.942478,
		-0.288868, -0.904555, 0.313584,
		-0.957129, 0.265528, -0.115757,
		37.295364, 32.713478, 28.846487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592392, 31.969229, 28.556116>,  <37.965355, 32.527607, 28.927517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592392, 31.969229, 28.556116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.345528, 32.276512, 28.488037>,  <37.197411, 32.460884, 28.447189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.345528, 32.276512, 28.488037>,  <37.592392, 31.969229, 28.556116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345528, 32.276512, 28.488037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033775, -0.241973, -0.969695,
		-0.786112, -0.592710, 0.175282,
		-0.617161, 0.768209, -0.170198,
		37.160378, 32.506973, 28.436977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136284, 31.721483, 28.171528>,  <37.592392, 31.969229, 28.556116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136284, 31.721483, 28.171528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.031116, 32.102619, 28.110907>,  <36.968018, 32.331303, 28.074533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.031116, 32.102619, 28.110907>,  <37.136284, 31.721483, 28.171528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031116, 32.102619, 28.110907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176888, -0.202021, -0.963275,
		-0.948465, -0.226454, 0.221661,
		-0.262918, 0.952841, -0.151553,
		36.952240, 32.388470, 28.065441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.353306, 31.668137, 27.848467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.585266, 31.988497, 27.788769>,  <36.724442, 32.180714, 27.752951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.585266, 31.988497, 27.788769>,  <36.353306, 31.668137, 27.848467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585266, 31.988497, 27.788769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038231, -0.156238, -0.986979,
		-0.813789, 0.578056, -0.059983,
		0.579901, 0.800900, -0.149244,
		36.759235, 32.228767, 27.743996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912914, 32.193897, 27.529028>,  <36.353306, 31.668137, 27.848467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912914, 32.193897, 27.529028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287361, 32.296085, 27.432348>,  <36.512028, 32.357399, 27.374340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287361, 32.296085, 27.432348>,  <35.912914, 32.193897, 27.529028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287361, 32.296085, 27.432348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258446, 0.033617, -0.965441,
		-0.238517, 0.966232, 0.097495,
		0.936117, 0.255471, -0.241701,
		36.568195, 32.372726, 27.359838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831062, 32.722988, 26.992434>,  <35.912914, 32.193897, 27.529028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831062, 32.722988, 26.992434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.215626, 32.617756, 26.960209>,  <36.446362, 32.554615, 26.940874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.215626, 32.617756, 26.960209>,  <35.831062, 32.722988, 26.992434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215626, 32.617756, 26.960209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070592, 0.047146, -0.996391,
		0.265930, 0.963621, 0.026755,
		0.961404, -0.263081, -0.080562,
		36.504047, 32.538830, 26.936041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108688, 33.246841, 26.597246>,  <35.831062, 32.722988, 26.992434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108688, 33.246841, 26.597246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.358685, 32.935894, 26.568756>,  <36.508682, 32.749325, 26.551662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.358685, 32.935894, 26.568756>,  <36.108688, 33.246841, 26.597246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358685, 32.935894, 26.568756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055051, 0.047119, -0.997371,
		0.778685, 0.627272, -0.013346,
		0.624995, -0.777373, -0.071223,
		36.546185, 32.702682, 26.547390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600002, 33.495148, 26.177006>,  <36.108688, 33.246841, 26.597246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600002, 33.495148, 26.177006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.649002, 33.099007, 26.151114>,  <36.678402, 32.861320, 26.135578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.649002, 33.099007, 26.151114>,  <36.600002, 33.495148, 26.177006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649002, 33.099007, 26.151114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015517, 0.067123, -0.997624,
		0.992347, 0.121207, 0.023591,
		0.122503, -0.990355, -0.064729,
		36.685753, 32.801899, 26.131695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279720, 33.311703, 25.824015>,  <36.600002, 33.495148, 26.177006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279720, 33.311703, 25.824015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.039406, 32.995457, 25.776709>,  <36.895218, 32.805710, 25.748325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.039406, 32.995457, 25.776709>,  <37.279720, 33.311703, 25.824015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039406, 32.995457, 25.776709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119273, 0.057631, -0.991187,
		0.790461, -0.609598, 0.059674,
		-0.600787, -0.790613, -0.118263,
		36.859169, 32.758274, 25.741230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624271, 32.827354, 25.299843>,  <37.279720, 33.311703, 25.824015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624271, 32.827354, 25.299843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.253933, 32.676262, 25.304394>,  <37.031731, 32.585606, 25.307125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.253933, 32.676262, 25.304394>,  <37.624271, 32.827354, 25.299843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253933, 32.676262, 25.304394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010590, -0.056034, -0.998373,
		0.377753, -0.924219, 0.055879,
		-0.925846, -0.377730, 0.011380,
		36.976181, 32.562943, 25.307808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624027, 32.235870, 24.834301>,  <37.624271, 32.827354, 25.299843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624027, 32.235870, 24.834301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.232651, 32.301544, 24.884413>,  <36.997826, 32.340950, 24.914480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.232651, 32.301544, 24.884413>,  <37.624027, 32.235870, 24.834301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232651, 32.301544, 24.884413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156621, -0.194504, -0.968317,
		-0.134612, -0.967064, 0.216025,
		-0.978442, 0.164182, 0.125280,
		36.939117, 32.350800, 24.921997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280281, 31.618706, 24.506424>,  <37.624027, 32.235870, 24.834301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280281, 31.618706, 24.506424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.040245, 31.938669, 24.508831>,  <36.896225, 32.130646, 24.510275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.040245, 31.938669, 24.508831>,  <37.280281, 31.618706, 24.506424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040245, 31.938669, 24.508831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000373, 0.007245, -0.999974,
		-0.799932, -0.600077, -0.004049,
		-0.600091, 0.799909, 0.006019,
		36.860218, 32.178642, 24.510637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751747, 31.433323, 24.090628>,  <37.280281, 31.618706, 24.506424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751747, 31.433323, 24.090628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.717434, 31.831381, 24.109936>,  <36.696846, 32.070217, 24.121521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.717434, 31.831381, 24.109936>,  <36.751747, 31.433323, 24.090628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717434, 31.831381, 24.109936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077860, 0.041602, -0.996096,
		-0.993267, -0.089208, 0.073913,
		-0.085785, 0.995144, 0.048268,
		36.691700, 32.129925, 24.124416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230263, 31.684078, 23.492765>,  <36.751747, 31.433323, 24.090628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230263, 31.684078, 23.492765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.437256, 32.013206, 23.586727>,  <36.561451, 32.210682, 23.643105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.437256, 32.013206, 23.586727>,  <36.230263, 31.684078, 23.492765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437256, 32.013206, 23.586727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028116, 0.258019, -0.965730,
		-0.855233, 0.506351, 0.110385,
		0.517480, 0.822821, 0.234903,
		36.592499, 32.260052, 23.657198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874622, 32.191811, 23.189735>,  <36.230263, 31.684078, 23.492765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874622, 32.191811, 23.189735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.232330, 32.362526, 23.243589>,  <36.446957, 32.464954, 23.275902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.232330, 32.362526, 23.243589>,  <35.874622, 32.191811, 23.189735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232330, 32.362526, 23.243589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019939, 0.338547, -0.940738,
		-0.447074, 0.838594, 0.311264,
		0.894275, 0.426786, 0.134635,
		36.500614, 32.490562, 23.283979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787033, 32.857979, 23.067297>,  <35.874622, 32.191811, 23.189735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787033, 32.857979, 23.067297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.181290, 32.810314, 23.019459>,  <36.417843, 32.781715, 22.990757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.181290, 32.810314, 23.019459>,  <35.787033, 32.857979, 23.067297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181290, 32.810314, 23.019459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044478, 0.500062, -0.864847,
		0.162864, 0.857751, 0.487584,
		0.985645, -0.119166, -0.119593,
		36.476982, 32.774563, 22.983582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061882, 33.491928, 22.840046>,  <35.787033, 32.857979, 23.067297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061882, 33.491928, 22.840046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.329445, 33.208992, 22.748631>,  <36.489983, 33.039230, 22.693781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.329445, 33.208992, 22.748631>,  <36.061882, 33.491928, 22.840046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329445, 33.208992, 22.748631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281783, 0.525788, -0.802587,
		0.687866, 0.472459, 0.551021,
		0.668909, -0.707340, -0.228540,
		36.530117, 32.996792, 22.680069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644512, 33.830612, 22.745766>,  <36.061882, 33.491928, 22.840046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644512, 33.830612, 22.745766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.734653, 33.492779, 22.551485>,  <36.788738, 33.290081, 22.434917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.734653, 33.492779, 22.551485>,  <36.644512, 33.830612, 22.745766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734653, 33.492779, 22.551485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310150, 0.534775, -0.786017,
		0.923593, 0.026489, 0.382458,
		0.225350, -0.844579, -0.485699,
		36.802258, 33.239407, 22.405775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395939, 33.781731, 22.699730>,  <36.644512, 33.830612, 22.745766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395939, 33.781731, 22.699730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.243462, 33.545364, 22.415335>,  <37.151974, 33.403545, 22.244698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.243462, 33.545364, 22.415335>,  <37.395939, 33.781731, 22.699730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243462, 33.545364, 22.415335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555621, 0.468233, -0.687054,
		0.738901, -0.656943, 0.149838,
		-0.381195, -0.590918, -0.710990,
		37.129105, 33.368088, 22.202038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914894, 33.577671, 22.351908>,  <37.395939, 33.781731, 22.699730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914894, 33.577671, 22.351908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.650570, 33.455215, 22.077797>,  <37.491974, 33.381741, 21.913330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.650570, 33.455215, 22.077797>,  <37.914894, 33.577671, 22.351908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650570, 33.455215, 22.077797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630496, 0.268915, -0.728121,
		0.407188, -0.913216, 0.015317,
		-0.660812, -0.306139, -0.685278,
		37.452328, 33.363373, 21.872213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320694, 33.397381, 21.852810>,  <37.914894, 33.577671, 22.351908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320694, 33.397381, 21.852810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.959976, 33.428795, 21.682823>,  <37.743546, 33.447643, 21.580832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.959976, 33.428795, 21.682823>,  <38.320694, 33.397381, 21.852810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959976, 33.428795, 21.682823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411820, 0.454301, -0.789946,
		0.131022, -0.887379, -0.442031,
		-0.901797, 0.078537, -0.424964,
		37.689438, 33.452354, 21.555334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434231, 33.217628, 21.196781>,  <38.320694, 33.397381, 21.852810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434231, 33.217628, 21.196781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.098480, 33.435001, 21.192369>,  <37.897030, 33.565426, 21.189722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.098480, 33.435001, 21.192369>,  <38.434231, 33.217628, 21.196781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098480, 33.435001, 21.192369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289308, 0.429497, -0.855473,
		-0.460158, -0.721255, -0.517731,
		-0.839378, 0.543436, -0.011028,
		37.846668, 33.598034, 21.189060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109566, 33.042313, 20.618484>,  <38.434231, 33.217628, 21.196781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109566, 33.042313, 20.618484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.973263, 33.408417, 20.704437>,  <37.891479, 33.628078, 20.756008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.973263, 33.408417, 20.704437>,  <38.109566, 33.042313, 20.618484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973263, 33.408417, 20.704437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270865, 0.314448, -0.909810,
		-0.900285, -0.251825, -0.355064,
		-0.340762, 0.915264, 0.214882,
		37.871033, 33.682995, 20.768902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794727, 33.347839, 20.130657>,  <38.109566, 33.042313, 20.618484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794727, 33.347839, 20.130657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.870823, 33.690941, 20.321680>,  <37.916481, 33.896801, 20.436295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.870823, 33.690941, 20.321680>,  <37.794727, 33.347839, 20.130657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870823, 33.690941, 20.321680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260994, 0.424748, -0.866875,
		-0.946410, 0.289553, -0.143066,
		0.190240, 0.857758, 0.477557,
		37.927895, 33.948269, 20.464947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553665, 33.799465, 19.642986>,  <37.794727, 33.347839, 20.130657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553665, 33.799465, 19.642986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.787251, 34.008591, 19.891390>,  <37.927402, 34.134068, 20.040432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.787251, 34.008591, 19.891390>,  <37.553665, 33.799465, 19.642986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787251, 34.008591, 19.891390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345469, 0.532213, -0.772917,
		-0.734602, 0.665894, 0.130176,
		0.583962, 0.522815, 0.621010,
		37.962440, 34.165436, 20.077692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428467, 34.513622, 19.507536>,  <37.553665, 33.799465, 19.642986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428467, 34.513622, 19.507536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.792274, 34.468781, 19.667639>,  <38.010559, 34.441875, 19.763700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.792274, 34.468781, 19.667639>,  <37.428467, 34.513622, 19.507536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792274, 34.468781, 19.667639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390287, 0.561597, -0.729578,
		-0.142994, 0.819781, 0.554537,
		0.909521, -0.112103, 0.400255,
		38.065132, 34.435150, 19.787716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900345, 34.763317, 19.906403>,  <37.428467, 34.513622, 19.507536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900345, 34.763317, 19.906403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.966866, 34.993073, 19.585796>,  <37.006779, 35.130924, 19.393433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.966866, 34.993073, 19.585796>,  <36.900345, 34.763317, 19.906403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966866, 34.993073, 19.585796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012290, 0.811563, 0.584135,
		0.985999, -0.106993, 0.127904,
		0.166301, 0.574385, -0.801515,
		37.016754, 35.165386, 19.345343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317211, 35.089039, 19.419750>,  <36.900345, 34.763317, 19.906403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317211, 35.089039, 19.419750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.963902, 35.092827, 19.232244>,  <35.751915, 35.095100, 19.119741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.963902, 35.092827, 19.232244>,  <36.317211, 35.089039, 19.419750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963902, 35.092827, 19.232244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429081, -0.419325, 0.800035,
		-0.188991, 0.907787, 0.374440,
		-0.883273, 0.009465, -0.468763,
		35.698921, 35.095665, 19.091616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845535, 35.377651, 19.913280>,  <36.317211, 35.089039, 19.419750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845535, 35.377651, 19.913280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.612782, 35.185421, 19.650841>,  <35.473129, 35.070084, 19.493378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.612782, 35.185421, 19.650841>,  <35.845535, 35.377651, 19.913280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612782, 35.185421, 19.650841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552215, -0.358787, 0.752549,
		-0.597055, 0.800201, -0.056608,
		-0.581880, -0.480573, -0.656098,
		35.438217, 35.041248, 19.454012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186451, 35.584930, 20.136318>,  <35.845535, 35.377651, 19.913280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186451, 35.584930, 20.136318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139709, 35.251854, 19.919811>,  <35.111664, 35.052010, 19.789907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139709, 35.251854, 19.919811>,  <35.186451, 35.584930, 20.136318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139709, 35.251854, 19.919811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478180, -0.430496, 0.765518,
		-0.870453, 0.348278, -0.347871,
		-0.116856, -0.832692, -0.541266,
		35.104652, 35.002045, 19.757431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484993, 35.359886, 20.351213>,  <35.186451, 35.584930, 20.136318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484993, 35.359886, 20.351213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.663906, 35.047665, 20.176550>,  <34.771252, 34.860332, 20.071751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.663906, 35.047665, 20.176550>,  <34.484993, 35.359886, 20.351213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663906, 35.047665, 20.176550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453319, -0.618709, 0.641639,
		-0.771002, -0.089045, -0.630577,
		0.447278, -0.780557, -0.436661,
		34.798088, 34.813496, 20.045551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923580, 34.798248, 20.255907>,  <34.484993, 35.359886, 20.351213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923580, 34.798248, 20.255907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.287254, 34.631702, 20.257942>,  <34.505459, 34.531773, 20.259163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.287254, 34.631702, 20.257942>,  <33.923580, 34.798248, 20.255907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287254, 34.631702, 20.257942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334311, -0.722605, 0.605044,
		-0.248244, -0.551796, -0.796176,
		0.909182, -0.416369, 0.005089,
		34.560009, 34.506790, 20.259468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736752, 34.126106, 20.258627>,  <33.923580, 34.798248, 20.255907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736752, 34.126106, 20.258627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.123108, 34.144093, 20.360640>,  <34.354919, 34.154884, 20.421846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.123108, 34.144093, 20.360640>,  <33.736752, 34.126106, 20.258627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123108, 34.144093, 20.360640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176158, -0.607766, 0.774331,
		0.189817, -0.792842, -0.579112,
		0.965887, 0.044966, 0.255030,
		34.412872, 34.157581, 20.437149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930111, 33.396729, 20.388706>,  <33.736752, 34.126106, 20.258627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930111, 33.396729, 20.388706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.202206, 33.612114, 20.587635>,  <34.365463, 33.741344, 20.706991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.202206, 33.612114, 20.587635>,  <33.930111, 33.396729, 20.388706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202206, 33.612114, 20.587635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131566, -0.577768, 0.805528,
		0.721087, -0.613381, -0.322176,
		0.680238, 0.538468, 0.497321,
		34.406277, 33.773655, 20.736832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285721, 32.920017, 20.804102>,  <33.930111, 33.396729, 20.388706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285721, 32.920017, 20.804102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.382442, 33.258671, 20.993727>,  <34.440475, 33.461864, 21.107502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.382442, 33.258671, 20.993727>,  <34.285721, 32.920017, 20.804102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382442, 33.258671, 20.993727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105272, -0.462786, 0.880197,
		0.964597, -0.262744, -0.022778,
		0.241808, 0.846637, 0.474061,
		34.454987, 33.512661, 21.135944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840538, 32.729961, 21.353678>,  <34.285721, 32.920017, 20.804102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840538, 32.729961, 21.353678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.708839, 33.089367, 21.469795>,  <34.629818, 33.305008, 21.539467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.708839, 33.089367, 21.469795>,  <34.840538, 32.729961, 21.353678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708839, 33.089367, 21.469795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080557, -0.333045, 0.939463,
		0.940800, 0.285934, 0.182037,
		-0.329251, 0.898512, 0.290295,
		34.610065, 33.358921, 21.556883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340969, 32.928364, 21.982737>,  <34.840538, 32.729961, 21.353678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340969, 32.928364, 21.982737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.989239, 33.118610, 21.992254>,  <34.778198, 33.232758, 21.997965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.989239, 33.118610, 21.992254>,  <35.340969, 32.928364, 21.982737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989239, 33.118610, 21.992254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042922, -0.128916, 0.990726,
		0.474274, 0.870154, 0.133774,
		-0.879330, 0.475618, 0.023793,
		34.725441, 33.261295, 21.999392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423908, 33.364101, 22.511202>,  <35.340969, 32.928364, 21.982737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423908, 33.364101, 22.511202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030293, 33.324894, 22.451801>,  <34.794121, 33.301369, 22.416161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030293, 33.324894, 22.451801>,  <35.423908, 33.364101, 22.511202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030293, 33.324894, 22.451801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128399, -0.186604, 0.974008,
		-0.123182, 0.977533, 0.171041,
		-0.984043, -0.098019, -0.148501,
		34.735081, 33.295486, 22.407251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142750, 33.816158, 23.032351>,  <35.423908, 33.364101, 22.511202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142750, 33.816158, 23.032351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.835972, 33.577023, 22.939075>,  <34.651905, 33.433540, 22.883110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.835972, 33.577023, 22.939075>,  <35.142750, 33.816158, 23.032351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835972, 33.577023, 22.939075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093429, -0.255484, 0.962288,
		-0.634870, 0.759813, 0.140088,
		-0.766949, -0.597840, -0.233187,
		34.605888, 33.397671, 22.869120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519844, 34.060127, 23.419090>,  <35.142750, 33.816158, 23.032351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519844, 34.060127, 23.419090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.461643, 33.673424, 23.334986>,  <34.426723, 33.441402, 23.284523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.461643, 33.673424, 23.334986>,  <34.519844, 34.060127, 23.419090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461643, 33.673424, 23.334986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148990, -0.188687, 0.970669,
		-0.978075, 0.172562, -0.116583,
		-0.145503, -0.966757, -0.210260,
		34.417992, 33.383396, 23.271908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952911, 33.734562, 23.920036>,  <34.519844, 34.060127, 23.419090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952911, 33.734562, 23.920036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.139420, 33.423988, 23.750454>,  <34.251324, 33.237644, 23.648705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.139420, 33.423988, 23.750454>,  <33.952911, 33.734562, 23.920036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139420, 33.423988, 23.750454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232880, -0.570068, 0.787902,
		-0.853439, -0.268646, -0.446622,
		0.466272, -0.776436, -0.423956,
		34.279301, 33.191059, 23.623268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548759, 33.256073, 24.151960>,  <33.952911, 33.734562, 23.920036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548759, 33.256073, 24.151960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882206, 33.066086, 24.039190>,  <34.082275, 32.952091, 23.971527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882206, 33.066086, 24.039190>,  <33.548759, 33.256073, 24.151960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882206, 33.066086, 24.039190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012006, -0.525881, 0.850473,
		-0.552215, -0.705582, -0.444085,
		0.833615, -0.474976, -0.281929,
		34.132290, 32.923595, 23.954613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469913, 32.524303, 24.130348>,  <33.548759, 33.256073, 24.151960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469913, 32.524303, 24.130348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.862694, 32.581970, 24.179317>,  <34.098362, 32.616570, 24.208700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.862694, 32.581970, 24.179317>,  <33.469913, 32.524303, 24.130348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862694, 32.581970, 24.179317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025406, -0.540871, 0.840722,
		0.187423, -0.828658, -0.527445,
		0.981950, 0.144170, 0.122425,
		34.157280, 32.625221, 24.216045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722092, 31.912199, 24.468069>,  <33.469913, 32.524303, 24.130348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722092, 31.912199, 24.468069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.031128, 32.157681, 24.533142>,  <34.216549, 32.304970, 24.572186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.031128, 32.157681, 24.533142>,  <33.722092, 31.912199, 24.468069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031128, 32.157681, 24.533142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153104, -0.428760, 0.890350,
		0.616163, -0.662972, -0.425218,
		0.772594, 0.613704, 0.162683,
		34.262905, 32.341793, 24.581947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246952, 31.543114, 24.777439>,  <33.722092, 31.912199, 24.468069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246952, 31.543114, 24.777439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.340073, 31.914469, 24.893299>,  <34.395947, 32.137283, 24.962814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.340073, 31.914469, 24.893299>,  <34.246952, 31.543114, 24.777439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340073, 31.914469, 24.893299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146545, -0.327920, 0.933270,
		0.961419, -0.174822, -0.212392,
		0.232803, 0.928389, 0.289649,
		34.409912, 32.192986, 24.980194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684917, 31.468744, 25.311943>,  <34.246952, 31.543114, 24.777439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684917, 31.468744, 25.311943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.570412, 31.850195, 25.349136>,  <34.501709, 32.079067, 25.371452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.570412, 31.850195, 25.349136>,  <34.684917, 31.468744, 25.311943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570412, 31.850195, 25.349136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163352, -0.144199, 0.975973,
		0.944122, 0.264202, 0.197056,
		-0.286269, 0.953627, 0.092983,
		34.484531, 32.136284, 25.377031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977039, 31.639442, 25.929440>,  <34.684917, 31.468744, 25.311943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977039, 31.639442, 25.929440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.682751, 31.901798, 25.861883>,  <34.506176, 32.059212, 25.821350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.682751, 31.901798, 25.861883>,  <34.977039, 31.639442, 25.929440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682751, 31.901798, 25.861883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321348, -0.118536, 0.939513,
		0.596198, 0.745491, 0.297978,
		-0.735720, 0.655890, -0.168891,
		34.462036, 32.098564, 25.811216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.242516, 32.579929, 30.519711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.039104, 32.901875, 30.397339>,  <36.917057, 33.095043, 30.323915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.039104, 32.901875, 30.397339>,  <37.242516, 32.579929, 30.519711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039104, 32.901875, 30.397339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012051, 0.361916, 0.932133,
		0.860961, 0.470329, -0.193744,
		-0.508528, 0.804865, -0.305928,
		36.886547, 33.143333, 30.305561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541359, 33.081184, 30.856964>,  <37.242516, 32.579929, 30.519711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541359, 33.081184, 30.856964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.178879, 33.224434, 30.767031>,  <36.961391, 33.310383, 30.713072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.178879, 33.224434, 30.767031>,  <37.541359, 33.081184, 30.856964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178879, 33.224434, 30.767031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079624, 0.377678, 0.922507,
		0.415282, 0.853879, -0.313737,
		-0.906201, 0.358120, -0.224832,
		36.907017, 33.331871, 30.699581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625202, 33.710583, 31.174112>,  <37.541359, 33.081184, 30.856964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625202, 33.710583, 31.174112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.230606, 33.651634, 31.145477>,  <36.993851, 33.616264, 31.128296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.230606, 33.651634, 31.145477>,  <37.625202, 33.710583, 31.174112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230606, 33.651634, 31.145477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125647, 0.400093, 0.907821,
		-0.105146, 0.904548, -0.413204,
		-0.986487, -0.147371, -0.071585,
		36.934658, 33.607422, 31.124002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419849, 34.212856, 31.512714>,  <37.625202, 33.710583, 31.174112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419849, 34.212856, 31.512714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.091213, 33.984825, 31.513773>,  <36.894032, 33.848007, 31.514408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.091213, 33.984825, 31.513773>,  <37.419849, 34.212856, 31.512714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091213, 33.984825, 31.513773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272680, 0.397052, 0.876354,
		-0.500641, 0.719278, -0.481661,
		-0.821587, -0.570078, 0.002647,
		36.844738, 33.813801, 31.514566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928169, 34.613480, 31.764006>,  <37.419849, 34.212856, 31.512714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928169, 34.613480, 31.764006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.772331, 34.248783, 31.816067>,  <36.678829, 34.029964, 31.847303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.772331, 34.248783, 31.816067>,  <36.928169, 34.613480, 31.764006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772331, 34.248783, 31.816067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064108, 0.167825, 0.983730,
		-0.918751, 0.374916, -0.123835,
		-0.389599, -0.911741, 0.130154,
		36.655453, 33.975262, 31.855112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353519, 34.712307, 32.329720>,  <36.928169, 34.613480, 31.764006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353519, 34.712307, 32.329720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.464958, 34.329372, 32.299030>,  <36.531822, 34.099609, 32.280617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.464958, 34.329372, 32.299030>,  <36.353519, 34.712307, 32.329720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464958, 34.329372, 32.299030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076395, -0.101718, 0.991876,
		-0.957366, -0.270468, -0.101474,
		0.278592, -0.957340, -0.076719,
		36.548534, 34.042171, 32.276016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759666, 34.232697, 32.601574>,  <36.353519, 34.712307, 32.329720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759666, 34.232697, 32.601574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.107597, 34.036449, 32.622349>,  <36.316357, 33.918701, 32.634811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.107597, 34.036449, 32.622349>,  <35.759666, 34.232697, 32.601574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107597, 34.036449, 32.622349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055197, 0.007830, 0.998445,
		-0.490260, -0.871341, -0.020270,
		0.869826, -0.490616, 0.051934,
		36.368546, 33.889263, 32.637928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657288, 33.706951, 32.993034>,  <35.759666, 34.232697, 32.601574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657288, 33.706951, 32.993034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.056786, 33.726955, 32.994534>,  <36.296482, 33.738956, 32.995434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.056786, 33.726955, 32.994534>,  <35.657288, 33.706951, 32.993034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056786, 33.726955, 32.994534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001349, -0.047908, 0.998851,
		0.050134, -0.997599, -0.047780,
		0.998741, 0.050012, 0.003748,
		36.356407, 33.741959, 32.995659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959770, 33.068226, 33.296120>,  <35.657288, 33.706951, 32.993034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959770, 33.068226, 33.296120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.229897, 33.359325, 33.343990>,  <36.391972, 33.533985, 33.372715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.229897, 33.359325, 33.343990>,  <35.959770, 33.068226, 33.296120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229897, 33.359325, 33.343990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128070, -0.044095, 0.990784,
		0.726321, -0.684423, 0.063425,
		0.675319, 0.727750, 0.119681,
		36.432491, 33.577652, 33.379894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327251, 32.851631, 33.870270>,  <35.959770, 33.068226, 33.296120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327251, 32.851631, 33.870270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.405273, 33.243168, 33.845562>,  <36.452087, 33.478092, 33.830738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.405273, 33.243168, 33.845562>,  <36.327251, 32.851631, 33.870270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405273, 33.243168, 33.845562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087515, 0.080099, 0.992938,
		0.976880, -0.188272, 0.101288,
		0.195055, 0.978845, -0.061771,
		36.463791, 33.536823, 33.827030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860996, 32.895000, 34.456367>,  <36.327251, 32.851631, 33.870270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860996, 32.895000, 34.456367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.696861, 33.247440, 34.362320>,  <36.598381, 33.458904, 34.305889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.696861, 33.247440, 34.362320>,  <36.860996, 32.895000, 34.456367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696861, 33.247440, 34.362320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241087, 0.143841, 0.959785,
		0.879487, 0.450524, 0.153398,
		-0.410341, 0.881101, -0.235121,
		36.573757, 33.511772, 34.291782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077568, 33.401619, 34.946522>,  <36.860996, 32.895000, 34.456367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077568, 33.401619, 34.946522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.730507, 33.518734, 34.785793>,  <36.522270, 33.589005, 34.689358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.730507, 33.518734, 34.785793>,  <37.077568, 33.401619, 34.946522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730507, 33.518734, 34.785793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349398, 0.215884, 0.911765,
		0.353701, 0.931488, -0.085012,
		-0.867650, 0.292789, -0.401818,
		36.470211, 33.606571, 34.665249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886917, 33.977859, 35.310921>,  <37.077568, 33.401619, 34.946522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886917, 33.977859, 35.310921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.216518, 33.767982, 35.396454>,  <37.414280, 33.642056, 35.447773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.216518, 33.767982, 35.396454>,  <36.886917, 33.977859, 35.310921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216518, 33.767982, 35.396454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435946, 0.828177, 0.352242,
		-0.361907, -0.197029, 0.911155,
		0.823999, -0.524693, 0.213829,
		37.463718, 33.610573, 35.460602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140369, 33.989082, 36.086990>,  <36.886917, 33.977859, 35.310921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140369, 33.989082, 36.086990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.424931, 33.968540, 35.806625>,  <37.595665, 33.956215, 35.638409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.424931, 33.968540, 35.806625>,  <37.140369, 33.989082, 36.086990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424931, 33.968540, 35.806625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382969, 0.864569, 0.325353,
		0.589275, -0.499882, 0.634722,
		0.711399, -0.051356, -0.700909,
		37.638351, 33.953133, 35.596352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054596, 34.571121, 36.489010>,  <37.140369, 33.989082, 36.086990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054596, 34.571121, 36.489010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.161362, 34.955940, 36.511719>,  <37.225422, 35.186832, 36.525345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.161362, 34.955940, 36.511719>,  <37.054596, 34.571121, 36.489010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161362, 34.955940, 36.511719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205114, 0.000852, -0.978738,
		-0.941640, 0.272883, -0.197102,
		0.266913, 0.962047, 0.056775,
		37.241436, 35.244553, 36.528751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696095, 34.951794, 35.882423>,  <37.054596, 34.571121, 36.489010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696095, 34.951794, 35.882423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.976604, 35.220512, 35.977840>,  <37.144909, 35.381744, 36.035091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.976604, 35.220512, 35.977840>,  <36.696095, 34.951794, 35.882423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976604, 35.220512, 35.977840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061463, 0.276398, -0.959076,
		-0.710235, 0.687239, 0.152541,
		0.701276, 0.671794, 0.238547,
		37.186989, 35.422050, 36.049404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465534, 35.680271, 35.601685>,  <36.696095, 34.951794, 35.882423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465534, 35.680271, 35.601685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.860069, 35.657612, 35.663559>,  <37.096790, 35.644016, 35.700684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.860069, 35.657612, 35.663559>,  <36.465534, 35.680271, 35.601685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860069, 35.657612, 35.663559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163457, 0.219896, -0.961732,
		0.020464, 0.973877, 0.226151,
		0.986338, -0.056647, 0.154687,
		37.155972, 35.640617, 35.709965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784058, 36.295044, 35.321651>,  <36.465534, 35.680271, 35.601685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784058, 36.295044, 35.321651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.112923, 36.070107, 35.356995>,  <37.310242, 35.935143, 35.378201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.112923, 36.070107, 35.356995>,  <36.784058, 36.295044, 35.321651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112923, 36.070107, 35.356995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328912, 0.342599, -0.880024,
		0.464606, 0.752590, 0.466636,
		0.822166, -0.562347, 0.088362,
		37.359573, 35.901402, 35.383503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478405, 36.678406, 35.249569>,  <36.784058, 36.295044, 35.321651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478405, 36.678406, 35.249569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.534340, 36.302631, 35.124409>,  <37.567902, 36.077168, 35.049313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.534340, 36.302631, 35.124409>,  <37.478405, 36.678406, 35.249569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534340, 36.302631, 35.124409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416108, 0.342502, -0.842346,
		0.898499, -0.012411, 0.438800,
		0.139835, -0.939435, -0.312902,
		37.576290, 36.020802, 35.030537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083553, 36.711826, 34.792164>,  <37.478405, 36.678406, 35.249569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083553, 36.711826, 34.792164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.928951, 36.360855, 34.678509>,  <37.836189, 36.150272, 34.610317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.928951, 36.360855, 34.678509>,  <38.083553, 36.711826, 34.792164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928951, 36.360855, 34.678509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366766, 0.136442, -0.920253,
		0.846226, -0.459891, 0.269077,
		-0.386502, -0.877430, -0.284133,
		37.813000, 36.097626, 34.593269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629650, 36.420738, 34.310204>,  <38.083553, 36.711826, 34.792164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629650, 36.420738, 34.310204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.291576, 36.228451, 34.216755>,  <38.088734, 36.113079, 34.160686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.291576, 36.228451, 34.216755>,  <38.629650, 36.420738, 34.310204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291576, 36.228451, 34.216755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222141, 0.081621, -0.971592,
		0.486131, -0.873068, 0.037803,
		-0.845180, -0.480719, -0.233623,
		38.038021, 36.084236, 34.146667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747738, 35.989433, 33.703152>,  <38.629650, 36.420738, 34.310204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747738, 35.989433, 33.703152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.348473, 35.983486, 33.726673>,  <38.108913, 35.979919, 33.740788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.348473, 35.983486, 33.726673>,  <38.747738, 35.989433, 33.703152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348473, 35.983486, 33.726673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060348, 0.146119, -0.987425,
		0.006086, -0.989155, -0.146747,
		-0.998159, -0.014865, 0.058804,
		38.049026, 35.979027, 33.744316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548363, 35.500217, 33.254787>,  <38.747738, 35.989433, 33.703152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548363, 35.500217, 33.254787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.254204, 35.766472, 33.305588>,  <38.077709, 35.926224, 33.336067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.254204, 35.766472, 33.305588>,  <38.548363, 35.500217, 33.254787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254204, 35.766472, 33.305588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020638, 0.209324, -0.977629,
		-0.677324, -0.716322, -0.167673,
		-0.735395, 0.665632, 0.126996,
		38.033585, 35.966160, 33.343685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075066, 35.334835, 32.760517>,  <38.548363, 35.500217, 33.254787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075066, 35.334835, 32.760517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.990292, 35.714977, 32.851654>,  <37.939426, 35.943062, 32.906334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.990292, 35.714977, 32.851654>,  <38.075066, 35.334835, 32.760517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990292, 35.714977, 32.851654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224339, 0.179599, -0.957818,
		-0.951187, -0.254104, 0.175140,
		-0.211930, 0.950355, 0.227838,
		37.926712, 36.000084, 32.920006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327545, 35.514385, 32.524529>,  <38.075066, 35.334835, 32.760517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327545, 35.514385, 32.524529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.545345, 35.847969, 32.560375>,  <37.676025, 36.048119, 32.581882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.545345, 35.847969, 32.560375>,  <37.327545, 35.514385, 32.524529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545345, 35.847969, 32.560375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337836, 0.315860, -0.886622,
		-0.767712, 0.452493, 0.453728,
		0.544505, 0.833956, 0.089621,
		37.708698, 36.098156, 32.587261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970798, 35.918083, 32.235756>,  <37.327545, 35.514385, 32.524529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970798, 35.918083, 32.235756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.307762, 36.133587, 32.232025>,  <37.509941, 36.262890, 32.229786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.307762, 36.133587, 32.232025>,  <36.970798, 35.918083, 32.235756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307762, 36.133587, 32.232025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248787, 0.373535, -0.893631,
		-0.477969, 0.755122, 0.448705,
		0.842408, 0.538760, -0.009326,
		37.560486, 36.295216, 32.229229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806515, 36.525986, 31.998184>,  <36.970798, 35.918083, 32.235756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806515, 36.525986, 31.998184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.200500, 36.534180, 31.929571>,  <37.436893, 36.539097, 31.888403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.200500, 36.534180, 31.929571>,  <36.806515, 36.525986, 31.998184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200500, 36.534180, 31.929571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167040, 0.366109, -0.915457,
		0.044050, 0.930347, 0.364026,
		0.984966, 0.020481, -0.171532,
		37.495991, 36.540325, 31.878111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980522, 37.172287, 31.615181>,  <36.806515, 36.525986, 31.998184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980522, 37.172287, 31.615181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.268494, 36.905029, 31.540051>,  <37.441277, 36.744675, 31.494972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.268494, 36.905029, 31.540051>,  <36.980522, 37.172287, 31.615181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268494, 36.905029, 31.540051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080581, 0.188327, -0.978795,
		0.689350, 0.719802, 0.081744,
		0.719934, -0.668145, -0.187826,
		37.484474, 36.704586, 31.483704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927189, 37.981083, 31.707197>,  <36.980522, 37.172287, 31.615181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927189, 37.981083, 31.707197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.584034, 38.186508, 31.700466>,  <36.378139, 38.309765, 31.696426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.584034, 38.186508, 31.700466>,  <36.927189, 37.981083, 31.707197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584034, 38.186508, 31.700466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156205, -0.229451, 0.960704,
		0.489521, 0.826804, 0.277064,
		-0.857886, 0.513564, -0.016830,
		36.326668, 38.340576, 31.695417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983425, 38.544289, 32.289314>,  <36.927189, 37.981083, 31.707197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983425, 38.544289, 32.289314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.612183, 38.428062, 32.196205>,  <36.389435, 38.358326, 32.140339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.612183, 38.428062, 32.196205>,  <36.983425, 38.544289, 32.289314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612183, 38.428062, 32.196205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118110, -0.363137, 0.924219,
		-0.353078, 0.885269, 0.302712,
		-0.928109, -0.290569, -0.232775,
		36.333752, 38.340893, 32.126373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614582, 38.708878, 32.857567>,  <36.983425, 38.544289, 32.289314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614582, 38.708878, 32.857567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.342129, 38.472679, 32.684422>,  <36.178658, 38.330959, 32.580536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.342129, 38.472679, 32.684422>,  <36.614582, 38.708878, 32.857567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342129, 38.472679, 32.684422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278273, -0.338058, 0.899044,
		-0.677220, 0.732820, 0.065941,
		-0.681130, -0.590501, -0.432864,
		36.137791, 38.295528, 32.554562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954651, 38.832211, 33.190166>,  <36.614582, 38.708878, 32.857567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954651, 38.832211, 33.190166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.905853, 38.478275, 33.010307>,  <35.876575, 38.265915, 32.902390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.905853, 38.478275, 33.010307>,  <35.954651, 38.832211, 33.190166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905853, 38.478275, 33.010307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427087, -0.362149, 0.828519,
		-0.895942, 0.293118, -0.333720,
		-0.121998, -0.884833, -0.449651,
		35.869255, 38.212826, 32.875412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276791, 38.649933, 33.129925>,  <35.954651, 38.832211, 33.190166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276791, 38.649933, 33.129925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.469925, 38.299904, 33.116562>,  <35.585808, 38.089886, 33.108543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.469925, 38.299904, 33.116562>,  <35.276791, 38.649933, 33.129925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469925, 38.299904, 33.116562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477746, -0.295191, 0.827418,
		-0.733912, -0.383551, -0.560592,
		0.482838, -0.875072, -0.033404,
		35.614777, 38.037384, 33.106541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786880, 38.276096, 33.244953>,  <35.276791, 38.649933, 33.129925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786880, 38.276096, 33.244953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.100399, 38.039597, 33.320938>,  <35.288509, 37.897697, 33.366528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.100399, 38.039597, 33.320938>,  <34.786880, 38.276096, 33.244953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100399, 38.039597, 33.320938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480027, -0.382757, 0.789348,
		-0.394009, -0.709864, -0.583824,
		0.783793, -0.591261, 0.189944,
		35.335541, 37.862221, 33.377926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463760, 37.579563, 33.422318>,  <34.786880, 38.276096, 33.244953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463760, 37.579563, 33.422318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.835369, 37.588745, 33.570042>,  <35.058334, 37.594254, 33.658676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.835369, 37.588745, 33.570042>,  <34.463760, 37.579563, 33.422318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835369, 37.588745, 33.570042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346760, -0.294324, 0.890579,
		0.129139, -0.955430, -0.265475,
		0.929022, 0.022953, 0.369313,
		35.114075, 37.595631, 33.680836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645241, 36.839306, 33.724194>,  <34.463760, 37.579563, 33.422318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645241, 36.839306, 33.724194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.897125, 37.086800, 33.912079>,  <35.048256, 37.235294, 34.024811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.897125, 37.086800, 33.912079>,  <34.645241, 36.839306, 33.724194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897125, 37.086800, 33.912079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370553, -0.292178, 0.881659,
		0.682752, -0.729246, 0.045285,
		0.629715, 0.618735, 0.469709,
		35.086040, 37.272419, 34.052990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862568, 36.478844, 34.367290>,  <34.645241, 36.839306, 33.724194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862568, 36.478844, 34.367290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.943848, 36.860249, 34.456306>,  <34.992615, 37.089092, 34.509716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.943848, 36.860249, 34.456306>,  <34.862568, 36.478844, 34.367290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943848, 36.860249, 34.456306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310838, -0.152705, 0.938116,
		0.928489, -0.259794, 0.265359,
		0.203195, 0.953514, 0.222539,
		35.004807, 37.146301, 34.523067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360229, 36.524853, 34.902912>,  <34.862568, 36.478844, 34.367290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360229, 36.524853, 34.902912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.143322, 36.860897, 34.907978>,  <35.013180, 37.062523, 34.911018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.143322, 36.860897, 34.907978>,  <35.360229, 36.524853, 34.902912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143322, 36.860897, 34.907978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196087, -0.141198, 0.970368,
		0.817005, 0.523714, 0.241302,
		-0.542266, 0.840111, 0.012666,
		34.980640, 37.112930, 34.911777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567230, 36.840614, 35.458691>,  <35.360229, 36.524853, 34.902912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567230, 36.840614, 35.458691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.224121, 37.031761, 35.382927>,  <35.018257, 37.146450, 35.337471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.224121, 37.031761, 35.382927>,  <35.567230, 36.840614, 35.458691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224121, 37.031761, 35.382927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344860, -0.261742, 0.901423,
		0.381181, 0.838533, 0.389310,
		-0.857772, 0.477863, -0.189405,
		34.966789, 37.175121, 35.326107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474998, 37.327309, 36.031815>,  <35.567230, 36.840614, 35.458691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474998, 37.327309, 36.031815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.105900, 37.272770, 35.887623>,  <34.884441, 37.240047, 35.801109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.105900, 37.272770, 35.887623>,  <35.474998, 37.327309, 36.031815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105900, 37.272770, 35.887623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324881, -0.228005, 0.917859,
		-0.207335, 0.964067, 0.166096,
		-0.922748, -0.136342, -0.360480,
		34.829075, 37.231869, 35.779480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.707691, 39.376400, 28.590755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341568, 39.320267, 28.439751>,  <37.121895, 39.286587, 28.349148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341568, 39.320267, 28.439751>,  <37.707691, 39.376400, 28.590755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341568, 39.320267, 28.439751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393819, 0.508193, 0.765928,
		0.084362, 0.849733, -0.520421,
		-0.915309, -0.140336, -0.377513,
		37.066975, 39.278168, 28.326496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352295, 40.087353, 28.634668>,  <37.707691, 39.376400, 28.590755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352295, 40.087353, 28.634668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137264, 39.750103, 28.629583>,  <37.008247, 39.547752, 28.626534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137264, 39.750103, 28.629583>,  <37.352295, 40.087353, 28.634668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137264, 39.750103, 28.629583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384181, 0.231479, 0.893768,
		-0.750613, 0.485348, -0.448348,
		-0.537572, -0.843122, -0.012711,
		36.975994, 39.497166, 28.625771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795849, 40.184498, 29.065634>,  <37.352295, 40.087353, 28.634668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795849, 40.184498, 29.065634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780472, 39.785248, 29.046543>,  <36.771244, 39.545700, 29.035089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780472, 39.785248, 29.046543>,  <36.795849, 40.184498, 29.065634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780472, 39.785248, 29.046543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555491, -0.018355, 0.831320,
		-0.830633, 0.058470, -0.553742,
		-0.038443, -0.998120, -0.047726,
		36.768940, 39.485813, 29.032225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125156, 40.007862, 29.202108>,  <36.795849, 40.184498, 29.065634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125156, 40.007862, 29.202108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327892, 39.676422, 29.297220>,  <36.449535, 39.477558, 29.354288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327892, 39.676422, 29.297220>,  <36.125156, 40.007862, 29.202108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327892, 39.676422, 29.297220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645199, -0.181700, 0.742094,
		-0.571693, -0.529538, -0.626703,
		0.506839, -0.828598, 0.237781,
		36.479942, 39.427841, 29.368555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683151, 39.647308, 29.624517>,  <36.125156, 40.007862, 29.202108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683151, 39.647308, 29.624517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038681, 39.489937, 29.718493>,  <36.251999, 39.395512, 29.774878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038681, 39.489937, 29.718493>,  <35.683151, 39.647308, 29.624517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038681, 39.489937, 29.718493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349544, -0.250585, 0.902788,
		-0.296318, -0.884543, -0.360250,
		0.888828, -0.393435, 0.234933,
		36.305328, 39.371906, 29.788973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471645, 39.041862, 30.008551>,  <35.683151, 39.647308, 29.624517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471645, 39.041862, 30.008551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857830, 39.065598, 30.110029>,  <36.089542, 39.079838, 30.170916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857830, 39.065598, 30.110029>,  <35.471645, 39.041862, 30.008551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857830, 39.065598, 30.110029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191504, -0.498603, 0.845412,
		0.176662, -0.864797, -0.470018,
		0.965462, 0.059342, 0.253697,
		36.147469, 39.083401, 30.186138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649979, 38.374577, 30.119230>,  <35.471645, 39.041862, 30.008551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649979, 38.374577, 30.119230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915817, 38.593620, 30.322575>,  <36.075321, 38.725048, 30.444582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915817, 38.593620, 30.322575>,  <35.649979, 38.374577, 30.119230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915817, 38.593620, 30.322575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195223, -0.529461, 0.825566,
		0.721248, -0.647912, -0.244972,
		0.664597, 0.547613, 0.508360,
		36.115196, 38.757904, 30.475082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033112, 37.923820, 30.532949>,  <35.649979, 38.374577, 30.119230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033112, 37.923820, 30.532949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155327, 38.255638, 30.719927>,  <36.228657, 38.454727, 30.832113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155327, 38.255638, 30.719927>,  <36.033112, 37.923820, 30.532949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155327, 38.255638, 30.719927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128544, -0.522360, 0.842981,
		0.943463, -0.197475, -0.266234,
		0.305538, 0.829544, 0.467443,
		36.246986, 38.504501, 30.860159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561314, 37.734921, 31.020788>,  <36.033112, 37.923820, 30.532949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561314, 37.734921, 31.020788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362759, 38.063904, 31.131901>,  <36.243626, 38.261295, 31.198568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362759, 38.063904, 31.131901>,  <36.561314, 37.734921, 31.020788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362759, 38.063904, 31.131901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104378, -0.374214, 0.921449,
		0.861804, 0.428400, 0.271602,
		-0.496386, 0.822458, 0.277784,
		36.213844, 38.310642, 31.215237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296398, 37.580475, 31.063698>,  <36.561314, 37.734921, 31.020788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296398, 37.580475, 31.063698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420315, 37.200165, 31.060911>,  <37.494667, 36.971977, 31.059240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420315, 37.200165, 31.060911>,  <37.296398, 37.580475, 31.063698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420315, 37.200165, 31.060911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097291, 0.038986, -0.994492,
		0.945813, 0.307411, 0.104580,
		0.309795, -0.950778, -0.006965,
		37.513252, 36.914932, 31.058823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858276, 37.515793, 30.559496>,  <37.296398, 37.580475, 31.063698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858276, 37.515793, 30.559496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724976, 37.144958, 30.628153>,  <37.644997, 36.922459, 30.669348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724976, 37.144958, 30.628153>,  <37.858276, 37.515793, 30.559496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724976, 37.144958, 30.628153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078480, -0.208693, -0.974827,
		0.939566, -0.311393, 0.142305,
		-0.333252, -0.927082, 0.171643,
		37.625000, 36.866833, 30.679646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218349, 37.175495, 30.125132>,  <37.858276, 37.515793, 30.559496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218349, 37.175495, 30.125132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902458, 36.938698, 30.189474>,  <37.712925, 36.796619, 30.228081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902458, 36.938698, 30.189474>,  <38.218349, 37.175495, 30.125132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902458, 36.938698, 30.189474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024072, -0.232111, -0.972391,
		0.612983, -0.771798, 0.169055,
		-0.789730, -0.591990, 0.160859,
		37.665539, 36.761101, 30.237732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401001, 36.496468, 29.901808>,  <38.218349, 37.175495, 30.125132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401001, 36.496468, 29.901808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001656, 36.511658, 29.884737>,  <37.762047, 36.520771, 29.874495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001656, 36.511658, 29.884737>,  <38.401001, 36.496468, 29.901808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001656, 36.511658, 29.884737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023603, -0.406087, -0.913529,
		-0.052020, -0.913045, 0.404528,
		-0.998367, 0.037973, -0.042675,
		37.702145, 36.523048, 29.871935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204693, 35.984264, 29.412739>,  <38.401001, 36.496468, 29.901808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204693, 35.984264, 29.412739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856567, 36.178032, 29.448269>,  <37.647690, 36.294292, 29.469587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856567, 36.178032, 29.448269>,  <38.204693, 35.984264, 29.412739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856567, 36.178032, 29.448269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236186, -0.252276, -0.938389,
		-0.432161, -0.837675, 0.333972,
		-0.870318, 0.484415, 0.088823,
		37.595470, 36.323357, 29.474916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737202, 35.529301, 29.028482>,  <38.204693, 35.984264, 29.412739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737202, 35.529301, 29.028482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595154, 35.902630, 29.049603>,  <37.509926, 36.126629, 29.062275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595154, 35.902630, 29.049603>,  <37.737202, 35.529301, 29.028482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595154, 35.902630, 29.049603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365297, -0.086559, -0.926858,
		-0.860492, -0.348435, 0.371680,
		-0.355122, 0.933328, 0.052799,
		37.488617, 36.182629, 29.065443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079243, 35.495434, 28.612532>,  <37.737202, 35.529301, 29.028482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079243, 35.495434, 28.612532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217052, 35.870270, 28.635056>,  <37.299740, 36.095169, 28.648569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217052, 35.870270, 28.635056>,  <37.079243, 35.495434, 28.612532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217052, 35.870270, 28.635056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213211, 0.136521, -0.967421,
		-0.914245, 0.321296, 0.246832,
		0.344526, 0.937086, 0.056310,
		37.320412, 36.151394, 28.651949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561832, 35.880337, 28.292654>,  <37.079243, 35.495434, 28.612532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561832, 35.880337, 28.292654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895561, 36.100578, 28.281740>,  <37.095798, 36.232723, 28.275192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895561, 36.100578, 28.281740>,  <36.561832, 35.880337, 28.292654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895561, 36.100578, 28.281740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151344, 0.181176, -0.971736,
		-0.530095, 0.814871, 0.234489,
		0.834323, 0.550600, -0.027285,
		37.145859, 36.265759, 28.273554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390778, 36.418507, 27.793653>,  <36.561832, 35.880337, 28.292654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390778, 36.418507, 27.793653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790298, 36.424793, 27.812189>,  <37.030010, 36.428566, 27.823311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790298, 36.424793, 27.812189>,  <36.390778, 36.418507, 27.793653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790298, 36.424793, 27.812189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042829, 0.177271, -0.983230,
		-0.023664, 0.984037, 0.176385,
		0.998802, 0.015713, 0.046341,
		37.089939, 36.429508, 27.826092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604355, 36.984077, 27.440199>,  <36.390778, 36.418507, 27.793653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604355, 36.984077, 27.440199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919609, 36.737919, 27.444807>,  <37.108761, 36.590225, 27.447573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919609, 36.737919, 27.444807>,  <36.604355, 36.984077, 27.440199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919609, 36.737919, 27.444807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100654, 0.110395, -0.988778,
		0.607216, 0.780450, 0.148948,
		0.788135, -0.615394, 0.011522,
		37.156048, 36.553299, 27.448263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058323, 37.221058, 26.908529>,  <36.604355, 36.984077, 27.440199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058323, 37.221058, 26.908529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223404, 36.865089, 26.986216>,  <37.322453, 36.651508, 27.032827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223404, 36.865089, 26.986216>,  <37.058323, 37.221058, 26.908529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223404, 36.865089, 26.986216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198718, -0.120118, -0.972668,
		0.888927, 0.440012, 0.127271,
		0.412698, -0.889922, 0.194215,
		37.347214, 36.598114, 27.044479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736359, 37.236568, 26.598890>,  <37.058323, 37.221058, 26.908529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736359, 37.236568, 26.598890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633522, 36.851261, 26.629913>,  <37.571819, 36.620075, 26.648527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633522, 36.851261, 26.629913>,  <37.736359, 37.236568, 26.598890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633522, 36.851261, 26.629913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360164, -0.169979, -0.917272,
		0.896765, -0.207885, 0.390635,
		-0.257087, -0.963271, 0.077558,
		37.556396, 36.562279, 26.653181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211174, 36.965385, 26.287416>,  <37.736359, 37.236568, 26.598890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211174, 36.965385, 26.287416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978733, 36.640385, 26.306005>,  <37.839268, 36.445385, 26.317158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978733, 36.640385, 26.306005>,  <38.211174, 36.965385, 26.287416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978733, 36.640385, 26.306005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445378, -0.365291, -0.817436,
		0.681143, -0.454319, 0.574142,
		-0.581106, -0.812500, 0.046472,
		37.804401, 36.396633, 26.319946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629166, 36.339092, 26.090847>,  <38.211174, 36.965385, 26.287416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629166, 36.339092, 26.090847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250553, 36.228821, 26.023819>,  <38.023384, 36.162659, 25.983603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250553, 36.228821, 26.023819>,  <38.629166, 36.339092, 26.090847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250553, 36.228821, 26.023819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269022, -0.387777, -0.881621,
		0.178068, -0.879561, 0.441207,
		-0.946530, -0.275683, -0.167570,
		37.966595, 36.146114, 25.973547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.766117, 34.239391, 24.723694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.162476, 34.285046, 24.752245>,  <31.400291, 34.312439, 24.769375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.162476, 34.285046, 24.752245>,  <30.766117, 34.239391, 24.723694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162476, 34.285046, 24.752245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013867, -0.440859, 0.897469,
		0.133898, -0.890290, -0.435264,
		0.990898, 0.114134, 0.071376,
		31.459745, 34.319286, 24.773657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051508, 33.569702, 24.963861>,  <30.766117, 34.239391, 24.723694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051508, 33.569702, 24.963861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.338186, 33.839230, 25.035770>,  <31.510193, 34.000946, 25.078915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.338186, 33.839230, 25.035770>,  <31.051508, 33.569702, 24.963861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338186, 33.839230, 25.035770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100844, -0.355204, 0.929333,
		0.690055, -0.647922, -0.322524,
		0.716697, 0.673815, 0.179771,
		31.553196, 34.041374, 25.089703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648703, 33.209141, 25.286615>,  <31.051508, 33.569702, 24.963861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648703, 33.209141, 25.286615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.700596, 33.594334, 25.381134>,  <31.731731, 33.825451, 25.437845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.700596, 33.594334, 25.381134>,  <31.648703, 33.209141, 25.286615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700596, 33.594334, 25.381134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397531, -0.268831, 0.877325,
		0.908372, -0.019882, -0.417691,
		0.129731, 0.962982, 0.236295,
		31.739515, 33.883228, 25.452023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195412, 33.278267, 25.828331>,  <31.648703, 33.209141, 25.286615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195412, 33.278267, 25.828331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.022667, 33.635681, 25.877476>,  <31.919022, 33.850128, 25.906961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.022667, 33.635681, 25.877476>,  <32.195412, 33.278267, 25.828331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022667, 33.635681, 25.877476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164758, -0.055773, 0.984756,
		0.886765, 0.445518, -0.123131,
		-0.431859, 0.893534, 0.122861,
		31.893108, 33.903740, 25.914333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669968, 33.666264, 26.365280>,  <32.195412, 33.278267, 25.828331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669968, 33.666264, 26.365280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.326599, 33.871433, 26.363098>,  <32.120579, 33.994534, 26.361790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.326599, 33.871433, 26.363098>,  <32.669968, 33.666264, 26.365280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326599, 33.871433, 26.363098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041358, 0.079806, 0.995952,
		0.511279, 0.854719, -0.089720,
		-0.858419, 0.512920, -0.005454,
		32.069073, 34.025311, 26.361462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838215, 34.304646, 26.766508>,  <32.669968, 33.666264, 26.365280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838215, 34.304646, 26.766508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.440365, 34.263321, 26.763878>,  <32.201653, 34.238525, 26.762300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.440365, 34.263321, 26.763878>,  <32.838215, 34.304646, 26.766508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440365, 34.263321, 26.763878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018165, 0.111657, 0.993581,
		-0.101919, 0.988362, -0.112933,
		-0.994627, -0.103316, -0.006574,
		32.141975, 34.232327, 26.761906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604557, 34.829330, 27.243059>,  <32.838215, 34.304646, 26.766508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604557, 34.829330, 27.243059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.315548, 34.554970, 27.208424>,  <32.142143, 34.390354, 27.187643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.315548, 34.554970, 27.208424>,  <32.604557, 34.829330, 27.243059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315548, 34.554970, 27.208424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251632, 0.144253, 0.957012,
		-0.643924, 0.713254, -0.276821,
		-0.722525, -0.685900, -0.086590,
		32.098789, 34.349201, 27.182447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093555, 35.082947, 27.624987>,  <32.604557, 34.829330, 27.243059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093555, 35.082947, 27.624987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.005775, 34.693512, 27.599771>,  <31.953108, 34.459850, 27.584642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.005775, 34.693512, 27.599771>,  <32.093555, 35.082947, 27.624987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005775, 34.693512, 27.599771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087566, -0.044697, 0.995156,
		-0.971687, 0.223903, -0.075444,
		-0.219446, -0.973586, -0.063037,
		31.939941, 34.401436, 27.580860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446754, 34.929169, 28.013842>,  <32.093555, 35.082947, 27.624987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446754, 34.929169, 28.013842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.627932, 34.574680, 27.974932>,  <31.736637, 34.361988, 27.951586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.627932, 34.574680, 27.974932>,  <31.446754, 34.929169, 28.013842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627932, 34.574680, 27.974932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288030, -0.248716, 0.924759,
		-0.843730, -0.390846, -0.367911,
		0.452943, -0.886217, -0.097273,
		31.763815, 34.308815, 27.945749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061390, 34.444851, 28.305161>,  <31.446754, 34.929169, 28.013842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061390, 34.444851, 28.305161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.390177, 34.217365, 28.292946>,  <31.587448, 34.080875, 28.285618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.390177, 34.217365, 28.292946>,  <31.061390, 34.444851, 28.305161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390177, 34.217365, 28.292946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218421, -0.364295, 0.905307,
		-0.525987, -0.737463, -0.423658,
		0.821967, -0.568716, -0.030538,
		31.636766, 34.046749, 28.283785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854586, 33.782856, 28.608627>,  <31.061390, 34.444851, 28.305161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854586, 33.782856, 28.608627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.248426, 33.835529, 28.654610>,  <31.484732, 33.867134, 28.682199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.248426, 33.835529, 28.654610>,  <30.854586, 33.782856, 28.608627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248426, 33.835529, 28.654610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091914, -0.169354, 0.981260,
		0.148686, -0.976718, -0.154643,
		0.984603, 0.131686, 0.114955,
		31.543808, 33.875034, 28.689096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109182, 33.250000, 28.852640>,  <30.854586, 33.782856, 28.608627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109182, 33.250000, 28.852640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.382633, 33.516819, 28.971096>,  <31.546703, 33.676910, 29.042170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.382633, 33.516819, 28.971096>,  <31.109182, 33.250000, 28.852640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382633, 33.516819, 28.971096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174301, -0.244800, 0.953778,
		0.708710, -0.703648, -0.051085,
		0.683629, 0.667048, 0.296139,
		31.587723, 33.716934, 29.059938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493238, 32.862659, 29.330637>,  <31.109182, 33.250000, 28.852640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493238, 32.862659, 29.330637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.578920, 33.249481, 29.385653>,  <31.630329, 33.481575, 29.418661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.578920, 33.249481, 29.385653>,  <31.493238, 32.862659, 29.330637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578920, 33.249481, 29.385653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094579, -0.119611, 0.988306,
		0.972200, -0.224706, 0.065842,
		0.214203, 0.967058, 0.137538,
		31.643181, 33.539600, 29.426914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006798, 32.869194, 29.794884>,  <31.493238, 32.862659, 29.330637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006798, 32.869194, 29.794884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.842583, 33.231865, 29.833641>,  <31.744055, 33.449467, 29.856895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.842583, 33.231865, 29.833641>,  <32.006798, 32.869194, 29.794884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842583, 33.231865, 29.833641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119692, -0.158928, 0.980008,
		0.903954, 0.390732, 0.173769,
		-0.410537, 0.906681, 0.096896,
		31.719421, 33.503868, 29.862709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820629, 32.964149, 29.796776>,  <32.006798, 32.869194, 29.794884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820629, 32.964149, 29.796776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.098911, 32.681705, 29.743999>,  <33.265881, 32.512241, 29.712334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.098911, 32.681705, 29.743999>,  <32.820629, 32.964149, 29.796776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098911, 32.681705, 29.743999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124806, 0.062062, -0.990238,
		0.707403, 0.705379, -0.044950,
		0.695704, -0.706107, -0.131939,
		33.307621, 32.469872, 29.704418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133778, 33.060978, 29.136534>,  <32.820629, 32.964149, 29.796776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133778, 33.060978, 29.136534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.333473, 32.721916, 29.208363>,  <33.453289, 32.518478, 29.251459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.333473, 32.721916, 29.208363>,  <33.133778, 33.060978, 29.136534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333473, 32.721916, 29.208363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139571, -0.125867, -0.982180,
		0.855150, 0.515405, 0.055470,
		0.499239, -0.847653, 0.179571,
		33.483246, 32.467621, 29.262234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807102, 33.047192, 28.795282>,  <33.133778, 33.060978, 29.136534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807102, 33.047192, 28.795282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.724018, 32.658176, 28.837288>,  <33.674168, 32.424767, 28.862492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.724018, 32.658176, 28.837288>,  <33.807102, 33.047192, 28.795282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724018, 32.658176, 28.837288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204110, -0.148084, -0.967683,
		0.956658, -0.179564, 0.229263,
		-0.207711, -0.972537, 0.105016,
		33.661705, 32.366417, 28.868793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363556, 32.665195, 28.518793>,  <33.807102, 33.047192, 28.795282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363556, 32.665195, 28.518793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.051956, 32.414406, 28.515596>,  <33.864998, 32.263931, 28.513678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.051956, 32.414406, 28.515596>,  <34.363556, 32.665195, 28.518793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051956, 32.414406, 28.515596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183484, -0.215750, -0.959055,
		0.599577, -0.748570, 0.283109,
		-0.779000, -0.626973, -0.007992,
		33.818256, 32.226315, 28.513199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692566, 32.144550, 28.259434>,  <34.363556, 32.665195, 28.518793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692566, 32.144550, 28.259434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.298233, 32.100872, 28.208500>,  <34.061634, 32.074665, 28.177938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.298233, 32.100872, 28.208500>,  <34.692566, 32.144550, 28.259434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298233, 32.100872, 28.208500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144822, -0.170990, -0.974571,
		0.084649, -0.979203, 0.184382,
		-0.985830, -0.109199, -0.127336,
		34.002483, 32.068111, 28.170300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623932, 31.519739, 27.802921>,  <34.692566, 32.144550, 28.259434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623932, 31.519739, 27.802921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.303501, 31.758722, 27.788349>,  <34.111244, 31.902111, 27.779606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.303501, 31.758722, 27.788349>,  <34.623932, 31.519739, 27.802921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303501, 31.758722, 27.788349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027568, -0.023968, -0.999333,
		-0.597931, -0.801543, 0.002729,
		-0.801073, 0.597456, -0.036429,
		34.063179, 31.937960, 27.777420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281967, 31.342022, 27.153698>,  <34.623932, 31.519739, 27.802921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281967, 31.342022, 27.153698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.083858, 31.680040, 27.234291>,  <33.964993, 31.882853, 27.282648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.083858, 31.680040, 27.234291>,  <34.281967, 31.342022, 27.153698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083858, 31.680040, 27.234291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060197, 0.197987, -0.978355,
		-0.866648, -0.496684, -0.047189,
		-0.495275, 0.845049, 0.201484,
		33.935276, 31.933556, 27.294737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604656, 31.393333, 26.738165>,  <34.281967, 31.342022, 27.153698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604656, 31.393333, 26.738165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.715134, 31.763222, 26.842934>,  <33.781422, 31.985155, 26.905794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.715134, 31.763222, 26.842934>,  <33.604656, 31.393333, 26.738165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715134, 31.763222, 26.842934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077133, 0.250317, -0.965087,
		-0.958001, 0.286756, -0.002190,
		0.276196, 0.924723, 0.261922,
		33.797993, 32.040638, 26.921511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517570, 31.673351, 26.171022>,  <33.604656, 31.393333, 26.738165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517570, 31.673351, 26.171022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.715694, 31.967836, 26.355484>,  <33.834568, 32.144527, 26.466162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.715694, 31.967836, 26.355484>,  <33.517570, 31.673351, 26.171022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715694, 31.967836, 26.355484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228423, 0.401795, -0.886783,
		-0.838149, 0.544568, 0.030844,
		0.495307, 0.736211, 0.461156,
		33.864288, 32.188698, 26.493832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254093, 32.365566, 26.036013>,  <33.517570, 31.673351, 26.171022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254093, 32.365566, 26.036013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.647099, 32.376419, 26.109701>,  <33.882900, 32.382931, 26.153913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.647099, 32.376419, 26.109701>,  <33.254093, 32.365566, 26.036013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647099, 32.376419, 26.109701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157922, 0.402773, -0.901573,
		-0.098657, 0.914898, 0.391444,
		0.982511, 0.027129, 0.184219,
		33.941853, 32.384560, 26.164967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529530, 33.065781, 25.762861>,  <33.254093, 32.365566, 26.036013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529530, 33.065781, 25.762861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.829994, 32.802277, 25.779766>,  <34.010273, 32.644173, 25.789909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.829994, 32.802277, 25.779766>,  <33.529530, 33.065781, 25.762861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829994, 32.802277, 25.779766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324750, 0.313041, -0.892492,
		0.574712, 0.684131, 0.449078,
		0.751161, -0.658764, 0.042263,
		34.055344, 32.604649, 25.792444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996075, 33.360855, 25.492544>,  <33.529530, 33.065781, 25.762861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996075, 33.360855, 25.492544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.159328, 32.996342, 25.470663>,  <34.257282, 32.777634, 25.457535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.159328, 32.996342, 25.470663>,  <33.996075, 33.360855, 25.492544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159328, 32.996342, 25.470663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394699, 0.230171, -0.889513,
		0.823188, 0.341451, 0.453622,
		0.408136, -0.911281, -0.054704,
		34.281769, 32.722958, 25.454252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756329, 33.365295, 25.351870>,  <33.996075, 33.360855, 25.492544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756329, 33.365295, 25.351870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.639835, 33.004166, 25.225319>,  <34.569939, 32.787487, 25.149387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.639835, 33.004166, 25.225319>,  <34.756329, 33.365295, 25.351870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639835, 33.004166, 25.225319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307529, 0.224808, -0.924601,
		0.905875, -0.366570, 0.212173,
		-0.291233, -0.902822, -0.316379,
		34.552467, 32.733318, 25.130405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242954, 33.146233, 24.807819>,  <34.756329, 33.365295, 25.351870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242954, 33.146233, 24.807819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.931870, 32.904064, 24.740135>,  <34.745220, 32.758762, 24.699524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.931870, 32.904064, 24.740135>,  <35.242954, 33.146233, 24.807819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931870, 32.904064, 24.740135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007823, 0.259836, -0.965621,
		0.628576, -0.752296, -0.197340,
		-0.777709, -0.605422, -0.169212,
		34.698555, 32.722439, 24.689371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673397, 32.579021, 24.949295>,  <35.242954, 33.146233, 24.807819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673397, 32.579021, 24.949295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.066250, 32.503895, 24.944675>,  <36.301964, 32.458820, 24.941904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.066250, 32.503895, 24.944675>,  <35.673397, 32.579021, 24.949295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066250, 32.503895, 24.944675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001613, -0.069777, 0.997561,
		-0.188166, -0.979722, -0.068833,
		0.982136, -0.187818, -0.011549,
		36.360889, 32.447548, 24.941210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780529, 32.058617, 25.390146>,  <35.673397, 32.579021, 24.949295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780529, 32.058617, 25.390146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.142467, 32.228531, 25.378801>,  <36.359631, 32.330479, 25.371994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.142467, 32.228531, 25.378801>,  <35.780529, 32.058617, 25.390146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142467, 32.228531, 25.378801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136827, -0.227074, 0.964218,
		0.403147, -0.876352, -0.263590,
		0.904848, 0.424788, -0.028364,
		36.413921, 32.355968, 25.370293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174450, 31.672485, 25.791561>,  <35.780529, 32.058617, 25.390146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174450, 31.672485, 25.791561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.397419, 32.002361, 25.753254>,  <36.531200, 32.200287, 25.730268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.397419, 32.002361, 25.753254>,  <36.174450, 31.672485, 25.791561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397419, 32.002361, 25.753254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184707, -0.010724, 0.982735,
		0.809423, -0.565486, -0.158304,
		0.557421, 0.824688, -0.095769,
		36.564644, 32.249767, 25.724524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790733, 31.513988, 26.127254>,  <36.174450, 31.672485, 25.791561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790733, 31.513988, 26.127254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.755123, 31.912222, 26.115318>,  <36.733757, 32.151161, 26.108156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.755123, 31.912222, 26.115318>,  <36.790733, 31.513988, 26.127254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755123, 31.912222, 26.115318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230250, 0.049720, 0.971861,
		0.969051, 0.079646, -0.233659,
		-0.089023, 0.995582, -0.029842,
		36.728416, 32.210896, 26.106365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347153, 31.678976, 26.523287>,  <36.790733, 31.513988, 26.127254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347153, 31.678976, 26.523287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.096256, 31.990490, 26.520046>,  <36.945717, 32.177399, 26.518103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.096256, 31.990490, 26.520046>,  <37.347153, 31.678976, 26.523287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096256, 31.990490, 26.520046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201422, 0.172258, 0.964239,
		0.752329, 0.603178, -0.264911,
		-0.627240, 0.778784, -0.008102,
		36.908085, 32.224125, 26.517616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721931, 32.157944, 26.743382>,  <37.347153, 31.678976, 26.523287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721931, 32.157944, 26.743382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.341476, 32.246460, 26.829508>,  <37.113201, 32.299568, 26.881184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.341476, 32.246460, 26.829508>,  <37.721931, 32.157944, 26.743382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341476, 32.246460, 26.829508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280880, 0.330571, 0.901016,
		0.128208, 0.917471, -0.376575,
		-0.951141, 0.221290, 0.215317,
		37.056133, 32.312847, 26.894102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756607, 32.839821, 27.073605>,  <37.721931, 32.157944, 26.743382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756607, 32.839821, 27.073605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.394650, 32.692005, 27.158089>,  <37.177475, 32.603317, 27.208780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.394650, 32.692005, 27.158089>,  <37.756607, 32.839821, 27.073605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394650, 32.692005, 27.158089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053151, 0.394233, 0.917472,
		-0.422310, 0.841439, -0.337097,
		-0.904892, -0.369541, 0.211211,
		37.123180, 32.581142, 27.221453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330788, 33.377571, 27.315655>,  <37.756607, 32.839821, 27.073605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330788, 33.377571, 27.315655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.224400, 33.019764, 27.459375>,  <37.160564, 32.805080, 27.545609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.224400, 33.019764, 27.459375>,  <37.330788, 33.377571, 27.315655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224400, 33.019764, 27.459375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033141, 0.380992, 0.923984,
		-0.963411, 0.233847, -0.130978,
		-0.265972, -0.894517, 0.359302,
		37.144608, 32.751408, 27.567165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949158, 33.649719, 27.779181>,  <37.330788, 33.377571, 27.315655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949158, 33.649719, 27.779181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.968792, 33.262165, 27.876213>,  <36.980572, 33.029633, 27.934433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.968792, 33.262165, 27.876213>,  <36.949158, 33.649719, 27.779181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968792, 33.262165, 27.876213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137870, 0.233977, 0.962417,
		-0.989233, -0.080687, -0.122095,
		0.049087, -0.968888, 0.242582,
		36.983517, 32.971500, 27.948988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389397, 33.514370, 28.238604>,  <36.949158, 33.649719, 27.779181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389397, 33.514370, 28.238604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.623856, 33.194489, 28.290619>,  <36.764530, 33.002560, 28.321829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.623856, 33.194489, 28.290619>,  <36.389397, 33.514370, 28.238604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623856, 33.194489, 28.290619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098846, 0.088717, 0.991140,
		-0.804151, -0.593810, -0.027046,
		0.586149, -0.799699, 0.130037,
		36.799702, 32.954578, 28.329630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042217, 33.122704, 28.745596>,  <36.389397, 33.514370, 28.238604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042217, 33.122704, 28.745596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.418499, 32.987873, 28.760838>,  <36.644268, 32.906975, 28.769983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.418499, 32.987873, 28.760838>,  <36.042217, 33.122704, 28.745596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418499, 32.987873, 28.760838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042372, 0.228205, 0.972691,
		-0.336568, -0.913401, 0.228956,
		0.940705, -0.337078, 0.038104,
		36.700710, 32.886749, 28.772268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044411, 32.499485, 29.111265>,  <36.042217, 33.122704, 28.745596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044411, 32.499485, 29.111265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.410652, 32.657654, 29.140436>,  <36.630398, 32.752556, 29.157938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.410652, 32.657654, 29.140436>,  <36.044411, 32.499485, 29.111265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410652, 32.657654, 29.140436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159564, 0.190845, 0.968565,
		0.369075, -0.898454, 0.237833,
		0.915600, 0.395423, 0.072925,
		36.685333, 32.776279, 29.162313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167065, 32.296432, 29.731428>,  <36.044411, 32.499485, 29.111265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167065, 32.296432, 29.731428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.426422, 32.588524, 29.645309>,  <36.582035, 32.763779, 29.593637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.426422, 32.588524, 29.645309>,  <36.167065, 32.296432, 29.731428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426422, 32.588524, 29.645309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048642, 0.321960, 0.945503,
		0.759751, -0.602584, 0.244276,
		0.648392, 0.730229, -0.215298,
		36.620941, 32.807594, 29.580721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650074, 32.279537, 30.232399>,  <36.167065, 32.296432, 29.731428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650074, 32.279537, 30.232399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.711716, 32.648685, 30.091225>,  <36.748699, 32.870174, 30.006519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.711716, 32.648685, 30.091225>,  <36.650074, 32.279537, 30.232399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711716, 32.648685, 30.091225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051149, 0.349272, 0.935624,
		0.986730, -0.162235, 0.006620,
		0.154103, 0.922870, -0.352935,
		36.757946, 32.925545, 29.985344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.732063, 35.675781, 25.695929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.353020, 35.797588, 25.657335>,  <38.125595, 35.870674, 25.634180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.353020, 35.797588, 25.657335>,  <38.732063, 35.675781, 25.695929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353020, 35.797588, 25.657335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016814, -0.349164, -0.936911,
		-0.318993, -0.886202, 0.335991,
		-0.947608, 0.304517, -0.096481,
		38.068737, 35.888943, 25.628391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414551, 35.095764, 25.499001>,  <38.732063, 35.675781, 25.695929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414551, 35.095764, 25.499001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.213978, 35.412697, 25.359995>,  <38.093632, 35.602856, 25.276592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.213978, 35.412697, 25.359995>,  <38.414551, 35.095764, 25.499001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213978, 35.412697, 25.359995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066183, -0.365356, -0.928512,
		-0.862659, -0.488590, 0.130764,
		-0.501437, 0.792335, -0.347514,
		38.063545, 35.650398, 25.255741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898769, 34.747768, 24.928301>,  <38.414551, 35.095764, 25.499001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898769, 34.747768, 24.928301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.918015, 35.142002, 24.863430>,  <37.929562, 35.378544, 24.824507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.918015, 35.142002, 24.863430>,  <37.898769, 34.747768, 24.928301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918015, 35.142002, 24.863430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252452, -0.169094, -0.952720,
		-0.966413, 0.004894, -0.256949,
		0.048112, 0.985588, -0.162179,
		37.932449, 35.437679, 24.814775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490852, 34.949986, 24.253738>,  <37.898769, 34.747768, 24.928301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490852, 34.949986, 24.253738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.745598, 35.250809, 24.321636>,  <37.898445, 35.431301, 24.362375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.745598, 35.250809, 24.321636>,  <37.490852, 34.949986, 24.253738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745598, 35.250809, 24.321636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307612, -0.045984, -0.950400,
		-0.706951, 0.657491, -0.260628,
		0.636864, 0.752058, 0.169744,
		37.936657, 35.476425, 24.372559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374229, 35.341198, 23.640030>,  <37.490852, 34.949986, 24.253738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374229, 35.341198, 23.640030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.710411, 35.483631, 23.803413>,  <37.912121, 35.569092, 23.901443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.710411, 35.483631, 23.803413>,  <37.374229, 35.341198, 23.640030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710411, 35.483631, 23.803413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387791, 0.131258, -0.912354,
		-0.378486, 0.925190, -0.027770,
		0.840456, 0.356082, 0.408460,
		37.962547, 35.590454, 23.925951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548241, 35.927910, 23.289675>,  <37.374229, 35.341198, 23.640030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548241, 35.927910, 23.289675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.898624, 35.809143, 23.441746>,  <38.108856, 35.737885, 23.532988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.898624, 35.809143, 23.441746>,  <37.548241, 35.927910, 23.289675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898624, 35.809143, 23.441746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455915, 0.252117, -0.853568,
		0.157591, 0.921019, 0.356214,
		0.875960, -0.296918, 0.380175,
		38.161411, 35.720066, 23.555798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054695, 36.430431, 23.083076>,  <37.548241, 35.927910, 23.289675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054695, 36.430431, 23.083076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.287350, 36.119396, 23.178627>,  <38.426941, 35.932777, 23.235956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.287350, 36.119396, 23.178627>,  <38.054695, 36.430431, 23.083076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287350, 36.119396, 23.178627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557654, 0.167365, -0.813026,
		0.592218, 0.606094, 0.530969,
		0.581636, -0.777586, 0.238874,
		38.461842, 35.886120, 23.250290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832722, 36.651569, 22.908634>,  <38.054695, 36.430431, 23.083076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832722, 36.651569, 22.908634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.820854, 36.255096, 22.960281>,  <38.813732, 36.017212, 22.991270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.820854, 36.255096, 22.960281>,  <38.832722, 36.651569, 22.908634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820854, 36.255096, 22.960281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494501, -0.126814, -0.859876,
		0.868670, 0.038338, 0.493905,
		-0.029668, -0.991185, 0.129118,
		38.811954, 35.957741, 22.999016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532791, 36.319469, 22.971603>,  <38.832722, 36.651569, 22.908634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532791, 36.319469, 22.971603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.290634, 36.037537, 22.823702>,  <39.145340, 35.868378, 22.734961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.290634, 36.037537, 22.823702>,  <39.532791, 36.319469, 22.971603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290634, 36.037537, 22.823702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550156, -0.034847, -0.834335,
		0.575177, -0.708522, 0.408861,
		-0.605392, -0.704828, -0.369754,
		39.109016, 35.826088, 22.712776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979458, 35.774796, 22.619398>,  <39.532791, 36.319469, 22.971603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979458, 35.774796, 22.619398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.610577, 35.748177, 22.467022>,  <39.389248, 35.732204, 22.375597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.610577, 35.748177, 22.467022>,  <39.979458, 35.774796, 22.619398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610577, 35.748177, 22.467022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385516, -0.235503, -0.892141,
		-0.030345, -0.969593, 0.242835,
		-0.922202, -0.066545, -0.380940,
		39.333916, 35.728214, 22.352739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102646, 35.311638, 22.171156>,  <39.979458, 35.774796, 22.619398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102646, 35.311638, 22.171156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.736496, 35.435757, 22.068539>,  <39.516808, 35.510227, 22.006969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.736496, 35.435757, 22.068539>,  <40.102646, 35.311638, 22.171156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736496, 35.435757, 22.068539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219081, -0.150711, -0.963997,
		-0.337787, -0.938618, 0.069977,
		-0.915371, 0.310295, -0.256542,
		39.461884, 35.528843, 21.991575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943752, 34.814121, 21.556957>,  <40.102646, 35.311638, 22.171156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943752, 34.814121, 21.556957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.714424, 35.141830, 21.560816>,  <39.576828, 35.338455, 21.563131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.714424, 35.141830, 21.560816>,  <39.943752, 34.814121, 21.556957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714424, 35.141830, 21.560816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281346, 0.207911, -0.936812,
		-0.769514, -0.534376, -0.349700,
		-0.573317, 0.819277, 0.009646,
		39.542431, 35.387615, 21.563709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558651, 34.888943, 20.890057>,  <39.943752, 34.814121, 21.556957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558651, 34.888943, 20.890057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.593506, 35.260178, 21.034870>,  <39.614418, 35.482918, 21.121758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.593506, 35.260178, 21.034870>,  <39.558651, 34.888943, 20.890057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593506, 35.260178, 21.034870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447852, 0.288123, -0.846412,
		-0.889851, 0.235894, -0.390537,
		0.087141, 0.928084, 0.362032,
		39.619648, 35.538601, 21.143480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165462, 35.418816, 20.481960>,  <39.558651, 34.888943, 20.890057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165462, 35.418816, 20.481960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.514839, 35.551292, 20.624741>,  <39.724464, 35.630779, 20.710409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.514839, 35.551292, 20.624741>,  <39.165462, 35.418816, 20.481960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514839, 35.551292, 20.624741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194832, 0.434116, -0.879536,
		-0.446255, 0.837767, 0.314647,
		0.873440, 0.331194, 0.356951,
		39.776871, 35.650650, 20.731825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596214, 35.087246, 20.813509>,  <39.165462, 35.418816, 20.481960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596214, 35.087246, 20.813509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.408680, 34.798672, 20.609657>,  <38.296158, 34.625526, 20.487347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.408680, 34.798672, 20.609657>,  <38.596214, 35.087246, 20.813509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408680, 34.798672, 20.609657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512993, -0.247290, 0.822001,
		-0.719048, 0.646819, -0.254154,
		-0.468836, -0.721438, -0.509627,
		38.268028, 34.582241, 20.456770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861141, 35.080574, 21.055748>,  <38.596214, 35.087246, 20.813509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861141, 35.080574, 21.055748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.881752, 34.729103, 20.865900>,  <37.894119, 34.518219, 20.751991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.881752, 34.729103, 20.865900>,  <37.861141, 35.080574, 21.055748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881752, 34.729103, 20.865900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511696, -0.431354, 0.743034,
		-0.857620, 0.204578, -0.471843,
		0.051523, -0.878682, -0.474620,
		37.897209, 34.465500, 20.723515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227394, 34.763393, 21.015129>,  <37.861141, 35.080574, 21.055748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227394, 34.763393, 21.015129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.449764, 34.437138, 20.951029>,  <37.583187, 34.241383, 20.912569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.449764, 34.437138, 20.951029>,  <37.227394, 34.763393, 21.015129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449764, 34.437138, 20.951029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499196, -0.481747, 0.720224,
		-0.664643, -0.320394, -0.674980,
		0.555925, -0.815639, -0.160250,
		37.616543, 34.192448, 20.902954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791130, 34.296051, 21.027517>,  <37.227394, 34.763393, 21.015129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791130, 34.296051, 21.027517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.121609, 34.081825, 21.097450>,  <37.319897, 33.953289, 21.139410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.121609, 34.081825, 21.097450>,  <36.791130, 34.296051, 21.027517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121609, 34.081825, 21.097450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491993, -0.534692, 0.687057,
		-0.274483, -0.653661, -0.705256,
		0.826197, -0.535567, 0.174832,
		37.369469, 33.921154, 21.149900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462872, 33.669846, 21.098864>,  <36.791130, 34.296051, 21.027517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462872, 33.669846, 21.098864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.835220, 33.605366, 21.230007>,  <37.058628, 33.566677, 21.308693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.835220, 33.605366, 21.230007>,  <36.462872, 33.669846, 21.098864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835220, 33.605366, 21.230007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332741, -0.744639, 0.578615,
		0.150862, -0.647709, -0.746802,
		0.930873, -0.161201, 0.327858,
		37.114483, 33.557007, 21.328363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621006, 33.018383, 20.934120>,  <36.462872, 33.669846, 21.098864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621006, 33.018383, 20.934120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.867264, 33.110981, 21.235420>,  <37.015018, 33.166542, 21.416201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.867264, 33.110981, 21.235420>,  <36.621006, 33.018383, 20.934120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867264, 33.110981, 21.235420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433150, -0.699112, 0.568879,
		0.658302, -0.676499, -0.330132,
		0.615646, 0.231498, 0.753252,
		37.051956, 33.180431, 21.461395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641224, 32.487606, 21.337021>,  <36.621006, 33.018383, 20.934120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641224, 32.487606, 21.337021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.817917, 32.750217, 21.581593>,  <36.923935, 32.907784, 21.728336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.817917, 32.750217, 21.581593>,  <36.641224, 32.487606, 21.337021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817917, 32.750217, 21.581593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368718, -0.488450, 0.790862,
		0.817873, -0.574797, 0.026307,
		0.441736, 0.656525, 0.611428,
		36.950439, 32.947174, 21.765020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973431, 32.134102, 21.802708>,  <36.641224, 32.487606, 21.337021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973431, 32.134102, 21.802708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.928646, 32.488503, 21.982691>,  <36.901775, 32.701145, 22.090681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.928646, 32.488503, 21.982691>,  <36.973431, 32.134102, 21.802708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928646, 32.488503, 21.982691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128224, -0.461900, 0.877614,
		0.985405, 0.040562, 0.165321,
		-0.111960, 0.886004, 0.449958,
		36.895058, 32.754303, 22.117678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411720, 32.043213, 22.428295>,  <36.973431, 32.134102, 21.802708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411720, 32.043213, 22.428295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.165115, 32.348331, 22.506329>,  <37.017155, 32.531403, 22.553148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.165115, 32.348331, 22.506329>,  <37.411720, 32.043213, 22.428295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165115, 32.348331, 22.506329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025468, -0.266964, 0.963370,
		0.786936, 0.588958, 0.184012,
		-0.616509, 0.762797, 0.195084,
		36.980164, 32.577171, 22.564854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717899, 32.370678, 22.971777>,  <37.411720, 32.043213, 22.428295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717899, 32.370678, 22.971777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.343864, 32.510956, 22.992296>,  <37.119446, 32.595123, 23.004608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.343864, 32.510956, 22.992296>,  <37.717899, 32.370678, 22.971777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343864, 32.510956, 22.992296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027539, -0.072402, 0.996995,
		0.353351, 0.933688, 0.058044,
		-0.935085, 0.350691, 0.051297,
		37.063339, 32.616161, 23.007685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642204, 33.040474, 23.391701>,  <37.717899, 32.370678, 22.971777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642204, 33.040474, 23.391701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302860, 32.829258, 23.376425>,  <37.099255, 32.702526, 23.367260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302860, 32.829258, 23.376425>,  <37.642204, 33.040474, 23.391701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302860, 32.829258, 23.376425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031595, -0.021511, 0.999269,
		-0.528479, 0.848945, 0.001566,
		-0.848358, -0.528043, -0.038190,
		37.048351, 32.670845, 23.364967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217552, 33.346775, 23.950010>,  <37.642204, 33.040474, 23.391701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217552, 33.346775, 23.950010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.019176, 33.007309, 23.876469>,  <36.900150, 32.803627, 23.832344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.019176, 33.007309, 23.876469>,  <37.217552, 33.346775, 23.950010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019176, 33.007309, 23.876469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378199, 0.020512, 0.925497,
		-0.781670, 0.528526, -0.331139,
		-0.495941, -0.848669, -0.183854,
		36.870396, 32.752708, 23.821312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557892, 33.389057, 24.271538>,  <37.217552, 33.346775, 23.950010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557892, 33.389057, 24.271538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.579174, 32.994606, 24.208645>,  <36.591942, 32.757935, 24.170910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.579174, 32.994606, 24.208645>,  <36.557892, 33.389057, 24.271538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579174, 32.994606, 24.208645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200570, -0.164797, 0.965719,
		-0.978234, -0.019842, -0.206555,
		0.053201, -0.986128, -0.157230,
		36.595135, 32.698769, 24.161476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937370, 33.166473, 24.548857>,  <36.557892, 33.389057, 24.271538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937370, 33.166473, 24.548857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.207417, 32.871391, 24.549715>,  <36.369446, 32.694340, 24.550230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.207417, 32.871391, 24.549715>,  <35.937370, 33.166473, 24.548857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207417, 32.871391, 24.549715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229546, -0.207304, 0.950965,
		-0.701091, -0.642503, -0.309292,
		0.675115, -0.737710, 0.002145,
		36.409950, 32.650078, 24.550358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437458, 32.511868, 24.276417>,  <35.937370, 33.166473, 24.548857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437458, 32.511868, 24.276417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.046551, 32.593296, 24.252748>,  <34.812004, 32.642151, 24.238548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.046551, 32.593296, 24.252748>,  <35.437458, 32.511868, 24.276417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046551, 32.593296, 24.252748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104615, 0.220339, -0.969797,
		-0.184382, -0.953945, -0.236627,
		-0.977271, 0.203568, -0.059171,
		34.753368, 32.654366, 24.234997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209793, 32.294891, 23.638815>,  <35.437458, 32.511868, 24.276417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209793, 32.294891, 23.638815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.875393, 32.492493, 23.734369>,  <34.674755, 32.611053, 23.791702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.875393, 32.492493, 23.734369>,  <35.209793, 32.294891, 23.638815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875393, 32.492493, 23.734369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127854, 0.247998, -0.960287,
		-0.533629, -0.833341, -0.144166,
		-0.835999, 0.494005, 0.238885,
		34.624592, 32.640694, 23.806034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781490, 32.072090, 23.183256>,  <35.209793, 32.294891, 23.638815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781490, 32.072090, 23.183256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.615612, 32.412128, 23.313093>,  <34.516087, 32.616154, 23.390995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.615612, 32.412128, 23.313093>,  <34.781490, 32.072090, 23.183256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615612, 32.412128, 23.313093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179364, 0.273347, -0.945045,
		-0.892107, -0.450127, 0.039121,
		-0.414697, 0.850098, 0.324592,
		34.491203, 32.667156, 23.410471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119473, 32.116802, 22.894033>,  <34.781490, 32.072090, 23.183256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119473, 32.116802, 22.894033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.228615, 32.488369, 22.994164>,  <34.294102, 32.711308, 23.054241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.228615, 32.488369, 22.994164>,  <34.119473, 32.116802, 22.894033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228615, 32.488369, 22.994164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240866, 0.317872, -0.917028,
		-0.931415, 0.189921, 0.310478,
		0.272855, 0.928917, 0.250326,
		34.310471, 32.767044, 23.069262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666466, 32.501633, 22.598906>,  <34.119473, 32.116802, 22.894033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666466, 32.501633, 22.598906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.959583, 32.765457, 22.665827>,  <34.135456, 32.923752, 22.705980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.959583, 32.765457, 22.665827>,  <33.666466, 32.501633, 22.598906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959583, 32.765457, 22.665827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088926, 0.336592, -0.937442,
		-0.674613, 0.672076, 0.305306,
		0.732796, 0.659560, 0.167304,
		34.179420, 32.963326, 22.716019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492859, 33.004257, 22.175533>,  <33.666466, 32.501633, 22.598906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492859, 33.004257, 22.175533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.863659, 33.124187, 22.265659>,  <34.086140, 33.196148, 22.319735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.863659, 33.124187, 22.265659>,  <33.492859, 33.004257, 22.175533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863659, 33.124187, 22.265659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055429, 0.484630, -0.872961,
		-0.370934, 0.821727, 0.432634,
		0.927004, 0.299830, 0.225313,
		34.141762, 33.214138, 22.333254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592937, 33.838963, 22.070612>,  <33.492859, 33.004257, 22.175533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592937, 33.838963, 22.070612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.953789, 33.667000, 22.055964>,  <34.170300, 33.563820, 22.047174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.953789, 33.667000, 22.055964>,  <33.592937, 33.838963, 22.070612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953789, 33.667000, 22.055964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229250, 0.549496, -0.803429,
		0.365526, 0.716401, 0.594273,
		0.902128, -0.429912, -0.036620,
		34.224426, 33.538025, 22.044977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552258, 34.550621, 22.450672>,  <33.592937, 33.838963, 22.070612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552258, 34.550621, 22.450672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.311195, 34.868366, 22.481102>,  <33.166557, 35.059013, 22.499361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.311195, 34.868366, 22.481102>,  <33.552258, 34.550621, 22.450672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311195, 34.868366, 22.481102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416375, -0.394346, 0.819221,
		0.680762, 0.462032, 0.568410,
		-0.602656, 0.794366, 0.076077,
		33.130398, 35.106674, 22.503925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425453, 34.590717, 23.170586>,  <33.552258, 34.550621, 22.450672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425453, 34.590717, 23.170586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.133533, 34.839828, 23.057777>,  <32.958382, 34.989296, 22.990093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.133533, 34.839828, 23.057777>,  <33.425453, 34.590717, 23.170586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133533, 34.839828, 23.057777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616221, -0.420585, 0.665868,
		0.296076, 0.659738, 0.690713,
		-0.729802, 0.622779, -0.282019,
		32.914593, 35.026661, 22.973171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259655, 35.042282, 23.715715>,  <33.425453, 34.590717, 23.170586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259655, 35.042282, 23.715715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.946365, 35.067364, 23.468288>,  <32.758392, 35.082413, 23.319832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.946365, 35.067364, 23.468288>,  <33.259655, 35.042282, 23.715715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946365, 35.067364, 23.468288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613609, -0.238291, 0.752796,
		-0.100197, 0.969167, 0.225111,
		-0.783227, 0.062702, -0.618566,
		32.711395, 35.086174, 23.282719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778774, 35.465851, 24.050417>,  <33.259655, 35.042282, 23.715715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778774, 35.465851, 24.050417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.575005, 35.257446, 23.776472>,  <32.452744, 35.132404, 23.612104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.575005, 35.257446, 23.776472>,  <32.778774, 35.465851, 24.050417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575005, 35.257446, 23.776472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639475, -0.303351, 0.706435,
		-0.575814, 0.797825, -0.178640,
		-0.509421, -0.521012, -0.684863,
		32.422176, 35.101143, 23.571012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072975, 35.639500, 24.112646>,  <32.778774, 35.465851, 24.050417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072975, 35.639500, 24.112646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.076035, 35.285416, 23.926596>,  <32.077869, 35.072964, 23.814966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.076035, 35.285416, 23.926596>,  <32.072975, 35.639500, 24.112646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076035, 35.285416, 23.926596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630550, -0.365279, 0.684820,
		-0.776111, 0.288047, -0.560964,
		0.007648, -0.885212, -0.465125,
		32.078327, 35.019852, 23.787058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380375, 35.436939, 24.020729>,  <32.072975, 35.639500, 24.112646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380375, 35.436939, 24.020729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.592442, 35.097786, 24.018864>,  <31.719681, 34.894295, 24.017744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.592442, 35.097786, 24.018864>,  <31.380375, 35.436939, 24.020729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592442, 35.097786, 24.018864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535402, -0.339035, 0.773563,
		-0.657470, -0.407620, -0.633702,
		0.530167, -0.847881, -0.004665,
		31.751492, 34.843422, 24.017464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887373, 34.789589, 24.214760>,  <31.380375, 35.436939, 24.020729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887373, 34.789589, 24.214760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.265343, 34.677017, 24.281588>,  <31.492125, 34.609474, 24.321684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.265343, 34.677017, 24.281588>,  <30.887373, 34.789589, 24.214760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265343, 34.677017, 24.281588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291400, -0.491056, 0.820945,
		-0.148996, -0.824416, -0.546020,
		0.944926, -0.281428, 0.167069,
		31.548820, 34.592590, 24.331709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.033375, 38.315620, 21.649427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.343151, 38.068851, 21.705492>,  <37.529018, 37.920788, 21.739132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.343151, 38.068851, 21.705492>,  <37.033375, 38.315620, 21.649427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343151, 38.068851, 21.705492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400407, -0.306440, 0.863579,
		-0.489813, -0.724912, -0.484341,
		0.774440, -0.616926, 0.140162,
		37.575481, 37.883774, 21.747541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798336, 37.771141, 22.062407>,  <37.033375, 38.315620, 21.649427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798336, 37.771141, 22.062407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.193943, 37.722343, 22.095764>,  <37.431309, 37.693066, 22.115778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.193943, 37.722343, 22.095764>,  <36.798336, 37.771141, 22.062407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193943, 37.722343, 22.095764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115209, -0.283147, 0.952132,
		-0.092539, -0.951287, -0.294093,
		0.989021, -0.121991, 0.083394,
		37.490650, 37.685745, 22.120783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814934, 37.147968, 22.429741>,  <36.798336, 37.771141, 22.062407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814934, 37.147968, 22.429741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.162418, 37.343876, 22.459291>,  <37.370911, 37.461422, 22.477022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.162418, 37.343876, 22.459291>,  <36.814934, 37.147968, 22.429741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162418, 37.343876, 22.459291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015277, -0.122589, 0.992340,
		0.495076, -0.863189, -0.099012,
		0.868715, 0.489771, 0.073878,
		37.423035, 37.490807, 22.481455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988880, 36.900085, 22.989056>,  <36.814934, 37.147968, 22.429741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988880, 36.900085, 22.989056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.234226, 37.209797, 22.926733>,  <37.381435, 37.395622, 22.889339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.234226, 37.209797, 22.926733>,  <36.988880, 36.900085, 22.989056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234226, 37.209797, 22.926733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065020, 0.147104, 0.986982,
		0.787119, -0.615510, 0.039885,
		0.613365, 0.774279, -0.155809,
		37.418236, 37.442081, 22.879990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431355, 36.843033, 23.575201>,  <36.988880, 36.900085, 22.989056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431355, 36.843033, 23.575201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.493317, 37.222401, 23.464560>,  <37.530495, 37.450020, 23.398174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.493317, 37.222401, 23.464560>,  <37.431355, 36.843033, 23.575201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493317, 37.222401, 23.464560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041189, 0.273540, 0.960978,
		0.987070, -0.160254, 0.003309,
		0.154906, 0.948417, -0.276604,
		37.539787, 37.506927, 23.381578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969437, 37.080421, 23.954832>,  <37.431355, 36.843033, 23.575201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969437, 37.080421, 23.954832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.801422, 37.427109, 23.847229>,  <37.700615, 37.635120, 23.782667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.801422, 37.427109, 23.847229>,  <37.969437, 37.080421, 23.954832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801422, 37.427109, 23.847229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120803, 0.240387, 0.963131,
		0.899431, 0.437047, 0.003731,
		-0.420037, 0.866720, -0.269008,
		37.675411, 37.687126, 23.766527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220638, 37.646320, 24.369089>,  <37.969437, 37.080421, 23.954832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220638, 37.646320, 24.369089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.866043, 37.782463, 24.243679>,  <37.653286, 37.864151, 24.168432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.866043, 37.782463, 24.243679>,  <38.220638, 37.646320, 24.369089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866043, 37.782463, 24.243679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196675, 0.336171, 0.921036,
		0.418884, 0.878148, -0.231070,
		-0.886485, 0.340361, -0.313526,
		37.600098, 37.884571, 24.149622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091824, 38.349689, 24.587738>,  <38.220638, 37.646320, 24.369089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091824, 38.349689, 24.587738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.728218, 38.199017, 24.516405>,  <37.510056, 38.108612, 24.473604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.728218, 38.199017, 24.516405>,  <38.091824, 38.349689, 24.587738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728218, 38.199017, 24.516405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311204, 0.328879, 0.891623,
		-0.277207, 0.865997, -0.416180,
		-0.909015, -0.376681, -0.178334,
		37.455513, 38.086014, 24.462904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674126, 38.893661, 24.721031>,  <38.091824, 38.349689, 24.587738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674126, 38.893661, 24.721031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.426178, 38.582935, 24.765417>,  <37.277409, 38.396500, 24.792049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.426178, 38.582935, 24.765417>,  <37.674126, 38.893661, 24.721031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426178, 38.582935, 24.765417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234714, 0.318482, 0.918411,
		-0.748779, 0.543251, -0.379748,
		-0.619870, -0.776819, 0.110964,
		37.240215, 38.349888, 24.798706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985611, 39.169907, 24.951954>,  <37.674126, 38.893661, 24.721031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985611, 39.169907, 24.951954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.959343, 38.786217, 25.061920>,  <36.943581, 38.556004, 25.127899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.959343, 38.786217, 25.061920>,  <36.985611, 39.169907, 24.951954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959343, 38.786217, 25.061920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448883, 0.274458, 0.850398,
		-0.891174, -0.067558, -0.448603,
		-0.065671, -0.959223, 0.274916,
		36.939640, 38.498451, 25.144396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373280, 39.021721, 25.124153>,  <36.985611, 39.169907, 24.951954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373280, 39.021721, 25.124153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.563488, 38.718372, 25.302481>,  <36.677612, 38.536366, 25.409477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.563488, 38.718372, 25.302481>,  <36.373280, 39.021721, 25.124153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563488, 38.718372, 25.302481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453645, 0.222808, 0.862880,
		-0.753713, -0.612564, -0.238080,
		0.475523, -0.758368, 0.445820,
		36.706146, 38.490864, 25.436226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939037, 38.856441, 25.705568>,  <36.373280, 39.021721, 25.124153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939037, 38.856441, 25.705568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.288574, 38.686516, 25.800159>,  <36.498299, 38.584560, 25.856915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.288574, 38.686516, 25.800159>,  <35.939037, 38.856441, 25.705568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288574, 38.686516, 25.800159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164513, 0.199345, 0.966021,
		-0.457525, -0.883057, 0.104309,
		0.873845, -0.424819, 0.236479,
		36.550728, 38.559071, 25.871103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342102, 38.452301, 25.718859>,  <35.939037, 38.856441, 25.705568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342102, 38.452301, 25.718859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.049881, 38.719917, 25.664192>,  <34.874546, 38.880486, 25.631392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.049881, 38.719917, 25.664192>,  <35.342102, 38.452301, 25.718859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049881, 38.719917, 25.664192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103400, -0.089448, -0.990610,
		-0.674980, -0.737826, -0.003832,
		-0.730555, 0.669038, -0.136666,
		34.830715, 38.920628, 25.623192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996883, 38.207821, 25.187281>,  <35.342102, 38.452301, 25.718859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996883, 38.207821, 25.187281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.884121, 38.590820, 25.162882>,  <34.816463, 38.820621, 25.148243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.884121, 38.590820, 25.162882>,  <34.996883, 38.207821, 25.187281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884121, 38.590820, 25.162882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005338, -0.065139, -0.997862,
		-0.959428, -0.280976, 0.023474,
		-0.281905, 0.957502, -0.060997,
		34.799549, 38.878071, 25.144583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384434, 38.232265, 24.807537>,  <34.996883, 38.207821, 25.187281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384434, 38.232265, 24.807537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.533916, 38.602867, 24.789951>,  <34.623608, 38.825230, 24.779400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.533916, 38.602867, 24.789951>,  <34.384434, 38.232265, 24.807537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533916, 38.602867, 24.789951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020886, -0.038983, -0.999021,
		-0.927311, 0.374260, 0.004783,
		0.373707, 0.926504, -0.043966,
		34.646030, 38.880817, 24.776762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023312, 38.602627, 24.316635>,  <34.384434, 38.232265, 24.807537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023312, 38.602627, 24.316635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.331795, 38.857018, 24.327717>,  <34.516884, 39.009651, 24.334366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.331795, 38.857018, 24.327717>,  <34.023312, 38.602627, 24.316635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331795, 38.857018, 24.327717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040441, 0.092380, -0.994902,
		-0.635297, 0.766156, 0.096965,
		0.771208, 0.635980, 0.027705,
		34.563156, 39.047810, 24.336029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869274, 39.104179, 23.723097>,  <34.023312, 38.602627, 24.316635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869274, 39.104179, 23.723097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.256054, 39.159584, 23.808722>,  <34.488121, 39.192825, 23.860096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.256054, 39.159584, 23.808722>,  <33.869274, 39.104179, 23.723097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256054, 39.159584, 23.808722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177771, 0.235590, -0.955455,
		-0.182773, 0.961931, 0.203180,
		0.966950, 0.138512, 0.214063,
		34.546139, 39.201138, 23.872940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990585, 39.732887, 23.443670>,  <33.869274, 39.104179, 23.723097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990585, 39.732887, 23.443670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.358982, 39.581161, 23.479197>,  <34.580021, 39.490128, 23.500513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.358982, 39.581161, 23.479197>,  <33.990585, 39.732887, 23.443670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358982, 39.581161, 23.479197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160527, 0.161779, -0.973683,
		0.354961, 0.911016, 0.209888,
		0.920996, -0.379312, 0.088818,
		34.635281, 39.467369, 23.505842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341049, 40.132626, 22.804317>,  <33.990585, 39.732887, 23.443670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341049, 40.132626, 22.804317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.597137, 39.845760, 22.914444>,  <34.750790, 39.673641, 22.980520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.597137, 39.845760, 22.914444>,  <34.341049, 40.132626, 22.804317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597137, 39.845760, 22.914444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315423, -0.081376, -0.945455,
		0.700450, 0.692138, 0.174112,
		0.640217, -0.717163, 0.275316,
		34.789204, 39.630611, 22.997040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127377, 40.221607, 22.569149>,  <34.341049, 40.132626, 22.804317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127377, 40.221607, 22.569149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.097874, 39.824924, 22.611259>,  <35.080173, 39.586914, 22.636526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.097874, 39.824924, 22.611259>,  <35.127377, 40.221607, 22.569149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097874, 39.824924, 22.611259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244521, -0.120325, -0.962149,
		0.966835, -0.045220, 0.251367,
		-0.073754, -0.991704, 0.105277,
		35.075748, 39.527412, 22.642843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724129, 39.861679, 22.152935>,  <35.127377, 40.221607, 22.569149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724129, 39.861679, 22.152935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.456917, 39.572472, 22.223351>,  <35.296593, 39.398949, 22.265600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.456917, 39.572472, 22.223351>,  <35.724129, 39.861679, 22.152935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456917, 39.572472, 22.223351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006121, -0.231223, -0.972881,
		0.744114, -0.650987, 0.150037,
		-0.668025, -0.723016, 0.176041,
		35.256508, 39.355568, 22.276163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967281, 39.271870, 21.818632>,  <35.724129, 39.861679, 22.152935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967281, 39.271870, 21.818632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.582668, 39.176300, 21.872849>,  <35.351902, 39.118958, 21.905378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.582668, 39.176300, 21.872849>,  <35.967281, 39.271870, 21.818632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582668, 39.176300, 21.872849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036796, -0.376951, -0.925502,
		0.272219, -0.894887, 0.353659,
		-0.961531, -0.238926, 0.135542,
		35.294209, 39.104622, 21.913511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910202, 38.668968, 21.547140>,  <35.967281, 39.271870, 21.818632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910202, 38.668968, 21.547140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.525940, 38.779980, 21.551580>,  <35.295383, 38.846588, 21.554245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.525940, 38.779980, 21.551580>,  <35.910202, 38.668968, 21.547140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525940, 38.779980, 21.551580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114568, -0.359525, -0.926076,
		-0.253022, -0.890909, 0.377175,
		-0.960653, 0.277530, 0.011102,
		35.237743, 38.863239, 21.554911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552479, 38.154289, 21.217787>,  <35.910202, 38.668968, 21.547140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552479, 38.154289, 21.217787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.298931, 38.463173, 21.200342>,  <35.146801, 38.648502, 21.189875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.298931, 38.463173, 21.200342>,  <35.552479, 38.154289, 21.217787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298931, 38.463173, 21.200342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007605, -0.062609, -0.998009,
		-0.773403, -0.632276, 0.045559,
		-0.633869, 0.772209, -0.043614,
		35.108768, 38.694836, 21.187258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611591, 37.547920, 21.658741>,  <35.552479, 38.154289, 21.217787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611591, 37.547920, 21.658741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.235214, 37.663048, 21.587427>,  <35.009388, 37.732124, 21.544638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.235214, 37.663048, 21.587427>,  <35.611591, 37.547920, 21.658741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235214, 37.663048, 21.587427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333851, -0.701232, 0.629934,
		0.056286, 0.652254, 0.755908,
		-0.940944, 0.287817, -0.178286,
		34.952930, 37.749393, 21.533941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261913, 37.500008, 22.374323>,  <35.611591, 37.547920, 21.658741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261913, 37.500008, 22.374323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.004311, 37.482796, 22.068800>,  <34.849747, 37.472469, 21.885487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.004311, 37.482796, 22.068800>,  <35.261913, 37.500008, 22.374323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004311, 37.482796, 22.068800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411312, -0.822359, 0.393127,
		-0.645037, 0.567340, 0.511910,
		-0.644011, -0.043027, -0.763806,
		34.811108, 37.469887, 21.839659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720726, 37.146751, 22.573322>,  <35.261913, 37.500008, 22.374323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720726, 37.146751, 22.573322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.688919, 37.133804, 22.174799>,  <34.669834, 37.126038, 21.935684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.688919, 37.133804, 22.174799>,  <34.720726, 37.146751, 22.573322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688919, 37.133804, 22.174799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501545, -0.862451, 0.068047,
		-0.861469, 0.505105, 0.052352,
		-0.079522, -0.032364, -0.996308,
		34.665062, 37.124096, 21.875906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073124, 37.204723, 22.316996>,  <34.720726, 37.146751, 22.573322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073124, 37.204723, 22.316996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.236179, 37.011185, 22.007229>,  <34.334011, 36.895061, 21.821369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.236179, 37.011185, 22.007229>,  <34.073124, 37.204723, 22.316996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236179, 37.011185, 22.007229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576126, -0.794252, 0.192983,
		-0.708457, 0.367494, -0.602525,
		0.407637, -0.483851, -0.774417,
		34.358471, 36.866028, 21.774904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582302, 36.990402, 21.884382>,  <34.073124, 37.204723, 22.316996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582302, 36.990402, 21.884382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.891552, 36.751488, 21.799042>,  <34.077103, 36.608139, 21.747837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.891552, 36.751488, 21.799042>,  <33.582302, 36.990402, 21.884382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891552, 36.751488, 21.799042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596468, -0.799069, 0.075591,
		-0.215633, 0.068816, -0.974046,
		0.773128, -0.597288, -0.213353,
		34.123489, 36.572300, 21.735037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258442, 36.598911, 21.454636>,  <33.582302, 36.990402, 21.884382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258442, 36.598911, 21.454636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.585213, 36.403481, 21.577227>,  <33.781273, 36.286221, 21.650782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.585213, 36.403481, 21.577227>,  <33.258442, 36.598911, 21.454636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585213, 36.403481, 21.577227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535185, -0.840234, 0.087080,
		0.214968, -0.235160, -0.947886,
		0.816924, -0.488576, 0.306478,
		33.830292, 36.256908, 21.669170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228401, 35.927975, 21.110950>,  <33.258442, 36.598911, 21.454636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228401, 35.927975, 21.110950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.465946, 35.924126, 21.432755>,  <33.608475, 35.921818, 21.625837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.465946, 35.924126, 21.432755>,  <33.228401, 35.927975, 21.110950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465946, 35.924126, 21.432755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505184, -0.782701, 0.363549,
		0.626193, -0.622323, -0.469678,
		0.593862, -0.009622, 0.804509,
		33.644104, 35.921238, 21.674107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222088, 35.223244, 21.259415>,  <33.228401, 35.927975, 21.110950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222088, 35.223244, 21.259415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.356964, 35.403770, 21.589897>,  <33.437889, 35.512085, 21.788187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.356964, 35.403770, 21.589897>,  <33.222088, 35.223244, 21.259415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356964, 35.403770, 21.589897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439425, -0.700688, 0.562087,
		0.832592, -0.552585, -0.037945,
		0.337189, 0.451315, 0.826207,
		33.458122, 35.539165, 21.837759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372398, 34.724010, 21.721727>,  <33.222088, 35.223244, 21.259415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372398, 34.724010, 21.721727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.327965, 35.053955, 21.943453>,  <33.301304, 35.251923, 22.076488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.327965, 35.053955, 21.943453>,  <33.372398, 34.724010, 21.721727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327965, 35.053955, 21.943453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546183, -0.516648, 0.659363,
		0.830268, -0.229513, 0.507915,
		-0.111081, 0.824863, 0.554312,
		33.294640, 35.301414, 22.109747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981945, 34.434105, 21.754635>,  <33.372398, 34.724010, 21.721727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981945, 34.434105, 21.754635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.206779, 34.104950, 21.721384>,  <34.341679, 33.907455, 21.701433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.206779, 34.104950, 21.721384>,  <33.981945, 34.434105, 21.754635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206779, 34.104950, 21.721384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305400, 0.299903, -0.903764,
		0.768630, 0.482605, 0.419882,
		0.562085, -0.822891, -0.083127,
		34.375404, 33.858082, 21.696445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729912, 34.609013, 21.777842>,  <33.981945, 34.434105, 21.754635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729912, 34.609013, 21.777842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.647713, 34.278507, 21.568058>,  <34.598392, 34.080204, 21.442188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.647713, 34.278507, 21.568058>,  <34.729912, 34.609013, 21.777842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647713, 34.278507, 21.568058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358818, 0.434963, -0.825867,
		0.910505, -0.357900, 0.207093,
		-0.205500, -0.826265, -0.524457,
		34.586063, 34.030628, 21.410721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281719, 34.562790, 21.303410>,  <34.729912, 34.609013, 21.777842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281719, 34.562790, 21.303410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.025723, 34.305889, 21.134687>,  <34.872124, 34.151749, 21.033453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.025723, 34.305889, 21.134687>,  <35.281719, 34.562790, 21.303410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025723, 34.305889, 21.134687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298929, 0.297597, -0.906685,
		0.707847, -0.706364, 0.001526,
		-0.639996, -0.642250, -0.421806,
		34.833725, 34.113213, 21.008146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663986, 34.219933, 20.819014>,  <35.281719, 34.562790, 21.303410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663986, 34.219933, 20.819014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.285137, 34.170975, 20.700375>,  <35.057827, 34.141602, 20.629192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.285137, 34.170975, 20.700375>,  <35.663986, 34.219933, 20.819014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285137, 34.170975, 20.700375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238851, 0.348275, -0.906452,
		0.214242, -0.929367, -0.300627,
		-0.947127, -0.122395, -0.296596,
		35.000999, 34.134254, 20.611395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795277, 34.043507, 20.151468>,  <35.663986, 34.219933, 20.819014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795277, 34.043507, 20.151468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.410297, 34.150082, 20.172258>,  <35.179310, 34.214027, 20.184732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.410297, 34.150082, 20.172258>,  <35.795277, 34.043507, 20.151468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410297, 34.150082, 20.172258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053625, 0.374298, -0.925757,
		-0.266115, -0.888206, -0.374531,
		-0.962449, 0.266442, 0.051976,
		35.121563, 34.230015, 20.187851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463757, 33.860397, 19.507681>,  <35.795277, 34.043507, 20.151468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463757, 33.860397, 19.507681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.244461, 34.145859, 19.682100>,  <35.112885, 34.317135, 19.786751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.244461, 34.145859, 19.682100>,  <35.463757, 33.860397, 19.507681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244461, 34.145859, 19.682100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073560, 0.560513, -0.824872,
		-0.833082, -0.420150, -0.359790,
		-0.548237, 0.713652, 0.436047,
		35.079990, 34.359955, 19.812914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877247, 33.958012, 19.044365>,  <35.463757, 33.860397, 19.507681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877247, 33.958012, 19.044365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.938980, 34.292099, 19.255493>,  <34.976021, 34.492550, 19.382170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.938980, 34.292099, 19.255493>,  <34.877247, 33.958012, 19.044365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938980, 34.292099, 19.255493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168631, 0.504114, -0.847014,
		-0.973522, 0.219727, -0.063043,
		0.154331, 0.835218, 0.527818,
		34.985279, 34.542664, 19.413839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630508, 34.433159, 18.642075>,  <34.877247, 33.958012, 19.044365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630508, 34.433159, 18.642075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.880909, 34.626411, 18.886925>,  <35.031151, 34.742363, 19.033834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.880909, 34.626411, 18.886925>,  <34.630508, 34.433159, 18.642075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880909, 34.626411, 18.886925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338550, 0.538749, -0.771449,
		-0.702496, 0.690166, 0.173694,
		0.626006, 0.483136, 0.612125,
		35.068710, 34.771351, 19.070562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462013, 35.077950, 18.491463>,  <34.630508, 34.433159, 18.642075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462013, 35.077950, 18.491463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.829910, 35.058144, 18.647213>,  <35.050648, 35.046261, 18.740664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.829910, 35.058144, 18.647213>,  <34.462013, 35.077950, 18.491463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829910, 35.058144, 18.647213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355054, 0.527875, -0.771547,
		-0.167337, 0.847877, 0.503093,
		0.919747, -0.049517, 0.389375,
		35.105835, 35.043289, 18.764025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.270119, 33.462105, 34.265411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645931, 33.593273, 34.225914>,  <33.871418, 33.671974, 34.202213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645931, 33.593273, 34.225914>,  <33.270119, 33.462105, 34.265411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645931, 33.593273, 34.225914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000850, -0.286103, -0.958199,
		-0.342465, 0.900340, -0.268524,
		0.939530, 0.327922, -0.098745,
		33.927792, 33.691650, 34.196289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307930, 33.941376, 33.763710>,  <33.270119, 33.462105, 34.265411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307930, 33.941376, 33.763710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.669777, 33.773411, 33.792938>,  <33.886887, 33.672630, 33.810474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.669777, 33.773411, 33.792938>,  <33.307930, 33.941376, 33.763710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669777, 33.773411, 33.792938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004542, -0.161925, -0.986793,
		0.426203, 0.893001, -0.144573,
		0.904616, -0.419917, 0.073069,
		33.941162, 33.647434, 33.814857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563080, 34.144310, 33.183384>,  <33.307930, 33.941376, 33.763710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563080, 34.144310, 33.183384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784203, 33.831360, 33.298130>,  <33.916878, 33.643589, 33.366978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784203, 33.831360, 33.298130>,  <33.563080, 34.144310, 33.183384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784203, 33.831360, 33.298130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019650, -0.331918, -0.943103,
		0.833077, 0.526992, -0.168113,
		0.552807, -0.782375, 0.286869,
		33.950047, 33.596649, 33.384190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132130, 34.122944, 32.735096>,  <33.563080, 34.144310, 33.183384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132130, 34.122944, 32.735096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.128956, 33.759838, 32.902863>,  <34.127052, 33.541977, 33.003521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.128956, 33.759838, 32.902863>,  <34.132130, 34.122944, 32.735096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128956, 33.759838, 32.902863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226321, -0.410176, -0.883478,
		0.974020, 0.087909, 0.208702,
		-0.007939, -0.907760, 0.419415,
		34.126575, 33.487511, 33.028687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731110, 33.918987, 32.555355>,  <34.132130, 34.122944, 32.735096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731110, 33.918987, 32.555355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.498383, 33.602890, 32.632305>,  <34.358746, 33.413231, 32.678474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.498383, 33.602890, 32.632305>,  <34.731110, 33.918987, 32.555355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498383, 33.602890, 32.632305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204927, -0.371336, -0.905602,
		0.787078, -0.487474, 0.377992,
		-0.581819, -0.790240, 0.192374,
		34.323837, 33.365818, 32.690018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834206, 33.473434, 32.020447>,  <34.731110, 33.918987, 32.555355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834206, 33.473434, 32.020447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.519226, 33.284435, 32.178776>,  <34.330238, 33.171036, 32.273773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.519226, 33.284435, 32.178776>,  <34.834206, 33.473434, 32.020447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519226, 33.284435, 32.178776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166695, -0.454991, -0.874755,
		0.593413, -0.754805, 0.279518,
		-0.787447, -0.472497, 0.395820,
		34.282993, 33.142685, 32.297523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984478, 32.773018, 31.826252>,  <34.834206, 33.473434, 32.020447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984478, 32.773018, 31.826252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.594944, 32.842861, 31.884438>,  <34.361225, 32.884769, 31.919348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.594944, 32.842861, 31.884438>,  <34.984478, 32.773018, 31.826252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594944, 32.842861, 31.884438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212104, -0.468466, -0.857643,
		-0.081608, -0.866055, 0.493243,
		-0.973834, 0.174610, 0.145463,
		34.302795, 32.895245, 31.928076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679596, 32.120419, 31.541729>,  <34.984478, 32.773018, 31.826252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679596, 32.120419, 31.541729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.387356, 32.391983, 31.570877>,  <34.212013, 32.554920, 31.588366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.387356, 32.391983, 31.570877>,  <34.679596, 32.120419, 31.541729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387356, 32.391983, 31.570877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305348, -0.229402, -0.924195,
		-0.610727, -0.697466, 0.374904,
		-0.730599, 0.678908, 0.072868,
		34.168175, 32.595654, 31.592737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053162, 31.726265, 31.331053>,  <34.679596, 32.120419, 31.541729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053162, 31.726265, 31.331053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.938953, 32.108707, 31.304699>,  <33.870426, 32.338173, 31.288887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.938953, 32.108707, 31.304699>,  <34.053162, 31.726265, 31.331053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938953, 32.108707, 31.304699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439161, -0.191631, -0.877733,
		-0.851830, -0.221680, 0.474599,
		-0.285524, 0.956104, -0.065883,
		33.853294, 32.395538, 31.284933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348686, 31.679049, 31.179296>,  <34.053162, 31.726265, 31.331053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348686, 31.679049, 31.179296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.487347, 32.030788, 31.048710>,  <33.570541, 32.241833, 30.970358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.487347, 32.030788, 31.048710>,  <33.348686, 31.679049, 31.179296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487347, 32.030788, 31.048710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294303, -0.228510, -0.927992,
		-0.890629, 0.417767, 0.179582,
		0.346648, 0.879348, -0.326468,
		33.591343, 32.294594, 30.950769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800835, 32.020866, 30.765985>,  <33.348686, 31.679049, 31.179296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800835, 32.020866, 30.765985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.143875, 32.182106, 30.638210>,  <33.349697, 32.278851, 30.561546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.143875, 32.182106, 30.638210>,  <32.800835, 32.020866, 30.765985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143875, 32.182106, 30.638210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246941, -0.222098, -0.943235,
		-0.451161, 0.887798, -0.090930,
		0.857598, 0.403096, -0.319436,
		33.401154, 32.303036, 30.542379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588482, 32.382252, 30.318943>,  <32.800835, 32.020866, 30.765985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588482, 32.382252, 30.318943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.969982, 32.323872, 30.213833>,  <33.198883, 32.288845, 30.150766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.969982, 32.323872, 30.213833>,  <32.588482, 32.382252, 30.318943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969982, 32.323872, 30.213833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284700, -0.158194, -0.945474,
		0.096422, 0.976562, -0.192430,
		0.953755, -0.145949, -0.262774,
		33.256107, 32.280087, 30.135000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381218, 33.026127, 30.436472>,  <32.588482, 32.382252, 30.318943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381218, 33.026127, 30.436472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.094574, 33.302216, 30.396343>,  <31.922586, 33.467869, 30.372267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.094574, 33.302216, 30.396343>,  <32.381218, 33.026127, 30.436472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094574, 33.302216, 30.396343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079775, 0.061781, 0.994896,
		0.692896, 0.720957, 0.010789,
		-0.716611, 0.690220, -0.100322,
		31.879591, 33.509281, 30.366247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569405, 33.770840, 30.792534>,  <32.381218, 33.026127, 30.436472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569405, 33.770840, 30.792534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.171341, 33.749626, 30.759422>,  <31.932503, 33.736897, 30.739555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.171341, 33.749626, 30.759422>,  <32.569405, 33.770840, 30.792534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171341, 33.749626, 30.759422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091974, 0.204823, 0.974468,
		-0.034726, 0.977361, -0.208709,
		-0.995156, -0.053035, -0.082780,
		31.872795, 33.733715, 30.734589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365448, 34.377174, 30.942465>,  <32.569405, 33.770840, 30.792534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365448, 34.377174, 30.942465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.053619, 34.134727, 31.005571>,  <31.866524, 33.989258, 31.043436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.053619, 34.134727, 31.005571>,  <32.365448, 34.377174, 30.942465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053619, 34.134727, 31.005571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116878, 0.388258, 0.914109,
		-0.615314, 0.694172, -0.373516,
		-0.779569, -0.606120, 0.157767,
		31.819748, 33.952892, 31.052902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877026, 34.869701, 31.160437>,  <32.365448, 34.377174, 30.942465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877026, 34.869701, 31.160437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.787066, 34.500584, 31.285574>,  <31.733089, 34.279114, 31.360657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.787066, 34.500584, 31.285574>,  <31.877026, 34.869701, 31.160437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787066, 34.500584, 31.285574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194790, 0.357166, 0.913504,
		-0.954713, 0.144510, -0.260079,
		-0.224902, -0.922794, 0.312842,
		31.719595, 34.223747, 31.379427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400448, 35.059929, 31.644997>,  <31.877026, 34.869701, 31.160437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400448, 35.059929, 31.644997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.500204, 34.681343, 31.726984>,  <31.560059, 34.454193, 31.776176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.500204, 34.681343, 31.726984>,  <31.400448, 35.059929, 31.644997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500204, 34.681343, 31.726984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193765, 0.158604, 0.968142,
		-0.948820, -0.281162, -0.143837,
		0.249392, -0.946463, 0.204966,
		31.575022, 34.397404, 31.788473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928074, 34.943554, 32.115841>,  <31.400448, 35.059929, 31.644997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928074, 34.943554, 32.115841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.207232, 34.665737, 32.185764>,  <31.374727, 34.499046, 32.227718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.207232, 34.665737, 32.185764>,  <30.928074, 34.943554, 32.115841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207232, 34.665737, 32.185764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203846, 0.041359, 0.978129,
		-0.686577, -0.718267, -0.112714,
		0.697896, -0.694538, 0.174812,
		31.416601, 34.457375, 32.238209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630753, 34.596504, 32.722374>,  <30.928074, 34.943554, 32.115841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630753, 34.596504, 32.722374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.992090, 34.427361, 32.693634>,  <31.208893, 34.325874, 32.676388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.992090, 34.427361, 32.693634>,  <30.630753, 34.596504, 32.722374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992090, 34.427361, 32.693634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005885, -0.155288, 0.987852,
		-0.428877, -0.892792, -0.137790,
		0.903344, -0.422856, -0.071854,
		31.263094, 34.300503, 32.672077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529831, 33.955509, 33.054680>,  <30.630753, 34.596504, 32.722374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529831, 33.955509, 33.054680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901016, 34.100540, 33.089130>,  <31.123728, 34.187561, 33.109802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901016, 34.100540, 33.089130>,  <30.529831, 33.955509, 33.054680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901016, 34.100540, 33.089130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076910, -0.039803, 0.996243,
		0.364646, -0.931102, -0.009050,
		0.927964, 0.362580, 0.086126,
		31.179405, 34.209312, 33.114967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874588, 33.519627, 33.582829>,  <30.529831, 33.955509, 33.054680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874588, 33.519627, 33.582829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.076773, 33.864536, 33.570229>,  <31.198084, 34.071484, 33.562668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.076773, 33.864536, 33.570229>,  <30.874588, 33.519627, 33.582829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076773, 33.864536, 33.570229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209307, 0.157949, 0.965009,
		0.837078, -0.481180, 0.260317,
		0.505460, 0.862275, -0.031501,
		31.228411, 34.123219, 33.560780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244848, 33.580513, 34.169720>,  <30.874588, 33.519627, 33.582829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244848, 33.580513, 34.169720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.261868, 33.962730, 34.053017>,  <31.272079, 34.192062, 33.982994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.261868, 33.962730, 34.053017>,  <31.244848, 33.580513, 34.169720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261868, 33.962730, 34.053017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156723, 0.294795, 0.942621,
		0.986726, 0.005617, 0.162299,
		0.042550, 0.955544, -0.291762,
		31.274633, 34.249393, 33.965488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710106, 33.944405, 34.603706>,  <31.244848, 33.580513, 34.169720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710106, 33.944405, 34.603706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.440264, 34.203140, 34.461433>,  <31.278358, 34.358379, 34.376068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.440264, 34.203140, 34.461433>,  <31.710106, 33.944405, 34.603706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440264, 34.203140, 34.461433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208234, 0.295515, 0.932368,
		0.708200, 0.703045, -0.064663,
		-0.674605, 0.646837, -0.355682,
		31.237883, 34.397190, 34.354729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722494, 34.430183, 35.126713>,  <31.710106, 33.944405, 34.603706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722494, 34.430183, 35.126713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.385040, 34.509888, 34.927284>,  <31.182568, 34.557713, 34.807625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.385040, 34.509888, 34.927284>,  <31.722494, 34.430183, 35.126713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385040, 34.509888, 34.927284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439103, 0.278325, 0.854239,
		0.308985, 0.939590, -0.147306,
		-0.843633, 0.199264, -0.498575,
		31.131950, 34.569668, 34.777710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653355, 35.166016, 35.261047>,  <31.722494, 34.430183, 35.126713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653355, 35.166016, 35.261047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.293541, 35.024418, 35.158653>,  <31.077654, 34.939461, 35.097218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.293541, 35.024418, 35.158653>,  <31.653355, 35.166016, 35.261047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293541, 35.024418, 35.158653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353487, 0.245512, 0.902647,
		-0.256686, 0.902447, -0.345979,
		-0.899533, -0.353996, -0.255984,
		31.023682, 34.918221, 35.081860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298868, 35.701431, 35.538025>,  <31.653355, 35.166016, 35.261047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298868, 35.701431, 35.538025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.052923, 35.390545, 35.484531>,  <30.905355, 35.204014, 35.452435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.052923, 35.390545, 35.484531>,  <31.298868, 35.701431, 35.538025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052923, 35.390545, 35.484531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383088, 0.146125, 0.912081,
		-0.689337, 0.612037, -0.387588,
		-0.614864, -0.777212, -0.133735,
		30.868464, 35.157383, 35.444412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823460, 36.278275, 35.819164>,  <31.298868, 35.701431, 35.538025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823460, 36.278275, 35.819164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.817385, 36.674725, 35.871994>,  <31.813740, 36.912594, 35.903690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.817385, 36.674725, 35.871994>,  <31.823460, 36.278275, 35.819164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817385, 36.674725, 35.871994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269563, 0.123142, -0.955077,
		-0.962863, -0.050107, 0.265301,
		-0.015186, 0.991123, 0.132076,
		31.812828, 36.972061, 35.911617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235611, 36.715580, 35.383457>,  <31.823460, 36.278275, 35.819164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235611, 36.715580, 35.383457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.566116, 36.936687, 35.426785>,  <31.764420, 37.069351, 35.452782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.566116, 36.936687, 35.426785>,  <31.235611, 36.715580, 35.383457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566116, 36.936687, 35.426785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002487, 0.195873, -0.980626,
		-0.563276, 0.809988, 0.163217,
		0.826265, 0.552769, 0.108316,
		31.813995, 37.102520, 35.459278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229790, 37.359062, 35.007530>,  <31.235611, 36.715580, 35.383457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229790, 37.359062, 35.007530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.618454, 37.292355, 35.074543>,  <31.851652, 37.252331, 35.114750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.618454, 37.292355, 35.074543>,  <31.229790, 37.359062, 35.007530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618454, 37.292355, 35.074543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231524, 0.528350, -0.816850,
		0.047713, 0.832487, 0.551987,
		0.971658, -0.166772, 0.167532,
		31.909952, 37.242321, 35.124802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612589, 37.991455, 35.096210>,  <31.229790, 37.359062, 35.007530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612589, 37.991455, 35.096210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.859175, 37.716019, 34.943470>,  <32.007126, 37.550755, 34.851826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.859175, 37.716019, 34.943470>,  <31.612589, 37.991455, 35.096210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859175, 37.716019, 34.943470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207865, 0.610081, -0.764587,
		0.759449, 0.391969, 0.519229,
		0.616466, -0.688594, -0.381848,
		32.044113, 37.509441, 34.828915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253979, 38.345207, 34.760559>,  <31.612589, 37.991455, 35.096210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253979, 38.345207, 34.760559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.263397, 37.990971, 34.575008>,  <32.269051, 37.778431, 34.463680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.263397, 37.990971, 34.575008>,  <32.253979, 38.345207, 34.760559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263397, 37.990971, 34.575008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375728, 0.437827, -0.816784,
		0.926431, -0.155055, 0.343051,
		0.023550, -0.885587, -0.463875,
		32.270462, 37.725296, 34.435844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862534, 38.367908, 34.375439>,  <32.253979, 38.345207, 34.760559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862534, 38.367908, 34.375439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.650963, 38.069206, 34.214149>,  <32.524021, 37.889984, 34.117378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.650963, 38.069206, 34.214149>,  <32.862534, 38.367908, 34.375439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650963, 38.069206, 34.214149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360211, 0.232659, -0.903392,
		0.768428, -0.623075, 0.145930,
		-0.528929, -0.746757, -0.403221,
		32.492283, 37.845181, 34.093182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302437, 38.147919, 33.797894>,  <32.862534, 38.367908, 34.375439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302437, 38.147919, 33.797894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.931561, 38.028450, 33.707458>,  <32.709034, 37.956768, 33.653198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.931561, 38.028450, 33.707458>,  <33.302437, 38.147919, 33.797894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931561, 38.028450, 33.707458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195621, 0.128654, -0.972204,
		0.319455, -0.945645, -0.060860,
		-0.927190, -0.298670, -0.226087,
		32.653404, 37.938850, 33.639633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327827, 37.552620, 33.361389>,  <33.302437, 38.147919, 33.797894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327827, 37.552620, 33.361389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981960, 37.742779, 33.296467>,  <32.774437, 37.856873, 33.257515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981960, 37.742779, 33.296467>,  <33.327827, 37.552620, 33.361389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981960, 37.742779, 33.296467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171978, -0.023428, -0.984822,
		-0.471980, -0.879462, -0.061500,
		-0.864673, 0.475393, -0.162306,
		32.722557, 37.885395, 33.247776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146065, 37.285366, 32.768093>,  <33.327827, 37.552620, 33.361389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146065, 37.285366, 32.768093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909191, 37.606735, 32.792850>,  <32.767067, 37.799557, 32.807705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909191, 37.606735, 32.792850>,  <33.146065, 37.285366, 32.768093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909191, 37.606735, 32.792850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140789, 0.178792, -0.973762,
		-0.793411, -0.567929, -0.218990,
		-0.592181, 0.803424, 0.061897,
		32.731537, 37.847763, 32.811420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888912, 37.328751, 32.053608>,  <33.146065, 37.285366, 32.768093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888912, 37.328751, 32.053608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813480, 37.672554, 32.243629>,  <32.768223, 37.878838, 32.357643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813480, 37.672554, 32.243629>,  <32.888912, 37.328751, 32.053608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813480, 37.672554, 32.243629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034350, 0.477663, -0.877871,
		-0.981457, -0.181868, -0.060554,
		-0.188581, 0.859513, 0.475053,
		32.756905, 37.930408, 32.386147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358608, 37.597298, 31.761196>,  <32.888912, 37.328751, 32.053608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358608, 37.597298, 31.761196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.527252, 37.925278, 31.916080>,  <32.628437, 38.122066, 32.009010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.527252, 37.925278, 31.916080>,  <32.358608, 37.597298, 31.761196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527252, 37.925278, 31.916080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129085, 0.476939, -0.869406,
		-0.897544, 0.316563, 0.306923,
		0.421605, 0.819950, 0.387210,
		32.653732, 38.171261, 32.032242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035450, 38.169487, 31.441111>,  <32.358608, 37.597298, 31.761196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035450, 38.169487, 31.441111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.386314, 38.291264, 31.589655>,  <32.596832, 38.364330, 31.678782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.386314, 38.291264, 31.589655>,  <32.035450, 38.169487, 31.441111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386314, 38.291264, 31.589655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109914, 0.625526, -0.772423,
		-0.467451, 0.718355, 0.515223,
		0.877159, 0.304439, 0.371360,
		32.649464, 38.382595, 31.701063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029301, 38.881107, 31.334377>,  <32.035450, 38.169487, 31.441111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029301, 38.881107, 31.334377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.407825, 38.763336, 31.387745>,  <32.634941, 38.692673, 31.419765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.407825, 38.763336, 31.387745>,  <32.029301, 38.881107, 31.334377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407825, 38.763336, 31.387745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275657, 0.519488, -0.808792,
		0.168822, 0.802150, 0.572761,
		0.946315, -0.294428, 0.133417,
		32.691719, 38.675007, 31.427771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358364, 39.580677, 31.340700>,  <32.029301, 38.881107, 31.334377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358364, 39.580677, 31.340700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.623413, 39.293365, 31.255846>,  <32.782444, 39.120979, 31.204933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.623413, 39.293365, 31.255846>,  <32.358364, 39.580677, 31.340700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623413, 39.293365, 31.255846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415834, 0.588412, -0.693436,
		0.622903, 0.371276, 0.688583,
		0.662627, -0.718279, -0.212134,
		32.822201, 39.077881, 31.192205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925034, 39.885914, 31.093912>,  <32.358364, 39.580677, 31.340700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925034, 39.885914, 31.093912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.994308, 39.518951, 30.950598>,  <33.035873, 39.298775, 30.864609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.994308, 39.518951, 30.950598>,  <32.925034, 39.885914, 31.093912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994308, 39.518951, 30.950598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261556, 0.393561, -0.881305,
		0.949524, 0.058916, 0.308113,
		0.173184, -0.917409, -0.358286,
		33.046265, 39.243729, 30.843113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636456, 40.012939, 30.702881>,  <32.925034, 39.885914, 31.093912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636456, 40.012939, 30.702881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449661, 39.675255, 30.597637>,  <33.337585, 39.472645, 30.534491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449661, 39.675255, 30.597637>,  <33.636456, 40.012939, 30.702881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449661, 39.675255, 30.597637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191601, 0.193875, -0.962134,
		0.863259, -0.499712, 0.071216,
		-0.466983, -0.844216, -0.263110,
		33.309566, 39.421989, 30.518703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119652, 39.688694, 30.280069>,  <33.636456, 40.012939, 30.702881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119652, 39.688694, 30.280069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.759964, 39.540497, 30.187002>,  <33.544151, 39.451580, 30.131163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.759964, 39.540497, 30.187002>,  <34.119652, 39.688694, 30.280069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759964, 39.540497, 30.187002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208816, 0.103856, -0.972425,
		0.384440, -0.923011, -0.016026,
		-0.899223, -0.370492, -0.232666,
		33.490196, 39.429348, 30.117203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261330, 39.298801, 29.786547>,  <34.119652, 39.688694, 30.280069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261330, 39.298801, 29.786547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.864761, 39.338799, 29.752867>,  <33.626820, 39.362797, 29.732658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.864761, 39.338799, 29.752867>,  <34.261330, 39.298801, 29.786547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864761, 39.338799, 29.752867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090468, 0.059907, -0.994096,
		-0.094361, -0.993183, -0.068439,
		-0.991419, 0.099995, -0.084199,
		33.567337, 39.368797, 29.727608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035812, 38.817783, 29.442350>,  <34.261330, 39.298801, 29.786547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035812, 38.817783, 29.442350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.719746, 39.057899, 29.392883>,  <33.530106, 39.201969, 29.363203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.719746, 39.057899, 29.392883>,  <34.035812, 38.817783, 29.442350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719746, 39.057899, 29.392883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011450, -0.187284, -0.982239,
		-0.612787, -0.777547, 0.141112,
		-0.790165, 0.600287, -0.123668,
		33.482697, 39.237988, 29.355783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621284, 38.447472, 29.130251>,  <34.035812, 38.817783, 29.442350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621284, 38.447472, 29.130251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505573, 38.819080, 29.037964>,  <33.436146, 39.042046, 28.982592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505573, 38.819080, 29.037964>,  <33.621284, 38.447472, 29.130251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505573, 38.819080, 29.037964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109342, -0.207378, -0.972131,
		-0.950981, -0.306441, -0.041593,
		-0.289275, 0.929026, -0.230719,
		33.418789, 39.097790, 28.968748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244080, 38.361710, 28.507942>,  <33.621284, 38.447472, 29.130251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244080, 38.361710, 28.507942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.339355, 38.749214, 28.535564>,  <33.396523, 38.981716, 28.552137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.339355, 38.749214, 28.535564>,  <33.244080, 38.361710, 28.507942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339355, 38.749214, 28.535564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381245, -0.027869, -0.924054,
		-0.893261, 0.246432, -0.375973,
		0.238194, 0.968759, 0.069056,
		33.410812, 39.039841, 28.556282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102665, 38.511425, 27.908150>,  <33.244080, 38.361710, 28.507942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102665, 38.511425, 27.908150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.350506, 38.800140, 28.031517>,  <33.499210, 38.973370, 28.105537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.350506, 38.800140, 28.031517>,  <33.102665, 38.511425, 27.908150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350506, 38.800140, 28.031517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313410, 0.132746, -0.940294,
		-0.719631, 0.679269, -0.143965,
		0.619601, 0.721784, 0.308418,
		33.536385, 39.016674, 28.124043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013241, 39.178207, 27.389074>,  <33.102665, 38.511425, 27.908150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013241, 39.178207, 27.389074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.361004, 39.222343, 27.581724>,  <33.569660, 39.248825, 27.697313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.361004, 39.222343, 27.581724>,  <33.013241, 39.178207, 27.389074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361004, 39.222343, 27.581724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451856, 0.216824, -0.865340,
		-0.199908, 0.969955, 0.138650,
		0.869404, 0.110339, 0.481625,
		33.621826, 39.255444, 27.726212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237129, 39.741119, 27.033886>,  <33.013241, 39.178207, 27.389074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237129, 39.741119, 27.033886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.528828, 39.538010, 27.217352>,  <33.703846, 39.416145, 27.327431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.528828, 39.538010, 27.217352>,  <33.237129, 39.741119, 27.033886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528828, 39.538010, 27.217352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560106, 0.057934, -0.826393,
		0.393046, 0.859542, 0.326653,
		0.729244, -0.507770, 0.458664,
		33.747601, 39.385677, 27.354952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817753, 40.067440, 26.807301>,  <33.237129, 39.741119, 27.033886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817753, 40.067440, 26.807301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.965778, 39.716457, 26.929367>,  <34.054592, 39.505867, 27.002607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.965778, 39.716457, 26.929367>,  <33.817753, 40.067440, 26.807301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965778, 39.716457, 26.929367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657188, 0.015081, -0.753576,
		0.656628, 0.479419, 0.582235,
		0.370059, -0.877456, 0.305166,
		34.076797, 39.453220, 27.020916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582447, 40.074989, 26.730850>,  <33.817753, 40.067440, 26.807301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582447, 40.074989, 26.730850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.496059, 39.685329, 26.757347>,  <34.444225, 39.451534, 26.773245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.496059, 39.685329, 26.757347>,  <34.582447, 40.074989, 26.730850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496059, 39.685329, 26.757347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575254, -0.181766, -0.797523,
		0.788947, -0.134139, 0.599640,
		-0.215973, -0.974150, 0.066240,
		34.431267, 39.393085, 26.777220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232319, 39.656567, 26.650633>,  <34.582447, 40.074989, 26.730850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232319, 39.656567, 26.650633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.911346, 39.444412, 26.541239>,  <34.718761, 39.317120, 26.475601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.911346, 39.444412, 26.541239>,  <35.232319, 39.656567, 26.650633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911346, 39.444412, 26.541239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403091, -0.143820, -0.903788,
		0.440023, -0.835469, 0.329199,
		-0.802432, -0.530385, -0.273486,
		34.670616, 39.285297, 26.459192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477459, 39.076069, 26.273401>,  <35.232319, 39.656567, 26.650633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477459, 39.076069, 26.273401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.098949, 39.100174, 26.146322>,  <34.871845, 39.114639, 26.070074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.098949, 39.100174, 26.146322>,  <35.477459, 39.076069, 26.273401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098949, 39.100174, 26.146322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292512, -0.259284, -0.920439,
		-0.137843, -0.963919, 0.227726,
		-0.946275, 0.060263, -0.317698,
		34.815067, 39.118252, 26.051012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938156, 38.555359, 26.551558>,  <35.477459, 39.076069, 26.273401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938156, 38.555359, 26.551558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.325760, 38.516308, 26.460793>,  <36.558323, 38.492878, 26.406334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.325760, 38.516308, 26.460793>,  <35.938156, 38.555359, 26.551558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325760, 38.516308, 26.460793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221179, -0.066168, 0.972986,
		-0.110010, -0.993020, -0.042523,
		0.969009, -0.097633, -0.226914,
		36.616463, 38.487019, 26.392719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202969, 38.006165, 27.021132>,  <35.938156, 38.555359, 26.551558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202969, 38.006165, 27.021132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.507729, 38.239300, 26.908127>,  <36.690586, 38.379181, 26.840324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.507729, 38.239300, 26.908127>,  <36.202969, 38.006165, 27.021132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507729, 38.239300, 26.908127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263400, 0.119664, 0.957236,
		0.591716, -0.803732, -0.062346,
		0.761900, 0.582834, -0.282510,
		36.736298, 38.414150, 26.823374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817520, 37.835030, 27.439392>,  <36.202969, 38.006165, 27.021132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817520, 37.835030, 27.439392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.876743, 38.210461, 27.314716>,  <36.912277, 38.435719, 27.239912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.876743, 38.210461, 27.314716>,  <36.817520, 37.835030, 27.439392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876743, 38.210461, 27.314716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149346, 0.290327, 0.945202,
		0.977637, -0.186496, -0.097187,
		0.148060, 0.938578, -0.311687,
		36.921162, 38.492035, 27.221210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278507, 38.089386, 27.896441>,  <36.817520, 37.835030, 27.439392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278507, 38.089386, 27.896441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.158394, 38.438496, 27.742510>,  <37.086327, 38.647961, 27.650150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.158394, 38.438496, 27.742510>,  <37.278507, 38.089386, 27.896441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158394, 38.438496, 27.742510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085318, 0.426405, 0.900499,
		0.950028, 0.237569, -0.202505,
		-0.300280, 0.872777, -0.384828,
		37.068310, 38.700329, 27.627062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676514, 38.688324, 28.242073>,  <37.278507, 38.089386, 27.896441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676514, 38.688324, 28.242073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.356876, 38.847122, 28.061474>,  <37.165096, 38.942402, 27.953115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.356876, 38.847122, 28.061474>,  <37.676514, 38.688324, 28.242073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356876, 38.847122, 28.061474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183309, 0.554338, 0.811854,
		0.572583, 0.731509, -0.370194,
		-0.799091, 0.396994, -0.451497,
		37.117149, 38.966221, 27.926025>
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
