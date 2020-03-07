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
	<1.144418, 2.109633, 0.146162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.423973, 1.852348, 0.021048>,  <1.591706, 1.697977, -0.054020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.423973, 1.852348, 0.021048>,  <1.144418, 2.109633, 0.146162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.423973, 1.852348, 0.021048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453224, 0.059965, 0.889378,
		-0.553303, -0.763336, 0.333428,
		0.698888, -0.643213, -0.312783,
		1.633639, 1.659384, -0.072787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.240703, 1.608782, 0.596953>,  <1.144418, 2.109633, 0.146162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.240703, 1.608782, 0.596953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.589268, 1.628548, 0.401729>,  <1.798406, 1.640407, 0.284595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.589268, 1.628548, 0.401729>,  <1.240703, 1.608782, 0.596953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.589268, 1.628548, 0.401729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476235, 0.153407, 0.865833,
		0.117655, -0.986927, 0.110149,
		0.871411, 0.049413, -0.488059,
		1.850691, 1.643372, 0.255312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.843582, 1.124682, 0.877219>,  <1.240703, 1.608782, 0.596953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.843582, 1.124682, 0.877219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.984619, 1.452560, 0.696652>,  <2.069242, 1.649287, 0.588312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.984619, 1.452560, 0.696652>,  <1.843582, 1.124682, 0.877219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.984619, 1.452560, 0.696652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624887, 0.152835, 0.765609,
		0.696559, -0.552033, -0.458329,
		0.352593, 0.819696, -0.451417,
		2.090397, 1.698469, 0.561227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.539124, 0.960123, 0.926293>,  <1.843582, 1.124682, 0.877219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.539124, 0.960123, 0.926293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.471321, 1.353889, 0.907572>,  <2.430640, 1.590150, 0.896339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.471321, 1.353889, 0.907572>,  <2.539124, 0.960123, 0.926293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.471321, 1.353889, 0.907572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716888, 0.155750, 0.679569,
		0.676269, 0.081639, -0.732117,
		-0.169507, 0.984417, -0.046803,
		2.420469, 1.649215, 0.893531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.133165, 1.349842, 1.166496>,  <2.539124, 0.960123, 0.926293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.133165, 1.349842, 1.166496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.877396, 1.656464, 1.190272>,  <2.723934, 1.840437, 1.204537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.877396, 1.656464, 1.190272>,  <3.133165, 1.349842, 1.166496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.877396, 1.656464, 1.190272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624097, 0.472328, 0.622421,
		0.449045, 0.435086, -0.780422,
		-0.639422, 0.766555, 0.059440,
		2.685569, 1.886430, 1.208104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.525327, 1.905543, 1.259933>,  <3.133165, 1.349842, 1.166496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.525327, 1.905543, 1.259933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.168026, 2.054474, 1.360708>,  <2.953645, 2.143832, 1.421174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.168026, 2.054474, 1.360708>,  <3.525327, 1.905543, 1.259933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.168026, 2.054474, 1.360708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425827, 0.521085, 0.739690,
		0.144126, 0.768012, -0.624007,
		-0.893252, 0.372327, 0.251938,
		2.900050, 2.166172, 1.436290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.552735, 2.676759, 1.457260>,  <3.525327, 1.905543, 1.259933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.552735, 2.676759, 1.457260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.221344, 2.543343, 1.637205>,  <3.022509, 2.463293, 1.745171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.221344, 2.543343, 1.637205>,  <3.552735, 2.676759, 1.457260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.221344, 2.543343, 1.637205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313277, 0.389823, 0.865965,
		-0.464200, 0.858365, -0.218469,
		-0.828478, -0.333540, 0.449861,
		2.972800, 2.443281, 1.772163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.401655, 3.194162, 1.931652>,  <3.552735, 2.676759, 1.457260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.401655, 3.194162, 1.931652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.175785, 2.888145, 2.055494>,  <3.040263, 2.704536, 2.129799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.175785, 2.888145, 2.055494>,  <3.401655, 3.194162, 1.931652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.175785, 2.888145, 2.055494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198876, 0.237949, 0.950699,
		-0.800994, 0.598409, 0.017785,
		-0.564674, -0.765041, 0.309605,
		3.006383, 2.658633, 2.148375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.805697, 2.730934, 3.271297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.465454, 2.577354, 3.414991>,  <3.261308, 2.485207, 3.501208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.465454, 2.577354, 3.414991>,  <3.805697, 2.730934, 3.271297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.465454, 2.577354, 3.414991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323122, -0.157282, -0.933196,
		0.414800, -0.909861, 0.009723,
		-0.850608, -0.383948, 0.359236,
		3.210272, 2.462170, 3.522762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.746967, 2.161752, 2.857082>,  <3.805697, 2.730934, 3.271297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.746967, 2.161752, 2.857082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.400467, 2.293495, 3.007355>,  <3.192567, 2.372541, 3.097518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.400467, 2.293495, 3.007355>,  <3.746967, 2.161752, 2.857082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.400467, 2.293495, 3.007355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387488, 0.031770, -0.921327,
		-0.315380, -0.943671, 0.100101,
		-0.866250, 0.329357, 0.375681,
		3.140592, 2.392302, 3.120059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.095047, 1.612378, 2.747381>,  <3.746967, 2.161752, 2.857082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.095047, 1.612378, 2.747381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.017319, 2.003166, 2.712128>,  <2.970681, 2.237639, 2.690976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.017319, 2.003166, 2.712128>,  <3.095047, 1.612378, 2.747381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.017319, 2.003166, 2.712128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270021, -0.139649, -0.952674,
		-0.943042, -0.161328, 0.290939,
		-0.194322, 0.976971, -0.088133,
		2.959022, 2.296257, 2.685688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.428419, 1.610355, 2.612843>,  <3.095047, 1.612378, 2.747381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.428419, 1.610355, 2.612843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.595497, 1.944954, 2.470969>,  <2.695744, 2.145713, 2.385844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.595497, 1.944954, 2.470969>,  <2.428419, 1.610355, 2.612843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.595497, 1.944954, 2.470969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391247, -0.186730, -0.901142,
		-0.820034, 0.515173, 0.249281,
		0.417696, 0.836498, -0.354685,
		2.720806, 2.195903, 2.364563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.886906, 1.894264, 2.199493>,  <2.428419, 1.610355, 2.612843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.886906, 1.894264, 2.199493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.226784, 2.076355, 2.093071>,  <2.430711, 2.185610, 2.029218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.226784, 2.076355, 2.093071>,  <1.886906, 1.894264, 2.199493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.226784, 2.076355, 2.093071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257258, -0.082531, -0.962812,
		-0.460257, 0.886542, 0.046985,
		0.849695, 0.455228, -0.266055,
		2.481692, 2.212924, 2.013254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.595789, 2.376475, 1.742430>,  <1.886906, 1.894264, 2.199493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.595789, 2.376475, 1.742430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.987160, 2.326935, 1.676287>,  <2.221982, 2.297211, 1.636601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.987160, 2.326935, 1.676287>,  <1.595789, 2.376475, 1.742430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.987160, 2.326935, 1.676287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170840, -0.034963, -0.984678,
		0.116170, 0.991685, -0.055368,
		0.978426, -0.123850, -0.165358,
		2.280688, 2.289780, 1.626680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.820750, 2.870013, 1.160749>,  <1.595789, 2.376475, 1.742430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.820750, 2.870013, 1.160749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.086960, 2.571884, 1.176609>,  <2.246686, 2.393007, 1.186124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.086960, 2.571884, 1.176609>,  <1.820750, 2.870013, 1.160749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.086960, 2.571884, 1.176609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191067, -0.221480, -0.956264,
		0.721506, 0.628842, -0.289807,
		0.665525, -0.745322, 0.039648,
		2.286617, 2.348288, 1.188503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.374297, 2.882332, 0.611895>,  <1.820750, 2.870013, 1.160749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.374297, 2.882332, 0.611895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.344315, 2.502357, 0.733224>,  <2.326325, 2.274373, 0.806021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.344315, 2.502357, 0.733224>,  <2.374297, 2.882332, 0.611895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.344315, 2.502357, 0.733224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301252, -0.268394, -0.914993,
		0.950594, -0.159961, -0.266052,
		-0.074956, -0.949935, 0.303322,
		2.321828, 2.217377, 0.824221>
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
