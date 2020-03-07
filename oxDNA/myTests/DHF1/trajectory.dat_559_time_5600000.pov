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
	<4.460373, 2.112282, -0.749004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.551601, 2.319107, -0.419003>,  <4.606339, 2.443202, -0.221002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.551601, 2.319107, -0.419003>,  <4.460373, 2.112282, -0.749004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.551601, 2.319107, -0.419003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747246, 0.636166, -0.192135,
		-0.624185, -0.572660, 0.531463,
		0.228071, 0.517062, 0.825004,
		4.620023, 2.474226, -0.171501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.893168, 2.288567, -0.536343>,  <4.460373, 2.112282, -0.749004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.893168, 2.288567, -0.536343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.088089, 2.547855, -0.302301>,  <4.205041, 2.703429, -0.161877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.088089, 2.547855, -0.302301>,  <3.893168, 2.288567, -0.536343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.088089, 2.547855, -0.302301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775407, 0.629361, -0.051457,
		-0.401597, -0.428618, 0.809324,
		0.487302, 0.648221, 0.585103,
		4.234280, 2.742322, -0.126770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.418404, 2.558582, -0.022858>,  <3.893168, 2.288567, -0.536343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.418404, 2.558582, -0.022858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.716125, 2.822920, -0.061422>,  <3.894758, 2.981523, -0.084561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.716125, 2.822920, -0.061422>,  <3.418404, 2.558582, -0.022858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.716125, 2.822920, -0.061422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665603, 0.745848, -0.026146,
		0.054630, 0.083633, 0.994998,
		0.744304, 0.660845, -0.096411,
		3.939417, 3.021173, -0.090346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.419176, 2.997136, 0.602579>,  <3.418404, 2.558582, -0.022858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.419176, 2.997136, 0.602579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.579239, 3.214266, 0.307224>,  <3.675277, 3.344544, 0.130011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.579239, 3.214266, 0.307224>,  <3.419176, 2.997136, 0.602579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.579239, 3.214266, 0.307224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682624, 0.714131, 0.155054,
		0.611472, 0.441995, 0.656310,
		0.400158, 0.542825, -0.738387,
		3.699286, 3.377113, 0.085708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.388343, 3.726323, 0.882948>,  <3.419176, 2.997136, 0.602579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.388343, 3.726323, 0.882948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.418324, 3.745565, 0.484537>,  <3.436312, 3.757111, 0.245491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.418324, 3.745565, 0.484537>,  <3.388343, 3.726323, 0.882948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.418324, 3.745565, 0.484537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631028, 0.775695, -0.010021,
		0.772131, 0.629272, 0.088495,
		0.074951, 0.048105, -0.996026,
		3.440809, 3.759997, 0.185729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.546683, 4.380053, 0.710193>,  <3.388343, 3.726323, 0.882948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.546683, 4.380053, 0.710193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.390915, 4.207430, 0.384712>,  <3.297454, 4.103856, 0.189424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.390915, 4.207430, 0.384712>,  <3.546683, 4.380053, 0.710193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.390915, 4.207430, 0.384712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761522, 0.647803, 0.020876,
		0.518109, 0.627781, -0.580908,
		-0.389420, -0.431558, -0.813702,
		3.274089, 4.077962, 0.140602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.395371, 4.974042, 0.333727>,  <3.546683, 4.380053, 0.710193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.395371, 4.974042, 0.333727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.189606, 4.678900, 0.158937>,  <3.066146, 4.501814, 0.054063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.189606, 4.678900, 0.158937>,  <3.395371, 4.974042, 0.333727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.189606, 4.678900, 0.158937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826765, 0.562024, 0.024271,
		0.227682, 0.373761, -0.899146,
		-0.514413, -0.737856, -0.436975,
		3.035282, 4.457543, 0.027845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.135813, 5.236236, -0.247725>,  <3.395371, 4.974042, 0.333727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.135813, 5.236236, -0.247725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.902039, 4.921703, -0.167604>,  <2.761774, 4.732984, -0.119532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.902039, 4.921703, -0.167604>,  <3.135813, 5.236236, -0.247725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.902039, 4.921703, -0.167604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783617, 0.611016, 0.112267,
		-0.210666, -0.091347, -0.973281,
		-0.584435, -0.786330, 0.200301,
		2.726708, 4.685804, -0.107514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.960167, 5.385592, 5.467158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.700386, 5.086449, 5.412136>,  <1.544518, 4.906963, 5.379123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.700386, 5.086449, 5.412136>,  <1.960167, 5.385592, 5.467158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.700386, 5.086449, 5.412136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727560, -0.558560, -0.398331,
		0.221062, -0.358776, 0.906869,
		-0.649452, -0.747857, -0.137555,
		1.505550, 4.862092, 5.370870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.013022, 4.730965, 5.861162>,  <1.960167, 5.385592, 5.467158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.013022, 4.730965, 5.861162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.876694, 4.684475, 5.487995>,  <1.794897, 4.656581, 5.264095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.876694, 4.684475, 5.487995>,  <2.013022, 4.730965, 5.861162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.876694, 4.684475, 5.487995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869552, -0.416197, -0.265820,
		-0.357382, -0.901816, 0.242912,
		-0.340820, -0.116226, -0.932917,
		1.774448, 4.649607, 5.208120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.035991, 4.052903, 5.675422>,  <2.013022, 4.730965, 5.861162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.035991, 4.052903, 5.675422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.036163, 4.267632, 5.337944>,  <2.036267, 4.396469, 5.135457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.036163, 4.267632, 5.337944>,  <2.035991, 4.052903, 5.675422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.036163, 4.267632, 5.337944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841273, -0.456305, -0.289905,
		-0.540610, -0.709653, -0.451811,
		0.000432, 0.536822, -0.843696,
		2.036293, 4.428678, 5.084836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.979577, 3.636649, 5.069162>,  <2.035991, 4.052903, 5.675422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.979577, 3.636649, 5.069162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.210251, 3.960278, 5.023838>,  <2.348655, 4.154454, 4.996644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.210251, 3.960278, 5.023838>,  <1.979577, 3.636649, 5.069162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.210251, 3.960278, 5.023838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710828, -0.565278, -0.418549,
		-0.402687, 0.160828, -0.901098,
		0.576685, 0.809070, -0.113310,
		2.383256, 4.202999, 4.989845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.257189, 3.622267, 4.324790>,  <1.979577, 3.636649, 5.069162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.257189, 3.622267, 4.324790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.496712, 3.872490, 4.524834>,  <2.640425, 4.022624, 4.644860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.496712, 3.872490, 4.524834>,  <2.257189, 3.622267, 4.324790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.496712, 3.872490, 4.524834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800879, -0.463968, -0.378584,
		-0.004792, 0.627225, -0.778823,
		0.598807, 0.625557, 0.500108,
		2.676354, 4.060157, 4.674866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.904373, 3.453245, 4.088637>,  <2.257189, 3.622267, 4.324790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.904373, 3.453245, 4.088637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.036469, 3.690140, 4.382629>,  <3.115726, 3.832277, 4.559025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.036469, 3.690140, 4.382629>,  <2.904373, 3.453245, 4.088637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.036469, 3.690140, 4.382629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905670, -0.418168, -0.069978,
		0.265902, 0.688760, -0.674467,
		0.330238, 0.592238, 0.734981,
		3.135540, 3.867811, 4.603124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.459278, 3.905623, 3.904056>,  <2.904373, 3.453245, 4.088637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.459278, 3.905623, 3.904056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.481155, 3.876358, 4.302383>,  <3.494282, 3.858799, 4.541380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.481155, 3.876358, 4.302383>,  <3.459278, 3.905623, 3.904056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.481155, 3.876358, 4.302383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941944, -0.327110, -0.075767,
		0.331286, 0.942150, 0.051025,
		0.054693, -0.073163, 0.995819,
		3.497563, 3.854409, 4.601129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.222745, 3.996480, 4.094072>,  <3.459278, 3.905623, 3.904056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.222745, 3.996480, 4.094072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.039024, 3.798698, 4.389248>,  <3.928792, 3.680029, 4.566353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.039024, 3.798698, 4.389248>,  <4.222745, 3.996480, 4.094072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.039024, 3.798698, 4.389248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788241, -0.609884, 0.081960,
		0.409532, 0.619319, 0.669871,
		-0.459303, -0.494455, 0.737940,
		3.901234, 3.650362, 4.610630>
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
