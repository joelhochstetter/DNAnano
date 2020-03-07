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
	<5.352369, 0.053478, 4.556248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.305653, 0.448418, 4.599144>,  <5.277623, 0.685382, 4.624882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.305653, 0.448418, 4.599144>,  <5.352369, 0.053478, 4.556248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.305653, 0.448418, 4.599144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651031, 0.005432, -0.759032,
		-0.750012, -0.158465, 0.642161,
		-0.116792, 0.987350, 0.107240,
		5.270615, 0.744623, 4.631316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.627176, 0.217660, 4.594887>,  <5.352369, 0.053478, 4.556248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.627176, 0.217660, 4.594887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.823029, 0.515236, 4.412979>,  <4.940540, 0.693781, 4.303834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.823029, 0.515236, 4.412979>,  <4.627176, 0.217660, 4.594887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.823029, 0.515236, 4.412979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730698, 0.065508, -0.679550,
		-0.475754, 0.665029, 0.575670,
		0.489631, 0.743939, -0.454770,
		4.969918, 0.738418, 4.276548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.978820, 0.139882, 3.944383>,  <4.627176, 0.217660, 4.594887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.978820, 0.139882, 3.944383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.051510, 0.050079, 3.561432>,  <5.095124, -0.003802, 3.331661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.051510, 0.050079, 3.561432>,  <4.978820, 0.139882, 3.944383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.051510, 0.050079, 3.561432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334794, 0.901299, -0.274905,
		0.924602, 0.370482, 0.088626,
		0.181726, -0.224506, -0.957378,
		5.106028, -0.017273, 3.274219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.462963, 0.705140, 3.596732>,  <4.978820, 0.139882, 3.944383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.462963, 0.705140, 3.596732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.179565, 0.537842, 3.369362>,  <5.009527, 0.437463, 3.232940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.179565, 0.537842, 3.369362>,  <5.462963, 0.705140, 3.596732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.179565, 0.537842, 3.369362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316018, 0.908214, -0.274373,
		0.631006, -0.014760, -0.775637,
		-0.708494, -0.418247, -0.568424,
		4.967017, 0.412368, 3.198834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.425279, 1.078491, 2.960547>,  <5.462963, 0.705140, 3.596732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.425279, 1.078491, 2.960547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.085926, 0.867439, 2.943321>,  <4.882314, 0.740808, 2.932986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.085926, 0.867439, 2.943321>,  <5.425279, 1.078491, 2.960547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.085926, 0.867439, 2.943321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466224, 0.783222, -0.411338,
		0.250764, -0.328894, -0.910465,
		-0.848382, -0.527629, -0.043066,
		4.831411, 0.709151, 2.930402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.169662, 1.156631, 2.275167>,  <5.425279, 1.078491, 2.960547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.169662, 1.156631, 2.275167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.837757, 1.073219, 2.482246>,  <4.638614, 1.023172, 2.606494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.837757, 1.073219, 2.482246>,  <5.169662, 1.156631, 2.275167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.837757, 1.073219, 2.482246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462572, 0.775962, -0.428848,
		-0.312287, -0.595314, -0.740322,
		-0.829761, -0.208529, 0.517699,
		4.588829, 1.010661, 2.637556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.651383, 1.261615, 1.842926>,  <5.169662, 1.156631, 2.275167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.651383, 1.261615, 1.842926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.447136, 1.271492, 2.186707>,  <4.324587, 1.277418, 2.392975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.447136, 1.271492, 2.186707>,  <4.651383, 1.261615, 1.842926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.447136, 1.271492, 2.186707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522831, 0.784632, -0.333167,
		-0.682581, -0.619470, -0.387737,
		-0.510618, 0.024693, 0.859453,
		4.293950, 1.278900, 2.444542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.038796, 1.233796, 1.670565>,  <4.651383, 1.261615, 1.842926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.038796, 1.233796, 1.670565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.070457, 1.419899, 2.023216>,  <4.089454, 1.531561, 2.234807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.070457, 1.419899, 2.023216>,  <4.038796, 1.233796, 1.670565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.070457, 1.419899, 2.023216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555639, 0.754869, -0.348479,
		-0.827647, -0.462285, 0.318265,
		0.079152, 0.465259, 0.881629,
		4.094203, 1.559477, 2.287705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.210615, 2.570300, 1.769363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.080616, 2.738449, 2.108223>,  <4.002616, 2.839338, 2.311539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.080616, 2.738449, 2.108223>,  <4.210615, 2.570300, 1.769363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.080616, 2.738449, 2.108223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049884, -0.886911, 0.459239,
		0.944398, 0.191511, 0.267275,
		-0.324998, 0.420372, 0.847150,
		3.983117, 2.864561, 2.362368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.682175, 2.459102, 2.328126>,  <4.210615, 2.570300, 1.769363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.682175, 2.459102, 2.328126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.317341, 2.476479, 2.491203>,  <4.098441, 2.486904, 2.589050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.317341, 2.476479, 2.491203>,  <4.682175, 2.459102, 2.328126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.317341, 2.476479, 2.491203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067630, -0.964809, 0.254104,
		0.404385, 0.259337, 0.877050,
		-0.912085, 0.043440, 0.407693,
		4.043715, 2.489511, 2.613511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.724555, 2.114658, 2.962514>,  <4.682175, 2.459102, 2.328126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.724555, 2.114658, 2.962514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.347516, 2.115997, 2.828949>,  <4.121293, 2.116801, 2.748810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.347516, 2.115997, 2.828949>,  <4.724555, 2.114658, 2.962514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.347516, 2.115997, 2.828949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118268, -0.938482, 0.324445,
		-0.312284, 0.345312, 0.885008,
		-0.942598, 0.003349, -0.333912,
		4.064736, 2.117002, 2.728775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.202173, 1.981416, 3.490684>,  <4.724555, 2.114658, 2.962514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.202173, 1.981416, 3.490684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.135884, 1.843338, 3.121170>,  <4.096111, 1.760491, 2.899462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.135884, 1.843338, 3.121170>,  <4.202173, 1.981416, 3.490684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.135884, 1.843338, 3.121170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094255, -0.937993, 0.333594,
		-0.981658, -0.031787, 0.187982,
		-0.165722, -0.345194, -0.923784,
		4.086168, 1.739780, 2.844035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.688924, 1.494756, 3.513082>,  <4.202173, 1.981416, 3.490684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.688924, 1.494756, 3.513082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.877862, 1.383209, 3.178627>,  <3.991225, 1.316281, 2.977954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.877862, 1.383209, 3.178627>,  <3.688924, 1.494756, 3.513082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.877862, 1.383209, 3.178627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026948, -0.952756, 0.302537,
		-0.881001, -0.120369, -0.457545,
		0.472345, -0.278866, -0.836136,
		4.019565, 1.299549, 2.927786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.532800, 0.693343, 3.334433>,  <3.688924, 1.494756, 3.513082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.532800, 0.693343, 3.334433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.864890, 0.794044, 3.135498>,  <4.064145, 0.854465, 3.016137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.864890, 0.794044, 3.135498>,  <3.532800, 0.693343, 3.334433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.864890, 0.794044, 3.135498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335370, -0.938253, 0.084902,
		-0.445254, -0.237280, -0.863393,
		0.830226, 0.251753, -0.497338,
		4.113958, 0.869570, 2.986297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.660641, 0.200912, 2.900232>,  <3.532800, 0.693343, 3.334433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.660641, 0.200912, 2.900232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.031587, 0.350426, 2.893509>,  <4.254154, 0.440134, 2.889475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.031587, 0.350426, 2.893509>,  <3.660641, 0.200912, 2.900232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.031587, 0.350426, 2.893509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373905, -0.927456, 0.004530,
		-0.013895, -0.010486, -0.999848,
		0.927363, 0.373785, -0.016808,
		4.309795, 0.462561, 2.888467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.083072, -0.238248, 2.476534>,  <3.660641, 0.200912, 2.900232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.083072, -0.238248, 2.476534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.331657, -0.046593, 2.724472>,  <4.480809, 0.068401, 2.873235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.331657, -0.046593, 2.724472>,  <4.083072, -0.238248, 2.476534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.331657, -0.046593, 2.724472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615282, -0.788271, -0.007558,
		0.484984, 0.386077, -0.784688,
		0.621465, 0.479139, 0.619845,
		4.518097, 0.097149, 2.910425>
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
