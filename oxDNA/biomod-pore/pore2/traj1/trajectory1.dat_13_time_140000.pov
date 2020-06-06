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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.258417, 17.441359, -2.223472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.595722, 17.242008, -2.142943>,  <22.798105, 17.122398, -2.094625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.595722, 17.242008, -2.142943>,  <22.258417, 17.441359, -2.223472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.595722, 17.242008, -2.142943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411703, 0.839678, 0.354178,
		-0.345561, -0.215779, 0.913251,
		0.843261, -0.498378, 0.201323,
		22.848700, 17.092495, -2.082546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.134520, 16.652996, -2.134092>,  <22.258417, 17.441359, -2.223472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.134520, 16.652996, -2.134092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.075569, 16.257614, -2.148179>,  <22.040199, 16.020386, -2.156631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.075569, 16.257614, -2.148179>,  <22.134520, 16.652996, -2.134092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.075569, 16.257614, -2.148179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922297, 0.150198, -0.356103,
		0.357281, -0.019999, -0.933783,
		-0.147374, -0.988454, -0.035218,
		22.031357, 15.961078, -2.158744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.669884, 16.589024, -2.715939>,  <22.134520, 16.652996, -2.134092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.669884, 16.589024, -2.715939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.591412, 16.249798, -2.519042>,  <21.544329, 16.046263, -2.400904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.591412, 16.249798, -2.519042>,  <21.669884, 16.589024, -2.715939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.591412, 16.249798, -2.519042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978454, 0.202249, -0.041516,
		-0.064347, -0.489781, -0.869468,
		-0.196182, -0.848062, 0.492242,
		21.532557, 15.995378, -2.371369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.304886, 16.131596, -3.224946>,  <21.669884, 16.589024, -2.715939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.304886, 16.131596, -3.224946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.977928, 15.917870, -3.138808>,  <20.781754, 15.789635, -3.087125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.977928, 15.917870, -3.138808>,  <21.304886, 16.131596, -3.224946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.977928, 15.917870, -3.138808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317759, 0.729986, 0.605103,
		-0.480514, 0.426180, -0.766470,
		-0.817396, -0.534313, 0.215346,
		20.732710, 15.757576, -3.074204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.616472, 16.431805, -3.396575>,  <21.304886, 16.131596, -3.224946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.616472, 16.431805, -3.396575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.572643, 16.192902, -3.078763>,  <20.546347, 16.049561, -2.888076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.572643, 16.192902, -3.078763>,  <20.616472, 16.431805, -3.396575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.572643, 16.192902, -3.078763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499249, 0.724268, 0.475591,
		-0.859503, -0.344557, -0.377539,
		-0.109572, -0.597258, 0.794530,
		20.539772, 16.013725, -2.840404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.863079, 16.556522, -3.155270>,  <20.616472, 16.431805, -3.396575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.863079, 16.556522, -3.155270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.121456, 16.403156, -2.891223>,  <20.276482, 16.311136, -2.732795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.121456, 16.403156, -2.891223>,  <19.863079, 16.556522, -3.155270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.121456, 16.403156, -2.891223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262973, 0.700034, 0.663926,
		-0.716662, -0.602450, 0.351353,
		0.645942, -0.383414, 0.660116,
		20.315239, 16.288132, -2.693189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.700647, 16.725767, -2.486812>,  <19.863079, 16.556522, -3.155270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.700647, 16.725767, -2.486812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.093876, 16.708038, -2.415700>,  <20.329813, 16.697401, -2.373032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.093876, 16.708038, -2.415700>,  <19.700647, 16.725767, -2.486812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.093876, 16.708038, -2.415700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116091, 0.600001, 0.791531,
		-0.141752, -0.798770, 0.584699,
		0.983071, -0.044322, 0.177781,
		20.388798, 16.694742, -2.362365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.894644, 16.497347, -1.729875>,  <19.700647, 16.725767, -2.486812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.894644, 16.497347, -1.729875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.188824, 16.715199, -1.891115>,  <20.365332, 16.845909, -1.987858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.188824, 16.715199, -1.891115>,  <19.894644, 16.497347, -1.729875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.188824, 16.715199, -1.891115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027803, 0.618667, 0.785161,
		0.677008, -0.566240, 0.470141,
		0.735450, 0.544631, -0.403099,
		20.409460, 16.878588, -2.012044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.511681, 16.484861, -1.367143>,  <19.894644, 16.497347, -1.729875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.511681, 16.484861, -1.367143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.449955, 16.836201, -1.548113>,  <20.412920, 17.047005, -1.656695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.449955, 16.836201, -1.548113>,  <20.511681, 16.484861, -1.367143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.449955, 16.836201, -1.548113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181091, 0.475297, 0.860987,
		0.971284, 0.050934, -0.232407,
		-0.154316, 0.878350, -0.452425,
		20.403660, 17.099705, -1.683840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.146038, 16.854439, -1.494812>,  <20.511681, 16.484861, -1.367143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.146038, 16.854439, -1.494812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.851627, 17.112854, -1.413914>,  <20.674982, 17.267902, -1.365376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.851627, 17.112854, -1.413914>,  <21.146038, 16.854439, -1.494812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.851627, 17.112854, -1.413914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499429, 0.316531, 0.806461,
		0.456988, 0.694581, -0.555625,
		-0.736025, 0.646038, 0.202243,
		20.630819, 17.306665, -1.353242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.490555, 17.449085, -1.044128>,  <21.146038, 16.854439, -1.494812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.490555, 17.449085, -1.044128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.103626, 17.546146, -1.014716>,  <20.871469, 17.604383, -0.997069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.103626, 17.546146, -1.014716>,  <21.490555, 17.449085, -1.044128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.103626, 17.546146, -1.014716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203951, 0.572366, 0.794230,
		0.150636, 0.783273, -0.603152,
		-0.967322, 0.242654, 0.073531,
		20.813429, 17.618942, -0.992657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.545874, 18.116007, -1.080900>,  <21.490555, 17.449085, -1.044128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.545874, 18.116007, -1.080900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.211571, 18.004089, -0.891915>,  <21.010988, 17.936939, -0.778523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.211571, 18.004089, -0.891915>,  <21.545874, 18.116007, -1.080900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.211571, 18.004089, -0.891915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274434, 0.532422, 0.800758,
		-0.475597, 0.798901, -0.368191,
		-0.835759, -0.279794, 0.472464,
		20.960842, 17.920151, -0.750175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.022512, 18.691570, -0.879790>,  <21.545874, 18.116007, -1.080900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.022512, 18.691570, -0.879790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.039127, 18.368031, -0.645171>,  <21.049095, 18.173906, -0.504400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.039127, 18.368031, -0.645171>,  <21.022512, 18.691570, -0.879790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.039127, 18.368031, -0.645171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243170, 0.577586, 0.779271,
		-0.969094, 0.110263, 0.220679,
		0.041536, -0.808849, 0.586547,
		21.051588, 18.125376, -0.469207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.568897, 18.783197, -0.323001>,  <21.022512, 18.691570, -0.879790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.568897, 18.783197, -0.323001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.839165, 18.508953, -0.214624>,  <21.001326, 18.344406, -0.149598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.839165, 18.508953, -0.214624>,  <20.568897, 18.783197, -0.323001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.839165, 18.508953, -0.214624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212298, 0.532917, 0.819102,
		-0.705974, -0.495922, 0.505629,
		0.675670, -0.685609, 0.270943,
		21.041866, 18.303270, -0.133341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.330412, 18.387705, 0.193176>,  <20.568897, 18.783197, -0.323001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.330412, 18.387705, 0.193176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.720551, 18.475014, 0.180190>,  <20.954634, 18.527399, 0.172398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.720551, 18.475014, 0.180190>,  <20.330412, 18.387705, 0.193176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.720551, 18.475014, 0.180190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085032, 0.507502, 0.857445,
		0.203633, -0.833546, 0.513551,
		0.975348, 0.218272, -0.032466,
		21.013155, 18.540495, 0.170450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.562426, 18.287535, 0.867872>,  <20.330412, 18.387705, 0.193176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.562426, 18.287535, 0.867872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.872219, 18.501171, 0.732272>,  <21.058096, 18.629353, 0.650912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.872219, 18.501171, 0.732272>,  <20.562426, 18.287535, 0.867872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.872219, 18.501171, 0.732272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057781, 0.473922, 0.878669,
		0.629948, -0.700104, 0.336185,
		0.774485, 0.534091, -0.338999,
		21.104565, 18.661398, 0.630573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.026941, 18.038057, 1.446299>,  <20.562426, 18.287535, 0.867872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.026941, 18.038057, 1.446299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.060795, 18.394360, 1.267687>,  <21.081106, 18.608141, 1.160520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.060795, 18.394360, 1.267687>,  <21.026941, 18.038057, 1.446299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.060795, 18.394360, 1.267687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189675, 0.425542, 0.884838,
		0.978193, -0.159581, -0.132940,
		0.084631, 0.890757, -0.446530,
		21.086184, 18.661587, 1.133728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.570953, 18.324690, 1.802114>,  <21.026941, 18.038057, 1.446299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.570953, 18.324690, 1.802114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.329674, 18.602928, 1.646014>,  <21.184906, 18.769871, 1.552354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.329674, 18.602928, 1.646014>,  <21.570953, 18.324690, 1.802114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.329674, 18.602928, 1.646014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011527, 0.481633, 0.876297,
		0.797506, 0.533082, -0.282504,
		-0.603201, 0.695596, -0.390250,
		21.148714, 18.811607, 1.528939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.871004, 19.133501, 1.887856>,  <21.570953, 18.324690, 1.802114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.871004, 19.133501, 1.887856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.474144, 19.083504, 1.886271>,  <21.236029, 19.053505, 1.885319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.474144, 19.083504, 1.886271>,  <21.871004, 19.133501, 1.887856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.474144, 19.083504, 1.886271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049149, 0.360593, 0.931428,
		-0.114992, 0.924310, -0.363905,
		-0.992150, -0.124992, -0.003964,
		21.176498, 19.046005, 1.885081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.540922, 19.677931, 2.064108>,  <21.871004, 19.133501, 1.887856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.540922, 19.677931, 2.064108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.274052, 19.396351, 2.161543>,  <21.113930, 19.227404, 2.220004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.274052, 19.396351, 2.161543>,  <21.540922, 19.677931, 2.064108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.274052, 19.396351, 2.161543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115707, 0.420972, 0.899663,
		-0.735859, 0.572049, -0.362314,
		-0.667176, -0.703948, 0.243586,
		21.073898, 19.185167, 2.234619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.736994, 19.821451, 2.233746>,  <21.540922, 19.677931, 2.064108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.736994, 19.821451, 2.233746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.877613, 19.530918, 2.470002>,  <20.961985, 19.356598, 2.611755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.877613, 19.530918, 2.470002>,  <20.736994, 19.821451, 2.233746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.877613, 19.530918, 2.470002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353909, 0.480980, 0.802126,
		-0.866696, -0.491019, -0.087968,
		0.351549, -0.726332, 0.590640,
		20.983078, 19.313019, 2.647194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.230915, 19.527748, 2.574902>,  <20.736994, 19.821451, 2.233746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.230915, 19.527748, 2.574902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.568287, 19.513172, 2.789303>,  <20.770710, 19.504427, 2.917944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.568287, 19.513172, 2.789303>,  <20.230915, 19.527748, 2.574902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.568287, 19.513172, 2.789303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388273, 0.648207, 0.655036,
		-0.371311, -0.760592, 0.532567,
		0.843429, -0.036441, 0.536003,
		20.821316, 19.502239, 2.950104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.090069, 19.264259, 3.258157>,  <20.230915, 19.527748, 2.574902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.090069, 19.264259, 3.258157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.392628, 19.524395, 3.230085>,  <20.574163, 19.680475, 3.213242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.392628, 19.524395, 3.230085>,  <20.090069, 19.264259, 3.258157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.392628, 19.524395, 3.230085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450042, 0.595271, 0.665669,
		0.474685, -0.471926, 0.742940,
		0.756397, 0.650337, -0.070180,
		20.619547, 19.719496, 3.209031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.473616, 19.642954, 3.548206>,  <20.090069, 19.264259, 3.258157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.473616, 19.642954, 3.548206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.472210, 19.284794, 3.370106>,  <19.471367, 19.069899, 3.263246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.472210, 19.284794, 3.370106>,  <19.473616, 19.642954, 3.548206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.472210, 19.284794, 3.370106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826257, -0.248205, 0.505662,
		-0.563283, 0.369669, -0.738957,
		-0.003515, -0.895399, -0.445251,
		19.471155, 19.016174, 3.236531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.810421, 19.570087, 3.424622>,  <19.473616, 19.642954, 3.548206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.810421, 19.570087, 3.424622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.980450, 19.209709, 3.459511>,  <19.082466, 18.993483, 3.480445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.980450, 19.209709, 3.459511>,  <18.810421, 19.570087, 3.424622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.980450, 19.209709, 3.459511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683515, -0.256319, 0.683452,
		-0.593398, -0.350134, -0.724765,
		0.425071, -0.900947, 0.087223,
		19.107971, 18.939425, 3.485678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.296862, 19.009010, 3.245892>,  <18.810421, 19.570087, 3.424622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.296862, 19.009010, 3.245892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.597160, 18.936836, 3.500080>,  <18.777340, 18.893532, 3.652592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.597160, 18.936836, 3.500080>,  <18.296862, 19.009010, 3.245892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.597160, 18.936836, 3.500080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634573, 0.070326, 0.769657,
		-0.183564, -0.981069, -0.061703,
		0.750748, -0.180436, 0.635469,
		18.822384, 18.882706, 3.690720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.194006, 18.378576, 3.744450>,  <18.296862, 19.009010, 3.245892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.194006, 18.378576, 3.744450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.430805, 18.655846, 3.908910>,  <18.572886, 18.822208, 4.007586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.430805, 18.655846, 3.908910>,  <18.194006, 18.378576, 3.744450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.430805, 18.655846, 3.908910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700267, 0.189878, 0.688166,
		0.398953, -0.695307, 0.597816,
		0.591999, 0.693177, 0.411149,
		18.608404, 18.863798, 4.032255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.326248, 18.372478, 4.476751>,  <18.194006, 18.378576, 3.744450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.326248, 18.372478, 4.476751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.312889, 18.751041, 4.348255>,  <18.304874, 18.978180, 4.271157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.312889, 18.751041, 4.348255>,  <18.326248, 18.372478, 4.476751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.312889, 18.751041, 4.348255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828309, 0.153653, 0.538791,
		0.559276, 0.284080, 0.778787,
		-0.033397, 0.946408, -0.321240,
		18.302870, 19.034964, 4.251883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.081696, 18.872282, 5.017467>,  <18.326248, 18.372478, 4.476751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.081696, 18.872282, 5.017467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.219604, 18.719334, 5.360377>,  <18.302349, 18.627563, 5.566124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.219604, 18.719334, 5.360377>,  <18.081696, 18.872282, 5.017467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.219604, 18.719334, 5.360377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209501, 0.921581, 0.326799,
		-0.915009, 0.066930, 0.397841,
		0.344770, -0.382372, 0.857277,
		18.323036, 18.604622, 5.617560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.727200, 19.272873, 5.535946>,  <18.081696, 18.872282, 5.017467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.727200, 19.272873, 5.535946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.085411, 19.118710, 5.624932>,  <18.300337, 19.026211, 5.678324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.085411, 19.118710, 5.624932>,  <17.727200, 19.272873, 5.535946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.085411, 19.118710, 5.624932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299347, 0.891631, 0.339684,
		-0.329274, -0.237603, 0.913851,
		0.895528, -0.385408, 0.222465,
		18.354069, 19.003088, 5.691672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.750198, 19.354691, 6.240348>,  <17.727200, 19.272873, 5.535946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.750198, 19.354691, 6.240348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.759418, 18.975342, 6.366879>,  <17.764950, 18.747732, 6.442798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.759418, 18.975342, 6.366879>,  <17.750198, 19.354691, 6.240348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.759418, 18.975342, 6.366879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915767, 0.146959, 0.373863,
		-0.401047, 0.281067, 0.871873,
		0.023049, -0.948370, 0.316329,
		17.766333, 18.690830, 6.461778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.951767, 19.414852, 6.840656>,  <17.750198, 19.354691, 6.240348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.951767, 19.414852, 6.840656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.023239, 19.026855, 6.774697>,  <18.066122, 18.794058, 6.735122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.023239, 19.026855, 6.774697>,  <17.951767, 19.414852, 6.840656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.023239, 19.026855, 6.774697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846960, 0.066343, 0.527501,
		-0.500731, -0.233915, 0.833398,
		0.178681, -0.969991, -0.164897,
		18.076843, 18.735859, 6.725228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.774054, 18.948807, 7.533998>,  <17.951767, 19.414852, 6.840656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.774054, 18.948807, 7.533998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.064259, 18.848732, 7.277550>,  <18.238382, 18.788687, 7.123681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.064259, 18.848732, 7.277550>,  <17.774054, 18.948807, 7.533998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.064259, 18.848732, 7.277550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687376, 0.309231, 0.657183,
		0.033836, -0.917487, 0.396323,
		0.725513, -0.250187, -0.641122,
		18.281912, 18.773676, 7.085213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.315840, 18.498276, 7.773103>,  <17.774054, 18.948807, 7.533998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.315840, 18.498276, 7.773103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.434254, 18.772507, 7.507065>,  <18.505302, 18.937044, 7.347442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.434254, 18.772507, 7.507065>,  <18.315840, 18.498276, 7.773103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.434254, 18.772507, 7.507065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647799, 0.367600, 0.667254,
		0.701941, -0.628376, -0.335293,
		0.296033, 0.685576, -0.665095,
		18.523064, 18.978180, 7.307537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.103376, 18.428173, 7.602464>,  <18.315840, 18.498276, 7.773103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.103376, 18.428173, 7.602464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.928413, 18.787785, 7.594258>,  <18.823435, 19.003551, 7.589335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.928413, 18.787785, 7.594258>,  <19.103376, 18.428173, 7.602464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.928413, 18.787785, 7.594258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429331, 0.228820, 0.873680,
		0.790156, 0.373349, -0.486069,
		-0.437410, 0.899028, -0.020513,
		18.797190, 19.057493, 7.588104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.597427, 18.925161, 7.764194>,  <19.103376, 18.428173, 7.602464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.597427, 18.925161, 7.764194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.223900, 19.022095, 7.869464>,  <18.999784, 19.080256, 7.932626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.223900, 19.022095, 7.869464>,  <19.597427, 18.925161, 7.764194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.223900, 19.022095, 7.869464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315088, 0.208720, 0.925827,
		0.169429, 0.947476, -0.271263,
		-0.933816, 0.242334, 0.263175,
		18.943754, 19.094795, 7.948416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.665789, 19.520031, 7.973834>,  <19.597427, 18.925161, 7.764194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.665789, 19.520031, 7.973834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.314587, 19.408409, 8.129393>,  <19.103867, 19.341436, 8.222728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.314587, 19.408409, 8.129393>,  <19.665789, 19.520031, 7.973834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.314587, 19.408409, 8.129393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325231, 0.248318, 0.912449,
		-0.351192, 0.927614, -0.127267,
		-0.878003, -0.279053, 0.388897,
		19.051186, 19.324694, 8.246061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.568502, 19.924047, 8.537219>,  <19.665789, 19.520031, 7.973834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.568502, 19.924047, 8.537219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.261135, 19.688427, 8.637264>,  <19.076715, 19.547054, 8.697291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.261135, 19.688427, 8.637264>,  <19.568502, 19.924047, 8.537219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.261135, 19.688427, 8.637264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174753, 0.182835, 0.967488,
		-0.615627, 0.787142, -0.037556,
		-0.768417, -0.589049, 0.250114,
		19.030609, 19.511713, 8.712298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.078224, 20.385859, 8.918177>,  <19.568502, 19.924047, 8.537219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.078224, 20.385859, 8.918177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.040199, 19.997192, 9.004741>,  <19.017384, 19.763992, 9.056679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.040199, 19.997192, 9.004741>,  <19.078224, 20.385859, 8.918177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.040199, 19.997192, 9.004741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084502, 0.208734, 0.974315,
		-0.991878, 0.110910, 0.062264,
		-0.095064, -0.971663, 0.216410,
		19.011681, 19.705694, 9.069664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.605835, 20.301117, 9.452868>,  <19.078224, 20.385859, 8.918177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.605835, 20.301117, 9.452868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.797565, 19.950153, 9.460837>,  <18.912603, 19.739574, 9.465619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.797565, 19.950153, 9.460837>,  <18.605835, 20.301117, 9.452868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.797565, 19.950153, 9.460837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135932, 0.096649, 0.985993,
		-0.867046, -0.469904, 0.165594,
		0.479327, -0.877410, 0.019924,
		18.941364, 19.686930, 9.466814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.309156, 19.949907, 10.031509>,  <18.605835, 20.301117, 9.452868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.309156, 19.949907, 10.031509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.653275, 19.758411, 9.961420>,  <18.859745, 19.643513, 9.919367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.653275, 19.758411, 9.961420>,  <18.309156, 19.949907, 10.031509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.653275, 19.758411, 9.961420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128500, -0.128978, 0.983286,
		-0.493340, -0.868430, -0.049441,
		0.860292, -0.478741, -0.175224,
		18.911362, 19.614790, 9.908853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.314224, 19.582928, 10.560797>,  <18.309156, 19.949907, 10.031509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.314224, 19.582928, 10.560797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.694775, 19.559772, 10.439776>,  <18.923105, 19.545879, 10.367165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.694775, 19.559772, 10.439776>,  <18.314224, 19.582928, 10.560797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.694775, 19.559772, 10.439776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292131, -0.141988, 0.945780,
		-0.097699, -0.988175, -0.118175,
		0.951375, -0.057879, -0.302549,
		18.980186, 19.542406, 10.349011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.621775, 19.075825, 10.953998>,  <18.314224, 19.582928, 10.560797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.621775, 19.075825, 10.953998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.924519, 19.296452, 10.813746>,  <19.106165, 19.428827, 10.729596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.924519, 19.296452, 10.813746>,  <18.621775, 19.075825, 10.953998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.924519, 19.296452, 10.813746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342637, 0.121993, 0.931514,
		0.556567, -0.825161, -0.096657,
		0.756857, 0.551568, -0.350628,
		19.151575, 19.461922, 10.708558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.173269, 18.892641, 11.307889>,  <18.621775, 19.075825, 10.953998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.173269, 18.892641, 11.307889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.301426, 19.244839, 11.168127>,  <19.378319, 19.456158, 11.084270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.301426, 19.244839, 11.168127>,  <19.173269, 18.892641, 11.307889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.301426, 19.244839, 11.168127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448609, 0.183835, 0.874617,
		0.834326, -0.436965, -0.336098,
		0.320390, 0.880492, -0.349405,
		19.397543, 19.508986, 11.063306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.884777, 18.874735, 11.466499>,  <19.173269, 18.892641, 11.307889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.884777, 18.874735, 11.466499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.752514, 19.250832, 11.433980>,  <19.673155, 19.476490, 11.414469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.752514, 19.250832, 11.433980>,  <19.884777, 18.874735, 11.466499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.752514, 19.250832, 11.433980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335841, 0.197735, 0.920930,
		0.881972, 0.277211, -0.381155,
		-0.330660, 0.940242, -0.081297,
		19.653316, 19.532904, 11.409591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.381937, 19.269865, 11.818187>,  <19.884777, 18.874735, 11.466499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.381937, 19.269865, 11.818187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.098553, 19.550625, 11.788744>,  <19.928522, 19.719082, 11.771078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.098553, 19.550625, 11.788744>,  <20.381937, 19.269865, 11.818187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.098553, 19.550625, 11.788744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290721, 0.385281, 0.875808,
		0.643090, 0.599077, -0.477013,
		-0.708461, 0.701901, -0.073606,
		19.886015, 19.761196, 11.766662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.734516, 19.970943, 11.878917>,  <20.381937, 19.269865, 11.818187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.734516, 19.970943, 11.878917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.347225, 20.008442, 11.971647>,  <20.114851, 20.030941, 12.027286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.347225, 20.008442, 11.971647>,  <20.734516, 19.970943, 11.878917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.347225, 20.008442, 11.971647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249079, 0.443697, 0.860867,
		-0.022159, 0.891260, -0.452951,
		-0.968230, 0.093744, 0.231826,
		20.056757, 20.036566, 12.041195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.742981, 20.532927, 12.245883>,  <20.734516, 19.970943, 11.878917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.742981, 20.532927, 12.245883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.390270, 20.376667, 12.351609>,  <20.178644, 20.282911, 12.415045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.390270, 20.376667, 12.351609>,  <20.742981, 20.532927, 12.245883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.390270, 20.376667, 12.351609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065965, 0.452742, 0.889198,
		-0.467030, 0.801510, -0.373449,
		-0.881777, -0.390648, 0.264316,
		20.125736, 20.259472, 12.430904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.433611, 21.061098, 12.557512>,  <20.742981, 20.532927, 12.245883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.433611, 21.061098, 12.557512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.223648, 20.744377, 12.682426>,  <20.097672, 20.554344, 12.757375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.223648, 20.744377, 12.682426>,  <20.433611, 21.061098, 12.557512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.223648, 20.744377, 12.682426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118874, 0.431494, 0.894249,
		-0.842818, 0.432274, -0.320619,
		-0.524906, -0.791803, 0.312285,
		20.066175, 20.506836, 12.776112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.952999, 21.362204, 13.001102>,  <20.433611, 21.061098, 12.557512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.952999, 21.362204, 13.001102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.949265, 20.968178, 13.069874>,  <19.947023, 20.731762, 13.111136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.949265, 20.968178, 13.069874>,  <19.952999, 21.362204, 13.001102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.949265, 20.968178, 13.069874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164487, 0.168082, 0.971953,
		-0.986335, 0.037353, 0.160461,
		-0.009335, -0.985065, 0.171929,
		19.946465, 20.672659, 13.121452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.345898, 21.171688, 13.330695>,  <19.952999, 21.362204, 13.001102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.345898, 21.171688, 13.330695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.634617, 20.920284, 13.446613>,  <19.807848, 20.769442, 13.516164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.634617, 20.920284, 13.446613>,  <19.345898, 21.171688, 13.330695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.634617, 20.920284, 13.446613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130422, 0.287695, 0.948800,
		-0.679703, -0.722639, 0.125687,
		0.721799, -0.628510, 0.289795,
		19.851156, 20.731731, 13.533552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.114872, 20.913731, 13.923852>,  <19.345898, 21.171688, 13.330695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.114872, 20.913731, 13.923852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.492706, 20.784260, 13.945728>,  <19.719406, 20.706577, 13.958855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.492706, 20.784260, 13.945728>,  <19.114872, 20.913731, 13.923852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.492706, 20.784260, 13.945728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055017, 0.320354, 0.945699,
		-0.323621, -0.890285, 0.320409,
		0.944586, -0.323676, 0.054692,
		19.776083, 20.687157, 13.962136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.301859, 20.526455, 14.547357>,  <19.114872, 20.913731, 13.923852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.301859, 20.526455, 14.547357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.668343, 20.641422, 14.435677>,  <19.888233, 20.710402, 14.368669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.668343, 20.641422, 14.435677>,  <19.301859, 20.526455, 14.547357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.668343, 20.641422, 14.435677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164592, 0.365335, 0.916209,
		0.365335, -0.885394, 0.287417,
		-0.916209, -0.287417, 0.279199,
		19.943205, 20.727648, 14.351917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.802917, 20.191349, 15.037659>,  <19.301859, 20.526455, 14.547357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.802917, 20.191349, 15.037659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.995632, 20.514984, 14.903046>,  <20.111261, 20.709166, 14.822278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.995632, 20.514984, 14.903046>,  <19.802917, 20.191349, 15.037659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.995632, 20.514984, 14.903046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160641, 0.295987, 0.941587,
		0.861437, -0.507707, 0.012630,
		0.481789, 0.809089, -0.336532,
		20.140169, 20.757711, 14.802086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.373281, 20.220440, 15.513143>,  <19.802917, 20.191349, 15.037659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.373281, 20.220440, 15.513143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.388569, 20.593369, 15.369303>,  <20.397741, 20.817125, 15.282999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.388569, 20.593369, 15.369303>,  <20.373281, 20.220440, 15.513143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.388569, 20.593369, 15.369303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276995, 0.335876, 0.900256,
		0.960111, -0.134014, -0.245412,
		0.038219, 0.932324, -0.359599,
		20.400034, 20.873066, 15.261423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.958799, 20.523811, 15.792684>,  <20.373281, 20.220440, 15.513143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.958799, 20.523811, 15.792684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.716331, 20.824780, 15.689592>,  <20.570850, 21.005360, 15.627738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.716331, 20.824780, 15.689592>,  <20.958799, 20.523811, 15.792684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.716331, 20.824780, 15.689592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236751, 0.480064, 0.844682,
		0.759280, 0.451004, -0.469136,
		-0.606170, 0.752419, -0.257728,
		20.534481, 21.050505, 15.612274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.369011, 20.999191, 15.992171>,  <20.958799, 20.523811, 15.792684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.369011, 20.999191, 15.992171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.998028, 21.147381, 15.971893>,  <20.775438, 21.236296, 15.959726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.998028, 21.147381, 15.971893>,  <21.369011, 20.999191, 15.992171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.998028, 21.147381, 15.971893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164923, 0.526959, 0.833735,
		0.335593, 0.764893, -0.549832,
		-0.927457, 0.370476, -0.050696,
		20.719791, 21.258524, 15.956685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.450544, 21.686493, 16.154459>,  <21.369011, 20.999191, 15.992171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.450544, 21.686493, 16.154459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.052845, 21.666889, 16.192549>,  <20.814226, 21.655127, 16.215403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.052845, 21.666889, 16.192549>,  <21.450544, 21.686493, 16.154459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.052845, 21.666889, 16.192549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046396, 0.604271, 0.795427,
		-0.096527, 0.795270, -0.598522,
		-0.994249, -0.049011, 0.095226,
		20.754570, 21.652185, 16.221117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.261408, 22.309319, 16.238804>,  <21.450544, 21.686493, 16.154459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.261408, 22.309319, 16.238804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.959126, 22.097816, 16.393373>,  <20.777756, 21.970915, 16.486116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.959126, 22.097816, 16.393373>,  <21.261408, 22.309319, 16.238804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.959126, 22.097816, 16.393373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078940, 0.659287, 0.747736,
		-0.650134, 0.534566, -0.539968,
		-0.755708, -0.528754, 0.386426,
		20.732412, 21.939190, 16.509302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.673868, 22.779062, 16.364031>,  <21.261408, 22.309319, 16.238804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.673868, 22.779062, 16.364031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.610847, 22.468002, 16.607485>,  <20.573036, 22.281366, 16.753557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.610847, 22.468002, 16.607485>,  <20.673868, 22.779062, 16.364031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.610847, 22.468002, 16.607485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116336, 0.626656, 0.770563,
		-0.980634, 0.050597, -0.189199,
		-0.157551, -0.777652, 0.608634,
		20.563581, 22.234707, 16.790075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.132351, 22.981598, 16.820204>,  <20.673868, 22.779062, 16.364031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.132351, 22.981598, 16.820204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.291763, 22.677048, 17.024746>,  <20.387411, 22.494318, 17.147470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.291763, 22.677048, 17.024746>,  <20.132351, 22.981598, 16.820204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.291763, 22.677048, 17.024746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117433, 0.595316, 0.794863,
		-0.909607, -0.256726, 0.326661,
		0.398529, -0.761374, 0.511356,
		20.411322, 22.448635, 17.178152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.013655, 23.114817, 17.528374>,  <20.132351, 22.981598, 16.820204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.013655, 23.114817, 17.528374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.309376, 22.849583, 17.575274>,  <20.486809, 22.690443, 17.603413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.309376, 22.849583, 17.575274>,  <20.013655, 23.114817, 17.528374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.309376, 22.849583, 17.575274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269443, 0.450881, 0.850945,
		-0.617114, -0.597515, 0.512002,
		0.739304, -0.663086, 0.117249,
		20.531166, 22.650658, 17.610449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.899513, 22.883909, 18.215975>,  <20.013655, 23.114817, 17.528374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.899513, 22.883909, 18.215975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.277592, 22.768539, 18.154762>,  <20.504438, 22.699318, 18.118034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.277592, 22.768539, 18.154762>,  <19.899513, 22.883909, 18.215975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.277592, 22.768539, 18.154762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251874, 0.345851, 0.903851,
		-0.207766, -0.892860, 0.399543,
		0.945195, -0.288424, -0.153032,
		20.561150, 22.682013, 18.108852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.081881, 22.479773, 18.752283>,  <19.899513, 22.883909, 18.215975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.081881, 22.479773, 18.752283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.422588, 22.629681, 18.605839>,  <20.627012, 22.719625, 18.517971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.422588, 22.629681, 18.605839>,  <20.081881, 22.479773, 18.752283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.422588, 22.629681, 18.605839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280160, 0.264687, 0.922741,
		0.442721, -0.888531, 0.120456,
		0.851768, 0.374770, -0.366113,
		20.678120, 22.742111, 18.496004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.629131, 22.184422, 19.120398>,  <20.081881, 22.479773, 18.752283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.629131, 22.184422, 19.120398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.787865, 22.504017, 18.939671>,  <20.883104, 22.695774, 18.831234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.787865, 22.504017, 18.939671>,  <20.629131, 22.184422, 19.120398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.787865, 22.504017, 18.939671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236392, 0.386670, 0.891406,
		0.886928, -0.460546, -0.035431,
		0.396834, 0.798989, -0.451818,
		20.906916, 22.743713, 18.804125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.212229, 22.210529, 19.430342>,  <20.629131, 22.184422, 19.120398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.212229, 22.210529, 19.430342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.168755, 22.570312, 19.261032>,  <21.142670, 22.786182, 19.159447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.168755, 22.570312, 19.261032>,  <21.212229, 22.210529, 19.430342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.168755, 22.570312, 19.261032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467172, 0.422062, 0.776926,
		0.877461, -0.113301, -0.466074,
		-0.108685, 0.899459, -0.423274,
		21.136148, 22.840151, 19.134050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.944372, 22.572237, 19.389362>,  <21.212229, 22.210529, 19.430342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.944372, 22.572237, 19.389362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.634026, 22.824196, 19.403570>,  <21.447817, 22.975370, 19.412094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.634026, 22.824196, 19.403570>,  <21.944372, 22.572237, 19.389362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.634026, 22.824196, 19.403570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357209, 0.392187, 0.847697,
		0.520030, 0.670388, -0.529290,
		-0.775867, 0.629895, 0.035520,
		21.401266, 23.013165, 19.414227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.276934, 23.247871, 19.528326>,  <21.944372, 22.572237, 19.389362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.276934, 23.247871, 19.528326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.887886, 23.260155, 19.620474>,  <21.654457, 23.267525, 19.675762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.887886, 23.260155, 19.620474>,  <22.276934, 23.247871, 19.528326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.887886, 23.260155, 19.620474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222010, 0.415904, 0.881893,
		-0.068731, 0.908890, -0.411333,
		-0.972619, 0.030707, 0.230368,
		21.596100, 23.269367, 19.689585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.136162, 23.825943, 20.002638>,  <22.276934, 23.247871, 19.528326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.136162, 23.825943, 20.002638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.783165, 23.645771, 20.056778>,  <21.571367, 23.537668, 20.089262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.783165, 23.645771, 20.056778>,  <22.136162, 23.825943, 20.002638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.783165, 23.645771, 20.056778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076488, 0.146507, 0.986248,
		-0.464066, 0.880709, -0.094839,
		-0.882492, -0.450430, 0.135352,
		21.518417, 23.510641, 20.097383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.771404, 24.250380, 20.436932>,  <22.136162, 23.825943, 20.002638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.771404, 24.250380, 20.436932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.589371, 23.894924, 20.459639>,  <21.480150, 23.681652, 20.473263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.589371, 23.894924, 20.459639>,  <21.771404, 24.250380, 20.436932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.589371, 23.894924, 20.459639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124676, 0.126714, 0.984073,
		-0.881676, 0.440760, -0.168458,
		-0.455086, -0.888636, 0.056769,
		21.452845, 23.628334, 20.476669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.040436, 24.406040, 20.706984>,  <21.771404, 24.250380, 20.436932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.040436, 24.406040, 20.706984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.120441, 24.020393, 20.776806>,  <21.168446, 23.789005, 20.818699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.120441, 24.020393, 20.776806>,  <21.040436, 24.406040, 20.706984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.120441, 24.020393, 20.776806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327113, 0.102223, 0.939440,
		-0.923575, -0.245002, -0.294929,
		0.200016, -0.964119, 0.174554,
		21.180447, 23.731157, 20.829172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.416603, 24.236906, 20.962919>,  <21.040436, 24.406040, 20.706984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.416603, 24.236906, 20.962919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.675488, 23.950089, 21.066431>,  <20.830818, 23.777998, 21.128538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.675488, 23.950089, 21.066431>,  <20.416603, 24.236906, 20.962919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.675488, 23.950089, 21.066431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419981, -0.052095, 0.906037,
		-0.636186, -0.695079, -0.334861,
		0.647212, -0.717044, 0.258777,
		20.869652, 23.734976, 21.144064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.964212, 23.658583, 21.138176>,  <20.416603, 24.236906, 20.962919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.964212, 23.658583, 21.138176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.320042, 23.644547, 21.320353>,  <20.533539, 23.636126, 21.429659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.320042, 23.644547, 21.320353>,  <19.964212, 23.658583, 21.138176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.320042, 23.644547, 21.320353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441885, 0.186511, 0.877469,
		-0.115736, -0.981826, 0.150410,
		0.889575, -0.035091, 0.455440,
		20.586914, 23.634020, 21.456984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.800678, 23.388102, 21.830566>,  <19.964212, 23.658583, 21.138176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.800678, 23.388102, 21.830566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.162819, 23.551643, 21.876480>,  <20.380104, 23.649769, 21.904028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.162819, 23.551643, 21.876480>,  <19.800678, 23.388102, 21.830566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.162819, 23.551643, 21.876480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299674, 0.423593, 0.854848,
		0.300885, -0.808337, 0.506023,
		0.905353, 0.408853, 0.114784,
		20.434425, 23.674299, 21.910915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.782747, 23.462967, 22.604963>,  <19.800678, 23.388102, 21.830566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.782747, 23.462967, 22.604963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.099098, 23.672176, 22.477869>,  <20.288910, 23.797703, 22.401613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.099098, 23.672176, 22.477869>,  <19.782747, 23.462967, 22.604963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.099098, 23.672176, 22.477869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024314, 0.491931, 0.870295,
		0.611490, -0.696023, 0.376340,
		0.790878, 0.523026, -0.317734,
		20.336361, 23.829084, 22.382549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.146761, 23.458450, 23.187210>,  <19.782747, 23.462967, 22.604963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.146761, 23.458450, 23.187210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.277561, 23.768696, 22.971249>,  <20.356041, 23.954844, 22.841671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.277561, 23.768696, 22.971249>,  <20.146761, 23.458450, 23.187210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.277561, 23.768696, 22.971249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064436, 0.551684, 0.831560,
		0.942825, -0.306711, 0.130424,
		0.327001, 0.775612, -0.539904,
		20.375662, 24.001379, 22.809277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.776880, 23.685005, 23.440170>,  <20.146761, 23.458450, 23.187210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.776880, 23.685005, 23.440170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.617363, 24.001514, 23.254763>,  <20.521652, 24.191420, 23.143518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.617363, 24.001514, 23.254763>,  <20.776880, 23.685005, 23.440170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.617363, 24.001514, 23.254763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142658, 0.552826, 0.820994,
		0.905877, 0.261283, -0.333345,
		-0.398794, 0.791274, -0.463518,
		20.497725, 24.238897, 23.115707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.115948, 24.107038, 23.817738>,  <20.776880, 23.685005, 23.440170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.115948, 24.107038, 23.817738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.857380, 24.357693, 23.643623>,  <20.702240, 24.508085, 23.539154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.857380, 24.357693, 23.643623>,  <21.115948, 24.107038, 23.817738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.857380, 24.357693, 23.643623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089216, 0.628668, 0.772539,
		0.757750, 0.460549, -0.462288,
		-0.646417, 0.626635, -0.435285,
		20.663454, 24.545683, 23.513039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.611034, 24.452147, 23.320232>,  <21.115948, 24.107038, 23.817738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.611034, 24.452147, 23.320232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.530781, 24.815922, 23.174536>,  <21.482630, 25.034187, 23.087118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.530781, 24.815922, 23.174536>,  <21.611034, 24.452147, 23.320232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.530781, 24.815922, 23.174536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871066, 0.004542, 0.491145,
		0.448320, 0.415816, 0.791269,
		-0.200632, 0.909437, -0.364240,
		21.470591, 25.088753, 23.065264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.409634, 24.986637, 23.854074>,  <21.611034, 24.452147, 23.320232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.409634, 24.986637, 23.854074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.265629, 25.126781, 23.508209>,  <21.179226, 25.210867, 23.300690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.265629, 25.126781, 23.508209>,  <21.409634, 24.986637, 23.854074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.265629, 25.126781, 23.508209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857205, 0.241578, 0.454795,
		0.368224, 0.904925, 0.213358,
		-0.360013, 0.350358, -0.864661,
		21.157625, 25.231890, 23.248812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.154064, 25.732300, 23.860622>,  <21.409634, 24.986637, 23.854074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.154064, 25.732300, 23.860622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.963768, 25.489796, 23.605713>,  <20.849590, 25.344294, 23.452766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.963768, 25.489796, 23.605713>,  <21.154064, 25.732300, 23.860622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.963768, 25.489796, 23.605713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871544, 0.227161, 0.434521,
		-0.118668, 0.762133, -0.636452,
		-0.475740, -0.606260, -0.637276,
		20.821047, 25.307919, 23.414530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.654335, 26.008770, 23.617472>,  <21.154064, 25.732300, 23.860622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.654335, 26.008770, 23.617472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.523609, 25.631924, 23.587517>,  <20.445173, 25.405815, 23.569544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.523609, 25.631924, 23.587517>,  <20.654335, 26.008770, 23.617472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.523609, 25.631924, 23.587517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889930, 0.280100, 0.359956,
		-0.318144, 0.184284, -0.929959,
		-0.326816, -0.942117, -0.074888,
		20.425564, 25.349289, 23.565050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.014610, 26.181732, 23.785480>,  <20.654335, 26.008770, 23.617472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.014610, 26.181732, 23.785480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.956970, 25.796581, 23.694174>,  <19.922386, 25.565491, 23.639389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.956970, 25.796581, 23.694174>,  <20.014610, 26.181732, 23.785480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.956970, 25.796581, 23.694174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932878, 0.055232, 0.355933,
		-0.330112, 0.264235, -0.906204,
		-0.144102, -0.962875, -0.228266,
		19.913740, 25.507719, 23.625694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.381956, 26.173534, 23.836695>,  <20.014610, 26.181732, 23.785480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.381956, 26.173534, 23.836695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.130371, 26.054646, 24.124046>,  <18.979420, 25.983313, 24.296457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.130371, 26.054646, 24.124046>,  <19.381956, 26.173534, 23.836695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.130371, 26.054646, 24.124046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762095, 0.053052, -0.645288,
		0.153682, -0.953333, -0.259879,
		-0.628961, -0.297222, 0.718378,
		18.941683, 25.965479, 24.339560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.008530, 25.488062, 23.703482>,  <19.381956, 26.173534, 23.836695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.008530, 25.488062, 23.703482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.778614, 25.750183, 23.899521>,  <18.640665, 25.907455, 24.017143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.778614, 25.750183, 23.899521>,  <19.008530, 25.488062, 23.703482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.778614, 25.750183, 23.899521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663560, -0.022775, -0.747777,
		-0.478859, -0.755022, 0.447924,
		-0.574789, 0.655303, 0.490096,
		18.606176, 25.946774, 24.046551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.315783, 25.272326, 23.735228>,  <19.008530, 25.488062, 23.703482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.315783, 25.272326, 23.735228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.390041, 25.661934, 23.683350>,  <18.434597, 25.895699, 23.652224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.390041, 25.661934, 23.683350>,  <18.315783, 25.272326, 23.735228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.390041, 25.661934, 23.683350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356861, -0.056143, -0.932469,
		-0.915524, 0.219394, 0.337167,
		0.185648, 0.974019, -0.129694,
		18.445736, 25.954140, 23.644442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.701111, 25.707062, 23.535627>,  <18.315783, 25.272326, 23.735228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.701111, 25.707062, 23.535627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.059219, 25.819748, 23.397572>,  <18.274084, 25.887360, 23.314737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.059219, 25.819748, 23.397572>,  <17.701111, 25.707062, 23.535627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.059219, 25.819748, 23.397572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337471, -0.076948, -0.938186,
		-0.290861, 0.956407, 0.026182,
		0.895273, 0.281717, -0.345141,
		18.327801, 25.904263, 23.294029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.687950, 26.124847, 23.015816>,  <17.701111, 25.707062, 23.535627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.687950, 26.124847, 23.015816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.043324, 25.960724, 22.933516>,  <18.256548, 25.862249, 22.884136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.043324, 25.960724, 22.933516>,  <17.687950, 26.124847, 23.015816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.043324, 25.960724, 22.933516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194135, 0.070294, -0.978453,
		0.415930, 0.909234, -0.017204,
		0.888434, -0.410307, -0.205751,
		18.309855, 25.837631, 22.871790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.897781, 26.529810, 22.507874>,  <17.687950, 26.124847, 23.015816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.897781, 26.529810, 22.507874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.158546, 26.235664, 22.433846>,  <18.315006, 26.059177, 22.389429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.158546, 26.235664, 22.433846>,  <17.897781, 26.529810, 22.507874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.158546, 26.235664, 22.433846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033771, 0.215663, -0.975884,
		0.757542, 0.642441, 0.115760,
		0.651912, -0.735363, -0.185070,
		18.354120, 26.015055, 22.378325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.403238, 26.839846, 22.060015>,  <17.897781, 26.529810, 22.507874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.403238, 26.839846, 22.060015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.393562, 26.441818, 22.021540>,  <18.387756, 26.203001, 21.998455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.393562, 26.441818, 22.021540>,  <18.403238, 26.839846, 22.060015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.393562, 26.441818, 22.021540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038984, 0.095205, -0.994694,
		0.998947, -0.027813, 0.036489,
		-0.024192, -0.995069, -0.096189,
		18.386305, 26.143297, 21.992683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.807264, 26.685907, 21.480139>,  <18.403238, 26.839846, 22.060015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.807264, 26.685907, 21.480139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.575245, 26.363358, 21.526266>,  <18.436033, 26.169827, 21.553942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.575245, 26.363358, 21.526266>,  <18.807264, 26.685907, 21.480139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.575245, 26.363358, 21.526266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017399, -0.129269, -0.991457,
		0.814395, -0.577101, 0.060952,
		-0.580050, -0.806377, 0.115317,
		18.401230, 26.121445, 21.560862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.021673, 26.174585, 20.896723>,  <18.807264, 26.685907, 21.480139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.021673, 26.174585, 20.896723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.698536, 25.984386, 21.036028>,  <18.504654, 25.870266, 21.119610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.698536, 25.984386, 21.036028>,  <19.021673, 26.174585, 20.896723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.698536, 25.984386, 21.036028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207922, -0.322977, -0.923285,
		0.551502, -0.818283, 0.162049,
		-0.807846, -0.475499, 0.348261,
		18.456182, 25.841736, 21.140507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.972919, 25.531988, 20.413355>,  <19.021673, 26.174585, 20.896723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.972919, 25.531988, 20.413355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.619511, 25.606655, 20.585190>,  <18.407465, 25.651455, 20.688290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.619511, 25.606655, 20.585190>,  <18.972919, 25.531988, 20.413355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.619511, 25.606655, 20.585190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465888, -0.255577, -0.847130,
		-0.048336, -0.948598, 0.312772,
		-0.883523, 0.186663, 0.429586,
		18.354454, 25.662655, 20.714066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.522524, 24.870588, 20.322393>,  <18.972919, 25.531988, 20.413355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.522524, 24.870588, 20.322393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.303570, 25.200127, 20.381245>,  <18.172197, 25.397850, 20.416555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.303570, 25.200127, 20.381245>,  <18.522524, 24.870588, 20.322393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.303570, 25.200127, 20.381245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385647, -0.092286, -0.918019,
		-0.742729, -0.559249, 0.368230,
		-0.547384, 0.823847, 0.147129,
		18.139355, 25.447281, 20.425383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.919821, 24.597046, 20.101238>,  <18.522524, 24.870588, 20.322393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.919821, 24.597046, 20.101238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.869373, 24.993851, 20.102053>,  <17.839104, 25.231934, 20.102541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.869373, 24.993851, 20.102053>,  <17.919821, 24.597046, 20.101238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.869373, 24.993851, 20.102053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518460, -0.064164, -0.852691,
		-0.845750, -0.108598, 0.522412,
		-0.126120, 0.992013, 0.002037,
		17.831537, 25.291454, 20.102663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.129866, 24.692915, 19.939735>,  <17.919821, 24.597046, 20.101238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.129866, 24.692915, 19.939735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.365677, 25.001579, 19.844238>,  <17.507164, 25.186777, 19.786940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.365677, 25.001579, 19.844238>,  <17.129866, 24.692915, 19.939735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.365677, 25.001579, 19.844238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305902, -0.060264, -0.950154,
		-0.747585, 0.633172, 0.200525,
		0.589526, 0.771661, -0.238741,
		17.542534, 25.233078, 19.772615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.705288, 25.081270, 19.579876>,  <17.129866, 24.692915, 19.939735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.705288, 25.081270, 19.579876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.070362, 25.188454, 19.456457>,  <17.289408, 25.252764, 19.382406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.070362, 25.188454, 19.456457>,  <16.705288, 25.081270, 19.579876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.070362, 25.188454, 19.456457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285348, -0.122607, -0.950549,
		-0.292537, 0.955597, -0.035441,
		0.912688, 0.267958, -0.308545,
		17.344168, 25.268841, 19.363894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.586697, 25.393839, 19.062967>,  <16.705288, 25.081270, 19.579876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.586697, 25.393839, 19.062967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.972488, 25.301727, 19.011200>,  <17.203964, 25.246460, 18.980139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.972488, 25.301727, 19.011200>,  <16.586697, 25.393839, 19.062967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.972488, 25.301727, 19.011200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195917, -0.294973, -0.935205,
		0.177182, 0.927342, -0.329611,
		0.964481, -0.230278, -0.129418,
		17.261833, 25.232643, 18.972374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.795622, 25.659176, 18.371477>,  <16.586697, 25.393839, 19.062967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.795622, 25.659176, 18.371477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.070786, 25.382332, 18.458897>,  <17.235884, 25.216225, 18.511349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.070786, 25.382332, 18.458897>,  <16.795622, 25.659176, 18.371477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.070786, 25.382332, 18.458897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001481, -0.299774, -0.954009,
		0.725795, 0.656596, -0.205193,
		0.687910, -0.692111, 0.218547,
		17.277159, 25.174698, 18.524460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120731, 25.717321, 17.780920>,  <16.795622, 25.659176, 18.371477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.120731, 25.717321, 17.780920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.278496, 25.387157, 17.942484>,  <17.373154, 25.189060, 18.039423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.278496, 25.387157, 17.942484>,  <17.120731, 25.717321, 17.780920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.278496, 25.387157, 17.942484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195806, -0.353960, -0.914534,
		0.897831, 0.439789, 0.022015,
		0.394409, -0.825408, 0.403909,
		17.396818, 25.139536, 18.063656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.814209, 25.541376, 17.471317>,  <17.120731, 25.717321, 17.780920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.814209, 25.541376, 17.471317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.690533, 25.190357, 17.617910>,  <17.616327, 24.979746, 17.705866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.690533, 25.190357, 17.617910>,  <17.814209, 25.541376, 17.471317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.690533, 25.190357, 17.617910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473628, -0.476268, -0.740840,
		0.824668, -0.055484, 0.562889,
		-0.309191, -0.877548, 0.366484,
		17.597775, 24.927094, 17.727856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.312191, 25.141743, 17.343962>,  <17.814209, 25.541376, 17.471317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.312191, 25.141743, 17.343962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.981598, 24.922832, 17.396744>,  <17.783241, 24.791487, 17.428413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.981598, 24.922832, 17.396744>,  <18.312191, 25.141743, 17.343962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.981598, 24.922832, 17.396744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299742, -0.626202, -0.719740,
		0.476529, -0.555300, 0.681588,
		-0.826483, -0.547277, 0.131957,
		17.733652, 24.758650, 17.436331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.439018, 24.630615, 17.008064>,  <18.312191, 25.141743, 17.343962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.439018, 24.630615, 17.008064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.061859, 24.520130, 17.082520>,  <17.835564, 24.453838, 17.127193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.061859, 24.520130, 17.082520>,  <18.439018, 24.630615, 17.008064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.061859, 24.520130, 17.082520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019331, -0.603281, -0.797294,
		0.332517, -0.748170, 0.574173,
		-0.942899, -0.276213, 0.186138,
		17.778990, 24.437265, 17.138361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.469120, 23.858683, 16.947430>,  <18.439018, 24.630615, 17.008064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.469120, 23.858683, 16.947430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.100773, 24.006660, 16.898207>,  <17.879765, 24.095448, 16.868673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.100773, 24.006660, 16.898207>,  <18.469120, 23.858683, 16.947430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.100773, 24.006660, 16.898207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120214, -0.569679, -0.813028,
		-0.370875, -0.733900, 0.569072,
		-0.920869, 0.369942, -0.123055,
		17.824512, 24.117643, 16.861290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.016012, 23.341030, 16.890825>,  <18.469120, 23.858683, 16.947430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.016012, 23.341030, 16.890825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.807301, 23.635448, 16.718321>,  <17.682074, 23.812099, 16.614819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.807301, 23.635448, 16.718321>,  <18.016012, 23.341030, 16.890825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.807301, 23.635448, 16.718321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019907, -0.515900, -0.856418,
		-0.852847, -0.438277, 0.283839,
		-0.521781, 0.736044, -0.431259,
		17.650766, 23.856262, 16.588943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.421591, 23.078167, 16.669300>,  <18.016012, 23.341030, 16.890825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.421591, 23.078167, 16.669300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.491302, 23.399288, 16.441217>,  <17.533129, 23.591961, 16.304367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.491302, 23.399288, 16.441217>,  <17.421591, 23.078167, 16.669300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.491302, 23.399288, 16.441217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122239, -0.556953, -0.821499,
		-0.977079, 0.212872, 0.001068,
		0.174279, 0.802800, -0.570209,
		17.543587, 23.640129, 16.270155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.005417, 22.950838, 16.049494>,  <17.421591, 23.078167, 16.669300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.005417, 22.950838, 16.049494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.226490, 23.256123, 15.915598>,  <17.359133, 23.439293, 15.835260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.226490, 23.256123, 15.915598>,  <17.005417, 22.950838, 16.049494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.226490, 23.256123, 15.915598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009508, -0.395860, -0.918262,
		-0.833338, 0.510689, -0.211528,
		0.552682, 0.763211, -0.334741,
		17.392294, 23.485086, 15.815176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.726978, 23.231995, 15.404284>,  <17.005417, 22.950838, 16.049494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.726978, 23.231995, 15.404284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.113979, 23.333130, 15.402693>,  <17.346180, 23.393810, 15.401737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.113979, 23.333130, 15.402693>,  <16.726978, 23.231995, 15.404284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.113979, 23.333130, 15.402693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100647, -0.399477, -0.911202,
		-0.231975, 0.881188, -0.411941,
		0.967501, 0.252836, -0.003980,
		17.404230, 23.408981, 15.401499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.812122, 23.626116, 14.728628>,  <16.726978, 23.231995, 15.404284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.812122, 23.626116, 14.728628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.184196, 23.528458, 14.838284>,  <17.407440, 23.469862, 14.904077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.184196, 23.528458, 14.838284>,  <16.812122, 23.626116, 14.728628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.184196, 23.528458, 14.838284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164488, -0.390413, -0.905826,
		0.328181, 0.887677, -0.322997,
		0.930183, -0.244146, 0.274139,
		17.463251, 23.455214, 14.920526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.210939, 24.023664, 14.166229>,  <16.812122, 23.626116, 14.728628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.210939, 24.023664, 14.166229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.437649, 23.752914, 14.354103>,  <17.573675, 23.590464, 14.466827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.437649, 23.752914, 14.354103>,  <17.210939, 24.023664, 14.166229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.437649, 23.752914, 14.354103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336951, -0.329792, -0.881874,
		0.751819, 0.658084, 0.041157,
		0.566774, -0.676877, 0.469686,
		17.607681, 23.549850, 14.495008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.873791, 24.254566, 14.089723>,  <17.210939, 24.023664, 14.166229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.873791, 24.254566, 14.089723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.864410, 23.857441, 14.136671>,  <17.858782, 23.619165, 14.164841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.864410, 23.857441, 14.136671>,  <17.873791, 24.254566, 14.089723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.864410, 23.857441, 14.136671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263454, -0.119392, -0.957255,
		0.964387, 0.008472, 0.264360,
		-0.023453, -0.992811, 0.117372,
		17.857374, 23.559597, 14.171883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.528763, 23.876621, 13.801585>,  <17.873791, 24.254566, 14.089723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.528763, 23.876621, 13.801585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.230537, 23.610229, 13.811422>,  <18.051601, 23.450394, 13.817325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.230537, 23.610229, 13.811422>,  <18.528763, 23.876621, 13.801585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.230537, 23.610229, 13.811422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177251, -0.233736, -0.956007,
		0.642429, -0.708406, 0.292311,
		-0.745565, -0.665979, 0.024594,
		18.006868, 23.410437, 13.818800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.723108, 23.347637, 13.423026>,  <18.528763, 23.876621, 13.801585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.723108, 23.347637, 13.423026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.337814, 23.240284, 13.427950>,  <18.106638, 23.175873, 13.430904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.337814, 23.240284, 13.427950>,  <18.723108, 23.347637, 13.423026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.337814, 23.240284, 13.427950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064680, -0.276125, -0.958943,
		0.260762, -0.922890, 0.283332,
		-0.963234, -0.268382, 0.012311,
		18.048843, 23.159769, 13.431643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.727392, 22.721304, 13.149994>,  <18.723108, 23.347637, 13.423026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.727392, 22.721304, 13.149994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.341557, 22.800896, 13.080744>,  <18.110054, 22.848652, 13.039193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.341557, 22.800896, 13.080744>,  <18.727392, 22.721304, 13.149994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.341557, 22.800896, 13.080744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054043, -0.493361, -0.868144,
		-0.258157, -0.846760, 0.465138,
		-0.964591, 0.198980, -0.173126,
		18.052179, 22.860590, 13.028806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.409346, 22.083380, 12.816831>,  <18.727392, 22.721304, 13.149994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.409346, 22.083380, 12.816831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.175087, 22.397877, 12.737998>,  <18.034531, 22.586575, 12.690699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.175087, 22.397877, 12.737998>,  <18.409346, 22.083380, 12.816831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.175087, 22.397877, 12.737998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178472, -0.362252, -0.914834,
		-0.790674, -0.500597, 0.352474,
		-0.585647, 0.786242, -0.197081,
		17.999393, 22.633749, 12.678874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.766565, 21.857456, 12.702888>,  <18.409346, 22.083380, 12.816831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.766565, 21.857456, 12.702888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.719234, 22.216953, 12.534003>,  <17.690836, 22.432652, 12.432673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.719234, 22.216953, 12.534003>,  <17.766565, 21.857456, 12.702888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.719234, 22.216953, 12.534003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474128, -0.424734, -0.771235,
		-0.872468, 0.108923, 0.476377,
		-0.118328, 0.898742, -0.422210,
		17.683737, 22.486576, 12.407340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.256989, 21.770460, 12.238685>,  <17.766565, 21.857456, 12.702888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.256989, 21.770460, 12.238685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.326958, 22.141003, 12.105260>,  <17.368940, 22.363329, 12.025205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.326958, 22.141003, 12.105260>,  <17.256989, 21.770460, 12.238685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.326958, 22.141003, 12.105260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317601, -0.267586, -0.909685,
		-0.931950, 0.265067, 0.247405,
		0.174925, 0.926357, -0.333562,
		17.379435, 22.418909, 12.005191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.672625, 22.091152, 11.929471>,  <17.256989, 21.770460, 12.238685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.672625, 22.091152, 11.929471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.975471, 22.299061, 11.771174>,  <17.157181, 22.423805, 11.676196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.975471, 22.299061, 11.771174>,  <16.672625, 22.091152, 11.929471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.975471, 22.299061, 11.771174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368888, -0.159808, -0.915633,
		-0.539161, 0.839227, 0.070743,
		0.757118, 0.519769, -0.395742,
		17.202606, 22.454992, 11.652452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.311478, 22.378345, 11.490357>,  <16.672625, 22.091152, 11.929471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.311478, 22.378345, 11.490357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.691795, 22.395000, 11.367550>,  <16.919985, 22.404993, 11.293865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.691795, 22.395000, 11.367550>,  <16.311478, 22.378345, 11.490357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.691795, 22.395000, 11.367550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290127, -0.228073, -0.929413,
		-0.108720, 0.972753, -0.204771,
		0.950792, 0.041637, -0.307018,
		16.977034, 22.407492, 11.275444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.317184, 22.652597, 10.785714>,  <16.311478, 22.378345, 11.490357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.317184, 22.652597, 10.785714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.676579, 22.479576, 10.815714>,  <16.892216, 22.375763, 10.833714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.676579, 22.479576, 10.815714>,  <16.317184, 22.652597, 10.785714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.676579, 22.479576, 10.815714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074411, -0.318423, -0.945024,
		0.432653, 0.843508, -0.318285,
		0.898484, -0.432551, 0.075000,
		16.946123, 22.349812, 10.838214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.716511, 22.877419, 10.057322>,  <16.317184, 22.652597, 10.785714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.716511, 22.877419, 10.057322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.886002, 22.552052, 10.216725>,  <16.987696, 22.356833, 10.312367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.886002, 22.552052, 10.216725>,  <16.716511, 22.877419, 10.057322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.886002, 22.552052, 10.216725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112590, -0.483845, -0.867881,
		0.898766, 0.322876, -0.296600,
		0.423726, -0.813416, 0.398510,
		17.013119, 22.308027, 10.336279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.247101, 22.537283, 9.573311>,  <16.716511, 22.877419, 10.057322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.247101, 22.537283, 9.573311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.152485, 22.248905, 9.833861>,  <17.095716, 22.075878, 9.990191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.152485, 22.248905, 9.833861>,  <17.247101, 22.537283, 9.573311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.152485, 22.248905, 9.833861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205472, -0.618122, -0.758753,
		0.949648, -0.313313, -0.001925,
		-0.236537, -0.720944, 0.651375,
		17.081524, 22.032621, 10.029274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.664919, 21.929146, 9.340220>,  <17.247101, 22.537283, 9.573311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.664919, 21.929146, 9.340220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.345448, 21.825127, 9.557286>,  <17.153765, 21.762714, 9.687526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.345448, 21.825127, 9.557286>,  <17.664919, 21.929146, 9.340220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.345448, 21.825127, 9.557286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209424, -0.725308, -0.655797,
		0.564139, -0.637419, 0.524828,
		-0.798680, -0.260049, 0.542665,
		17.105844, 21.747112, 9.720086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.709944, 21.187445, 9.532125>,  <17.664919, 21.929146, 9.340220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.709944, 21.187445, 9.532125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.327614, 21.296558, 9.575916>,  <17.098215, 21.362026, 9.602192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.327614, 21.296558, 9.575916>,  <17.709944, 21.187445, 9.532125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.327614, 21.296558, 9.575916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291575, -0.832826, -0.470516,
		-0.037172, -0.481653, 0.875574,
		-0.955825, 0.272786, 0.109480,
		17.040867, 21.378395, 9.608760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.308083, 20.615973, 9.884945>,  <17.709944, 21.187445, 9.532125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.308083, 20.615973, 9.884945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.049011, 20.847622, 9.686904>,  <16.893568, 20.986610, 9.568079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.049011, 20.847622, 9.686904>,  <17.308083, 20.615973, 9.884945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.049011, 20.847622, 9.686904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457685, -0.815235, -0.354849,
		-0.609126, -0.003227, 0.793067,
		-0.647680, 0.579122, -0.495103,
		16.854708, 21.021358, 9.538373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.734629, 20.171087, 9.813704>,  <17.308083, 20.615973, 9.884945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.734629, 20.171087, 9.813704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.639107, 20.458897, 9.552857>,  <16.581793, 20.631582, 9.396350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.639107, 20.458897, 9.552857>,  <16.734629, 20.171087, 9.813704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.639107, 20.458897, 9.552857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662089, -0.611896, -0.432690,
		-0.710359, 0.328430, 0.622515,
		-0.238806, 0.719525, -0.652115,
		16.567465, 20.674755, 9.357223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.009665, 20.409819, 9.790030>,  <16.734629, 20.171087, 9.813704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.009665, 20.409819, 9.790030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.151196, 20.478649, 9.422291>,  <16.236115, 20.519947, 9.201648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.151196, 20.478649, 9.422291>,  <16.009665, 20.409819, 9.790030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.151196, 20.478649, 9.422291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678982, -0.628760, -0.379004,
		-0.643266, 0.758321, -0.105636,
		0.353826, 0.172076, -0.919346,
		16.257343, 20.530272, 9.146487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.674520, 19.847925, 9.411731>,  <16.009665, 20.409819, 9.790030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.674520, 19.847925, 9.411731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.604674, 19.454483, 9.429769>,  <15.562767, 19.218418, 9.440591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.604674, 19.454483, 9.429769>,  <15.674520, 19.847925, 9.411731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.604674, 19.454483, 9.429769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313903, 0.099017, 0.944278,
		-0.933260, 0.150728, -0.326046,
		-0.174614, -0.983604, 0.045095,
		15.552290, 19.159401, 9.443297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.049521, 19.813641, 9.564656>,  <15.674520, 19.847925, 9.411731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.049521, 19.813641, 9.564656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.170131, 19.454559, 9.693164>,  <15.242496, 19.239111, 9.770268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.170131, 19.454559, 9.693164>,  <15.049521, 19.813641, 9.564656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.170131, 19.454559, 9.693164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237628, 0.255565, 0.937134,
		-0.923372, -0.358911, -0.136261,
		0.301524, -0.897702, 0.321269,
		15.260588, 19.185249, 9.789545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.479218, 19.429352, 9.920554>,  <15.049521, 19.813641, 9.564656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.479218, 19.429352, 9.920554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.824298, 19.296597, 10.073186>,  <15.031345, 19.216944, 10.164765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.824298, 19.296597, 10.073186>,  <14.479218, 19.429352, 9.920554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.824298, 19.296597, 10.073186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312610, 0.243135, 0.918238,
		-0.397527, -0.911447, 0.106001,
		0.862698, -0.331888, 0.381580,
		15.083107, 19.197031, 10.187660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.311292, 19.199774, 10.666059>,  <14.479218, 19.429352, 9.920554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.311292, 19.199774, 10.666059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.710845, 19.184185, 10.655389>,  <14.950577, 19.174831, 10.648987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.710845, 19.184185, 10.655389>,  <14.311292, 19.199774, 10.666059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.710845, 19.184185, 10.655389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037660, 0.316547, 0.947829,
		-0.028496, -0.947776, 0.317661,
		0.998884, -0.038972, -0.026673,
		15.010510, 19.172493, 10.647387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.413329, 18.779842, 11.239633>,  <14.311292, 19.199774, 10.666059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.413329, 18.779842, 11.239633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.761649, 18.960934, 11.162959>,  <14.970641, 19.069590, 11.116955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.761649, 18.960934, 11.162959>,  <14.413329, 18.779842, 11.239633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.761649, 18.960934, 11.162959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167608, 0.093153, 0.981443,
		0.462184, -0.886768, 0.005236,
		0.870800, 0.452730, -0.191683,
		15.022889, 19.096752, 11.105454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.966010, 18.511408, 11.735085>,  <14.413329, 18.779842, 11.239633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.966010, 18.511408, 11.735085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.107570, 18.867630, 11.620773>,  <15.192505, 19.081364, 11.552187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.107570, 18.867630, 11.620773>,  <14.966010, 18.511408, 11.735085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.107570, 18.867630, 11.620773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045276, 0.288881, 0.956294,
		0.934187, -0.351369, 0.061914,
		0.353898, 0.890554, -0.285778,
		15.213739, 19.134796, 11.535040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.530025, 18.568432, 12.139941>,  <14.966010, 18.511408, 11.735085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.530025, 18.568432, 12.139941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.409545, 18.927773, 12.012042>,  <15.337257, 19.143377, 11.935303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.409545, 18.927773, 12.012042>,  <15.530025, 18.568432, 12.139941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.409545, 18.927773, 12.012042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084732, 0.359208, 0.929403,
		0.949789, 0.252843, -0.184313,
		-0.301200, 0.898354, -0.319748,
		15.319185, 19.197279, 11.916118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.014616, 19.116951, 12.521022>,  <15.530025, 18.568432, 12.139941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.014616, 19.116951, 12.521022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.696372, 19.323765, 12.394733>,  <15.505425, 19.447853, 12.318960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.696372, 19.323765, 12.394733>,  <16.014616, 19.116951, 12.521022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.696372, 19.323765, 12.394733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068992, 0.440435, 0.895130,
		0.601869, 0.733956, -0.314743,
		-0.795609, 0.517036, -0.315721,
		15.457689, 19.478876, 12.300017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.193541, 19.754211, 12.800047>,  <16.014616, 19.116951, 12.521022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.193541, 19.754211, 12.800047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.803382, 19.773399, 12.713977>,  <15.569286, 19.784912, 12.662334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.803382, 19.773399, 12.713977>,  <16.193541, 19.754211, 12.800047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.803382, 19.773399, 12.713977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177003, 0.411445, 0.894082,
		0.131420, 0.910171, -0.392832,
		-0.975397, 0.047968, -0.215175,
		15.510763, 19.787790, 12.649425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.891902, 20.429441, 12.916221>,  <16.193541, 19.754211, 12.800047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.891902, 20.429441, 12.916221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.594453, 20.166443, 12.964762>,  <15.415983, 20.008644, 12.993886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.594453, 20.166443, 12.964762>,  <15.891902, 20.429441, 12.916221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.594453, 20.166443, 12.964762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128234, 0.318385, 0.939248,
		-0.656187, 0.682885, -0.321071,
		-0.743622, -0.657495, 0.121352,
		15.371367, 19.969194, 13.001167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.277946, 20.892866, 13.009363>,  <15.891902, 20.429441, 12.916221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.277946, 20.892866, 13.009363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.193219, 20.523487, 13.137348>,  <15.142384, 20.301859, 13.214139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.193219, 20.523487, 13.137348>,  <15.277946, 20.892866, 13.009363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.193219, 20.523487, 13.137348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399239, 0.380589, 0.834122,
		-0.892044, 0.048939, -0.449292,
		-0.211817, -0.923449, 0.319963,
		15.129674, 20.246452, 13.233337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.656122, 20.967852, 13.303262>,  <15.277946, 20.892866, 13.009363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.656122, 20.967852, 13.303262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.774323, 20.617298, 13.455383>,  <14.845244, 20.406967, 13.546657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.774323, 20.617298, 13.455383>,  <14.656122, 20.967852, 13.303262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.774323, 20.617298, 13.455383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312115, 0.287675, 0.905443,
		-0.902919, -0.386259, -0.188524,
		0.295502, -0.876383, 0.380304,
		14.862974, 20.354383, 13.569474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.149094, 20.576555, 13.581072>,  <14.656122, 20.967852, 13.303262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.149094, 20.576555, 13.581072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.447904, 20.411324, 13.789425>,  <14.627190, 20.312185, 13.914437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.447904, 20.411324, 13.789425>,  <14.149094, 20.576555, 13.581072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.447904, 20.411324, 13.789425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363904, 0.401628, 0.840398,
		-0.556352, -0.817350, 0.149705,
		0.747025, -0.413079, 0.520883,
		14.672011, 20.287399, 13.945690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.896626, 20.398497, 14.182940>,  <14.149094, 20.576555, 13.581072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.896626, 20.398497, 14.182940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.285514, 20.401600, 14.276520>,  <14.518847, 20.403461, 14.332668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.285514, 20.401600, 14.276520>,  <13.896626, 20.398497, 14.182940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.285514, 20.401600, 14.276520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199832, 0.547995, 0.812261,
		-0.121902, -0.836445, 0.534321,
		0.972218, 0.007759, 0.233951,
		14.577179, 20.403927, 14.346704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.926188, 20.359653, 14.831506>,  <13.896626, 20.398497, 14.182940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.926188, 20.359653, 14.831506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.299266, 20.487698, 14.765047>,  <14.523113, 20.564524, 14.725172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.299266, 20.487698, 14.765047>,  <13.926188, 20.359653, 14.831506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.299266, 20.487698, 14.765047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022510, 0.511442, 0.859023,
		0.359958, -0.797468, 0.484226,
		0.932697, 0.320112, -0.166147,
		14.579075, 20.583731, 14.715203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.164133, 20.443707, 15.442205>,  <13.926188, 20.359653, 14.831506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.164133, 20.443707, 15.442205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.453618, 20.641766, 15.249926>,  <14.627309, 20.760601, 15.134558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.453618, 20.641766, 15.249926>,  <14.164133, 20.443707, 15.442205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.453618, 20.641766, 15.249926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163775, 0.553431, 0.816635,
		0.670388, -0.669734, 0.319431,
		0.723711, 0.495147, -0.480699,
		14.670732, 20.790310, 15.105716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.777786, 20.414751, 15.874959>,  <14.164133, 20.443707, 15.442205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.777786, 20.414751, 15.874959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.817159, 20.738998, 15.644062>,  <14.840782, 20.933546, 15.505524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.817159, 20.738998, 15.644062>,  <14.777786, 20.414751, 15.874959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.817159, 20.738998, 15.644062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271883, 0.536085, 0.799182,
		0.957283, -0.235607, -0.167626,
		0.098431, 0.810618, -0.577243,
		14.846688, 20.982183, 15.470889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.479689, 20.598629, 15.934352>,  <14.777786, 20.414751, 15.874959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.479689, 20.598629, 15.934352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.285192, 20.927025, 15.814655>,  <15.168493, 21.124062, 15.742837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.285192, 20.927025, 15.814655>,  <15.479689, 20.598629, 15.934352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.285192, 20.927025, 15.814655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363443, 0.501436, 0.785157,
		0.794656, 0.273019, -0.542202,
		-0.486242, 0.820989, -0.299243,
		15.139318, 21.173321, 15.724882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.000883, 21.127907, 15.981630>,  <15.479689, 20.598629, 15.934352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.000883, 21.127907, 15.981630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.656449, 21.330563, 15.998837>,  <15.449789, 21.452156, 16.009161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.656449, 21.330563, 15.998837>,  <16.000883, 21.127907, 15.981630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.656449, 21.330563, 15.998837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353844, 0.536337, 0.766249,
		0.365141, 0.675026, -0.641102,
		-0.861085, 0.506639, 0.043015,
		15.398124, 21.482553, 16.011742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.257055, 21.803671, 16.007172>,  <16.000883, 21.127907, 15.981630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.257055, 21.803671, 16.007172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.877000, 21.818119, 16.131062>,  <15.648966, 21.826788, 16.205395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.877000, 21.818119, 16.131062>,  <16.257055, 21.803671, 16.007172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.877000, 21.818119, 16.131062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287817, 0.483767, 0.826517,
		-0.119980, 0.874451, -0.470042,
		-0.950140, 0.036120, 0.309725,
		15.591958, 21.828955, 16.223978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.213869, 22.438881, 16.400824>,  <16.257055, 21.803671, 16.007172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.213869, 22.438881, 16.400824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.861711, 22.276989, 16.499697>,  <15.650415, 22.179853, 16.559021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.861711, 22.276989, 16.499697>,  <16.213869, 22.438881, 16.400824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.861711, 22.276989, 16.499697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055582, 0.429564, 0.901324,
		-0.470972, 0.807261, -0.355691,
		-0.880395, -0.404728, 0.247182,
		15.597592, 22.155571, 16.573851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.875368, 22.997831, 16.605209>,  <16.213869, 22.438881, 16.400824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.875368, 22.997831, 16.605209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.723063, 22.662403, 16.761066>,  <15.631680, 22.461147, 16.854582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.723063, 22.662403, 16.761066>,  <15.875368, 22.997831, 16.605209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.723063, 22.662403, 16.761066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018643, 0.414339, 0.909932,
		-0.924485, 0.353731, -0.142131,
		-0.380761, -0.838569, 0.389645,
		15.608835, 22.410833, 16.877960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.479819, 23.345631, 17.008816>,  <15.875368, 22.997831, 16.605209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.479819, 23.345631, 17.008816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.551145, 22.972763, 17.134844>,  <15.593940, 22.749043, 17.210461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.551145, 22.972763, 17.134844>,  <15.479819, 23.345631, 17.008816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.551145, 22.972763, 17.134844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014566, 0.317664, 0.948091,
		-0.983866, -0.173646, 0.043065,
		0.178313, -0.932168, 0.315068,
		15.604638, 22.693113, 17.229364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.975979, 23.060850, 17.572206>,  <15.479819, 23.345631, 17.008816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.975979, 23.060850, 17.572206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.302674, 22.835976, 17.624180>,  <15.498692, 22.701050, 17.655365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.302674, 22.835976, 17.624180>,  <14.975979, 23.060850, 17.572206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.302674, 22.835976, 17.624180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038368, 0.277602, 0.959930,
		-0.575732, -0.779026, 0.248298,
		0.816738, -0.562189, 0.129934,
		15.547696, 22.667318, 17.663160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.888935, 22.824528, 18.241533>,  <14.975979, 23.060850, 17.572206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.888935, 22.824528, 18.241533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.278373, 22.764240, 18.172951>,  <15.512035, 22.728067, 18.131802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.278373, 22.764240, 18.172951>,  <14.888935, 22.824528, 18.241533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.278373, 22.764240, 18.172951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199145, 0.193559, 0.960665,
		-0.111603, -0.969442, 0.218463,
		0.973594, -0.150719, -0.171457,
		15.570451, 22.719025, 18.121513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.172455, 22.348894, 18.806721>,  <14.888935, 22.824528, 18.241533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.172455, 22.348894, 18.806721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.493936, 22.504887, 18.626953>,  <15.686824, 22.598482, 18.519093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.493936, 22.504887, 18.626953>,  <15.172455, 22.348894, 18.806721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.493936, 22.504887, 18.626953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444636, 0.108315, 0.889138,
		0.395425, -0.914430, -0.086346,
		0.803702, 0.389980, -0.449419,
		15.735046, 22.621881, 18.492126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.731077, 21.971422, 19.016052>,  <15.172455, 22.348894, 18.806721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.731077, 21.971422, 19.016052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.853776, 22.334854, 18.902639>,  <15.927395, 22.552914, 18.834593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.853776, 22.334854, 18.902639>,  <15.731077, 21.971422, 19.016052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.853776, 22.334854, 18.902639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455223, 0.121561, 0.882040,
		0.835870, -0.399632, -0.376318,
		0.306746, 0.908580, -0.283531,
		15.945800, 22.607428, 18.817579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.374636, 22.000736, 19.318178>,  <15.731077, 21.971422, 19.016052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.374636, 22.000736, 19.318178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.286297, 22.383507, 19.242788>,  <16.233294, 22.613169, 19.197556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.286297, 22.383507, 19.242788>,  <16.374636, 22.000736, 19.318178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.286297, 22.383507, 19.242788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334867, 0.255895, 0.906852,
		0.916019, 0.137163, -0.376957,
		-0.220848, 0.956924, -0.188474,
		16.220043, 22.670584, 19.186247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.924782, 22.417471, 19.581234>,  <16.374636, 22.000736, 19.318178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.924782, 22.417471, 19.581234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.578075, 22.616898, 19.576332>,  <16.370052, 22.736553, 19.573391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.578075, 22.616898, 19.576332>,  <16.924782, 22.417471, 19.581234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.578075, 22.616898, 19.576332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129580, 0.248870, 0.959829,
		0.481591, 0.830357, -0.280316,
		-0.866764, 0.498569, -0.012256,
		16.318047, 22.766468, 19.572655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.118536, 22.818460, 20.059069>,  <16.924782, 22.417471, 19.581234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.118536, 22.818460, 20.059069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722477, 22.870831, 20.039198>,  <16.484842, 22.902252, 20.027275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722477, 22.870831, 20.039198>,  <17.118536, 22.818460, 20.059069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.722477, 22.870831, 20.039198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006110, 0.314010, 0.949400,
		0.139898, 0.940349, -0.310117,
		-0.990147, 0.130924, -0.049675,
		16.425432, 22.910109, 20.024296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.961020, 23.557652, 20.353363>,  <17.118536, 22.818460, 20.059069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.961020, 23.557652, 20.353363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.634575, 23.327408, 20.373907>,  <16.438707, 23.189262, 20.386232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.634575, 23.327408, 20.373907>,  <16.961020, 23.557652, 20.353363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.634575, 23.327408, 20.373907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164029, 0.315943, 0.934491,
		-0.554127, 0.754225, -0.352262,
		-0.816112, -0.575608, 0.051358,
		16.389742, 23.154726, 20.389315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.395489, 23.932392, 20.778385>,  <16.961020, 23.557652, 20.353363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.395489, 23.932392, 20.778385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.261280, 23.555710, 20.768461>,  <16.180756, 23.329700, 20.762506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.261280, 23.555710, 20.768461>,  <16.395489, 23.932392, 20.778385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.261280, 23.555710, 20.768461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099070, 0.009084, 0.995039,
		-0.936809, 0.336315, -0.096343,
		-0.335521, -0.941706, -0.024808,
		16.160624, 23.273197, 20.761019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.788726, 23.888155, 21.166660>,  <16.395489, 23.932392, 20.778385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.788726, 23.888155, 21.166660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.920609, 23.510525, 21.165083>,  <15.999740, 23.283947, 21.164137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.920609, 23.510525, 21.165083>,  <15.788726, 23.888155, 21.166660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.920609, 23.510525, 21.165083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106833, -0.041461, 0.993412,
		-0.938019, -0.327115, -0.114528,
		0.329708, -0.944075, -0.003945,
		16.019522, 23.227303, 21.163900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.390374, 23.621441, 21.588068>,  <15.788726, 23.888155, 21.166660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.390374, 23.621441, 21.588068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.702737, 23.371624, 21.592670>,  <15.890155, 23.221735, 21.595432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.702737, 23.371624, 21.592670>,  <15.390374, 23.621441, 21.588068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.702737, 23.371624, 21.592670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033972, -0.024067, 0.999133,
		-0.623723, -0.780621, -0.040011,
		0.780907, -0.624541, 0.011508,
		15.937009, 23.184261, 21.596123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.204928, 23.034811, 21.952084>,  <15.390374, 23.621441, 21.588068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.204928, 23.034811, 21.952084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.604217, 23.021935, 21.972153>,  <15.843790, 23.014208, 21.984194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.604217, 23.021935, 21.972153>,  <15.204928, 23.034811, 21.952084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.604217, 23.021935, 21.972153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053341, -0.106484, 0.992883,
		-0.026617, -0.993793, -0.108011,
		0.998221, -0.032189, 0.050175,
		15.903683, 23.012278, 21.987206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.389190, 22.529022, 22.450432>,  <15.204928, 23.034811, 21.952084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.389190, 22.529022, 22.450432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.735394, 22.728096, 22.427811>,  <15.943117, 22.847540, 22.414238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.735394, 22.728096, 22.427811>,  <15.389190, 22.529022, 22.450432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.735394, 22.728096, 22.427811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110314, -0.079267, 0.990731,
		0.488589, -0.863728, -0.123509,
		0.865512, 0.497685, -0.056552,
		15.995049, 22.877401, 22.410845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.726972, 22.185591, 22.859840>,  <15.389190, 22.529022, 22.450432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.726972, 22.185591, 22.859840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.919057, 22.534103, 22.819313>,  <16.034307, 22.743210, 22.794996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.919057, 22.534103, 22.819313>,  <15.726972, 22.185591, 22.859840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.919057, 22.534103, 22.819313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170462, 0.020608, 0.985149,
		0.860429, -0.490353, -0.138623,
		0.480214, 0.871280, -0.101318,
		16.063122, 22.795488, 22.788918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.430079, 22.160891, 23.148674>,  <15.726972, 22.185591, 22.859840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.430079, 22.160891, 23.148674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.299217, 22.537922, 23.175552>,  <16.220701, 22.764141, 23.191679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.299217, 22.537922, 23.175552>,  <16.430079, 22.160891, 23.148674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.299217, 22.537922, 23.175552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136935, -0.023073, 0.990312,
		0.934997, 0.333186, -0.121523,
		-0.327154, 0.942579, 0.067198,
		16.201071, 22.820696, 23.195711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.211138, 21.943890, 23.220818>,  <16.430079, 22.160891, 23.148674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.211138, 21.943890, 23.220818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.221920, 21.664288, 23.506660>,  <17.228390, 21.496527, 23.678165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.221920, 21.664288, 23.506660>,  <17.211138, 21.943890, 23.220818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.221920, 21.664288, 23.506660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470962, -0.639438, -0.607712,
		0.881742, -0.320171, -0.346443,
		0.026957, -0.699006, 0.714607,
		17.230007, 21.454586, 23.721043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.471758, 21.312513, 22.918339>,  <17.211138, 21.943890, 23.220818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.471758, 21.312513, 22.918339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.259674, 21.211891, 23.242216>,  <17.132423, 21.151518, 23.436543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.259674, 21.211891, 23.242216>,  <17.471758, 21.312513, 22.918339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.259674, 21.211891, 23.242216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463115, -0.714008, -0.525088,
		0.710213, -0.653387, 0.262074,
		-0.530208, -0.251554, 0.809691,
		17.100611, 21.136425, 23.485123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.469040, 20.557577, 23.065716>,  <17.471758, 21.312513, 22.918339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.469040, 20.557577, 23.065716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.126759, 20.675762, 23.235643>,  <16.921389, 20.746674, 23.337601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.126759, 20.675762, 23.235643>,  <17.469040, 20.557577, 23.065716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.126759, 20.675762, 23.235643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516692, -0.532669, -0.670293,
		0.028244, -0.793075, 0.608469,
		-0.855705, 0.295460, 0.424820,
		16.870047, 20.764400, 23.363089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.096418, 19.944738, 23.020512>,  <17.469040, 20.557577, 23.065716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.096418, 19.944738, 23.020512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.803192, 20.201355, 23.110880>,  <16.627256, 20.355326, 23.165100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.803192, 20.201355, 23.110880>,  <17.096418, 19.944738, 23.020512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.803192, 20.201355, 23.110880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606161, -0.465554, -0.644847,
		-0.308518, -0.609660, 0.730159,
		-0.733066, 0.641541, 0.225920,
		16.583273, 20.393818, 23.178656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.540314, 19.562319, 23.346569>,  <17.096418, 19.944738, 23.020512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.540314, 19.562319, 23.346569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.424023, 19.901768, 23.169790>,  <16.354248, 20.105436, 23.063723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.424023, 19.901768, 23.169790>,  <16.540314, 19.562319, 23.346569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.424023, 19.901768, 23.169790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531118, -0.527337, -0.663196,
		-0.795859, 0.041917, 0.604030,
		-0.290728, 0.848622, -0.441949,
		16.336803, 20.156355, 23.037205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.753153, 19.537903, 23.233576>,  <16.540314, 19.562319, 23.346569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.753153, 19.537903, 23.233576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.920938, 19.796688, 22.978863>,  <16.021608, 19.951960, 22.826035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.920938, 19.796688, 22.978863>,  <15.753153, 19.537903, 23.233576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.920938, 19.796688, 22.978863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551202, -0.375834, -0.744933,
		-0.721268, 0.663466, 0.198959,
		0.419463, 0.646963, -0.636781,
		16.046776, 19.990778, 22.787828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.281636, 19.499413, 22.713238>,  <15.753153, 19.537903, 23.233576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.281636, 19.499413, 22.713238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.579328, 19.690483, 22.526497>,  <15.757942, 19.805126, 22.414454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.579328, 19.690483, 22.526497>,  <15.281636, 19.499413, 22.713238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.579328, 19.690483, 22.526497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448625, -0.160329, -0.879221,
		-0.494834, 0.863782, 0.094976,
		0.744228, 0.477677, -0.466851,
		15.802596, 19.833786, 22.386442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.966160, 19.876610, 22.001001>,  <15.281636, 19.499413, 22.713238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.966160, 19.876610, 22.001001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.363267, 19.849598, 21.961296>,  <15.601531, 19.833391, 21.937473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.363267, 19.849598, 21.961296>,  <14.966160, 19.876610, 22.001001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.363267, 19.849598, 21.961296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112635, -0.237756, -0.964772,
		0.041553, 0.968975, -0.243643,
		0.992767, -0.067532, -0.099261,
		15.661098, 19.829338, 21.931519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.151178, 20.216568, 21.370108>,  <14.966160, 19.876610, 22.001001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.151178, 20.216568, 21.370108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.468051, 19.981224, 21.434956>,  <15.658175, 19.840017, 21.473864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.468051, 19.981224, 21.434956>,  <15.151178, 20.216568, 21.370108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.468051, 19.981224, 21.434956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041591, -0.317073, -0.947489,
		0.608868, 0.743840, -0.275649,
		0.792181, -0.588360, 0.162119,
		15.705706, 19.804716, 21.483591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.772293, 20.417646, 20.935198>,  <15.151178, 20.216568, 21.370108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.772293, 20.417646, 20.935198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.805692, 20.028755, 21.022650>,  <15.825730, 19.795420, 21.075121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.805692, 20.028755, 21.022650>,  <15.772293, 20.417646, 20.935198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.805692, 20.028755, 21.022650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131140, -0.228206, -0.964740,
		0.987841, 0.051881, -0.146552,
		0.083495, -0.972229, 0.218628,
		15.830740, 19.737087, 21.088238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.268917, 20.087820, 20.489706>,  <15.772293, 20.417646, 20.935198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.268917, 20.087820, 20.489706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.073215, 19.774906, 20.643930>,  <15.955794, 19.587158, 20.736465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.073215, 19.774906, 20.643930>,  <16.268917, 20.087820, 20.489706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.073215, 19.774906, 20.643930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020586, -0.452320, -0.891618,
		0.871898, -0.428292, 0.237404,
		-0.489255, -0.782287, 0.385560,
		15.926439, 19.540220, 20.759598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670166, 19.444204, 20.376724>,  <16.268917, 20.087820, 20.489706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.670166, 19.444204, 20.376724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.289085, 19.334953, 20.430035>,  <16.060436, 19.269403, 20.462021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.289085, 19.334953, 20.430035>,  <16.670166, 19.444204, 20.376724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.289085, 19.334953, 20.430035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030177, -0.521385, -0.852788,
		0.302405, -0.808431, 0.504966,
		-0.952702, -0.273125, 0.133274,
		16.003275, 19.253016, 20.470016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.663185, 18.697256, 20.165255>,  <16.670166, 19.444204, 20.376724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.663185, 18.697256, 20.165255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.293339, 18.849602, 20.163065>,  <16.071432, 18.941010, 20.161751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.293339, 18.849602, 20.163065>,  <16.663185, 18.697256, 20.165255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.293339, 18.849602, 20.163065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155111, -0.389602, -0.907828,
		-0.347887, -0.838544, 0.419308,
		-0.924617, 0.380860, -0.005470,
		16.015955, 18.963861, 20.161423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.223724, 18.126127, 20.009714>,  <16.663185, 18.697256, 20.165255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.223724, 18.126127, 20.009714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.043941, 18.467434, 19.903938>,  <15.936072, 18.672218, 19.840473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.043941, 18.467434, 19.903938>,  <16.223724, 18.126127, 20.009714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.043941, 18.467434, 19.903938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249914, -0.404309, -0.879817,
		-0.857632, -0.329352, 0.394961,
		-0.449456, 0.853265, -0.264439,
		15.909104, 18.723413, 19.824606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.732962, 17.902042, 19.457907>,  <16.223724, 18.126127, 20.009714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.732962, 17.902042, 19.457907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.720412, 18.301739, 19.448654>,  <15.712883, 18.541557, 19.443102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.720412, 18.301739, 19.448654>,  <15.732962, 17.902042, 19.457907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.720412, 18.301739, 19.448654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244233, -0.030105, -0.969249,
		-0.969209, -0.024758, 0.244992,
		-0.031373, 0.999240, -0.023132,
		15.711000, 18.601511, 19.441715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.041023, 18.174356, 19.158405>,  <15.732962, 17.902042, 19.457907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.041023, 18.174356, 19.158405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.306724, 18.467770, 19.100857>,  <15.466144, 18.643818, 19.066328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.306724, 18.467770, 19.100857>,  <15.041023, 18.174356, 19.158405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.306724, 18.467770, 19.100857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332136, 0.117203, -0.935921,
		-0.669668, 0.669471, 0.321485,
		0.664252, 0.733533, -0.143869,
		15.506000, 18.687830, 19.057695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.631643, 18.721819, 18.905273>,  <15.041023, 18.174356, 19.158405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.631643, 18.721819, 18.905273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.017728, 18.766026, 18.810488>,  <15.249378, 18.792549, 18.753616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.017728, 18.766026, 18.810488>,  <14.631643, 18.721819, 18.905273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.017728, 18.766026, 18.810488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243196, 0.046602, -0.968857,
		-0.096032, 0.992781, 0.071858,
		0.965212, 0.110517, -0.236965,
		15.307291, 18.799181, 18.739399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.610476, 19.147953, 18.346066>,  <14.631643, 18.721819, 18.905273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.610476, 19.147953, 18.346066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.983932, 19.005833, 18.327805>,  <15.208005, 18.920561, 18.316849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.983932, 19.005833, 18.327805>,  <14.610476, 19.147953, 18.346066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.983932, 19.005833, 18.327805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015336, 0.166967, -0.985843,
		0.357891, 0.919720, 0.161336,
		0.933637, -0.355299, -0.045651,
		15.264023, 18.899242, 18.314110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.899818, 19.504351, 17.819677>,  <14.610476, 19.147953, 18.346066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.899818, 19.504351, 17.819677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.160043, 19.201065, 17.837034>,  <15.316177, 19.019094, 17.847448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.160043, 19.201065, 17.837034>,  <14.899818, 19.504351, 17.819677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.160043, 19.201065, 17.837034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027838, -0.080903, -0.996333,
		0.758945, 0.646966, -0.073740,
		0.650560, -0.758214, 0.043390,
		15.355210, 18.973600, 17.850052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.598321, 19.553902, 17.395063>,  <14.899818, 19.504351, 17.819677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.598321, 19.553902, 17.395063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.541556, 19.161839, 17.450418>,  <15.507498, 18.926601, 17.483631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.541556, 19.161839, 17.450418>,  <15.598321, 19.553902, 17.395063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.541556, 19.161839, 17.450418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081378, -0.150880, -0.985197,
		0.986529, -0.128549, 0.101175,
		-0.141912, -0.980158, 0.138387,
		15.498982, 18.867790, 17.491934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.998717, 19.283384, 16.868727>,  <15.598321, 19.553902, 17.395063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.998717, 19.283384, 16.868727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.742293, 18.995548, 16.975483>,  <15.588439, 18.822845, 17.039536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.742293, 18.995548, 16.975483>,  <15.998717, 19.283384, 16.868727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.742293, 18.995548, 16.975483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055190, -0.303619, -0.951194,
		0.765504, -0.624501, 0.154924,
		-0.641059, -0.719592, 0.266888,
		15.549975, 18.779671, 17.055550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.273245, 18.572491, 16.575922>,  <15.998717, 19.283384, 16.868727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.273245, 18.572491, 16.575922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.875575, 18.555431, 16.615517>,  <15.636973, 18.545197, 16.639273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.875575, 18.555431, 16.615517>,  <16.273245, 18.572491, 16.575922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.875575, 18.555431, 16.615517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073321, -0.405514, -0.911143,
		0.078999, -0.913093, 0.400025,
		-0.994175, -0.042649, 0.098985,
		15.577323, 18.542637, 16.645212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.164263, 18.110569, 16.179832>,  <16.273245, 18.572491, 16.575922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.164263, 18.110569, 16.179832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.795112, 18.253803, 16.236507>,  <15.573622, 18.339743, 16.270512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.795112, 18.253803, 16.236507>,  <16.164263, 18.110569, 16.179832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.795112, 18.253803, 16.236507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246236, -0.265826, -0.932043,
		-0.296095, -0.895045, 0.333499,
		-0.922874, 0.358092, 0.141682,
		15.518249, 18.361229, 16.279013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.838805, 17.642509, 15.985441>,  <16.164263, 18.110569, 16.179832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.838805, 17.642509, 15.985441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.565562, 17.933792, 15.963234>,  <15.401616, 18.108561, 15.949909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.565562, 17.933792, 15.963234>,  <15.838805, 17.642509, 15.985441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.565562, 17.933792, 15.963234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360796, -0.402591, -0.841277,
		-0.634973, -0.554651, 0.537746,
		-0.683107, 0.728205, -0.055518,
		15.360630, 18.152254, 15.946579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.284037, 17.296103, 15.756402>,  <15.838805, 17.642509, 15.985441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.284037, 17.296103, 15.756402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.209764, 17.679195, 15.668516>,  <15.165199, 17.909050, 15.615785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.209764, 17.679195, 15.668516>,  <15.284037, 17.296103, 15.756402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.209764, 17.679195, 15.668516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533477, -0.286037, -0.795981,
		-0.825181, -0.030588, 0.564039,
		-0.185683, 0.957730, -0.219714,
		15.154058, 17.966515, 15.602602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.504574, 17.448463, 15.602029>,  <15.284037, 17.296103, 15.756402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.504574, 17.448463, 15.602029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.684381, 17.752934, 15.415031>,  <14.792264, 17.935616, 15.302833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.684381, 17.752934, 15.415031>,  <14.504574, 17.448463, 15.602029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.684381, 17.752934, 15.415031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471914, -0.241994, -0.847783,
		-0.758440, 0.601709, 0.250429,
		0.449516, 0.761174, -0.467493,
		14.819236, 17.981285, 15.274783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.986761, 17.855074, 15.359445>,  <14.504574, 17.448463, 15.602029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.986761, 17.855074, 15.359445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.299998, 17.926235, 15.121078>,  <14.487941, 17.968931, 14.978059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.299998, 17.926235, 15.121078>,  <13.986761, 17.855074, 15.359445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.299998, 17.926235, 15.121078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573216, -0.165192, -0.802580,
		-0.241220, 0.970084, -0.027385,
		0.783094, 0.177901, -0.595915,
		14.534926, 17.979605, 14.942304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.682172, 18.046490, 14.623006>,  <13.986761, 17.855074, 15.359445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.682172, 18.046490, 14.623006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.062951, 17.963215, 14.533159>,  <14.291418, 17.913250, 14.479251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.062951, 17.963215, 14.533159>,  <13.682172, 18.046490, 14.623006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.062951, 17.963215, 14.533159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291550, -0.391453, -0.872791,
		0.093778, 0.896338, -0.433340,
		0.951948, -0.208189, -0.224618,
		14.348536, 17.900759, 14.465774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.686134, 18.120033, 13.878496>,  <13.682172, 18.046490, 14.623006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.686134, 18.120033, 13.878496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.018243, 17.916824, 13.970201>,  <14.217508, 17.794899, 14.025225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.018243, 17.916824, 13.970201>,  <13.686134, 18.120033, 13.878496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.018243, 17.916824, 13.970201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095728, -0.535205, -0.839280,
		0.549076, 0.674884, -0.492998,
		0.830272, -0.508023, 0.229263,
		14.267324, 17.764418, 14.038980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.161442, 18.176500, 13.296292>,  <13.686134, 18.120033, 13.878496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.161442, 18.176500, 13.296292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.241250, 17.833916, 13.486729>,  <14.289135, 17.628365, 13.600990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.241250, 17.833916, 13.486729>,  <14.161442, 18.176500, 13.296292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.241250, 17.833916, 13.486729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264185, -0.514884, -0.815537,
		0.943609, 0.036940, -0.328995,
		0.199520, -0.856463, 0.476091,
		14.301106, 17.576977, 13.629556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.551480, 17.743732, 12.815955>,  <14.161442, 18.176500, 13.296292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.551480, 17.743732, 12.815955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.427182, 17.476154, 13.086052>,  <14.352604, 17.315607, 13.248110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.427182, 17.476154, 13.086052>,  <14.551480, 17.743732, 12.815955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.427182, 17.476154, 13.086052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003604, -0.709578, -0.704618,
		0.950487, -0.221389, 0.218087,
		-0.310745, -0.668944, 0.675242,
		14.333959, 17.275471, 13.288625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.032158, 17.061850, 12.760585>,  <14.551480, 17.743732, 12.815955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.032158, 17.061850, 12.760585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.684434, 16.964390, 12.932602>,  <14.475800, 16.905914, 13.035812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.684434, 16.964390, 12.932602>,  <15.032158, 17.061850, 12.760585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.684434, 16.964390, 12.932602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056162, -0.815732, -0.575697,
		0.491068, -0.524611, 0.695440,
		-0.869309, -0.243649, 0.430043,
		14.423641, 16.891294, 13.061615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.089952, 16.395477, 13.051856>,  <15.032158, 17.061850, 12.760585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.089952, 16.395477, 13.051856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.704228, 16.467167, 12.973894>,  <14.472795, 16.510180, 12.927117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.704228, 16.467167, 12.973894>,  <15.089952, 16.395477, 13.051856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.704228, 16.467167, 12.973894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002909, -0.728885, -0.684630,
		-0.264764, -0.660762, 0.702349,
		-0.964309, 0.179222, -0.194905,
		14.414936, 16.520933, 12.915422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.838974, 15.761895, 12.900350>,  <15.089952, 16.395477, 13.051856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.838974, 15.761895, 12.900350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.559003, 16.004681, 12.749779>,  <14.391021, 16.150352, 12.659436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.559003, 16.004681, 12.749779>,  <14.838974, 15.761895, 12.900350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.559003, 16.004681, 12.749779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024031, -0.546766, -0.836940,
		-0.713811, -0.576751, 0.397281,
		-0.699926, 0.606964, -0.376428,
		14.349025, 16.186769, 12.636850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.438784, 15.352273, 12.529201>,  <14.838974, 15.761895, 12.900350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.438784, 15.352273, 12.529201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.316245, 15.709259, 12.396743>,  <14.242722, 15.923450, 12.317268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.316245, 15.709259, 12.396743>,  <14.438784, 15.352273, 12.529201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.316245, 15.709259, 12.396743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067242, -0.367288, -0.927673,
		-0.949542, -0.261923, 0.172529,
		-0.306347, 0.892466, -0.331143,
		14.224340, 15.976999, 12.297400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.861053, 15.221194, 12.255756>,  <14.438784, 15.352273, 12.529201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.861053, 15.221194, 12.255756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.016410, 15.543194, 12.076367>,  <14.109624, 15.736394, 11.968734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.016410, 15.543194, 12.076367>,  <13.861053, 15.221194, 12.255756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.016410, 15.543194, 12.076367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153137, -0.423528, -0.892845,
		-0.908681, 0.415452, -0.041220,
		0.388392, 0.804999, -0.448473,
		14.132928, 15.784694, 11.941826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.343816, 15.449972, 11.826065>,  <13.861053, 15.221194, 12.255756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.343816, 15.449972, 11.826065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.678414, 15.605549, 11.671664>,  <13.879173, 15.698895, 11.579023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.678414, 15.605549, 11.671664>,  <13.343816, 15.449972, 11.826065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.678414, 15.605549, 11.671664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184387, -0.463558, -0.866669,
		-0.516019, 0.796139, -0.316048,
		0.836496, 0.388943, -0.386003,
		13.929363, 15.722232, 11.555863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.158941, 15.558044, 11.156537>,  <13.343816, 15.449972, 11.826065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.158941, 15.558044, 11.156537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.557965, 15.579762, 11.138986>,  <13.797379, 15.592792, 11.128455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.557965, 15.579762, 11.138986>,  <13.158941, 15.558044, 11.156537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.557965, 15.579762, 11.138986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024036, -0.322986, -0.946099,
		-0.065539, 0.944845, -0.320893,
		0.997561, 0.054293, -0.043878,
		13.857233, 15.596049, 11.125822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.240742, 15.765676, 10.462206>,  <13.158941, 15.558044, 11.156537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.240742, 15.765676, 10.462206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.614264, 15.651203, 10.548096>,  <13.838378, 15.582520, 10.599629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.614264, 15.651203, 10.548096>,  <13.240742, 15.765676, 10.462206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.614264, 15.651203, 10.548096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136081, -0.270955, -0.952925,
		0.330889, 0.919067, -0.214075,
		0.933806, -0.286180, 0.214724,
		13.894406, 15.565349, 10.612513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.630075, 16.112354, 9.969779>,  <13.240742, 15.765676, 10.462206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.630075, 16.112354, 9.969779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.827683, 15.787521, 10.094016>,  <13.946248, 15.592622, 10.168558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.827683, 15.787521, 10.094016>,  <13.630075, 16.112354, 9.969779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.827683, 15.787521, 10.094016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175503, -0.256735, -0.950413,
		0.851554, 0.524033, 0.015691,
		0.494019, -0.812082, 0.310593,
		13.975889, 15.543897, 10.187194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.353324, 16.145065, 9.664387>,  <13.630075, 16.112354, 9.969779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.353324, 16.145065, 9.664387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.154422, 15.804726, 9.732258>,  <14.035081, 15.600521, 9.772981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.154422, 15.804726, 9.732258>,  <14.353324, 16.145065, 9.664387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.154422, 15.804726, 9.732258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017563, -0.185658, -0.982458,
		0.867427, -0.491512, 0.077376,
		-0.497255, -0.850851, 0.169677,
		14.005245, 15.549470, 9.783161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.687709, 15.497837, 9.414437>,  <14.353324, 16.145065, 9.664387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.687709, 15.497837, 9.414437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.289227, 15.520859, 9.388316>,  <14.050138, 15.534672, 9.372643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.289227, 15.520859, 9.388316>,  <14.687709, 15.497837, 9.414437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.289227, 15.520859, 9.388316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053596, -0.185564, -0.981170,
		-0.068586, -0.980945, 0.181775,
		-0.996204, 0.057552, -0.065302,
		13.990366, 15.538125, 9.368726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.490606, 14.947595, 9.048756>,  <14.687709, 15.497837, 9.414437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.490606, 14.947595, 9.048756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.201699, 15.219406, 8.997270>,  <14.028355, 15.382493, 8.966378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.201699, 15.219406, 8.997270>,  <14.490606, 14.947595, 9.048756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.201699, 15.219406, 8.997270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010160, -0.175664, -0.984398,
		-0.691538, -0.712307, 0.119972,
		-0.722268, 0.679530, -0.128715,
		13.985019, 15.423265, 8.958655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.809511, 14.670893, 8.703707>,  <14.490606, 14.947595, 9.048756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.809511, 14.670893, 8.703707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.903604, 15.051334, 8.623639>,  <13.960059, 15.279599, 8.575599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.903604, 15.051334, 8.623639>,  <13.809511, 14.670893, 8.703707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.903604, 15.051334, 8.623639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039417, -0.215113, -0.975793,
		-0.971140, 0.221647, -0.088091,
		0.235231, 0.951104, -0.200168,
		13.974173, 15.336665, 8.563588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.282190, 15.032280, 8.135933>,  <13.809511, 14.670893, 8.703707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.282190, 15.032280, 8.135933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.639792, 15.211178, 8.146729>,  <13.854354, 15.318517, 8.153208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.639792, 15.211178, 8.146729>,  <13.282190, 15.032280, 8.135933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.639792, 15.211178, 8.146729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024610, 0.011136, -0.999635,
		-0.447382, 0.894343, -0.001051,
		0.894005, 0.447244, 0.026992,
		13.907993, 15.345351, 8.154827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.344326, 15.560793, 7.656180>,  <13.282190, 15.032280, 8.135933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.344326, 15.560793, 7.656180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.709403, 15.417538, 7.734900>,  <13.928450, 15.331585, 7.782131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.709403, 15.417538, 7.734900>,  <13.344326, 15.560793, 7.656180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.709403, 15.417538, 7.734900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271118, 0.170350, -0.947352,
		0.305758, 0.917997, 0.252574,
		0.912692, -0.358138, 0.196800,
		13.983211, 15.310096, 7.793940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.920539, 15.975072, 7.414400>,  <13.344326, 15.560793, 7.656180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.920539, 15.975072, 7.414400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.071015, 15.604603, 7.424861>,  <14.161302, 15.382321, 7.431138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.071015, 15.604603, 7.424861>,  <13.920539, 15.975072, 7.414400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.071015, 15.604603, 7.424861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322086, 0.104254, -0.940953,
		0.868758, 0.362402, 0.337527,
		0.376192, -0.926173, 0.026153,
		14.183873, 15.326751, 7.432707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.633334, 15.954954, 7.121195>,  <13.920539, 15.975072, 7.414400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.633334, 15.954954, 7.121195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.468713, 15.592232, 7.084699>,  <14.369940, 15.374598, 7.062801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.468713, 15.592232, 7.084699>,  <14.633334, 15.954954, 7.121195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.468713, 15.592232, 7.084699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340524, -0.060137, -0.938310,
		0.845380, -0.417234, 0.333539,
		-0.411553, -0.906807, -0.091240,
		14.345247, 15.320189, 7.057327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.932884, 15.270466, 6.832781>,  <14.633334, 15.954954, 7.121195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.932884, 15.270466, 6.832781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.059115, 15.560650, 6.588120>,  <15.134854, 15.734760, 6.441324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.059115, 15.560650, 6.588120>,  <14.932884, 15.270466, 6.832781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.059115, 15.560650, 6.588120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771733, 0.571280, 0.279407,
		0.552121, 0.383851, 0.740149,
		0.315581, 0.725464, -0.611646,
		15.153789, 15.778288, 6.404625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.476280, 14.643372, 6.743863>,  <14.932884, 15.270466, 6.832781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.476280, 14.643372, 6.743863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.303041, 14.873371, 6.466216>,  <14.199097, 15.011371, 6.299628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.303041, 14.873371, 6.466216>,  <14.476280, 14.643372, 6.743863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.303041, 14.873371, 6.466216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791654, -0.610851, -0.012065,
		-0.430940, 0.544276, 0.719760,
		-0.433099, 0.575000, -0.694118,
		14.173111, 15.045871, 6.257981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.889053, 14.899797, 7.029933>,  <14.476280, 14.643372, 6.743863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.889053, 14.899797, 7.029933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.844682, 14.941368, 6.634582>,  <13.818059, 14.966311, 6.397370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.844682, 14.941368, 6.634582>,  <13.889053, 14.899797, 7.029933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.844682, 14.941368, 6.634582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923796, -0.377499, 0.063987,
		-0.366463, 0.920159, 0.137883,
		-0.110929, 0.103927, -0.988380,
		13.811403, 14.972547, 6.338068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.319852, 15.306398, 6.881904>,  <13.889053, 14.899797, 7.029933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.319852, 15.306398, 6.881904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.376948, 15.010815, 6.618522>,  <13.411206, 14.833465, 6.460492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.376948, 15.010815, 6.618522>,  <13.319852, 15.306398, 6.881904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.376948, 15.010815, 6.618522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988643, -0.074856, -0.130312,
		0.047006, 0.669579, -0.741252,
		0.142741, -0.738959, -0.658456,
		13.419770, 14.789127, 6.420985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.054375, 15.584636, 6.243761>,  <13.319852, 15.306398, 6.881904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.054375, 15.584636, 6.243761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.037381, 15.185287, 6.258997>,  <13.027184, 14.945679, 6.268138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.037381, 15.185287, 6.258997>,  <13.054375, 15.584636, 6.243761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.037381, 15.185287, 6.258997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999088, 0.042619, 0.002729,
		-0.004348, -0.037939, -0.999271,
		-0.042485, -0.998371, 0.038090,
		13.024636, 14.885777, 6.270424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.754631, 15.285077, 5.505068>,  <13.054375, 15.584636, 6.243761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.754631, 15.285077, 5.505068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.637626, 15.030304, 5.790376>,  <12.567423, 14.877439, 5.961560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.637626, 15.030304, 5.790376>,  <12.754631, 15.285077, 5.505068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.637626, 15.030304, 5.790376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955271, 0.160686, -0.248270,
		0.043519, -0.753987, -0.655446,
		-0.292514, -0.636933, 0.713269,
		12.549871, 14.839224, 6.004356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.505248, 15.740209, 4.924163>,  <12.754631, 15.285077, 5.505068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.505248, 15.740209, 4.924163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.603927, 15.912331, 4.576835>,  <12.663134, 16.015604, 4.368439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.603927, 15.912331, 4.576835>,  <12.505248, 15.740209, 4.924163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.603927, 15.912331, 4.576835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264071, 0.891955, 0.366992,
		0.932420, 0.138762, 0.333674,
		0.246697, 0.430304, -0.868319,
		12.677936, 16.041422, 4.316339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.752496, 16.485941, 5.047322>,  <12.505248, 15.740209, 4.924163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.752496, 16.485941, 5.047322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.652312, 16.466343, 4.660568>,  <12.592202, 16.454584, 4.428515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.652312, 16.466343, 4.660568>,  <12.752496, 16.485941, 5.047322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.652312, 16.466343, 4.660568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132855, 0.991010, -0.015803,
		0.958968, 0.124498, -0.254716,
		-0.250459, -0.048995, -0.966887,
		12.577174, 16.451645, 4.370502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.992716, 16.668039, 4.887449>,  <12.752496, 16.485941, 5.047322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.992716, 16.668039, 4.887449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.184321, 16.715664, 4.539571>,  <12.299285, 16.744238, 4.330844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.184321, 16.715664, 4.539571>,  <11.992716, 16.668039, 4.887449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.184321, 16.715664, 4.539571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253266, 0.929880, 0.266795,
		0.840477, -0.348063, 0.415272,
		0.479015, 0.119061, -0.869695,
		12.328026, 16.751383, 4.278663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.986469, 17.391584, 4.514975>,  <11.992716, 16.668039, 4.887449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.986469, 17.391584, 4.514975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.027995, 17.423634, 4.118429>,  <12.052911, 17.442863, 3.880501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.027995, 17.423634, 4.118429>,  <11.986469, 17.391584, 4.514975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.027995, 17.423634, 4.118429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430278, 0.895030, 0.117396,
		0.896706, -0.438750, 0.058448,
		0.103820, 0.080120, -0.991364,
		12.059139, 17.447670, 3.821019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.688657, 17.609779, 4.426560>,  <11.986469, 17.391584, 4.514975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.688657, 17.609779, 4.426560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.465930, 17.685074, 4.102950>,  <12.332294, 17.730249, 3.908783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.465930, 17.685074, 4.102950>,  <12.688657, 17.609779, 4.426560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.465930, 17.685074, 4.102950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376357, 0.925443, -0.043709,
		0.740479, -0.328820, -0.586146,
		-0.556817, 0.188234, -0.809026,
		12.298884, 17.741545, 3.860242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.197968, 17.865036, 3.888630>,  <12.688657, 17.609779, 4.426560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.197968, 17.865036, 3.888630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.815656, 17.981380, 3.871280>,  <12.586268, 18.051188, 3.860869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.815656, 17.981380, 3.871280>,  <13.197968, 17.865036, 3.888630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.815656, 17.981380, 3.871280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281174, 0.947061, 0.154970,
		0.086155, 0.135921, -0.986966,
		-0.955782, 0.290861, -0.043377,
		12.528921, 18.068638, 3.858267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.520764, 17.453457, 3.295343>,  <13.197968, 17.865036, 3.888630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.520764, 17.453457, 3.295343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.702138, 17.523182, 3.644975>,  <13.810963, 17.565018, 3.854753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.702138, 17.523182, 3.644975>,  <13.520764, 17.453457, 3.295343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.702138, 17.523182, 3.644975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135492, 0.982772, -0.125701,
		-0.880931, -0.061433, 0.469241,
		0.453434, 0.174313, 0.874078,
		13.838168, 17.575476, 3.907198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.848149, 18.053856, 3.571918>,  <13.520764, 17.453457, 3.295343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.848149, 18.053856, 3.571918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.771169, 18.221718, 3.217100>,  <13.724980, 18.322435, 3.004208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.771169, 18.221718, 3.217100>,  <13.848149, 18.053856, 3.571918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.771169, 18.221718, 3.217100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410497, 0.786626, 0.461207,
		0.891322, 0.452889, 0.020881,
		-0.192450, 0.419655, -0.887047,
		13.713433, 18.347614, 2.950986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.588610, 18.165203, 3.642124>,  <13.848149, 18.053856, 3.571918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.588610, 18.165203, 3.642124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.763455, 17.990891, 3.956837>,  <14.868362, 17.886303, 4.145665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.763455, 17.990891, 3.956837>,  <14.588610, 18.165203, 3.642124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.763455, 17.990891, 3.956837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277748, -0.766621, -0.578921,
		0.855446, 0.471581, -0.214063,
		0.437114, -0.435780, 0.786783,
		14.894589, 17.860157, 4.192872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.233363, 17.883648, 3.402420>,  <14.588610, 18.165203, 3.642124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.233363, 17.883648, 3.402420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.144525, 17.703255, 3.748203>,  <15.091222, 17.595018, 3.955673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.144525, 17.703255, 3.748203>,  <15.233363, 17.883648, 3.402420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.144525, 17.703255, 3.748203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282356, -0.878359, -0.385695,
		0.933246, 0.158423, 0.322419,
		-0.222096, -0.450985, 0.864457,
		15.077895, 17.567959, 4.007540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.768378, 17.453211, 3.681446>,  <15.233363, 17.883648, 3.402420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.768378, 17.453211, 3.681446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.403348, 17.313618, 3.766691>,  <15.184330, 17.229862, 3.817839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.403348, 17.313618, 3.766691>,  <15.768378, 17.453211, 3.681446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.403348, 17.313618, 3.766691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287936, -0.918481, -0.271081,
		0.290344, -0.186019, 0.938668,
		-0.912575, -0.348983, 0.213114,
		15.129576, 17.208923, 3.830626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.550932, 16.911102, 3.278039>,  <15.768378, 17.453211, 3.681446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.550932, 16.911102, 3.278039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.326377, 16.994015, 2.957569>,  <15.191644, 17.043762, 2.765288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.326377, 16.994015, 2.957569>,  <15.550932, 16.911102, 3.278039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.326377, 16.994015, 2.957569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808665, 0.343062, -0.477880,
		0.175796, -0.916156, -0.360212,
		-0.561388, 0.207281, -0.801173,
		15.157961, 17.056198, 2.717217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.723422, 16.542770, 2.603252>,  <15.550932, 16.911102, 3.278039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.723422, 16.542770, 2.603252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.545602, 16.890755, 2.517885>,  <15.438910, 17.099545, 2.466665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.545602, 16.890755, 2.517885>,  <15.723422, 16.542770, 2.603252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.545602, 16.890755, 2.517885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716044, 0.201979, -0.668196,
		-0.538197, -0.449862, -0.712719,
		-0.444550, 0.869959, -0.213416,
		15.412237, 17.151743, 2.453860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.610057, 16.527117, 1.885933>,  <15.723422, 16.542770, 2.603252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.610057, 16.527117, 1.885933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.577918, 16.925808, 1.889445>,  <15.558635, 17.165022, 1.891553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.577918, 16.925808, 1.889445>,  <15.610057, 16.527117, 1.885933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.577918, 16.925808, 1.889445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640009, -0.058341, 0.766149,
		0.764155, 0.055939, 0.642603,
		-0.080348, 0.996728, 0.008780,
		15.553814, 17.224827, 1.892079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.649273, 16.351212, 1.113734>,  <15.610057, 16.527117, 1.885933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.649273, 16.351212, 1.113734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.900758, 16.249886, 0.819646>,  <16.051649, 16.189091, 0.643192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.900758, 16.249886, 0.819646>,  <15.649273, 16.351212, 1.113734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.900758, 16.249886, 0.819646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752186, -0.041808, 0.657624,
		-0.197324, -0.966480, 0.164254,
		0.628713, -0.253315, -0.735222,
		16.089371, 16.173891, 0.599079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.075695, 15.804829, 1.454482>,  <15.649273, 16.351212, 1.113734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.075695, 15.804829, 1.454482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.253319, 16.011520, 1.161688>,  <16.359894, 16.135534, 0.986012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.253319, 16.011520, 1.161688>,  <16.075695, 15.804829, 1.454482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.253319, 16.011520, 1.161688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756671, 0.221248, 0.615222,
		0.479853, -0.827068, -0.292746,
		0.444061, 0.516729, -0.731985,
		16.386538, 16.166538, 0.942093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.887711, 15.741278, 1.486852>,  <16.075695, 15.804829, 1.454482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.887711, 15.741278, 1.486852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.738796, 16.064564, 1.304339>,  <16.649448, 16.258535, 1.194832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.738796, 16.064564, 1.304339>,  <16.887711, 15.741278, 1.486852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.738796, 16.064564, 1.304339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629190, 0.581182, 0.516089,
		0.682293, -0.094955, -0.724886,
		-0.372285, 0.808215, -0.456281,
		16.627111, 16.307028, 1.167455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.299810, 15.621864, 0.743029>,  <16.887711, 15.741278, 1.486852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.299810, 15.621864, 0.743029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.327202, 15.291409, 0.519314>,  <17.343636, 15.093135, 0.385084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.327202, 15.291409, 0.519314>,  <17.299810, 15.621864, 0.743029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.327202, 15.291409, 0.519314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427815, -0.482128, 0.764544,
		-0.901268, -0.291627, 0.320420,
		0.068478, -0.826140, -0.559289,
		17.347746, 15.043567, 0.351527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.050779, 14.988955, 1.152083>,  <17.299810, 15.621864, 0.743029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.050779, 14.988955, 1.152083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.300465, 14.886814, 0.856745>,  <17.450275, 14.825529, 0.679542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.300465, 14.886814, 0.856745>,  <17.050779, 14.988955, 1.152083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.300465, 14.886814, 0.856745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403176, -0.704217, 0.584404,
		-0.669183, -0.662476, -0.336631,
		0.624214, -0.255351, -0.738344,
		17.487728, 14.810208, 0.635241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.049231, 14.224477, 0.947353>,  <17.050779, 14.988955, 1.152083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.049231, 14.224477, 0.947353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.409088, 14.353134, 0.829244>,  <17.625004, 14.430328, 0.758379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.409088, 14.353134, 0.829244>,  <17.049231, 14.224477, 0.947353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.409088, 14.353134, 0.829244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435809, -0.702770, 0.562303,
		-0.026647, -0.634555, -0.772418,
		0.899645, 0.321643, -0.295271,
		17.678982, 14.449627, 0.740663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.298185, 13.618790, 1.102797>,  <17.049231, 14.224477, 0.947353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.298185, 13.618790, 1.102797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.569916, 13.912323, 1.102040>,  <17.732954, 14.088443, 1.101586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.569916, 13.912323, 1.102040>,  <17.298185, 13.618790, 1.102797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.569916, 13.912323, 1.102040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535743, -0.494186, 0.684660,
		0.501491, -0.466122, -0.728860,
		0.679327, 0.733833, -0.001892,
		17.773714, 14.132473, 1.101473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<20.068419, 18.162924, 17.950077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.287258, 18.451519, 17.780306>,  <20.418562, 18.624676, 17.678444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.287258, 18.451519, 17.780306>,  <20.068419, 18.162924, 17.950077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.287258, 18.451519, 17.780306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391114, -0.227959, -0.891664,
		-0.740077, 0.653828, 0.157468,
		0.547099, 0.721488, -0.424428,
		20.451387, 18.667965, 17.652977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.652914, 18.566166, 17.548574>,  <20.068419, 18.162924, 17.950077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.652914, 18.566166, 17.548574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.010391, 18.646072, 17.387873>,  <20.224878, 18.694016, 17.291452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.010391, 18.646072, 17.387873>,  <19.652914, 18.566166, 17.548574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.010391, 18.646072, 17.387873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396722, -0.066425, -0.915532,
		-0.209579, 0.977589, 0.019888,
		0.893694, 0.199767, -0.401752,
		20.278500, 18.706003, 17.267347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.444183, 18.953543, 16.981874>,  <19.652914, 18.566166, 17.548574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.444183, 18.953543, 16.981874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.827457, 18.891033, 16.885990>,  <20.057423, 18.853527, 16.828459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.827457, 18.891033, 16.885990>,  <19.444183, 18.953543, 16.981874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.827457, 18.891033, 16.885990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242644, 0.000314, -0.970115,
		0.151678, 0.987714, -0.037618,
		0.958185, -0.156273, -0.239710,
		20.114912, 18.844151, 16.814077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.607489, 19.517885, 16.417933>,  <19.444183, 18.953543, 16.981874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.607489, 19.517885, 16.417933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.864845, 19.212852, 16.391052>,  <20.019258, 19.029833, 16.374924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.864845, 19.212852, 16.391052>,  <19.607489, 19.517885, 16.417933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.864845, 19.212852, 16.391052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167262, -0.054371, -0.984412,
		0.747042, 0.644601, -0.162533,
		0.643390, -0.762583, -0.067200,
		20.057863, 18.984077, 16.370892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.932116, 19.680811, 15.779346>,  <19.607489, 19.517885, 16.417933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.932116, 19.680811, 15.779346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.999416, 19.291458, 15.841589>,  <20.039797, 19.057846, 15.878935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.999416, 19.291458, 15.841589>,  <19.932116, 19.680811, 15.779346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.999416, 19.291458, 15.841589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080936, -0.170968, -0.981947,
		0.982415, 0.152621, -0.107548,
		0.168253, -0.973384, 0.155609,
		20.049892, 18.999443, 15.888271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.469309, 19.401875, 15.301225>,  <19.932116, 19.680811, 15.779346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.469309, 19.401875, 15.301225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.306137, 19.052830, 15.408661>,  <20.208235, 18.843403, 15.473123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.306137, 19.052830, 15.408661>,  <20.469309, 19.401875, 15.301225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.306137, 19.052830, 15.408661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097844, -0.250703, -0.963107,
		0.907756, -0.419158, 0.016888,
		-0.407927, -0.872614, 0.268589,
		20.183760, 18.791046, 15.489238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.858744, 18.803053, 15.027501>,  <20.469309, 19.401875, 15.301225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.858744, 18.803053, 15.027501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.489079, 18.668930, 15.100700>,  <20.267279, 18.588457, 15.144620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.489079, 18.668930, 15.100700>,  <20.858744, 18.803053, 15.027501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.489079, 18.668930, 15.100700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079140, -0.300605, -0.950460,
		0.373705, -0.892864, 0.251272,
		-0.924165, -0.335306, 0.182999,
		20.211828, 18.568338, 15.155601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.763168, 18.255835, 14.544959>,  <20.858744, 18.803053, 15.027501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.763168, 18.255835, 14.544959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.382465, 18.309639, 14.655281>,  <20.154043, 18.341921, 14.721475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.382465, 18.309639, 14.655281>,  <20.763168, 18.255835, 14.544959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.382465, 18.309639, 14.655281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303913, -0.288971, -0.907818,
		-0.042411, -0.947841, 0.315909,
		-0.951755, 0.134510, 0.275805,
		20.096939, 18.349993, 14.738023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.451511, 17.583002, 14.442423>,  <20.763168, 18.255835, 14.544959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.451511, 17.583002, 14.442423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.181759, 17.878113, 14.430468>,  <20.019907, 18.055180, 14.423295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.181759, 17.878113, 14.430468>,  <20.451511, 17.583002, 14.442423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.181759, 17.878113, 14.430468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429098, -0.424525, -0.797279,
		-0.600902, -0.524846, 0.602871,
		-0.674383, 0.737777, -0.029888,
		19.979445, 18.099445, 14.421501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.840866, 17.161234, 14.376087>,  <20.451511, 17.583002, 14.442423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.840866, 17.161234, 14.376087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.746807, 17.546051, 14.320690>,  <19.690372, 17.776941, 14.287452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.746807, 17.546051, 14.320690>,  <19.840866, 17.161234, 14.376087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.746807, 17.546051, 14.320690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531539, -0.246576, -0.810350,
		-0.813740, -0.116938, 0.569344,
		-0.235148, 0.962042, -0.138492,
		19.676262, 17.834663, 14.279142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.193239, 17.198608, 14.320450>,  <19.840866, 17.161234, 14.376087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.193239, 17.198608, 14.320450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.300156, 17.525215, 14.115763>,  <19.364305, 17.721180, 13.992950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.300156, 17.525215, 14.115763>,  <19.193239, 17.198608, 14.320450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.300156, 17.525215, 14.115763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526963, -0.320742, -0.787041,
		-0.806762, 0.480026, 0.344542,
		0.267291, 0.816517, -0.511719,
		19.380342, 17.770170, 13.962247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.569124, 17.524355, 14.124331>,  <19.193239, 17.198608, 14.320450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.569124, 17.524355, 14.124331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.837765, 17.669357, 13.865862>,  <18.998949, 17.756359, 13.710780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.837765, 17.669357, 13.865862>,  <18.569124, 17.524355, 14.124331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.837765, 17.669357, 13.865862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551837, -0.337218, -0.762732,
		-0.494396, 0.868835, -0.026433,
		0.671602, 0.362505, -0.646174,
		19.039246, 17.778109, 13.672009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.277214, 17.817625, 13.538304>,  <18.569124, 17.524355, 14.124331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.277214, 17.817625, 13.538304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.638756, 17.756516, 13.378452>,  <18.855680, 17.719851, 13.282541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.638756, 17.756516, 13.378452>,  <18.277214, 17.817625, 13.538304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.638756, 17.756516, 13.378452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406471, -0.015145, -0.913538,
		0.133510, 0.988145, -0.075786,
		0.903856, -0.152772, -0.399631,
		18.909912, 17.710684, 13.258563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.285267, 18.225492, 12.857634>,  <18.277214, 17.817625, 13.538304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.285267, 18.225492, 12.857634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.593002, 17.972820, 12.819478>,  <18.777643, 17.821217, 12.796585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.593002, 17.972820, 12.819478>,  <18.285267, 18.225492, 12.857634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.593002, 17.972820, 12.819478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228631, -0.132821, -0.964410,
		0.596528, 0.763766, -0.246606,
		0.769338, -0.631680, -0.095389,
		18.823803, 17.783316, 12.790861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.606819, 18.378342, 12.271031>,  <18.285267, 18.225492, 12.857634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.606819, 18.378342, 12.271031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.709114, 17.996696, 12.333345>,  <18.770491, 17.767710, 12.370733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.709114, 17.996696, 12.333345>,  <18.606819, 18.378342, 12.271031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.709114, 17.996696, 12.333345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150357, -0.198437, -0.968512,
		0.954982, 0.224262, -0.194205,
		0.255738, -0.954112, 0.155784,
		18.785835, 17.710463, 12.380080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.987080, 18.273159, 11.706180>,  <18.606819, 18.378342, 12.271031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.987080, 18.273159, 11.706180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.927040, 17.892071, 11.811852>,  <18.891016, 17.663418, 11.875255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.927040, 17.892071, 11.811852>,  <18.987080, 18.273159, 11.706180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.927040, 17.892071, 11.811852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176678, -0.237058, -0.955295,
		0.972756, -0.190064, -0.132743,
		-0.150099, -0.952722, 0.264180,
		18.882010, 17.606255, 11.891106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.345741, 17.856945, 11.241791>,  <18.987080, 18.273159, 11.706180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.345741, 17.856945, 11.241791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.076344, 17.611664, 11.406900>,  <18.914705, 17.464495, 11.505966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.076344, 17.611664, 11.406900>,  <19.345741, 17.856945, 11.241791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.076344, 17.611664, 11.406900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245715, -0.340939, -0.907406,
		0.697156, -0.712559, 0.078947,
		-0.673497, -0.613205, 0.412774,
		18.874294, 17.427702, 11.530733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.425901, 17.226665, 10.913913>,  <19.345741, 17.856945, 11.241791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.425901, 17.226665, 10.913913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.069790, 17.165646, 11.085556>,  <18.856123, 17.129034, 11.188542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.069790, 17.165646, 11.085556>,  <19.425901, 17.226665, 10.913913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.069790, 17.165646, 11.085556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340519, -0.402691, -0.849639,
		0.302413, -0.902534, 0.306560,
		-0.890277, -0.152552, 0.429109,
		18.802706, 17.119881, 11.214289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.185287, 16.492529, 10.839026>,  <19.425901, 17.226665, 10.913913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.185287, 16.492529, 10.839026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.842419, 16.682335, 10.919123>,  <18.636698, 16.796219, 10.967180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.842419, 16.682335, 10.919123>,  <19.185287, 16.492529, 10.839026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.842419, 16.682335, 10.919123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500783, -0.677055, -0.539271,
		-0.120318, -0.562523, 0.817980,
		-0.857170, 0.474514, 0.200240,
		18.585268, 16.824690, 10.979195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.761187, 16.014597, 11.121092>,  <19.185287, 16.492529, 10.839026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.761187, 16.014597, 11.121092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.524284, 16.288441, 10.951130>,  <18.382143, 16.452747, 10.849153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.524284, 16.288441, 10.951130>,  <18.761187, 16.014597, 11.121092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.524284, 16.288441, 10.951130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527294, -0.728051, -0.438067,
		-0.609256, -0.035400, 0.792183,
		-0.592257, 0.684608, -0.424904,
		18.346607, 16.493824, 10.823658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.070961, 15.660398, 11.035808>,  <18.761187, 16.014597, 11.121092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.070961, 15.660398, 11.035808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.978935, 15.972717, 10.803455>,  <17.923719, 16.160109, 10.664043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.978935, 15.972717, 10.803455>,  <18.070961, 15.660398, 11.035808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.978935, 15.972717, 10.803455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733610, -0.531347, -0.423659,
		-0.639442, 0.328671, 0.695046,
		-0.230066, 0.780798, -0.580882,
		17.909916, 16.206957, 10.629190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.439411, 15.689037, 11.057479>,  <18.070961, 15.660398, 11.035808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.439411, 15.689037, 11.057479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.539925, 15.889336, 10.726151>,  <17.600233, 16.009514, 10.527355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.539925, 15.889336, 10.726151>,  <17.439411, 15.689037, 11.057479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.539925, 15.889336, 10.726151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866393, -0.265174, -0.423138,
		-0.431533, 0.823976, 0.367209,
		0.251282, 0.500745, -0.828318,
		17.615309, 16.039558, 10.477655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.976267, 15.187816, 11.407661>,  <17.439411, 15.689037, 11.057479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.976267, 15.187816, 11.407661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.711411, 14.914314, 11.530331>,  <16.552496, 14.750214, 11.603932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.711411, 14.914314, 11.530331>,  <16.976267, 15.187816, 11.407661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.711411, 14.914314, 11.530331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110398, 0.315768, 0.942392,
		-0.741202, 0.657853, -0.133598,
		-0.662142, -0.683754, 0.306674,
		16.512768, 14.709188, 11.622333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.695601, 15.480087, 11.851235>,  <16.976267, 15.187816, 11.407661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.695601, 15.480087, 11.851235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.588463, 15.109844, 11.958200>,  <16.524179, 14.887698, 12.022380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.588463, 15.109844, 11.958200>,  <16.695601, 15.480087, 11.851235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.588463, 15.109844, 11.958200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123560, 0.242262, 0.962311,
		-0.955506, 0.290793, 0.049479,
		-0.267846, -0.925607, 0.267413,
		16.508108, 14.832162, 12.038424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.068100, 15.476838, 12.371280>,  <16.695601, 15.480087, 11.851235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.068100, 15.476838, 12.371280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.299004, 15.154530, 12.424207>,  <16.437546, 14.961144, 12.455963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.299004, 15.154530, 12.424207>,  <16.068100, 15.476838, 12.371280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.299004, 15.154530, 12.424207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279904, 0.347484, 0.894935,
		-0.767091, -0.479571, 0.426126,
		0.577257, -0.805771, 0.132318,
		16.472181, 14.912798, 12.463902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.893245, 15.205190, 13.048643>,  <16.068100, 15.476838, 12.371280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.893245, 15.205190, 13.048643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.249058, 15.051815, 12.949280>,  <16.462545, 14.959790, 12.889662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.249058, 15.051815, 12.949280>,  <15.893245, 15.205190, 13.048643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.249058, 15.051815, 12.949280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330209, 0.163826, 0.929582,
		-0.315740, -0.908921, 0.272343,
		0.889533, -0.383437, -0.248408,
		16.515919, 14.936784, 12.874758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.103636, 14.770802, 13.651095>,  <15.893245, 15.205190, 13.048643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.103636, 14.770802, 13.651095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.437080, 14.836777, 13.440235>,  <16.637148, 14.876362, 13.313719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.437080, 14.836777, 13.440235>,  <16.103636, 14.770802, 13.651095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.437080, 14.836777, 13.440235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461289, 0.317062, 0.828664,
		0.303821, -0.933952, 0.188220,
		0.833610, 0.164942, -0.527152,
		16.687164, 14.886257, 13.282089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.611538, 14.672050, 14.228937>,  <16.103636, 14.770802, 13.651095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.611538, 14.672050, 14.228937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.843933, 14.816914, 13.937376>,  <16.983370, 14.903831, 13.762440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.843933, 14.816914, 13.937376>,  <16.611538, 14.672050, 14.228937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.843933, 14.816914, 13.937376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572820, 0.454274, 0.682285,
		0.578216, -0.813927, 0.056475,
		0.580985, 0.362158, -0.728902,
		17.018229, 14.925561, 13.718705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.255089, 14.234681, 14.195030>,  <16.611538, 14.672050, 14.228937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.255089, 14.234681, 14.195030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.285629, 14.602287, 14.040327>,  <17.303953, 14.822851, 13.947505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.285629, 14.602287, 14.040327>,  <17.255089, 14.234681, 14.195030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.285629, 14.602287, 14.040327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812020, 0.167784, 0.558992,
		0.578614, -0.356735, -0.733448,
		0.076351, 0.919015, -0.386758,
		17.308535, 14.877992, 13.924299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.968712, 14.367218, 13.938693>,  <17.255089, 14.234681, 14.195030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.968712, 14.367218, 13.938693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.834766, 14.738579, 14.003111>,  <17.754400, 14.961395, 14.041761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.834766, 14.738579, 14.003111>,  <17.968712, 14.367218, 13.938693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.834766, 14.738579, 14.003111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797446, 0.188181, 0.573295,
		0.501943, 0.320399, -0.803366,
		-0.334862, 0.928403, 0.161045,
		17.734308, 15.017099, 14.051424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.579563, 14.819744, 13.974649>,  <17.968712, 14.367218, 13.938693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.579563, 14.819744, 13.974649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.306709, 15.072834, 14.121265>,  <18.142996, 15.224688, 14.209235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.306709, 15.072834, 14.121265>,  <18.579563, 14.819744, 13.974649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.306709, 15.072834, 14.121265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635615, 0.265254, 0.725006,
		0.361503, 0.727531, -0.583108,
		-0.682136, 0.632724, 0.366539,
		18.102068, 15.262651, 14.231227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.799204, 15.553769, 14.003900>,  <18.579563, 14.819744, 13.974649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.799204, 15.553769, 14.003900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.532181, 15.486877, 14.294113>,  <18.371967, 15.446743, 14.468241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.532181, 15.486877, 14.294113>,  <18.799204, 15.553769, 14.003900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.532181, 15.486877, 14.294113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690689, 0.224816, 0.687318,
		-0.278051, 0.959944, -0.034575,
		-0.667560, -0.167229, 0.725533,
		18.331913, 15.436708, 14.511773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.891674, 16.058825, 14.472584>,  <18.799204, 15.553769, 14.003900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.891674, 16.058825, 14.472584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.653965, 15.816914, 14.684654>,  <18.511339, 15.671767, 14.811896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.653965, 15.816914, 14.684654>,  <18.891674, 16.058825, 14.472584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.653965, 15.816914, 14.684654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403635, 0.345906, 0.847011,
		-0.695645, 0.717351, 0.038548,
		-0.594271, -0.604778, 0.530175,
		18.475683, 15.635480, 14.843707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.724430, 16.424475, 15.042920>,  <18.891674, 16.058825, 14.472584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.724430, 16.424475, 15.042920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.595093, 16.076794, 15.192553>,  <18.517490, 15.868185, 15.282332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.595093, 16.076794, 15.192553>,  <18.724430, 16.424475, 15.042920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.595093, 16.076794, 15.192553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117457, 0.355395, 0.927307,
		-0.938964, 0.343777, -0.012820,
		-0.323343, -0.869202, 0.374082,
		18.498091, 15.816033, 15.304777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.132841, 16.539160, 15.530416>,  <18.724430, 16.424475, 15.042920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.132841, 16.539160, 15.530416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.322258, 16.201210, 15.629972>,  <18.435907, 15.998441, 15.689707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.322258, 16.201210, 15.629972>,  <18.132841, 16.539160, 15.530416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.322258, 16.201210, 15.629972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025950, 0.295846, 0.954883,
		-0.880390, -0.445717, 0.162020,
		0.473541, -0.844874, 0.248893,
		18.464321, 15.947748, 15.704640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.820032, 16.246904, 16.113251>,  <18.132841, 16.539160, 15.530416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.820032, 16.246904, 16.113251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.192505, 16.101185, 16.107780>,  <18.415989, 16.013754, 16.104498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.192505, 16.101185, 16.107780>,  <17.820032, 16.246904, 16.113251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.192505, 16.101185, 16.107780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045059, 0.077782, 0.995952,
		-0.361760, -0.928028, 0.088845,
		0.931182, -0.364299, -0.013678,
		18.471859, 15.991896, 16.103678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.704723, 15.733511, 16.716331>,  <17.820032, 16.246904, 16.113251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.704723, 15.733511, 16.716331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.090851, 15.811054, 16.646387>,  <18.322527, 15.857580, 16.604422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.090851, 15.811054, 16.646387>,  <17.704723, 15.733511, 16.716331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.090851, 15.811054, 16.646387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177722, 0.002668, 0.984077,
		0.191240, -0.981026, -0.031878,
		0.965320, 0.193860, -0.174860,
		18.380447, 15.869212, 16.593929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.079094, 15.312326, 17.139194>,  <17.704723, 15.733511, 16.716331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.079094, 15.312326, 17.139194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.358547, 15.586300, 17.056465>,  <18.526218, 15.750684, 17.006828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.358547, 15.586300, 17.056465>,  <18.079094, 15.312326, 17.139194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.358547, 15.586300, 17.056465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195399, 0.095426, 0.976070,
		0.688281, -0.722328, -0.067168,
		0.698634, 0.684935, -0.206822,
		18.568138, 15.791780, 16.994419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.625996, 15.285851, 17.597260>,  <18.079094, 15.312326, 17.139194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.625996, 15.285851, 17.597260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.656422, 15.655888, 17.448441>,  <18.674677, 15.877910, 17.359150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.656422, 15.655888, 17.448441>,  <18.625996, 15.285851, 17.597260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.656422, 15.655888, 17.448441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129493, 0.360801, 0.923609,
		0.988659, -0.118431, -0.092349,
		0.076064, 0.925093, -0.372045,
		18.679241, 15.933415, 17.336826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.000505, 15.572343, 18.103441>,  <18.625996, 15.285851, 17.597260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.000505, 15.572343, 18.103441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.917229, 15.899231, 17.888479>,  <18.867262, 16.095364, 17.759502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.917229, 15.899231, 17.888479>,  <19.000505, 15.572343, 18.103441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.917229, 15.899231, 17.888479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185077, 0.572435, 0.798790,
		0.960418, 0.066842, -0.270426,
		-0.208194, 0.817221, -0.537406,
		18.854771, 16.144398, 17.727257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<19.666466, 16.225489, 18.153738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.313782, 16.372837, 18.035828>,  <19.102171, 16.461246, 17.965080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.313782, 16.372837, 18.035828>,  <19.666466, 16.225489, 18.153738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.313782, 16.372837, 18.035828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002923, 0.629051, 0.777358,
		0.471787, 0.684541, -0.555716,
		-0.881708, 0.368372, -0.294777,
		19.049269, 16.483349, 17.947395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.745905, 16.939144, 18.030209>,  <19.666466, 16.225489, 18.153738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.745905, 16.939144, 18.030209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.367344, 16.891132, 18.150154>,  <19.140207, 16.862326, 18.222120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.367344, 16.891132, 18.150154>,  <19.745905, 16.939144, 18.030209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.367344, 16.891132, 18.150154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144992, 0.671711, 0.726486,
		-0.288621, 0.731025, -0.618305,
		-0.946401, -0.120030, 0.299862,
		19.083424, 16.855124, 18.240112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.422989, 17.613045, 18.147861>,  <19.745905, 16.939144, 18.030209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.422989, 17.613045, 18.147861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.172974, 17.374466, 18.349289>,  <19.022964, 17.231319, 18.470146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.172974, 17.374466, 18.349289>,  <19.422989, 17.613045, 18.147861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.172974, 17.374466, 18.349289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019611, 0.632905, 0.773981,
		-0.780349, 0.493642, -0.383892,
		-0.625037, -0.596447, 0.503568,
		18.985462, 17.195532, 18.500359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.027756, 18.109800, 18.485437>,  <19.422989, 17.613045, 18.147861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.027756, 18.109800, 18.485437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.949375, 17.772621, 18.685852>,  <18.902348, 17.570312, 18.806101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.949375, 17.772621, 18.685852>,  <19.027756, 18.109800, 18.485437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.949375, 17.772621, 18.685852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043039, 0.517844, 0.854392,
		-0.979669, 0.145855, -0.137752,
		-0.195951, -0.842950, 0.501038,
		18.890591, 17.519735, 18.836163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.495796, 18.278656, 18.937130>,  <19.027756, 18.109800, 18.485437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.495796, 18.278656, 18.937130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.677135, 17.962063, 19.101093>,  <18.785940, 17.772106, 19.199472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.677135, 17.962063, 19.101093>,  <18.495796, 18.278656, 18.937130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.677135, 17.962063, 19.101093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121853, 0.510601, 0.851139,
		-0.882964, -0.335915, 0.327926,
		0.453350, -0.791484, 0.409910,
		18.813141, 17.724617, 19.224066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.096712, 18.185675, 19.597881>,  <18.495796, 18.278656, 18.937130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.096712, 18.185675, 19.597881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.437756, 17.984589, 19.654922>,  <18.642382, 17.863937, 19.689146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.437756, 17.984589, 19.654922>,  <18.096712, 18.185675, 19.597881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.437756, 17.984589, 19.654922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138112, 0.479987, 0.866336,
		-0.503965, -0.718952, 0.478672,
		0.852611, -0.502713, 0.142601,
		18.693539, 17.833775, 19.697702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.069910, 17.964733, 20.245699>,  <18.096712, 18.185675, 19.597881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.069910, 17.964733, 20.245699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.454269, 17.969242, 20.135029>,  <18.684885, 17.971949, 20.068626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.454269, 17.969242, 20.135029>,  <18.069910, 17.964733, 20.245699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.454269, 17.969242, 20.135029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252679, 0.373010, 0.892758,
		0.113266, -0.927759, 0.355576,
		0.960897, 0.011273, -0.276675,
		18.742538, 17.972624, 20.052027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.469994, 17.834715, 20.802515>,  <18.069910, 17.964733, 20.245699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.469994, 17.834715, 20.802515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.760448, 18.006523, 20.587765>,  <18.934721, 18.109608, 20.458916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.760448, 18.006523, 20.587765>,  <18.469994, 17.834715, 20.802515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.760448, 18.006523, 20.587765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434880, 0.317887, 0.842512,
		0.532542, -0.845257, 0.044040,
		0.726139, 0.429522, -0.536874,
		18.978291, 18.135380, 20.426702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.045748, 17.539907, 21.003214>,  <18.469994, 17.834715, 20.802515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.045748, 17.539907, 21.003214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.170532, 17.882027, 20.837734>,  <19.245403, 18.087297, 20.738447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.170532, 17.882027, 20.837734>,  <19.045748, 17.539907, 21.003214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.170532, 17.882027, 20.837734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320316, 0.315254, 0.893316,
		0.894470, -0.411195, -0.175618,
		0.311963, 0.855297, -0.413698,
		19.264122, 18.138617, 20.713625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.611217, 17.736961, 21.419239>,  <19.045748, 17.539907, 21.003214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.611217, 17.736961, 21.419239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.537552, 18.081066, 21.229065>,  <19.493353, 18.287529, 21.114962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.537552, 18.081066, 21.229065>,  <19.611217, 17.736961, 21.419239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.537552, 18.081066, 21.229065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422067, 0.506055, 0.752175,
		0.887661, -0.062140, -0.456285,
		-0.184165, 0.860260, -0.475433,
		19.482302, 18.339144, 21.086435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.239426, 18.211744, 21.564606>,  <19.611217, 17.736961, 21.419239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.239426, 18.211744, 21.564606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.950497, 18.470501, 21.466805>,  <19.777140, 18.625755, 21.408123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.950497, 18.470501, 21.466805>,  <20.239426, 18.211744, 21.564606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.950497, 18.470501, 21.466805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187086, 0.523160, 0.831446,
		0.665771, 0.554828, -0.498914,
		-0.722321, 0.646893, -0.244504,
		19.733801, 18.664568, 21.393454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.516905, 18.848955, 21.696939>,  <20.239426, 18.211744, 21.564606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.516905, 18.848955, 21.696939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.119717, 18.896259, 21.694826>,  <19.881405, 18.924643, 21.693558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.119717, 18.896259, 21.694826>,  <20.516905, 18.848955, 21.696939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.119717, 18.896259, 21.694826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081602, 0.716145, 0.693164,
		0.085759, 0.687859, -0.720760,
		-0.992969, 0.118260, -0.005286,
		19.821827, 18.931738, 21.693241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.370844, 19.571308, 21.841013>,  <20.516905, 18.848955, 21.696939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.370844, 19.571308, 21.841013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.022972, 19.414127, 21.960510>,  <19.814249, 19.319818, 22.032209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.022972, 19.414127, 21.960510>,  <20.370844, 19.571308, 21.841013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.022972, 19.414127, 21.960510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016698, 0.628288, 0.777802,
		-0.493334, 0.671450, -0.552971,
		-0.869680, -0.392950, 0.298744,
		19.762068, 19.296242, 22.050133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.047318, 20.282270, 22.095339>,  <20.370844, 19.571308, 21.841013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.047318, 20.282270, 22.095339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.823475, 19.974789, 22.219231>,  <19.689169, 19.790300, 22.293566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.823475, 19.974789, 22.219231>,  <20.047318, 20.282270, 22.095339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.823475, 19.974789, 22.219231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256505, 0.516029, 0.817263,
		-0.788064, 0.377899, -0.485950,
		-0.559608, -0.768704, 0.309731,
		19.655592, 19.744177, 22.312149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.491383, 20.591642, 22.326103>,  <20.047318, 20.282270, 22.095339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.491383, 20.591642, 22.326103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.487389, 20.234955, 22.507095>,  <19.484991, 20.020943, 22.615690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.487389, 20.234955, 22.507095>,  <19.491383, 20.591642, 22.326103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.487389, 20.234955, 22.507095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124938, 0.450071, 0.884210,
		-0.992114, -0.047702, -0.115904,
		-0.009987, -0.891718, 0.452482,
		19.484392, 19.967440, 22.642839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.903507, 20.622505, 22.818634>,  <19.491383, 20.591642, 22.326103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.903507, 20.622505, 22.818634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.145218, 20.319324, 22.916901>,  <19.290245, 20.137415, 22.975861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.145218, 20.319324, 22.916901>,  <18.903507, 20.622505, 22.818634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.145218, 20.319324, 22.916901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068844, 0.257508, 0.963821,
		-0.793793, -0.599329, 0.103426,
		0.604279, -0.757954, 0.245668,
		19.326502, 20.091938, 22.990601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.546312, 20.342289, 23.278431>,  <18.903507, 20.622505, 22.818634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.546312, 20.342289, 23.278431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.911079, 20.192520, 23.345619>,  <19.129940, 20.102659, 23.385933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.911079, 20.192520, 23.345619>,  <18.546312, 20.342289, 23.278431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.911079, 20.192520, 23.345619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006274, 0.421986, 0.906581,
		-0.410324, -0.825673, 0.387165,
		0.911918, -0.374421, 0.167971,
		19.184654, 20.080194, 23.396011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.574368, 19.935904, 23.914070>,  <18.546312, 20.342289, 23.278431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.574368, 19.935904, 23.914070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.946293, 20.073700, 23.862259>,  <19.169447, 20.156378, 23.831173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.946293, 20.073700, 23.862259>,  <18.574368, 19.935904, 23.914070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.946293, 20.073700, 23.862259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034013, 0.430872, 0.901772,
		0.366458, -0.834074, 0.412347,
		0.929813, 0.344487, -0.129527,
		19.225237, 20.177048, 23.823400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.775862, 20.045208, 24.574577>,  <18.574368, 19.935904, 23.914070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.775862, 20.045208, 24.574577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.061615, 20.245716, 24.379280>,  <19.233067, 20.366022, 24.262102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.061615, 20.245716, 24.379280>,  <18.775862, 20.045208, 24.574577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.061615, 20.245716, 24.379280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153246, 0.568726, 0.808125,
		0.682769, -0.652132, 0.329470,
		0.714382, 0.501273, -0.488246,
		19.275930, 20.396097, 24.232807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.358465, 20.036671, 25.001709>,  <18.775862, 20.045208, 24.574577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.358465, 20.036671, 25.001709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.391998, 20.356045, 24.763222>,  <19.412119, 20.547668, 24.620131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.391998, 20.356045, 24.763222>,  <19.358465, 20.036671, 25.001709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.391998, 20.356045, 24.763222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061097, 0.593078, 0.802823,
		0.994605, -0.103729, 0.000937,
		0.083832, 0.798435, -0.596216,
		19.417149, 20.595575, 24.584356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.878933, 20.472734, 25.322504>,  <19.358465, 20.036671, 25.001709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.878933, 20.472734, 25.322504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.681694, 20.717987, 25.075628>,  <19.563351, 20.865139, 24.927502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.681694, 20.717987, 25.075628>,  <19.878933, 20.472734, 25.322504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.681694, 20.717987, 25.075628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144950, 0.757423, 0.636632,
		0.857813, 0.224461, -0.462358,
		-0.493099, 0.613130, -0.617191,
		19.533764, 20.901926, 24.890471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.300749, 21.118801, 25.324024>,  <19.878933, 20.472734, 25.322504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.300749, 21.118801, 25.324024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.923862, 21.188480, 25.209564>,  <19.697731, 21.230288, 25.140888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.923862, 21.188480, 25.209564>,  <20.300749, 21.118801, 25.324024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.923862, 21.188480, 25.209564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057215, 0.757944, 0.649805,
		0.330079, 0.628630, -0.704182,
		-0.942218, 0.174198, -0.286148,
		19.641197, 21.240740, 25.123720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.301245, 21.834778, 25.469545>,  <20.300749, 21.118801, 25.324024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.301245, 21.834778, 25.469545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.916679, 21.748451, 25.401302>,  <19.685940, 21.696655, 25.360357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.916679, 21.748451, 25.401302>,  <20.301245, 21.834778, 25.469545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.916679, 21.748451, 25.401302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267494, 0.878220, 0.396456,
		0.064268, 0.426794, -0.902062,
		-0.961414, -0.215816, -0.170606,
		19.628256, 21.683706, 25.350121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.964298, 22.405712, 25.016977>,  <20.301245, 21.834778, 25.469545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.964298, 22.405712, 25.016977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.717575, 22.218121, 25.269835>,  <19.569542, 22.105566, 25.421549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.717575, 22.218121, 25.269835>,  <19.964298, 22.405712, 25.016977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.717575, 22.218121, 25.269835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328160, 0.883209, 0.335044,
		-0.715444, -0.000787, -0.698669,
		-0.616807, -0.468980, 0.632145,
		19.532534, 22.077427, 25.459478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.359318, 21.978428, 24.625408>,  <19.964298, 22.405712, 25.016977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.359318, 21.978428, 24.625408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.624660, 22.258488, 24.519770>,  <20.783867, 22.426523, 24.456387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.624660, 22.258488, 24.519770>,  <20.359318, 21.978428, 24.625408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.624660, 22.258488, 24.519770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007294, -0.346860, -0.937889,
		-0.748267, 0.624081, -0.224985,
		0.663357, 0.700150, -0.264096,
		20.823668, 22.468533, 24.440540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.103395, 22.293762, 23.975391>,  <20.359318, 21.978428, 24.625408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.103395, 22.293762, 23.975391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.496830, 22.364456, 23.989950>,  <20.732891, 22.406874, 23.998686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.496830, 22.364456, 23.989950>,  <20.103395, 22.293762, 23.975391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.496830, 22.364456, 23.989950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103442, -0.386993, -0.916262,
		-0.147852, 0.904987, -0.398922,
		0.983585, 0.176736, 0.036396,
		20.791906, 22.417477, 24.000870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.173731, 22.729769, 23.403944>,  <20.103395, 22.293762, 23.975391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.173731, 22.729769, 23.403944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.519135, 22.559055, 23.511427>,  <20.726377, 22.456627, 23.575916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.519135, 22.559055, 23.511427>,  <20.173731, 22.729769, 23.403944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.519135, 22.559055, 23.511427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173853, -0.248245, -0.952969,
		0.473419, 0.869614, -0.140164,
		0.863510, -0.426785, 0.268709,
		20.778187, 22.431021, 23.592039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.764795, 23.010130, 22.947895>,  <20.173731, 22.729769, 23.403944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.764795, 23.010130, 22.947895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.963478, 22.693932, 23.091225>,  <21.082687, 22.504213, 23.177223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.963478, 22.693932, 23.091225>,  <20.764795, 23.010130, 22.947895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.963478, 22.693932, 23.091225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258804, -0.259172, -0.930511,
		0.828433, 0.554928, 0.075851,
		0.496708, -0.790497, 0.358324,
		21.112490, 22.456783, 23.198723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.421211, 22.980314, 22.577797>,  <20.764795, 23.010130, 22.947895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.421211, 22.980314, 22.577797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.348583, 22.609127, 22.707972>,  <21.305006, 22.386415, 22.786076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.348583, 22.609127, 22.707972>,  <21.421211, 22.980314, 22.577797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.348583, 22.609127, 22.707972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115421, -0.348761, -0.930077,
		0.976581, -0.131312, 0.170431,
		-0.181570, -0.927967, 0.325437,
		21.294111, 22.330736, 22.805603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.028450, 22.523439, 22.363663>,  <21.421211, 22.980314, 22.577797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.028450, 22.523439, 22.363663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.720390, 22.274799, 22.420906>,  <21.535555, 22.125614, 22.455252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.720390, 22.274799, 22.420906>,  <22.028450, 22.523439, 22.363663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.720390, 22.274799, 22.420906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261252, -0.512067, -0.818251,
		0.581908, -0.592789, 0.556763,
		-0.770150, -0.621602, 0.143109,
		21.489346, 22.088318, 22.463839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.248260, 21.857285, 22.055017>,  <22.028450, 22.523439, 22.363663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.248260, 21.857285, 22.055017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.858059, 21.791382, 22.113323>,  <21.623938, 21.751841, 22.148306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.858059, 21.791382, 22.113323>,  <22.248260, 21.857285, 22.055017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.858059, 21.791382, 22.113323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015042, -0.711026, -0.703005,
		0.219468, -0.683591, 0.696087,
		-0.975504, -0.164758, 0.145765,
		21.565409, 21.741955, 22.157053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.095396, 21.189926, 22.143379>,  <22.248260, 21.857285, 22.055017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.095396, 21.189926, 22.143379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.747879, 21.337883, 22.011694>,  <21.539370, 21.426657, 21.932682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.747879, 21.337883, 22.011694>,  <22.095396, 21.189926, 22.143379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.747879, 21.337883, 22.011694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011080, -0.650154, -0.759722,
		-0.495054, -0.663688, 0.560750,
		-0.868791, 0.369890, -0.329215,
		21.487242, 21.448851, 21.912930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.952156, 20.669628, 21.745245>,  <22.095396, 21.189926, 22.143379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.952156, 20.669628, 21.745245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.674057, 20.938778, 21.644156>,  <21.507198, 21.100267, 21.583502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.674057, 20.938778, 21.644156>,  <21.952156, 20.669628, 21.745245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.674057, 20.938778, 21.644156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185437, -0.507617, -0.841391,
		-0.694439, -0.538110, 0.477695,
		-0.695247, 0.672877, -0.252723,
		21.465483, 21.140640, 21.568338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.478647, 20.294500, 21.466341>,  <21.952156, 20.669628, 21.745245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.478647, 20.294500, 21.466341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.431004, 20.667103, 21.328875>,  <21.402416, 20.890665, 21.246395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.431004, 20.667103, 21.328875>,  <21.478647, 20.294500, 21.466341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.431004, 20.667103, 21.328875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268686, -0.363456, -0.892024,
		-0.955835, -0.013911, 0.293575,
		-0.119111, 0.931508, -0.343666,
		21.395269, 20.946554, 21.225775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.826939, 20.212801, 21.286257>,  <21.478647, 20.294500, 21.466341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.826939, 20.212801, 21.286257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.021843, 20.519070, 21.118294>,  <21.138786, 20.702831, 21.017515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.021843, 20.519070, 21.118294>,  <20.826939, 20.212801, 21.286257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.021843, 20.519070, 21.118294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225297, -0.354350, -0.907567,
		-0.843692, 0.536826, -0.000157,
		0.487262, 0.765672, -0.419908,
		21.168022, 20.748772, 20.992321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.380491, 20.499165, 20.883467>,  <20.826939, 20.212801, 21.286257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.380491, 20.499165, 20.883467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.738522, 20.587753, 20.728659>,  <20.953341, 20.640907, 20.635773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.738522, 20.587753, 20.728659>,  <20.380491, 20.499165, 20.883467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.738522, 20.587753, 20.728659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275456, -0.407908, -0.870480,
		-0.350656, 0.885755, -0.304104,
		0.895078, 0.221471, -0.387022,
		21.007046, 20.654194, 20.612553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.271114, 20.874903, 20.197990>,  <20.380491, 20.499165, 20.883467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.271114, 20.874903, 20.197990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.653152, 20.757156, 20.184467>,  <20.882376, 20.686508, 20.176353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.653152, 20.757156, 20.184467>,  <20.271114, 20.874903, 20.197990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.653152, 20.757156, 20.184467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153345, -0.393438, -0.906472,
		0.253532, 0.870952, -0.420910,
		0.955095, -0.294364, -0.033807,
		20.939682, 20.668848, 20.174326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.384817, 20.921686, 19.527220>,  <20.271114, 20.874903, 20.197990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.384817, 20.921686, 19.527220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.664185, 20.673241, 19.669445>,  <20.831806, 20.524174, 19.754780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.664185, 20.673241, 19.669445>,  <20.384817, 20.921686, 19.527220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.664185, 20.673241, 19.669445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021992, -0.477952, -0.878110,
		0.715350, 0.621110, -0.320152,
		0.698421, -0.621115, 0.355562,
		20.873711, 20.486906, 19.776114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.852051, 20.816824, 18.881308>,  <20.384817, 20.921686, 19.527220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.852051, 20.816824, 18.881308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.956692, 20.525421, 19.134556>,  <21.019476, 20.350580, 19.286505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.956692, 20.525421, 19.134556>,  <20.852051, 20.816824, 18.881308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.956692, 20.525421, 19.134556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077992, -0.637863, -0.766190,
		0.962020, 0.249814, -0.110047,
		0.261601, -0.728508, 0.633121,
		21.035172, 20.306870, 19.324492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.469439, 20.452055, 18.663567>,  <20.852051, 20.816824, 18.881308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.469439, 20.452055, 18.663567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.292946, 20.178001, 18.895395>,  <21.187050, 20.013569, 19.034492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.292946, 20.178001, 18.895395>,  <21.469439, 20.452055, 18.663567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.292946, 20.178001, 18.895395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169093, -0.697748, -0.696100,
		0.881318, -0.209141, 0.423721,
		-0.441233, -0.685134, 0.579573,
		21.160576, 19.972462, 19.069267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.857527, 19.821281, 18.601740>,  <21.469439, 20.452055, 18.663567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.857527, 19.821281, 18.601740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.485165, 19.713356, 18.700220>,  <21.261747, 19.648602, 18.759308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.485165, 19.713356, 18.700220>,  <21.857527, 19.821281, 18.601740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.485165, 19.713356, 18.700220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030767, -0.729573, -0.683210,
		0.363962, -0.628429, 0.687465,
		-0.930906, -0.269814, 0.246202,
		21.205893, 19.632412, 18.774080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.787550, 19.134693, 18.574150>,  <21.857527, 19.821281, 18.601740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.787550, 19.134693, 18.574150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.397415, 19.221478, 18.557909>,  <21.163334, 19.273548, 18.548164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.397415, 19.221478, 18.557909>,  <21.787550, 19.134693, 18.574150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.397415, 19.221478, 18.557909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103932, -0.613688, -0.782678,
		-0.194728, -0.759154, 0.621101,
		-0.975335, 0.216962, -0.040601,
		21.104815, 19.286566, 18.545729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.418152, 18.445358, 18.516516>,  <21.787550, 19.134693, 18.574150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.418152, 18.445358, 18.516516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.184223, 18.739506, 18.379566>,  <21.043867, 18.915995, 18.297398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.184223, 18.739506, 18.379566>,  <21.418152, 18.445358, 18.516516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.184223, 18.739506, 18.379566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265410, -0.572315, -0.775895,
		-0.766513, -0.362890, 0.529876,
		-0.584821, 0.735368, -0.342372,
		21.008778, 18.960115, 18.276855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.786602, 18.130184, 18.275080>,  <21.418152, 18.445358, 18.516516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.786602, 18.130184, 18.275080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.737007, 18.483364, 18.093960>,  <20.707251, 18.695272, 17.985289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.737007, 18.483364, 18.093960>,  <20.786602, 18.130184, 18.275080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.737007, 18.483364, 18.093960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444287, -0.457421, -0.770309,
		-0.887264, 0.105666, 0.448996,
		-0.123985, 0.882950, -0.452799,
		20.699812, 18.748249, 17.958120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<18.284538, 14.632210, 15.585064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.343307, 15.021454, 15.514107>,  <18.378569, 15.255000, 15.471532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.343307, 15.021454, 15.514107>,  <18.284538, 14.632210, 15.585064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.343307, 15.021454, 15.514107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497550, -0.082294, -0.863523,
		-0.854902, 0.215135, 0.472080,
		0.146925, 0.973111, -0.177394,
		18.387384, 15.313387, 15.460889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.650087, 14.890525, 15.518346>,  <18.284538, 14.632210, 15.585064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.650087, 14.890525, 15.518346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.908920, 15.120449, 15.317995>,  <18.064220, 15.258404, 15.197784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.908920, 15.120449, 15.317995>,  <17.650087, 14.890525, 15.518346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.908920, 15.120449, 15.317995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561155, -0.085664, -0.823265,
		-0.516129, 0.813790, 0.267126,
		0.647082, 0.574810, -0.500877,
		18.103045, 15.292892, 15.167732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.327101, 15.522860, 15.285849>,  <17.650087, 14.890525, 15.518346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.327101, 15.522860, 15.285849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.634533, 15.458977, 15.038050>,  <17.818993, 15.420647, 14.889370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.634533, 15.458977, 15.038050>,  <17.327101, 15.522860, 15.285849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.634533, 15.458977, 15.038050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613247, 0.091925, -0.784524,
		0.182242, 0.982875, -0.027288,
		0.768581, -0.159708, -0.619498,
		17.865107, 15.411064, 14.852201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.270409, 16.102474, 14.787676>,  <17.327101, 15.522860, 15.285849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.270409, 16.102474, 14.787676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.519196, 15.840305, 14.616291>,  <17.668468, 15.683004, 14.513460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.519196, 15.840305, 14.616291>,  <17.270409, 16.102474, 14.787676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.519196, 15.840305, 14.616291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564537, 0.003855, -0.825399,
		0.542635, 0.755254, -0.367611,
		0.621969, -0.655420, -0.428461,
		17.705786, 15.643680, 14.487753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.256535, 16.275625, 14.123903>,  <17.270409, 16.102474, 14.787676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.256535, 16.275625, 14.123903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.371700, 15.893120, 14.103268>,  <17.440800, 15.663616, 14.090886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.371700, 15.893120, 14.103268>,  <17.256535, 16.275625, 14.123903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.371700, 15.893120, 14.103268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430319, -0.081061, -0.899030,
		0.855530, 0.281043, -0.434837,
		0.287915, -0.956266, -0.051588,
		17.458075, 15.606240, 14.087791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.411692, 16.168863, 13.439581>,  <17.256535, 16.275625, 14.123903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.411692, 16.168863, 13.439581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.367599, 15.795055, 13.574947>,  <17.341145, 15.570771, 13.656167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.367599, 15.795055, 13.574947>,  <17.411692, 16.168863, 13.439581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.367599, 15.795055, 13.574947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378662, -0.275325, -0.883635,
		0.918947, -0.225550, -0.323517,
		-0.110231, -0.934518, 0.338417,
		17.334530, 15.514700, 13.676473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.522470, 15.745822, 12.884548>,  <17.411692, 16.168863, 13.439581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.522470, 15.745822, 12.884548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.368584, 15.476387, 13.136984>,  <17.276253, 15.314726, 13.288445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.368584, 15.476387, 13.136984>,  <17.522470, 15.745822, 12.884548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.368584, 15.476387, 13.136984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239971, -0.587213, -0.773043,
		0.891296, -0.448844, 0.064269,
		-0.384715, -0.673587, 0.631090,
		17.253170, 15.274311, 13.326311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.822353, 15.077366, 12.620768>,  <17.522470, 15.745822, 12.884548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.822353, 15.077366, 12.620768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.484539, 15.021915, 12.827664>,  <17.281851, 14.988646, 12.951802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.484539, 15.021915, 12.827664>,  <17.822353, 15.077366, 12.620768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.484539, 15.021915, 12.827664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362013, -0.563950, -0.742231,
		0.394591, -0.814090, 0.426093,
		-0.844538, -0.138626, 0.517241,
		17.231178, 14.980328, 12.982837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.670805, 14.352165, 12.683053>,  <17.822353, 15.077366, 12.620768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.670805, 14.352165, 12.683053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.319191, 14.535480, 12.735622>,  <17.108223, 14.645470, 12.767164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.319191, 14.535480, 12.735622>,  <17.670805, 14.352165, 12.683053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.319191, 14.535480, 12.735622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345763, -0.423011, -0.837562,
		-0.328251, -0.781686, 0.530300,
		-0.879033, 0.458289, 0.131424,
		17.055481, 14.672967, 12.775049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.062336, 13.823009, 12.740645>,  <17.670805, 14.352165, 12.683053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.062336, 13.823009, 12.740645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.922798, 14.180149, 12.626713>,  <16.839075, 14.394433, 12.558353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.922798, 14.180149, 12.626713>,  <17.062336, 13.823009, 12.740645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.922798, 14.180149, 12.626713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435077, -0.423476, -0.794592,
		-0.830070, -0.153264, 0.536184,
		-0.348844, 0.892848, -0.284833,
		16.818146, 14.448004, 12.541263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.398594, 13.605521, 12.471716>,  <17.062336, 13.823009, 12.740645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.398594, 13.605521, 12.471716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.405014, 13.981037, 12.334071>,  <16.408867, 14.206347, 12.251484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.405014, 13.981037, 12.334071>,  <16.398594, 13.605521, 12.471716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.405014, 13.981037, 12.334071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465657, -0.297537, -0.833448,
		-0.884820, 0.173618, 0.432378,
		0.016053, 0.938791, -0.344113,
		16.409830, 14.262674, 12.230837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.812871, 13.652943, 12.110643>,  <16.398594, 13.605521, 12.471716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.812871, 13.652943, 12.110643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.013237, 13.970463, 11.972678>,  <16.133457, 14.160975, 11.889899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.013237, 13.970463, 11.972678>,  <15.812871, 13.652943, 12.110643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.013237, 13.970463, 11.972678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420509, -0.125102, -0.898622,
		-0.756476, 0.595172, 0.271134,
		0.500916, 0.793800, -0.344912,
		16.163511, 14.208603, 11.869205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.354490, 14.090064, 11.783457>,  <15.812871, 13.652943, 12.110643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.354490, 14.090064, 11.783457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.710811, 14.177441, 11.624080>,  <15.924603, 14.229867, 11.528453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.710811, 14.177441, 11.624080>,  <15.354490, 14.090064, 11.783457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.710811, 14.177441, 11.624080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337774, -0.268208, -0.902204,
		-0.303946, 0.938268, -0.165135,
		0.890800, 0.218443, -0.398444,
		15.978051, 14.242973, 11.504546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.267930, 14.251507, 11.047600>,  <15.354490, 14.090064, 11.783457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.267930, 14.251507, 11.047600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.649776, 14.135155, 11.073214>,  <15.878883, 14.065344, 11.088582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.649776, 14.135155, 11.073214>,  <15.267930, 14.251507, 11.047600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.649776, 14.135155, 11.073214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055793, -0.385824, -0.920884,
		0.292572, 0.875516, -0.384542,
		0.954614, -0.290880, 0.064034,
		15.936160, 14.047891, 11.092423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.586203, 14.498099, 10.678411>,  <15.267930, 14.251507, 11.047600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.586203, 14.498099, 10.678411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.432189, 14.828117, 10.512980>,  <14.339781, 15.026129, 10.413720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.432189, 14.828117, 10.512980>,  <14.586203, 14.498099, 10.678411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.432189, 14.828117, 10.512980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144045, 0.388914, 0.909943,
		0.911592, 0.409933, -0.030902,
		-0.385034, 0.825046, -0.413580,
		14.316679, 15.075631, 10.388906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.001870, 15.054242, 10.945700>,  <14.586203, 14.498099, 10.678411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.001870, 15.054242, 10.945700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.670411, 15.242893, 10.825093>,  <14.471536, 15.356084, 10.752729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.670411, 15.242893, 10.825093>,  <15.001870, 15.054242, 10.945700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.670411, 15.242893, 10.825093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105260, 0.397749, 0.911436,
		0.549785, 0.786997, -0.279950,
		-0.828647, 0.471627, -0.301516,
		14.421817, 15.384381, 10.734638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.127349, 15.721877, 11.106441>,  <15.001870, 15.054242, 10.945700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.127349, 15.721877, 11.106441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.729991, 15.676102, 11.103071>,  <14.491576, 15.648637, 11.101048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.729991, 15.676102, 11.103071>,  <15.127349, 15.721877, 11.106441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.729991, 15.676102, 11.103071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080013, 0.638183, 0.765716,
		-0.082249, 0.761332, -0.643124,
		-0.993395, -0.114437, -0.008427,
		14.431973, 15.641770, 11.100543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.992752, 16.373312, 11.119545>,  <15.127349, 15.721877, 11.106441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.992752, 16.373312, 11.119545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.660546, 16.186111, 11.240356>,  <14.461223, 16.073792, 11.312843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.660546, 16.186111, 11.240356>,  <14.992752, 16.373312, 11.119545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.660546, 16.186111, 11.240356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032984, 0.499968, 0.865415,
		-0.556022, 0.728701, -0.399794,
		-0.830513, -0.468003, 0.302028,
		14.411392, 16.045712, 11.330965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.468292, 16.920395, 11.401533>,  <14.992752, 16.373312, 11.119545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.468292, 16.920395, 11.401533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.361894, 16.563782, 11.548182>,  <14.298055, 16.349813, 11.636172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.361894, 16.563782, 11.548182>,  <14.468292, 16.920395, 11.401533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.361894, 16.563782, 11.548182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215999, 0.425779, 0.878668,
		-0.939463, 0.154532, -0.305826,
		-0.265997, -0.891534, 0.366624,
		14.282095, 16.296322, 11.658170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.897094, 17.147413, 11.733820>,  <14.468292, 16.920395, 11.401533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.897094, 17.147413, 11.733820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.000388, 16.789539, 11.879615>,  <14.062365, 16.574814, 11.967092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.000388, 16.789539, 11.879615>,  <13.897094, 17.147413, 11.733820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.000388, 16.789539, 11.879615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357674, 0.261933, 0.896360,
		-0.897432, -0.361840, -0.252365,
		0.258236, -0.894686, 0.364488,
		14.077859, 16.521133, 11.988961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.353433, 16.985285, 12.218926>,  <13.897094, 17.147413, 11.733820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.353433, 16.985285, 12.218926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.670892, 16.770016, 12.332411>,  <13.861367, 16.640854, 12.400501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.670892, 16.770016, 12.332411>,  <13.353433, 16.985285, 12.218926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.670892, 16.770016, 12.332411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230042, 0.166251, 0.958875,
		-0.563209, -0.826274, 0.008142,
		0.793648, -0.538174, 0.283712,
		13.908986, 16.608564, 12.417524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.154731, 16.750301, 12.850946>,  <13.353433, 16.985285, 12.218926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.154731, 16.750301, 12.850946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.549165, 16.684200, 12.858169>,  <13.785826, 16.644539, 12.862502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.549165, 16.684200, 12.858169>,  <13.154731, 16.750301, 12.850946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.549165, 16.684200, 12.858169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021207, 0.232777, 0.972299,
		-0.164878, -0.958387, 0.233043,
		0.986086, -0.165252, 0.018056,
		13.844991, 16.634624, 12.863585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.328387, 16.463240, 13.567183>,  <13.154731, 16.750301, 12.850946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.328387, 16.463240, 13.567183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.679069, 16.596184, 13.428083>,  <13.889477, 16.675949, 13.344624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.679069, 16.596184, 13.428083>,  <13.328387, 16.463240, 13.567183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.679069, 16.596184, 13.428083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171713, 0.459066, 0.871650,
		0.449332, -0.823894, 0.345398,
		0.876707, 0.332351, -0.347746,
		13.942080, 16.695892, 13.323759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.824241, 16.409189, 14.126760>,  <13.328387, 16.463240, 13.567183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.824241, 16.409189, 14.126760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.984851, 16.686783, 13.887707>,  <14.081217, 16.853338, 13.744275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.984851, 16.686783, 13.887707>,  <13.824241, 16.409189, 14.126760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.984851, 16.686783, 13.887707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356094, 0.482900, 0.800003,
		0.843786, -0.534034, -0.053227,
		0.401525, 0.693985, -0.597631,
		14.105309, 16.894978, 13.708418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.630784, 16.462376, 14.274529>,  <13.824241, 16.409189, 14.126760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.630784, 16.462376, 14.274529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.498189, 16.798405, 14.102766>,  <14.418632, 17.000023, 13.999708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.498189, 16.798405, 14.102766>,  <14.630784, 16.462376, 14.274529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.498189, 16.798405, 14.102766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496671, 0.542352, 0.677623,
		0.802143, 0.011350, -0.597023,
		-0.331488, 0.840075, -0.429407,
		14.398743, 17.050426, 13.973944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.195072, 16.905664, 14.332838>,  <14.630784, 16.462376, 14.274529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.195072, 16.905664, 14.332838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.906934, 17.174076, 14.262613>,  <14.734051, 17.335123, 14.220478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.906934, 17.174076, 14.262613>,  <15.195072, 16.905664, 14.332838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.906934, 17.174076, 14.262613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435911, 0.634851, 0.637924,
		0.539520, 0.382997, -0.749821,
		-0.720347, 0.671028, -0.175562,
		14.690829, 17.375385, 14.209945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.593570, 17.604906, 14.206577>,  <15.195072, 16.905664, 14.332838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.593570, 17.604906, 14.206577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.213908, 17.700127, 14.288979>,  <14.986112, 17.757259, 14.338419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.213908, 17.700127, 14.288979>,  <15.593570, 17.604906, 14.206577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.213908, 17.700127, 14.288979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314645, 0.696063, 0.645364,
		0.010240, 0.677368, -0.735573,
		-0.949154, 0.238053, 0.206002,
		14.929162, 17.771544, 14.350780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.554476, 18.365669, 14.278311>,  <15.593570, 17.604906, 14.206577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.554476, 18.365669, 14.278311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.240544, 18.232323, 14.487274>,  <15.052186, 18.152315, 14.612652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.240544, 18.232323, 14.487274>,  <15.554476, 18.365669, 14.278311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.240544, 18.232323, 14.487274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140102, 0.725712, 0.673583,
		-0.603669, 0.601837, -0.522853,
		-0.784828, -0.333368, 0.522408,
		15.005095, 18.132313, 14.643996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.366349, 19.126570, 14.018620>,  <15.554476, 18.365669, 14.278311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.366349, 19.126570, 14.018620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.220756, 19.474449, 13.885269>,  <15.133399, 19.683176, 13.805258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.220756, 19.474449, 13.885269>,  <15.366349, 19.126570, 14.018620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.220756, 19.474449, 13.885269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010766, -0.353979, -0.935192,
		-0.931343, -0.343984, 0.119479,
		-0.363984, 0.869698, -0.333379,
		15.111561, 19.735359, 13.785255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.717362, 18.990412, 13.487470>,  <15.366349, 19.126570, 14.018620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.717362, 18.990412, 13.487470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.862905, 19.357712, 13.424959>,  <14.950230, 19.578093, 13.387453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.862905, 19.357712, 13.424959>,  <14.717362, 18.990412, 13.487470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.862905, 19.357712, 13.424959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082793, -0.198996, -0.976496,
		-0.927768, 0.342365, -0.148431,
		0.363856, 0.918252, -0.156277,
		14.972061, 19.633188, 13.378077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.238618, 19.355276, 13.048908>,  <14.717362, 18.990412, 13.487470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.238618, 19.355276, 13.048908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.602006, 19.521439, 13.030500>,  <14.820039, 19.621136, 13.019456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.602006, 19.521439, 13.030500>,  <14.238618, 19.355276, 13.048908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.602006, 19.521439, 13.030500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007287, -0.125835, -0.992024,
		-0.417884, 0.900890, -0.117345,
		0.908471, 0.415406, -0.046020,
		14.874547, 19.646061, 13.016694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.204674, 19.765846, 12.433724>,  <14.238618, 19.355276, 13.048908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.204674, 19.765846, 12.433724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.597611, 19.787136, 12.505465>,  <14.833374, 19.799910, 12.548509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.597611, 19.787136, 12.505465>,  <14.204674, 19.765846, 12.433724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.597611, 19.787136, 12.505465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175574, 0.068729, -0.982064,
		-0.064597, 0.996214, 0.058171,
		0.982345, 0.053226, 0.179349,
		14.892315, 19.803104, 12.559269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.486485, 20.244595, 11.952626>,  <14.204674, 19.765846, 12.433724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.486485, 20.244595, 11.952626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.783088, 20.005413, 12.074360>,  <14.961050, 19.861904, 12.147400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.783088, 20.005413, 12.074360>,  <14.486485, 20.244595, 11.952626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.783088, 20.005413, 12.074360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284459, -0.130631, -0.949747,
		0.607658, 0.790816, 0.073229,
		0.741508, -0.597952, 0.304334,
		15.005540, 19.826027, 12.165660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.981412, 20.403118, 11.531511>,  <14.486485, 20.244595, 11.952626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.981412, 20.403118, 11.531511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.072347, 20.031376, 11.647866>,  <15.126907, 19.808331, 11.717679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.072347, 20.031376, 11.647866>,  <14.981412, 20.403118, 11.531511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.072347, 20.031376, 11.647866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166395, -0.257243, -0.951913,
		0.959495, 0.264808, 0.096159,
		0.227338, -0.929356, 0.290886,
		15.140548, 19.752569, 11.735132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.723059, 20.241304, 11.157013>,  <14.981412, 20.403118, 11.531511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.723059, 20.241304, 11.157013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.552007, 19.899696, 11.275526>,  <15.449375, 19.694733, 11.346634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.552007, 19.899696, 11.275526>,  <15.723059, 20.241304, 11.157013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.552007, 19.899696, 11.275526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117621, -0.377545, -0.918490,
		0.896269, -0.357925, 0.261901,
		-0.427630, -0.854019, 0.296282,
		15.423717, 19.643490, 11.364410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.103516, 19.796785, 10.844485>,  <15.723059, 20.241304, 11.157013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.103516, 19.796785, 10.844485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.791837, 19.559418, 10.925186>,  <15.604829, 19.416996, 10.973606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.791837, 19.559418, 10.925186>,  <16.103516, 19.796785, 10.844485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.791837, 19.559418, 10.925186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092449, -0.427179, -0.899428,
		0.619923, -0.682181, 0.387718,
		-0.779198, -0.593420, 0.201751,
		15.558078, 19.381392, 10.985711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.278618, 19.059734, 10.820723>,  <16.103516, 19.796785, 10.844485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.278618, 19.059734, 10.820723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.892282, 19.124050, 10.739433>,  <15.660480, 19.162640, 10.690660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.892282, 19.124050, 10.739433>,  <16.278618, 19.059734, 10.820723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.892282, 19.124050, 10.739433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126891, -0.390327, -0.911890,
		-0.225946, -0.906527, 0.356591,
		-0.965840, 0.160790, -0.203223,
		15.602530, 19.172287, 10.678466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.129616, 18.421984, 10.443695>,  <16.278618, 19.059734, 10.820723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.129616, 18.421984, 10.443695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.840697, 18.689594, 10.373618>,  <15.667346, 18.850161, 10.331573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.840697, 18.689594, 10.373618>,  <16.129616, 18.421984, 10.443695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.840697, 18.689594, 10.373618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012382, -0.240768, -0.970504,
		-0.691473, -0.703160, 0.165622,
		-0.722296, 0.669027, -0.175191,
		15.624008, 18.890303, 10.321061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.487271, 18.076794, 10.283614>,  <16.129616, 18.421984, 10.443695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.487271, 18.076794, 10.283614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.502257, 18.437355, 10.111071>,  <15.511249, 18.653692, 10.007545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.502257, 18.437355, 10.111071>,  <15.487271, 18.076794, 10.283614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.502257, 18.437355, 10.111071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190248, -0.430201, -0.882458,
		-0.981021, -0.049004, -0.187608,
		0.037466, 0.901402, -0.431359,
		15.513497, 18.707775, 9.981663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.122455, 17.926048, 9.631526>,  <15.487271, 18.076794, 10.283614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.122455, 17.926048, 9.631526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.316503, 18.272346, 9.582304>,  <15.432931, 18.480125, 9.552771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.316503, 18.272346, 9.582304>,  <15.122455, 17.926048, 9.631526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.316503, 18.272346, 9.582304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213877, -0.253921, -0.943282,
		-0.847889, 0.431285, -0.308345,
		0.485119, 0.865746, -0.123055,
		15.462038, 18.532070, 9.545387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<14.553138, 21.563507, 16.985720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.872403, 21.758846, 16.844608>,  <15.063963, 21.876049, 16.759941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.872403, 21.758846, 16.844608>,  <14.553138, 21.563507, 16.985720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.872403, 21.758846, 16.844608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281722, -0.215045, -0.935087,
		-0.532510, 0.845738, -0.034063,
		0.798164, 0.488347, -0.352777,
		15.111853, 21.905350, 16.738775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.283100, 21.966776, 16.560040>,  <14.553138, 21.563507, 16.985720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.283100, 21.966776, 16.560040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.666175, 21.914795, 16.457319>,  <14.896020, 21.883606, 16.395687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.666175, 21.914795, 16.457319>,  <14.283100, 21.966776, 16.560040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.666175, 21.914795, 16.457319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286928, -0.361258, -0.887223,
		0.022524, 0.923366, -0.383259,
		0.957687, -0.129952, -0.256803,
		14.953481, 21.875809, 16.380278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.295889, 22.239658, 15.963143>,  <14.283100, 21.966776, 16.560040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.295889, 22.239658, 15.963143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.611148, 21.994854, 15.989271>,  <14.800303, 21.847971, 16.004948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.611148, 21.994854, 15.989271>,  <14.295889, 22.239658, 15.963143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.611148, 21.994854, 15.989271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286563, -0.458803, -0.841060,
		0.544706, 0.644161, -0.536984,
		0.788148, -0.612010, 0.065319,
		14.847592, 21.811251, 16.008867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.554884, 22.272463, 15.345013>,  <14.295889, 22.239658, 15.963143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.554884, 22.272463, 15.345013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.722188, 21.934303, 15.477894>,  <14.822571, 21.731407, 15.557623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.722188, 21.934303, 15.477894>,  <14.554884, 22.272463, 15.345013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.722188, 21.934303, 15.477894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083746, -0.400064, -0.912653,
		0.904459, 0.353905, -0.238129,
		0.418260, -0.845399, 0.332204,
		14.847666, 21.680683, 15.577555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.077642, 22.012205, 14.720805>,  <14.554884, 22.272463, 15.345013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.077642, 22.012205, 14.720805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.991698, 21.693176, 14.946270>,  <14.940132, 21.501759, 15.081549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.991698, 21.693176, 14.946270>,  <15.077642, 22.012205, 14.720805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.991698, 21.693176, 14.946270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012628, -0.574824, -0.818180,
		0.976563, -0.182911, 0.113435,
		-0.214859, -0.797572, 0.563662,
		14.927240, 21.453905, 15.115369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.561147, 21.577572, 14.545579>,  <15.077642, 22.012205, 14.720805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.561147, 21.577572, 14.545579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.296210, 21.324017, 14.705326>,  <15.137249, 21.171885, 14.801174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.296210, 21.324017, 14.705326>,  <15.561147, 21.577572, 14.545579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.296210, 21.324017, 14.705326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206047, -0.666620, -0.716354,
		0.720313, -0.392182, 0.572139,
		-0.662340, -0.633886, 0.399367,
		15.097508, 21.133850, 14.825136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.848356, 20.979578, 14.405396>,  <15.561147, 21.577572, 14.545579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.848356, 20.979578, 14.405396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.477742, 20.872089, 14.510714>,  <15.255374, 20.807596, 14.573904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.477742, 20.872089, 14.510714>,  <15.848356, 20.979578, 14.405396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.477742, 20.872089, 14.510714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039772, -0.765896, -0.641733,
		0.374102, -0.584116, 0.720317,
		-0.926534, -0.268722, 0.263292,
		15.199781, 20.791473, 14.589701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.882654, 20.285467, 14.615530>,  <15.848356, 20.979578, 14.405396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.882654, 20.285467, 14.615530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.492747, 20.329910, 14.538090>,  <15.258803, 20.356577, 14.491626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.492747, 20.329910, 14.538090>,  <15.882654, 20.285467, 14.615530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.492747, 20.329910, 14.538090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032856, -0.786451, -0.616778,
		-0.220788, -0.607577, 0.762957,
		-0.974768, 0.111109, -0.193601,
		15.200316, 20.363243, 14.480009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.668130, 19.651533, 14.591372>,  <15.882654, 20.285467, 14.615530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.668130, 19.651533, 14.591372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.365195, 19.828915, 14.399628>,  <15.183434, 19.935343, 14.284580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.365195, 19.828915, 14.399628>,  <15.668130, 19.651533, 14.591372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.365195, 19.828915, 14.399628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046689, -0.695419, -0.717087,
		-0.651347, -0.565461, 0.505965,
		-0.757342, 0.443449, -0.479360,
		15.137994, 19.961950, 14.255818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.419044, 18.985525, 14.734125>,  <15.668130, 19.651533, 14.591372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.419044, 18.985525, 14.734125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.232701, 18.666862, 14.888174>,  <15.120896, 18.475664, 14.980603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.232701, 18.666862, 14.888174>,  <15.419044, 18.985525, 14.734125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.232701, 18.666862, 14.888174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154937, 0.355070, 0.921911,
		-0.871191, 0.489146, -0.041979,
		-0.465855, -0.796656, 0.385121,
		15.092945, 18.427866, 15.003711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.079332, 19.274736, 15.344232>,  <15.419044, 18.985525, 14.734125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.079332, 19.274736, 15.344232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.068501, 18.880798, 15.412750>,  <15.062003, 18.644436, 15.453861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.068501, 18.880798, 15.412750>,  <15.079332, 19.274736, 15.344232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.068501, 18.880798, 15.412750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084329, 0.168498, 0.982088,
		-0.996070, 0.041039, 0.078489,
		-0.027078, -0.984847, 0.171297,
		15.060378, 18.585344, 15.464139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.467422, 19.073101, 15.729143>,  <15.079332, 19.274736, 15.344232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.467422, 19.073101, 15.729143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.760245, 18.813370, 15.811573>,  <14.935939, 18.657532, 15.861032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.760245, 18.813370, 15.811573>,  <14.467422, 19.073101, 15.729143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.760245, 18.813370, 15.811573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010811, 0.313534, 0.949515,
		-0.681158, -0.692871, 0.236545,
		0.732056, -0.649327, 0.206076,
		14.979862, 18.618572, 15.873396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.330702, 18.908907, 16.366076>,  <14.467422, 19.073101, 15.729143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.330702, 18.908907, 16.366076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.682961, 18.720539, 16.345318>,  <14.894318, 18.607519, 16.332863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.682961, 18.720539, 16.345318>,  <14.330702, 18.908907, 16.366076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.682961, 18.720539, 16.345318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058778, -0.000084, 0.998271,
		-0.470110, -0.882176, 0.027605,
		0.880649, -0.470920, -0.051892,
		14.947156, 18.579264, 16.329750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.324043, 18.278019, 16.785997>,  <14.330702, 18.908907, 16.366076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.324043, 18.278019, 16.785997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.710662, 18.368328, 16.737312>,  <14.942634, 18.422514, 16.708101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.710662, 18.368328, 16.737312>,  <14.324043, 18.278019, 16.785997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.710662, 18.368328, 16.737312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120846, 0.017698, 0.992513,
		0.226236, -0.974019, -0.010178,
		0.966547, 0.225773, -0.121711,
		15.000626, 18.436060, 16.700800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.745924, 17.758955, 17.290985>,  <14.324043, 18.278019, 16.785997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.745924, 17.758955, 17.290985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.980033, 18.073669, 17.212574>,  <15.120498, 18.262499, 17.165527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.980033, 18.073669, 17.212574>,  <14.745924, 17.758955, 17.290985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.980033, 18.073669, 17.212574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292009, 0.021012, 0.956185,
		0.756432, -0.616869, -0.217451,
		0.585271, 0.786786, -0.196026,
		15.155614, 18.309706, 17.153767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.304159, 17.651114, 17.729502>,  <14.745924, 17.758955, 17.290985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.304159, 17.651114, 17.729502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.342502, 18.036259, 17.628538>,  <15.365507, 18.267345, 17.567961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.342502, 18.036259, 17.628538>,  <15.304159, 17.651114, 17.729502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.342502, 18.036259, 17.628538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232086, 0.224967, 0.946322,
		0.967960, -0.149290, -0.201902,
		0.095855, 0.962861, -0.252408,
		15.371259, 18.325117, 17.552816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.925595, 17.826330, 17.978041>,  <15.304159, 17.651114, 17.729502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.925595, 17.826330, 17.978041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.707816, 18.161648, 17.966436>,  <15.577148, 18.362839, 17.959475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.707816, 18.161648, 17.966436>,  <15.925595, 17.826330, 17.978041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.707816, 18.161648, 17.966436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410323, 0.296340, 0.862448,
		0.731582, 0.457654, -0.505313,
		-0.544447, 0.838293, -0.029011,
		15.544482, 18.413136, 17.957733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.412197, 18.384104, 18.121330>,  <15.925595, 17.826330, 17.978041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.412197, 18.384104, 18.121330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.040550, 18.511589, 18.196339>,  <15.817562, 18.588081, 18.241344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.040550, 18.511589, 18.196339>,  <16.412197, 18.384104, 18.121330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.040550, 18.511589, 18.196339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317052, 0.425601, 0.847551,
		0.190318, 0.846927, -0.496481,
		-0.929116, 0.318714, 0.187520,
		15.761815, 18.607203, 18.252594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.506701, 19.067520, 18.344639>,  <16.412197, 18.384104, 18.121330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.506701, 19.067520, 18.344639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.141445, 18.959015, 18.466356>,  <15.922292, 18.893911, 18.539387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.141445, 18.959015, 18.466356>,  <16.506701, 19.067520, 18.344639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.141445, 18.959015, 18.466356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109316, 0.556171, 0.823847,
		-0.392719, 0.785550, -0.478208,
		-0.913138, -0.271265, 0.304292,
		15.867504, 18.877636, 18.557644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.328674, 19.606544, 18.786453>,  <16.506701, 19.067520, 18.344639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.328674, 19.606544, 18.786453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.081089, 19.309086, 18.887545>,  <15.932538, 19.130611, 18.948200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.081089, 19.309086, 18.887545>,  <16.328674, 19.606544, 18.786453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.081089, 19.309086, 18.887545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286046, 0.086243, 0.954327,
		-0.731479, 0.662987, 0.159336,
		-0.618964, -0.743647, 0.252730,
		15.895400, 19.085991, 18.963364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.837959, 19.922127, 19.310574>,  <16.328674, 19.606544, 18.786453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.837959, 19.922127, 19.310574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.825213, 19.522659, 19.326784>,  <15.817566, 19.282978, 19.336510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.825213, 19.522659, 19.326784>,  <15.837959, 19.922127, 19.310574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.825213, 19.522659, 19.326784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107524, 0.043737, 0.993240,
		-0.993692, 0.027291, -0.108775,
		-0.031864, -0.998670, 0.040527,
		15.815655, 19.223059, 19.338942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.180730, 19.809534, 19.629658>,  <15.837959, 19.922127, 19.310574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.180730, 19.809534, 19.629658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.396934, 19.480293, 19.699348>,  <15.526656, 19.282749, 19.741163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.396934, 19.480293, 19.699348>,  <15.180730, 19.809534, 19.629658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.396934, 19.480293, 19.699348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164659, 0.099590, 0.981310,
		-0.825068, -0.559096, -0.081702,
		0.540510, -0.823100, 0.174228,
		15.559087, 19.233364, 19.751617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.795575, 19.453131, 20.123053>,  <15.180730, 19.809534, 19.629658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.795575, 19.453131, 20.123053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.161273, 19.291477, 20.134607>,  <15.380692, 19.194485, 20.141541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.161273, 19.291477, 20.134607>,  <14.795575, 19.453131, 20.123053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.161273, 19.291477, 20.134607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065382, 0.217514, 0.973865,
		-0.399853, -0.888462, 0.225284,
		0.914244, -0.404133, 0.028885,
		15.435546, 19.170237, 20.143272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<21.776567, 22.410015, 17.811863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.399914, 22.506378, 17.905918>,  <21.173922, 22.564196, 17.962351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.399914, 22.506378, 17.905918>,  <21.776567, 22.410015, 17.811863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.399914, 22.506378, 17.905918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331328, -0.539588, -0.773994,
		-0.059584, -0.806726, 0.587913,
		-0.941632, 0.240909, 0.235140,
		21.117424, 22.578651, 17.976460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.443373, 21.774269, 17.617966>,  <21.776567, 22.410015, 17.811863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.443373, 21.774269, 17.617966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.139656, 22.033669, 17.639587>,  <20.957426, 22.189308, 17.652561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.139656, 22.033669, 17.639587>,  <21.443373, 21.774269, 17.617966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.139656, 22.033669, 17.639587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536805, -0.577220, -0.615351,
		-0.367853, -0.496249, 0.786397,
		-0.759292, 0.648501, 0.054056,
		20.911869, 22.228218, 17.655804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.797834, 21.488451, 17.883068>,  <21.443373, 21.774269, 17.617966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.797834, 21.488451, 17.883068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.713676, 21.794510, 17.639664>,  <20.663181, 21.978146, 17.493622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.713676, 21.794510, 17.639664>,  <20.797834, 21.488451, 17.883068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.713676, 21.794510, 17.639664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417322, -0.633174, -0.651868,
		-0.884067, 0.116793, 0.452531,
		-0.210397, 0.765147, -0.608509,
		20.650557, 22.024054, 17.457111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.327166, 21.169741, 17.528080>,  <20.797834, 21.488451, 17.883068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.327166, 21.169741, 17.528080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.371670, 21.505348, 17.315039>,  <20.398373, 21.706713, 17.187214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.371670, 21.505348, 17.315039>,  <20.327166, 21.169741, 17.528080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.371670, 21.505348, 17.315039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354042, -0.467305, -0.810112,
		-0.928588, 0.278696, 0.245057,
		0.111259, 0.839020, -0.532603,
		20.405048, 21.757053, 17.155258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.771950, 21.224072, 17.066568>,  <20.327166, 21.169741, 17.528080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.771950, 21.224072, 17.066568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.066269, 21.435692, 16.897472>,  <20.242861, 21.562664, 16.796015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.066269, 21.435692, 16.897472>,  <19.771950, 21.224072, 17.066568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.066269, 21.435692, 16.897472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265826, -0.348503, -0.898822,
		-0.622848, 0.773726, -0.115792,
		0.735796, 0.529049, -0.422741,
		20.287008, 21.594406, 16.770651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.497610, 21.609575, 16.487675>,  <19.771950, 21.224072, 17.066568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.497610, 21.609575, 16.487675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.889259, 21.603138, 16.406628>,  <20.124249, 21.599276, 16.358000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.889259, 21.603138, 16.406628>,  <19.497610, 21.609575, 16.487675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.889259, 21.603138, 16.406628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198020, -0.300347, -0.933048,
		-0.045842, 0.953694, -0.297264,
		0.979125, -0.016092, -0.202619,
		20.182997, 21.598310, 16.345842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.505932, 21.750240, 15.765447>,  <19.497610, 21.609575, 16.487675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.505932, 21.750240, 15.765447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.879551, 21.616966, 15.816893>,  <20.103722, 21.537003, 15.847760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.879551, 21.616966, 15.816893>,  <19.505932, 21.750240, 15.765447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.879551, 21.616966, 15.816893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022594, -0.414519, -0.909760,
		0.356431, 0.846854, -0.394709,
		0.934048, -0.333185, 0.128614,
		20.159765, 21.517012, 15.855476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.768539, 22.007343, 15.177538>,  <19.505932, 21.750240, 15.765447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.768539, 22.007343, 15.177538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.014465, 21.720531, 15.308912>,  <20.162020, 21.548445, 15.387737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.014465, 21.720531, 15.308912>,  <19.768539, 22.007343, 15.177538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.014465, 21.720531, 15.308912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043271, -0.385147, -0.921840,
		0.787485, 0.580971, -0.205767,
		0.614813, -0.717032, 0.328436,
		20.198910, 21.505423, 15.407443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.459299, 22.104958, 14.792619>,  <19.768539, 22.007343, 15.177538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.459299, 22.104958, 14.792619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.420856, 21.731308, 14.930126>,  <20.397791, 21.507118, 15.012630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.420856, 21.731308, 14.930126>,  <20.459299, 22.104958, 14.792619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.420856, 21.731308, 14.930126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065746, -0.350570, -0.934226,
		0.993198, -0.067183, 0.095106,
		-0.096105, -0.934124, 0.343768,
		20.392025, 21.451071, 15.033257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.882832, 21.745148, 14.367651>,  <20.459299, 22.104958, 14.792619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.882832, 21.745148, 14.367651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.672813, 21.437481, 14.513371>,  <20.546803, 21.252880, 14.600802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.672813, 21.437481, 14.513371>,  <20.882832, 21.745148, 14.367651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.672813, 21.437481, 14.513371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064100, -0.462567, -0.884264,
		0.848658, -0.440926, 0.292171,
		-0.525043, -0.769166, 0.364298,
		20.515301, 21.206732, 14.622660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.176651, 21.099888, 14.202494>,  <20.882832, 21.745148, 14.367651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.176651, 21.099888, 14.202494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.795765, 20.990906, 14.257710>,  <20.567234, 20.925516, 14.290839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.795765, 20.990906, 14.257710>,  <21.176651, 21.099888, 14.202494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.795765, 20.990906, 14.257710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036339, -0.549801, -0.834505,
		0.303260, -0.789612, 0.533429,
		-0.952215, -0.272456, 0.138039,
		20.510101, 20.909168, 14.299121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.114346, 20.377520, 13.854561>,  <21.176651, 21.099888, 14.202494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.114346, 20.377520, 13.854561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.725323, 20.458927, 13.899666>,  <20.491909, 20.507772, 13.926729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.725323, 20.458927, 13.899666>,  <21.114346, 20.377520, 13.854561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.725323, 20.458927, 13.899666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215907, -0.608783, -0.763392,
		-0.086716, -0.766788, 0.636016,
		-0.972556, 0.203518, 0.112764,
		20.433556, 20.519983, 13.933495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.714741, 19.758860, 13.538835>,  <21.114346, 20.377520, 13.854561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.714741, 19.758860, 13.538835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.408287, 20.013237, 13.575970>,  <20.224415, 20.165863, 13.598250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.408287, 20.013237, 13.575970>,  <20.714741, 19.758860, 13.538835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.408287, 20.013237, 13.575970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366493, -0.313647, -0.875962,
		-0.527943, -0.705127, 0.473363,
		-0.766133, 0.635942, 0.092837,
		20.178448, 20.204020, 13.603821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.010345, 19.386494, 13.496212>,  <20.714741, 19.758860, 13.538835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.010345, 19.386494, 13.496212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.988754, 19.769821, 13.383989>,  <19.975800, 19.999817, 13.316655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.988754, 19.769821, 13.383989>,  <20.010345, 19.386494, 13.496212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.988754, 19.769821, 13.383989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448230, -0.274323, -0.850786,
		-0.892287, 0.079831, 0.444354,
		-0.053977, 0.958318, -0.280558,
		19.972561, 20.057316, 13.299822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.503571, 19.018476, 13.910944>,  <20.010345, 19.386494, 13.496212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.503571, 19.018476, 13.910944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.501720, 18.639824, 14.039858>,  <19.500610, 18.412632, 14.117207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.501720, 18.639824, 14.039858>,  <19.503571, 19.018476, 13.910944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.501720, 18.639824, 14.039858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282795, 0.307894, 0.908421,
		-0.959169, 0.095343, 0.266278,
		-0.004627, -0.946631, 0.322285,
		19.500332, 18.355835, 14.136543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.006586, 18.965797, 14.479736>,  <19.503571, 19.018476, 13.910944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.006586, 18.965797, 14.479736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.276672, 18.671513, 14.500937>,  <19.438725, 18.494942, 14.513657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.276672, 18.671513, 14.500937>,  <19.006586, 18.965797, 14.479736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.276672, 18.671513, 14.500937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209957, 0.260579, 0.942346,
		-0.707108, -0.625160, 0.330415,
		0.675216, -0.735713, 0.053001,
		19.479237, 18.450798, 14.516837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.935101, 18.593340, 15.117324>,  <19.006586, 18.965797, 14.479736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.935101, 18.593340, 15.117324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.299942, 18.490723, 14.989414>,  <19.518847, 18.429153, 14.912668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.299942, 18.490723, 14.989414>,  <18.935101, 18.593340, 15.117324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.299942, 18.490723, 14.989414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373251, 0.197033, 0.906566,
		-0.169566, -0.946237, 0.275469,
		0.912102, -0.256542, -0.319774,
		19.573572, 18.413761, 14.893482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.093176, 18.118273, 15.554461>,  <18.935101, 18.593340, 15.117324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.093176, 18.118273, 15.554461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.438412, 18.250519, 15.401741>,  <19.645554, 18.329866, 15.310109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.438412, 18.250519, 15.401741>,  <19.093176, 18.118273, 15.554461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.438412, 18.250519, 15.401741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367500, 0.107434, 0.923797,
		0.346439, -0.937631, -0.028776,
		0.863089, 0.330615, -0.381799,
		19.697338, 18.349703, 15.287201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.616835, 17.705254, 15.858858>,  <19.093176, 18.118273, 15.554461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.616835, 17.705254, 15.858858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.800953, 18.040085, 15.740583>,  <19.911425, 18.240984, 15.669619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.800953, 18.040085, 15.740583>,  <19.616835, 17.705254, 15.858858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.800953, 18.040085, 15.740583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344258, 0.138704, 0.928573,
		0.818300, -0.529211, -0.224326,
		0.460296, 0.837077, -0.295686,
		19.939041, 18.291208, 15.651877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.309454, 17.720015, 16.120571>,  <19.616835, 17.705254, 15.858858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.309454, 17.720015, 16.120571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.270977, 18.108963, 16.035488>,  <20.247890, 18.342331, 15.984438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.270977, 18.108963, 16.035488>,  <20.309454, 17.720015, 16.120571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.270977, 18.108963, 16.035488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404381, 0.233447, 0.884296,
		0.909518, -0.000952, -0.415663,
		-0.096193, 0.972369, -0.212709,
		20.242119, 18.400673, 15.971676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.900177, 18.011827, 16.308252>,  <20.309454, 17.720015, 16.120571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.900177, 18.011827, 16.308252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.644131, 18.318192, 16.332361>,  <20.490503, 18.502010, 16.346827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.644131, 18.318192, 16.332361>,  <20.900177, 18.011827, 16.308252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.644131, 18.318192, 16.332361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489881, 0.346467, 0.799986,
		0.591834, 0.541611, -0.596984,
		-0.640116, 0.765910, 0.060274,
		20.452095, 18.547964, 16.350443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.310236, 18.544436, 16.397877>,  <20.900177, 18.011827, 16.308252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.310236, 18.544436, 16.397877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.954346, 18.652294, 16.545214>,  <20.740810, 18.717009, 16.633615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.954346, 18.652294, 16.545214>,  <21.310236, 18.544436, 16.397877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.954346, 18.652294, 16.545214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434313, 0.251560, 0.864922,
		0.140563, 0.929521, -0.340931,
		-0.889727, 0.269647, 0.368343,
		20.687428, 18.733189, 16.655716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.469439, 19.031462, 16.839626>,  <21.310236, 18.544436, 16.397877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.469439, 19.031462, 16.839626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.092258, 18.958996, 16.951359>,  <20.865952, 18.915516, 17.018398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.092258, 18.958996, 16.951359>,  <21.469439, 19.031462, 16.839626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.092258, 18.958996, 16.951359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255427, 0.144505, 0.955968,
		-0.213552, 0.972778, -0.089987,
		-0.942949, -0.181164, 0.279333,
		20.809374, 18.904646, 17.035158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.233923, 19.677097, 17.199356>,  <21.469439, 19.031462, 16.839626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.233923, 19.677097, 17.199356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.016644, 19.370480, 17.336380>,  <20.886276, 19.186510, 17.418594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.016644, 19.370480, 17.336380>,  <21.233923, 19.677097, 17.199356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.016644, 19.370480, 17.336380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026982, 0.423730, 0.905386,
		-0.839171, 0.482560, -0.250852,
		-0.543197, -0.766543, 0.342562,
		20.853683, 19.140516, 17.439148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.633970, 19.955175, 17.549208>,  <21.233923, 19.677097, 17.199356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.633970, 19.955175, 17.549208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.682423, 19.580112, 17.679518>,  <20.711494, 19.355076, 17.757704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.682423, 19.580112, 17.679518>,  <20.633970, 19.955175, 17.549208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.682423, 19.580112, 17.679518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035357, 0.332059, 0.942596,
		-0.992006, -0.102661, 0.073376,
		0.121133, -0.937655, 0.325775,
		20.718763, 19.298817, 17.777250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.119867, 19.846348, 17.997665>,  <20.633970, 19.955175, 17.549208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.119867, 19.846348, 17.997665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.407719, 19.576939, 18.065193>,  <20.580429, 19.415293, 18.105709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.407719, 19.576939, 18.065193>,  <20.119867, 19.846348, 17.997665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.407719, 19.576939, 18.065193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045187, 0.288039, 0.956552,
		-0.692887, -0.680734, 0.237716,
		0.719629, -0.673524, 0.168818,
		20.623608, 19.374882, 18.115839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.867392, 19.559217, 18.688152>,  <20.119867, 19.846348, 17.997665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.867392, 19.559217, 18.688152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.247074, 19.445415, 18.634396>,  <20.474884, 19.377134, 18.602140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.247074, 19.445415, 18.634396>,  <19.867392, 19.559217, 18.688152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.247074, 19.445415, 18.634396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230846, 0.339437, 0.911862,
		-0.213813, -0.896570, 0.387873,
		0.949207, -0.284507, -0.134393,
		20.531836, 19.360064, 18.594078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.105330, 19.178926, 19.241405>,  <19.867392, 19.559217, 18.688152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.105330, 19.178926, 19.241405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.441280, 19.329876, 19.085358>,  <20.642851, 19.420446, 18.991730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.441280, 19.329876, 19.085358>,  <20.105330, 19.178926, 19.241405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.441280, 19.329876, 19.085358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175328, 0.491594, 0.852992,
		0.513685, -0.784805, 0.346711,
		0.839874, 0.377381, -0.390123,
		20.693243, 19.443089, 18.968321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.812902, 18.606207, 19.585136>,  <20.105330, 19.178926, 19.241405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.812902, 18.606207, 19.585136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.572842, 18.431499, 19.853180>,  <19.428804, 18.326675, 20.014006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.572842, 18.431499, 19.853180>,  <19.812902, 18.606207, 19.585136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.572842, 18.431499, 19.853180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224035, -0.712442, -0.665007,
		0.767869, -0.549235, 0.329723,
		-0.600154, -0.436769, 0.670110,
		19.392796, 18.300468, 20.054213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.976799, 17.823421, 19.765806>,  <19.812902, 18.606207, 19.585136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.976799, 17.823421, 19.765806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.588017, 17.860119, 19.852419>,  <19.354748, 17.882137, 19.904387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.588017, 17.860119, 19.852419>,  <19.976799, 17.823421, 19.765806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.588017, 17.860119, 19.852419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210850, -0.747727, -0.629640,
		0.104143, -0.657638, 0.746101,
		-0.971955, 0.091743, 0.216533,
		19.296431, 17.887642, 19.917379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.804243, 17.106869, 19.795193>,  <19.976799, 17.823421, 19.765806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.804243, 17.106869, 19.795193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.454727, 17.300629, 19.778002>,  <19.245018, 17.416883, 19.767687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.454727, 17.300629, 19.778002>,  <19.804243, 17.106869, 19.795193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.454727, 17.300629, 19.778002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351854, -0.690745, -0.631720,
		-0.335690, -0.536870, 0.774005,
		-0.873792, 0.484398, -0.042976,
		19.192591, 17.445948, 19.765108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.294035, 16.634687, 19.766449>,  <19.804243, 17.106869, 19.795193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.294035, 16.634687, 19.766449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.153412, 16.970024, 19.599792>,  <19.069038, 17.171227, 19.499800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.153412, 16.970024, 19.599792>,  <19.294035, 16.634687, 19.766449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.153412, 16.970024, 19.599792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268063, -0.516561, -0.813208,
		-0.896966, -0.174205, 0.406331,
		-0.351559, 0.838342, -0.416640,
		19.047945, 17.221527, 19.474800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.790237, 16.475094, 19.532028>,  <19.294035, 16.634687, 19.766449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.790237, 16.475094, 19.532028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.810501, 16.804749, 19.306379>,  <18.822659, 17.002541, 19.170990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.810501, 16.804749, 19.306379>,  <18.790237, 16.475094, 19.532028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.810501, 16.804749, 19.306379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263418, -0.533817, -0.803523,
		-0.963351, 0.189306, 0.190050,
		0.050660, 0.824137, -0.564120,
		18.825699, 17.051991, 19.137144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.141653, 16.449202, 19.117758>,  <18.790237, 16.475094, 19.532028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.141653, 16.449202, 19.117758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.404869, 16.679291, 18.923395>,  <18.562798, 16.817345, 18.806778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.404869, 16.679291, 18.923395>,  <18.141653, 16.449202, 19.117758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.404869, 16.679291, 18.923395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225311, -0.465323, -0.855985,
		-0.718485, 0.672751, -0.176597,
		0.658039, 0.575223, -0.485905,
		18.602282, 16.851858, 18.777624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.864576, 16.594559, 18.544540>,  <18.141653, 16.449202, 19.117758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.864576, 16.594559, 18.544540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.238380, 16.694843, 18.443481>,  <18.462664, 16.755014, 18.382845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.238380, 16.694843, 18.443481>,  <17.864576, 16.594559, 18.544540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.238380, 16.694843, 18.443481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129137, -0.422635, -0.897052,
		-0.331677, 0.870933, -0.362582,
		0.934512, 0.250709, -0.252648,
		18.518734, 16.770056, 18.367687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.869715, 16.903011, 17.818111>,  <17.864576, 16.594559, 18.544540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.869715, 16.903011, 17.818111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.245766, 16.768856, 17.842373>,  <18.471395, 16.688362, 17.856930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.245766, 16.768856, 17.842373>,  <17.869715, 16.903011, 17.818111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.245766, 16.768856, 17.842373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053810, -0.321782, -0.945284,
		0.336555, 0.885421, -0.320562,
		0.940125, -0.335390, 0.060653,
		18.527803, 16.668240, 17.860569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.265911, 17.201937, 17.234499>,  <17.869715, 16.903011, 17.818111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.265911, 17.201937, 17.234499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.465267, 16.882172, 17.368689>,  <18.584881, 16.690311, 17.449202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.465267, 16.882172, 17.368689>,  <18.265911, 17.201937, 17.234499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.465267, 16.882172, 17.368689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198524, -0.271437, -0.941759,
		0.843915, 0.535965, 0.023421,
		0.498393, -0.799414, 0.335472,
		18.614784, 16.642347, 17.469330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.864704, 17.122339, 16.860308>,  <18.265911, 17.201937, 17.234499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.864704, 17.122339, 16.860308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.813923, 16.761608, 17.025518>,  <18.783455, 16.545170, 17.124645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.813923, 16.761608, 17.025518>,  <18.864704, 17.122339, 16.860308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.813923, 16.761608, 17.025518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300588, -0.431794, -0.850412,
		0.945267, 0.016189, 0.325896,
		-0.126952, -0.901827, 0.413027,
		18.775837, 16.491060, 17.149427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.358063, 16.694679, 16.588440>,  <18.864704, 17.122339, 16.860308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.358063, 16.694679, 16.588440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.109085, 16.410717, 16.720255>,  <18.959698, 16.240339, 16.799345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.109085, 16.410717, 16.720255>,  <19.358063, 16.694679, 16.588440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.109085, 16.410717, 16.720255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150705, -0.521882, -0.839599,
		0.768017, -0.472941, 0.431830,
		-0.622445, -0.709905, 0.329539,
		18.922352, 16.197746, 16.819117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.719290, 16.069456, 16.372644>,  <19.358063, 16.694679, 16.588440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.719290, 16.069456, 16.372644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.331516, 16.000992, 16.442959>,  <19.098852, 15.959913, 16.485147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.331516, 16.000992, 16.442959>,  <19.719290, 16.069456, 16.372644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.331516, 16.000992, 16.442959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085027, -0.437705, -0.895089,
		0.230146, -0.882677, 0.409773,
		-0.969434, -0.171159, 0.175787,
		19.040686, 15.949644, 16.495695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.634567, 15.436835, 16.119272>,  <19.719290, 16.069456, 16.372644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.634567, 15.436835, 16.119272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.271290, 15.604176, 16.124371>,  <19.053324, 15.704580, 16.127430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.271290, 15.604176, 16.124371>,  <19.634567, 15.436835, 16.119272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.271290, 15.604176, 16.124371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185562, -0.375163, -0.908196,
		-0.375163, -0.827185, 0.418352,
		0.908196, -0.418352, -0.012747,
		18.998831, 15.729681, 16.128195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.180706, 14.941787, 15.976219>,  <19.634567, 15.436835, 16.119272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.180706, 14.941787, 15.976219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.978218, 15.271290, 15.874107>,  <18.856726, 15.468991, 15.812840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.978218, 15.271290, 15.874107>,  <19.180706, 14.941787, 15.976219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.978218, 15.271290, 15.874107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152576, -0.376885, -0.913607,
		-0.848800, -0.423537, 0.316472,
		-0.506219, 0.823756, -0.255278,
		18.826353, 15.518416, 15.797523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<14.902726, 18.643787, 20.807909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.228805, 18.841743, 20.687550>,  <15.424452, 18.960518, 20.615334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.228805, 18.841743, 20.687550>,  <14.902726, 18.643787, 20.807909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.228805, 18.841743, 20.687550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143472, 0.330779, 0.932738,
		0.561134, -0.803535, 0.198647,
		0.815196, 0.494891, -0.300896,
		15.473363, 18.990211, 20.597281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.528598, 18.426270, 21.272667>,  <14.902726, 18.643787, 20.807909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.528598, 18.426270, 21.272667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.626721, 18.781281, 21.116655>,  <15.685596, 18.994287, 21.023048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.626721, 18.781281, 21.116655>,  <15.528598, 18.426270, 21.272667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.626721, 18.781281, 21.116655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326516, 0.303175, 0.895250,
		0.912804, -0.346963, -0.215419,
		0.245309, 0.887525, -0.390029,
		15.700315, 19.047539, 20.999647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.192425, 18.563225, 21.454229>,  <15.528598, 18.426270, 21.272667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.192425, 18.563225, 21.454229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.039558, 18.920383, 21.358995>,  <15.947839, 19.134678, 21.301855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.039558, 18.920383, 21.358995>,  <16.192425, 18.563225, 21.454229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.039558, 18.920383, 21.358995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326053, 0.371363, 0.869356,
		0.864661, 0.254609, -0.433054,
		-0.382166, 0.892896, -0.238087,
		15.924909, 19.188251, 21.287569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.660358, 18.985415, 21.768318>,  <16.192425, 18.563225, 21.454229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.660358, 18.985415, 21.768318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.389919, 19.263721, 21.671324>,  <16.227655, 19.430706, 21.613127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.389919, 19.263721, 21.671324>,  <16.660358, 18.985415, 21.768318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.389919, 19.263721, 21.671324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244710, 0.522458, 0.816795,
		0.694990, 0.492893, -0.523494,
		-0.676096, 0.695769, -0.242487,
		16.187090, 19.472452, 21.598577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.971922, 19.669226, 21.848833>,  <16.660358, 18.985415, 21.768318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.971922, 19.669226, 21.848833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.578484, 19.741207, 21.853849>,  <16.342421, 19.784395, 21.856859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.578484, 19.741207, 21.853849>,  <16.971922, 19.669226, 21.848833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.578484, 19.741207, 21.853849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132003, 0.670653, 0.729932,
		0.122943, 0.719613, -0.683405,
		-0.983596, 0.179951, 0.012539,
		16.283405, 19.795193, 21.857611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.799295, 20.388020, 21.790619>,  <16.971922, 19.669226, 21.848833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.799295, 20.388020, 21.790619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.489182, 20.228477, 21.986515>,  <16.303114, 20.132751, 22.104053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.489182, 20.228477, 21.986515>,  <16.799295, 20.388020, 21.790619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.489182, 20.228477, 21.986515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179836, 0.603893, 0.776513,
		-0.605468, 0.690092, -0.396461,
		-0.775285, -0.398856, 0.489741,
		16.256596, 20.108820, 22.133438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.316734, 20.955318, 21.965054>,  <16.799295, 20.388020, 21.790619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.316734, 20.955318, 21.965054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.226288, 20.661625, 22.221107>,  <16.172020, 20.485409, 22.374741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.226288, 20.661625, 22.221107>,  <16.316734, 20.955318, 21.965054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.226288, 20.661625, 22.221107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264525, 0.586177, 0.765782,
		-0.937495, 0.342490, 0.061678,
		-0.226118, -0.734232, 0.640136,
		16.158453, 20.441355, 22.413149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.009335, 21.284542, 22.499285>,  <16.316734, 20.955318, 21.965054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.009335, 21.284542, 22.499285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.068207, 20.933960, 22.682657>,  <16.103531, 20.723610, 22.792681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.068207, 20.933960, 22.682657>,  <16.009335, 21.284542, 22.499285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.068207, 20.933960, 22.682657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179282, 0.479443, 0.859065,
		-0.972726, -0.044248, 0.227697,
		0.147180, -0.876457, 0.458433,
		16.112360, 20.671022, 22.820187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.693777, 21.330633, 23.196718>,  <16.009335, 21.284542, 22.499285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.693777, 21.330633, 23.196718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.976666, 21.049049, 23.222876>,  <16.146400, 20.880098, 23.238571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.976666, 21.049049, 23.222876>,  <15.693777, 21.330633, 23.196718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.976666, 21.049049, 23.222876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451050, 0.520492, 0.725012,
		-0.544417, -0.483249, 0.685625,
		0.707223, -0.703959, 0.065395,
		16.188833, 20.837862, 23.242495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.866362, 21.184748, 23.932682>,  <15.693777, 21.330633, 23.196718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.866362, 21.184748, 23.932682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.187099, 21.077614, 23.719025>,  <16.379541, 21.013334, 23.590830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.187099, 21.077614, 23.719025>,  <15.866362, 21.184748, 23.932682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.187099, 21.077614, 23.719025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595905, 0.424348, 0.681781,
		0.044058, -0.864982, 0.499865,
		0.801845, -0.267834, -0.534143,
		16.427652, 20.997263, 23.558781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.377626, 21.084436, 24.502516>,  <15.866362, 21.184748, 23.932682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.377626, 21.084436, 24.502516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.614971, 21.057236, 24.181692>,  <16.757378, 21.040916, 23.989197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.614971, 21.057236, 24.181692>,  <16.377626, 21.084436, 24.502516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.614971, 21.057236, 24.181692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796876, 0.190294, 0.573391,
		0.113636, -0.979370, 0.167101,
		0.593359, -0.068001, -0.802060,
		16.792978, 21.036835, 23.941074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.952169, 20.686352, 24.707592>,  <16.377626, 21.084436, 24.502516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.952169, 20.686352, 24.707592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.053608, 20.917107, 24.397007>,  <17.114471, 21.055559, 24.210657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.053608, 20.917107, 24.397007>,  <16.952169, 20.686352, 24.707592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.053608, 20.917107, 24.397007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699715, 0.444840, 0.559032,
		0.667898, -0.685070, -0.290846,
		0.253596, 0.576885, -0.776461,
		17.129686, 21.090172, 24.164068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.621611, 20.576742, 24.616377>,  <16.952169, 20.686352, 24.707592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.621611, 20.576742, 24.616377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.536129, 20.936359, 24.463511>,  <17.484840, 21.152130, 24.371790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.536129, 20.936359, 24.463511>,  <17.621611, 20.576742, 24.616377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.536129, 20.936359, 24.463511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729574, 0.407040, 0.549582,
		0.649655, -0.161372, -0.742905,
		-0.213705, 0.899043, -0.382168,
		17.472017, 21.206072, 24.348860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.321236, 20.864063, 24.293364>,  <17.621611, 20.576742, 24.616377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.321236, 20.864063, 24.293364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.044510, 21.118740, 24.429611>,  <17.878475, 21.271545, 24.511360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.044510, 21.118740, 24.429611>,  <18.321236, 20.864063, 24.293364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.044510, 21.118740, 24.429611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626188, 0.294105, 0.722074,
		0.359561, 0.712830, -0.602153,
		-0.691813, 0.636691, 0.340617,
		17.836966, 21.309748, 24.531796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.408115, 21.434534, 24.745443>,  <18.321236, 20.864063, 24.293364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.408115, 21.434534, 24.745443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.800159, 21.416771, 24.822815>,  <19.035385, 21.406113, 24.869238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.800159, 21.416771, 24.822815>,  <18.408115, 21.434534, 24.745443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.800159, 21.416771, 24.822815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149266, -0.477381, -0.865925,
		0.130793, 0.877574, -0.461257,
		0.980109, -0.044407, 0.193430,
		19.094193, 21.403448, 24.880844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.841745, 21.648211, 24.106537>,  <18.408115, 21.434534, 24.745443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.841745, 21.648211, 24.106537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.090500, 21.447235, 24.346807>,  <19.239752, 21.326649, 24.490971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.090500, 21.447235, 24.346807>,  <18.841745, 21.648211, 24.106537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.090500, 21.447235, 24.346807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280771, -0.572992, -0.769966,
		0.731045, 0.647483, -0.215265,
		0.621886, -0.502440, 0.600677,
		19.277065, 21.296503, 24.527010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.534077, 21.651087, 23.751785>,  <18.841745, 21.648211, 24.106537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.534077, 21.651087, 23.751785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.520191, 21.338886, 24.001463>,  <19.511860, 21.151566, 24.151270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.520191, 21.338886, 24.001463>,  <19.534077, 21.651087, 23.751785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.520191, 21.338886, 24.001463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353322, -0.593819, -0.722871,
		0.934858, 0.195448, 0.296381,
		-0.034713, -0.780499, 0.624192,
		19.509777, 21.104736, 24.188721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.108374, 21.186686, 23.574606>,  <19.534077, 21.651087, 23.751785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.108374, 21.186686, 23.574606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.861622, 20.951511, 23.783907>,  <19.713572, 20.810408, 23.909487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.861622, 20.951511, 23.783907>,  <20.108374, 21.186686, 23.574606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.861622, 20.951511, 23.783907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204523, -0.761726, -0.614771,
		0.760021, -0.272222, 0.590139,
		-0.616879, -0.587936, 0.523252,
		19.676558, 20.775131, 23.940882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.406786, 20.540882, 23.631645>,  <20.108374, 21.186686, 23.574606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.406786, 20.540882, 23.631645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.030838, 20.432617, 23.714960>,  <19.805269, 20.367659, 23.764948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.030838, 20.432617, 23.714960>,  <20.406786, 20.540882, 23.631645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.030838, 20.432617, 23.714960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064286, -0.739165, -0.670449,
		0.335425, -0.616746, 0.712120,
		-0.939871, -0.270665, 0.208286,
		19.748877, 20.351418, 23.777447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.407610, 19.820549, 23.668215>,  <20.406786, 20.540882, 23.631645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.407610, 19.820549, 23.668215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.015259, 19.873295, 23.610962>,  <19.779848, 19.904942, 23.576611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.015259, 19.873295, 23.610962>,  <20.407610, 19.820549, 23.668215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.015259, 19.873295, 23.610962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042313, -0.573369, -0.818204,
		-0.189958, -0.808616, 0.556827,
		-0.980880, 0.131864, -0.143131,
		19.720995, 19.912853, 23.568022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.172115, 19.168882, 23.371370>,  <20.407610, 19.820549, 23.668215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.172115, 19.168882, 23.371370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.874065, 19.422390, 23.288301>,  <19.695236, 19.574495, 23.238461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.874065, 19.422390, 23.288301>,  <20.172115, 19.168882, 23.371370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.874065, 19.422390, 23.288301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115377, -0.429188, -0.895815,
		-0.656870, -0.643533, 0.392921,
		-0.745124, 0.633769, -0.207672,
		19.650528, 19.612520, 23.226000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.552521, 18.803719, 23.262093>,  <20.172115, 19.168882, 23.371370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.552521, 18.803719, 23.262093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.503197, 19.153172, 23.073811>,  <19.473602, 19.362843, 22.960842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.503197, 19.153172, 23.073811>,  <19.552521, 18.803719, 23.262093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.503197, 19.153172, 23.073811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139309, -0.484867, -0.863421,
		-0.982542, -0.040894, 0.181493,
		-0.123308, 0.873631, -0.470706,
		19.466204, 19.415260, 22.932598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.921759, 18.819433, 22.841385>,  <19.552521, 18.803719, 23.262093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.921759, 18.819433, 22.841385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.154045, 19.090557, 22.661011>,  <19.293417, 19.253231, 22.552786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.154045, 19.090557, 22.661011>,  <18.921759, 18.819433, 22.841385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.154045, 19.090557, 22.661011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261389, -0.369336, -0.891777,
		-0.771001, 0.635740, -0.037308,
		0.580717, 0.677810, -0.450934,
		19.328260, 19.293900, 22.525730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.629688, 18.774738, 22.169266>,  <18.921759, 18.819433, 22.841385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.629688, 18.774738, 22.169266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.973770, 18.970959, 22.113541>,  <19.180220, 19.088692, 22.080105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.973770, 18.970959, 22.113541>,  <18.629688, 18.774738, 22.169266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.973770, 18.970959, 22.113541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032902, -0.326010, -0.944794,
		-0.508888, 0.808132, -0.296575,
		0.860204, 0.490552, -0.139314,
		19.231831, 19.118124, 22.071747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.594473, 19.166500, 21.660118>,  <18.629688, 18.774738, 22.169266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.594473, 19.166500, 21.660118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.987606, 19.094715, 21.677227>,  <19.223486, 19.051643, 21.687492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.987606, 19.094715, 21.677227>,  <18.594473, 19.166500, 21.660118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.987606, 19.094715, 21.677227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014426, -0.305894, -0.951956,
		0.183925, 0.934998, -0.303232,
		0.982835, -0.179463, 0.042773,
		19.282455, 19.040876, 21.690060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.801390, 19.504717, 21.000563>,  <18.594473, 19.166500, 21.660118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.801390, 19.504717, 21.000563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.070206, 19.232533, 21.117413>,  <19.231495, 19.069221, 21.187523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.070206, 19.232533, 21.117413>,  <18.801390, 19.504717, 21.000563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.070206, 19.232533, 21.117413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060841, -0.443889, -0.894014,
		0.738012, 0.583039, -0.339711,
		0.672039, -0.680462, 0.292123,
		19.271818, 19.028395, 21.205050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.254694, 19.497993, 20.473772>,  <18.801390, 19.504717, 21.000563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.254694, 19.497993, 20.473772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.320545, 19.150700, 20.660990>,  <19.360056, 18.942324, 20.773319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.320545, 19.150700, 20.660990>,  <19.254694, 19.497993, 20.473772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.320545, 19.150700, 20.660990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026035, -0.478177, -0.877877,
		0.986012, 0.132337, -0.101325,
		0.164627, -0.868236, 0.468043,
		19.369934, 18.890228, 20.801403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.897520, 19.114304, 20.219814>,  <19.254694, 19.497993, 20.473772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.897520, 19.114304, 20.219814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.683056, 18.806675, 20.358988>,  <19.554377, 18.622097, 20.442492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.683056, 18.806675, 20.358988>,  <19.897520, 19.114304, 20.219814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.683056, 18.806675, 20.358988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032098, -0.430467, -0.902036,
		0.843505, -0.472469, 0.255485,
		-0.536162, -0.769072, 0.347935,
		19.522207, 18.575954, 20.463367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.573475, 19.141592, 19.816101>,  <19.897520, 19.114304, 20.219814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.573475, 19.141592, 19.816101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.764465, 19.400955, 19.578922>,  <20.879061, 19.556572, 19.436615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.764465, 19.400955, 19.578922>,  <20.573475, 19.141592, 19.816101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.764465, 19.400955, 19.578922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239902, 0.552993, 0.797901,
		0.845259, -0.523228, 0.108487,
		0.477477, 0.648407, -0.592946,
		20.907709, 19.595476, 19.401039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.261026, 19.251410, 20.049807>,  <20.573475, 19.141592, 19.816101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.261026, 19.251410, 20.049807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.180782, 19.581608, 19.838787>,  <21.132635, 19.779728, 19.712175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.180782, 19.581608, 19.838787>,  <21.261026, 19.251410, 20.049807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.180782, 19.581608, 19.838787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308815, 0.564328, 0.765616,
		0.929725, -0.009323, -0.368137,
		-0.200612, 0.825498, -0.527549,
		21.120598, 19.829258, 19.680523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.832382, 19.646259, 20.060547>,  <21.261026, 19.251410, 20.049807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.832382, 19.646259, 20.060547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.537460, 19.907806, 19.992622>,  <21.360506, 20.064735, 19.951868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.537460, 19.907806, 19.992622>,  <21.832382, 19.646259, 20.060547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.537460, 19.907806, 19.992622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345187, 0.580712, 0.737306,
		0.580712, 0.485003, -0.653869,
		-0.737306, 0.653869, -0.169809,
		21.316269, 20.103968, 19.941679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.144434, 20.231897, 20.242029>,  <21.832382, 19.646259, 20.060547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.144434, 20.231897, 20.242029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.773548, 20.378056, 20.209139>,  <21.551018, 20.465752, 20.189405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.773548, 20.378056, 20.209139>,  <22.144434, 20.231897, 20.242029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.773548, 20.378056, 20.209139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160242, 0.585458, 0.794709,
		0.338523, 0.723688, -0.601396,
		-0.927213, 0.365397, -0.082226,
		21.495384, 20.487675, 20.184471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.122320, 21.058014, 20.113663>,  <22.144434, 20.231897, 20.242029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.122320, 21.058014, 20.113663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.772850, 20.923344, 20.254145>,  <21.563168, 20.842543, 20.338434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.772850, 20.923344, 20.254145>,  <22.122320, 21.058014, 20.113663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.772850, 20.923344, 20.254145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001418, 0.723642, 0.690174,
		-0.486510, 0.602489, -0.632705,
		-0.873674, -0.336673, 0.351205,
		21.510748, 20.822342, 20.359507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.850742, 21.687012, 20.404160>,  <22.122320, 21.058014, 20.113663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.850742, 21.687012, 20.404160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.649372, 21.399429, 20.595852>,  <21.528549, 21.226879, 20.710867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.649372, 21.399429, 20.595852>,  <21.850742, 21.687012, 20.404160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.649372, 21.399429, 20.595852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106342, 0.601979, 0.791399,
		-0.857470, 0.347448, -0.379507,
		-0.503426, -0.718958, 0.479231,
		21.498344, 21.183743, 20.739620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.259598, 22.012987, 20.617706>,  <21.850742, 21.687012, 20.404160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.259598, 22.012987, 20.617706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.293095, 21.678135, 20.833927>,  <21.313192, 21.477222, 20.963659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.293095, 21.678135, 20.833927>,  <21.259598, 22.012987, 20.617706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.293095, 21.678135, 20.833927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125742, 0.529245, 0.839100,
		-0.988522, -0.138239, -0.060942,
		0.083743, -0.837132, 0.540553,
		21.318218, 21.426996, 20.996094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.768547, 22.551653, 20.633442>,  <21.259598, 22.012987, 20.617706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.768547, 22.551653, 20.633442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.966709, 22.894184, 20.575104>,  <21.085608, 23.099703, 20.540100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.966709, 22.894184, 20.575104>,  <20.768547, 22.551653, 20.633442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.966709, 22.894184, 20.575104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036398, -0.147286, -0.988424,
		-0.867898, 0.494980, -0.041798,
		0.495407, 0.856330, -0.145845,
		21.115332, 23.151083, 20.531349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.413555, 22.822222, 20.166313>,  <20.768547, 22.551653, 20.633442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.413555, 22.822222, 20.166313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.727737, 23.068466, 20.140762>,  <20.916246, 23.216213, 20.125431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.727737, 23.068466, 20.140762>,  <20.413555, 22.822222, 20.166313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.727737, 23.068466, 20.140762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108871, 0.035830, -0.993410,
		-0.609267, 0.787234, 0.095165,
		0.785456, 0.615612, -0.063877,
		20.963375, 23.253149, 20.121599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.277220, 23.484749, 19.803120>,  <20.413555, 22.822222, 20.166313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.277220, 23.484749, 19.803120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.671574, 23.419582, 19.787682>,  <20.908186, 23.380482, 19.778418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.671574, 23.419582, 19.787682>,  <20.277220, 23.484749, 19.803120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.671574, 23.419582, 19.787682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037249, 0.011322, -0.999242,
		0.163229, 0.986575, 0.005093,
		0.985885, -0.162916, -0.038597,
		20.967339, 23.370708, 19.776102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.523085, 23.935047, 19.390013>,  <20.277220, 23.484749, 19.803120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.523085, 23.935047, 19.390013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.777878, 23.626709, 19.392887>,  <20.930754, 23.441706, 19.394611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.777878, 23.626709, 19.392887>,  <20.523085, 23.935047, 19.390013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.777878, 23.626709, 19.392887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085694, -0.080073, -0.993099,
		0.766099, 0.631972, -0.117062,
		0.636984, -0.770843, 0.007188,
		20.968973, 23.395456, 19.395044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.799358, 24.044758, 18.773077>,  <20.523085, 23.935047, 19.390013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.799358, 24.044758, 18.773077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.937206, 23.686455, 18.885403>,  <21.019915, 23.471474, 18.952799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.937206, 23.686455, 18.885403>,  <20.799358, 24.044758, 18.773077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.937206, 23.686455, 18.885403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065483, -0.275472, -0.959076,
		0.936455, 0.348906, -0.036276,
		0.344621, -0.895756, 0.280815,
		21.040592, 23.417728, 18.969646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.486101, 23.787371, 18.305180>,  <20.799358, 24.044758, 18.773077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.486101, 23.787371, 18.305180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.289085, 23.474689, 18.458199>,  <21.170876, 23.287081, 18.550011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.289085, 23.474689, 18.458199>,  <21.486101, 23.787371, 18.305180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.289085, 23.474689, 18.458199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008624, -0.435160, -0.900312,
		0.870247, -0.446738, 0.207592,
		-0.492539, -0.781704, 0.382550,
		21.141323, 23.240179, 18.572964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.818832, 23.205872, 18.040766>,  <21.486101, 23.787371, 18.305180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.818832, 23.205872, 18.040766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.479176, 23.042065, 18.174187>,  <21.275381, 22.943781, 18.254240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.479176, 23.042065, 18.174187>,  <21.818832, 23.205872, 18.040766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.479176, 23.042065, 18.174187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020886, -0.604997, -0.795954,
		0.527755, -0.682842, 0.505174,
		-0.849140, -0.409517, 0.333552,
		21.224434, 22.919209, 18.274252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<16.151638, 24.122133, 22.954456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.205410, 23.735065, 23.039818>,  <16.237673, 23.502825, 23.091034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.205410, 23.735065, 23.039818>,  <16.151638, 24.122133, 22.954456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.205410, 23.735065, 23.039818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109284, -0.199567, -0.973771,
		0.984878, 0.154226, 0.078923,
		0.134430, -0.967671, 0.213404,
		16.245739, 23.444763, 23.103838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.805717, 23.832632, 22.691967>,  <16.151638, 24.122133, 22.954456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.805717, 23.832632, 22.691967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.566299, 23.512691, 22.709753>,  <16.422647, 23.320726, 22.720425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.566299, 23.512691, 22.709753>,  <16.805717, 23.832632, 22.691967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.566299, 23.512691, 22.709753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204159, -0.205980, -0.957022,
		0.774636, -0.563744, 0.286586,
		-0.598546, -0.799853, 0.044466,
		16.386736, 23.272736, 22.723093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.160555, 23.323542, 22.295227>,  <16.805717, 23.832632, 22.691967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.160555, 23.323542, 22.295227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.772507, 23.231297, 22.325371>,  <16.539677, 23.175949, 22.343456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.772507, 23.231297, 22.325371>,  <17.160555, 23.323542, 22.295227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.772507, 23.231297, 22.325371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037046, -0.166164, -0.985402,
		0.239771, -0.958752, 0.152656,
		-0.970122, -0.230615, 0.075359,
		16.481470, 23.162111, 22.347979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.156580, 22.939531, 21.789783>,  <17.160555, 23.323542, 22.295227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.156580, 22.939531, 21.789783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.767490, 22.905098, 21.875940>,  <16.534037, 22.884438, 21.927635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.767490, 22.905098, 21.875940>,  <17.156580, 22.939531, 21.789783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.767490, 22.905098, 21.875940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175479, -0.334179, -0.926030,
		0.151696, -0.938570, 0.309958,
		-0.972726, -0.086084, 0.215393,
		16.475672, 22.879272, 21.940557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.904737, 22.294172, 21.571955>,  <17.156580, 22.939531, 21.789783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.904737, 22.294172, 21.571955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.604149, 22.558052, 21.575644>,  <16.423796, 22.716379, 21.577856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.604149, 22.558052, 21.575644>,  <16.904737, 22.294172, 21.571955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.604149, 22.558052, 21.575644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107001, -0.108072, -0.988368,
		-0.651030, -0.743718, 0.151802,
		-0.751473, 0.659700, 0.009220,
		16.378708, 22.755962, 21.578409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.376625, 22.000463, 21.121557>,  <16.904737, 22.294172, 21.571955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.376625, 22.000463, 21.121557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.244442, 22.377426, 21.142202>,  <16.165133, 22.603603, 21.154589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.244442, 22.377426, 21.142202>,  <16.376625, 22.000463, 21.121557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.244442, 22.377426, 21.142202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219532, -0.023566, -0.975321,
		-0.917934, -0.333634, 0.214676,
		-0.330459, 0.942408, 0.051611,
		16.145304, 22.660149, 21.157686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.760245, 22.025587, 20.747452>,  <16.376625, 22.000463, 21.121557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.760245, 22.025587, 20.747452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.870914, 22.409847, 20.757315>,  <15.937315, 22.640404, 20.763231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.870914, 22.409847, 20.757315>,  <15.760245, 22.025587, 20.747452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.870914, 22.409847, 20.757315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072155, 0.004817, -0.997382,
		-0.958252, 0.277726, -0.067983,
		0.276671, 0.960648, 0.024655,
		15.953915, 22.698042, 20.764711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.363358, 22.366795, 20.295660>,  <15.760245, 22.025587, 20.747452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.363358, 22.366795, 20.295660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.659907, 22.632923, 20.330788>,  <15.837837, 22.792601, 20.351864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.659907, 22.632923, 20.330788>,  <15.363358, 22.366795, 20.295660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.659907, 22.632923, 20.330788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012620, 0.117017, -0.993050,
		-0.670973, 0.737330, 0.078357,
		0.741375, 0.665320, 0.087820,
		15.882319, 22.832520, 20.357134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.131666, 22.976538, 19.935377>,  <15.363358, 22.366795, 20.295660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.131666, 22.976538, 19.935377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.530301, 22.966923, 19.966965>,  <15.769482, 22.961153, 19.985916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.530301, 22.966923, 19.966965>,  <15.131666, 22.976538, 19.935377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.530301, 22.966923, 19.966965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082258, 0.209657, -0.974309,
		0.006864, 0.977480, 0.210919,
		0.996587, -0.024037, 0.078967,
		15.829277, 22.959711, 19.990654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.354749, 23.573708, 19.573992>,  <15.131666, 22.976538, 19.935377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.354749, 23.573708, 19.573992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.667027, 23.323799, 19.579235>,  <15.854395, 23.173853, 19.582382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.667027, 23.323799, 19.579235>,  <15.354749, 23.573708, 19.573992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.667027, 23.323799, 19.579235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108527, 0.114891, -0.987432,
		0.615415, 0.772307, 0.157500,
		0.780696, -0.624773, 0.013111,
		15.901237, 23.136368, 19.583168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.699864, 23.815983, 19.032299>,  <15.354749, 23.573708, 19.573992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.699864, 23.815983, 19.032299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.879653, 23.459801, 19.060774>,  <15.987526, 23.246092, 19.077858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.879653, 23.459801, 19.060774>,  <15.699864, 23.815983, 19.032299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.879653, 23.459801, 19.060774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101331, -0.028353, -0.994449,
		0.887529, 0.454190, 0.077487,
		0.449471, -0.890454, 0.071188,
		16.014494, 23.192665, 19.082130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.325157, 23.834690, 18.503977>,  <15.699864, 23.815983, 19.032299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.325157, 23.834690, 18.503977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.216457, 23.462421, 18.601955>,  <16.151237, 23.239059, 18.660744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.216457, 23.462421, 18.601955>,  <16.325157, 23.834690, 18.503977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.216457, 23.462421, 18.601955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110821, -0.222571, -0.968598,
		0.955966, -0.290362, -0.042655,
		-0.271750, -0.930673, 0.244948,
		16.134932, 23.183220, 18.675440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.092133, 23.999399, 18.423840>,  <16.325157, 23.834690, 18.503977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.092133, 23.999399, 18.423840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.245823, 24.276489, 18.179708>,  <17.338037, 24.442743, 18.033230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.245823, 24.276489, 18.179708>,  <17.092133, 23.999399, 18.423840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.245823, 24.276489, 18.179708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274454, 0.545486, 0.791909,
		0.881503, -0.471778, 0.019467,
		0.384224, 0.692727, -0.610328,
		17.361090, 24.484308, 17.996611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.762842, 24.031090, 18.581110>,  <17.092133, 23.999399, 18.423840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.762842, 24.031090, 18.581110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.659248, 24.382446, 18.420435>,  <17.597092, 24.593260, 18.324030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.659248, 24.382446, 18.420435>,  <17.762842, 24.031090, 18.581110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.659248, 24.382446, 18.420435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397924, 0.475975, 0.784286,
		0.880104, 0.043278, -0.472804,
		-0.258985, 0.878393, -0.401686,
		17.581553, 24.645964, 18.299929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.292835, 24.408758, 18.799936>,  <17.762842, 24.031090, 18.581110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.292835, 24.408758, 18.799936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.983482, 24.644337, 18.706106>,  <17.797871, 24.785685, 18.649807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.983482, 24.644337, 18.706106>,  <18.292835, 24.408758, 18.799936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.983482, 24.644337, 18.706106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204343, 0.581872, 0.787190,
		0.600106, 0.560863, -0.570355,
		-0.773380, 0.588946, -0.234577,
		17.751469, 24.821020, 18.635733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.550957, 25.014751, 18.813534>,  <18.292835, 24.408758, 18.799936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.550957, 25.014751, 18.813534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.157406, 25.071018, 18.857714>,  <17.921276, 25.104778, 18.884222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.157406, 25.071018, 18.857714>,  <18.550957, 25.014751, 18.813534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.157406, 25.071018, 18.857714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171717, 0.570350, 0.803252,
		0.049995, 0.809267, -0.585310,
		-0.983877, 0.140667, 0.110450,
		17.862244, 25.113218, 18.890848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.501896, 25.694086, 19.028606>,  <18.550957, 25.014751, 18.813534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.501896, 25.694086, 19.028606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.135860, 25.568466, 19.129789>,  <17.916239, 25.493095, 19.190498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.135860, 25.568466, 19.129789>,  <18.501896, 25.694086, 19.028606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.135860, 25.568466, 19.129789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106067, 0.417751, 0.902349,
		-0.389054, 0.852560, -0.348969,
		-0.915089, -0.314048, 0.252956,
		17.861334, 25.474253, 19.205677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.233612, 26.272160, 19.363380>,  <18.501896, 25.694086, 19.028606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.233612, 26.272160, 19.363380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.030499, 25.947586, 19.479128>,  <17.908630, 25.752842, 19.548576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.030499, 25.947586, 19.479128>,  <18.233612, 26.272160, 19.363380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.030499, 25.947586, 19.479128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143473, 0.251550, 0.957151,
		-0.849453, 0.527543, -0.011314,
		-0.507784, -0.811432, 0.289368,
		17.878162, 25.704157, 19.565939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.779718, 26.561687, 19.939608>,  <18.233612, 26.272160, 19.363380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.779718, 26.561687, 19.939608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.784046, 26.166031, 19.998236>,  <17.786644, 25.928637, 20.033413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.784046, 26.166031, 19.998236>,  <17.779718, 26.561687, 19.939608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.784046, 26.166031, 19.998236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305718, 0.142832, 0.941348,
		-0.952061, 0.034622, 0.303944,
		0.010821, -0.989141, 0.146570,
		17.787292, 25.869289, 20.042206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.456789, 26.557209, 20.564983>,  <17.779718, 26.561687, 19.939608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.456789, 26.557209, 20.564983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.643147, 26.206478, 20.517467>,  <17.754961, 25.996038, 20.488958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.643147, 26.206478, 20.517467>,  <17.456789, 26.557209, 20.564983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.643147, 26.206478, 20.517467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221837, -0.014216, 0.974980,
		-0.856580, -0.480591, 0.187890,
		0.465896, -0.876830, -0.118790,
		17.782915, 25.943430, 20.481831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.199839, 26.056080, 21.150078>,  <17.456789, 26.557209, 20.564983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.199839, 26.056080, 21.150078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.553349, 25.913277, 21.029091>,  <17.765455, 25.827595, 20.956499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.553349, 25.913277, 21.029091>,  <17.199839, 26.056080, 21.150078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.553349, 25.913277, 21.029091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253292, -0.178500, 0.950779,
		-0.393427, -0.916887, -0.067326,
		0.883775, -0.357009, -0.302467,
		17.818481, 25.806173, 20.938351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.267353, 25.469542, 21.482603>,  <17.199839, 26.056080, 21.150078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.267353, 25.469542, 21.482603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.643623, 25.552853, 21.375458>,  <17.869385, 25.602839, 21.311171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.643623, 25.552853, 21.375458>,  <17.267353, 25.469542, 21.482603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.643623, 25.552853, 21.375458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304708, -0.171242, 0.936925,
		0.149269, -0.962963, -0.224547,
		0.940676, 0.208276, -0.267861,
		17.925827, 25.615335, 21.295099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.818998, 24.912100, 21.617516>,  <17.267353, 25.469542, 21.482603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.818998, 24.912100, 21.617516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.988804, 25.274269, 21.617598>,  <18.090687, 25.491571, 21.617647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.988804, 25.274269, 21.617598>,  <17.818998, 24.912100, 21.617516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.988804, 25.274269, 21.617598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254021, -0.119317, 0.959811,
		0.869059, -0.407398, -0.280648,
		0.424512, 0.905423, 0.000206,
		18.116158, 25.545897, 21.617659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.429016, 24.869434, 21.902502>,  <17.818998, 24.912100, 21.617516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.429016, 24.869434, 21.902502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.399624, 25.267967, 21.920034>,  <18.381989, 25.507088, 21.930553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.399624, 25.267967, 21.920034>,  <18.429016, 24.869434, 21.902502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.399624, 25.267967, 21.920034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393301, -0.011439, 0.919338,
		0.916469, 0.084792, -0.391019,
		-0.073480, 0.996333, 0.043833,
		18.377581, 25.566868, 21.933184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.014465, 24.954821, 22.328201>,  <18.429016, 24.869434, 21.902502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.014465, 24.954821, 22.328201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.807255, 25.296230, 22.350632>,  <18.682928, 25.501076, 22.364090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.807255, 25.296230, 22.350632>,  <19.014465, 24.954821, 22.328201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.807255, 25.296230, 22.350632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227795, 0.074471, 0.970857,
		0.824475, 0.515702, -0.233007,
		-0.518026, 0.853525, 0.056075,
		18.651848, 25.552288, 22.367455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.426241, 25.391630, 22.472225>,  <19.014465, 24.954821, 22.328201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.426241, 25.391630, 22.472225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.078644, 25.537495, 22.606016>,  <18.870085, 25.625013, 22.686291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.078644, 25.537495, 22.606016>,  <19.426241, 25.391630, 22.472225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.078644, 25.537495, 22.606016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404470, 0.134067, 0.904671,
		0.285054, 0.921439, -0.263997,
		-0.868993, 0.364659, 0.334478,
		18.817945, 25.646893, 22.706360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.096962, 25.233366, 22.487776>,  <19.426241, 25.391630, 22.472225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.096962, 25.233366, 22.487776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.246552, 24.921593, 22.688824>,  <20.336306, 24.734529, 22.809452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.246552, 24.921593, 22.688824>,  <20.096962, 25.233366, 22.487776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.246552, 24.921593, 22.688824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187154, -0.467372, -0.864024,
		0.908359, 0.417191, -0.028912,
		0.373975, -0.779433, 0.502620,
		20.358744, 24.687763, 22.839609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.669846, 25.076109, 22.127649>,  <20.096962, 25.233366, 22.487776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.669846, 25.076109, 22.127649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.614059, 24.737099, 22.332491>,  <20.580587, 24.533693, 22.455397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.614059, 24.737099, 22.332491>,  <20.669846, 25.076109, 22.127649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.614059, 24.737099, 22.332491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310711, -0.528496, -0.790032,
		0.940217, 0.048937, 0.337041,
		-0.139463, -0.847524, 0.512106,
		20.572220, 24.482841, 22.486122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.180904, 24.712580, 22.006744>,  <20.669846, 25.076109, 22.127649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.180904, 24.712580, 22.006744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.941517, 24.418449, 22.133945>,  <20.797884, 24.241970, 22.210266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.941517, 24.418449, 22.133945>,  <21.180904, 24.712580, 22.006744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.941517, 24.418449, 22.133945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277560, -0.562662, -0.778699,
		0.751527, -0.377763, 0.540834,
		-0.598471, -0.735328, 0.318003,
		20.761976, 24.197851, 22.229347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.579586, 24.135473, 22.205681>,  <21.180904, 24.712580, 22.006744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.579586, 24.135473, 22.205681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.215710, 24.003235, 22.105145>,  <20.997385, 23.923893, 22.044823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.215710, 24.003235, 22.105145>,  <21.579586, 24.135473, 22.205681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.215710, 24.003235, 22.105145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392217, -0.485006, -0.781623,
		0.136498, -0.809615, 0.570870,
		-0.909689, -0.330595, -0.251342,
		20.942802, 23.904057, 22.029741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.776608, 23.464815, 22.090380>,  <21.579586, 24.135473, 22.205681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.776608, 23.464815, 22.090380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.422176, 23.512119, 21.911100>,  <21.209518, 23.540501, 21.803534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.422176, 23.512119, 21.911100>,  <21.776608, 23.464815, 22.090380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.422176, 23.512119, 21.911100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367776, -0.409181, -0.835052,
		-0.282143, -0.904758, 0.319075,
		-0.886079, 0.118256, -0.448195,
		21.156353, 23.547598, 21.776642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.724960, 22.903833, 21.591640>,  <21.776608, 23.464815, 22.090380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.724960, 22.903833, 21.591640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.465702, 23.169872, 21.443287>,  <21.310148, 23.329496, 21.354275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.465702, 23.169872, 21.443287>,  <21.724960, 22.903833, 21.591640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.465702, 23.169872, 21.443287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095925, -0.411845, -0.906191,
		-0.755452, -0.622919, 0.203135,
		-0.648144, 0.665098, -0.370882,
		21.271259, 23.369402, 21.332022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.201761, 22.509130, 21.206264>,  <21.724960, 22.903833, 21.591640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.201761, 22.509130, 21.206264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.181236, 22.881359, 21.061268>,  <21.168922, 23.104696, 20.974270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.181236, 22.881359, 21.061268>,  <21.201761, 22.509130, 21.206264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.181236, 22.881359, 21.061268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006002, -0.362676, -0.931896,
		-0.998665, -0.049991, 0.013024,
		-0.051310, 0.930574, -0.362492,
		21.165844, 23.160532, 20.952520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.645859, 22.044186, 21.213427>,  <21.201761, 22.509130, 21.206264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.645859, 22.044186, 21.213427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.905010, 21.767033, 21.340023>,  <21.060501, 21.600740, 21.415981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.905010, 21.767033, 21.340023>,  <20.645859, 22.044186, 21.213427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.905010, 21.767033, 21.340023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183830, 0.260985, 0.947678,
		-0.739230, -0.672160, 0.041713,
		0.647878, -0.692884, 0.316491,
		21.099373, 21.559168, 21.434971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.303144, 21.866175, 21.705116>,  <20.645859, 22.044186, 21.213427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.303144, 21.866175, 21.705116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.677513, 21.736298, 21.759706>,  <20.902134, 21.658371, 21.792461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.677513, 21.736298, 21.759706>,  <20.303144, 21.866175, 21.705116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.677513, 21.736298, 21.759706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107708, 0.105071, 0.988615,
		-0.335335, -0.939965, 0.063367,
		0.935922, -0.324692, 0.136476,
		20.958290, 21.638889, 21.800650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.276011, 21.519588, 22.333014>,  <20.303144, 21.866175, 21.705116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.276011, 21.519588, 22.333014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.671684, 21.564785, 22.295593>,  <20.909088, 21.591902, 22.273142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.671684, 21.564785, 22.295593>,  <20.276011, 21.519588, 22.333014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.671684, 21.564785, 22.295593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050837, 0.334157, 0.941145,
		0.137599, -0.935720, 0.324799,
		0.989183, 0.112988, -0.093549,
		20.968439, 21.598682, 22.267529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.552706, 21.256184, 22.926020>,  <20.276011, 21.519588, 22.333014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.552706, 21.256184, 22.926020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.832306, 21.501953, 22.779659>,  <21.000065, 21.649414, 22.691843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.832306, 21.501953, 22.779659>,  <20.552706, 21.256184, 22.926020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.832306, 21.501953, 22.779659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100596, 0.422092, 0.900955,
		0.708012, -0.666574, 0.233233,
		0.698999, 0.614425, -0.365901,
		21.042006, 21.686281, 22.669889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.234396, 21.142683, 23.167547>,  <20.552706, 21.256184, 22.926020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.234396, 21.142683, 23.167547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.232738, 21.530529, 23.069710>,  <21.231745, 21.763237, 23.011007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.232738, 21.530529, 23.069710>,  <21.234396, 21.142683, 23.167547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.232738, 21.530529, 23.069710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192915, 0.240776, 0.951216,
		0.981207, -0.043243, -0.188051,
		-0.004145, 0.969617, -0.244593,
		21.231495, 21.821415, 22.996332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.712072, 21.436897, 23.628328>,  <21.234396, 21.142683, 23.167547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.712072, 21.436897, 23.628328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.513531, 21.755177, 23.489477>,  <21.394405, 21.946144, 23.406166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.513531, 21.755177, 23.489477>,  <21.712072, 21.436897, 23.628328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.513531, 21.755177, 23.489477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114631, 0.456434, 0.882342,
		0.860520, 0.398161, -0.317763,
		-0.496352, 0.795699, -0.347129,
		21.364626, 21.993887, 23.385338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.058069, 22.060482, 23.927809>,  <21.712072, 21.436897, 23.628328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.058069, 22.060482, 23.927809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.690914, 22.179775, 23.823090>,  <21.470621, 22.251352, 23.760258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.690914, 22.179775, 23.823090>,  <22.058069, 22.060482, 23.927809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.690914, 22.179775, 23.823090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057349, 0.553096, 0.831142,
		0.392675, 0.777909, -0.490576,
		-0.917888, 0.298234, -0.261799,
		21.415548, 22.269245, 23.744551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.052872, 22.745995, 24.032492>,  <22.058069, 22.060482, 23.927809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.052872, 22.745995, 24.032492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.666679, 22.644936, 24.007151>,  <21.434963, 22.584301, 23.991947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.666679, 22.644936, 24.007151>,  <22.052872, 22.745995, 24.032492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.666679, 22.644936, 24.007151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189629, 0.515054, 0.835918,
		-0.178563, 0.819078, -0.545185,
		-0.965482, -0.252647, -0.063351,
		21.377035, 22.569141, 23.988146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.778913, 23.348894, 24.138792>,  <22.052872, 22.745995, 24.032492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.778913, 23.348894, 24.138792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.490726, 23.088154, 24.233465>,  <21.317814, 22.931709, 24.290270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.490726, 23.088154, 24.233465>,  <21.778913, 23.348894, 24.138792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.490726, 23.088154, 24.233465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094057, 0.429988, 0.897922,
		-0.687083, 0.624659, -0.371103,
		-0.720465, -0.651852, 0.236684,
		21.274588, 22.892599, 24.304470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.982330, 16.707571, 9.433849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.859871, 16.516747, 9.763379>,  <17.786396, 16.402252, 9.961097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.859871, 16.516747, 9.763379>,  <17.982330, 16.707571, 9.433849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.859871, 16.516747, 9.763379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218393, 0.807100, 0.548537,
		-0.926595, 0.347850, -0.142904,
		-0.306146, -0.477063, 0.823824,
		17.768026, 16.373627, 10.010527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.842068, 17.260841, 9.820344>,  <17.982330, 16.707571, 9.433849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.842068, 17.260841, 9.820344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.836613, 16.947292, 10.068653>,  <17.833340, 16.759163, 10.217639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.836613, 16.947292, 10.068653>,  <17.842068, 17.260841, 9.820344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.836613, 16.947292, 10.068653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363338, 0.574508, 0.733434,
		-0.931557, 0.235554, 0.276975,
		-0.013639, -0.783872, 0.620772,
		17.832521, 16.712132, 10.254885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.507824, 17.428612, 10.438860>,  <17.842068, 17.260841, 9.820344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.507824, 17.428612, 10.438860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.770466, 17.144104, 10.539230>,  <17.928051, 16.973398, 10.599452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.770466, 17.144104, 10.539230>,  <17.507824, 17.428612, 10.438860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.770466, 17.144104, 10.539230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361264, 0.588629, 0.723191,
		-0.662086, -0.384201, 0.643453,
		0.656605, -0.711271, 0.250925,
		17.967447, 16.930723, 10.614508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.448574, 17.407322, 11.094808>,  <17.507824, 17.428612, 10.438860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.448574, 17.407322, 11.094808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.798424, 17.215034, 11.069706>,  <18.008333, 17.099661, 11.054646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.798424, 17.215034, 11.069706>,  <17.448574, 17.407322, 11.094808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.798424, 17.215034, 11.069706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319985, 0.475187, 0.819639,
		-0.364198, -0.736957, 0.569433,
		0.874626, -0.480721, -0.062753,
		18.060812, 17.070818, 11.050880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.600687, 17.285721, 11.806316>,  <17.448574, 17.407322, 11.094808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.600687, 17.285721, 11.806316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.936314, 17.201023, 11.605864>,  <18.137690, 17.150204, 11.485592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.936314, 17.201023, 11.605864>,  <17.600687, 17.285721, 11.806316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.936314, 17.201023, 11.605864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540370, 0.217704, 0.812777,
		-0.063003, -0.952769, 0.297089,
		0.839066, -0.211746, -0.501131,
		18.188034, 17.137499, 11.455524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.874123, 16.829348, 12.210430>,  <17.600687, 17.285721, 11.806316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.874123, 16.829348, 12.210430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.173084, 16.996895, 12.004153>,  <18.352461, 17.097424, 11.880387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.173084, 16.996895, 12.004153>,  <17.874123, 16.829348, 12.210430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.173084, 16.996895, 12.004153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524290, 0.104884, 0.845056,
		0.408055, -0.901969, -0.141217,
		0.747403, 0.418868, -0.515692,
		18.397305, 17.122555, 11.849445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.507290, 16.437294, 12.350612>,  <17.874123, 16.829348, 12.210430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.507290, 16.437294, 12.350612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.617504, 16.793991, 12.207015>,  <18.683632, 17.008009, 12.120857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.617504, 16.793991, 12.207015>,  <18.507290, 16.437294, 12.350612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.617504, 16.793991, 12.207015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566179, 0.151258, 0.810285,
		0.776867, -0.426515, -0.463209,
		0.275535, 0.891743, -0.358991,
		18.700165, 17.061514, 12.099318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.177574, 16.487587, 12.466143>,  <18.507290, 16.437294, 12.350612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.177574, 16.487587, 12.466143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.072670, 16.871479, 12.425865>,  <19.009727, 17.101814, 12.401698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.072670, 16.871479, 12.425865>,  <19.177574, 16.487587, 12.466143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.072670, 16.871479, 12.425865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488496, 0.222024, 0.843846,
		0.832221, 0.172117, -0.527052,
		-0.262259, 0.959730, -0.100694,
		18.993992, 17.159397, 12.395657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.757360, 16.920881, 12.571727>,  <19.177574, 16.487587, 12.466143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.757360, 16.920881, 12.571727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.444572, 17.154881, 12.657793>,  <19.256899, 17.295280, 12.709433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.444572, 17.154881, 12.657793>,  <19.757360, 16.920881, 12.571727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.444572, 17.154881, 12.657793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482361, 0.349313, 0.803311,
		0.394776, 0.731953, -0.555334,
		-0.781971, 0.585000, 0.215165,
		19.209982, 17.330379, 12.722342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.073071, 17.503370, 12.898972>,  <19.757360, 16.920881, 12.571727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.073071, 17.503370, 12.898972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.688873, 17.595123, 12.962015>,  <19.458355, 17.650175, 12.999841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.688873, 17.595123, 12.962015>,  <20.073071, 17.503370, 12.898972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.688873, 17.595123, 12.962015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268057, 0.610180, 0.745537,
		0.074843, 0.758330, -0.647560,
		-0.960491, 0.229381, 0.157608,
		19.400726, 17.663939, 13.009297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.963831, 18.238607, 12.878502>,  <20.073071, 17.503370, 12.898972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.963831, 18.238607, 12.878502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.678898, 18.098038, 13.121511>,  <19.507938, 18.013695, 13.267317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.678898, 18.098038, 13.121511>,  <19.963831, 18.238607, 12.878502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.678898, 18.098038, 13.121511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363432, 0.555822, 0.747649,
		-0.600417, 0.753367, -0.268211,
		-0.712332, -0.351425, 0.607523,
		19.465199, 17.992611, 13.303768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.602930, 18.810764, 13.221533>,  <19.963831, 18.238607, 12.878502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.602930, 18.810764, 13.221533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.551373, 18.490761, 13.455925>,  <19.520437, 18.298759, 13.596560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.551373, 18.490761, 13.455925>,  <19.602930, 18.810764, 13.221533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.551373, 18.490761, 13.455925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279476, 0.537651, 0.795503,
		-0.951462, 0.266302, 0.154283,
		-0.128894, -0.800009, 0.585980,
		19.512705, 18.250757, 13.631719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.342886, 19.525299, 13.191136>,  <19.602930, 18.810764, 13.221533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.342886, 19.525299, 13.191136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.581406, 19.814167, 13.050907>,  <19.724518, 19.987488, 12.966770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.581406, 19.814167, 13.050907>,  <19.342886, 19.525299, 13.191136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.581406, 19.814167, 13.050907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370670, -0.139672, -0.918202,
		-0.712062, 0.677469, 0.184400,
		0.596298, 0.722169, -0.350572,
		19.760296, 20.030817, 12.945736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.942169, 19.987022, 12.845833>,  <19.342886, 19.525299, 13.191136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.942169, 19.987022, 12.845833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.310631, 20.050362, 12.703623>,  <19.531708, 20.088366, 12.618297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.310631, 20.050362, 12.703623>,  <18.942169, 19.987022, 12.845833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.310631, 20.050362, 12.703623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372927, 0.097787, -0.922693,
		-0.111340, 0.982530, 0.149129,
		0.921156, 0.158347, -0.355524,
		19.586977, 20.097866, 12.596966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.775055, 20.238926, 12.187105>,  <18.942169, 19.987022, 12.845833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.775055, 20.238926, 12.187105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.168087, 20.174747, 12.149586>,  <19.403906, 20.136240, 12.127074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.168087, 20.174747, 12.149586>,  <18.775055, 20.238926, 12.187105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.168087, 20.174747, 12.149586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110380, -0.097745, -0.989071,
		0.149523, 0.982193, -0.113752,
		0.982578, -0.160445, -0.093799,
		19.462860, 20.126614, 12.121446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.023958, 20.681320, 11.623226>,  <18.775055, 20.238926, 12.187105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.023958, 20.681320, 11.623226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.300491, 20.395802, 11.668040>,  <19.466412, 20.224489, 11.694929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.300491, 20.395802, 11.668040>,  <19.023958, 20.681320, 11.623226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.300491, 20.395802, 11.668040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074625, -0.224769, -0.971550,
		0.718673, 0.663303, -0.208657,
		0.691332, -0.713799, 0.112036,
		19.507891, 20.181662, 11.701652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.310169, 20.779346, 11.047772>,  <19.023958, 20.681320, 11.623226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.310169, 20.779346, 11.047772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.420055, 20.415039, 11.171084>,  <19.485987, 20.196455, 11.245071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.420055, 20.415039, 11.171084>,  <19.310169, 20.779346, 11.047772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.420055, 20.415039, 11.171084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115697, -0.286976, -0.950925,
		0.954540, 0.296899, 0.026536,
		0.274714, -0.910767, 0.308280,
		19.502470, 20.141809, 11.263569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.791842, 20.661901, 10.557537>,  <19.310169, 20.779346, 11.047772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.791842, 20.661901, 10.557537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.666420, 20.314598, 10.711321>,  <19.591167, 20.106216, 10.803592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.666420, 20.314598, 10.711321>,  <19.791842, 20.661901, 10.557537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.666420, 20.314598, 10.711321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163683, -0.349397, -0.922567,
		0.935356, -0.352205, -0.032564,
		-0.313555, -0.868259, 0.384460,
		19.572353, 20.054121, 10.826659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.128355, 20.122665, 10.140060>,  <19.791842, 20.661901, 10.557537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.128355, 20.122665, 10.140060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.847015, 19.909332, 10.328041>,  <19.678211, 19.781332, 10.440829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.847015, 19.909332, 10.328041>,  <20.128355, 20.122665, 10.140060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.847015, 19.909332, 10.328041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256770, -0.425862, -0.867589,
		0.662850, -0.730887, 0.162586,
		-0.703349, -0.533334, 0.469952,
		19.636011, 19.749332, 10.469027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.215986, 19.515238, 9.946243>,  <20.128355, 20.122665, 10.140060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.215986, 19.515238, 9.946243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.837742, 19.498234, 10.075250>,  <19.610796, 19.488031, 10.152654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.837742, 19.498234, 10.075250>,  <20.215986, 19.515238, 9.946243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.837742, 19.498234, 10.075250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299770, -0.271166, -0.914662,
		0.126339, -0.961593, 0.243673,
		-0.945609, -0.042512, 0.322516,
		19.554060, 19.485479, 10.172005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.948135, 18.916275, 9.522682>,  <20.215986, 19.515238, 9.946243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.948135, 18.916275, 9.522682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.639126, 19.125576, 9.666576>,  <19.453720, 19.251158, 9.752913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.639126, 19.125576, 9.666576>,  <19.948135, 18.916275, 9.522682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.639126, 19.125576, 9.666576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514355, -0.183455, -0.837725,
		-0.372350, -0.832194, 0.410863,
		-0.772525, 0.523257, 0.359734,
		19.407368, 19.282553, 9.774497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.424440, 18.504894, 9.506784>,  <19.948135, 18.916275, 9.522682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.424440, 18.504894, 9.506784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.287102, 18.879364, 9.476624>,  <19.204699, 19.104046, 9.458527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.287102, 18.879364, 9.476624>,  <19.424440, 18.504894, 9.506784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.287102, 18.879364, 9.476624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541966, -0.263056, -0.798169,
		-0.767062, -0.233184, 0.597696,
		-0.343348, 0.936177, -0.075403,
		19.184097, 19.160217, 9.454002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.782328, 18.333998, 9.247527>,  <19.424440, 18.504894, 9.506784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.782328, 18.333998, 9.247527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.853424, 18.725491, 9.206562>,  <18.896082, 18.960386, 9.181983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.853424, 18.725491, 9.206562>,  <18.782328, 18.333998, 9.247527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.853424, 18.725491, 9.206562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626525, 0.032294, -0.778732,
		-0.758864, 0.202577, 0.618941,
		0.177742, 0.978734, -0.102413,
		18.906746, 19.019110, 9.175838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.297831, 18.445431, 8.811799>,  <18.782328, 18.333998, 9.247527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.297831, 18.445431, 8.811799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.518089, 18.779312, 8.808779>,  <18.650244, 18.979641, 8.806967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.518089, 18.779312, 8.808779>,  <18.297831, 18.445431, 8.811799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.518089, 18.779312, 8.808779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349124, 0.222078, -0.910381,
		-0.758222, 0.503935, 0.413702,
		0.550647, 0.834704, -0.007551,
		18.683283, 19.029724, 8.806514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.845257, 19.101011, 8.723131>,  <18.297831, 18.445431, 8.811799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.845257, 19.101011, 8.723131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.205933, 19.202339, 8.582967>,  <18.422338, 19.263136, 8.498868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.205933, 19.202339, 8.582967>,  <17.845257, 19.101011, 8.723131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.205933, 19.202339, 8.582967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376321, 0.060672, -0.924501,
		-0.212934, 0.965478, 0.150037,
		0.901688, 0.253320, -0.350411,
		18.476439, 19.278336, 8.477843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.776398, 19.628086, 8.291968>,  <17.845257, 19.101011, 8.723131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.776398, 19.628086, 8.291968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.115601, 19.455269, 8.169186>,  <18.319122, 19.351578, 8.095516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.115601, 19.455269, 8.169186>,  <17.776398, 19.628086, 8.291968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.115601, 19.455269, 8.169186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370832, -0.069913, -0.926065,
		0.378641, 0.899138, -0.219503,
		0.848006, -0.432045, -0.306957,
		18.370003, 19.325655, 8.077099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.908016, 19.721661, 8.259872>,  <17.776398, 19.628086, 8.291968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.908016, 19.721661, 8.259872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.662365, 19.998451, 8.411670>,  <16.514975, 20.164526, 8.502748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.662365, 19.998451, 8.411670>,  <16.908016, 19.721661, 8.259872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.662365, 19.998451, 8.411670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786788, 0.499212, 0.362977,
		0.061724, 0.521495, -0.851019,
		-0.614129, 0.691976, 0.379493,
		16.478127, 20.206043, 8.525517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.968439, 20.422464, 8.345507>,  <16.908016, 19.721661, 8.259872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.968439, 20.422464, 8.345507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.575939, 20.488899, 8.384620>,  <16.340439, 20.528761, 8.408088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.575939, 20.488899, 8.384620>,  <16.968439, 20.422464, 8.345507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.575939, 20.488899, 8.384620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187378, 0.703326, 0.685727,
		0.045117, 0.691193, -0.721260,
		-0.981251, 0.166087, 0.097782,
		16.281565, 20.538725, 8.413955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.790466, 21.194769, 8.277290>,  <16.968439, 20.422464, 8.345507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.790466, 21.194769, 8.277290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.575684, 20.959457, 8.519151>,  <16.446814, 20.818270, 8.664268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.575684, 20.959457, 8.519151>,  <16.790466, 21.194769, 8.277290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.575684, 20.959457, 8.519151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253027, 0.571438, 0.780664,
		-0.804769, 0.572177, -0.157987,
		-0.536958, -0.588279, 0.604652,
		16.414597, 20.782974, 8.700546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.234745, 21.628267, 8.553602>,  <16.790466, 21.194769, 8.277290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.234745, 21.628267, 8.553602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.353756, 21.333321, 8.796179>,  <16.425163, 21.156353, 8.941725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.353756, 21.333321, 8.796179>,  <16.234745, 21.628267, 8.553602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.353756, 21.333321, 8.796179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295070, 0.675129, 0.676117,
		-0.907971, -0.022221, 0.418444,
		0.297528, -0.737365, 0.606440,
		16.443014, 21.112112, 8.978111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.852128, 21.732649, 9.107633>,  <16.234745, 21.628267, 8.553602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.852128, 21.732649, 9.107633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.167561, 21.521622, 9.234003>,  <16.356821, 21.395006, 9.309826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.167561, 21.521622, 9.234003>,  <15.852128, 21.732649, 9.107633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.167561, 21.521622, 9.234003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167102, 0.678276, 0.715555,
		-0.591790, -0.511481, 0.623034,
		0.788582, -0.527568, 0.315927,
		16.404135, 21.363352, 9.328781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.784847, 21.621416, 9.851081>,  <15.852128, 21.732649, 9.107633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.784847, 21.621416, 9.851081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.174294, 21.559780, 9.783758>,  <16.407961, 21.522799, 9.743364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.174294, 21.559780, 9.783758>,  <15.784847, 21.621416, 9.851081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.174294, 21.559780, 9.783758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224173, 0.508101, 0.831613,
		-0.042627, -0.847401, 0.529239,
		0.973617, -0.154090, -0.168306,
		16.466379, 21.513554, 9.733267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.072815, 21.378256, 10.506656>,  <15.784847, 21.621416, 9.851081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.072815, 21.378256, 10.506656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.396309, 21.470131, 10.290067>,  <16.590405, 21.525255, 10.160113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.396309, 21.470131, 10.290067>,  <16.072815, 21.378256, 10.506656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.396309, 21.470131, 10.290067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396984, 0.466126, 0.790652,
		0.433997, -0.854383, 0.285790,
		0.808734, 0.229686, -0.541473,
		16.638929, 21.539036, 10.127625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.726067, 21.085505, 10.832106>,  <16.072815, 21.378256, 10.506656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.726067, 21.085505, 10.832106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.830788, 21.388088, 10.592361>,  <16.893620, 21.569637, 10.448515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.830788, 21.388088, 10.592361>,  <16.726067, 21.085505, 10.832106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.830788, 21.388088, 10.592361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367995, 0.495863, 0.786575,
		0.892211, -0.426487, -0.148555,
		0.261801, 0.756458, -0.599359,
		16.909328, 21.615026, 10.412554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.440960, 21.273903, 11.013747>,  <16.726067, 21.085505, 10.832106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.440960, 21.273903, 11.013747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.328323, 21.586147, 10.790552>,  <17.260742, 21.773495, 10.656635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.328323, 21.586147, 10.790552>,  <17.440960, 21.273903, 11.013747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.328323, 21.586147, 10.790552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374115, 0.624815, 0.685306,
		0.883597, -0.015775, -0.467982,
		-0.281591, 0.780613, -0.557987,
		17.243847, 21.820332, 10.623156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.048660, 21.719027, 10.997583>,  <17.440960, 21.273903, 11.013747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.048660, 21.719027, 10.997583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.719906, 21.934971, 10.924857>,  <17.522654, 22.064537, 10.881222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.719906, 21.934971, 10.924857>,  <18.048660, 21.719027, 10.997583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.719906, 21.934971, 10.924857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277624, 0.658299, 0.699691,
		0.497423, 0.524590, -0.690924,
		-0.821885, 0.539859, -0.181814,
		17.473341, 22.096930, 10.870313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.223751, 22.458273, 10.845206>,  <18.048660, 21.719027, 10.997583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.223751, 22.458273, 10.845206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.844105, 22.454716, 10.971127>,  <17.616318, 22.452581, 11.046679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.844105, 22.454716, 10.971127>,  <18.223751, 22.458273, 10.845206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.844105, 22.454716, 10.971127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266901, 0.507856, 0.819052,
		-0.167159, 0.861396, -0.479640,
		-0.949116, -0.008895, 0.314800,
		17.559370, 22.452047, 11.065567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.023193, 23.148602, 11.004907>,  <18.223751, 22.458273, 10.845206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.023193, 23.148602, 11.004907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.783634, 22.915981, 11.225131>,  <17.639898, 22.776409, 11.357265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.783634, 22.915981, 11.225131>,  <18.023193, 23.148602, 11.004907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.783634, 22.915981, 11.225131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105065, 0.624491, 0.773933,
		-0.793902, 0.521353, -0.312906,
		-0.598899, -0.581552, 0.550561,
		17.603964, 22.741516, 11.390299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.819607, 23.611862, 11.476790>,  <18.023193, 23.148602, 11.004907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.819607, 23.611862, 11.476790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.721039, 23.260223, 11.639994>,  <17.661898, 23.049240, 11.737915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.721039, 23.260223, 11.639994>,  <17.819607, 23.611862, 11.476790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.721039, 23.260223, 11.639994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074179, 0.402646, 0.912345,
		-0.966321, 0.255084, -0.034009,
		-0.246418, -0.879095, 0.408007,
		17.647114, 22.996494, 11.762396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.629450, 23.766857, 12.045298>,  <17.819607, 23.611862, 11.476790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.629450, 23.766857, 12.045298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.639942, 23.373146, 12.115160>,  <17.646238, 23.136919, 12.157078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.639942, 23.373146, 12.115160>,  <17.629450, 23.766857, 12.045298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.639942, 23.373146, 12.115160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017239, 0.174245, 0.984551,
		-0.999507, -0.028838, -0.012397,
		0.026233, -0.984280, 0.174657,
		17.647812, 23.077862, 12.167557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.041788, 23.563320, 12.439196>,  <17.629450, 23.766857, 12.045298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.041788, 23.563320, 12.439196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.328697, 23.294067, 12.511208>,  <17.500843, 23.132515, 12.554415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.328697, 23.294067, 12.511208>,  <17.041788, 23.563320, 12.439196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.328697, 23.294067, 12.511208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136067, 0.118084, 0.983637,
		-0.683377, -0.730033, -0.006892,
		0.717274, -0.673133, 0.180029,
		17.543879, 23.092127, 12.565216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.814926, 23.014494, 12.950720>,  <17.041788, 23.563320, 12.439196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.814926, 23.014494, 12.950720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.212788, 22.981327, 12.975332>,  <17.451506, 22.961426, 12.990100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.212788, 22.981327, 12.975332>,  <16.814926, 23.014494, 12.950720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.212788, 22.981327, 12.975332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050262, 0.131736, 0.990010,
		-0.090198, -0.987811, 0.126864,
		0.994655, -0.082920, 0.061532,
		17.511185, 22.956451, 12.993792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.854422, 22.680397, 13.475537>,  <16.814926, 23.014494, 12.950720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.854422, 22.680397, 13.475537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.235374, 22.802284, 13.479776>,  <17.463947, 22.875418, 13.482320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.235374, 22.802284, 13.479776>,  <16.854422, 22.680397, 13.475537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.235374, 22.802284, 13.479776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075713, 0.202683, 0.976313,
		0.295357, -0.930625, 0.216103,
		0.952382, 0.304723, 0.010596,
		17.521090, 22.893700, 13.482956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181578, 22.412838, 14.031157>,  <16.854422, 22.680397, 13.475537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.181578, 22.412838, 14.031157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.443497, 22.701344, 13.940807>,  <17.600649, 22.874447, 13.886598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.443497, 22.701344, 13.940807>,  <17.181578, 22.412838, 14.031157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.443497, 22.701344, 13.940807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195591, 0.126965, 0.972432,
		0.730058, -0.680925, -0.057936,
		0.654797, 0.721264, -0.225874,
		17.639936, 22.917723, 13.873045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.885332, 22.305752, 14.416310>,  <17.181578, 22.412838, 14.031157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.885332, 22.305752, 14.416310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.876942, 22.698166, 14.339233>,  <17.871908, 22.933615, 14.292987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.876942, 22.698166, 14.339233>,  <17.885332, 22.305752, 14.416310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.876942, 22.698166, 14.339233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198430, 0.192986, 0.960928,
		0.979891, -0.018081, -0.198714,
		-0.020974, 0.981035, -0.192693,
		17.870649, 22.992476, 14.281425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.333220, 22.565615, 14.912784>,  <17.885332, 22.305752, 14.416310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.333220, 22.565615, 14.912784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.122055, 22.884918, 14.796791>,  <17.995356, 23.076500, 14.727196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.122055, 22.884918, 14.796791>,  <18.333220, 22.565615, 14.912784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.122055, 22.884918, 14.796791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035938, 0.362126, 0.931436,
		0.848538, 0.481295, -0.219859,
		-0.527912, 0.798261, -0.289981,
		17.963682, 23.124397, 14.709797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.678019, 23.134787, 15.275075>,  <18.333220, 22.565615, 14.912784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.678019, 23.134787, 15.275075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.310135, 23.243473, 15.161724>,  <18.089405, 23.308685, 15.093714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.310135, 23.243473, 15.161724>,  <18.678019, 23.134787, 15.275075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.310135, 23.243473, 15.161724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163113, 0.392091, 0.905350,
		0.357108, 0.878883, -0.316290,
		-0.919711, 0.271717, -0.283376,
		18.034222, 23.324987, 15.076712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.630074, 23.846903, 15.398452>,  <18.678019, 23.134787, 15.275075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.630074, 23.846903, 15.398452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.251392, 23.719994, 15.376198>,  <18.024183, 23.643848, 15.362845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.251392, 23.719994, 15.376198>,  <18.630074, 23.846903, 15.398452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.251392, 23.719994, 15.376198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217683, 0.502851, 0.836514,
		-0.237427, 0.804039, -0.545114,
		-0.946701, -0.317273, -0.055635,
		17.967382, 23.624811, 15.359508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.164635, 24.474413, 15.409937>,  <18.630074, 23.846903, 15.398452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.164635, 24.474413, 15.409937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.933861, 24.174278, 15.539021>,  <17.795397, 23.994198, 15.616470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.933861, 24.174278, 15.539021>,  <18.164635, 24.474413, 15.409937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.933861, 24.174278, 15.539021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216013, 0.521190, 0.825651,
		-0.787710, 0.406636, -0.462774,
		-0.576933, -0.750339, 0.322708,
		17.760780, 23.949177, 15.635833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.515503, 24.672045, 15.423007>,  <18.164635, 24.474413, 15.409937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.515503, 24.672045, 15.423007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.543739, 24.372433, 15.686512>,  <17.560682, 24.192665, 15.844615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.543739, 24.372433, 15.686512>,  <17.515503, 24.672045, 15.423007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.543739, 24.372433, 15.686512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390160, 0.587064, 0.709317,
		-0.918037, -0.307096, -0.250800,
		0.070593, -0.749031, 0.658763,
		17.564917, 24.147724, 15.884141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.984793, 24.800470, 16.036270>,  <17.515503, 24.672045, 15.423007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.984793, 24.800470, 16.036270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.204124, 24.507626, 16.197935>,  <17.335724, 24.331919, 16.294933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.204124, 24.507626, 16.197935>,  <16.984793, 24.800470, 16.036270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.204124, 24.507626, 16.197935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183182, 0.366406, 0.912245,
		-0.815953, -0.574246, 0.066801,
		0.548329, -0.732112, 0.404162,
		17.368624, 24.287992, 16.319183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.564127, 24.592194, 16.605864>,  <16.984793, 24.800470, 16.036270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.564127, 24.592194, 16.605864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.929562, 24.441971, 16.668236>,  <17.148823, 24.351837, 16.705660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.929562, 24.441971, 16.668236>,  <16.564127, 24.592194, 16.605864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.929562, 24.441971, 16.668236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063844, 0.246237, 0.967105,
		-0.401598, -0.893491, 0.200982,
		0.913588, -0.375556, 0.155932,
		17.203638, 24.329304, 16.715015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.506599, 24.286627, 17.301502>,  <16.564127, 24.592194, 16.605864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.506599, 24.286627, 17.301502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.896885, 24.343170, 17.234566>,  <17.131056, 24.377096, 17.194403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.896885, 24.343170, 17.234566>,  <16.506599, 24.286627, 17.301502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.896885, 24.343170, 17.234566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122305, 0.282228, 0.951519,
		0.181731, -0.948876, 0.258085,
		0.975712, 0.141356, -0.167342,
		17.189598, 24.385578, 17.184362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.800573, 23.898623, 17.730717>,  <16.506599, 24.286627, 17.301502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.800573, 23.898623, 17.730717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.070248, 24.174580, 17.625248>,  <17.232052, 24.340155, 17.561966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.070248, 24.174580, 17.625248>,  <16.800573, 23.898623, 17.730717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.070248, 24.174580, 17.625248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069622, 0.296051, 0.952631,
		0.735275, -0.660606, 0.151561,
		0.674184, 0.689893, -0.263672,
		17.272503, 24.381548, 17.546146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.785444, 23.187935, 18.094822>,  <16.800573, 23.898623, 17.730717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.785444, 23.187935, 18.094822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.447399, 23.025116, 18.233442>,  <16.244572, 22.927425, 18.316614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.447399, 23.025116, 18.233442>,  <16.785444, 23.187935, 18.094822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.447399, 23.025116, 18.233442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198415, -0.363116, -0.910372,
		0.496403, -0.838128, 0.226110,
		-0.845113, -0.407048, 0.346549,
		16.193865, 22.903002, 18.337406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.871414, 22.464581, 17.760319>,  <16.785444, 23.187935, 18.094822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.871414, 22.464581, 17.760319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.496132, 22.530853, 17.881857>,  <16.270962, 22.570618, 17.954779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.496132, 22.530853, 17.881857>,  <16.871414, 22.464581, 17.760319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.496132, 22.530853, 17.881857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346002, -0.467728, -0.813335,
		0.007362, -0.868205, 0.496151,
		-0.938205, 0.165682, 0.303844,
		16.214670, 22.580559, 17.973009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.502682, 21.845499, 17.833216>,  <16.871414, 22.464581, 17.760319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.502682, 21.845499, 17.833216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.211926, 22.114487, 17.777477>,  <16.037472, 22.275879, 17.744034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.211926, 22.114487, 17.777477>,  <16.502682, 21.845499, 17.833216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.211926, 22.114487, 17.777477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378646, -0.561718, -0.735595,
		-0.572945, -0.481927, 0.662933,
		-0.726885, 0.672473, -0.139354,
		15.993858, 22.316227, 17.735672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.880562, 21.441584, 17.629236>,  <16.502682, 21.845499, 17.833216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.880562, 21.441584, 17.629236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.804738, 21.814980, 17.507473>,  <15.759244, 22.039017, 17.434416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.804738, 21.814980, 17.507473>,  <15.880562, 21.441584, 17.629236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.804738, 21.814980, 17.507473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489168, -0.358600, -0.795060,
		-0.851341, -0.001805, 0.524609,
		-0.189560, 0.933489, -0.304408,
		15.747870, 22.095026, 17.416151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.121753, 21.419260, 17.473066>,  <15.880562, 21.441584, 17.629236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.121753, 21.419260, 17.473066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.286738, 21.732246, 17.286469>,  <15.385730, 21.920038, 17.174509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.286738, 21.732246, 17.286469>,  <15.121753, 21.419260, 17.473066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.286738, 21.732246, 17.286469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379726, -0.317798, -0.868800,
		-0.828058, 0.535489, 0.166043,
		0.412465, 0.782468, -0.466494,
		15.410478, 21.966988, 17.146521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
