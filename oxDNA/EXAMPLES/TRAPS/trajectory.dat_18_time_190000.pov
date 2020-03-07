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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.095146, 53.010521, 49.721134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399780, 53.268608, 49.696903>,  <36.582561, 53.423462, 49.682365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399780, 53.268608, 49.696903>,  <36.095146, 53.010521, 49.721134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399780, 53.268608, 49.696903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243041, -0.197717, 0.949652,
		0.600759, -0.737968, -0.307394,
		0.761590, 0.645222, -0.060576,
		36.628258, 53.462173, 49.678730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635445, 52.861832, 50.198326>,  <36.095146, 53.010521, 49.721134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635445, 52.861832, 50.198326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733105, 53.232414, 50.083740>,  <36.791702, 53.454765, 50.014988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733105, 53.232414, 50.083740>,  <36.635445, 52.861832, 50.198326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733105, 53.232414, 50.083740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438705, 0.157921, 0.884646,
		0.864828, -0.341661, -0.367886,
		0.244152, 0.926460, -0.286463,
		36.806351, 53.510353, 49.997803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390133, 53.053810, 50.382736>,  <36.635445, 52.861832, 50.198326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390133, 53.053810, 50.382736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136848, 53.363365, 50.387642>,  <36.984879, 53.549099, 50.390587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136848, 53.363365, 50.387642>,  <37.390133, 53.053810, 50.382736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136848, 53.363365, 50.387642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444182, 0.350369, 0.824587,
		0.633837, 0.527585, -0.565602,
		-0.633209, 0.773884, 0.012267,
		36.946884, 53.595531, 50.391323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862694, 53.696892, 50.347931>,  <37.390133, 53.053810, 50.382736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862694, 53.696892, 50.347931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543041, 53.763569, 50.578964>,  <37.351250, 53.803574, 50.717587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543041, 53.763569, 50.578964>,  <37.862694, 53.696892, 50.347931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543041, 53.763569, 50.578964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601158, 0.223945, 0.767110,
		-0.001477, 0.960241, -0.279169,
		-0.799129, 0.166692, 0.577587,
		37.303303, 53.813576, 50.752239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992950, 54.487286, 50.563900>,  <37.862694, 53.696892, 50.347931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992950, 54.487286, 50.563900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774734, 54.259964, 50.810287>,  <37.643806, 54.123569, 50.958118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774734, 54.259964, 50.810287>,  <37.992950, 54.487286, 50.563900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774734, 54.259964, 50.810287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599156, 0.249439, 0.760784,
		-0.586004, 0.784097, 0.204426,
		-0.545537, -0.568306, 0.615969,
		37.611073, 54.089474, 50.995079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696400, 54.119846, 50.596474>,  <37.992950, 54.487286, 50.563900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696400, 54.119846, 50.596474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724525, 53.723740, 50.548439>,  <38.741402, 53.486076, 50.519619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724525, 53.723740, 50.548439>,  <38.696400, 54.119846, 50.596474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724525, 53.723740, 50.548439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007299, 0.120890, -0.992639,
		0.997498, 0.068923, 0.015729,
		0.070317, -0.990270, -0.120084,
		38.745621, 53.426659, 50.512413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099113, 53.968384, 50.064228>,  <38.696400, 54.119846, 50.596474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099113, 53.968384, 50.064228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947067, 53.599129, 50.087322>,  <38.855839, 53.377575, 50.101181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947067, 53.599129, 50.087322>,  <39.099113, 53.968384, 50.064228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947067, 53.599129, 50.087322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032516, -0.075722, -0.996599,
		0.924366, -0.376947, 0.058799,
		-0.380117, -0.923134, 0.057738,
		38.833031, 53.322189, 50.104645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593056, 54.431892, 49.845909>,  <39.099113, 53.968384, 50.064228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593056, 54.431892, 49.845909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742237, 54.274757, 50.182144>,  <39.831745, 54.180477, 50.383884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742237, 54.274757, 50.182144>,  <39.593056, 54.431892, 49.845909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742237, 54.274757, 50.182144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570585, -0.617295, -0.541645,
		0.731667, 0.681635, -0.006077,
		0.372956, -0.392837, 0.840585,
		39.854122, 54.156906, 50.434319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055996, 54.091022, 49.385971>,  <39.593056, 54.431892, 49.845909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055996, 54.091022, 49.385971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120705, 54.021431, 49.774521>,  <40.159531, 53.979675, 50.007648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120705, 54.021431, 49.774521>,  <40.055996, 54.091022, 49.385971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120705, 54.021431, 49.774521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789598, -0.567602, -0.233159,
		0.591918, 0.804710, 0.045555,
		0.161769, -0.173981, 0.971371,
		40.169235, 53.969238, 50.065933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782742, 54.134384, 49.520054>,  <40.055996, 54.091022, 49.385971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782742, 54.134384, 49.520054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615376, 53.907658, 49.803925>,  <40.514954, 53.771622, 49.974247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615376, 53.907658, 49.803925>,  <40.782742, 54.134384, 49.520054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615376, 53.907658, 49.803925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702975, -0.696869, -0.142124,
		0.575110, 0.439417, 0.690044,
		-0.418418, -0.566821, 0.709676,
		40.489849, 53.737610, 50.016827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194599, 53.900368, 50.142689>,  <40.782742, 54.134384, 49.520054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194599, 53.900368, 50.142689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922829, 53.623260, 50.045982>,  <40.759766, 53.456997, 49.987961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922829, 53.623260, 50.045982>,  <41.194599, 53.900368, 50.142689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922829, 53.623260, 50.045982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733618, -0.647413, -0.206548,
		-0.013431, -0.317696, 0.948097,
		-0.679430, -0.692767, -0.241763,
		40.718998, 53.415432, 49.973454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837414, 53.406628, 50.355637>,  <41.194599, 53.900368, 50.142689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837414, 53.406628, 50.355637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193623, 53.519646, 50.498268>,  <42.407349, 53.587456, 50.583847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193623, 53.519646, 50.498268>,  <41.837414, 53.406628, 50.355637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193623, 53.519646, 50.498268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131649, -0.910280, 0.392502,
		0.435483, -0.302587, -0.847818,
		0.890519, 0.282543, 0.356576,
		42.460777, 53.604408, 50.605240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994392, 52.810894, 50.693398>,  <41.837414, 53.406628, 50.355637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994392, 52.810894, 50.693398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320557, 53.042133, 50.705383>,  <42.516254, 53.180878, 50.712574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320557, 53.042133, 50.705383>,  <41.994392, 52.810894, 50.693398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320557, 53.042133, 50.705383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535370, -0.772808, 0.340803,
		0.220178, -0.261851, -0.939657,
		0.815414, 0.578102, 0.029968,
		42.565182, 53.215565, 50.714375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543655, 52.394836, 50.557655>,  <41.994392, 52.810894, 50.693398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543655, 52.394836, 50.557655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712936, 52.706886, 50.741966>,  <42.814507, 52.894115, 50.852551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712936, 52.706886, 50.741966>,  <42.543655, 52.394836, 50.557655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712936, 52.706886, 50.741966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567005, -0.624701, 0.536892,
		0.706686, 0.034048, -0.706707,
		0.423201, 0.780121, 0.460773,
		42.839897, 52.940922, 50.880199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.335690, 52.359081, 50.607067>,  <42.543655, 52.394836, 50.557655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.335690, 52.359081, 50.607067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176685, 52.547157, 50.922256>,  <43.081284, 52.660004, 51.111370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176685, 52.547157, 50.922256>,  <43.335690, 52.359081, 50.607067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176685, 52.547157, 50.922256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615903, -0.499831, 0.608961,
		0.680183, 0.727384, -0.090906,
		-0.397511, 0.470194, 0.787974,
		43.057430, 52.688217, 51.158649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.062988, 52.172813, 50.329849>,  <43.335690, 52.359081, 50.607067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.062988, 52.172813, 50.329849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873718, 52.523273, 50.366661>,  <43.760159, 52.733551, 50.388748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873718, 52.523273, 50.366661>,  <44.062988, 52.172813, 50.329849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873718, 52.523273, 50.366661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560997, 0.219123, 0.798291,
		0.679257, 0.429357, -0.595200,
		-0.473173, 0.876150, 0.092027,
		43.731766, 52.786118, 50.394268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513523, 52.784977, 50.237801>,  <44.062988, 52.172813, 50.329849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513523, 52.784977, 50.237801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.207119, 52.828175, 50.491280>,  <44.023277, 52.854092, 50.643368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.207119, 52.828175, 50.491280>,  <44.513523, 52.784977, 50.237801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.207119, 52.828175, 50.491280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642283, 0.169256, 0.747546,
		-0.026527, 0.979638, -0.199014,
		-0.766008, 0.107993, 0.633694,
		43.977318, 52.860573, 50.681389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133114, 53.403328, 50.432884>,  <44.513523, 52.784977, 50.237801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133114, 53.403328, 50.432884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419743, 53.323864, 50.700333>,  <44.591721, 53.276184, 50.860802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419743, 53.323864, 50.700333>,  <44.133114, 53.403328, 50.432884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.419743, 53.323864, 50.700333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470136, -0.570556, -0.673378,
		0.515261, 0.796868, -0.315448,
		0.716574, -0.198662, 0.668622,
		44.634716, 53.264267, 50.900921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.813171, 53.571384, 50.262463>,  <44.133114, 53.403328, 50.432884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.813171, 53.571384, 50.262463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.842350, 53.263145, 50.515713>,  <44.859856, 53.078201, 50.667664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.842350, 53.263145, 50.515713>,  <44.813171, 53.571384, 50.262463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.842350, 53.263145, 50.515713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583717, -0.481746, -0.653602,
		0.808674, 0.417245, 0.414672,
		0.072946, -0.770602, 0.633128,
		44.864235, 53.031963, 50.705650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529713, 53.179226, 50.265884>,  <44.813171, 53.571384, 50.262463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.529713, 53.179226, 50.265884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.342670, 52.863121, 50.424294>,  <45.230446, 52.673458, 50.519341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.342670, 52.863121, 50.424294>,  <45.529713, 53.179226, 50.265884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.342670, 52.863121, 50.424294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571054, -0.612055, -0.547071,
		0.674717, -0.029662, 0.737481,
		-0.467605, -0.790259, 0.396025,
		45.202389, 52.626041, 50.543102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.073315, 52.588303, 50.309940>,  <45.529713, 53.179226, 50.265884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.073315, 52.588303, 50.309940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.720985, 52.400711, 50.283989>,  <45.509586, 52.288158, 50.268417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.720985, 52.400711, 50.283989>,  <46.073315, 52.588303, 50.309940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.720985, 52.400711, 50.283989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413806, -0.696027, -0.586780,
		0.230026, -0.543699, 0.807143,
		-0.880825, -0.468975, -0.064882,
		45.456738, 52.260017, 50.264523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.581944, 52.902924, 49.875324>,  <46.073315, 52.588303, 50.309940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.581944, 52.902924, 49.875324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632778, 53.002399, 49.491241>,  <46.663280, 53.062084, 49.260792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632778, 53.002399, 49.491241>,  <46.581944, 52.902924, 49.875324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.632778, 53.002399, 49.491241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468816, 0.868164, 0.162798,
		0.874105, 0.429472, 0.226924,
		0.127089, 0.248688, -0.960209,
		46.670906, 53.077007, 49.203178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.224323, 52.799927, 49.574337>,  <46.581944, 52.902924, 49.875324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.224323, 52.799927, 49.574337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.127903, 52.885101, 49.953083>,  <47.070049, 52.936207, 50.180332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.127903, 52.885101, 49.953083>,  <47.224323, 52.799927, 49.574337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.127903, 52.885101, 49.953083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970464, 0.062619, 0.232975,
		-0.009684, 0.975058, -0.221740,
		-0.241050, 0.212934, 0.946865,
		47.055588, 52.948982, 50.237144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.465286, 53.460552, 49.792328>,  <47.224323, 52.799927, 49.574337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.465286, 53.460552, 49.792328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.450439, 53.185333, 50.082214>,  <47.441532, 53.020203, 50.256145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.450439, 53.185333, 50.082214>,  <47.465286, 53.460552, 49.792328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.450439, 53.185333, 50.082214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961179, 0.173843, 0.214274,
		-0.273418, 0.704535, 0.654884,
		-0.037117, -0.688047, 0.724716,
		47.439304, 52.978920, 50.299629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.701103, 53.818684, 50.453411>,  <47.465286, 53.460552, 49.792328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.701103, 53.818684, 50.453411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.766796, 53.425388, 50.421722>,  <47.806213, 53.189411, 50.402710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.766796, 53.425388, 50.421722>,  <47.701103, 53.818684, 50.453411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.766796, 53.425388, 50.421722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983583, 0.169323, -0.062403,
		0.074771, -0.067670, 0.994902,
		0.164237, -0.983235, -0.079219,
		47.816067, 53.130417, 50.397957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.248604, 53.572525, 51.035828>,  <47.701103, 53.818684, 50.453411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.248604, 53.572525, 51.035828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.308041, 53.326195, 50.726330>,  <48.343704, 53.178398, 50.540630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.308041, 53.326195, 50.726330>,  <48.248604, 53.572525, 51.035828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.308041, 53.326195, 50.726330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984714, 0.164043, 0.058544,
		0.090874, -0.770616, 0.630788,
		0.148591, -0.615826, -0.773744,
		48.352619, 53.141449, 50.494205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.557175, 53.015785, 51.252922>,  <48.248604, 53.572525, 51.035828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.557175, 53.015785, 51.252922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.640247, 53.107979, 50.872658>,  <48.690090, 53.163296, 50.644501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.640247, 53.107979, 50.872658>,  <48.557175, 53.015785, 51.252922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.640247, 53.107979, 50.872658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977605, -0.015087, 0.209907,
		0.034037, -0.972959, -0.228456,
		0.207678, 0.230484, -0.950656,
		48.702549, 53.177124, 50.587460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.090057, 52.583019, 51.057369>,  <48.557175, 53.015785, 51.252922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.090057, 52.583019, 51.057369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.123714, 52.920036, 50.844563>,  <49.143909, 53.122246, 50.716881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.123714, 52.920036, 50.844563>,  <49.090057, 52.583019, 51.057369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.123714, 52.920036, 50.844563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960784, 0.072973, 0.267524,
		0.264223, -0.533659, -0.803364,
		0.084143, 0.842545, -0.532012,
		49.148956, 53.172798, 50.684959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.773243, 52.554760, 50.794044>,  <49.090057, 52.583019, 51.057369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.773243, 52.554760, 50.794044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.627846, 52.927261, 50.783958>,  <49.540607, 53.150764, 50.777908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.627846, 52.927261, 50.783958>,  <49.773243, 52.554760, 50.794044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.627846, 52.927261, 50.783958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919729, 0.363035, 0.149341,
		0.148229, 0.031092, -0.988464,
		-0.363491, 0.931256, -0.025216,
		49.518799, 53.206638, 50.776394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.015221, 52.929939, 50.259270>,  <49.773243, 52.554760, 50.794044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.015221, 52.929939, 50.259270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.935169, 53.186909, 50.555176>,  <49.887138, 53.341091, 50.732719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.935169, 53.186909, 50.555176>,  <50.015221, 52.929939, 50.259270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.935169, 53.186909, 50.555176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970702, 0.232491, 0.060701,
		-0.132993, 0.730236, -0.670125,
		-0.200124, 0.642420, 0.739762,
		49.875134, 53.379635, 50.777103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.307549, 53.522175, 50.215805>,  <50.015221, 52.929939, 50.259270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.307549, 53.522175, 50.215805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.254776, 53.503128, 50.611851>,  <50.223114, 53.491699, 50.849480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.254776, 53.503128, 50.611851>,  <50.307549, 53.522175, 50.215805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.254776, 53.503128, 50.611851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989448, 0.054022, 0.134437,
		-0.059890, 0.997404, 0.039991,
		-0.131928, -0.047621, 0.990115,
		50.215199, 53.488842, 50.908886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.827286, 53.945686, 50.517925>,  <50.307549, 53.522175, 50.215805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.827286, 53.945686, 50.517925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.729511, 53.658154, 50.778244>,  <50.670845, 53.485634, 50.934433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.729511, 53.658154, 50.778244>,  <50.827286, 53.945686, 50.517925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.729511, 53.658154, 50.778244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968568, -0.149078, 0.199125,
		-0.046118, 0.679013, 0.732677,
		-0.244435, -0.718831, 0.650795,
		50.656181, 53.442505, 50.973484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.961025, 54.064392, 51.257633>,  <50.827286, 53.945686, 50.517925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.961025, 54.064392, 51.257633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.981041, 53.671761, 51.183880>,  <50.993050, 53.436180, 51.139629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.981041, 53.671761, 51.183880>,  <50.961025, 54.064392, 51.257633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.981041, 53.671761, 51.183880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953973, -0.007683, 0.299794,
		-0.295688, -0.190897, 0.936016,
		0.050038, -0.981580, -0.184383,
		50.996052, 53.377285, 51.128567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.271107, 53.682999, 51.891220>,  <50.961025, 54.064392, 51.257633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.271107, 53.682999, 51.891220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.325565, 53.582001, 51.508030>,  <51.358242, 53.521400, 51.278118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.325565, 53.582001, 51.508030>,  <51.271107, 53.682999, 51.891220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.325565, 53.582001, 51.508030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986815, 0.119989, 0.108623,
		0.087519, -0.960129, 0.265503,
		0.136149, -0.252496, -0.957971,
		51.366409, 53.506252, 51.220638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.729923, 53.065952, 51.826134>,  <51.271107, 53.682999, 51.891220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.729923, 53.065952, 51.826134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.742092, 53.288364, 51.493893>,  <51.749393, 53.421810, 51.294548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.742092, 53.288364, 51.493893>,  <51.729923, 53.065952, 51.826134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.742092, 53.288364, 51.493893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999482, -0.008228, 0.031104,
		0.010461, -0.831121, -0.555994,
		0.030425, 0.556031, -0.830604,
		51.751221, 53.455173, 51.244713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.260937, 52.844017, 51.337624>,  <51.729923, 53.065952, 51.826134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.260937, 52.844017, 51.337624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.190186, 53.234558, 51.287910>,  <52.147736, 53.468884, 51.258083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.190186, 53.234558, 51.287910>,  <52.260937, 52.844017, 51.337624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.190186, 53.234558, 51.287910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971160, 0.152624, -0.183178,
		-0.159878, -0.153101, -0.975192,
		-0.176882, 0.976353, -0.124284,
		52.137119, 53.527466, 51.250626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.254963, 53.093861, 50.614674>,  <52.260937, 52.844017, 51.337624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.254963, 53.093861, 50.614674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.401756, 53.321087, 50.909325>,  <52.489830, 53.457424, 51.086117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.401756, 53.321087, 50.909325>,  <52.254963, 53.093861, 50.614674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.401756, 53.321087, 50.909325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920934, -0.110207, -0.373811,
		-0.131167, 0.815571, -0.563595,
		0.366981, 0.568065, 0.736632,
		52.511852, 53.491505, 51.130314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.691113, 53.578819, 50.252533>,  <52.254963, 53.093861, 50.614674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.691113, 53.578819, 50.252533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.830616, 53.514137, 50.621796>,  <52.914318, 53.475327, 50.843353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.830616, 53.514137, 50.621796>,  <52.691113, 53.578819, 50.252533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.830616, 53.514137, 50.621796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860241, -0.335687, -0.383795,
		0.371954, 0.927990, 0.022031,
		0.348762, -0.161706, 0.923155,
		52.935246, 53.465626, 50.898743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.394085, 53.854485, 50.211212>,  <52.691113, 53.578819, 50.252533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.394085, 53.854485, 50.211212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.359604, 53.557930, 50.477417>,  <53.338917, 53.379997, 50.637142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.359604, 53.557930, 50.477417>,  <53.394085, 53.854485, 50.211212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.359604, 53.557930, 50.477417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886789, -0.361545, -0.287907,
		0.454065, 0.565355, 0.688621,
		-0.086198, -0.741390, 0.665515,
		53.333744, 53.335514, 50.677071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.024815, 53.690781, 50.434605>,  <53.394085, 53.854485, 50.211212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.024815, 53.690781, 50.434605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.798412, 53.362869, 50.469482>,  <53.662571, 53.166122, 50.490410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.798412, 53.362869, 50.469482>,  <54.024815, 53.690781, 50.434605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.798412, 53.362869, 50.469482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815571, -0.572240, -0.085939,
		0.120350, 0.022474, 0.992477,
		-0.566004, -0.819778, 0.087198,
		53.628613, 53.116936, 50.495644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.137878, 53.089649, 50.965221>,  <54.024815, 53.690781, 50.434605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.137878, 53.089649, 50.965221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.007126, 52.975571, 50.604820>,  <53.928673, 52.907124, 50.388580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.007126, 52.975571, 50.604820>,  <54.137878, 53.089649, 50.965221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.007126, 52.975571, 50.604820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857124, -0.491070, -0.155528,
		-0.398101, -0.823113, 0.404970,
		-0.326885, -0.285194, -0.901005,
		53.909061, 52.890011, 50.334518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.365620, 53.490028, 51.559795>,  <54.137878, 53.089649, 50.965221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.365620, 53.490028, 51.559795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.564117, 53.144615, 51.523907>,  <54.683216, 52.937366, 51.502373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.564117, 53.144615, 51.523907>,  <54.365620, 53.490028, 51.559795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.564117, 53.144615, 51.523907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834308, 0.445742, 0.324414,
		-0.240151, -0.235842, 0.941651,
		0.496244, -0.863535, -0.089719,
		54.712990, 52.885555, 51.496990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.605812, 53.248302, 52.191425>,  <54.365620, 53.490028, 51.559795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.605812, 53.248302, 52.191425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.837929, 53.118477, 51.892647>,  <54.977200, 53.040581, 51.713379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.837929, 53.118477, 51.892647>,  <54.605812, 53.248302, 52.191425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.837929, 53.118477, 51.892647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767029, 0.526072, 0.367308,
		0.273732, -0.786072, 0.554221,
		0.580291, -0.324560, -0.746943,
		55.012016, 53.021111, 51.668564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.116673, 52.820320, 52.416046>,  <54.605812, 53.248302, 52.191425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.116673, 52.820320, 52.416046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.250328, 53.028770, 52.101906>,  <55.330521, 53.153839, 51.913422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.250328, 53.028770, 52.101906>,  <55.116673, 52.820320, 52.416046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.250328, 53.028770, 52.101906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754412, 0.351610, 0.554286,
		0.564989, -0.777690, -0.275654,
		0.334140, 0.521122, -0.785355,
		55.350571, 53.185108, 51.866299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.952763, 52.833454, 52.436481>,  <55.116673, 52.820320, 52.416046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.952763, 52.833454, 52.436481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.804665, 53.163376, 52.265545>,  <55.715805, 53.361328, 52.162983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.804665, 53.163376, 52.265545>,  <55.952763, 52.833454, 52.436481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.804665, 53.163376, 52.265545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499595, 0.564640, 0.656953,
		0.783150, 0.029735, -0.621121,
		-0.370244, 0.824802, -0.427342,
		55.693592, 53.410816, 52.137341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.661201, 52.939999, 52.388962>,  <55.952763, 52.833454, 52.436481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.661201, 52.939999, 52.388962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.043770, 53.053963, 52.363426>,  <57.273312, 53.122341, 52.348106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.043770, 53.053963, 52.363426>,  <56.661201, 52.939999, 52.388962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.043770, 53.053963, 52.363426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124412, -0.199867, 0.971892,
		0.264147, -0.937484, -0.226605,
		0.956424, 0.284915, -0.063840,
		57.330696, 53.139439, 52.344273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.133564, 52.396580, 52.602516>,  <56.661201, 52.939999, 52.388962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.133564, 52.396580, 52.602516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.316322, 52.749481, 52.647907>,  <57.425976, 52.961224, 52.675140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.316322, 52.749481, 52.647907>,  <57.133564, 52.396580, 52.602516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.316322, 52.749481, 52.647907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046329, -0.151000, 0.987448,
		0.888314, -0.445902, -0.109865,
		0.456894, 0.882253, 0.113477,
		57.453392, 53.014156, 52.681950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.919235, 52.706520, 53.284801>,  <57.133564, 52.396580, 52.602516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.919235, 52.706520, 53.284801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.242653, 52.643414, 53.058044>,  <57.436703, 52.605549, 52.921989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.242653, 52.643414, 53.058044>,  <56.919235, 52.706520, 53.284801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.242653, 52.643414, 53.058044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379917, 0.875644, 0.298179,
		0.449353, -0.456463, 0.767935,
		0.808545, -0.157763, -0.566891,
		57.485218, 52.596085, 52.887978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.443695, 53.221470, 53.430157>,  <56.919235, 52.706520, 53.284801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.443695, 53.221470, 53.430157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.670403, 53.024124, 53.166229>,  <57.806427, 52.905716, 53.007874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.670403, 53.024124, 53.166229>,  <57.443695, 53.221470, 53.430157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.670403, 53.024124, 53.166229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674636, 0.737621, 0.027948,
		0.472910, -0.460980, 0.750901,
		0.566765, -0.493368, -0.659823,
		57.840431, 52.876114, 52.968281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.116112, 52.995617, 53.580032>,  <57.443695, 53.221470, 53.430157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.116112, 52.995617, 53.580032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.106377, 53.127254, 53.202438>,  <58.100536, 53.206238, 52.975883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.106377, 53.127254, 53.202438>,  <58.116112, 52.995617, 53.580032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.106377, 53.127254, 53.202438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809554, 0.560503, 0.174525,
		0.586541, -0.759958, -0.280060,
		-0.024342, 0.329090, -0.943985,
		58.099075, 53.225983, 52.919243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.792988, 52.828552, 53.104652>,  <58.116112, 52.995617, 53.580032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.792988, 52.828552, 53.104652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.587814, 53.170788, 53.076729>,  <58.464710, 53.376129, 53.059975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.587814, 53.170788, 53.076729>,  <58.792988, 52.828552, 53.104652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.587814, 53.170788, 53.076729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769889, 0.494475, 0.403442,
		0.379698, 0.153193, -0.912338,
		-0.512933, 0.855585, -0.069810,
		58.433933, 53.427464, 53.055786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.223343, 53.273582, 52.708858>,  <58.792988, 52.828552, 53.104652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.223343, 53.273582, 52.708858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.967438, 53.396744, 52.990540>,  <58.813896, 53.470642, 53.159550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.967438, 53.396744, 52.990540>,  <59.223343, 53.273582, 52.708858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.967438, 53.396744, 52.990540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768473, 0.241484, 0.592567,
		0.012399, 0.920262, -0.391107,
		-0.639763, 0.307902, 0.704202,
		58.775509, 53.489113, 53.201801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.593735, 53.824215, 53.107185>,  <59.223343, 53.273582, 52.708858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.593735, 53.824215, 53.107185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.274406, 53.795635, 53.346378>,  <59.082809, 53.778488, 53.489895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.274406, 53.795635, 53.346378>,  <59.593735, 53.824215, 53.107185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.274406, 53.795635, 53.346378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591780, 0.091172, 0.800927,
		-0.111747, 0.993268, -0.030500,
		-0.798316, -0.071452, 0.597985,
		59.034912, 53.774200, 53.525772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.534348, 54.439873, 53.546448>,  <59.593735, 53.824215, 53.107185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.534348, 54.439873, 53.546448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.386414, 54.092964, 53.679752>,  <59.297653, 53.884819, 53.759735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.386414, 54.092964, 53.679752>,  <59.534348, 54.439873, 53.546448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.386414, 54.092964, 53.679752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481308, 0.127970, 0.867160,
		-0.794711, 0.481105, 0.370097,
		-0.369834, -0.867272, 0.333259,
		59.275463, 53.832783, 53.779732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.034122, 54.458752, 54.233425>,  <59.534348, 54.439873, 53.546448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.034122, 54.458752, 54.233425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.284752, 54.158535, 54.149426>,  <59.435127, 53.978405, 54.099026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.284752, 54.158535, 54.149426>,  <59.034122, 54.458752, 54.233425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.284752, 54.158535, 54.149426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532355, 0.215364, 0.818667,
		-0.569217, -0.624746, 0.534495,
		0.626570, -0.750540, -0.209997,
		59.472721, 53.933372, 54.086426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.081688, 53.918602, 54.741272>,  <59.034122, 54.458752, 54.233425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.081688, 53.918602, 54.741272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.436279, 53.982964, 54.567711>,  <59.649033, 54.021580, 54.463573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.436279, 53.982964, 54.567711>,  <59.081688, 53.918602, 54.741272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.436279, 53.982964, 54.567711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447353, -0.057879, 0.892483,
		0.118487, -0.985272, -0.123287,
		0.886474, 0.160900, -0.433907,
		59.702221, 54.031235, 54.437538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.544460, 53.315029, 54.899956>,  <59.081688, 53.918602, 54.741272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.544460, 53.315029, 54.899956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.714310, 53.671825, 54.837925>,  <59.816219, 53.885902, 54.800705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.714310, 53.671825, 54.837925>,  <59.544460, 53.315029, 54.899956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.714310, 53.671825, 54.837925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446334, -0.057212, 0.893036,
		0.787705, -0.448424, -0.422418,
		0.424626, 0.891988, -0.155081,
		59.841698, 53.939423, 54.791401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.264809, 53.248558, 55.196430>,  <59.544460, 53.315029, 54.899956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.264809, 53.248558, 55.196430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.145432, 53.630318, 55.193542>,  <60.073807, 53.859375, 55.191811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.145432, 53.630318, 55.193542>,  <60.264809, 53.248558, 55.196430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.145432, 53.630318, 55.193542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495198, 0.161304, 0.853674,
		0.815911, 0.251201, -0.520757,
		-0.298444, 0.954400, -0.007215,
		60.055897, 53.916637, 55.191380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.853832, 53.585545, 55.463970>,  <60.264809, 53.248558, 55.196430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.853832, 53.585545, 55.463970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.547363, 53.840919, 55.493301>,  <60.363480, 53.994144, 55.510902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.547363, 53.840919, 55.493301>,  <60.853832, 53.585545, 55.463970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.547363, 53.840919, 55.493301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474636, 0.485258, 0.734333,
		0.433238, 0.597434, -0.674816,
		-0.766176, 0.638433, 0.073332,
		60.317509, 54.032448, 55.515301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.152512, 54.286098, 55.361103>,  <60.853832, 53.585545, 55.463970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.152512, 54.286098, 55.361103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.816093, 54.305103, 55.576653>,  <60.614243, 54.316505, 55.705982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.816093, 54.305103, 55.576653>,  <61.152512, 54.286098, 55.361103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.816093, 54.305103, 55.576653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493652, 0.474833, 0.728588,
		-0.221258, 0.878792, -0.422812,
		-0.841042, 0.047516, 0.538878,
		60.563782, 54.319359, 55.738316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.007458, 55.022659, 55.528744>,  <61.152512, 54.286098, 55.361103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.007458, 55.022659, 55.528744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.837601, 54.783222, 55.800438>,  <60.735687, 54.639561, 55.963455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.837601, 54.783222, 55.800438>,  <61.007458, 55.022659, 55.528744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.837601, 54.783222, 55.800438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428752, 0.527816, 0.733199,
		-0.797401, 0.602573, 0.032515,
		-0.424644, -0.598595, 0.679236,
		60.710209, 54.603645, 56.004208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.387325, 55.277580, 55.906563>,  <61.007458, 55.022659, 55.528744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.387325, 55.277580, 55.906563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.618401, 55.059574, 56.149620>,  <60.757046, 54.928768, 56.295456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.618401, 55.059574, 56.149620>,  <60.387325, 55.277580, 55.906563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.618401, 55.059574, 56.149620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091333, 0.782912, 0.615391,
		-0.811132, -0.300006, 0.502057,
		0.577688, -0.545018, 0.607645,
		60.791706, 54.896069, 56.331913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.102814, 55.219093, 56.568787>,  <60.387325, 55.277580, 55.906563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.102814, 55.219093, 56.568787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.499695, 55.245461, 56.526474>,  <60.737823, 55.261280, 56.501087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.499695, 55.245461, 56.526474>,  <60.102814, 55.219093, 56.568787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.499695, 55.245461, 56.526474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014832, 0.905115, 0.424908,
		0.123755, -0.420026, 0.899035,
		0.992202, 0.065919, -0.105783,
		60.797356, 55.265236, 56.494740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.292839, 55.796272, 56.949387>,  <60.102814, 55.219093, 56.568787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.292839, 55.796272, 56.949387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.670067, 55.710838, 56.847404>,  <60.896404, 55.659576, 56.786213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.670067, 55.710838, 56.847404>,  <60.292839, 55.796272, 56.949387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.670067, 55.710838, 56.847404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291258, 0.900476, 0.322973,
		0.160599, -0.378844, 0.911419,
		0.943068, -0.213589, -0.254957,
		60.952988, 55.646763, 56.770916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.753689, 56.187321, 57.395683>,  <60.292839, 55.796272, 56.949387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.753689, 56.187321, 57.395683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.052483, 56.069424, 57.157310>,  <61.231758, 55.998684, 57.014286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.052483, 56.069424, 57.157310>,  <60.753689, 56.187321, 57.395683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.052483, 56.069424, 57.157310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518592, 0.819207, 0.244870,
		0.416022, -0.491962, 0.764787,
		0.746986, -0.294742, -0.595936,
		61.276577, 55.981003, 56.978531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.476048, 56.076904, 57.644016>,  <60.753689, 56.187321, 57.395683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.476048, 56.076904, 57.644016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.539154, 56.191193, 57.265923>,  <61.577019, 56.259766, 57.039066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.539154, 56.191193, 57.265923>,  <61.476048, 56.076904, 57.644016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.539154, 56.191193, 57.265923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649708, 0.690816, 0.317259,
		0.743633, -0.664180, -0.076650,
		0.157766, 0.285724, -0.945237,
		61.586483, 56.276909, 56.982353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.187695, 56.089989, 57.473907>,  <61.476048, 56.076904, 57.644016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.187695, 56.089989, 57.473907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.034813, 56.350777, 57.211960>,  <61.943085, 56.507248, 57.054790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.034813, 56.350777, 57.211960>,  <62.187695, 56.089989, 57.473907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.034813, 56.350777, 57.211960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634884, 0.700203, 0.326555,
		0.671446, -0.290955, -0.681547,
		-0.382208, 0.651967, -0.654871,
		61.920151, 56.546368, 57.015499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.746010, 56.375057, 57.251724>,  <62.187695, 56.089989, 57.473907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.746010, 56.375057, 57.251724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.452942, 56.638939, 57.184822>,  <62.277100, 56.797268, 57.144680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.452942, 56.638939, 57.184822>,  <62.746010, 56.375057, 57.251724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.452942, 56.638939, 57.184822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613298, 0.746534, 0.257980,
		0.295051, 0.086441, -0.951564,
		-0.732674, 0.659709, -0.167251,
		62.233139, 56.836853, 57.134647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.116646, 56.984116, 57.014725>,  <62.746010, 56.375057, 57.251724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.116646, 56.984116, 57.014725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.752220, 57.137001, 57.076530>,  <62.533566, 57.228733, 57.113613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.752220, 57.137001, 57.076530>,  <63.116646, 56.984116, 57.014725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.752220, 57.137001, 57.076530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412126, 0.853979, 0.317604,
		-0.010564, 0.353039, -0.935549,
		-0.911066, 0.382209, 0.154518,
		62.478901, 57.251663, 57.122887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.721294, 57.027283, 57.485626>,  <63.116646, 56.984116, 57.014725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.721294, 57.027283, 57.485626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.863808, 57.143097, 57.840981>,  <63.949318, 57.212585, 58.054192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.863808, 57.143097, 57.840981>,  <63.721294, 57.027283, 57.485626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.863808, 57.143097, 57.840981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287145, 0.938697, -0.190777,
		-0.889161, -0.187124, 0.417586,
		0.356288, 0.289539, 0.888384,
		63.970695, 57.229958, 58.107494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.426563, 56.831860, 58.114193>,  <63.721294, 57.027283, 57.485626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.426563, 56.831860, 58.114193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.641975, 56.517242, 58.235077>,  <63.771221, 56.328472, 58.307606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.641975, 56.517242, 58.235077>,  <63.426563, 56.831860, 58.114193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.641975, 56.517242, 58.235077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266892, -0.180965, -0.946584,
		0.799220, 0.590423, 0.112468,
		0.538532, -0.786545, 0.302210,
		63.803535, 56.281281, 58.325741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.773972, 57.306267, 58.664520>,  <63.426563, 56.831860, 58.114193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.773972, 57.306267, 58.664520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.024170, 57.351791, 58.973274>,  <64.174286, 57.379105, 59.158524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.024170, 57.351791, 58.973274>,  <63.773972, 57.306267, 58.664520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.024170, 57.351791, 58.973274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776672, 0.003482, -0.629895,
		-0.074375, 0.993497, -0.086213,
		0.625499, 0.113808, 0.771880,
		64.211823, 57.385933, 59.204838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.729141, 57.851730, 58.114319>,  <63.773972, 57.306267, 58.664520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.729141, 57.851730, 58.114319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.492950, 58.105911, 57.915306>,  <63.351238, 58.258419, 57.795898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.492950, 58.105911, 57.915306>,  <63.729141, 57.851730, 58.114319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.492950, 58.105911, 57.915306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208662, 0.715724, 0.666483,
		0.779616, 0.289723, -0.555210,
		-0.590473, 0.635453, -0.497536,
		63.315807, 58.296547, 57.766045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.170284, 58.140129, 58.504929>,  <63.729141, 57.851730, 58.114319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.170284, 58.140129, 58.504929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.188927, 58.467087, 58.734604>,  <63.200111, 58.663261, 58.872410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.188927, 58.467087, 58.734604>,  <63.170284, 58.140129, 58.504929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.188927, 58.467087, 58.734604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996204, 0.004275, -0.086941,
		-0.073520, 0.576057, -0.814097,
		0.046603, 0.817398, 0.574184,
		63.202908, 58.712307, 58.906860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.469761, 58.640499, 58.157398>,  <63.170284, 58.140129, 58.504929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.469761, 58.640499, 58.157398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.542908, 58.716633, 58.543213>,  <63.586796, 58.762314, 58.774700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.542908, 58.716633, 58.543213>,  <63.469761, 58.640499, 58.157398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.542908, 58.716633, 58.543213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977393, 0.070704, -0.199260,
		-0.106124, 0.979169, -0.173106,
		0.182870, 0.190339, 0.964536,
		63.597767, 58.773735, 58.832573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.258911, 58.620281, 57.947395>,  <63.469761, 58.640499, 58.157398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.258911, 58.620281, 57.947395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.144966, 58.740280, 58.311562>,  <64.076599, 58.812279, 58.530064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.144966, 58.740280, 58.311562>,  <64.258911, 58.620281, 57.947395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.144966, 58.740280, 58.311562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945873, 0.242046, 0.216190,
		-0.155507, 0.922723, -0.352704,
		-0.284854, 0.299994, 0.910419,
		64.059509, 58.830276, 58.584686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.618813, 59.227615, 58.001606>,  <64.258911, 58.620281, 57.947395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.618813, 59.227615, 58.001606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.552589, 59.053394, 58.355530>,  <64.512856, 58.948860, 58.567883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.552589, 59.053394, 58.355530>,  <64.618813, 59.227615, 58.001606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.552589, 59.053394, 58.355530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972794, 0.075301, 0.219094,
		-0.162053, 0.897009, 0.411234,
		-0.165563, -0.435551, 0.884807,
		64.502922, 58.922729, 58.620972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.004730, 59.620316, 58.508148>,  <64.618813, 59.227615, 58.001606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.004730, 59.620316, 58.508148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.932350, 59.260509, 58.667213>,  <64.888924, 59.044624, 58.762653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.932350, 59.260509, 58.667213>,  <65.004730, 59.620316, 58.508148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.932350, 59.260509, 58.667213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937705, -0.035854, 0.345578,
		-0.296595, 0.435418, 0.849966,
		-0.180945, -0.899514, 0.397659,
		64.878067, 58.990654, 58.786510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.439674, 59.645126, 59.002781>,  <65.004730, 59.620316, 58.508148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.439674, 59.645126, 59.002781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.324615, 59.269569, 58.927162>,  <65.255585, 59.044235, 58.881790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.324615, 59.269569, 58.927162>,  <65.439674, 59.645126, 59.002781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.324615, 59.269569, 58.927162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894582, -0.333881, 0.297061,
		-0.342030, -0.083674, 0.935956,
		-0.287642, -0.938894, -0.189050,
		65.238319, 58.987900, 58.870445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.343925, 59.321495, 59.605370>,  <65.439674, 59.645126, 59.002781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.343925, 59.321495, 59.605370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.466759, 59.091751, 59.301842>,  <65.540459, 58.953903, 59.119724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.466759, 59.091751, 59.301842>,  <65.343925, 59.321495, 59.605370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.466759, 59.091751, 59.301842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905212, -0.069836, 0.419182,
		-0.293754, -0.815620, 0.498471,
		0.307082, -0.574358, -0.758823,
		65.558884, 58.919445, 59.074196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.684227, 58.614773, 59.831364>,  <65.343925, 59.321495, 59.605370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.684227, 58.614773, 59.831364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.847641, 58.750763, 59.492538>,  <65.945686, 58.832355, 59.289242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.847641, 58.750763, 59.492538>,  <65.684227, 58.614773, 59.831364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.847641, 58.750763, 59.492538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894636, 0.034789, 0.445439,
		0.180906, -0.939791, -0.289941,
		0.408533, 0.339974, -0.847065,
		65.970200, 58.852757, 59.238419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.310982, 58.261398, 59.695217>,  <65.684227, 58.614773, 59.831364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.310982, 58.261398, 59.695217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.321930, 58.618500, 59.515335>,  <66.328499, 58.832760, 59.407406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.321930, 58.618500, 59.515335>,  <66.310982, 58.261398, 59.695217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.321930, 58.618500, 59.515335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884859, 0.187659, 0.426390,
		0.465054, -0.409599, -0.784827,
		0.027369, 0.892755, -0.449709,
		66.330139, 58.886326, 59.380421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.910347, 58.330349, 59.424110>,  <66.310982, 58.261398, 59.695217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.910347, 58.330349, 59.424110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.803452, 58.712723, 59.472725>,  <66.739311, 58.942146, 59.501896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.803452, 58.712723, 59.472725>,  <66.910347, 58.330349, 59.424110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.803452, 58.712723, 59.472725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923806, 0.218273, 0.314546,
		0.274156, 0.196339, -0.941429,
		-0.267246, 0.955933, 0.121538,
		66.723274, 58.999504, 59.509186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.434715, 58.827782, 59.073059>,  <66.910347, 58.330349, 59.424110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.434715, 58.827782, 59.073059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.242401, 58.961014, 59.397507>,  <67.127014, 59.040955, 59.592175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.242401, 58.961014, 59.397507>,  <67.434715, 58.827782, 59.073059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.242401, 58.961014, 59.397507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876723, 0.197890, 0.438403,
		-0.014487, 0.921898, -0.387161,
		-0.480778, 0.333082, 0.811116,
		67.098167, 59.060940, 59.640842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.160454, 59.094971, 59.193100>,  <67.434715, 58.827782, 59.073059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.160454, 59.094971, 59.193100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.856377, 59.343872, 59.118370>,  <67.673927, 59.493214, 59.073532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.856377, 59.343872, 59.118370>,  <68.160454, 59.094971, 59.193100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.856377, 59.343872, 59.118370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608680, 0.782672, 0.130126,
		0.227195, -0.014797, -0.973737,
		-0.760191, 0.622258, -0.186826,
		67.628319, 59.530548, 59.062321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.329269, 59.573841, 58.644547>,  <68.160454, 59.094971, 59.193100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.329269, 59.573841, 58.644547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.049194, 59.759705, 58.861366>,  <67.881149, 59.871223, 58.991459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.049194, 59.759705, 58.861366>,  <68.329269, 59.573841, 58.644547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.049194, 59.759705, 58.861366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543479, 0.839243, -0.017376,
		-0.462986, 0.282426, -0.840167,
		-0.700196, 0.464658, 0.542050,
		67.839134, 59.899101, 59.023983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.408600, 58.925827, 58.230770>,  <68.329269, 59.573841, 58.644547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.408600, 58.925827, 58.230770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.669426, 59.167030, 58.046944>,  <68.825920, 59.311752, 57.936649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.669426, 59.167030, 58.046944>,  <68.408600, 58.925827, 58.230770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.669426, 59.167030, 58.046944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066624, -0.649377, -0.757542,
		-0.755234, 0.463345, -0.463608,
		0.652060, 0.603009, -0.459562,
		68.865044, 59.347935, 57.909077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.038483, 58.538536, 58.451565>,  <68.408600, 58.925827, 58.230770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.038483, 58.538536, 58.451565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.135155, 58.151611, 58.420853>,  <69.193153, 57.919456, 58.402428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.135155, 58.151611, 58.420853>,  <69.038483, 58.538536, 58.451565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.135155, 58.151611, 58.420853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800233, 0.153925, 0.579599,
		-0.548837, -0.201513, 0.811277,
		0.241673, -0.967316, -0.076778,
		69.207657, 57.861416, 58.397820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.359840, 58.235813, 59.117599>,  <69.038483, 58.538536, 58.451565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.359840, 58.235813, 59.117599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.497437, 57.987045, 58.836205>,  <69.579994, 57.837784, 58.667366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.497437, 57.987045, 58.836205>,  <69.359840, 58.235813, 59.117599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.497437, 57.987045, 58.836205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914633, 0.052433, 0.400870,
		-0.212422, -0.781325, 0.586863,
		0.343981, -0.621918, -0.703488,
		69.600632, 57.800468, 58.625156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.637215, 57.585091, 59.353291>,  <69.359840, 58.235813, 59.117599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.637215, 57.585091, 59.353291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.797783, 57.786003, 59.046936>,  <69.894119, 57.906551, 58.863125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.797783, 57.786003, 59.046936>,  <69.637215, 57.585091, 59.353291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.797783, 57.786003, 59.046936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842139, 0.126360, 0.524248,
		0.360095, -0.855424, -0.372265,
		0.401415, 0.502277, -0.765888,
		69.918205, 57.936687, 58.817169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.375122, 57.535938, 59.329762>,  <69.637215, 57.585091, 59.353291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.375122, 57.535938, 59.329762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.310913, 57.889935, 59.154938>,  <70.272392, 58.102333, 59.050045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.310913, 57.889935, 59.154938>,  <70.375122, 57.535938, 59.329762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.310913, 57.889935, 59.154938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897051, 0.315519, 0.309433,
		0.411746, -0.342393, -0.844531,
		-0.160518, 0.884994, -0.437057,
		70.262756, 58.155434, 59.023819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.036621, 57.676029, 58.991840>,  <70.375122, 57.535938, 59.329762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.036621, 57.676029, 58.991840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.858833, 58.032257, 59.030495>,  <70.752159, 58.245995, 59.053688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.858833, 58.032257, 59.030495>,  <71.036621, 57.676029, 58.991840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.858833, 58.032257, 59.030495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881756, 0.415921, 0.222524,
		0.157978, 0.184117, -0.970126,
		-0.444466, 0.890568, 0.096639,
		70.725494, 58.299427, 59.059486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.336067, 58.183144, 58.676571>,  <71.036621, 57.676029, 58.991840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.336067, 58.183144, 58.676571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.162163, 58.407402, 58.958466>,  <71.057816, 58.541958, 59.127602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.162163, 58.407402, 58.958466>,  <71.336067, 58.183144, 58.676571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.162163, 58.407402, 58.958466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867784, 0.469979, 0.161468,
		-0.240687, 0.681763, -0.690847,
		-0.434766, 0.560642, 0.704740,
		71.031731, 58.575596, 59.169888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.387230, 59.047039, 58.638855>,  <71.336067, 58.183144, 58.676571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.387230, 59.047039, 58.638855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.358238, 58.860809, 58.991669>,  <71.340843, 58.749073, 59.203358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.358238, 58.860809, 58.991669>,  <71.387230, 59.047039, 58.638855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.358238, 58.860809, 58.991669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860265, 0.418302, 0.291492,
		-0.504669, 0.779913, 0.370196,
		-0.072484, -0.465574, 0.882036,
		71.336494, 58.721138, 59.256279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.341774, 59.564762, 59.211788>,  <71.387230, 59.047039, 58.638855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.341774, 59.564762, 59.211788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.496696, 59.212723, 59.321640>,  <71.589653, 59.001499, 59.387550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.496696, 59.212723, 59.321640>,  <71.341774, 59.564762, 59.211788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.496696, 59.212723, 59.321640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862263, 0.451231, 0.229984,
		-0.326328, 0.147725, 0.933642,
		0.387314, -0.880095, 0.274627,
		71.612892, 58.948692, 59.404030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.642349, 59.661079, 59.843826>,  <71.341774, 59.564762, 59.211788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.642349, 59.661079, 59.843826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.819115, 59.343227, 59.677322>,  <71.925171, 59.152515, 59.577419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.819115, 59.343227, 59.677322>,  <71.642349, 59.661079, 59.843826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.819115, 59.343227, 59.677322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843071, 0.209335, 0.495390,
		-0.306515, -0.569855, 0.762439,
		0.441905, -0.794635, -0.416263,
		71.951683, 59.104836, 59.552444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.687538, 59.187710, 60.334061>,  <71.642349, 59.661079, 59.843826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.687538, 59.187710, 60.334061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.973328, 59.176956, 60.054398>,  <72.144798, 59.170506, 59.886600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.973328, 59.176956, 60.054398>,  <71.687538, 59.187710, 60.334061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.973328, 59.176956, 60.054398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698671, -0.025970, 0.714972,
		-0.037383, -0.999301, 0.000232,
		0.714466, -0.026890, -0.699153,
		72.187668, 59.168892, 59.844650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.978043, 58.553913, 60.398300>,  <71.687538, 59.187710, 60.334061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.978043, 58.553913, 60.398300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.245880, 58.797279, 60.227898>,  <72.406586, 58.943298, 60.125656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.245880, 58.797279, 60.227898>,  <71.978043, 58.553913, 60.398300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.245880, 58.797279, 60.227898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716107, -0.376669, 0.587631,
		0.197060, -0.698538, -0.687904,
		0.669595, 0.608411, -0.426002,
		72.446762, 58.979801, 60.100098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.483368, 58.125324, 60.092537>,  <71.978043, 58.553913, 60.398300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.483368, 58.125324, 60.092537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.609390, 58.479000, 60.230499>,  <72.685005, 58.691204, 60.313274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.609390, 58.479000, 60.230499>,  <72.483368, 58.125324, 60.092537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.609390, 58.479000, 60.230499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637205, -0.466383, 0.613561,
		0.703360, 0.026473, -0.710341,
		0.315048, 0.884187, 0.344904,
		72.703903, 58.744255, 60.333969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.136040, 57.847198, 60.210793>,  <72.483368, 58.125324, 60.092537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.136040, 57.847198, 60.210793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.081886, 57.574043, 59.923645>,  <73.049393, 57.410149, 59.751358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.081886, 57.574043, 59.923645>,  <73.136040, 57.847198, 60.210793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.081886, 57.574043, 59.923645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770275, 0.528251, -0.357250,
		0.623177, 0.504592, -0.597527,
		-0.135379, -0.682889, -0.717868,
		73.041275, 57.369175, 59.708286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
