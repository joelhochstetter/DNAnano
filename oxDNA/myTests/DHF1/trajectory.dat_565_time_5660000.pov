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
	<3.128746, 4.069870, 2.140489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.199390, 4.221222, 1.777031>,  <3.241777, 4.312033, 1.558956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.199390, 4.221222, 1.777031>,  <3.128746, 4.069870, 2.140489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.199390, 4.221222, 1.777031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824694, -0.560817, -0.073242,
		-0.537297, -0.736419, -0.411095,
		0.176612, 0.378381, -0.908645,
		3.252374, 4.334736, 1.504437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.155583, 3.522260, 1.598944>,  <3.128746, 4.069870, 2.140489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.155583, 3.522260, 1.598944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.406475, 3.821640, 1.512775>,  <3.557010, 4.001268, 1.461074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.406475, 3.821640, 1.512775>,  <3.155583, 3.522260, 1.598944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.406475, 3.821640, 1.512775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766290, -0.642493, -0.001083,
		-0.139217, -0.164397, -0.976520,
		0.627230, 0.748449, -0.215421,
		3.594644, 4.046175, 1.448149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.655805, 3.164119, 1.229473>,  <3.155583, 3.522260, 1.598944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.655805, 3.164119, 1.229473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.824200, 3.521355, 1.292923>,  <3.925237, 3.735696, 1.330993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.824200, 3.521355, 1.292923>,  <3.655805, 3.164119, 1.229473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.824200, 3.521355, 1.292923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888514, -0.370834, -0.270230,
		-0.182516, 0.254704, -0.949639,
		0.420987, 0.893089, 0.158625,
		3.950496, 3.789281, 1.340510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.026856, 3.422190, 0.702504>,  <3.655805, 3.164119, 1.229473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.026856, 3.422190, 0.702504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.215382, 3.540268, 1.034943>,  <4.328497, 3.611115, 1.234406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.215382, 3.540268, 1.034943>,  <4.026856, 3.422190, 0.702504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.215382, 3.540268, 1.034943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834114, -0.455361, -0.311287,
		0.286559, 0.839944, -0.460844,
		0.471315, 0.295194, 0.831097,
		4.356776, 3.628826, 1.284272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.743038, 3.575593, 0.504032>,  <4.026856, 3.422190, 0.702504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.743038, 3.575593, 0.504032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.739014, 3.502834, 0.897339>,  <4.736599, 3.459179, 1.133323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.739014, 3.502834, 0.897339>,  <4.743038, 3.575593, 0.504032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.739014, 3.502834, 0.897339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836016, -0.541017, -0.091530,
		0.548613, 0.821105, 0.157512,
		-0.010060, -0.181897, 0.983266,
		4.735996, 3.448265, 1.192319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.272711, 3.891422, 0.749624>,  <4.743038, 3.575593, 0.504032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.272711, 3.891422, 0.749624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.163651, 3.585918, 0.983662>,  <5.098214, 3.402617, 1.124084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.163651, 3.585918, 0.983662>,  <5.272711, 3.891422, 0.749624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.163651, 3.585918, 0.983662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818904, -0.503445, -0.275571,
		0.505032, 0.404001, 0.762709,
		-0.272652, -0.763758, 0.585094,
		5.081855, 3.356791, 1.159190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.869928, 3.602045, 0.817484>,  <5.272711, 3.891422, 0.749624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.869928, 3.602045, 0.817484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.640240, 3.306202, 0.957912>,  <5.502427, 3.128696, 1.042169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.640240, 3.306202, 0.957912>,  <5.869928, 3.602045, 0.817484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.640240, 3.306202, 0.957912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674365, -0.670441, -0.309421,
		0.464222, 0.059074, 0.883747,
		-0.574221, -0.739608, 0.351070,
		5.467973, 3.084320, 1.063233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.246478, 3.217757, 1.340319>,  <5.869928, 3.602045, 0.817484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.246478, 3.217757, 1.340319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.960861, 2.982880, 1.187820>,  <5.789491, 2.841954, 1.096321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.960861, 2.982880, 1.187820>,  <6.246478, 3.217757, 1.340319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.960861, 2.982880, 1.187820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664710, -0.739561, -0.105882,
		-0.219782, -0.329022, 0.918390,
		-0.714042, -0.587192, -0.381247,
		5.746648, 2.806722, 1.073446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.300368, 2.101187, -0.217572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.991867, 1.884907, -0.083221>,  <0.806766, 1.755139, -0.002611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.991867, 1.884907, -0.083221>,  <1.300368, 2.101187, -0.217572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.991867, 1.884907, -0.083221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317430, 0.784084, 0.533339,
		-0.551731, 0.304722, -0.776362,
		-0.771253, -0.540700, 0.335876,
		0.760491, 1.722697, 0.017541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.530382, 2.374415, -0.255821>,  <1.300368, 2.101187, -0.217572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.530382, 2.374415, -0.255821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.617363, 2.148548, 0.062641>,  <0.669552, 2.013028, 0.253719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.617363, 2.148548, 0.062641>,  <0.530382, 2.374415, -0.255821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.617363, 2.148548, 0.062641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364581, 0.709650, 0.602891,
		-0.905425, -0.421364, -0.051551,
		0.217453, -0.564667, 0.796156,
		0.682599, 1.979148, 0.301488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.071948, 2.169509, 0.110810>,  <0.530382, 2.374415, -0.255821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.071948, 2.169509, 0.110810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.243576, 2.170303, 0.356663>,  <0.432891, 2.170780, 0.504175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.243576, 2.170303, 0.356663>,  <-0.071948, 2.169509, 0.110810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.243576, 2.170303, 0.356663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465709, 0.654532, 0.595570,
		-0.401115, -0.756032, 0.517226,
		0.788811, 0.001985, 0.614633,
		0.480219, 2.170899, 0.541053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.240817, 1.987840, 0.791144>,  <-0.071948, 2.169509, 0.110810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.240817, 1.987840, 0.791144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.059975, 2.240437, 0.866772>,  <0.240450, 2.391994, 0.912148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.059975, 2.240437, 0.866772>,  <-0.240817, 1.987840, 0.791144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.059975, 2.240437, 0.866772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594836, 0.526452, 0.607469,
		0.284076, -0.569268, 0.771514,
		0.751978, 0.631492, 0.189068,
		0.285568, 2.429884, 0.923492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.325071, 2.157666, 1.492828>,  <-0.240817, 1.987840, 0.791144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.325071, 2.157666, 1.492828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.070091, 2.446537, 1.385406>,  <0.082896, 2.619859, 1.320954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.070091, 2.446537, 1.385406>,  <-0.325071, 2.157666, 1.492828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.070091, 2.446537, 1.385406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463861, 0.638003, 0.614643,
		0.615213, -0.267238, 0.741685,
		0.637453, 0.722175, -0.268546,
		0.121143, 2.663190, 1.304841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.291552, 2.497978, 2.077231>,  <-0.325071, 2.157666, 1.492828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.291552, 2.497978, 2.077231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.180893, 2.753494, 1.790062>,  <-0.114498, 2.906804, 1.617760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.180893, 2.753494, 1.790062>,  <-0.291552, 2.497978, 2.077231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.180893, 2.753494, 1.790062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576725, 0.707947, 0.407677,
		0.768672, 0.301263, 0.564255,
		0.276645, 0.638790, -0.717925,
		-0.097899, 2.945131, 1.574685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.140301, 3.180951, 2.435193>,  <-0.291552, 2.497978, 2.077231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.140301, 3.180951, 2.435193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.201889, 3.252708, 2.046532>,  <-0.238842, 3.295763, 1.813335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.201889, 3.252708, 2.046532>,  <-0.140301, 3.180951, 2.435193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.201889, 3.252708, 2.046532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623343, 0.745361, 0.236391,
		0.766640, 0.642071, -0.002940,
		-0.153971, 0.179394, -0.971654,
		-0.248080, 3.306527, 1.755036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.097699, 3.880404, 2.284914>,  <-0.140301, 3.180951, 2.435193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.097699, 3.880404, 2.284914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.224495, 3.730427, 2.101345>,  <-0.417811, 3.640440, 1.991204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.224495, 3.730427, 2.101345>,  <0.097699, 3.880404, 2.284914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.224495, 3.730427, 2.101345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576475, 0.675250, 0.460123,
		0.137367, 0.635180, -0.760050,
		-0.805485, -0.374944, -0.458923,
		-0.466141, 3.617944, 1.963668>
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
