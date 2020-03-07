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
	<2.443061, 2.952131, 3.780853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.610500, 2.816525, 3.443844>,  <2.710964, 2.735161, 3.241639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.610500, 2.816525, 3.443844>,  <2.443061, 2.952131, 3.780853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.610500, 2.816525, 3.443844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694426, 0.478386, -0.537513,
		0.585276, 0.810071, -0.035170,
		0.418598, -0.339016, -0.842522,
		2.736080, 2.714820, 3.191087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.419960, 3.461513, 3.409297>,  <2.443061, 2.952131, 3.780853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.419960, 3.461513, 3.409297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.305458, 3.121494, 3.232445>,  <2.236757, 2.917483, 3.126334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.305458, 3.121494, 3.232445>,  <2.419960, 3.461513, 3.409297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.305458, 3.121494, 3.232445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771441, 0.478147, -0.419826,
		0.568275, 0.220900, -0.792633,
		-0.286255, -0.850046, -0.442131,
		2.219581, 2.866480, 3.099806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.395536, 3.414900, 2.664716>,  <2.419960, 3.461513, 3.409297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.395536, 3.414900, 2.664716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.097450, 3.208050, 2.833115>,  <1.918599, 3.083940, 2.934154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.097450, 3.208050, 2.833115>,  <2.395536, 3.414900, 2.664716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.097450, 3.208050, 2.833115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665806, 0.611913, -0.426925,
		-0.036840, -0.598453, -0.800311,
		-0.745214, -0.517124, 0.420996,
		1.873886, 3.052912, 2.959414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.803729, 3.528542, 2.194059>,  <2.395536, 3.414900, 2.664716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.803729, 3.528542, 2.194059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.671818, 3.406792, 2.551517>,  <1.592671, 3.333741, 2.765992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.671818, 3.406792, 2.551517>,  <1.803729, 3.528542, 2.194059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.671818, 3.406792, 2.551517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783204, 0.616731, -0.078964,
		-0.527104, -0.725946, -0.441773,
		-0.329778, -0.304376, 0.893645,
		1.572884, 3.315479, 2.819611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.120275, 3.439615, 2.081622>,  <1.803729, 3.528542, 2.194059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.120275, 3.439615, 2.081622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.155754, 3.471409, 2.478775>,  <1.177041, 3.490485, 2.717067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.155754, 3.471409, 2.478775>,  <1.120275, 3.439615, 2.081622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.155754, 3.471409, 2.478775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794471, 0.606889, 0.022388,
		-0.600790, -0.790802, 0.116978,
		0.088697, 0.079485, 0.992882,
		1.182363, 3.495254, 2.776640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.492536, 3.255013, 2.459320>,  <1.120275, 3.439615, 2.081622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.492536, 3.255013, 2.459320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.687290, 3.485790, 2.721642>,  <0.804142, 3.624257, 2.879035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.687290, 3.485790, 2.721642>,  <0.492536, 3.255013, 2.459320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.687290, 3.485790, 2.721642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854632, 0.469738, 0.221247,
		-0.180409, -0.668194, 0.721782,
		0.486884, 0.576943, 0.655805,
		0.833355, 3.658873, 2.918383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.151167, 3.183842, 3.063117>,  <0.492536, 3.255013, 2.459320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.151167, 3.183842, 3.063117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.355087, 3.527752, 3.075066>,  <0.477439, 3.734098, 3.082235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.355087, 3.527752, 3.075066>,  <0.151167, 3.183842, 3.063117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.355087, 3.527752, 3.075066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859471, 0.507488, 0.061359,
		0.037596, -0.056955, 0.997669,
		0.509800, 0.859774, 0.029871,
		0.508027, 3.785684, 3.084027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.324807, 3.541280, 3.319882>,  <0.151167, 3.183842, 3.063117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.324807, 3.541280, 3.319882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.081524, 3.807434, 3.146748>,  <0.064446, 3.967126, 3.042867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.081524, 3.807434, 3.146748>,  <-0.324807, 3.541280, 3.319882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.081524, 3.807434, 3.146748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766447, 0.634131, -0.102157,
		0.206502, 0.393879, 0.895665,
		0.608207, 0.665384, -0.432837,
		0.100938, 4.007050, 3.016896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.999715, 4.966411, 4.034566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.794775, 5.251167, 3.842438>,  <-0.671810, 5.422021, 3.727161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.794775, 5.251167, 3.842438>,  <-0.999715, 4.966411, 4.034566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.794775, 5.251167, 3.842438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600471, -0.696826, -0.392260,
		-0.613946, -0.087443, -0.784490,
		0.512352, 0.711890, -0.480320,
		-0.641069, 5.464735, 3.698342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.967941, 4.627752, 3.415774>,  <-0.999715, 4.966411, 4.034566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.967941, 4.627752, 3.415774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.693853, 4.918922, 3.425549>,  <-0.529400, 5.093625, 3.431413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.693853, 4.918922, 3.425549>,  <-0.967941, 4.627752, 3.415774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.693853, 4.918922, 3.425549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638840, -0.584570, -0.500162,
		-0.349796, 0.358332, -0.865587,
		0.685220, 0.727926, 0.024437,
		-0.488287, 5.137300, 3.432880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.729730, 4.729257, 2.635091>,  <-0.967941, 4.627752, 3.415774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.729730, 4.729257, 2.635091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.494262, 4.788391, 2.952988>,  <-0.352982, 4.823872, 3.143725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.494262, 4.788391, 2.952988>,  <-0.729730, 4.729257, 2.635091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.494262, 4.788391, 2.952988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717233, -0.549022, -0.429130,
		0.372889, 0.822630, -0.429225,
		0.588669, 0.147836, 0.794741,
		-0.317662, 4.832742, 3.191410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.028983, 4.840548, 2.366890>,  <-0.729730, 4.729257, 2.635091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.028983, 4.840548, 2.366890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.003591, 4.749908, 2.755657>,  <0.011644, 4.695525, 2.988917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.003591, 4.749908, 2.755657>,  <-0.028983, 4.840548, 2.366890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.003591, 4.749908, 2.755657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890250, -0.427277, -0.157762,
		0.451026, 0.875265, 0.174605,
		0.063479, -0.226597, 0.971918,
		0.015452, 4.681929, 3.047233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.719022, 5.028278, 2.683108>,  <-0.028983, 4.840548, 2.366890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.719022, 5.028278, 2.683108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.527463, 4.752876, 2.900959>,  <0.412528, 4.587635, 3.031670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.527463, 4.752876, 2.900959>,  <0.719022, 5.028278, 2.683108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.527463, 4.752876, 2.900959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829822, -0.557471, 0.024928,
		0.286451, 0.463882, 0.838307,
		-0.478896, -0.688505, 0.544628,
		0.383795, 4.546325, 3.064347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.245226, 4.803870, 3.173087>,  <0.719022, 5.028278, 2.683108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.245226, 4.803870, 3.173087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.988370, 4.497261, 3.177086>,  <0.834257, 4.313295, 3.179485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.988370, 4.497261, 3.177086>,  <1.245226, 4.803870, 3.173087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.988370, 4.497261, 3.177086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734207, -0.611211, 0.295570,
		-0.220451, 0.197138, 0.955269,
		-0.642139, -0.766523, 0.009998,
		0.795729, 4.267304, 3.180085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.326120, 4.476769, 3.773065>,  <1.245226, 4.803870, 3.173087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.326120, 4.476769, 3.773065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.193642, 4.219696, 3.496727>,  <1.114154, 4.065452, 3.330924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.193642, 4.219696, 3.496727>,  <1.326120, 4.476769, 3.773065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.193642, 4.219696, 3.496727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792843, -0.586516, 0.165531,
		-0.511576, -0.492908, 0.703798,
		-0.331197, -0.642682, -0.690846,
		1.094282, 4.026891, 3.289473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.413714, 3.806673, 4.028571>,  <1.326120, 4.476769, 3.773065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.413714, 3.806673, 4.028571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.349260, 3.718544, 3.643761>,  <1.310588, 3.665667, 3.412874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.349260, 3.718544, 3.643761>,  <1.413714, 3.806673, 4.028571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.349260, 3.718544, 3.643761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547999, -0.830665, 0.098452,
		-0.820812, -0.511325, 0.254585,
		-0.161134, -0.220323, -0.962026,
		1.300920, 3.652447, 3.355153>
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
