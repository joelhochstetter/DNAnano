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
	<2.299926, 2.753954, 3.417787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.463423, 3.062008, 3.221901>,  <2.561521, 3.246840, 3.104369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.463423, 3.062008, 3.221901>,  <2.299926, 2.753954, 3.417787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.463423, 3.062008, 3.221901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486550, 0.270093, 0.830854,
		0.772139, -0.577877, -0.264310,
		0.408743, 0.770135, -0.489716,
		2.586046, 3.293048, 3.074986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.994591, 2.743680, 3.527579>,  <2.299926, 2.753954, 3.417787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.994591, 2.743680, 3.527579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.876760, 3.118851, 3.454346>,  <2.806061, 3.343953, 3.410406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.876760, 3.118851, 3.454346>,  <2.994591, 2.743680, 3.527579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.876760, 3.118851, 3.454346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471397, 0.309273, 0.825915,
		0.831269, 0.156992, -0.533240,
		-0.294579, 0.937925, -0.183084,
		2.788386, 3.400228, 3.399420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.611382, 3.079137, 3.540804>,  <2.994591, 2.743680, 3.527579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.611382, 3.079137, 3.540804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.302966, 3.325804, 3.604324>,  <3.117916, 3.473804, 3.642436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.302966, 3.325804, 3.604324>,  <3.611382, 3.079137, 3.540804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.302966, 3.325804, 3.604324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409448, 0.289117, 0.865311,
		0.487698, 0.732210, -0.475414,
		-0.771041, 0.616668, 0.158800,
		3.071654, 3.510804, 3.651964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.939412, 3.705673, 3.857000>,  <3.611382, 3.079137, 3.540804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.939412, 3.705673, 3.857000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.546025, 3.731977, 3.924492>,  <3.309993, 3.747760, 3.964987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.546025, 3.731977, 3.924492>,  <3.939412, 3.705673, 3.857000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.546025, 3.731977, 3.924492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180612, 0.288424, 0.940314,
		0.013170, 0.955242, -0.295532,
		-0.983466, 0.065761, 0.168730,
		3.250985, 3.751706, 3.975111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.868004, 4.317092, 4.182662>,  <3.939412, 3.705673, 3.857000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.868004, 4.317092, 4.182662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.542674, 4.116035, 4.299866>,  <3.347476, 3.995402, 4.370188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.542674, 4.116035, 4.299866>,  <3.868004, 4.317092, 4.182662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.542674, 4.116035, 4.299866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107302, 0.365392, 0.924649,
		-0.571830, 0.783480, -0.243248,
		-0.813325, -0.502641, 0.293011,
		3.298677, 3.965243, 4.387769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.602668, 4.821879, 4.675539>,  <3.868004, 4.317092, 4.182662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.602668, 4.821879, 4.675539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.418279, 4.475874, 4.754791>,  <3.307645, 4.268270, 4.802342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.418279, 4.475874, 4.754791>,  <3.602668, 4.821879, 4.675539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.418279, 4.475874, 4.754791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091402, 0.268359, 0.958973,
		-0.882695, 0.423950, -0.202770,
		-0.460972, -0.865014, 0.198129,
		3.279987, 4.216370, 4.814230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.019963, 5.011117, 5.039060>,  <3.602668, 4.821879, 4.675539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.019963, 5.011117, 5.039060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.090856, 4.629013, 5.133774>,  <3.133391, 4.399751, 5.190602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.090856, 4.629013, 5.133774>,  <3.019963, 5.011117, 5.039060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.090856, 4.629013, 5.133774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135912, 0.262046, 0.955437,
		-0.974740, -0.137151, 0.176274,
		0.177231, -0.955260, 0.236786,
		3.144025, 4.342435, 5.204810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.620705, 4.870600, 5.589067>,  <3.019963, 5.011117, 5.039060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.620705, 4.870600, 5.589067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.888783, 4.575539, 5.621819>,  <3.049631, 4.398502, 5.641469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.888783, 4.575539, 5.621819>,  <2.620705, 4.870600, 5.589067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.888783, 4.575539, 5.621819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011246, 0.100216, 0.994902,
		-0.742098, -0.667701, 0.058869,
		0.670197, -0.737653, 0.081879,
		3.089843, 4.354243, 5.646382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.813263, 4.858104, 1.785318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.950439, 4.493763, 1.693459>,  <4.032745, 4.275158, 1.638343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.950439, 4.493763, 1.693459>,  <3.813263, 4.858104, 1.785318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.950439, 4.493763, 1.693459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781339, -0.140887, -0.607996,
		0.521441, 0.387941, -0.760001,
		0.342941, -0.910853, -0.229649,
		4.053322, 4.220507, 1.624564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.957005, 4.768953, 1.100483>,  <3.813263, 4.858104, 1.785318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.957005, 4.768953, 1.100483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.829123, 4.422199, 1.253479>,  <3.752393, 4.214147, 1.345277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.829123, 4.422199, 1.253479>,  <3.957005, 4.768953, 1.100483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.829123, 4.422199, 1.253479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661007, -0.085167, -0.745531,
		0.678865, -0.491180, -0.545788,
		-0.319707, -0.866885, 0.382490,
		3.733211, 4.162134, 1.368226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.109304, 4.304183, 0.607363>,  <3.957005, 4.768953, 1.100483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.109304, 4.304183, 0.607363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.792828, 4.185890, 0.821487>,  <3.602942, 4.114915, 0.949962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.792828, 4.185890, 0.821487>,  <4.109304, 4.304183, 0.607363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.792828, 4.185890, 0.821487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447189, -0.317331, -0.836255,
		0.417178, -0.901024, 0.118821,
		-0.791191, -0.295731, 0.535312,
		3.555470, 4.097171, 0.982081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.959055, 3.479682, 0.581150>,  <4.109304, 4.304183, 0.607363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.959055, 3.479682, 0.581150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.659510, 3.741276, 0.624062>,  <3.479783, 3.898232, 0.649808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.659510, 3.741276, 0.624062>,  <3.959055, 3.479682, 0.581150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.659510, 3.741276, 0.624062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413261, -0.334269, -0.847041,
		-0.518094, -0.678650, 0.520588,
		-0.748861, 0.653986, 0.107277,
		3.434851, 3.937471, 0.656245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.363461, 3.096766, 0.533929>,  <3.959055, 3.479682, 0.581150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.363461, 3.096766, 0.533929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.310806, 3.477505, 0.423180>,  <3.279213, 3.705948, 0.356730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.310806, 3.477505, 0.423180>,  <3.363461, 3.096766, 0.533929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.310806, 3.477505, 0.423180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362975, -0.306190, -0.880055,
		-0.922454, -0.015350, 0.385803,
		-0.131638, 0.951847, -0.276874,
		3.271315, 3.763059, 0.340117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.892215, 3.025727, 0.144675>,  <3.363461, 3.096766, 0.533929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.892215, 3.025727, 0.144675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.008083, 3.395374, 0.044998>,  <3.077604, 3.617163, -0.014808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.008083, 3.395374, 0.044998>,  <2.892215, 3.025727, 0.144675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.008083, 3.395374, 0.044998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282933, -0.166043, -0.944658,
		-0.914353, 0.344143, 0.213366,
		0.289670, 0.924119, -0.249191,
		3.094984, 3.672610, -0.029759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.374547, 3.169028, -0.234073>,  <2.892215, 3.025727, 0.144675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.374547, 3.169028, -0.234073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.653864, 3.424900, -0.362572>,  <2.821454, 3.578423, -0.439671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.653864, 3.424900, -0.362572>,  <2.374547, 3.169028, -0.234073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.653864, 3.424900, -0.362572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337630, -0.101394, -0.935802,
		-0.631186, 0.761925, 0.145173,
		0.698291, 0.639680, -0.321247,
		2.863351, 3.616804, -0.458946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.010527, 3.691000, -0.609564>,  <2.374547, 3.169028, -0.234073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.010527, 3.691000, -0.609564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.387222, 3.715996, -0.741760>,  <2.613239, 3.730993, -0.821078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.387222, 3.715996, -0.741760>,  <2.010527, 3.691000, -0.609564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.387222, 3.715996, -0.741760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331258, 0.002020, -0.943538,
		-0.058294, 0.998043, 0.022603,
		0.941738, 0.062490, -0.330492,
		2.669744, 3.734743, -0.840908>
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
