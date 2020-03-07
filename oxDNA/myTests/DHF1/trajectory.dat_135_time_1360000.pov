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
	<4.509967, 1.824686, 4.634340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.212971, 1.666256, 4.850426>,  <4.034773, 1.571198, 4.980077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.212971, 1.666256, 4.850426>,  <4.509967, 1.824686, 4.634340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.212971, 1.666256, 4.850426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228283, -0.608569, -0.759954,
		0.629757, -0.687581, 0.361440,
		-0.742491, -0.396076, 0.540214,
		3.990223, 1.547433, 5.012490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.563663, 1.129483, 4.815891>,  <4.509967, 1.824686, 4.634340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.563663, 1.129483, 4.815891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.176600, 1.223663, 4.779667>,  <3.944362, 1.280172, 4.757933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.176600, 1.223663, 4.779667>,  <4.563663, 1.129483, 4.815891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.176600, 1.223663, 4.779667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090727, -0.659785, -0.745958,
		-0.235386, -0.713616, 0.659808,
		-0.967658, 0.235450, -0.090560,
		3.886302, 1.294299, 4.752499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.130816, 0.564489, 4.884236>,  <4.563663, 1.129483, 4.815891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.130816, 0.564489, 4.884236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.944078, 0.834057, 4.655190>,  <3.832036, 0.995798, 4.517762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.944078, 0.834057, 4.655190>,  <4.130816, 0.564489, 4.884236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.944078, 0.834057, 4.655190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060357, -0.670277, -0.739652,
		-0.882278, -0.310740, 0.353590,
		-0.466842, 0.673921, -0.572616,
		3.804025, 1.036233, 4.483405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.416667, 0.460322, 4.690373>,  <4.130816, 0.564489, 4.884236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.416667, 0.460322, 4.690373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.655067, 0.627598, 4.416176>,  <3.798107, 0.727963, 4.251657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.655067, 0.627598, 4.416176>,  <3.416667, 0.460322, 4.690373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.655067, 0.627598, 4.416176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201266, -0.748634, -0.631696,
		-0.777352, 0.514457, -0.362019,
		0.596000, 0.418188, -0.685494,
		3.833867, 0.753054, 4.210527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.092506, 0.689426, 3.918214>,  <3.416667, 0.460322, 4.690373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.092506, 0.689426, 3.918214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.464720, 0.543964, 3.900967>,  <3.688048, 0.456687, 3.890618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.464720, 0.543964, 3.900967>,  <3.092506, 0.689426, 3.918214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.464720, 0.543964, 3.900967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251987, -0.550418, -0.795954,
		0.265720, 0.751528, -0.603820,
		0.930535, -0.363655, -0.043118,
		3.743880, 0.434868, 3.888031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.137255, 0.553697, 3.255902>,  <3.092506, 0.689426, 3.918214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.137255, 0.553697, 3.255902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.449715, 0.354420, 3.406425>,  <3.637190, 0.234853, 3.496740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.449715, 0.354420, 3.406425>,  <3.137255, 0.553697, 3.255902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.449715, 0.354420, 3.406425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106936, -0.700580, -0.705516,
		0.615119, 0.510872, -0.600532,
		0.781149, -0.498194, 0.376309,
		3.684059, 0.204961, 3.519318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.752549, 0.607561, 2.726905>,  <3.137255, 0.553697, 3.255902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.752549, 0.607561, 2.726905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.813688, 0.288952, 2.960892>,  <3.850372, 0.097786, 3.101284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.813688, 0.288952, 2.960892>,  <3.752549, 0.607561, 2.726905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.813688, 0.288952, 2.960892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175591, -0.604394, -0.777095,
		0.972525, 0.016063, -0.232244,
		0.152849, -0.796524, 0.584967,
		3.859543, 0.049995, 3.136382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.314269, 0.202813, 2.373959>,  <3.752549, 0.607561, 2.726905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.314269, 0.202813, 2.373959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.123655, -0.046738, 2.621731>,  <4.009287, -0.196468, 2.770394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.123655, -0.046738, 2.621731>,  <4.314269, 0.202813, 2.373959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.123655, -0.046738, 2.621731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060612, -0.679581, -0.731092,
		0.877064, -0.385935, 0.286029,
		-0.476534, -0.623877, 0.619429,
		3.980695, -0.233901, 2.807559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.486075, 3.697417, 1.432241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.349618, 3.481255, 1.739899>,  <4.267745, 3.351557, 1.924494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.349618, 3.481255, 1.739899>,  <4.486075, 3.697417, 1.432241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.349618, 3.481255, 1.739899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211282, 0.841374, 0.497443,
		-0.915960, 0.007192, -0.401206,
		-0.341142, -0.540405, 0.769145,
		4.247276, 3.319133, 1.970642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.803009, 3.836425, 1.532230>,  <4.486075, 3.697417, 1.432241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.803009, 3.836425, 1.532230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.978243, 3.716286, 1.871140>,  <4.083384, 3.644202, 2.074485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.978243, 3.716286, 1.871140>,  <3.803009, 3.836425, 1.532230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.978243, 3.716286, 1.871140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386906, 0.787764, 0.479303,
		-0.811409, -0.537792, 0.228902,
		0.438086, -0.300348, 0.847273,
		4.109669, 3.626182, 2.125321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.435718, 4.191299, 1.988375>,  <3.803009, 3.836425, 1.532230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.435718, 4.191299, 1.988375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.738058, 4.065163, 2.217896>,  <3.919462, 3.989481, 2.355608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.738058, 4.065163, 2.217896>,  <3.435718, 4.191299, 1.988375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.738058, 4.065163, 2.217896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182971, 0.739729, 0.647551,
		-0.628658, -0.594442, 0.501426,
		0.755851, -0.315342, 0.573802,
		3.964813, 3.970560, 2.390036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.167045, 3.964731, 2.732576>,  <3.435718, 4.191299, 1.988375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.167045, 3.964731, 2.732576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.554472, 4.061432, 2.756012>,  <3.786928, 4.119453, 2.770073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.554472, 4.061432, 2.756012>,  <3.167045, 3.964731, 2.732576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.554472, 4.061432, 2.756012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213361, 0.686304, 0.695315,
		0.127884, -0.685960, 0.716313,
		0.968567, 0.241754, 0.058590,
		3.845042, 4.133958, 2.773589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.448506, 3.790316, 3.462988>,  <3.167045, 3.964731, 2.732576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.448506, 3.790316, 3.462988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.623564, 4.102600, 3.284569>,  <3.728599, 4.289970, 3.177517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.623564, 4.102600, 3.284569>,  <3.448506, 3.790316, 3.462988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.623564, 4.102600, 3.284569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117806, 0.541589, 0.832348,
		0.891397, -0.311726, 0.328997,
		0.437646, 0.780710, -0.446048,
		3.754857, 4.336813, 3.150754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.025449, 4.055022, 3.905443>,  <3.448506, 3.790316, 3.462988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.025449, 4.055022, 3.905443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.944940, 4.358788, 3.657967>,  <3.896634, 4.541047, 3.509481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.944940, 4.358788, 3.657967>,  <4.025449, 4.055022, 3.905443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.944940, 4.358788, 3.657967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093480, 0.643625, 0.759610,
		0.975065, 0.095054, -0.200534,
		-0.201273, 0.759415, -0.618691,
		3.884558, 4.586612, 3.472359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.441670, 4.451436, 4.201961>,  <4.025449, 4.055022, 3.905443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.441670, 4.451436, 4.201961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.221496, 4.696465, 3.975060>,  <4.089391, 4.843482, 3.838919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.221496, 4.696465, 3.975060>,  <4.441670, 4.451436, 4.201961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.221496, 4.696465, 3.975060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335801, 0.784504, 0.521335,
		0.764368, 0.096477, -0.637522,
		-0.550436, 0.612572, -0.567253,
		4.056365, 4.880236, 3.804884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.952665, 4.931327, 3.907556>,  <4.441670, 4.451436, 4.201961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.952665, 4.931327, 3.907556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.596516, 5.112083, 3.885529>,  <4.382827, 5.220537, 3.872312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.596516, 5.112083, 3.885529>,  <4.952665, 4.931327, 3.907556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.596516, 5.112083, 3.885529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360870, 0.774370, 0.519735,
		0.277507, 0.442885, -0.852551,
		-0.890373, 0.451890, -0.055069,
		4.329404, 5.247650, 3.869008>
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
