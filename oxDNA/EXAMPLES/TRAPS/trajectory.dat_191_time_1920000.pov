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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.428654, 53.231537, 49.651386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201416, 53.291370, 49.975090>,  <36.065075, 53.327271, 50.169312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201416, 53.291370, 49.975090>,  <36.428654, 53.231537, 49.651386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201416, 53.291370, 49.975090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817484, 0.215886, 0.533960,
		-0.094836, 0.964893, -0.244924,
		-0.568090, 0.149583, 0.809258,
		36.030991, 53.336246, 50.217869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390797, 53.997524, 49.948238>,  <36.428654, 53.231537, 49.651386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390797, 53.997524, 49.948238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381458, 53.684608, 50.197227>,  <36.375854, 53.496857, 50.346622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381458, 53.684608, 50.197227>,  <36.390797, 53.997524, 49.948238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381458, 53.684608, 50.197227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931743, 0.208657, 0.297181,
		-0.362366, 0.586923, 0.724025,
		-0.023350, -0.782294, 0.622472,
		36.374454, 53.449921, 50.383968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610447, 54.287991, 50.646660>,  <36.390797, 53.997524, 49.948238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610447, 54.287991, 50.646660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745640, 53.921333, 50.561302>,  <36.826756, 53.701340, 50.510086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745640, 53.921333, 50.561302>,  <36.610447, 54.287991, 50.646660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745640, 53.921333, 50.561302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940943, 0.324336, 0.097117,
		-0.019810, -0.233617, 0.972127,
		0.337984, -0.916640, -0.213395,
		36.847034, 53.646339, 50.497284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130428, 54.813217, 50.750179>,  <36.610447, 54.287991, 50.646660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130428, 54.813217, 50.750179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241459, 54.785652, 51.133469>,  <37.308079, 54.769112, 51.363441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241459, 54.785652, 51.133469>,  <37.130428, 54.813217, 50.750179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241459, 54.785652, 51.133469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922665, 0.297009, -0.245918,
		-0.267654, 0.952385, 0.146030,
		0.277581, -0.068915, 0.958227,
		37.324734, 54.764977, 51.420937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432209, 55.458954, 51.036972>,  <37.130428, 54.813217, 50.750179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432209, 55.458954, 51.036972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629684, 55.167934, 51.227528>,  <37.748169, 54.993320, 51.341862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629684, 55.167934, 51.227528>,  <37.432209, 55.458954, 51.036972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629684, 55.167934, 51.227528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869278, 0.428648, -0.246203,
		-0.025077, 0.535658, 0.844063,
		0.493686, -0.727551, 0.476385,
		37.777790, 54.949669, 51.370441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045692, 55.745472, 51.300583>,  <37.432209, 55.458954, 51.036972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045692, 55.745472, 51.300583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116856, 55.353760, 51.261879>,  <38.159554, 55.118732, 51.238659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116856, 55.353760, 51.261879>,  <38.045692, 55.745472, 51.300583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116856, 55.353760, 51.261879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975159, 0.188637, -0.116112,
		0.131957, -0.073695, 0.988512,
		0.177913, -0.979278, -0.096757,
		38.170231, 55.059975, 51.232853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575722, 55.472672, 51.851460>,  <38.045692, 55.745472, 51.300583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575722, 55.472672, 51.851460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605408, 55.281040, 51.501610>,  <38.623219, 55.166061, 51.291698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605408, 55.281040, 51.501610>,  <38.575722, 55.472672, 51.851460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605408, 55.281040, 51.501610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933984, 0.340786, -0.107420,
		0.349524, -0.808918, 0.472742,
		0.074210, -0.479079, -0.874629,
		38.627670, 55.137318, 51.239220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189507, 54.993874, 51.789253>,  <38.575722, 55.472672, 51.851460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189507, 54.993874, 51.789253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096401, 55.165840, 51.440311>,  <39.040539, 55.269020, 51.230946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096401, 55.165840, 51.440311>,  <39.189507, 54.993874, 51.789253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096401, 55.165840, 51.440311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953703, 0.276558, -0.118180,
		0.190448, -0.859471, -0.474382,
		-0.232766, 0.429912, -0.872350,
		39.026569, 55.294815, 51.178608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853268, 55.393703, 51.600613>,  <39.189507, 54.993874, 51.789253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853268, 55.393703, 51.600613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618610, 55.594147, 51.346138>,  <39.477814, 55.714413, 51.193455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618610, 55.594147, 51.346138>,  <39.853268, 55.393703, 51.600613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618610, 55.594147, 51.346138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047946, 0.805682, 0.590405,
		0.808423, 0.315856, -0.496677,
		-0.586646, 0.501110, -0.636188,
		39.442616, 55.744480, 51.155281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143631, 56.150417, 51.295738>,  <39.853268, 55.393703, 51.600613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143631, 56.150417, 51.295738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753365, 56.107563, 51.372257>,  <39.519203, 56.081848, 51.418167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753365, 56.107563, 51.372257>,  <40.143631, 56.150417, 51.295738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753365, 56.107563, 51.372257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054276, 0.727308, 0.684162,
		-0.212433, 0.677897, -0.703795,
		-0.975667, -0.107139, 0.191298,
		39.460663, 56.075420, 51.429646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800049, 56.787937, 51.369011>,  <40.143631, 56.150417, 51.295738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800049, 56.787937, 51.369011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644630, 56.503391, 51.603271>,  <39.551380, 56.332664, 51.743828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644630, 56.503391, 51.603271>,  <39.800049, 56.787937, 51.369011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644630, 56.503391, 51.603271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099523, 0.599471, 0.794185,
		-0.916038, 0.366865, -0.162126,
		-0.388548, -0.711368, 0.585650,
		39.528065, 56.289982, 51.778965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247002, 57.063339, 51.713348>,  <39.800049, 56.787937, 51.369011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247002, 57.063339, 51.713348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390945, 56.759750, 51.930405>,  <39.477310, 56.577595, 52.060638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390945, 56.759750, 51.930405>,  <39.247002, 57.063339, 51.713348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390945, 56.759750, 51.930405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234690, 0.636537, 0.734671,
		-0.903008, -0.137024, 0.407187,
		0.359857, -0.758976, 0.542640,
		39.498901, 56.532059, 52.093197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866528, 57.057224, 52.025768>,  <39.247002, 57.063339, 51.713348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866528, 57.057224, 52.025768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932625, 57.300728, 51.715385>,  <39.972282, 57.446831, 51.529156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932625, 57.300728, 51.715385>,  <39.866528, 57.057224, 52.025768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932625, 57.300728, 51.715385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796046, 0.382152, 0.469330,
		0.582242, -0.695249, -0.421454,
		0.165241, 0.608760, -0.775955,
		39.982197, 57.483356, 51.482597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426136, 57.144287, 51.578987>,  <39.866528, 57.057224, 52.025768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426136, 57.144287, 51.578987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661228, 56.823326, 51.620422>,  <40.802284, 56.630749, 51.645283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661228, 56.823326, 51.620422>,  <40.426136, 57.144287, 51.578987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661228, 56.823326, 51.620422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754756, 0.589883, 0.287022,
		-0.291412, -0.090506, 0.952307,
		0.587727, -0.802400, 0.103589,
		40.837547, 56.582607, 51.651501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831936, 57.413704, 52.053165>,  <40.426136, 57.144287, 51.578987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831936, 57.413704, 52.053165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019592, 57.085587, 51.922302>,  <41.132187, 56.888718, 51.843784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019592, 57.085587, 51.922302>,  <40.831936, 57.413704, 52.053165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019592, 57.085587, 51.922302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882892, 0.427135, 0.195083,
		-0.020285, -0.380363, 0.924615,
		0.469138, -0.820292, -0.327155,
		41.160336, 56.839500, 51.824158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348457, 57.211815, 52.485294>,  <40.831936, 57.413704, 52.053165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348457, 57.211815, 52.485294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461163, 57.074928, 52.126743>,  <41.528786, 56.992794, 51.911613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461163, 57.074928, 52.126743>,  <41.348457, 57.211815, 52.485294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461163, 57.074928, 52.126743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896437, 0.426959, 0.118773,
		0.342071, -0.837014, 0.427078,
		0.281760, -0.342220, -0.896380,
		41.545689, 56.972263, 51.857830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081772, 56.890984, 52.675514>,  <41.348457, 57.211815, 52.485294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081772, 56.890984, 52.675514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034496, 57.029320, 52.303185>,  <42.006130, 57.112320, 52.079788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034496, 57.029320, 52.303185>,  <42.081772, 56.890984, 52.675514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034496, 57.029320, 52.303185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872516, 0.483698, 0.068932,
		0.474075, -0.804009, -0.358918,
		-0.118186, 0.345841, -0.930820,
		41.999039, 57.133072, 52.023937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480019, 56.507217, 52.106728>,  <42.081772, 56.890984, 52.675514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480019, 56.507217, 52.106728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428341, 56.896034, 52.028309>,  <42.397335, 57.129326, 51.981258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428341, 56.896034, 52.028309>,  <42.480019, 56.507217, 52.106728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428341, 56.896034, 52.028309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991463, 0.123124, -0.042900,
		-0.017563, -0.199915, -0.979656,
		-0.129195, 0.972046, -0.196046,
		42.389584, 57.187649, 51.969494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756386, 56.647533, 51.478775>,  <42.480019, 56.507217, 52.106728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756386, 56.647533, 51.478775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.755730, 57.001686, 51.664719>,  <42.755337, 57.214180, 51.776283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.755730, 57.001686, 51.664719>,  <42.756386, 56.647533, 51.478775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755730, 57.001686, 51.664719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987580, 0.074470, -0.138346,
		-0.157108, 0.458855, -0.874511,
		-0.001644, 0.885385, 0.464856,
		42.755238, 57.267303, 51.804176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060436, 57.121174, 50.991825>,  <42.756386, 56.647533, 51.478775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.060436, 57.121174, 50.991825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079918, 57.209579, 51.381447>,  <43.091606, 57.262623, 51.615219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079918, 57.209579, 51.381447>,  <43.060436, 57.121174, 50.991825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079918, 57.209579, 51.381447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998724, 0.002226, -0.050444,
		-0.013317, 0.975268, -0.220623,
		0.048705, 0.221014, 0.974054,
		43.094528, 57.275883, 51.673664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626156, 57.505768, 51.102875>,  <43.060436, 57.121174, 50.991825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626156, 57.505768, 51.102875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.582249, 57.344563, 51.466309>,  <43.555904, 57.247841, 51.684368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.582249, 57.344563, 51.466309>,  <43.626156, 57.505768, 51.102875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.582249, 57.344563, 51.466309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993486, -0.016336, 0.112774,
		-0.030607, 0.915049, 0.402181,
		-0.109764, -0.403013, 0.908588,
		43.549320, 57.223660, 51.738884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067371, 57.778065, 51.546902>,  <43.626156, 57.505768, 51.102875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067371, 57.778065, 51.546902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.984062, 57.476883, 51.796600>,  <43.934074, 57.296173, 51.946419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.984062, 57.476883, 51.796600>,  <44.067371, 57.778065, 51.546902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.984062, 57.476883, 51.796600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977686, -0.178153, 0.111317,
		0.027396, 0.633504, 0.773254,
		-0.208277, -0.752950, 0.624249,
		43.921577, 57.250999, 51.983875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525879, 57.839855, 52.207886>,  <44.067371, 57.778065, 51.546902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525879, 57.839855, 52.207886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428104, 57.458824, 52.135395>,  <44.369438, 57.230206, 52.091900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428104, 57.458824, 52.135395>,  <44.525879, 57.839855, 52.207886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428104, 57.458824, 52.135395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902228, -0.291912, 0.317445,
		-0.355293, -0.085912, 0.930798,
		-0.244439, -0.952579, -0.181227,
		44.354774, 57.173050, 52.081028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541515, 57.405235, 52.854923>,  <44.525879, 57.839855, 52.207886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541515, 57.405235, 52.854923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.659325, 57.290939, 52.490150>,  <44.730011, 57.222363, 52.271286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.659325, 57.290939, 52.490150>,  <44.541515, 57.405235, 52.854923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659325, 57.290939, 52.490150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933662, -0.117463, 0.338344,
		-0.203796, -0.951082, 0.232187,
		0.294519, -0.285737, -0.911928,
		44.747681, 57.205219, 52.216572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.743320, 56.714176, 52.931259>,  <44.541515, 57.405235, 52.854923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.743320, 56.714176, 52.931259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.932262, 56.989079, 52.710510>,  <45.045628, 57.154018, 52.578060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.932262, 56.989079, 52.710510>,  <44.743320, 56.714176, 52.931259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.932262, 56.989079, 52.710510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830200, -0.136595, 0.540472,
		0.296060, -0.713456, -0.635081,
		0.472352, 0.687257, -0.551871,
		45.073967, 57.195255, 52.544949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.366215, 56.323532, 52.636543>,  <44.743320, 56.714176, 52.931259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.366215, 56.323532, 52.636543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386356, 56.718204, 52.698402>,  <45.398441, 56.955009, 52.735519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386356, 56.718204, 52.698402>,  <45.366215, 56.323532, 52.636543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.386356, 56.718204, 52.698402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777756, -0.135884, 0.613703,
		0.626546, 0.089378, -0.774242,
		0.050356, 0.986685, 0.154651,
		45.401463, 57.014210, 52.744797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.058708, 56.586803, 52.629333>,  <45.366215, 56.323532, 52.636543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.058708, 56.586803, 52.629333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.847233, 56.824802, 52.871479>,  <45.720348, 56.967602, 53.016766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.847233, 56.824802, 52.871479>,  <46.058708, 56.586803, 52.629333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.847233, 56.824802, 52.871479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603869, -0.237547, 0.760864,
		0.596512, 0.767824, -0.233709,
		-0.528693, 0.594994, 0.605365,
		45.688625, 57.003300, 53.053089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.398190, 57.306145, 52.912521>,  <46.058708, 56.586803, 52.629333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.398190, 57.306145, 52.912521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.177284, 57.137531, 53.200222>,  <46.044743, 57.036366, 53.372841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.177284, 57.137531, 53.200222>,  <46.398190, 57.306145, 52.912521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.177284, 57.137531, 53.200222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784330, 0.029684, 0.619633,
		-0.282545, 0.906328, 0.314226,
		-0.552263, -0.421531, 0.719248,
		46.011604, 57.011070, 53.415997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.629196, 57.868610, 53.274075>,  <46.398190, 57.306145, 52.912521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.629196, 57.868610, 53.274075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.470364, 57.550636, 53.457550>,  <46.375065, 57.359852, 53.567635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.470364, 57.550636, 53.457550>,  <46.629196, 57.868610, 53.274075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.470364, 57.550636, 53.457550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878579, -0.184736, 0.440422,
		-0.265372, 0.577880, 0.771772,
		-0.397085, -0.794939, 0.458690,
		46.351238, 57.312153, 53.595158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.960629, 57.779408, 53.892258>,  <46.629196, 57.868610, 53.274075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.960629, 57.779408, 53.892258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.841904, 57.409599, 53.796623>,  <46.770668, 57.187714, 53.739243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.841904, 57.409599, 53.796623>,  <46.960629, 57.779408, 53.892258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.841904, 57.409599, 53.796623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922954, -0.341990, 0.176632,
		-0.245065, -0.168238, 0.954798,
		-0.296815, -0.924521, -0.239086,
		46.752861, 57.132244, 53.724899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.455162, 57.494080, 54.484131>,  <46.960629, 57.779408, 53.892258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.455162, 57.494080, 54.484131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.557133, 57.211479, 54.748215>,  <47.618313, 57.041920, 54.906666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.557133, 57.211479, 54.748215>,  <47.455162, 57.494080, 54.484131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.557133, 57.211479, 54.748215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252696, -0.707714, -0.659762,
		0.933359, 0.001356, -0.358942,
		0.254923, -0.706498, 0.660209,
		47.633610, 56.999531, 54.946278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.193104, 57.647991, 54.331997>,  <47.455162, 57.494080, 54.484131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.193104, 57.647991, 54.331997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.256344, 57.922115, 54.047646>,  <48.294289, 58.086590, 53.877033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.256344, 57.922115, 54.047646>,  <48.193104, 57.647991, 54.331997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.256344, 57.922115, 54.047646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832546, 0.294579, 0.469139,
		0.530918, -0.666009, -0.523984,
		0.158096, 0.685314, -0.710880,
		48.303772, 58.127708, 53.834381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.793018, 57.541031, 53.920261>,  <48.193104, 57.647991, 54.331997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.793018, 57.541031, 53.920261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.742794, 57.934677, 53.970467>,  <48.712658, 58.170864, 54.000591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.742794, 57.934677, 53.970467>,  <48.793018, 57.541031, 53.920261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.742794, 57.934677, 53.970467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962591, 0.090231, 0.255492,
		0.240108, 0.152901, -0.958629,
		-0.125563, 0.984114, 0.125516,
		48.705124, 58.229912, 54.008121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.261589, 57.958603, 53.504707>,  <48.793018, 57.541031, 53.920261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.261589, 57.958603, 53.504707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.212269, 58.169205, 53.841179>,  <49.182678, 58.295567, 54.043064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.212269, 58.169205, 53.841179>,  <49.261589, 57.958603, 53.504707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.212269, 58.169205, 53.841179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990902, 0.111405, 0.075518,
		-0.053951, 0.842842, -0.535451,
		-0.123302, 0.526504, 0.841183,
		49.175278, 58.327156, 54.093533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.742279, 58.397797, 53.887371>,  <49.261589, 57.958603, 53.504707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.742279, 58.397797, 53.887371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.934418, 58.732452, 53.992668>,  <50.049702, 58.933247, 54.055847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.934418, 58.732452, 53.992668>,  <49.742279, 58.397797, 53.887371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.934418, 58.732452, 53.992668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770249, -0.258838, -0.582855,
		-0.419505, 0.482733, -0.768755,
		0.480346, 0.836643, 0.263240,
		50.078522, 58.983444, 54.071640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.987297, 59.123070, 53.483639>,  <49.742279, 58.397797, 53.887371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.987297, 59.123070, 53.483639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.769436, 59.455795, 53.526424>,  <49.638721, 59.655430, 53.552094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.769436, 59.455795, 53.526424>,  <49.987297, 59.123070, 53.483639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.769436, 59.455795, 53.526424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649656, 0.337803, 0.681055,
		0.530381, 0.440423, -0.724378,
		-0.544649, 0.831815, 0.106960,
		49.606041, 59.705341, 53.558514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.381874, 59.742218, 53.232483>,  <49.987297, 59.123070, 53.483639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.381874, 59.742218, 53.232483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.125996, 59.782246, 53.537319>,  <49.972469, 59.806263, 53.720219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.125996, 59.782246, 53.537319>,  <50.381874, 59.742218, 53.232483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.125996, 59.782246, 53.537319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766321, 0.159828, 0.622259,
		-0.059533, 0.982059, -0.178928,
		-0.639693, 0.100071, 0.762088,
		49.934086, 59.812267, 53.765945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.231762, 60.388546, 53.510723>,  <50.381874, 59.742218, 53.232483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.231762, 60.388546, 53.510723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.238098, 60.105171, 53.792961>,  <50.241901, 59.935146, 53.962303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.238098, 60.105171, 53.792961>,  <50.231762, 60.388546, 53.510723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.238098, 60.105171, 53.792961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686698, 0.520643, 0.507322,
		-0.726770, 0.476492, 0.494733,
		0.015845, -0.708439, 0.705594,
		50.242851, 59.892639, 54.004639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.255901, 60.672546, 54.175152>,  <50.231762, 60.388546, 53.510723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.255901, 60.672546, 54.175152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.441322, 60.318737, 54.196083>,  <50.552574, 60.106453, 54.208641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.441322, 60.318737, 54.196083>,  <50.255901, 60.672546, 54.175152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.441322, 60.318737, 54.196083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635600, 0.373086, 0.675884,
		-0.617361, -0.280043, 0.735148,
		0.463550, -0.884524, 0.052333,
		50.580387, 60.053379, 54.211784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.286701, 60.346611, 54.883312>,  <50.255901, 60.672546, 54.175152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.286701, 60.346611, 54.883312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.594212, 60.188591, 54.682148>,  <50.778717, 60.093781, 54.561451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.594212, 60.188591, 54.682148>,  <50.286701, 60.346611, 54.883312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.594212, 60.188591, 54.682148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598154, 0.165960, 0.784008,
		-0.226257, -0.903546, 0.363885,
		0.768778, -0.395047, -0.502910,
		50.824844, 60.070076, 54.531277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.756577, 60.119968, 55.379784>,  <50.286701, 60.346611, 54.883312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.756577, 60.119968, 55.379784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.965637, 60.123840, 55.038788>,  <51.091072, 60.126163, 54.834190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.965637, 60.123840, 55.038788>,  <50.756577, 60.119968, 55.379784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.965637, 60.123840, 55.038788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852518, -0.014255, 0.522504,
		-0.007091, -0.999851, -0.015708,
		0.522650, 0.009686, -0.852492,
		51.122433, 60.126747, 54.783039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.410538, 60.084644, 55.188480>,  <50.756577, 60.119968, 55.379784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.410538, 60.084644, 55.188480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.376698, 59.709217, 55.054649>,  <51.356392, 59.483963, 54.974350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.376698, 59.709217, 55.054649>,  <51.410538, 60.084644, 55.188480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.376698, 59.709217, 55.054649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936372, -0.189685, 0.295343,
		-0.340662, -0.288299, 0.894893,
		-0.084601, -0.938564, -0.334574,
		51.351318, 59.427647, 54.954277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.520145, 59.655319, 55.674732>,  <51.410538, 60.084644, 55.188480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.520145, 59.655319, 55.674732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.604786, 59.454948, 55.339043>,  <51.655571, 59.334724, 55.137630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.604786, 59.454948, 55.339043>,  <51.520145, 59.655319, 55.674732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.604786, 59.454948, 55.339043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907157, -0.218885, 0.359382,
		-0.363719, -0.837352, 0.408105,
		0.211601, -0.500930, -0.839222,
		51.668266, 59.304668, 55.087276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.772511, 58.933578, 55.841034>,  <51.520145, 59.655319, 55.674732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.772511, 58.933578, 55.841034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.900646, 59.074150, 55.489151>,  <51.977528, 59.158493, 55.278023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.900646, 59.074150, 55.489151>,  <51.772511, 58.933578, 55.841034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.900646, 59.074150, 55.489151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944830, -0.185592, 0.269910,
		-0.068410, -0.917633, -0.391498,
		0.320337, 0.351434, -0.879703,
		51.996746, 59.179581, 55.225239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.213604, 58.417004, 55.593845>,  <51.772511, 58.933578, 55.841034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.213604, 58.417004, 55.593845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.290180, 58.772137, 55.426468>,  <52.336124, 58.985218, 55.326042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.290180, 58.772137, 55.426468>,  <52.213604, 58.417004, 55.593845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.290180, 58.772137, 55.426468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947645, -0.056182, 0.314343,
		0.255576, -0.456717, -0.852109,
		0.191439, 0.887836, -0.418447,
		52.347610, 59.038486, 55.300934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.823105, 58.433887, 55.255360>,  <52.213604, 58.417004, 55.593845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.823105, 58.433887, 55.255360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.770657, 58.821190, 55.340485>,  <52.739189, 59.053570, 55.391560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.770657, 58.821190, 55.340485>,  <52.823105, 58.433887, 55.255360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.770657, 58.821190, 55.340485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980365, 0.094750, 0.172935,
		0.147281, 0.231307, -0.961668,
		-0.131119, 0.968256, 0.212811,
		52.731319, 59.111668, 55.404327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.307816, 58.809731, 54.815548>,  <52.823105, 58.433887, 55.255360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.307816, 58.809731, 54.815548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.213772, 59.026497, 55.138298>,  <53.157345, 59.156555, 55.331947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.213772, 59.026497, 55.138298>,  <53.307816, 58.809731, 54.815548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.213772, 59.026497, 55.138298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971668, 0.151721, 0.181224,
		-0.024213, 0.826626, -0.562231,
		-0.235107, 0.541913, 0.806879,
		53.143238, 59.189072, 55.380363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.617767, 59.409370, 54.695526>,  <53.307816, 58.809731, 54.815548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.617767, 59.409370, 54.695526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.590012, 59.414680, 55.094528>,  <53.573357, 59.417866, 55.333927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.590012, 59.414680, 55.094528>,  <53.617767, 59.409370, 54.695526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.590012, 59.414680, 55.094528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881471, 0.469015, 0.055077,
		-0.467112, 0.883090, -0.044250,
		-0.069392, 0.013278, 0.997501,
		53.569195, 59.418663, 55.393780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.831490, 60.066784, 54.830933>,  <53.617767, 59.409370, 54.695526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.831490, 60.066784, 54.830933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.848282, 59.860474, 55.173210>,  <53.858356, 59.736687, 55.378578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.848282, 59.860474, 55.173210>,  <53.831490, 60.066784, 54.830933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.848282, 59.860474, 55.173210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981903, 0.179602, 0.060086,
		-0.184675, 0.837689, 0.513977,
		0.041977, -0.515772, 0.855697,
		53.860874, 59.705742, 55.429920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.298576, 60.467567, 55.213062>,  <53.831490, 60.066784, 54.830933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.298576, 60.467567, 55.213062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.311478, 60.094154, 55.355881>,  <54.319218, 59.870106, 55.441570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.311478, 60.094154, 55.355881>,  <54.298576, 60.467567, 55.213062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.311478, 60.094154, 55.355881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969182, -0.058077, -0.239400,
		0.244223, 0.353765, 0.902887,
		0.032254, -0.933530, 0.357046,
		54.321156, 59.814095, 55.462994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.718708, 60.339478, 55.816273>,  <54.298576, 60.467567, 55.213062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.718708, 60.339478, 55.816273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.688286, 60.021713, 55.575233>,  <54.670033, 59.831055, 55.430611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.688286, 60.021713, 55.575233>,  <54.718708, 60.339478, 55.816273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.688286, 60.021713, 55.575233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974303, 0.069288, -0.214319,
		0.212011, -0.603410, 0.768731,
		-0.076058, -0.794415, -0.602595,
		54.665470, 59.783390, 55.394455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.232426, 59.746643, 55.966625>,  <54.718708, 60.339478, 55.816273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.232426, 59.746643, 55.966625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.143341, 59.717655, 55.577751>,  <55.089890, 59.700264, 55.344425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.143341, 59.717655, 55.577751>,  <55.232426, 59.746643, 55.966625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.143341, 59.717655, 55.577751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943015, 0.236883, -0.233685,
		0.247230, -0.968831, 0.015585,
		-0.222709, -0.072471, -0.972188,
		55.076527, 59.695915, 55.286095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.790482, 59.340832, 55.641014>,  <55.232426, 59.746643, 55.966625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.790482, 59.340832, 55.641014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.620888, 59.545990, 55.342438>,  <55.519131, 59.669086, 55.163292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.620888, 59.545990, 55.342438>,  <55.790482, 59.340832, 55.641014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.620888, 59.545990, 55.342438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903493, 0.296659, -0.309344,
		0.062776, -0.805561, -0.589178,
		-0.423981, 0.512898, -0.746442,
		55.493694, 59.699860, 55.118504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.037708, 59.134075, 54.993290>,  <55.790482, 59.340832, 55.641014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.037708, 59.134075, 54.993290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.913597, 59.513794, 54.973030>,  <55.839130, 59.741627, 54.960873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.913597, 59.513794, 54.973030>,  <56.037708, 59.134075, 54.993290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.913597, 59.513794, 54.973030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850753, 0.253502, -0.460387,
		-0.424204, -0.185936, -0.886273,
		-0.310274, 0.949297, -0.050649,
		55.820515, 59.798584, 54.957836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.167149, 59.392853, 54.259571>,  <56.037708, 59.134075, 54.993290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.167149, 59.392853, 54.259571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.174843, 59.691177, 54.525925>,  <56.179459, 59.870171, 54.685738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.174843, 59.691177, 54.525925>,  <56.167149, 59.392853, 54.259571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.174843, 59.691177, 54.525925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916652, 0.252776, -0.309602,
		-0.399223, 0.616337, -0.678785,
		0.019238, 0.745810, 0.665881,
		56.180614, 59.914921, 54.725689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.251724, 60.126606, 54.018471>,  <56.167149, 59.392853, 54.259571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.251724, 60.126606, 54.018471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.426254, 60.079681, 54.375313>,  <56.530972, 60.051529, 54.589420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.426254, 60.079681, 54.375313>,  <56.251724, 60.126606, 54.018471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.426254, 60.079681, 54.375313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810476, 0.481890, -0.333031,
		-0.390831, 0.868343, 0.305337,
		0.436325, -0.117309, 0.892109,
		56.557152, 60.044487, 54.642944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.497082, 60.780334, 54.268700>,  <56.251724, 60.126606, 54.018471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.497082, 60.780334, 54.268700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.697144, 60.456161, 54.390717>,  <56.817181, 60.261658, 54.463928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.697144, 60.456161, 54.390717>,  <56.497082, 60.780334, 54.268700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.697144, 60.456161, 54.390717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823887, 0.336914, -0.455741,
		0.266572, 0.479262, 0.836210,
		0.500150, -0.810430, 0.305046,
		56.847187, 60.213032, 54.482231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.174702, 60.767395, 53.847118>,  <56.497082, 60.780334, 54.268700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.174702, 60.767395, 53.847118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.200447, 60.446735, 54.084846>,  <57.215897, 60.254337, 54.227482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.200447, 60.446735, 54.084846>,  <57.174702, 60.767395, 53.847118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.200447, 60.446735, 54.084846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931064, -0.166084, -0.324863,
		0.359133, 0.574258, 0.735698,
		0.064367, -0.801651, 0.594317,
		57.219757, 60.206242, 54.263142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.732761, 60.958042, 54.179043>,  <57.174702, 60.767395, 53.847118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.732761, 60.958042, 54.179043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.900635, 61.179863, 54.466469>,  <58.001358, 61.312954, 54.638924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.900635, 61.179863, 54.466469>,  <57.732761, 60.958042, 54.179043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.900635, 61.179863, 54.466469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474543, -0.540794, 0.694515,
		0.773742, -0.632466, 0.036199,
		0.419681, 0.554553, 0.718567,
		58.026539, 61.346230, 54.682037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.131145, 60.601849, 54.515041>,  <57.732761, 60.958042, 54.179043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.131145, 60.601849, 54.515041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.022751, 60.890114, 54.770294>,  <57.957714, 61.063072, 54.923447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.022751, 60.890114, 54.770294>,  <58.131145, 60.601849, 54.515041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.022751, 60.890114, 54.770294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338308, -0.691950, 0.637772,
		0.901173, -0.043057, 0.431315,
		-0.270988, 0.720660, 0.638133,
		57.941456, 61.106312, 54.961735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.431042, 60.556286, 55.174503>,  <58.131145, 60.601849, 54.515041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.431042, 60.556286, 55.174503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.082436, 60.735909, 55.253296>,  <57.873272, 60.843681, 55.300571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.082436, 60.735909, 55.253296>,  <58.431042, 60.556286, 55.174503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.082436, 60.735909, 55.253296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204651, -0.698138, 0.686091,
		0.445615, 0.557630, 0.700341,
		-0.871519, 0.449058, 0.196981,
		57.820980, 60.870625, 55.312389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.467258, 60.727577, 55.978302>,  <58.431042, 60.556286, 55.174503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.467258, 60.727577, 55.978302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.117325, 60.684299, 55.789429>,  <57.907364, 60.658333, 55.676105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.117325, 60.684299, 55.789429>,  <58.467258, 60.727577, 55.978302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.117325, 60.684299, 55.789429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252877, -0.729392, 0.635642,
		-0.413183, 0.675486, 0.610736,
		-0.874833, -0.108196, -0.472187,
		57.854874, 60.651840, 55.647774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.098442, 61.198078, 55.860043>,  <58.467258, 60.727577, 55.978302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.098442, 61.198078, 55.860043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.398727, 60.937386, 55.903259>,  <59.578899, 60.780972, 55.929192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.398727, 60.937386, 55.903259>,  <59.098442, 61.198078, 55.860043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.398727, 60.937386, 55.903259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424250, 0.350250, -0.835066,
		0.506395, 0.672736, 0.539435,
		0.750717, -0.651729, 0.108044,
		59.623943, 60.741867, 55.935673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.726219, 61.554810, 55.820602>,  <59.098442, 61.198078, 55.860043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.726219, 61.554810, 55.820602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.746216, 61.172962, 55.703156>,  <59.758213, 60.943855, 55.632687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.746216, 61.172962, 55.703156>,  <59.726219, 61.554810, 55.820602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.746216, 61.172962, 55.703156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226790, 0.297158, -0.927504,
		0.972660, -0.020223, 0.231352,
		0.049991, -0.954614, -0.293620,
		59.761211, 60.886578, 55.615070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.141914, 62.118324, 55.448044>,  <59.726219, 61.554810, 55.820602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.141914, 62.118324, 55.448044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.439247, 61.886505, 55.314430>,  <60.617649, 61.747414, 55.234261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.439247, 61.886505, 55.314430>,  <60.141914, 62.118324, 55.448044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.439247, 61.886505, 55.314430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668287, 0.665094, 0.333230,
		0.029044, -0.470934, 0.881690,
		0.743336, -0.579544, -0.334036,
		60.662247, 61.712643, 55.214218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.829674, 62.163067, 55.928802>,  <60.141914, 62.118324, 55.448044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.829674, 62.163067, 55.928802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.952110, 62.050774, 55.564934>,  <61.025574, 61.983398, 55.346615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.952110, 62.050774, 55.564934>,  <60.829674, 62.163067, 55.928802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.952110, 62.050774, 55.564934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857872, 0.495621, 0.135705,
		0.412753, -0.821916, 0.392542,
		0.306090, -0.280738, -0.909668,
		61.043938, 61.966553, 55.292034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.456593, 61.768318, 56.073311>,  <60.829674, 62.163067, 55.928802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.456593, 61.768318, 56.073311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.452026, 61.897022, 55.694611>,  <61.449287, 61.974247, 55.467392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.452026, 61.897022, 55.694611>,  <61.456593, 61.768318, 56.073311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.452026, 61.897022, 55.694611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932352, 0.345599, 0.106215,
		0.361373, -0.881493, -0.303941,
		-0.011414, 0.321763, -0.946751,
		61.448601, 61.993549, 55.410583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.653118, 61.237743, 55.437588>,  <61.456593, 61.768318, 56.073311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.653118, 61.237743, 55.437588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.909912, 61.194504, 55.133965>,  <62.063988, 61.168560, 54.951790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.909912, 61.194504, 55.133965>,  <61.653118, 61.237743, 55.437588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.909912, 61.194504, 55.133965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675084, 0.549028, 0.492777,
		0.363476, -0.828784, 0.425443,
		0.641986, -0.108097, -0.759058,
		62.102509, 61.162075, 54.906246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.370892, 60.948204, 55.646450>,  <61.653118, 61.237743, 55.437588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.370892, 60.948204, 55.646450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.378952, 61.185158, 55.324287>,  <62.383789, 61.327332, 55.130989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.378952, 61.185158, 55.324287>,  <62.370892, 60.948204, 55.646450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.378952, 61.185158, 55.324287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840168, 0.426633, 0.334817,
		0.541952, -0.683421, -0.489105,
		0.020153, 0.592385, -0.805403,
		62.384998, 61.362873, 55.082668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.089607, 60.905392, 55.216984>,  <62.370892, 60.948204, 55.646450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.089607, 60.905392, 55.216984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.908524, 61.262016, 55.222198>,  <62.799873, 61.475990, 55.225327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.908524, 61.262016, 55.222198>,  <63.089607, 60.905392, 55.216984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.908524, 61.262016, 55.222198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807263, 0.403612, 0.430609,
		0.378655, 0.205462, -0.902445,
		-0.452711, 0.891562, 0.013032,
		62.772709, 61.529484, 55.226109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.392178, 61.346077, 54.691532>,  <63.089607, 60.905392, 55.216984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.392178, 61.346077, 54.691532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.249840, 61.513268, 55.025879>,  <63.164436, 61.613583, 55.226486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.249840, 61.513268, 55.025879>,  <63.392178, 61.346077, 54.691532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.249840, 61.513268, 55.025879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924032, 0.291151, 0.247783,
		-0.139797, 0.860541, -0.489823,
		-0.355840, 0.417973, 0.835869,
		63.143089, 61.638660, 55.276638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.391834, 62.182602, 54.714581>,  <63.392178, 61.346077, 54.691532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.391834, 62.182602, 54.714581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.443230, 61.979652, 55.055420>,  <63.474068, 61.857883, 55.259922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.443230, 61.979652, 55.055420>,  <63.391834, 62.182602, 54.714581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.443230, 61.979652, 55.055420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874356, 0.463403, 0.144082,
		-0.467967, 0.726521, 0.503165,
		0.128489, -0.507370, 0.852095,
		63.481777, 61.827442, 55.311047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.411701, 62.559902, 55.409203>,  <63.391834, 62.182602, 54.714581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.411701, 62.559902, 55.409203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.662338, 62.248413, 55.396706>,  <63.812721, 62.061520, 55.389206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.662338, 62.248413, 55.396706>,  <63.411701, 62.559902, 55.409203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.662338, 62.248413, 55.396706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778890, 0.627093, -0.009237,
		0.026785, -0.018547, 0.999469,
		0.626588, -0.778724, -0.031243,
		63.850315, 62.014797, 55.387333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.770748, 62.605179, 56.011650>,  <63.411701, 62.559902, 55.409203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.770748, 62.605179, 56.011650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.953087, 62.422497, 55.706070>,  <64.062492, 62.312885, 55.522720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.953087, 62.422497, 55.706070>,  <63.770748, 62.605179, 56.011650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.953087, 62.422497, 55.706070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755793, 0.651941, 0.061231,
		0.470087, -0.605302, 0.642362,
		0.455845, -0.456708, -0.763952,
		64.089844, 62.285484, 55.476883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.448456, 62.514683, 56.213257>,  <63.770748, 62.605179, 56.011650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.448456, 62.514683, 56.213257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.457420, 62.504677, 55.813484>,  <64.462799, 62.498672, 55.573620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.457420, 62.504677, 55.813484>,  <64.448456, 62.514683, 56.213257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.457420, 62.504677, 55.813484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867672, 0.497088, 0.007012,
		0.496633, -0.867339, 0.032846,
		0.022409, -0.025017, -0.999436,
		64.464142, 62.497169, 55.513653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.149536, 62.198528, 55.932892>,  <64.448456, 62.514683, 56.213257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.149536, 62.198528, 55.932892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.983948, 62.446747, 55.666496>,  <64.884590, 62.595680, 55.506660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.983948, 62.446747, 55.666496>,  <65.149536, 62.198528, 55.932892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.983948, 62.446747, 55.666496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812904, 0.581265, 0.036304,
		0.409645, -0.526356, -0.745077,
		-0.413979, 0.620548, -0.665989,
		64.859756, 62.632912, 55.466698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.657585, 62.419651, 55.474476>,  <65.149536, 62.198528, 55.932892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.657585, 62.419651, 55.474476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.378540, 62.705471, 55.453453>,  <65.211113, 62.876965, 55.440842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.378540, 62.705471, 55.453453>,  <65.657585, 62.419651, 55.474476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.378540, 62.705471, 55.453453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715948, 0.698039, -0.012691,
		0.027617, -0.046480, -0.998537,
		-0.697608, 0.714550, -0.052555,
		65.169258, 62.919834, 55.437687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.418564, 62.085873, 54.773067>,  <65.657585, 62.419651, 55.474476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.418564, 62.085873, 54.773067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.658417, 62.353199, 54.596977>,  <65.802330, 62.513596, 54.491325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.658417, 62.353199, 54.596977>,  <65.418564, 62.085873, 54.773067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.658417, 62.353199, 54.596977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792797, -0.571115, 0.212839,
		-0.109173, -0.476630, -0.872299,
		0.599629, 0.668319, -0.440221,
		65.838303, 62.553696, 54.464912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.032532, 61.705029, 54.411804>,  <65.418564, 62.085873, 54.773067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.032532, 61.705029, 54.411804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.107147, 62.066788, 54.565308>,  <66.151917, 62.283844, 54.657410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.107147, 62.066788, 54.565308>,  <66.032532, 61.705029, 54.411804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.107147, 62.066788, 54.565308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775111, -0.375486, 0.508146,
		0.603661, 0.202666, -0.771051,
		0.186535, 0.904399, 0.383755,
		66.163109, 62.338108, 54.680435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.541306, 61.429699, 53.763863>,  <66.032532, 61.705029, 54.411804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.541306, 61.429699, 53.763863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.931992, 61.504311, 53.721466>,  <67.166405, 61.549076, 53.696026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.931992, 61.504311, 53.721466>,  <66.541306, 61.429699, 53.763863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.931992, 61.504311, 53.721466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165260, -0.339078, 0.926129,
		0.136809, -0.922081, -0.362009,
		0.976715, 0.186528, -0.105994,
		67.225006, 61.560268, 53.689667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.069710, 60.848862, 53.928406>,  <66.541306, 61.429699, 53.763863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.069710, 60.848862, 53.928406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.183022, 61.213112, 54.048752>,  <67.251007, 61.431660, 54.120960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.183022, 61.213112, 54.048752>,  <67.069710, 60.848862, 53.928406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.183022, 61.213112, 54.048752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001360, -0.314093, 0.949391,
		0.959034, -0.268542, -0.090217,
		0.283288, 0.910621, 0.300861,
		67.268005, 61.486298, 54.139011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.247948, 60.177814, 54.189980>,  <67.069710, 60.848862, 53.928406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.247948, 60.177814, 54.189980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.484222, 60.500031, 54.208778>,  <67.625984, 60.693359, 54.220058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.484222, 60.500031, 54.208778>,  <67.247948, 60.177814, 54.189980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.484222, 60.500031, 54.208778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669981, -0.522070, 0.527797,
		0.449696, -0.280271, -0.848070,
		0.590678, 0.805538, 0.046997,
		67.661423, 60.741692, 54.222878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.896568, 59.885254, 53.998344>,  <67.247948, 60.177814, 54.189980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.896568, 59.885254, 53.998344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.932060, 60.207146, 54.233131>,  <67.953354, 60.400280, 54.374004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.932060, 60.207146, 54.233131>,  <67.896568, 59.885254, 53.998344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.932060, 60.207146, 54.233131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555397, -0.529151, 0.641509,
		0.826839, 0.269084, -0.493894,
		0.088725, 0.804732, 0.586971,
		67.958679, 60.448566, 54.409222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.602608, 59.971851, 54.121132>,  <67.896568, 59.885254, 53.998344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.602608, 59.971851, 54.121132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.388016, 60.109779, 54.429234>,  <68.259262, 60.192535, 54.614094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.388016, 60.109779, 54.429234>,  <68.602608, 59.971851, 54.121132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.388016, 60.109779, 54.429234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699696, -0.328541, 0.634418,
		0.471817, 0.879297, -0.065009,
		-0.536484, 0.344816, 0.770252,
		68.227074, 60.213223, 54.660309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.873070, 60.507893, 54.436073>,  <68.602608, 59.971851, 54.121132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.873070, 60.507893, 54.436073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.650993, 60.304829, 54.699600>,  <68.517746, 60.182991, 54.857716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.650993, 60.304829, 54.699600>,  <68.873070, 60.507893, 54.436073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.650993, 60.304829, 54.699600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821035, -0.207968, 0.531649,
		-0.132885, 0.836080, 0.532271,
		-0.555196, -0.507661, 0.658815,
		68.484436, 60.152531, 54.897243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.143463, 60.726868, 55.130379>,  <68.873070, 60.507893, 54.436073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.143463, 60.726868, 55.130379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.971298, 60.365814, 55.131088>,  <68.867996, 60.149181, 55.131516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.971298, 60.365814, 55.131088>,  <69.143463, 60.726868, 55.130379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.971298, 60.365814, 55.131088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835590, -0.397699, 0.378979,
		-0.341372, 0.164601, 0.925404,
		-0.430413, -0.902631, 0.001775,
		68.842171, 60.095024, 55.131622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.216797, 60.340351, 55.834122>,  <69.143463, 60.726868, 55.130379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.216797, 60.340351, 55.834122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.198982, 60.075111, 55.535240>,  <69.188293, 59.915966, 55.355911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.198982, 60.075111, 55.535240>,  <69.216797, 60.340351, 55.834122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.198982, 60.075111, 55.535240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701441, -0.553325, 0.449233,
		-0.711334, -0.504108, 0.489774,
		-0.044542, -0.663103, -0.747202,
		69.185623, 59.876179, 55.311081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.283585, 59.542412, 56.060841>,  <69.216797, 60.340351, 55.834122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.283585, 59.542412, 56.060841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.414085, 59.571655, 55.683861>,  <69.492386, 59.589203, 55.457672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.414085, 59.571655, 55.683861>,  <69.283585, 59.542412, 56.060841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.414085, 59.571655, 55.683861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765131, -0.605894, 0.217872,
		-0.555095, -0.792179, -0.253616,
		0.326258, 0.073110, -0.942450,
		69.511963, 59.593590, 55.401127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.200356, 58.884480, 55.823982>,  <69.283585, 59.542412, 56.060841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.200356, 58.884480, 55.823982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.499924, 59.086884, 55.652832>,  <69.679665, 59.208324, 55.550140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.499924, 59.086884, 55.652832>,  <69.200356, 58.884480, 55.823982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.499924, 59.086884, 55.652832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649875, -0.687081, 0.324934,
		-0.129568, -0.521417, -0.843408,
		0.748915, 0.506008, -0.427880,
		69.724602, 59.238686, 55.524467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.809296, 58.516884, 56.346287>,  <69.200356, 58.884480, 55.823982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.809296, 58.516884, 56.346287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.926758, 58.889469, 56.432213>,  <68.997231, 59.113022, 56.483768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.926758, 58.889469, 56.432213>,  <68.809296, 58.516884, 56.346287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.926758, 58.889469, 56.432213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513161, -0.343203, 0.786688,
		0.806497, -0.120774, -0.578772,
		0.293648, 0.931464, 0.214815,
		69.014854, 59.168907, 56.496658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.513863, 58.324493, 56.558895>,  <68.809296, 58.516884, 56.346287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.513863, 58.324493, 56.558895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.823021, 58.550480, 56.674446>,  <70.008514, 58.686073, 56.743778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.823021, 58.550480, 56.674446>,  <69.513863, 58.324493, 56.558895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.823021, 58.550480, 56.674446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347987, -0.003308, 0.937494,
		0.530607, -0.825108, 0.194043,
		0.772892, 0.564966, 0.288882,
		70.054886, 58.719971, 56.761112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.085136, 57.902504, 56.715847>,  <69.513863, 58.324493, 56.558895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.085136, 57.902504, 56.715847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.253632, 58.187515, 56.940300>,  <70.354729, 58.358521, 57.074970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.253632, 58.187515, 56.940300>,  <70.085136, 57.902504, 56.715847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.253632, 58.187515, 56.940300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164627, -0.548354, 0.819881,
		0.891888, -0.437736, -0.113682,
		0.421229, 0.712527, 0.561134,
		70.379997, 58.401272, 57.108639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.725708, 57.573746, 57.061436>,  <70.085136, 57.902504, 56.715847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.725708, 57.573746, 57.061436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.550896, 57.882713, 57.245773>,  <70.446007, 58.068096, 57.356377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.550896, 57.882713, 57.245773>,  <70.725708, 57.573746, 57.061436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.550896, 57.882713, 57.245773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314090, -0.611162, 0.726518,
		0.842827, 0.172760, 0.509703,
		-0.437025, 0.772422, 0.460841,
		70.419785, 58.114441, 57.384026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.013641, 57.844521, 57.765141>,  <70.725708, 57.573746, 57.061436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.013641, 57.844521, 57.765141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.616386, 57.884144, 57.740288>,  <70.378036, 57.907917, 57.725376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.616386, 57.884144, 57.740288>,  <71.013641, 57.844521, 57.765141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.616386, 57.884144, 57.740288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116426, -0.788507, 0.603906,
		0.010830, 0.606997, 0.794630,
		-0.993140, 0.099056, -0.062131,
		70.318443, 57.913860, 57.721649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.690025, 57.890293, 58.416569>,  <71.013641, 57.844521, 57.765141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.690025, 57.890293, 58.416569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.375847, 57.779465, 58.195190>,  <70.187340, 57.712967, 58.062363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.375847, 57.779465, 58.195190>,  <70.690025, 57.890293, 58.416569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.375847, 57.779465, 58.195190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200647, -0.731923, 0.651175,
		-0.585499, 0.622513, 0.519296,
		-0.785450, -0.277067, -0.553445,
		70.140213, 57.696346, 58.029156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.636337, 57.699478, 59.230297>,  <70.690025, 57.890293, 58.416569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.636337, 57.699478, 59.230297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.960953, 57.713844, 58.997025>,  <71.155724, 57.722462, 58.857059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.960953, 57.713844, 58.997025>,  <70.636337, 57.699478, 59.230297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.960953, 57.713844, 58.997025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510814, -0.528160, 0.678319,
		-0.283653, -0.848385, -0.446971,
		0.811548, 0.035912, -0.583181,
		71.204414, 57.724617, 58.822071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.943321, 57.071854, 59.113457>,  <70.636337, 57.699478, 59.230297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.943321, 57.071854, 59.113457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.241829, 57.338100, 59.111320>,  <71.420937, 57.497849, 59.110039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.241829, 57.338100, 59.111320>,  <70.943321, 57.071854, 59.113457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.241829, 57.338100, 59.111320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498697, -0.553779, 0.666806,
		0.440882, -0.500282, -0.745212,
		0.746274, 0.665618, -0.005338,
		71.465714, 57.537785, 59.109718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.383270, 56.955776, 59.655609>,  <70.943321, 57.071854, 59.113457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.383270, 56.955776, 59.655609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.593002, 57.282608, 59.559731>,  <71.718842, 57.478706, 59.502205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.593002, 57.282608, 59.559731>,  <71.383270, 56.955776, 59.655609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.593002, 57.282608, 59.559731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744297, -0.303038, 0.595138,
		0.413638, -0.490457, -0.767043,
		0.524333, 0.817080, -0.239698,
		71.750305, 57.527733, 59.487820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.152115, 56.770836, 59.622437>,  <71.383270, 56.955776, 59.655609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.152115, 56.770836, 59.622437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.108223, 57.154842, 59.725449>,  <72.081886, 57.385246, 59.787254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.108223, 57.154842, 59.725449>,  <72.152115, 56.770836, 59.622437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.108223, 57.154842, 59.725449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807883, -0.064792, 0.585770,
		0.579037, 0.272329, -0.768475,
		-0.109731, 0.960020, 0.257528,
		72.075302, 57.442848, 59.802708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.702492, 57.282650, 59.475204>,  <72.152115, 56.770836, 59.622437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.702492, 57.282650, 59.475204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.505913, 57.444870, 59.783493>,  <72.387962, 57.542202, 59.968464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.505913, 57.444870, 59.783493>,  <72.702492, 57.282650, 59.475204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.505913, 57.444870, 59.783493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862361, 0.102944, 0.495718,
		0.121698, 0.908257, -0.400323,
		-0.491450, 0.405551, 0.770717,
		72.358475, 57.566536, 60.014709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
