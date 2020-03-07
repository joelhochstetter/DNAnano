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
	<2.428320, 3.190097, 0.831355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.759476, 3.385275, 0.941998>,  <2.958169, 3.502382, 1.008383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.759476, 3.385275, 0.941998>,  <2.428320, 3.190097, 0.831355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.759476, 3.385275, 0.941998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048186, -0.553206, 0.831650,
		0.558820, -0.675184, -0.481505,
		0.827888, 0.487944, 0.276607,
		3.007842, 3.531658, 1.024980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.993095, 2.688170, 0.797533>,  <2.428320, 3.190097, 0.831355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.993095, 2.688170, 0.797533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.044167, 2.974825, 1.071796>,  <3.074810, 3.146818, 1.236355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.044167, 2.974825, 1.071796>,  <2.993095, 2.688170, 0.797533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.044167, 2.974825, 1.071796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103678, -0.677886, 0.727820,
		0.986382, -0.164015, -0.012252,
		0.127679, 0.716638, 0.685659,
		3.082470, 3.189816, 1.277494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.578375, 2.468831, 1.272239>,  <2.993095, 2.688170, 0.797533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.578375, 2.468831, 1.272239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.312008, 2.703753, 1.456251>,  <3.152188, 2.844706, 1.566658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.312008, 2.703753, 1.456251>,  <3.578375, 2.468831, 1.272239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.312008, 2.703753, 1.456251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072979, -0.664967, 0.743299,
		0.742447, 0.461403, 0.485674,
		-0.665917, 0.587304, 0.460030,
		3.112233, 2.879944, 1.594260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.732719, 2.745493, 2.028152>,  <3.578375, 2.468831, 1.272239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.732719, 2.745493, 2.028152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.353733, 2.651964, 1.940847>,  <3.126342, 2.595847, 1.888464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.353733, 2.651964, 1.940847>,  <3.732719, 2.745493, 2.028152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.353733, 2.651964, 1.940847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097814, -0.437878, 0.893698,
		-0.304538, 0.868096, 0.392003,
		-0.947465, -0.233821, -0.218262,
		3.069494, 2.581818, 1.875369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.317620, 2.919884, 2.602346>,  <3.732719, 2.745493, 2.028152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.317620, 2.919884, 2.602346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.093597, 2.649099, 2.411324>,  <2.959184, 2.486629, 2.296710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.093597, 2.649099, 2.411324>,  <3.317620, 2.919884, 2.602346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.093597, 2.649099, 2.411324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162601, -0.475408, 0.864609,
		-0.812340, 0.561881, 0.156181,
		-0.560057, -0.676962, -0.477556,
		2.925580, 2.446011, 2.268057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.793931, 2.873919, 3.024965>,  <3.317620, 2.919884, 2.602346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.793931, 2.873919, 3.024965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.782810, 2.552540, 2.787075>,  <2.776138, 2.359712, 2.644341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.782810, 2.552540, 2.787075>,  <2.793931, 2.873919, 3.024965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.782810, 2.552540, 2.787075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141372, -0.585813, 0.798020,
		-0.989566, 0.106264, -0.097299,
		-0.027802, -0.803449, -0.594724,
		2.774470, 2.311505, 2.608658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.335616, 2.489017, 3.363264>,  <2.793931, 2.873919, 3.024965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.335616, 2.489017, 3.363264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.480789, 2.207392, 3.119108>,  <2.567893, 2.038416, 2.972615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.480789, 2.207392, 3.119108>,  <2.335616, 2.489017, 3.363264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.480789, 2.207392, 3.119108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010677, -0.651868, 0.758257,
		-0.931754, -0.281712, -0.229067,
		0.362932, -0.704064, -0.610389,
		2.589669, 1.996173, 2.935992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.906249, 1.824589, 3.422298>,  <2.335616, 2.489017, 3.363264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.906249, 1.824589, 3.422298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.287865, 1.755962, 3.324013>,  <2.516834, 1.714786, 3.265042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.287865, 1.755962, 3.324013>,  <1.906249, 1.824589, 3.422298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.287865, 1.755962, 3.324013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098665, -0.594377, 0.798111,
		-0.282976, -0.785672, -0.550131,
		0.954039, -0.171567, -0.245713,
		2.574076, 1.704492, 3.250299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.739379, 1.756980, 4.205917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.015388, 2.041348, 4.151566>,  <3.180994, 2.211968, 4.118955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.015388, 2.041348, 4.151566>,  <2.739379, 1.756980, 4.205917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.015388, 2.041348, 4.151566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314531, 0.125446, -0.940922,
		-0.651874, 0.691995, 0.310167,
		0.690023, 0.710919, -0.135879,
		3.222395, 2.254623, 4.110802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.393379, 1.450393, 4.017109>,  <2.739379, 1.756980, 4.205917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.393379, 1.450393, 4.017109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.303459, 1.153568, 3.764503>,  <3.249507, 0.975473, 3.612940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.303459, 1.153568, 3.764503>,  <3.393379, 1.450393, 4.017109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.303459, 1.153568, 3.764503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023915, 0.652108, -0.757749,
		0.974112, -0.155238, -0.164340,
		-0.224799, -0.742062, -0.631513,
		3.236019, 0.930950, 3.575049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.781834, 1.532491, 3.359622>,  <3.393379, 1.450393, 4.017109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.781834, 1.532491, 3.359622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.425301, 1.368786, 3.281618>,  <3.211381, 1.270563, 3.234815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.425301, 1.368786, 3.281618>,  <3.781834, 1.532491, 3.359622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.425301, 1.368786, 3.281618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158755, 0.684695, -0.711330,
		0.424644, -0.603073, -0.675263,
		-0.891333, -0.409263, -0.195011,
		3.157901, 1.246007, 3.223115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.731362, 1.345693, 2.647095>,  <3.781834, 1.532491, 3.359622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.731362, 1.345693, 2.647095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.367340, 1.426807, 2.791693>,  <3.148927, 1.475476, 2.878451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.367340, 1.426807, 2.791693>,  <3.731362, 1.345693, 2.647095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.367340, 1.426807, 2.791693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204358, 0.539253, -0.816972,
		-0.360607, -0.817364, -0.449309,
		-0.910055, 0.202786, 0.361494,
		3.094324, 1.487643, 2.900141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.235803, 1.220464, 2.110636>,  <3.731362, 1.345693, 2.647095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.235803, 1.220464, 2.110636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.052963, 1.470882, 2.363342>,  <2.943260, 1.621133, 2.514966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.052963, 1.470882, 2.363342>,  <3.235803, 1.220464, 2.110636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.052963, 1.470882, 2.363342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421541, 0.472976, -0.773690,
		-0.783176, -0.619968, 0.047708,
		-0.457098, 0.626046, 0.631765,
		2.915834, 1.658696, 2.552872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.655456, 1.372469, 1.782854>,  <3.235803, 1.220464, 2.110636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.655456, 1.372469, 1.782854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.689896, 1.665218, 2.053246>,  <2.710559, 1.840868, 2.215481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.689896, 1.665218, 2.053246>,  <2.655456, 1.372469, 1.782854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.689896, 1.665218, 2.053246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468528, 0.628533, -0.620829,
		-0.879243, -0.263263, 0.397019,
		0.086098, 0.731874, 0.675979,
		2.715725, 1.884781, 2.256039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.978889, 1.677677, 1.885439>,  <2.655456, 1.372469, 1.782854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.978889, 1.677677, 1.885439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.277939, 1.924198, 1.984417>,  <2.457369, 2.072111, 2.043803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.277939, 1.924198, 1.984417>,  <1.978889, 1.677677, 1.885439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.277939, 1.924198, 1.984417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342487, 0.677011, -0.651428,
		-0.568999, 0.402277, 0.717226,
		0.747625, 0.616302, 0.247444,
		2.502226, 2.109089, 2.058650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.764673, 2.375666, 1.753031>,  <1.978889, 1.677677, 1.885439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.764673, 2.375666, 1.753031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.158615, 2.425179, 1.801590>,  <2.394980, 2.454886, 1.830725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.158615, 2.425179, 1.801590>,  <1.764673, 2.375666, 1.753031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.158615, 2.425179, 1.801590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003917, 0.715910, -0.698182,
		-0.173331, 0.687133, 0.705553,
		0.984856, 0.123780, 0.121397,
		2.454072, 2.462312, 1.838009>
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
