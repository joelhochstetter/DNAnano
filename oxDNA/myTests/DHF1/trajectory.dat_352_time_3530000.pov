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
	<3.083658, 4.742172, 5.172395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.342731, 4.437408, 5.172600>,  <3.498176, 4.254550, 5.172722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.342731, 4.437408, 5.172600>,  <3.083658, 4.742172, 5.172395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.342731, 4.437408, 5.172600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313803, 0.266147, -0.911424,
		0.694286, 0.590475, 0.411468,
		0.647684, -0.761909, 0.000511,
		3.537037, 4.208836, 5.172753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.855825, 4.883502, 5.223327>,  <3.083658, 4.742172, 5.172395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.855825, 4.883502, 5.223327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.777020, 4.551086, 5.015266>,  <3.729736, 4.351637, 4.890430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.777020, 4.551086, 5.015266>,  <3.855825, 4.883502, 5.223327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.777020, 4.551086, 5.015266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305366, 0.452143, -0.838044,
		0.931632, -0.323942, 0.164694,
		-0.197013, -0.831040, -0.520152,
		3.717916, 4.301775, 4.859221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.489611, 4.496374, 4.895109>,  <3.855825, 4.883502, 5.223327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.489611, 4.496374, 4.895109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.151371, 4.460556, 4.684608>,  <3.948427, 4.439065, 4.558308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.151371, 4.460556, 4.684608>,  <4.489611, 4.496374, 4.895109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.151371, 4.460556, 4.684608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413150, 0.514486, -0.751407,
		0.338034, -0.852811, -0.398054,
		-0.845601, -0.089545, -0.526252,
		3.897691, 4.433692, 4.526733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.596179, 4.151011, 4.248718>,  <4.489611, 4.496374, 4.895109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.596179, 4.151011, 4.248718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.300369, 4.417885, 4.213013>,  <4.122884, 4.578010, 4.191590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.300369, 4.417885, 4.213013>,  <4.596179, 4.151011, 4.248718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.300369, 4.417885, 4.213013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540879, 0.510043, -0.668810,
		-0.400693, -0.542881, -0.738056,
		-0.739523, 0.667186, -0.089262,
		4.078512, 4.618041, 4.186234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.282412, 4.301606, 3.528563>,  <4.596179, 4.151011, 4.248718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.282412, 4.301606, 3.528563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.176205, 4.634827, 3.722687>,  <4.112481, 4.834759, 3.839161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.176205, 4.634827, 3.722687>,  <4.282412, 4.301606, 3.528563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.176205, 4.634827, 3.722687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199296, 0.539930, -0.817775,
		-0.943282, -0.120413, -0.309385,
		-0.265518, 0.833052, 0.485309,
		4.096550, 4.884742, 3.868279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.038699, 4.738153, 3.043205>,  <4.282412, 4.301606, 3.528563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.038699, 4.738153, 3.043205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.100376, 5.015572, 3.324692>,  <4.137383, 5.182023, 3.493584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.100376, 5.015572, 3.324692>,  <4.038699, 4.738153, 3.043205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.100376, 5.015572, 3.324692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156257, 0.686155, -0.710475,
		-0.975607, 0.219511, -0.002571,
		0.154193, 0.693546, 0.703717,
		4.146634, 5.223636, 3.535807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.617243, 5.252325, 2.893721>,  <4.038699, 4.738153, 3.043205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.617243, 5.252325, 2.893721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.912003, 5.392143, 3.125168>,  <4.088858, 5.476034, 3.264036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.912003, 5.392143, 3.125168>,  <3.617243, 5.252325, 2.893721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.912003, 5.392143, 3.125168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162672, 0.739097, -0.653662,
		-0.656139, 0.575807, 0.487778,
		0.736898, 0.349545, 0.578618,
		4.133072, 5.497007, 3.298753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.593064, 5.909442, 2.782541>,  <3.617243, 5.252325, 2.893721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.593064, 5.909442, 2.782541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.961895, 5.852715, 2.926575>,  <4.183194, 5.818678, 3.012995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.961895, 5.852715, 2.926575>,  <3.593064, 5.909442, 2.782541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.961895, 5.852715, 2.926575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365328, 0.626005, -0.688951,
		-0.127708, 0.766815, 0.629035,
		0.922077, -0.141819, 0.360085,
		4.238518, 5.810169, 3.034600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.811327, 1.025431, 1.825938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.946480, 1.298737, 2.084854>,  <5.027572, 1.462720, 2.240204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.946480, 1.298737, 2.084854>,  <4.811327, 1.025431, 1.825938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.946480, 1.298737, 2.084854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034781, -0.696333, 0.716876,
		0.940545, -0.219707, -0.259044,
		0.337883, 0.683264, 0.647291,
		5.047845, 1.503716, 2.279041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.304658, 0.752694, 2.186027>,  <4.811327, 1.025431, 1.825938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.304658, 0.752694, 2.186027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.211878, 1.058716, 2.426323>,  <5.156210, 1.242329, 2.570501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.211878, 1.058716, 2.426323>,  <5.304658, 0.752694, 2.186027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.211878, 1.058716, 2.426323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064574, -0.628332, 0.775261,
		0.970582, 0.141029, 0.195144,
		-0.231950, 0.765055, 0.600741,
		5.142293, 1.288232, 2.606545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.564885, 0.658074, 2.809659>,  <5.304658, 0.752694, 2.186027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.564885, 0.658074, 2.809659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.240026, 0.870682, 2.905914>,  <5.045112, 0.998246, 2.963668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.240026, 0.870682, 2.905914>,  <5.564885, 0.658074, 2.809659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.240026, 0.870682, 2.905914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220679, -0.661633, 0.716618,
		0.540111, 0.528894, 0.654638,
		-0.812146, 0.531519, 0.240639,
		4.996383, 1.030137, 2.978106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.428683, 0.583174, 3.562695>,  <5.564885, 0.658074, 2.809659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.428683, 0.583174, 3.562695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.074778, 0.686737, 3.407692>,  <4.862434, 0.748875, 3.314690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.074778, 0.686737, 3.407692>,  <5.428683, 0.583174, 3.562695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.074778, 0.686737, 3.407692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465187, -0.440300, 0.767944,
		0.028207, 0.859711, 0.510001,
		-0.884763, 0.258907, -0.387507,
		4.809349, 0.764409, 3.291440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.047589, 0.972157, 4.054676>,  <5.428683, 0.583174, 3.562695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.047589, 0.972157, 4.054676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.771406, 0.810059, 3.814995>,  <4.605696, 0.712800, 3.671186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.771406, 0.810059, 3.814995>,  <5.047589, 0.972157, 4.054676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.771406, 0.810059, 3.814995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494556, -0.340060, 0.799859,
		-0.527904, 0.848608, 0.034381,
		-0.690458, -0.405245, -0.599203,
		4.564269, 0.688485, 3.635234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.457811, 1.084118, 4.383685>,  <5.047589, 0.972157, 4.054676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.457811, 1.084118, 4.383685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.360838, 0.784866, 4.136612>,  <4.302654, 0.605316, 3.988368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.360838, 0.784866, 4.136612>,  <4.457811, 1.084118, 4.383685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.360838, 0.784866, 4.136612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414785, -0.495625, 0.763092,
		-0.877029, 0.441203, -0.190157,
		-0.242432, -0.748128, -0.617682,
		4.288108, 0.560428, 3.951307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.838019, 0.885868, 4.719243>,  <4.457811, 1.084118, 4.383685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.838019, 0.885868, 4.719243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.959209, 0.591934, 4.476517>,  <4.031924, 0.415574, 4.330881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.959209, 0.591934, 4.476517>,  <3.838019, 0.885868, 4.719243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.959209, 0.591934, 4.476517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373082, -0.677379, 0.634009,
		-0.876935, 0.034301, -0.479383,
		0.302976, -0.734834, -0.606815,
		4.050103, 0.371484, 4.294472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.285461, 0.280612, 4.593193>,  <3.838019, 0.885868, 4.719243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.285461, 0.280612, 4.593193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.651918, 0.130753, 4.536171>,  <3.871793, 0.040837, 4.501958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.651918, 0.130753, 4.536171>,  <3.285461, 0.280612, 4.593193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.651918, 0.130753, 4.536171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259761, -0.825723, 0.500705,
		-0.305298, -0.421687, -0.853799,
		0.916142, -0.374648, -0.142554,
		3.926761, 0.018358, 4.493405>
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
