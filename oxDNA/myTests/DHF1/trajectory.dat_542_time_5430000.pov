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
	<-1.060541, 4.673590, 4.890108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.816380, 4.983856, 4.825920>,  <-0.669883, 5.170016, 4.787407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.816380, 4.983856, 4.825920>,  <-1.060541, 4.673590, 4.890108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.816380, 4.983856, 4.825920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748711, -0.631133, -0.202737,
		-0.258534, 0.003607, -0.965996,
		0.610403, 0.775666, -0.160469,
		-0.633259, 5.216556, 4.777780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.687915, 4.494841, 4.279226>,  <-1.060541, 4.673590, 4.890108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.687915, 4.494841, 4.279226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.446774, 4.734455, 4.490025>,  <-0.302089, 4.878223, 4.616504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.446774, 4.734455, 4.490025>,  <-0.687915, 4.494841, 4.279226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.446774, 4.734455, 4.490025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782482, -0.572934, -0.243863,
		0.155851, 0.559379, -0.814129,
		0.602854, 0.599035, 0.526996,
		-0.265917, 4.914165, 4.648123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.063759, 4.837952, 3.857369>,  <-0.687915, 4.494841, 4.279226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.063759, 4.837952, 3.857369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.046991, 4.709469, 4.235802>,  <-0.036931, 4.632379, 4.462861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.046991, 4.709469, 4.235802>,  <-0.063759, 4.837952, 3.857369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.046991, 4.709469, 4.235802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687928, -0.677428, -0.260476,
		0.724568, 0.661754, 0.192570,
		0.041918, -0.321207, 0.946081,
		-0.034416, 4.613107, 4.519626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.638063, 4.914623, 4.200658>,  <-0.063759, 4.837952, 3.857369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.638063, 4.914623, 4.200658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.444246, 4.614407, 4.380394>,  <0.327956, 4.434277, 4.488235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.444246, 4.614407, 4.380394>,  <0.638063, 4.914623, 4.200658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.444246, 4.614407, 4.380394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759514, -0.615805, -0.209577,
		0.434002, 0.239731, 0.868430,
		-0.484541, -0.750542, 0.449340,
		0.298884, 4.389244, 4.515196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.147017, 4.579721, 4.613253>,  <0.638063, 4.914623, 4.200658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.147017, 4.579721, 4.613253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.862833, 4.298611, 4.598534>,  <0.692323, 4.129944, 4.589702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.862833, 4.298611, 4.598534>,  <1.147017, 4.579721, 4.613253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.862833, 4.298611, 4.598534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701143, -0.711357, 0.048686,
		-0.060392, 0.008789, 0.998136,
		-0.710459, -0.702776, -0.036798,
		0.649695, 4.087778, 4.587494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.292443, 4.088348, 5.149312>,  <1.147017, 4.579721, 4.613253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.292443, 4.088348, 5.149312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.072287, 3.883282, 4.885723>,  <0.940193, 3.760242, 4.727570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.072287, 3.883282, 4.885723>,  <1.292443, 4.088348, 5.149312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.072287, 3.883282, 4.885723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699614, -0.713936, -0.028912,
		-0.455641, -0.476938, 0.751613,
		-0.550392, -0.512666, -0.658971,
		0.907169, 3.729482, 4.688032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.320148, 3.350921, 5.389681>,  <1.292443, 4.088348, 5.149312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.320148, 3.350921, 5.389681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.189716, 3.342625, 5.011635>,  <1.111457, 3.337647, 4.784807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.189716, 3.342625, 5.011635>,  <1.320148, 3.350921, 5.389681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.189716, 3.342625, 5.011635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638001, -0.742570, -0.203824,
		-0.697586, -0.669447, 0.255370,
		-0.326079, -0.020742, -0.945115,
		1.091893, 3.336402, 4.728100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.335667, 2.631077, 5.207568>,  <1.320148, 3.350921, 5.389681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.335667, 2.631077, 5.207568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.331640, 2.808681, 4.849182>,  <1.329224, 2.915244, 4.634151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.331640, 2.808681, 4.849182>,  <1.335667, 2.631077, 5.207568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.331640, 2.808681, 4.849182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508731, -0.769110, -0.386863,
		-0.860867, -0.459699, -0.218141,
		-0.010066, 0.444012, -0.895964,
		1.328620, 2.941885, 4.580393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.380388, 2.147579, 4.372805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.291328, 2.237694, 3.993401>,  <2.237893, 2.291763, 3.765758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.291328, 2.237694, 3.993401>,  <2.380388, 2.147579, 4.372805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.291328, 2.237694, 3.993401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642328, 0.697999, 0.316564,
		0.733377, 0.679738, -0.010700,
		-0.222649, 0.225287, -0.948511,
		2.224534, 2.305280, 3.708847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.288270, 2.940742, 4.313622>,  <2.380388, 2.147579, 4.372805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.288270, 2.940742, 4.313622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.062515, 2.770073, 4.030945>,  <1.927062, 2.667671, 3.861338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.062515, 2.770073, 4.030945>,  <2.288270, 2.940742, 4.313622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.062515, 2.770073, 4.030945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787923, 0.533802, 0.306973,
		0.246258, 0.730073, -0.637457,
		-0.564388, -0.426673, -0.706694,
		1.893199, 2.642071, 3.818937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.057439, 3.446343, 3.649911>,  <2.288270, 2.940742, 4.313622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.057439, 3.446343, 3.649911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.825958, 3.158516, 3.803444>,  <1.687070, 2.985820, 3.895564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.825958, 3.158516, 3.803444>,  <2.057439, 3.446343, 3.649911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.825958, 3.158516, 3.803444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722459, 0.670676, 0.168067,
		-0.378363, -0.180042, -0.907979,
		-0.578701, -0.719568, 0.383832,
		1.652348, 2.942646, 3.918593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.378016, 3.555044, 3.496842>,  <2.057439, 3.446343, 3.649911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.378016, 3.555044, 3.496842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.331436, 3.334129, 3.827034>,  <1.303488, 3.201581, 4.025149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.331436, 3.334129, 3.827034>,  <1.378016, 3.555044, 3.496842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.331436, 3.334129, 3.827034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797326, 0.547561, 0.253868,
		-0.592209, -0.628615, -0.504115,
		-0.116448, -0.552287, 0.825481,
		1.296502, 3.168443, 4.074678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.690678, 3.246361, 3.500505>,  <1.378016, 3.555044, 3.496842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.690678, 3.246361, 3.500505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.818222, 3.260017, 3.879379>,  <0.894749, 3.268211, 4.106704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.818222, 3.260017, 3.879379>,  <0.690678, 3.246361, 3.500505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.818222, 3.260017, 3.879379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748306, 0.622398, 0.229475,
		-0.581692, -0.781956, 0.224006,
		0.318860, 0.034142, 0.947187,
		0.913880, 3.270260, 4.163535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.057051, 3.109552, 3.919065>,  <0.690678, 3.246361, 3.500505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.057051, 3.109552, 3.919065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.316803, 3.313591, 4.144669>,  <0.472654, 3.436014, 4.280031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.316803, 3.313591, 4.144669>,  <0.057051, 3.109552, 3.919065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.316803, 3.313591, 4.144669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754603, 0.524141, 0.394780,
		-0.094244, -0.681966, 0.725287,
		0.649379, 0.510098, 0.564010,
		0.511617, 3.466620, 4.313871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.241940, 3.119955, 4.641606>,  <0.057051, 3.109552, 3.919065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.241940, 3.119955, 4.641606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.020546, 3.418411, 4.596603>,  <0.178037, 3.597485, 4.569602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.020546, 3.418411, 4.596603>,  <-0.241940, 3.119955, 4.641606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.020546, 3.418411, 4.596603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688260, 0.652974, 0.316106,
		0.309323, -0.130000, 0.942030,
		0.656214, 0.746140, -0.112506,
		0.217410, 3.642253, 4.562851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.319707, 3.448524, 5.205828>,  <-0.241940, 3.119955, 4.641606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.319707, 3.448524, 5.205828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.138153, 3.712563, 4.966408>,  <-0.029221, 3.870985, 4.822755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.138153, 3.712563, 4.966408>,  <-0.319707, 3.448524, 5.205828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.138153, 3.712563, 4.966408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697832, 0.681028, 0.221882,
		0.554093, 0.316980, 0.769743,
		0.453884, 0.660095, -0.598551,
		-0.001988, 3.910591, 4.786842>
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
