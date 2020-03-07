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
	<0.589624, 4.146667, 5.676669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.743553, 3.848721, 5.894691>,  <0.835911, 3.669953, 6.025505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.743553, 3.848721, 5.894691>,  <0.589624, 4.146667, 5.676669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.743553, 3.848721, 5.894691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442448, -0.369391, -0.817184,
		0.810031, 0.555630, 0.187415,
		0.384823, -0.744866, 0.545056,
		0.859000, 3.625261, 6.058208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.324631, 3.887025, 5.399462>,  <0.589624, 4.146667, 5.676669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.324631, 3.887025, 5.399462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.175240, 3.554867, 5.564850>,  <1.085605, 3.355572, 5.664083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.175240, 3.554867, 5.564850>,  <1.324631, 3.887025, 5.399462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.175240, 3.554867, 5.564850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496601, -0.555451, -0.666980,
		0.783519, -0.043773, 0.619824,
		-0.373478, -0.830396, 0.413469,
		1.063196, 3.305748, 5.688890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.856715, 3.380260, 5.601029>,  <1.324631, 3.887025, 5.399462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.856715, 3.380260, 5.601029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.544968, 3.180637, 5.449490>,  <1.357919, 3.060864, 5.358566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.544968, 3.180637, 5.449490>,  <1.856715, 3.380260, 5.601029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.544968, 3.180637, 5.449490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591802, -0.387719, -0.706714,
		0.205803, -0.774994, 0.597519,
		-0.779369, -0.499057, -0.378849,
		1.311157, 3.030920, 5.335835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.983877, 2.656364, 5.609039>,  <1.856715, 3.380260, 5.601029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.983877, 2.656364, 5.609039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.726837, 2.768562, 5.323833>,  <1.572613, 2.835881, 5.152710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.726837, 2.768562, 5.323833>,  <1.983877, 2.656364, 5.609039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.726837, 2.768562, 5.323833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689003, -0.195534, -0.697883,
		-0.335171, -0.939728, -0.067612,
		-0.642600, 0.280495, -0.713013,
		1.534057, 2.852711, 5.109930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.863407, 2.071492, 5.136694>,  <1.983877, 2.656364, 5.609039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.863407, 2.071492, 5.136694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.756599, 2.398899, 4.933231>,  <1.692515, 2.595343, 4.811154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.756599, 2.398899, 4.933231>,  <1.863407, 2.071492, 5.136694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.756599, 2.398899, 4.933231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604184, -0.269017, -0.750061,
		-0.750775, -0.507602, -0.422702,
		-0.267018, 0.818517, -0.508656,
		1.676494, 2.644454, 4.780634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.922220, 1.750622, 4.511311>,  <1.863407, 2.071492, 5.136694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.922220, 1.750622, 4.511311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.936272, 2.149406, 4.483501>,  <1.944703, 2.388677, 4.466815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.936272, 2.149406, 4.483501>,  <1.922220, 1.750622, 4.511311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.936272, 2.149406, 4.483501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639847, -0.075877, -0.764747,
		-0.767699, -0.017619, -0.640569,
		0.035130, 0.996961, -0.069524,
		1.946811, 2.448495, 4.462644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.900107, 1.900518, 3.784245>,  <1.922220, 1.750622, 4.511311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.900107, 1.900518, 3.784245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.072388, 2.207012, 3.974983>,  <2.175756, 2.390908, 4.089426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.072388, 2.207012, 3.974983>,  <1.900107, 1.900518, 3.784245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.072388, 2.207012, 3.974983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734745, 0.009108, -0.678282,
		-0.524066, 0.642497, -0.559064,
		0.430702, 0.766234, 0.476844,
		2.201598, 2.436882, 4.118037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.063526, 2.496285, 3.338359>,  <1.900107, 1.900518, 3.784245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.063526, 2.496285, 3.338359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.300873, 2.487976, 3.660225>,  <2.443281, 2.482991, 3.853344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.300873, 2.487976, 3.660225>,  <2.063526, 2.496285, 3.338359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.300873, 2.487976, 3.660225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804932, 0.015369, -0.593167,
		-0.000045, 0.999666, 0.025841,
		0.593366, -0.020773, 0.804664,
		2.478883, 2.481744, 3.901624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.156639, 2.615811, 4.961862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.882378, 2.878658, 4.836594>,  <4.717821, 3.036367, 4.761433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.882378, 2.878658, 4.836594>,  <5.156639, 2.615811, 4.961862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.882378, 2.878658, 4.836594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248026, -0.615372, -0.748198,
		-0.684373, -0.435327, 0.584913,
		-0.685650, 0.657120, -0.313171,
		4.676682, 3.075794, 4.742643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.427514, 2.455857, 5.087625>,  <5.156639, 2.615811, 4.961862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.427514, 2.455857, 5.087625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.483574, 2.661449, 4.749115>,  <4.517210, 2.784805, 4.546009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.483574, 2.661449, 4.749115>,  <4.427514, 2.455857, 5.087625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.483574, 2.661449, 4.749115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357963, -0.770595, -0.527299,
		-0.923158, 0.376837, 0.075986,
		0.140151, 0.513981, -0.846275,
		4.525620, 2.815644, 4.495233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.806460, 2.786119, 4.899401>,  <4.427514, 2.455857, 5.087625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.806460, 2.786119, 4.899401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.864624, 2.758236, 5.294167>,  <3.899522, 2.741506, 5.531026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.864624, 2.758236, 5.294167>,  <3.806460, 2.786119, 4.899401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.864624, 2.758236, 5.294167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614358, -0.788257, 0.034842,
		0.775513, -0.611385, -0.157445,
		0.145409, -0.069707, 0.986913,
		3.908247, 2.737324, 5.590240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.146765, 2.983873, 4.836618>,  <3.806460, 2.786119, 4.899401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.146765, 2.983873, 4.836618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.955917, 2.917126, 4.491478>,  <2.841408, 2.877078, 4.284394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.955917, 2.917126, 4.491478>,  <3.146765, 2.983873, 4.836618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.955917, 2.917126, 4.491478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873114, 0.201873, 0.443755,
		0.100138, 0.965092, -0.242012,
		-0.477120, -0.166867, -0.862851,
		2.812781, 2.867066, 4.232623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.678848, 3.491975, 4.666133>,  <3.146765, 2.983873, 4.836618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.678848, 3.491975, 4.666133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.512299, 3.181763, 4.476318>,  <2.412369, 2.995635, 4.362430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.512299, 3.181763, 4.476318>,  <2.678848, 3.491975, 4.666133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.512299, 3.181763, 4.476318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885204, 0.226684, 0.406237,
		-0.207480, 0.589208, -0.780888,
		-0.416373, -0.775531, -0.474536,
		2.387387, 2.949103, 4.333958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.076589, 3.747050, 4.280661>,  <2.678848, 3.491975, 4.666133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.076589, 3.747050, 4.280661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.028183, 3.353813, 4.335629>,  <1.999140, 3.117871, 4.368609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.028183, 3.353813, 4.335629>,  <2.076589, 3.747050, 4.280661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.028183, 3.353813, 4.335629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914751, 0.164202, 0.369145,
		-0.385469, -0.081033, -0.919156,
		-0.121014, -0.983093, 0.137420,
		1.991879, 3.058885, 4.376854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.432049, 3.559882, 3.935808>,  <2.076589, 3.747050, 4.280661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.432049, 3.559882, 3.935808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.539307, 3.288483, 4.209373>,  <1.603661, 3.125643, 4.373513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.539307, 3.288483, 4.209373>,  <1.432049, 3.559882, 3.935808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.539307, 3.288483, 4.209373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909860, 0.054964, 0.411259,
		-0.316629, -0.732542, -0.602601,
		0.268143, -0.678499, 0.683914,
		1.619750, 3.084933, 4.414548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.732757, 3.317789, 4.156821>,  <1.432049, 3.559882, 3.935808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.732757, 3.317789, 4.156821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.992050, 3.195583, 4.435806>,  <1.147626, 3.122260, 4.603198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.992050, 3.195583, 4.435806>,  <0.732757, 3.317789, 4.156821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.992050, 3.195583, 4.435806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746476, -0.074258, 0.661256,
		-0.150231, -0.949288, -0.276195,
		0.648232, -0.305514, 0.697464,
		1.186520, 3.103929, 4.645045>
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
