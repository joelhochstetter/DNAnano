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
	<4.391958, -1.358764, 3.393848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.255822, -1.225132, 3.042267>,  <4.174141, -1.144953, 2.831318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.255822, -1.225132, 3.042267>,  <4.391958, -1.358764, 3.393848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.255822, -1.225132, 3.042267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013469, 0.936392, 0.350698,
		0.940207, 0.107518, -0.323190,
		-0.340338, 0.334081, -0.878954,
		4.153721, -1.124908, 2.778581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.758880, -0.849632, 3.149399>,  <4.391958, -1.358764, 3.393848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.758880, -0.849632, 3.149399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.408584, -0.791973, 2.965096>,  <4.198406, -0.757378, 2.854513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.408584, -0.791973, 2.965096>,  <4.758880, -0.849632, 3.149399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.408584, -0.791973, 2.965096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006870, 0.958010, 0.286652,
		0.482731, 0.247868, -0.839960,
		-0.875742, 0.144146, -0.460759,
		4.145861, -0.748729, 2.826868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.842379, -0.267714, 2.642977>,  <4.758880, -0.849632, 3.149399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.842379, -0.267714, 2.642977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.455921, -0.286167, 2.744514>,  <4.224046, -0.297239, 2.805437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.455921, -0.286167, 2.744514>,  <4.842379, -0.267714, 2.642977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.455921, -0.286167, 2.744514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015510, 0.992489, 0.121344,
		-0.257534, 0.113299, -0.959604,
		-0.966145, -0.046134, 0.253842,
		4.166078, -0.300007, 2.820667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.403478, 0.244451, 2.226614>,  <4.842379, -0.267714, 2.642977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.403478, 0.244451, 2.226614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.210198, 0.170547, 2.568932>,  <4.094231, 0.126205, 2.774322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.210198, 0.170547, 2.568932>,  <4.403478, 0.244451, 2.226614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.210198, 0.170547, 2.568932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033464, 0.980663, 0.192822,
		-0.874871, 0.064533, -0.480039,
		-0.483199, -0.184758, 0.855793,
		4.065238, 0.115120, 2.825670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.878933, 0.740915, 2.277023>,  <4.403478, 0.244451, 2.226614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.878933, 0.740915, 2.277023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.896422, 0.630299, 2.661026>,  <3.906915, 0.563929, 2.891428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.896422, 0.630299, 2.661026>,  <3.878933, 0.740915, 2.277023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.896422, 0.630299, 2.661026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140398, 0.949689, 0.279963,
		-0.989129, -0.147024, 0.002696,
		0.043722, -0.276541, 0.960007,
		3.909539, 0.547336, 2.949028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.388820, 1.156902, 2.556580>,  <3.878933, 0.740915, 2.277023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.388820, 1.156902, 2.556580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.630001, 1.042336, 2.854416>,  <3.774709, 0.973596, 3.033118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.630001, 1.042336, 2.854416>,  <3.388820, 1.156902, 2.556580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.630001, 1.042336, 2.854416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022418, 0.939046, 0.343061,
		-0.797463, -0.190157, 0.572620,
		0.602952, -0.286415, 0.744591,
		3.810886, 0.956411, 3.077793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.114733, 1.363428, 3.196069>,  <3.388820, 1.156902, 2.556580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.114733, 1.363428, 3.196069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.503388, 1.325096, 3.282547>,  <3.736581, 1.302097, 3.334434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.503388, 1.325096, 3.282547>,  <3.114733, 1.363428, 3.196069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.503388, 1.325096, 3.282547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005422, 0.904948, 0.425487,
		-0.236418, -0.414591, 0.878761,
		0.971636, -0.095828, 0.216194,
		3.794879, 1.296348, 3.347405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.232119, 1.526150, 3.910050>,  <3.114733, 1.363428, 3.196069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.232119, 1.526150, 3.910050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.592703, 1.565186, 3.741364>,  <3.809054, 1.588607, 3.640152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.592703, 1.565186, 3.741364>,  <3.232119, 1.526150, 3.910050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.592703, 1.565186, 3.741364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027137, 0.959598, 0.280064,
		0.432009, -0.263911, 0.862391,
		0.901461, 0.097588, -0.421717,
		3.863142, 1.594462, 3.614848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.430304, 2.467514, 3.834379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.788921, 2.644531, 3.826721>,  <4.004092, 2.750742, 3.822126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.788921, 2.644531, 3.826721>,  <3.430304, 2.467514, 3.834379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.788921, 2.644531, 3.826721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437784, -0.878656, 0.190550,
		0.067505, -0.179218, -0.981491,
		0.896543, 0.442544, -0.019145,
		4.057884, 2.777294, 3.820977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.848878, 2.496689, 3.237735>,  <3.430304, 2.467514, 3.834379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.848878, 2.496689, 3.237735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.105602, 2.472900, 3.543556>,  <4.259637, 2.458627, 3.727049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.105602, 2.472900, 3.543556>,  <3.848878, 2.496689, 3.237735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.105602, 2.472900, 3.543556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406895, -0.818661, -0.405254,
		0.650011, 0.571190, -0.501227,
		0.641812, -0.059473, 0.764553,
		4.298146, 2.455059, 3.772922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.565486, 2.414058, 3.077560>,  <3.848878, 2.496689, 3.237735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.565486, 2.414058, 3.077560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.462715, 2.203148, 3.401527>,  <4.401052, 2.076602, 3.595908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.462715, 2.203148, 3.401527>,  <4.565486, 2.414058, 3.077560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.462715, 2.203148, 3.401527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078633, -0.846678, -0.526264,
		0.963226, -0.071526, 0.258997,
		-0.256928, -0.527277, 0.809918,
		4.385637, 2.044965, 3.644503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.092515, 1.854490, 3.335409>,  <4.565486, 2.414058, 3.077560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.092515, 1.854490, 3.335409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.716228, 1.757729, 3.430519>,  <4.490457, 1.699672, 3.487585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.716228, 1.757729, 3.430519>,  <5.092515, 1.854490, 3.335409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.716228, 1.757729, 3.430519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082454, -0.843051, -0.531475,
		0.329023, -0.480361, 0.813017,
		-0.940715, -0.241904, 0.237776,
		4.434014, 1.685157, 3.501852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.069238, 1.114880, 3.678485>,  <5.092515, 1.854490, 3.335409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.069238, 1.114880, 3.678485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.688049, 1.178864, 3.575523>,  <4.459336, 1.217253, 3.513746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.688049, 1.178864, 3.575523>,  <5.069238, 1.114880, 3.678485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.688049, 1.178864, 3.575523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114170, -0.976273, -0.183999,
		-0.280730, -0.145958, 0.948624,
		-0.952972, 0.159958, -0.257405,
		4.402158, 1.226851, 3.498302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.675410, 0.574365, 3.988871>,  <5.069238, 1.114880, 3.678485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.675410, 0.574365, 3.988871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.390335, 0.684196, 3.730667>,  <4.219290, 0.750096, 3.575745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.390335, 0.684196, 3.730667>,  <4.675410, 0.574365, 3.988871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.390335, 0.684196, 3.730667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189424, -0.961354, -0.199793,
		-0.675423, -0.020115, 0.737156,
		-0.712687, 0.274580, -0.645511,
		4.176529, 0.766570, 3.537014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.070306, 0.216274, 4.183372>,  <4.675410, 0.574365, 3.988871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.070306, 0.216274, 4.183372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.006599, 0.325958, 3.804016>,  <3.968375, 0.391769, 3.576403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.006599, 0.325958, 3.804016>,  <4.070306, 0.216274, 4.183372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.006599, 0.325958, 3.804016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162650, -0.954813, -0.248752,
		-0.973745, 0.114637, 0.196669,
		-0.159266, 0.274210, -0.948390,
		3.958819, 0.408221, 3.519499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.426646, -0.067916, 3.925345>,  <4.070306, 0.216274, 4.183372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.426646, -0.067916, 3.925345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.646927, -0.025925, 3.594116>,  <3.779096, -0.000730, 3.395379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.646927, -0.025925, 3.594116>,  <3.426646, -0.067916, 3.925345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.646927, -0.025925, 3.594116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113649, -0.973391, -0.198984,
		-0.826928, 0.203691, -0.524119,
		0.550704, 0.104979, -0.828073,
		3.812138, 0.005569, 3.345694>
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
