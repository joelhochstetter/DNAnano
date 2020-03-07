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
	<2.355649, 0.939932, 0.598408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.440681, 0.889923, 0.986053>,  <2.491701, 0.859918, 1.218640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.440681, 0.889923, 0.986053>,  <2.355649, 0.939932, 0.598408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.440681, 0.889923, 0.986053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916486, -0.369502, 0.153369,
		0.338915, -0.920781, -0.193129,
		0.212581, -0.125021, 0.969113,
		2.504456, 0.852417, 1.276787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.180073, 0.199234, 0.850984>,  <2.355649, 0.939932, 0.598408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.180073, 0.199234, 0.850984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.166157, 0.419724, 1.184437>,  <2.157807, 0.552017, 1.384508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.166157, 0.419724, 1.184437>,  <2.180073, 0.199234, 0.850984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.166157, 0.419724, 1.184437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923711, -0.336158, 0.183728,
		0.381507, -0.763642, 0.520867,
		-0.034791, 0.551224, 0.833632,
		2.155720, 0.585091, 1.434526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.966123, -0.232733, 1.417219>,  <2.180073, 0.199234, 0.850984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.966123, -0.232733, 1.417219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.863602, 0.153839, 1.424404>,  <1.802089, 0.385782, 1.428715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.863602, 0.153839, 1.424404>,  <1.966123, -0.232733, 1.417219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.863602, 0.153839, 1.424404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963824, -0.254116, -0.080423,
		-0.073158, -0.037926, 0.996599,
		-0.256302, 0.966430, 0.017964,
		1.786711, 0.443768, 1.429793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.485303, 0.009027, 2.044773>,  <1.966123, -0.232733, 1.417219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.485303, 0.009027, 2.044773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.444214, 0.208496, 1.700500>,  <1.419561, 0.328178, 1.493937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.444214, 0.208496, 1.700500>,  <1.485303, 0.009027, 2.044773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.444214, 0.208496, 1.700500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880659, -0.447885, -0.154395,
		-0.462480, 0.742109, 0.485167,
		-0.102722, 0.498672, -0.860683,
		1.413397, 0.358098, 1.442296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.810474, -0.062300, 1.912015>,  <1.485303, 0.009027, 2.044773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.810474, -0.062300, 1.912015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.924473, 0.078232, 1.555286>,  <0.992872, 0.162551, 1.341249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.924473, 0.078232, 1.555286>,  <0.810474, -0.062300, 1.912015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.924473, 0.078232, 1.555286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853898, -0.329638, -0.402738,
		-0.435472, 0.876303, 0.206053,
		0.284997, 0.351329, -0.891821,
		1.009972, 0.183631, 1.287740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.281814, 0.320253, 1.654214>,  <0.810474, -0.062300, 1.912015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.281814, 0.320253, 1.654214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.497902, 0.213593, 1.334949>,  <0.627554, 0.149596, 1.143391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.497902, 0.213593, 1.334949>,  <0.281814, 0.320253, 1.654214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.497902, 0.213593, 1.334949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840987, -0.137161, -0.523382,
		0.030084, 0.953983, -0.298348,
		0.540219, -0.266652, -0.798161,
		0.659968, 0.133597, 1.095501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.208316, 0.543431, 1.009055>,  <0.281814, 0.320253, 1.654214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.208316, 0.543431, 1.009055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.069347, 0.312378, 0.837250>,  <0.235946, 0.173746, 0.734166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.069347, 0.312378, 0.837250>,  <-0.208316, 0.543431, 1.009055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.069347, 0.312378, 0.837250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687256, -0.354393, -0.634102,
		0.214062, 0.735354, -0.642987,
		0.694159, -0.577634, -0.429514,
		0.277595, 0.139088, 0.708395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.169117, 0.652171, 0.287152>,  <-0.208316, 0.543431, 1.009055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.169117, 0.652171, 0.287152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.031025, 0.281158, 0.344425>,  <0.051831, 0.058551, 0.378789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.031025, 0.281158, 0.344425>,  <-0.169117, 0.652171, 0.287152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.031025, 0.281158, 0.344425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673233, -0.351043, -0.650789,
		0.653891, 0.128277, -0.745635,
		0.345231, -0.927531, 0.143183,
		0.072544, 0.002899, 0.387380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-1.163148, 4.625902, -0.701094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.010250, 4.263901, -0.626411>,  <-0.918512, 4.046700, -0.581602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.010250, 4.263901, -0.626411>,  <-1.163148, 4.625902, -0.701094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.010250, 4.263901, -0.626411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773077, 0.423876, 0.471891,
		-0.506203, -0.036039, 0.861661,
		0.382244, -0.905003, 0.186706,
		-0.895577, 3.992400, -0.570400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.091073, 4.584952, -0.002694>,  <-1.163148, 4.625902, -0.701094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.091073, 4.584952, -0.002694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.827229, 4.386490, -0.228523>,  <-0.668922, 4.267413, -0.364021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.827229, 4.386490, -0.228523>,  <-1.091073, 4.584952, -0.002694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.827229, 4.386490, -0.228523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744849, 0.331014, 0.579336,
		-0.100559, -0.802658, 0.587901,
		0.659612, -0.496155, -0.564572,
		-0.629345, 4.237643, -0.397895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.744534, 4.057040, 0.451647>,  <-1.091073, 4.584952, -0.002694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.744534, 4.057040, 0.451647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.499519, 4.161591, 0.153255>,  <-0.352511, 4.224321, -0.025779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.499519, 4.161591, 0.153255>,  <-0.744534, 4.057040, 0.451647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.499519, 4.161591, 0.153255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630333, 0.407932, 0.660509,
		0.476949, -0.874799, 0.085120,
		0.612536, 0.261375, -0.745978,
		-0.315759, 4.240003, -0.070538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.112431, 3.822064, 0.662407>,  <-0.744534, 4.057040, 0.451647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.112431, 3.822064, 0.662407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.081478, 4.138336, 0.419479>,  <-0.062907, 4.328100, 0.273723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.081478, 4.138336, 0.419479>,  <-0.112431, 3.822064, 0.662407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.081478, 4.138336, 0.419479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585480, 0.457011, 0.669592,
		0.806985, -0.407387, -0.427564,
		0.077382, 0.790681, -0.607318,
		-0.058264, 4.375541, 0.237284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.590372, 3.806179, 0.628755>,  <-0.112431, 3.822064, 0.662407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.590372, 3.806179, 0.628755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.451244, 4.168228, 0.530960>,  <0.367768, 4.385458, 0.472283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.451244, 4.168228, 0.530960>,  <0.590372, 3.806179, 0.628755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.451244, 4.168228, 0.530960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717553, 0.424827, 0.551941,
		0.603440, 0.016543, -0.797237,
		-0.347819, 0.905123, -0.244487,
		0.346899, 4.439765, 0.457614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.086701, 4.173144, 0.369439>,  <0.590372, 3.806179, 0.628755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.086701, 4.173144, 0.369439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.834496, 4.472427, 0.452034>,  <0.683172, 4.651997, 0.501591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.834496, 4.472427, 0.452034>,  <1.086701, 4.173144, 0.369439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.834496, 4.472427, 0.452034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734671, 0.489459, 0.469774,
		0.250421, 0.447900, -0.858298,
		-0.630514, 0.748208, 0.206488,
		0.645341, 4.696890, 0.513981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.390421, 4.857745, 0.096225>,  <1.086701, 4.173144, 0.369439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.390421, 4.857745, 0.096225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.153893, 4.928864, 0.410862>,  <1.011975, 4.971535, 0.599644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.153893, 4.928864, 0.410862>,  <1.390421, 4.857745, 0.096225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.153893, 4.928864, 0.410862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755420, 0.463538, 0.463112,
		-0.282277, 0.868056, -0.408411,
		-0.591321, 0.177796, 0.786593,
		0.976496, 4.982203, 0.646840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.414577, 5.568978, 0.132615>,  <1.390421, 4.857745, 0.096225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.414577, 5.568978, 0.132615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.308990, 5.412949, 0.485470>,  <1.245638, 5.319331, 0.697183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.308990, 5.412949, 0.485470>,  <1.414577, 5.568978, 0.132615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.308990, 5.412949, 0.485470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772484, 0.462160, 0.435518,
		-0.577572, 0.796399, 0.179331,
		-0.263967, -0.390073, 0.882136,
		1.229800, 5.295927, 0.750111>
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
