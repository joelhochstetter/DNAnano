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
	<4.021348, 5.596412, 4.468386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.725096, 5.511859, 4.723504>,  <3.547344, 5.461127, 4.876575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.725096, 5.511859, 4.723504>,  <4.021348, 5.596412, 4.468386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.725096, 5.511859, 4.723504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395489, 0.904520, -0.159474,
		-0.543189, -0.370353, -0.753515,
		-0.740631, -0.211383, 0.637796,
		3.502907, 5.448444, 4.914843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.828687, 4.778832, 4.381472>,  <4.021348, 5.596412, 4.468386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.828687, 4.778832, 4.381472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.614815, 4.443498, 4.338931>,  <3.486492, 4.242298, 4.313406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.614815, 4.443498, 4.338931>,  <3.828687, 4.778832, 4.381472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.614815, 4.443498, 4.338931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360007, -0.339831, 0.868856,
		-0.764534, 0.426272, 0.483507,
		-0.534680, -0.838336, -0.106352,
		3.454411, 4.191998, 4.307025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.249985, 4.473138, 3.948455>,  <3.828687, 4.778832, 4.381472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.249985, 4.473138, 3.948455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.086123, 4.130316, 4.073443>,  <2.987805, 3.924622, 4.148436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.086123, 4.130316, 4.073443>,  <3.249985, 4.473138, 3.948455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.086123, 4.130316, 4.073443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271449, -0.441539, -0.855195,
		0.870918, -0.265515, 0.413526,
		-0.409655, -0.857056, 0.312471,
		2.963226, 3.873199, 4.167184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.621526, 3.794944, 3.690864>,  <3.249985, 4.473138, 3.948455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.621526, 3.794944, 3.690864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.253925, 3.661954, 3.775621>,  <3.033365, 3.582161, 3.826475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.253925, 3.661954, 3.775621>,  <3.621526, 3.794944, 3.690864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.253925, 3.661954, 3.775621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039310, -0.612042, -0.789847,
		0.392291, -0.717541, 0.575537,
		-0.919001, -0.332474, 0.211892,
		2.978225, 3.562212, 3.839189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.719597, 3.101955, 3.775922>,  <3.621526, 3.794944, 3.690864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.719597, 3.101955, 3.775922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.351551, 3.208472, 3.661047>,  <3.130723, 3.272382, 3.592122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.351551, 3.208472, 3.661047>,  <3.719597, 3.101955, 3.775922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.351551, 3.208472, 3.661047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147745, -0.443099, -0.884214,
		-0.362709, -0.856010, 0.368359,
		-0.920116, 0.266290, -0.287187,
		3.075516, 3.288359, 3.574891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.445443, 2.442070, 3.626771>,  <3.719597, 3.101955, 3.775922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.445443, 2.442070, 3.626771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.310873, 2.760719, 3.425889>,  <3.230131, 2.951908, 3.305360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.310873, 2.760719, 3.425889>,  <3.445443, 2.442070, 3.626771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.310873, 2.760719, 3.425889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195897, -0.462423, -0.864749,
		-0.921110, -0.389303, -0.000486,
		-0.336425, 0.796623, -0.502205,
		3.209945, 2.999706, 3.275228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.783112, 2.340430, 3.228389>,  <3.445443, 2.442070, 3.626771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.783112, 2.340430, 3.228389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.068344, 2.583096, 3.087832>,  <3.239483, 2.728695, 3.003499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.068344, 2.583096, 3.087832>,  <2.783112, 2.340430, 3.228389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.068344, 2.583096, 3.087832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113584, -0.594560, -0.795989,
		-0.691820, 0.527691, -0.492876,
		0.713081, 0.606664, -0.351391,
		3.282268, 2.765095, 2.982415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.609865, 2.863710, 2.641126>,  <2.783112, 2.340430, 3.228389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.609865, 2.863710, 2.641126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.980183, 2.712502, 2.639856>,  <3.202373, 2.621778, 2.639095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.980183, 2.712502, 2.639856>,  <2.609865, 2.863710, 2.641126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.980183, 2.712502, 2.639856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221339, -0.535230, -0.815192,
		0.306458, 0.755402, -0.579182,
		0.925793, -0.378018, -0.003174,
		3.257921, 2.599097, 2.638904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.124512, 1.620088, -0.108091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.008939, 1.758793, 0.242554>,  <0.089009, 1.842016, 0.452941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.008939, 1.758793, 0.242554>,  <-0.124512, 1.620088, -0.108091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.008939, 1.758793, 0.242554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063657, -0.919481, 0.387946,
		0.940553, -0.185232, -0.284690,
		0.333627, 0.346762, 0.876612,
		0.109027, 1.862821, 0.505537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.472493, 1.276639, 0.025047>,  <-0.124512, 1.620088, -0.108091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.472493, 1.276639, 0.025047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.260553, 1.339230, 0.358459>,  <0.133389, 1.376784, 0.558507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.260553, 1.339230, 0.358459>,  <0.472493, 1.276639, 0.025047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.260553, 1.339230, 0.358459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030081, -0.985681, 0.165917,
		0.847558, 0.062838, 0.526970,
		-0.529850, 0.156476, 0.833531,
		0.101598, 1.386172, 0.608519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.775556, 1.100047, 0.600279>,  <0.472493, 1.276639, 0.025047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.775556, 1.100047, 0.600279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.386984, 1.063788, 0.688012>,  <0.153841, 1.042033, 0.740653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.386984, 1.063788, 0.688012>,  <0.775556, 1.100047, 0.600279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.386984, 1.063788, 0.688012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146354, -0.956340, 0.252970,
		0.186827, 0.277843, 0.942284,
		-0.971430, -0.090646, 0.219333,
		0.095555, 1.036595, 0.753812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.765062, 0.669767, 1.272037>,  <0.775556, 1.100047, 0.600279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.765062, 0.669767, 1.272037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.418680, 0.670960, 1.071991>,  <0.210851, 0.671677, 0.951963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.418680, 0.670960, 1.071991>,  <0.765062, 0.669767, 1.272037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.418680, 0.670960, 1.071991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086622, -0.985764, 0.144105,
		-0.492566, 0.168109, 0.853884,
		-0.865954, 0.002984, -0.500115,
		0.158894, 0.671856, 0.921957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.035471, 0.662050, 1.677895>,  <0.765062, 0.669767, 1.272037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.035471, 0.662050, 1.677895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.037035, 0.459244, 1.340830>,  <0.080538, 0.337560, 1.138592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.037035, 0.459244, 1.340830>,  <-0.035471, 0.662050, 1.677895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.037035, 0.459244, 1.340830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025850, -0.859016, 0.511295,
		-0.983095, -0.070896, -0.168815,
		0.181264, -0.507016, -0.842662,
		0.091414, 0.307139, 1.088032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.612354, 0.174178, 1.499564>,  <-0.035471, 0.662050, 1.677895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.612354, 0.174178, 1.499564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.259636, 0.024192, 1.385133>,  <-0.048006, -0.065800, 1.316475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.259636, 0.024192, 1.385133>,  <-0.612354, 0.174178, 1.499564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.259636, 0.024192, 1.385133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127162, -0.773121, 0.621381,
		-0.454169, -0.511551, -0.729415,
		0.881794, -0.374966, -0.286077,
		0.004902, -0.088298, 1.299310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.645453, -0.456216, 1.150314>,  <-0.612354, 0.174178, 1.499564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.645453, -0.456216, 1.150314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.302167, -0.420838, 1.352559>,  <-0.096195, -0.399612, 1.473906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.302167, -0.420838, 1.352559>,  <-0.645453, -0.456216, 1.150314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.302167, -0.420838, 1.352559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349325, -0.621091, 0.701582,
		0.376083, -0.778732, -0.502134,
		0.858215, 0.088446, 0.505612,
		-0.044702, -0.394305, 1.504243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.427975, -1.161430, 1.374783>,  <-0.645453, -0.456216, 1.150314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.427975, -1.161430, 1.374783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.260357, -0.900596, 1.627508>,  <-0.159787, -0.744095, 1.779143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.260357, -0.900596, 1.627508>,  <-0.427975, -1.161430, 1.374783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.260357, -0.900596, 1.627508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057633, -0.675349, 0.735243,
		0.906135, -0.344512, -0.245419,
		0.419043, 0.652086, 0.631812,
		-0.134644, -0.704970, 1.817052>
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
