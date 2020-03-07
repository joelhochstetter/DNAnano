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
	<3.586689, 2.606224, 1.124967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.700287, 2.258698, 0.962730>,  <3.768446, 2.050182, 0.865389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.700287, 2.258698, 0.962730>,  <3.586689, 2.606224, 1.124967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.700287, 2.258698, 0.962730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663233, -0.483488, 0.571281,
		-0.692437, 0.106760, -0.713536,
		0.283996, -0.868816, -0.405592,
		3.785486, 1.998053, 0.841053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.161409, 2.145535, 1.499179>,  <3.586689, 2.606224, 1.124967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.161409, 2.145535, 1.499179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.347359, 1.884911, 1.259392>,  <3.458928, 1.728536, 1.115520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.347359, 1.884911, 1.259392>,  <3.161409, 2.145535, 1.499179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.347359, 1.884911, 1.259392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447727, -0.757125, 0.475713,
		-0.763837, 0.047264, -0.643677,
		0.464860, -0.651558, -0.599481,
		3.486821, 1.689443, 1.079551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.603914, 1.768365, 1.165365>,  <3.161409, 2.145535, 1.499179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.603914, 1.768365, 1.165365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.930107, 1.537495, 1.182590>,  <3.125823, 1.398973, 1.192925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.930107, 1.537495, 1.182590>,  <2.603914, 1.768365, 1.165365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.930107, 1.537495, 1.182590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573156, -0.794976, 0.198759,
		-0.080485, -0.186767, -0.979102,
		0.815484, -0.577175, 0.043063,
		3.174752, 1.364342, 1.195509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.625850, 1.197984, 0.639052>,  <2.603914, 1.768365, 1.165365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.625850, 1.197984, 0.639052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.780846, 1.089188, 0.991386>,  <2.873843, 1.023910, 1.202787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.780846, 1.089188, 0.991386>,  <2.625850, 1.197984, 0.639052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.780846, 1.089188, 0.991386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673577, -0.735882, 0.069082,
		0.629401, -0.620080, -0.468354,
		0.387489, -0.271992, 0.880836,
		2.897093, 1.007590, 1.255637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.539496, 0.482451, 0.685374>,  <2.625850, 1.197984, 0.639052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.539496, 0.482451, 0.685374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.613266, 0.578583, 1.066578>,  <2.657528, 0.636262, 1.295300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.613266, 0.578583, 1.066578>,  <2.539496, 0.482451, 0.685374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.613266, 0.578583, 1.066578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571115, -0.762934, 0.302918,
		0.799884, -0.600144, -0.003449,
		0.184426, 0.240330, 0.953010,
		2.668594, 0.650682, 1.352481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.608487, -0.140739, 1.054347>,  <2.539496, 0.482451, 0.685374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.608487, -0.140739, 1.054347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.495888, 0.138435, 1.317753>,  <2.428328, 0.305940, 1.475797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.495888, 0.138435, 1.317753>,  <2.608487, -0.140739, 1.054347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.495888, 0.138435, 1.317753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670074, -0.634203, 0.385730,
		0.686848, -0.332672, 0.646196,
		-0.281498, 0.697937, 0.658516,
		2.411438, 0.347816, 1.515308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.589654, -0.535431, 1.586559>,  <2.608487, -0.140739, 1.054347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.589654, -0.535431, 1.586559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.379974, -0.206879, 1.676491>,  <2.254166, -0.009747, 1.730450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.379974, -0.206879, 1.676491>,  <2.589654, -0.535431, 1.586559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.379974, -0.206879, 1.676491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797202, -0.566149, 0.209628,
		0.299471, -0.069348, 0.951582,
		-0.524200, 0.821381, 0.224830,
		2.222714, 0.039536, 1.743940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.335606, -0.771507, 2.240554>,  <2.589654, -0.535431, 1.586559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.335606, -0.771507, 2.240554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.119804, -0.455196, 2.124893>,  <1.990324, -0.265410, 2.055497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.119804, -0.455196, 2.124893>,  <2.335606, -0.771507, 2.240554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.119804, -0.455196, 2.124893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808253, -0.390165, 0.441020,
		0.235931, 0.471640, 0.849642,
		-0.539504, 0.790776, -0.289152,
		1.957953, -0.217964, 2.038147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.852806, -1.146914, 1.626921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.741254, -0.819420, 1.827679>,  <0.674323, -0.622923, 1.948133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.741254, -0.819420, 1.827679>,  <0.852806, -1.146914, 1.626921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.741254, -0.819420, 1.827679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874044, 0.432910, -0.220536,
		-0.397836, 0.377175, -0.836341,
		-0.278879, 0.818736, 0.501895,
		0.657590, -0.573799, 1.978247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.063735, -0.574083, 1.217170>,  <0.852806, -1.146914, 1.626921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.063735, -0.574083, 1.217170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.004920, -0.386559, 1.565559>,  <0.969631, -0.274044, 1.774593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.004920, -0.386559, 1.565559>,  <1.063735, -0.574083, 1.217170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.004920, -0.386559, 1.565559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816270, 0.554827, -0.160841,
		-0.558644, 0.687301, -0.464257,
		-0.147036, 0.468812, 0.870974,
		0.960809, -0.245915, 1.826852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.074388, 0.142477, 1.197148>,  <1.063735, -0.574083, 1.217170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.074388, 0.142477, 1.197148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.200905, 0.041611, 1.562962>,  <1.276815, -0.018909, 1.782449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.200905, 0.041611, 1.562962>,  <1.074388, 0.142477, 1.197148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.200905, 0.041611, 1.562962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726478, 0.684337, -0.062559,
		-0.610073, 0.684175, 0.399644,
		0.316293, -0.252167, 0.914533,
		1.295793, -0.034039, 1.837322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.103038, 0.669432, 1.667840>,  <1.074388, 0.142477, 1.197148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.103038, 0.669432, 1.667840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.368167, 0.417564, 1.829918>,  <1.527244, 0.266444, 1.927165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.368167, 0.417564, 1.829918>,  <1.103038, 0.669432, 1.667840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.368167, 0.417564, 1.829918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694718, 0.719030, -0.019063,
		-0.279344, 0.294131, 0.914032,
		0.662823, -0.629669, 0.405195,
		1.567014, 0.228664, 1.951476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.544755, 1.092809, 2.055624>,  <1.103038, 0.669432, 1.667840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.544755, 1.092809, 2.055624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.757208, 0.759125, 1.996307>,  <1.884680, 0.558914, 1.960717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.757208, 0.759125, 1.996307>,  <1.544755, 1.092809, 2.055624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.757208, 0.759125, 1.996307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828787, 0.547891, -0.113697,
		0.176095, -0.062515, 0.982386,
		0.531133, -0.834210, -0.148292,
		1.916548, 0.508862, 1.951820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.149352, 1.235667, 2.404004>,  <1.544755, 1.092809, 2.055624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.149352, 1.235667, 2.404004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.220535, 0.957054, 2.125961>,  <2.263245, 0.789886, 1.959136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.220535, 0.957054, 2.125961>,  <2.149352, 1.235667, 2.404004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.220535, 0.957054, 2.125961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872585, 0.438237, -0.215741,
		0.454892, -0.568146, 0.685772,
		0.177958, -0.696533, -0.695106,
		2.273923, 0.748094, 1.917429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.799412, 1.033574, 2.592741>,  <2.149352, 1.235667, 2.404004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.799412, 1.033574, 2.592741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.751291, 0.915215, 2.213696>,  <2.722419, 0.844199, 1.986268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.751291, 0.915215, 2.213696>,  <2.799412, 1.033574, 2.592741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.751291, 0.915215, 2.213696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910488, 0.347543, -0.224110,
		0.395651, -0.889751, 0.227603,
		-0.120301, -0.295899, -0.947614,
		2.715201, 0.826445, 1.929411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.439851, 0.738454, 2.431486>,  <2.799412, 1.033574, 2.592741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.439851, 0.738454, 2.431486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.247005, 0.859428, 2.102585>,  <3.131298, 0.932013, 1.905244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.247005, 0.859428, 2.102585>,  <3.439851, 0.738454, 2.431486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.247005, 0.859428, 2.102585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831006, 0.455110, -0.319849,
		0.277481, -0.837500, -0.470742,
		-0.482113, 0.302437, -0.822252,
		3.102371, 0.950159, 1.855909>
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
