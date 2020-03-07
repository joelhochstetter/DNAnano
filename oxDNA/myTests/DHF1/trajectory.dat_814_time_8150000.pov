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
	<-0.434139, 2.287913, -1.316757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.058125, 2.259476, -1.183323>,  <0.167484, 2.242414, -1.103262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.058125, 2.259476, -1.183323>,  <-0.434139, 2.287913, -1.316757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.058125, 2.259476, -1.183323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217519, 0.628376, 0.746879,
		-0.262715, -0.774654, 0.575232,
		0.940035, -0.071092, 0.333585,
		0.223886, 2.238148, -1.083247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.187649, 1.983940, -0.623919>,  <-0.434139, 2.287913, -1.316757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.187649, 1.983940, -0.623919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.113976, 2.246315, -0.637403>,  <0.294950, 2.403740, -0.645494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.113976, 2.246315, -0.637403>,  <-0.187649, 1.983940, -0.623919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.113976, 2.246315, -0.637403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401439, 0.500900, 0.766776,
		0.519834, -0.564671, 0.641029,
		0.754068, 0.655931, -0.033704,
		0.340194, 2.443096, -0.647517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.375176, 1.921890, -0.051612>,  <-0.187649, 1.983940, -0.623919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.375176, 1.921890, -0.051612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.318535, 2.295197, -0.183651>,  <0.284550, 2.519180, -0.262874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.318535, 2.295197, -0.183651>,  <0.375176, 1.921890, -0.051612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.318535, 2.295197, -0.183651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273841, 0.283515, 0.919038,
		0.951294, 0.220531, 0.215420,
		-0.141602, 0.933266, -0.330097,
		0.276054, 2.575176, -0.282680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.667906, 2.303078, 0.432106>,  <0.375176, 1.921890, -0.051612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.667906, 2.303078, 0.432106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.431381, 2.555397, 0.231131>,  <0.289466, 2.706788, 0.110545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.431381, 2.555397, 0.231131>,  <0.667906, 2.303078, 0.432106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.431381, 2.555397, 0.231131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301586, 0.404855, 0.863214,
		0.747928, 0.661957, -0.049156,
		-0.591312, 0.630797, -0.502439,
		0.253988, 2.744636, 0.080399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.855585, 2.925838, 0.666791>,  <0.667906, 2.303078, 0.432106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.855585, 2.925838, 0.666791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.491852, 2.997543, 0.516602>,  <0.273612, 3.040566, 0.426488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.491852, 2.997543, 0.516602>,  <0.855585, 2.925838, 0.666791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.491852, 2.997543, 0.516602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268382, 0.436875, 0.858552,
		0.317941, 0.881479, -0.349153,
		-0.909332, 0.179262, -0.375474,
		0.219052, 3.051322, 0.403959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.631502, 3.716790, 0.716937>,  <0.855585, 2.925838, 0.666791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.631502, 3.716790, 0.716937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.315002, 3.472260, 0.722658>,  <0.125102, 3.325541, 0.726091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.315002, 3.472260, 0.722658>,  <0.631502, 3.716790, 0.716937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.315002, 3.472260, 0.722658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288570, 0.393918, 0.872672,
		-0.539121, 0.686374, -0.488098,
		-0.791250, -0.611326, 0.014302,
		0.077628, 3.288862, 0.726949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.135532, 4.128853, 1.091978>,  <0.631502, 3.716790, 0.716937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.135532, 4.128853, 1.091978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.002033, 3.753304, 1.085756>,  <-0.084572, 3.527974, 1.082023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.002033, 3.753304, 1.085756>,  <0.135532, 4.128853, 1.091978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.002033, 3.753304, 1.085756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419398, 0.138765, 0.897134,
		-0.840136, 0.315060, -0.441484,
		-0.343913, -0.938873, -0.015554,
		-0.105207, 3.471642, 1.081090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.616956, 4.045127, 1.148934>,  <0.135532, 4.128853, 1.091978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.616956, 4.045127, 1.148934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.414711, 3.744926, 1.319159>,  <-0.293364, 3.564806, 1.421293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.414711, 3.744926, 1.319159>,  <-0.616956, 4.045127, 1.148934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.414711, 3.744926, 1.319159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556547, 0.093186, 0.825574,
		-0.659252, -0.654264, -0.370574,
		0.505611, -0.750503, 0.425561,
		-0.263027, 3.519776, 1.446827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.517015, 4.133846, 2.312705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.419556, 3.774414, 2.458687>,  <4.361080, 3.558755, 2.546276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.419556, 3.774414, 2.458687>,  <4.517015, 4.133846, 2.312705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.419556, 3.774414, 2.458687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150970, -0.406847, -0.900935,
		0.958042, -0.164413, 0.234785,
		-0.243647, -0.898579, 0.364955,
		4.346462, 3.504840, 2.568173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.068369, 3.639587, 2.226133>,  <4.517015, 4.133846, 2.312705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.068369, 3.639587, 2.226133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.721558, 3.440659, 2.238350>,  <4.513471, 3.321301, 2.245680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.721558, 3.440659, 2.238350>,  <5.068369, 3.639587, 2.226133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.721558, 3.440659, 2.238350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166133, -0.346340, -0.923281,
		0.469746, -0.795437, 0.382908,
		-0.867028, -0.497321, 0.030543,
		4.461449, 3.291462, 2.247513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.222001, 2.955361, 1.957098>,  <5.068369, 3.639587, 2.226133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.222001, 2.955361, 1.957098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.842110, 3.062729, 1.892641>,  <4.614175, 3.127150, 1.853967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.842110, 3.062729, 1.892641>,  <5.222001, 2.955361, 1.957098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.842110, 3.062729, 1.892641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071925, -0.313873, -0.946737,
		-0.304692, -0.910735, 0.278790,
		-0.949731, 0.268411, -0.161139,
		4.557191, 3.143255, 1.844298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.834332, 2.431279, 1.571259>,  <5.222001, 2.955361, 1.957098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.834332, 2.431279, 1.571259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.659195, 2.784378, 1.503082>,  <4.554113, 2.996238, 1.462176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.659195, 2.784378, 1.503082>,  <4.834332, 2.431279, 1.571259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.659195, 2.784378, 1.503082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013130, -0.195837, -0.980549,
		-0.898957, -0.427086, 0.097336,
		-0.437841, 0.882749, -0.170441,
		4.527843, 3.049203, 1.451950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.283340, 2.341150, 1.151890>,  <4.834332, 2.431279, 1.571259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.283340, 2.341150, 1.151890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.456657, 2.698807, 1.106689>,  <4.560647, 2.913401, 1.079569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.456657, 2.698807, 1.106689>,  <4.283340, 2.341150, 1.151890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.456657, 2.698807, 1.106689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234661, -0.232985, -0.943744,
		-0.870168, 0.382400, -0.310771,
		0.433292, 0.894141, -0.113002,
		4.586645, 2.967049, 1.072789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.001307, 2.686566, 0.483938>,  <4.283340, 2.341150, 1.151890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.001307, 2.686566, 0.483938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.361954, 2.832588, 0.576736>,  <4.578342, 2.920202, 0.632415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.361954, 2.832588, 0.576736>,  <4.001307, 2.686566, 0.483938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.361954, 2.832588, 0.576736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280540, -0.085308, -0.956044,
		-0.329218, 0.927069, -0.179327,
		0.901617, 0.365055, 0.231995,
		4.632439, 2.942105, 0.646335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.004862, 3.242625, 0.065479>,  <4.001307, 2.686566, 0.483938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.004862, 3.242625, 0.065479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.384514, 3.154663, 0.155630>,  <4.612305, 3.101886, 0.209721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.384514, 3.154663, 0.155630>,  <4.004862, 3.242625, 0.065479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.384514, 3.154663, 0.155630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224721, -0.028335, -0.974011,
		0.220576, 0.975110, 0.022524,
		0.949129, -0.219905, 0.225378,
		4.669253, 3.088691, 0.223243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.432847, 3.516310, -0.505261>,  <4.004862, 3.242625, 0.065479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.432847, 3.516310, -0.505261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.668900, 3.247856, -0.325785>,  <4.810531, 3.086784, -0.218099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.668900, 3.247856, -0.325785>,  <4.432847, 3.516310, -0.505261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.668900, 3.247856, -0.325785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533961, -0.092372, -0.840448,
		0.605500, 0.735559, 0.303848,
		0.590132, -0.671134, 0.448690,
		4.845939, 3.046516, -0.191178>
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
