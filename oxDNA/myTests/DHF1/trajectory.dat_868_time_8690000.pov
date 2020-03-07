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
	<5.372948, 3.171915, 1.018330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.118347, 2.953949, 0.799996>,  <4.965587, 2.823169, 0.668996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.118347, 2.953949, 0.799996>,  <5.372948, 3.171915, 1.018330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.118347, 2.953949, 0.799996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680975, 0.064761, 0.729438,
		-0.362133, 0.835987, -0.412293,
		-0.636501, -0.544914, -0.545834,
		4.927397, 2.790475, 0.636246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.731122, 3.233631, 1.323061>,  <5.372948, 3.171915, 1.018330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.731122, 3.233631, 1.323061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.645966, 2.940842, 1.064173>,  <4.594872, 2.765168, 0.908840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.645966, 2.940842, 1.064173>,  <4.731122, 3.233631, 1.323061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.645966, 2.940842, 1.064173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837077, -0.205027, 0.507214,
		-0.503964, 0.649754, -0.569070,
		-0.212890, -0.731973, -0.647220,
		4.582099, 2.721250, 0.870007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.983118, 3.120082, 0.976865>,  <4.731122, 3.233631, 1.323061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.983118, 3.120082, 0.976865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.137672, 2.754921, 1.029495>,  <4.230405, 2.535824, 1.061074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.137672, 2.754921, 1.029495>,  <3.983118, 3.120082, 0.976865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.137672, 2.754921, 1.029495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792844, -0.255851, 0.553118,
		-0.471279, -0.318037, -0.822647,
		0.386387, -0.912904, 0.131576,
		4.253588, 2.481050, 1.068968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.593086, 2.526833, 0.620706>,  <3.983118, 3.120082, 0.976865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.593086, 2.526833, 0.620706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.768501, 2.343872, 0.930148>,  <3.873751, 2.234095, 1.115813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.768501, 2.343872, 0.930148>,  <3.593086, 2.526833, 0.620706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.768501, 2.343872, 0.930148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895172, -0.145988, 0.421135,
		-0.079691, -0.877194, -0.473476,
		0.438539, -0.457403, 0.773606,
		3.900063, 2.206651, 1.162230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.146654, 1.929052, 0.733857>,  <3.593086, 2.526833, 0.620706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.146654, 1.929052, 0.733857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.381805, 1.944252, 1.057079>,  <3.522896, 1.953372, 1.251013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.381805, 1.944252, 1.057079>,  <3.146654, 1.929052, 0.733857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.381805, 1.944252, 1.057079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746259, -0.360088, 0.559852,
		0.312246, -0.932144, -0.183329,
		0.587877, 0.038001, 0.808057,
		3.558169, 1.955652, 1.299496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.139461, 1.221841, 0.986838>,  <3.146654, 1.929052, 0.733857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.139461, 1.221841, 0.986838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.276909, 1.450706, 1.284711>,  <3.359378, 1.588026, 1.463435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.276909, 1.450706, 1.284711>,  <3.139461, 1.221841, 0.986838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.276909, 1.450706, 1.284711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605800, -0.470868, 0.641319,
		0.717588, -0.671499, 0.184818,
		0.343620, 0.572165, 0.744682,
		3.379995, 1.622356, 1.508116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.404183, 0.733402, 1.580654>,  <3.139461, 1.221841, 0.986838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.404183, 0.733402, 1.580654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.319260, 1.099129, 1.718612>,  <3.268305, 1.318565, 1.801386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.319260, 1.099129, 1.718612>,  <3.404183, 0.733402, 1.580654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.319260, 1.099129, 1.718612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558311, -0.403157, 0.725089,
		0.802006, -0.038614, 0.596066,
		-0.212310, 0.914316, 0.344893,
		3.255567, 1.373423, 1.822080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.646106, 0.753637, 2.245659>,  <3.404183, 0.733402, 1.580654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.646106, 0.753637, 2.245659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.352943, 1.017548, 2.179276>,  <3.177046, 1.175894, 2.139445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.352943, 1.017548, 2.179276>,  <3.646106, 0.753637, 2.245659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.352943, 1.017548, 2.179276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611082, -0.531197, 0.586863,
		0.299042, 0.531531, 0.792495,
		-0.732907, 0.659777, -0.165959,
		3.133071, 1.215481, 2.129488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.170321, 0.382699, 2.521764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.118126, 0.678902, 2.785468>,  <2.086809, 0.856623, 2.943691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.118126, 0.678902, 2.785468>,  <2.170321, 0.382699, 2.521764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.118126, 0.678902, 2.785468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400660, 0.647616, -0.648124,
		-0.906887, 0.179567, -0.381197,
		-0.130487, 0.740506, 0.659260,
		2.078980, 0.901054, 2.983246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.947570, 0.898267, 2.078055>,  <2.170321, 0.382699, 2.521764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.947570, 0.898267, 2.078055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.113831, 1.071060, 2.398212>,  <2.213587, 1.174736, 2.590306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.113831, 1.071060, 2.398212>,  <1.947570, 0.898267, 2.078055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.113831, 1.071060, 2.398212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480182, 0.643147, -0.596478,
		-0.772437, 0.632260, 0.059894,
		0.415650, 0.431982, 0.800391,
		2.238526, 1.200655, 2.638329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.871597, 1.580986, 2.003748>,  <1.947570, 0.898267, 2.078055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.871597, 1.580986, 2.003748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.199379, 1.489182, 2.213821>,  <2.396048, 1.434099, 2.339865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.199379, 1.489182, 2.213821>,  <1.871597, 1.580986, 2.003748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.199379, 1.489182, 2.213821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562298, 0.499346, -0.659146,
		-0.110967, 0.835451, 0.538246,
		0.819455, -0.229511, 0.525183,
		2.445215, 1.420328, 2.371376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.249024, 2.201081, 1.945921>,  <1.871597, 1.580986, 2.003748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.249024, 2.201081, 1.945921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.492928, 1.893433, 2.022496>,  <2.639269, 1.708844, 2.068442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.492928, 1.893433, 2.022496>,  <2.249024, 2.201081, 1.945921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.492928, 1.893433, 2.022496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682185, 0.386316, -0.620793,
		0.403509, 0.509130, 0.760241,
		0.609758, -0.769121, 0.191439,
		2.675855, 1.662696, 2.079928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.902583, 2.601233, 2.076024>,  <2.249024, 2.201081, 1.945921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.902583, 2.601233, 2.076024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.999634, 2.214767, 2.041021>,  <3.057864, 1.982888, 2.020019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.999634, 2.214767, 2.041021>,  <2.902583, 2.601233, 2.076024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.999634, 2.214767, 2.041021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834748, 0.253880, -0.488611,
		0.494295, 0.045504, 0.868102,
		0.242627, -0.966165, -0.087507,
		3.072422, 1.924918, 2.014769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.523791, 2.579230, 2.403793>,  <2.902583, 2.601233, 2.076024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.523791, 2.579230, 2.403793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.524300, 2.254097, 2.170795>,  <3.524605, 2.059017, 2.030996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.524300, 2.254097, 2.170795>,  <3.523791, 2.579230, 2.403793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.524300, 2.254097, 2.170795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879547, 0.278067, -0.386103,
		0.475810, -0.511841, 0.715278,
		0.001272, -0.812833, -0.582496,
		3.524681, 2.010247, 1.996046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.091037, 2.078882, 2.432533>,  <3.523791, 2.579230, 2.403793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.091037, 2.078882, 2.432533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.952263, 2.034294, 2.060037>,  <3.868999, 2.007542, 1.836539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.952263, 2.034294, 2.060037>,  <4.091037, 2.078882, 2.432533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.952263, 2.034294, 2.060037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876196, 0.315644, -0.364210,
		0.334539, -0.942307, -0.011838,
		-0.346935, -0.111470, -0.931242,
		3.848182, 2.000853, 1.780664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.614637, 1.697886, 2.113109>,  <4.091037, 2.078882, 2.432533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.614637, 1.697886, 2.113109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.394821, 1.856392, 1.818903>,  <4.262931, 1.951495, 1.642380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.394821, 1.856392, 1.818903>,  <4.614637, 1.697886, 2.113109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.394821, 1.856392, 1.818903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819504, 0.426942, -0.382275,
		0.162540, -0.812832, -0.559361,
		-0.549540, 0.396263, -0.735514,
		4.229959, 1.975271, 1.598249>
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
