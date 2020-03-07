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
	<-0.986024, 1.845388, -0.601553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.865349, 2.220291, -0.671448>,  <-0.792943, 2.445233, -0.713384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.865349, 2.220291, -0.671448>,  <-0.986024, 1.845388, -0.601553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.865349, 2.220291, -0.671448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681621, -0.083889, 0.726881,
		0.666616, -0.338395, -0.664163,
		0.301689, 0.937257, -0.174736,
		-0.774842, 2.501468, -0.723869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.233860, 1.962689, -0.709651>,  <-0.986024, 1.845388, -0.601553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.233860, 1.962689, -0.709651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.442566, 2.247169, -0.521202>,  <-0.567789, 2.417858, -0.408133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.442566, 2.247169, -0.521202>,  <-0.233860, 1.962689, -0.709651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.442566, 2.247169, -0.521202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561617, -0.129332, 0.817226,
		0.642143, 0.690989, -0.331942,
		-0.521764, 0.711201, 0.471122,
		-0.599095, 2.460530, -0.379866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.159771, 2.665043, -0.639017>,  <-0.233860, 1.962689, -0.709651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.159771, 2.665043, -0.639017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.067570, 2.601997, -0.315998>,  <-0.203974, 2.564170, -0.122187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.067570, 2.601997, -0.315998>,  <0.159771, 2.665043, -0.639017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.067570, 2.601997, -0.315998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821375, -0.166118, 0.545663,
		0.048144, 0.973428, 0.223873,
		-0.568353, -0.157613, 0.807548,
		-0.238076, 2.554713, -0.073734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.110358, 3.181248, -0.081335>,  <0.159771, 2.665043, -0.639017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.110358, 3.181248, -0.081335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.090553, 2.816078, 0.080711>,  <0.078670, 2.596977, 0.177939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.090553, 2.816078, 0.080711>,  <0.110358, 3.181248, -0.081335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.090553, 2.816078, 0.080711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834471, 0.185072, 0.519044,
		-0.548823, 0.363757, 0.752645,
		-0.049513, -0.912924, 0.405116,
		0.075699, 2.542201, 0.202246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.080638, 3.142466, 0.587665>,  <0.110358, 3.181248, -0.081335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.080638, 3.142466, 0.587665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.261154, 2.807541, 0.464218>,  <0.369464, 2.606586, 0.390150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.261154, 2.807541, 0.464218>,  <0.080638, 3.142466, 0.587665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.261154, 2.807541, 0.464218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730924, 0.148429, 0.666123,
		-0.511946, -0.526190, 0.678996,
		0.451290, -0.837313, -0.308617,
		0.396541, 2.556347, 0.371633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.307113, 2.858867, 1.083755>,  <0.080638, 3.142466, 0.587665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.307113, 2.858867, 1.083755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.543522, 2.660187, 0.829517>,  <0.685367, 2.540979, 0.676975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.543522, 2.660187, 0.829517>,  <0.307113, 2.858867, 1.083755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.543522, 2.660187, 0.829517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785750, 0.176271, 0.592896,
		-0.182455, -0.849834, 0.494463,
		0.591023, -0.496700, -0.635595,
		0.720829, 2.511177, 0.638839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.775565, 2.400063, 1.432967>,  <0.307113, 2.858867, 1.083755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.775565, 2.400063, 1.432967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.961327, 2.474754, 1.086681>,  <1.072784, 2.519569, 0.878910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.961327, 2.474754, 1.086681>,  <0.775565, 2.400063, 1.432967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.961327, 2.474754, 1.086681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868750, 0.093850, 0.486277,
		0.172048, -0.977919, -0.118634,
		0.464405, 0.186727, -0.865714,
		1.100648, 2.530773, 0.826967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.341141, 1.967315, 1.498852>,  <0.775565, 2.400063, 1.432967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.341141, 1.967315, 1.498852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.430763, 2.282043, 1.268822>,  <1.484537, 2.470880, 1.130803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.430763, 2.282043, 1.268822>,  <1.341141, 1.967315, 1.498852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.430763, 2.282043, 1.268822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672114, 0.302553, 0.675814,
		0.705735, -0.537937, -0.461044,
		0.224056, 0.786820, -0.575077,
		1.497980, 2.518090, 1.096299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.781032, 2.708088, 2.322461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.888837, 2.734039, 1.938137>,  <2.953520, 2.749610, 1.707543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.888837, 2.734039, 1.938137>,  <2.781032, 2.708088, 2.322461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.888837, 2.734039, 1.938137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959667, 0.100996, -0.262372,
		0.080016, 0.992769, 0.089480,
		0.269512, 0.064877, -0.960809,
		2.969690, 2.753502, 1.649894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.362160, 3.195794, 2.006412>,  <2.781032, 2.708088, 2.322461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.362160, 3.195794, 2.006412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.509729, 2.970718, 1.710499>,  <2.598271, 2.835673, 1.532951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.509729, 2.970718, 1.710499>,  <2.362160, 3.195794, 2.006412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.509729, 2.970718, 1.710499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873551, 0.061977, -0.482772,
		0.317499, 0.824343, -0.468672,
		0.368923, -0.562688, -0.739783,
		2.620406, 2.801912, 1.488564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.136493, 3.511510, 1.430767>,  <2.362160, 3.195794, 2.006412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.136493, 3.511510, 1.430767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.255739, 3.153351, 1.298470>,  <2.327287, 2.938455, 1.219091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.255739, 3.153351, 1.298470>,  <2.136493, 3.511510, 1.430767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.255739, 3.153351, 1.298470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743626, -0.000618, -0.668595,
		0.598454, 0.445268, -0.666025,
		0.298116, -0.895397, -0.330743,
		2.345174, 2.884732, 1.199247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.107613, 3.563754, 0.739148>,  <2.136493, 3.511510, 1.430767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.107613, 3.563754, 0.739148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.072772, 3.172165, 0.812935>,  <2.051867, 2.937212, 0.857207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.072772, 3.172165, 0.812935>,  <2.107613, 3.563754, 0.739148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.072772, 3.172165, 0.812935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783725, -0.046969, -0.619330,
		0.614970, -0.198516, -0.763153,
		-0.087103, -0.978972, 0.184467,
		2.046641, 2.878474, 0.868275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.878433, 3.257809, 0.044889>,  <2.107613, 3.563754, 0.739148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.878433, 3.257809, 0.044889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.791816, 2.992935, 0.331837>,  <1.739845, 2.834011, 0.504006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.791816, 2.992935, 0.331837>,  <1.878433, 3.257809, 0.044889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.791816, 2.992935, 0.331837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849241, -0.234687, -0.472983,
		0.481559, -0.711641, -0.511534,
		-0.216544, -0.662185, 0.717370,
		1.726853, 2.794280, 0.547048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.825359, 2.585271, -0.204088>,  <1.878433, 3.257809, 0.044889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.825359, 2.585271, -0.204088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.591983, 2.604111, 0.120228>,  <1.451957, 2.615415, 0.314817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.591983, 2.604111, 0.120228>,  <1.825359, 2.585271, -0.204088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.591983, 2.604111, 0.120228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763454, -0.372315, -0.527750,
		0.277012, -0.926911, 0.253182,
		-0.583440, 0.047099, 0.810789,
		1.416951, 2.618241, 0.363465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.440955, 2.008683, -0.305233>,  <1.825359, 2.585271, -0.204088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.440955, 2.008683, -0.305233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.228438, 2.152405, 0.001656>,  <1.100928, 2.238638, 0.185789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.228438, 2.152405, 0.001656>,  <1.440955, 2.008683, -0.305233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.228438, 2.152405, 0.001656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808196, -0.486539, -0.331811,
		0.254062, -0.796355, 0.548882,
		-0.531292, 0.359304, 0.767222,
		1.069051, 2.260196, 0.231822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.927471, 1.454470, -0.013468>,  <1.440955, 2.008683, -0.305233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.927471, 1.454470, -0.013468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.760985, 1.807312, 0.074764>,  <0.661094, 2.019017, 0.127704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.760985, 1.807312, 0.074764>,  <0.927471, 1.454470, -0.013468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.760985, 1.807312, 0.074764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900616, -0.366555, -0.233513,
		-0.125128, -0.295850, 0.947004,
		-0.416214, 0.882105, 0.220581,
		0.636121, 2.071944, 0.140938>
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
