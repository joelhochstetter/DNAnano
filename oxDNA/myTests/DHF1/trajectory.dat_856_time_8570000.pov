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
	<2.185515, 1.404222, 1.117711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.999001, 1.311020, 0.776352>,  <1.887092, 1.255099, 0.571537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.999001, 1.311020, 0.776352>,  <2.185515, 1.404222, 1.117711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.999001, 1.311020, 0.776352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118130, 0.972450, -0.200965,
		0.876711, 0.007104, -0.480966,
		-0.466287, -0.233004, -0.853396,
		1.859115, 1.241119, 0.520333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.790437, 1.926347, 0.939132>,  <2.185515, 1.404222, 1.117711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.790437, 1.926347, 0.939132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.113388, 2.095085, 1.104147>,  <3.307159, 2.196328, 1.203156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.113388, 2.095085, 1.104147>,  <2.790437, 1.926347, 0.939132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.113388, 2.095085, 1.104147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577977, -0.706064, -0.409165,
		0.118674, 0.568789, -0.813877,
		0.807378, 0.421845, 0.412538,
		3.355601, 2.221639, 1.227908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.419525, 2.256556, 0.431109>,  <2.790437, 1.926347, 0.939131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.419525, 2.256556, 0.431109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.520126, 2.076065, 0.773603>,  <3.580487, 1.967771, 0.979100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.520126, 2.076065, 0.773603>,  <3.419525, 2.256556, 0.431109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.520126, 2.076065, 0.773603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578091, -0.639495, -0.506811,
		0.776245, 0.622447, 0.100015,
		0.251504, -0.451227, 0.856236,
		3.595578, 1.940697, 1.030474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.232559, 2.272227, 0.608668>,  <3.419525, 2.256556, 0.431109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.232559, 2.272227, 0.608668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.041603, 1.956482, 0.763073>,  <3.927029, 1.767035, 0.855716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.041603, 1.956482, 0.763073>,  <4.232559, 2.272227, 0.608668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.041603, 1.956482, 0.763073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534729, -0.609577, -0.585218,
		0.697254, -0.072965, 0.713101,
		-0.477391, -0.789362, 0.386013,
		3.898386, 1.719673, 0.878877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.665876, 1.797438, 0.951603>,  <4.232559, 2.272227, 0.608668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.665876, 1.797438, 0.951603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.365845, 1.549255, 0.860025>,  <4.185826, 1.400346, 0.805079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.365845, 1.549255, 0.860025>,  <4.665876, 1.797438, 0.951603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.365845, 1.549255, 0.860025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650747, -0.630688, -0.422801,
		0.117938, -0.466119, 0.876826,
		-0.750079, -0.620456, -0.228943,
		4.140821, 1.363119, 0.791342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.961848, 1.104030, 0.960450>,  <4.665876, 1.797438, 0.951603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.961848, 1.104030, 0.960450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.601311, 1.041229, 0.798990>,  <4.384989, 1.003549, 0.702115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.601311, 1.041229, 0.798990>,  <4.961848, 1.104030, 0.960450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.601311, 1.041229, 0.798990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371202, -0.760200, -0.533203,
		-0.223140, -0.630433, 0.743480,
		-0.901342, -0.157002, -0.403649,
		4.330908, 0.994129, 0.677896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.816659, 0.437039, 1.106365>,  <4.961848, 1.104030, 0.960450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.816659, 0.437039, 1.106365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.589149, 0.531494, 0.791218>,  <4.452644, 0.588167, 0.602130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.589149, 0.531494, 0.791218>,  <4.816659, 0.437039, 1.106365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.589149, 0.531494, 0.791218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170504, -0.903241, -0.393807,
		-0.804627, -0.358321, 0.473478,
		-0.568774, 0.236138, -0.787867,
		4.418517, 0.602336, 0.554858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.384412, -0.055887, 1.032403>,  <4.816659, 0.437039, 1.106365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.384412, -0.055887, 1.032403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.410126, 0.103226, 0.666313>,  <4.425554, 0.198693, 0.446659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.410126, 0.103226, 0.666313>,  <4.384412, -0.055887, 1.032403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.410126, 0.103226, 0.666313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313210, -0.878822, -0.359960,
		-0.947506, -0.263518, -0.181083,
		0.064284, 0.397781, -0.915225,
		4.429411, 0.222560, 0.391746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.558138, -0.828276, -0.201976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.281197, -0.687996, -0.454215>,  <5.115032, -0.603828, -0.605559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.281197, -0.687996, -0.454215>,  <5.558138, -0.828276, -0.201976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.281197, -0.687996, -0.454215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135939, 0.794895, 0.591323,
		0.708636, 0.495128, -0.502675,
		-0.692355, 0.350700, -0.630598,
		5.073490, -0.582786, -0.643395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.611408, 0.004919, -0.317862>,  <5.558138, -0.828276, -0.201976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.611408, 0.004919, -0.317862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.240189, -0.120674, -0.398001>,  <5.017457, -0.196030, -0.446084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.240189, -0.120674, -0.398001>,  <5.611408, 0.004919, -0.317862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.240189, -0.120674, -0.398001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371756, 0.813885, 0.446531,
		0.022855, 0.488882, -0.872050,
		-0.928049, -0.313984, -0.200346,
		4.961774, -0.214869, -0.458105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.146114, 0.483446, -0.669306>,  <5.611408, 0.004919, -0.317862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.146114, 0.483446, -0.669306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.920403, 0.257362, -0.428597>,  <4.784975, 0.121712, -0.284172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.920403, 0.257362, -0.428597>,  <5.146114, 0.483446, -0.669306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.920403, 0.257362, -0.428597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467095, 0.819592, 0.331800,
		-0.680742, -0.093856, -0.726485,
		-0.564280, -0.565208, 0.601771,
		4.751119, 0.087800, -0.248066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.475296, 0.723582, -0.751015>,  <5.146114, 0.483446, -0.669306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.475296, 0.723582, -0.751015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.445793, 0.527618, -0.403556>,  <4.428092, 0.410040, -0.195080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.445793, 0.527618, -0.403556>,  <4.475296, 0.723582, -0.751015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.445793, 0.527618, -0.403556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561968, 0.739980, 0.369624,
		-0.823864, -0.460890, -0.329892,
		-0.073758, -0.489908, 0.868648,
		4.423666, 0.380646, -0.142961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.766732, 0.734469, -0.567612>,  <4.475296, 0.723582, -0.751015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.766732, 0.734469, -0.567612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.976875, 0.699310, -0.229080>,  <4.102962, 0.678215, -0.025961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.976875, 0.699310, -0.229080>,  <3.766732, 0.734469, -0.567612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.976875, 0.699310, -0.229080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616849, 0.645770, 0.449976,
		-0.586085, -0.758456, 0.285042,
		0.525358, -0.087896, 0.846329,
		4.134483, 0.672942, 0.024819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.258080, 0.884737, -0.042176>,  <3.766732, 0.734469, -0.567612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.258080, 0.884737, -0.042176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.595184, 0.896492, 0.172817>,  <3.797447, 0.903545, 0.301813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.595184, 0.896492, 0.172817>,  <3.258080, 0.884737, -0.042176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.595184, 0.896492, 0.172817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463421, 0.547592, 0.696695,
		-0.273848, -0.836230, 0.475108,
		0.842762, 0.029387, 0.537483,
		3.848013, 0.905308, 0.334062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.026609, 0.709624, 0.556013>,  <3.258080, 0.884737, -0.042176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.026609, 0.709624, 0.556013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.374374, 0.899651, 0.610320>,  <3.583034, 1.013667, 0.642904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.374374, 0.899651, 0.610320>,  <3.026609, 0.709624, 0.556013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.374374, 0.899651, 0.610320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383659, 0.475965, 0.791368,
		0.311332, -0.740114, 0.596074,
		0.869413, 0.475067, 0.135768,
		3.635198, 1.042171, 0.651051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.264895, 0.582833, 1.300654>,  <3.026609, 0.709624, 0.556013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.264895, 0.582833, 1.300654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.412582, 0.927719, 1.161939>,  <3.501195, 1.134651, 1.078709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.412582, 0.927719, 1.161939>,  <3.264895, 0.582833, 1.300654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.412582, 0.927719, 1.161939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473634, 0.495635, 0.728022,
		0.799592, -0.104548, 0.591373,
		0.369218, 0.862215, -0.346789,
		3.523348, 1.186384, 1.057902>
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
