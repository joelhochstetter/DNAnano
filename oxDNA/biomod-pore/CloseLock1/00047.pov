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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<23.828281, 35.284637, 34.929253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.079048, 34.984409, 35.012791>,  <24.229509, 34.804272, 35.062912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.079048, 34.984409, 35.012791>,  <23.828281, 35.284637, 34.929253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.079048, 34.984409, 35.012791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075506, -0.325334, -0.942580,
		0.775418, 0.575151, -0.260631,
		0.626918, -0.750572, 0.208842,
		24.267124, 34.759239, 35.075443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.406006, 35.206318, 34.339531>,  <23.828281, 35.284637, 34.929253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.406006, 35.206318, 34.339531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.350756, 34.847923, 34.508350>,  <24.317606, 34.632885, 34.609642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.350756, 34.847923, 34.508350>,  <24.406006, 35.206318, 34.339531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.350756, 34.847923, 34.508350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135689, -0.404996, -0.904194,
		0.981076, -0.182157, -0.065637,
		-0.138123, -0.895989, 0.422049,
		24.309319, 34.579128, 34.634964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.899654, 34.686478, 34.063374>,  <24.406006, 35.206318, 34.339531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.899654, 34.686478, 34.063374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542635, 34.532543, 34.157402>,  <24.328423, 34.440182, 34.213818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542635, 34.532543, 34.157402>,  <24.899654, 34.686478, 34.063374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.542635, 34.532543, 34.157402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107480, -0.324714, -0.939686,
		0.437955, -0.863981, 0.248461,
		-0.892549, -0.384835, 0.235071,
		24.274870, 34.417091, 34.227924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.490297, 34.352852, 34.455139>,  <24.899654, 34.686478, 34.063374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.490297, 34.352852, 34.455139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840311, 34.481602, 34.310528>,  <26.050320, 34.558853, 34.223759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840311, 34.481602, 34.310528>,  <25.490297, 34.352852, 34.455139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840311, 34.481602, 34.310528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165079, -0.900540, -0.402215,
		-0.455039, 0.292272, -0.841140,
		0.875036, 0.321878, -0.361533,
		26.102821, 34.578167, 34.202068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.491489, 34.383900, 33.780384>,  <25.490297, 34.352852, 34.455139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.491489, 34.383900, 33.780384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860497, 34.279743, 33.894337>,  <26.081902, 34.217251, 33.962708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860497, 34.279743, 33.894337>,  <25.491489, 34.383900, 33.780384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.860497, 34.279743, 33.894337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019022, -0.767896, -0.640292,
		0.385482, 0.585263, -0.713352,
		0.922519, -0.260390, 0.284877,
		26.137253, 34.201626, 33.979801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.026882, 34.174656, 33.200111>,  <25.491489, 34.383900, 33.780384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.026882, 34.174656, 33.200111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160049, 33.999630, 33.534225>,  <26.239950, 33.894615, 33.734695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160049, 33.999630, 33.534225>,  <26.026882, 34.174656, 33.200111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.160049, 33.999630, 33.534225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118321, -0.859431, -0.497372,
		0.935503, 0.264416, -0.234348,
		0.332919, -0.437565, 0.835286,
		26.259926, 33.868362, 33.784813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517632, 33.812393, 33.004913>,  <26.026882, 34.174656, 33.200111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.517632, 33.812393, 33.004913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422279, 33.649853, 33.357742>,  <26.365068, 33.552330, 33.569439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422279, 33.649853, 33.357742>,  <26.517632, 33.812393, 33.004913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422279, 33.649853, 33.357742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158658, -0.912351, -0.377417,
		0.958125, 0.049980, 0.281956,
		-0.238380, -0.406347, 0.882076,
		26.350765, 33.527950, 33.622364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012083, 33.384521, 33.130573>,  <26.517632, 33.812393, 33.004913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012083, 33.384521, 33.130573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698040, 33.236443, 33.329189>,  <26.509613, 33.147594, 33.448360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698040, 33.236443, 33.329189>,  <27.012083, 33.384521, 33.130573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698040, 33.236443, 33.329189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158321, -0.895030, -0.416960,
		0.598779, -0.248746, 0.761307,
		-0.785110, -0.370198, 0.496544,
		26.462507, 33.125381, 33.478153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269871, 32.688999, 33.278252>,  <27.012083, 33.384521, 33.130573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.269871, 32.688999, 33.278252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872692, 32.700001, 33.324375>,  <26.634384, 32.706600, 33.352051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872692, 32.700001, 33.324375>,  <27.269871, 32.688999, 33.278252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872692, 32.700001, 33.324375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074809, -0.899929, -0.429572,
		0.091957, -0.435169, 0.895641,
		-0.992949, 0.027500, 0.115309,
		26.574808, 32.708252, 33.358967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083530, 32.089706, 33.556004>,  <27.269871, 32.688999, 33.278252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083530, 32.089706, 33.556004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718815, 32.201412, 33.435570>,  <26.499985, 32.268436, 33.363312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718815, 32.201412, 33.435570>,  <27.083530, 32.089706, 33.556004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718815, 32.201412, 33.435570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182239, -0.932191, -0.312743,
		-0.368003, -0.230287, 0.900856,
		-0.911791, 0.279261, -0.301082,
		26.445278, 32.285191, 33.345245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.527147, 31.587679, 33.777264>,  <27.083530, 32.089706, 33.556004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.527147, 31.587679, 33.777264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347260, 31.771145, 33.470703>,  <26.239326, 31.881226, 33.286766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347260, 31.771145, 33.470703>,  <26.527147, 31.587679, 33.777264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.347260, 31.771145, 33.470703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125830, -0.882051, -0.454040,
		-0.884284, -0.107732, 0.454352,
		-0.449676, 0.458671, -0.766428,
		26.212343, 31.908745, 33.240780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815344, 31.345467, 33.761597>,  <26.527147, 31.587679, 33.777264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815344, 31.345467, 33.761597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933084, 31.477032, 33.402672>,  <26.003729, 31.555971, 33.187317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933084, 31.477032, 33.402672>,  <25.815344, 31.345467, 33.761597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.933084, 31.477032, 33.402672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135696, -0.915014, -0.379916,
		-0.946014, 0.233591, -0.224704,
		0.294353, 0.328915, -0.897314,
		26.021391, 31.575706, 33.133476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.321001, 31.059420, 33.210659>,  <25.815344, 31.345467, 33.761597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.321001, 31.059420, 33.210659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.651516, 31.156309, 33.007256>,  <25.849825, 31.214443, 32.885216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.651516, 31.156309, 33.007256>,  <25.321001, 31.059420, 33.210659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.651516, 31.156309, 33.007256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038818, -0.876171, -0.480435,
		-0.561912, 0.416716, -0.714565,
		0.826286, 0.242224, -0.508506,
		25.899403, 31.228977, 32.854702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.184464, 30.979443, 32.504913>,  <25.321001, 31.059420, 33.210659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.184464, 30.979443, 32.504913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.582134, 30.947931, 32.534325>,  <25.820736, 30.929024, 32.551971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.582134, 30.947931, 32.534325>,  <25.184464, 30.979443, 32.504913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.582134, 30.947931, 32.534325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042903, -0.915273, -0.400543,
		0.098855, 0.395056, -0.913323,
		0.994177, -0.078780, 0.073530,
		25.880386, 30.924297, 32.556385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.481825, 30.777033, 31.887112>,  <25.184464, 30.979443, 32.504913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.481825, 30.777033, 31.887112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732901, 30.653786, 32.173069>,  <25.883545, 30.579838, 32.344643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732901, 30.653786, 32.173069>,  <25.481825, 30.777033, 31.887112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732901, 30.653786, 32.173069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111305, -0.873379, -0.474152,
		0.770467, 0.377191, -0.513915,
		0.627688, -0.308117, 0.714893,
		25.921207, 30.561350, 32.387535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024881, 30.436152, 31.481205>,  <25.481825, 30.777033, 31.887112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.024881, 30.436152, 31.481205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.061880, 30.309629, 31.858860>,  <26.084080, 30.233715, 32.085453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.061880, 30.309629, 31.858860>,  <26.024881, 30.436152, 31.481205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061880, 30.309629, 31.858860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179616, -0.927346, -0.328279,
		0.979379, 0.199947, -0.028963,
		0.092497, -0.316307, 0.944137,
		26.089628, 30.214737, 32.142101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.538561, 29.914886, 31.516064>,  <26.024881, 30.436152, 31.481205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.538561, 29.914886, 31.516064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349461, 29.856470, 31.863668>,  <26.236000, 29.821421, 32.072231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349461, 29.856470, 31.863668>,  <26.538561, 29.914886, 31.516064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349461, 29.856470, 31.863668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210463, -0.976344, -0.049584,
		0.855694, 0.159454, 0.492303,
		-0.472751, -0.146040, 0.869010,
		26.207636, 29.812658, 32.124371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.993910, 29.402981, 31.841732>,  <26.538561, 29.914886, 31.516064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.993910, 29.402981, 31.841732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627892, 29.365093, 31.998558>,  <26.408279, 29.342361, 32.092655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627892, 29.365093, 31.998558>,  <26.993910, 29.402981, 31.841732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627892, 29.365093, 31.998558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046610, -0.990355, -0.130476,
		0.400643, -0.101118, 0.910637,
		-0.915048, -0.094719, 0.392066,
		26.353376, 29.336678, 32.116177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055363, 28.891546, 32.365479>,  <26.993910, 29.402981, 31.841732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055363, 28.891546, 32.365479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669535, 28.908052, 32.261246>,  <26.438038, 28.917955, 32.198704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669535, 28.908052, 32.261246>,  <27.055363, 28.891546, 32.365479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669535, 28.908052, 32.261246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017853, -0.975221, -0.220510,
		-0.263227, -0.217349, 0.939931,
		-0.964568, 0.041264, -0.260585,
		26.380163, 28.920431, 32.183071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749529, 28.325321, 32.632351>,  <27.055363, 28.891546, 32.365479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749529, 28.325321, 32.632351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453197, 28.392656, 32.372250>,  <26.275398, 28.433058, 32.216187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453197, 28.392656, 32.372250>,  <26.749529, 28.325321, 32.632351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.453197, 28.392656, 32.372250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186405, -0.981586, -0.041742,
		-0.645311, 0.090288, 0.758566,
		-0.740829, 0.168337, -0.650258,
		26.230949, 28.443157, 32.177174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037560, 27.983149, 32.859291>,  <26.749529, 28.325321, 32.632351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037560, 27.983149, 32.859291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056702, 28.030680, 32.462585>,  <26.068188, 28.059198, 32.224564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056702, 28.030680, 32.462585>,  <26.037560, 27.983149, 32.859291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.056702, 28.030680, 32.462585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272898, -0.953567, -0.127419,
		-0.960852, 0.276747, -0.013206,
		0.047856, 0.118827, -0.991761,
		26.071058, 28.066328, 32.165058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.649014, 27.451349, 32.666183>,  <26.037560, 27.983149, 32.859291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.649014, 27.451349, 32.666183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799410, 27.562012, 32.312439>,  <25.889648, 27.628408, 32.100193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799410, 27.562012, 32.312439>,  <25.649014, 27.451349, 32.666183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799410, 27.562012, 32.312439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053352, -0.959269, -0.277408,
		-0.925085, 0.057121, -0.375439,
		0.375993, 0.276657, -0.884359,
		25.912209, 27.645008, 32.047131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.272020, 27.127953, 32.131439>,  <25.649014, 27.451349, 32.666183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.272020, 27.127953, 32.131439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630993, 27.181807, 31.963398>,  <25.846376, 27.214119, 31.862574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630993, 27.181807, 31.963398>,  <25.272020, 27.127953, 32.131439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.630993, 27.181807, 31.963398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029742, -0.931659, -0.362114,
		-0.440145, 0.337468, -0.832098,
		0.897434, 0.134635, -0.420102,
		25.900223, 27.222197, 31.837368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.231506, 26.939821, 31.433395>,  <25.272020, 27.127953, 32.131439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.231506, 26.939821, 31.433395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623451, 26.918022, 31.510231>,  <25.858618, 26.904943, 31.556334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623451, 26.918022, 31.510231>,  <25.231506, 26.939821, 31.433395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.623451, 26.918022, 31.510231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023292, -0.924269, -0.381031,
		0.198308, 0.377832, -0.904387,
		0.979863, -0.054496, 0.192090,
		25.917410, 26.901672, 31.567858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.613890, 26.633438, 30.773857>,  <25.231506, 26.939821, 31.433395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.613890, 26.633438, 30.773857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850889, 26.589579, 31.093086>,  <25.993088, 26.563263, 31.284624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850889, 26.589579, 31.093086>,  <25.613890, 26.633438, 30.773857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850889, 26.589579, 31.093086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047769, -0.984168, -0.170680,
		0.804155, 0.139251, -0.577880,
		0.592498, -0.109648, 0.798075,
		26.028639, 26.556684, 31.332508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059816, 26.073412, 30.600300>,  <25.613890, 26.633438, 30.773857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059816, 26.073412, 30.600300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081823, 26.100170, 30.998796>,  <26.095028, 26.116224, 31.237894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081823, 26.100170, 30.998796>,  <26.059816, 26.073412, 30.600300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081823, 26.100170, 30.998796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078243, -0.994974, 0.062489,
		0.995415, 0.074512, -0.059972,
		0.055014, 0.066895, 0.996242,
		26.098328, 26.120239, 31.297668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254675, 25.384571, 30.710011>,  <26.059816, 26.073412, 30.600300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254675, 25.384571, 30.710011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109823, 25.541641, 31.048162>,  <26.022913, 25.635883, 31.251055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109823, 25.541641, 31.048162>,  <26.254675, 25.384571, 30.710011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.109823, 25.541641, 31.048162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440589, -0.871336, 0.215999,
		0.821428, -0.294246, 0.488544,
		-0.362129, 0.392674, 0.845381,
		26.001184, 25.659443, 31.301777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.990446, 24.800245, 30.927876>,  <26.254675, 25.384571, 30.710011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.990446, 24.800245, 30.927876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797369, 25.081205, 31.137119>,  <25.681522, 25.249783, 31.262665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797369, 25.081205, 31.137119>,  <25.990446, 24.800245, 30.927876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797369, 25.081205, 31.137119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522900, -0.710288, 0.471240,
		0.702556, -0.046069, 0.710135,
		-0.482691, 0.702402, 0.523107,
		25.652561, 25.291925, 31.294052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.904305, 24.533159, 31.653067>,  <25.990446, 24.800245, 30.927876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.904305, 24.533159, 31.653067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647888, 24.827066, 31.564358>,  <25.494038, 25.003410, 31.511131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647888, 24.827066, 31.564358>,  <25.904305, 24.533159, 31.653067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647888, 24.827066, 31.564358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761495, -0.572792, 0.303372,
		0.095878, 0.363353, 0.926705,
		-0.641040, 0.734768, -0.221773,
		25.455576, 25.047497, 31.497826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393766, 24.439709, 32.168793>,  <25.904305, 24.533159, 31.653067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393766, 24.439709, 32.168793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217993, 24.674280, 31.896614>,  <25.112528, 24.815023, 31.733309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217993, 24.674280, 31.896614>,  <25.393766, 24.439709, 32.168793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.217993, 24.674280, 31.896614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883523, -0.418885, 0.209577,
		-0.162125, 0.693281, 0.702194,
		-0.439434, 0.586427, -0.680442,
		25.086163, 24.850208, 31.692482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.337660, 24.379047, 32.942204>,  <25.393766, 24.439709, 32.168793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.337660, 24.379047, 32.942204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173769, 24.146292, 33.223209>,  <25.075434, 24.006638, 33.391815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173769, 24.146292, 33.223209>,  <25.337660, 24.379047, 32.942204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.173769, 24.146292, 33.223209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292361, 0.645736, 0.705372,
		-0.864088, 0.494399, -0.094454,
		-0.409727, -0.581889, 0.702516,
		25.050850, 23.971725, 33.433964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.813023, 24.809107, 33.321980>,  <25.337660, 24.379047, 32.942204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.813023, 24.809107, 33.321980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.974096, 24.514269, 33.539066>,  <25.070740, 24.337366, 33.669319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.974096, 24.514269, 33.539066>,  <24.813023, 24.809107, 33.321980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.974096, 24.514269, 33.539066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303325, 0.666864, 0.680652,
		-0.863621, -0.109468, 0.492114,
		0.402682, -0.737095, 0.542713,
		25.094900, 24.293140, 33.701881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.651997, 24.866798, 34.030567>,  <24.813023, 24.809107, 33.321980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.651997, 24.866798, 34.030567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.004042, 24.697172, 33.945175>,  <25.215269, 24.595396, 33.893940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.004042, 24.697172, 33.945175>,  <24.651997, 24.866798, 34.030567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.004042, 24.697172, 33.945175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474697, 0.778172, 0.411232,
		-0.008263, -0.463269, 0.886179,
		0.880111, -0.424064, -0.213482,
		25.268074, 24.569952, 33.881130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206100, 24.872791, 34.544651>,  <24.651997, 24.866798, 34.030567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.206100, 24.872791, 34.544651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.414907, 24.885933, 34.203732>,  <25.540192, 24.893818, 33.999180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.414907, 24.885933, 34.203732>,  <25.206100, 24.872791, 34.544651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.414907, 24.885933, 34.203732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527426, 0.772875, 0.352827,
		0.670314, -0.633708, 0.386126,
		0.522016, 0.032852, -0.852303,
		25.571512, 24.895788, 33.948040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.934406, 24.866953, 34.712959>,  <25.206100, 24.872791, 34.544651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.934406, 24.866953, 34.712959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.855528, 25.054655, 34.368656>,  <25.808201, 25.167276, 34.162075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.855528, 25.054655, 34.368656>,  <25.934406, 24.866953, 34.712959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.855528, 25.054655, 34.368656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523365, 0.792812, 0.312311,
		0.828977, -0.388906, -0.401932,
		-0.197197, 0.469256, -0.860762,
		25.796370, 25.195433, 34.110428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546242, 25.174114, 34.431641>,  <25.934406, 24.866953, 34.712959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546242, 25.174114, 34.431641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247946, 25.390467, 34.276043>,  <26.068968, 25.520279, 34.182686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247946, 25.390467, 34.276043>,  <26.546242, 25.174114, 34.431641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247946, 25.390467, 34.276043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556339, 0.826793, 0.083063,
		0.366545, -0.154469, -0.917488,
		-0.745742, 0.540881, -0.388994,
		26.024223, 25.552731, 34.159344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939075, 25.508099, 33.908337>,  <26.546242, 25.174114, 34.431641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939075, 25.508099, 33.908337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595758, 25.700836, 33.978943>,  <26.389769, 25.816479, 34.021309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595758, 25.700836, 33.978943>,  <26.939075, 25.508099, 33.908337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595758, 25.700836, 33.978943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485210, 0.873996, -0.026486,
		-0.167039, 0.062916, -0.983941,
		-0.858294, 0.481842, 0.176519,
		26.338270, 25.845388, 34.031898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015116, 26.267944, 33.488026>,  <26.939075, 25.508099, 33.908337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015116, 26.267944, 33.488026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737995, 26.284191, 33.776020>,  <26.571724, 26.293940, 33.948818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737995, 26.284191, 33.776020>,  <27.015116, 26.267944, 33.488026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737995, 26.284191, 33.776020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327738, 0.907078, 0.264193,
		-0.642352, 0.418999, -0.641735,
		-0.692800, 0.040616, 0.719985,
		26.530155, 26.296375, 33.992016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.671938, 26.827696, 33.396996>,  <27.015116, 26.267944, 33.488026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.671938, 26.827696, 33.396996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592905, 26.767342, 33.784439>,  <26.545486, 26.731129, 34.016903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592905, 26.767342, 33.784439>,  <26.671938, 26.827696, 33.396996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592905, 26.767342, 33.784439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103534, 0.979345, 0.173678,
		-0.974804, 0.134599, -0.177878,
		-0.197581, -0.150886, 0.968605,
		26.533630, 26.722076, 34.075020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.330605, 27.343348, 33.686321>,  <26.671938, 26.827696, 33.396996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.330605, 27.343348, 33.686321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488726, 27.205307, 34.026825>,  <26.583599, 27.122482, 34.231129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488726, 27.205307, 34.026825>,  <26.330605, 27.343348, 33.686321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488726, 27.205307, 34.026825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278289, 0.928181, 0.247053,
		-0.875380, 0.139235, 0.462951,
		0.395304, -0.345099, 0.851259,
		26.607317, 27.101778, 34.282204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255842, 27.875563, 34.018581>,  <26.330605, 27.343348, 33.686321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255842, 27.875563, 34.018581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470688, 27.642321, 34.262383>,  <26.599596, 27.502375, 34.408665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470688, 27.642321, 34.262383>,  <26.255842, 27.875563, 34.018581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470688, 27.642321, 34.262383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269667, 0.803364, 0.530929,
		-0.799242, -0.120806, 0.588742,
		0.537114, -0.583106, 0.609505,
		26.631823, 27.467388, 34.445232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966454, 27.949348, 34.785915>,  <26.255842, 27.875563, 34.018581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966454, 27.949348, 34.785915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346291, 27.827780, 34.755173>,  <26.574192, 27.754839, 34.736729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346291, 27.827780, 34.755173>,  <25.966454, 27.949348, 34.785915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.346291, 27.827780, 34.755173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293756, 0.777061, 0.556672,
		-0.109460, -0.551189, 0.827169,
		0.949592, -0.303920, -0.076858,
		26.631168, 27.736605, 34.732117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205820, 28.186424, 35.398659>,  <25.966454, 27.949348, 34.785915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205820, 28.186424, 35.398659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519493, 28.133097, 35.156242>,  <26.707697, 28.101099, 35.010792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519493, 28.133097, 35.156242>,  <26.205820, 28.186424, 35.398659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519493, 28.133097, 35.156242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470597, 0.764363, 0.440780,
		0.404468, -0.630852, 0.662141,
		0.784183, -0.133320, -0.606038,
		26.754747, 28.093102, 34.974430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792522, 28.227501, 35.750099>,  <26.205820, 28.186424, 35.398659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792522, 28.227501, 35.750099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930338, 28.307909, 35.383301>,  <27.013027, 28.356153, 35.163223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930338, 28.307909, 35.383301>,  <26.792522, 28.227501, 35.750099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930338, 28.307909, 35.383301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430164, 0.834417, 0.344540,
		0.834417, -0.513167, 0.201019,
		-0.344540, -0.201019, 0.916997,
		27.033701, 28.368216, 35.108200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.459423, 28.395636, 35.765148>,  <26.792522, 28.227501, 35.750099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.459423, 28.395636, 35.765148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367083, 28.562597, 35.413586>,  <27.311678, 28.662775, 35.202648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367083, 28.562597, 35.413586>,  <27.459423, 28.395636, 35.765148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367083, 28.562597, 35.413586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519755, 0.816530, 0.251264,
		0.822534, -0.398812, -0.405447,
		-0.230852, 0.417406, -0.878908,
		27.297827, 28.687819, 35.149914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068039, 28.755438, 35.796940>,  <27.459423, 28.395636, 35.765148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068039, 28.755438, 35.796940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.814081, 28.903648, 35.525757>,  <27.661707, 28.992575, 35.363049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.814081, 28.903648, 35.525757>,  <28.068039, 28.755438, 35.796940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814081, 28.903648, 35.525757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388706, 0.911540, 0.134171,
		0.667697, -0.178341, -0.722755,
		-0.634892, 0.370525, -0.677955,
		27.623613, 29.014807, 35.322369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378708, 29.214287, 35.405422>,  <28.068039, 28.755438, 35.796940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378708, 29.214287, 35.405422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006029, 29.321375, 35.307228>,  <27.782421, 29.385628, 35.248310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006029, 29.321375, 35.307228>,  <28.378708, 29.214287, 35.405422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006029, 29.321375, 35.307228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264631, 0.963245, 0.046138,
		0.248816, -0.021977, -0.968301,
		-0.931698, 0.267722, -0.245486,
		27.726521, 29.401691, 35.233582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431847, 29.723059, 34.906471>,  <28.378708, 29.214287, 35.405422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431847, 29.723059, 34.906471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072226, 29.758148, 35.078056>,  <27.856453, 29.779202, 35.181007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072226, 29.758148, 35.078056>,  <28.431847, 29.723059, 34.906471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072226, 29.758148, 35.078056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190393, 0.960576, 0.202593,
		-0.394282, 0.263813, -0.880309,
		-0.899051, 0.087726, 0.428966,
		27.802511, 29.784466, 35.206745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106035, 30.246004, 34.507816>,  <28.431847, 29.723059, 34.906471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106035, 30.246004, 34.507816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945551, 30.217291, 34.873085>,  <27.849260, 30.200064, 35.092247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945551, 30.217291, 34.873085>,  <28.106035, 30.246004, 34.507816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945551, 30.217291, 34.873085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180817, 0.971101, 0.155780,
		-0.897962, 0.227617, -0.376636,
		-0.401210, -0.071783, 0.913169,
		27.825188, 30.195757, 35.147038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515551, 30.609694, 34.497459>,  <28.106035, 30.246004, 34.507816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515551, 30.609694, 34.497459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608931, 30.616507, 34.886349>,  <27.664959, 30.620594, 35.119682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608931, 30.616507, 34.886349>,  <27.515551, 30.609694, 34.497459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608931, 30.616507, 34.886349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002251, 0.999853, -0.016974,
		-0.972366, 0.001774, 0.233453,
		0.233449, 0.017031, 0.972220,
		27.678965, 30.621616, 35.178013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180317, 31.099310, 34.695107>,  <27.515551, 30.609694, 34.497459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180317, 31.099310, 34.695107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423609, 31.081018, 35.012085>,  <27.569584, 31.070044, 35.202271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423609, 31.081018, 35.012085>,  <27.180317, 31.099310, 34.695107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423609, 31.081018, 35.012085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038943, 0.995418, 0.087331,
		-0.792806, -0.083977, 0.603660,
		0.608228, -0.045729, 0.792444,
		27.606077, 31.067301, 35.249817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801054, 31.493431, 35.216866>,  <27.180317, 31.099310, 34.695107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801054, 31.493431, 35.216866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189745, 31.469103, 35.308121>,  <27.422960, 31.454506, 35.362873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189745, 31.469103, 35.308121>,  <26.801054, 31.493431, 35.216866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189745, 31.469103, 35.308121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041613, 0.995244, 0.088075,
		-0.232408, -0.076092, 0.969637,
		0.971728, -0.060819, 0.228136,
		27.481264, 31.450857, 35.376560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849085, 32.015877, 35.648678>,  <26.801054, 31.493431, 35.216866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849085, 32.015877, 35.648678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229452, 31.937523, 35.552853>,  <27.457672, 31.890511, 35.495358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229452, 31.937523, 35.552853>,  <26.849085, 32.015877, 35.648678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229452, 31.937523, 35.552853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189490, 0.980626, -0.049662,
		0.244646, 0.001830, 0.969611,
		0.950916, -0.195881, -0.239559,
		27.514727, 31.878759, 35.480984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343685, 32.407970, 36.167027>,  <26.849085, 32.015877, 35.648678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343685, 32.407970, 36.167027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562016, 32.316929, 35.844471>,  <27.693014, 32.262306, 35.650936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562016, 32.316929, 35.844471>,  <27.343685, 32.407970, 36.167027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562016, 32.316929, 35.844471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319867, 0.946114, -0.050527,
		0.774440, -0.230360, 0.589217,
		0.545828, -0.227601, -0.806393,
		27.725763, 32.248650, 35.602554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.011173, 32.674004, 36.206520>,  <27.343685, 32.407970, 36.167027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.011173, 32.674004, 36.206520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026987, 32.616619, 35.810974>,  <28.036476, 32.582188, 35.573647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026987, 32.616619, 35.810974>,  <28.011173, 32.674004, 36.206520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026987, 32.616619, 35.810974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444765, 0.888724, -0.111151,
		0.894775, -0.435418, 0.098943,
		0.039536, -0.143461, -0.988866,
		28.038847, 32.573582, 35.514313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682278, 32.895462, 35.984749>,  <28.011173, 32.674004, 36.206520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682278, 32.895462, 35.984749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459982, 32.930515, 35.654060>,  <28.326605, 32.951550, 35.455647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459982, 32.930515, 35.654060>,  <28.682278, 32.895462, 35.984749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459982, 32.930515, 35.654060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488902, 0.838749, -0.239738,
		0.672404, -0.537420, -0.508972,
		-0.555740, 0.087636, -0.826724,
		28.293261, 32.956806, 35.406044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169397, 33.301220, 35.537514>,  <28.682278, 32.895462, 35.984749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169397, 33.301220, 35.537514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800228, 33.321686, 35.384888>,  <28.578726, 33.333965, 35.293312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800228, 33.321686, 35.384888>,  <29.169397, 33.301220, 35.537514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800228, 33.321686, 35.384888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267072, 0.798947, -0.538846,
		0.277282, -0.599220, -0.751032,
		-0.922923, 0.051167, -0.381569,
		28.523352, 33.337036, 35.270416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643114, 33.744366, 35.795139>,  <29.169397, 33.301220, 35.537514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643114, 33.744366, 35.795139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277534, 33.584862, 35.825306>,  <28.058187, 33.489159, 35.843407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277534, 33.584862, 35.825306>,  <28.643114, 33.744366, 35.795139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277534, 33.584862, 35.825306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357877, -0.704289, 0.613109,
		-0.191364, 0.587341, 0.786390,
		-0.913950, -0.398758, 0.075420,
		28.003349, 33.465233, 35.847931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322596, 34.066391, 35.187767>,  <28.643114, 33.744366, 35.795139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322596, 34.066391, 35.187767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230516, 34.387386, 34.967575>,  <28.175268, 34.579983, 34.835461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230516, 34.387386, 34.967575>,  <28.322596, 34.066391, 35.187767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230516, 34.387386, 34.967575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949553, 0.309024, 0.053408,
		0.212970, -0.510414, -0.833139,
		-0.230200, 0.802485, -0.550479,
		28.161457, 34.628132, 34.802433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831802, 34.057743, 34.654110>,  <28.322596, 34.066391, 35.187767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831802, 34.057743, 34.654110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693701, 34.423611, 34.738186>,  <28.610840, 34.643131, 34.788631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693701, 34.423611, 34.738186>,  <28.831802, 34.057743, 34.654110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693701, 34.423611, 34.738186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938240, 0.341746, 0.053986,
		-0.022451, 0.215845, -0.976169,
		-0.345255, 0.914670, 0.210187,
		28.590124, 34.698013, 34.801243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449432, 34.662937, 34.418991>,  <28.831802, 34.057743, 34.654110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449432, 34.662937, 34.418991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221767, 34.807613, 34.714352>,  <29.085169, 34.894417, 34.891567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221767, 34.807613, 34.714352>,  <29.449432, 34.662937, 34.418991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221767, 34.807613, 34.714352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811854, 0.389396, 0.435044,
		-0.130180, 0.847085, -0.515267,
		-0.569162, 0.361688, 0.738401,
		29.051020, 34.916119, 34.935871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824636, 35.281269, 34.493591>,  <29.449432, 34.662937, 34.418991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824636, 35.281269, 34.493591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618643, 35.200958, 34.826935>,  <29.495047, 35.152771, 35.026939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618643, 35.200958, 34.826935>,  <29.824636, 35.281269, 34.493591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618643, 35.200958, 34.826935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787412, 0.273426, 0.552468,
		-0.338786, 0.940705, 0.017287,
		-0.514982, -0.200780, 0.833355,
		29.464148, 35.140724, 35.076942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946405, 35.842037, 34.961674>,  <29.824636, 35.281269, 34.493591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946405, 35.842037, 34.961674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858017, 35.540073, 35.208668>,  <29.804983, 35.358894, 35.356865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858017, 35.540073, 35.208668>,  <29.946405, 35.842037, 34.961674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858017, 35.540073, 35.208668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763660, 0.259882, 0.591003,
		-0.606626, 0.602141, 0.519067,
		-0.220971, -0.754909, 0.617482,
		29.791725, 35.313602, 35.393913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825026, 35.917198, 35.836624>,  <29.946405, 35.842037, 34.961674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825026, 35.917198, 35.836624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985100, 35.555141, 35.779255>,  <30.081144, 35.337906, 35.744835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985100, 35.555141, 35.779255>,  <29.825026, 35.917198, 35.836624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985100, 35.555141, 35.779255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788694, 0.260463, 0.556885,
		-0.466705, -0.335972, 0.818114,
		0.400186, -0.905142, -0.143420,
		30.105156, 35.283600, 35.736229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074650, 35.661816, 36.551117>,  <29.825026, 35.917198, 35.836624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074650, 35.661816, 36.551117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275457, 35.467239, 36.265079>,  <30.395943, 35.350494, 36.093456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275457, 35.467239, 36.265079>,  <30.074650, 35.661816, 36.551117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275457, 35.467239, 36.265079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847613, 0.112447, 0.518563,
		-0.171840, -0.866449, 0.468762,
		0.502019, -0.486438, -0.715091,
		30.426064, 35.321308, 36.050552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489265, 35.183968, 36.908722>,  <30.074650, 35.661816, 36.551117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489265, 35.183968, 36.908722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654200, 35.216305, 36.545746>,  <30.753160, 35.235706, 36.327961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654200, 35.216305, 36.545746>,  <30.489265, 35.183968, 36.908722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654200, 35.216305, 36.545746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898276, 0.130024, 0.419755,
		0.151924, -0.988209, -0.019008,
		0.412335, 0.080846, -0.907438,
		30.777901, 35.240559, 36.273514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147430, 34.819332, 36.922077>,  <30.489265, 35.183968, 36.908722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147430, 34.819332, 36.922077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158394, 35.090290, 36.628033>,  <31.164972, 35.252865, 36.451607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158394, 35.090290, 36.628033>,  <31.147430, 34.819332, 36.922077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158394, 35.090290, 36.628033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776162, 0.449000, 0.442687,
		0.629937, -0.582696, -0.513463,
		0.027407, 0.677396, -0.735108,
		31.166616, 35.293510, 36.407501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821211, 34.878990, 36.754711>,  <31.147430, 34.819332, 36.922077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821211, 34.878990, 36.754711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652641, 35.223534, 36.641247>,  <31.551498, 35.430260, 36.573166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652641, 35.223534, 36.641247>,  <31.821211, 34.878990, 36.754711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652641, 35.223534, 36.641247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721348, 0.507963, 0.470777,
		0.549599, -0.006224, -0.835406,
		-0.421425, 0.861356, -0.283665,
		31.526215, 35.481941, 36.556149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352024, 35.213413, 36.504078>,  <31.821211, 34.878990, 36.754711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352024, 35.213413, 36.504078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093849, 35.507435, 36.587128>,  <31.938944, 35.683846, 36.636959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093849, 35.507435, 36.587128>,  <32.352024, 35.213413, 36.504078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093849, 35.507435, 36.587128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669561, 0.413685, 0.616889,
		0.367553, 0.537182, -0.759171,
		-0.645440, 0.735051, 0.207625,
		31.900217, 35.727951, 36.649414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802479, 35.657604, 36.612720>,  <32.352024, 35.213413, 36.504078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802479, 35.657604, 36.612720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481911, 35.853287, 36.750362>,  <32.289570, 35.970695, 36.832947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481911, 35.853287, 36.750362>,  <32.802479, 35.657604, 36.612720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481911, 35.853287, 36.750362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561283, 0.416393, 0.715247,
		0.206621, 0.766352, -0.608287,
		-0.801417, 0.489206, 0.344105,
		32.241486, 36.000050, 36.853592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017136, 36.270531, 36.631680>,  <32.802479, 35.657604, 36.612720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017136, 36.270531, 36.631680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713245, 36.218792, 36.886578>,  <32.530910, 36.187748, 37.039516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713245, 36.218792, 36.886578>,  <33.017136, 36.270531, 36.631680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713245, 36.218792, 36.886578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510976, 0.487332, 0.708104,
		-0.402142, 0.863584, -0.304146,
		-0.759727, -0.129347, 0.637247,
		32.485329, 36.179989, 37.077751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955856, 37.010189, 36.953197>,  <33.017136, 36.270531, 36.631680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955856, 37.010189, 36.953197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765495, 36.758415, 37.198906>,  <32.651279, 36.607349, 37.346329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765495, 36.758415, 37.198906>,  <32.955856, 37.010189, 36.953197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765495, 36.758415, 37.198906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379282, 0.483266, 0.789050,
		-0.793510, 0.608494, 0.008744,
		-0.475907, -0.629436, 0.614267,
		32.622723, 36.569584, 37.383186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701618, 37.435020, 37.417271>,  <32.955856, 37.010189, 36.953197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701618, 37.435020, 37.417271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695030, 37.078365, 37.598255>,  <32.691078, 36.864372, 37.706844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695030, 37.078365, 37.598255>,  <32.701618, 37.435020, 37.417271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695030, 37.078365, 37.598255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183885, 0.442101, 0.877914,
		-0.982810, 0.097658, 0.156677,
		-0.016468, -0.891633, 0.452459,
		32.690090, 36.810875, 37.733994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363762, 37.493053, 38.019417>,  <32.701618, 37.435020, 37.417271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363762, 37.493053, 38.019417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556145, 37.147621, 38.079952>,  <32.671574, 36.940361, 38.116272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556145, 37.147621, 38.079952>,  <32.363762, 37.493053, 38.019417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556145, 37.147621, 38.079952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162765, 0.257558, 0.952456,
		-0.861502, -0.433461, 0.264436,
		0.480960, -0.863583, 0.151334,
		32.700432, 36.888546, 38.125351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184956, 37.336182, 38.614033>,  <32.363762, 37.493053, 38.019417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184956, 37.336182, 38.614033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531021, 37.143482, 38.558315>,  <32.738663, 37.027863, 38.524887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531021, 37.143482, 38.558315>,  <32.184956, 37.336182, 38.614033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531021, 37.143482, 38.558315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250180, 0.173908, 0.952453,
		-0.434620, -0.858879, 0.270984,
		0.865168, -0.481750, -0.139290,
		32.790573, 36.998959, 38.516529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283215, 37.063087, 39.270809>,  <32.184956, 37.336182, 38.614033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283215, 37.063087, 39.270809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651405, 37.015762, 39.121830>,  <32.872322, 36.987366, 39.032440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651405, 37.015762, 39.121830>,  <32.283215, 37.063087, 39.270809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651405, 37.015762, 39.121830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386851, 0.140842, 0.911323,
		-0.055368, -0.982937, 0.175413,
		0.920479, -0.118317, -0.372452,
		32.927547, 36.980267, 39.010094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563663, 36.684605, 39.746040>,  <32.283215, 37.063087, 39.270809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563663, 36.684605, 39.746040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888306, 36.813896, 39.551388>,  <33.083092, 36.891472, 39.434597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888306, 36.813896, 39.551388>,  <32.563663, 36.684605, 39.746040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888306, 36.813896, 39.551388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474323, 0.121684, 0.871901,
		0.341044, -0.938463, -0.054557,
		0.811607, 0.323234, -0.486634,
		33.131786, 36.910866, 39.405399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218544, 36.282200, 39.877151>,  <32.563663, 36.684605, 39.746040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218544, 36.282200, 39.877151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294361, 36.665668, 39.792282>,  <33.339851, 36.895752, 39.741360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294361, 36.665668, 39.792282>,  <33.218544, 36.282200, 39.877151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294361, 36.665668, 39.792282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424814, 0.114747, 0.897979,
		0.885216, -0.260339, -0.385509,
		0.189543, 0.958675, -0.212171,
		33.351223, 36.953270, 39.728630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870121, 36.380291, 40.129192>,  <33.218544, 36.282200, 39.877151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870121, 36.380291, 40.129192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746658, 36.759552, 40.098911>,  <33.672581, 36.987110, 40.080742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746658, 36.759552, 40.098911>,  <33.870121, 36.380291, 40.129192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746658, 36.759552, 40.098911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488504, 0.226309, 0.842703,
		0.816147, 0.223121, -0.533030,
		-0.308654, 0.948157, -0.075706,
		33.654060, 37.043999, 40.076199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501263, 36.712685, 40.191704>,  <33.870121, 36.380291, 40.129192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501263, 36.712685, 40.191704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197754, 36.949375, 40.300602>,  <34.015648, 37.091389, 40.365940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197754, 36.949375, 40.300602>,  <34.501263, 36.712685, 40.191704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197754, 36.949375, 40.300602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366957, 0.043012, 0.929243,
		0.538149, 0.804990, -0.249775,
		-0.758774, 0.591727, 0.272250,
		33.970123, 37.126892, 40.382278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777699, 37.041195, 40.775955>,  <34.501263, 36.712685, 40.191704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777699, 37.041195, 40.775955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385555, 37.106014, 40.820927>,  <34.150269, 37.144905, 40.847908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385555, 37.106014, 40.820927>,  <34.777699, 37.041195, 40.775955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385555, 37.106014, 40.820927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156624, 0.293208, 0.943132,
		0.119869, 0.942215, -0.312829,
		-0.980357, 0.162049, 0.112427,
		34.091450, 37.154629, 40.854656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709396, 37.740063, 41.171539>,  <34.777699, 37.041195, 40.775955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709396, 37.740063, 41.171539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352303, 37.563847, 41.209396>,  <34.138046, 37.458118, 41.232109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352303, 37.563847, 41.209396>,  <34.709396, 37.740063, 41.171539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352303, 37.563847, 41.209396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101050, 0.400434, 0.910737,
		-0.439112, 0.803480, -0.401996,
		-0.892732, -0.440537, 0.094643,
		34.084484, 37.431686, 41.237789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275261, 38.186131, 41.564156>,  <34.709396, 37.740063, 41.171539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275261, 38.186131, 41.564156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077721, 37.842148, 41.615685>,  <33.959198, 37.635757, 41.646603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077721, 37.842148, 41.615685>,  <34.275261, 38.186131, 41.564156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077721, 37.842148, 41.615685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159393, 0.235165, 0.958797,
		-0.854815, 0.452965, -0.253206,
		-0.493847, -0.859953, 0.128823,
		33.929565, 37.584164, 41.654331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664230, 38.374290, 41.893322>,  <34.275261, 38.186131, 41.564156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664230, 38.374290, 41.893322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695675, 37.981953, 41.964603>,  <33.714542, 37.746548, 42.007370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695675, 37.981953, 41.964603>,  <33.664230, 38.374290, 41.893322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695675, 37.981953, 41.964603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053833, 0.174317, 0.983217,
		-0.995451, -0.086887, -0.039098,
		0.078613, -0.980849, 0.178201,
		33.719257, 37.687698, 42.018063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248745, 38.321785, 42.371994>,  <33.664230, 38.374290, 41.893322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248745, 38.321785, 42.371994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404343, 37.956200, 42.418232>,  <33.497700, 37.736851, 42.445972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404343, 37.956200, 42.418232>,  <33.248745, 38.321785, 42.371994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404343, 37.956200, 42.418232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315011, -0.014052, 0.948984,
		-0.865708, -0.405563, -0.293373,
		0.388995, -0.913959, 0.115592,
		33.521042, 37.682011, 42.452911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676239, 37.865616, 42.646660>,  <33.248745, 38.321785, 42.371994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676239, 37.865616, 42.646660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056999, 37.766815, 42.719196>,  <33.285454, 37.707535, 42.762718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056999, 37.766815, 42.719196>,  <32.676239, 37.865616, 42.646660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056999, 37.766815, 42.719196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215209, -0.117637, 0.969457,
		-0.218123, -0.961849, -0.165134,
		0.951897, -0.246999, 0.181339,
		33.342567, 37.692715, 42.773598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583355, 37.288383, 43.003773>,  <32.676239, 37.865616, 42.646660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583355, 37.288383, 43.003773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955502, 37.409443, 43.086544>,  <33.178791, 37.482079, 43.136208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955502, 37.409443, 43.086544>,  <32.583355, 37.288383, 43.003773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955502, 37.409443, 43.086544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183643, -0.103796, 0.977498,
		0.317314, -0.947434, -0.040990,
		0.930369, 0.302646, 0.206925,
		33.234612, 37.500237, 43.148621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832687, 36.831146, 43.609371>,  <32.583355, 37.288383, 43.003773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832687, 36.831146, 43.609371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070889, 37.152164, 43.594986>,  <33.213810, 37.344776, 43.586353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070889, 37.152164, 43.594986>,  <32.832687, 36.831146, 43.609371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070889, 37.152164, 43.594986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065880, -0.004168, 0.997819,
		0.800646, -0.596575, -0.055354,
		0.595505, 0.802546, -0.035965,
		33.249538, 37.392929, 43.584198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228970, 36.694092, 44.211021>,  <32.832687, 36.831146, 43.609371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228970, 36.694092, 44.211021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289661, 37.082878, 44.139183>,  <33.326077, 37.316151, 44.096081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289661, 37.082878, 44.139183>,  <33.228970, 36.694092, 44.211021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289661, 37.082878, 44.139183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184045, 0.206304, 0.961024,
		0.971137, -0.112758, 0.210188,
		0.151726, 0.971969, -0.179597,
		33.335178, 37.374470, 44.085304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623039, 36.941837, 44.711674>,  <33.228970, 36.694092, 44.211021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623039, 36.941837, 44.711674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474327, 37.286396, 44.573246>,  <33.385098, 37.493134, 44.490189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474327, 37.286396, 44.573246>,  <33.623039, 36.941837, 44.711674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474327, 37.286396, 44.573246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133227, 0.319426, 0.938199,
		0.918710, 0.394914, -0.003996,
		-0.371784, 0.861400, -0.346073,
		33.362793, 37.544815, 44.469425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933350, 37.458897, 45.126549>,  <33.623039, 36.941837, 44.711674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933350, 37.458897, 45.126549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593796, 37.606628, 44.975292>,  <33.390064, 37.695267, 44.884541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593796, 37.606628, 44.975292>,  <33.933350, 37.458897, 45.126549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593796, 37.606628, 44.975292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258894, 0.333189, 0.906619,
		0.460835, 0.867513, -0.187221,
		-0.848884, 0.369332, -0.378140,
		33.339130, 37.717426, 44.861851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861584, 38.020298, 45.498974>,  <33.933350, 37.458897, 45.126549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861584, 38.020298, 45.498974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506588, 37.973225, 45.320755>,  <33.293591, 37.944981, 45.213821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506588, 37.973225, 45.320755>,  <33.861584, 38.020298, 45.498974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506588, 37.973225, 45.320755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460386, 0.268886, 0.846017,
		0.020242, 0.955956, -0.292812,
		-0.887488, -0.117682, -0.445551,
		33.240341, 37.937920, 45.187088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457584, 38.637634, 45.445370>,  <33.861584, 38.020298, 45.498974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457584, 38.637634, 45.445370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201065, 38.330719, 45.444710>,  <33.047153, 38.146568, 45.444313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201065, 38.330719, 45.444710>,  <33.457584, 38.637634, 45.445370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201065, 38.330719, 45.444710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455552, 0.379010, 0.805496,
		-0.617424, 0.517315, -0.592599,
		-0.641296, -0.767292, -0.001654,
		33.008675, 38.100533, 45.444214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832066, 39.064377, 45.487270>,  <33.457584, 38.637634, 45.445370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832066, 39.064377, 45.487270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737038, 38.690960, 45.594643>,  <32.680019, 38.466911, 45.659065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737038, 38.690960, 45.594643>,  <32.832066, 39.064377, 45.487270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737038, 38.690960, 45.594643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356449, 0.340851, 0.869922,
		-0.903606, 0.110984, -0.413737,
		-0.237570, -0.933543, 0.268435,
		32.665768, 38.410896, 45.675175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163773, 39.169743, 45.803028>,  <32.832066, 39.064377, 45.487270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163773, 39.169743, 45.803028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293461, 38.813938, 45.931805>,  <32.371273, 38.600456, 46.009071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293461, 38.813938, 45.931805>,  <32.163773, 39.169743, 45.803028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293461, 38.813938, 45.931805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178172, 0.276816, 0.944260,
		-0.929051, -0.363509, -0.068738,
		0.324219, -0.889513, 0.321943,
		32.390728, 38.547085, 46.028389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986095, 39.090008, 46.509449>,  <32.163773, 39.169743, 45.803028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986095, 39.090008, 46.509449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203117, 38.754059, 46.503208>,  <32.333328, 38.552490, 46.499462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203117, 38.754059, 46.503208>,  <31.986095, 39.090008, 46.509449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203117, 38.754059, 46.503208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013742, -0.009700, 0.999858,
		-0.839909, -0.542691, 0.006279,
		0.542553, -0.839877, -0.015605,
		32.365883, 38.502094, 46.498528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586441, 38.555733, 46.816231>,  <31.986095, 39.090008, 46.509449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586441, 38.555733, 46.816231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977905, 38.478745, 46.844997>,  <32.212784, 38.432552, 46.862259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977905, 38.478745, 46.844997>,  <31.586441, 38.555733, 46.816231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977905, 38.478745, 46.844997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074935, -0.008419, 0.997153,
		-0.191323, -0.981265, -0.022663,
		0.978663, -0.192476, 0.071920,
		32.271503, 38.421001, 46.866573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651724, 38.095146, 47.383003>,  <31.586441, 38.555733, 46.816231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651724, 38.095146, 47.383003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014164, 38.261909, 47.354233>,  <32.231628, 38.361965, 47.336971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014164, 38.261909, 47.354233>,  <31.651724, 38.095146, 47.383003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014164, 38.261909, 47.354233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069659, 0.020683, 0.997357,
		0.417292, -0.908714, -0.010301,
		0.906099, 0.416906, -0.071930,
		32.285995, 38.386982, 47.332653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153198, 37.673832, 47.781578>,  <31.651724, 38.095146, 47.383003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153198, 37.673832, 47.781578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299858, 38.044266, 47.745934>,  <32.387856, 38.266525, 47.724545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299858, 38.044266, 47.745934>,  <32.153198, 37.673832, 47.781578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299858, 38.044266, 47.745934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091993, 0.059227, 0.993997,
		0.925799, -0.372650, -0.063477,
		0.366653, 0.926080, -0.089114,
		32.409855, 38.322090, 47.719200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716015, 37.566452, 48.268936>,  <32.153198, 37.673832, 47.781578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716015, 37.566452, 48.268936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654083, 37.956413, 48.204952>,  <32.616924, 38.190392, 48.166561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654083, 37.956413, 48.204952>,  <32.716015, 37.566452, 48.268936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654083, 37.956413, 48.204952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081474, 0.173956, 0.981377,
		0.984576, 0.138913, -0.106363,
		-0.154829, 0.974906, -0.159955,
		32.607635, 38.248886, 48.156967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974705, 37.827362, 48.860771>,  <32.716015, 37.566452, 48.268936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974705, 37.827362, 48.860771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773781, 38.147892, 48.730812>,  <32.653225, 38.340210, 48.652836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773781, 38.147892, 48.730812>,  <32.974705, 37.827362, 48.860771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773781, 38.147892, 48.730812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125488, 0.304205, 0.944305,
		0.855533, 0.515106, -0.052249,
		-0.502311, 0.801327, -0.324897,
		32.623089, 38.388290, 48.633343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260262, 38.426506, 49.153873>,  <32.974705, 37.827362, 48.860771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260262, 38.426506, 49.153873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878971, 38.485210, 49.048172>,  <32.650196, 38.520432, 48.984753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878971, 38.485210, 49.048172>,  <33.260262, 38.426506, 49.153873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878971, 38.485210, 49.048172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174968, 0.444969, 0.878288,
		0.246479, 0.883439, -0.398476,
		-0.953223, 0.146759, -0.264249,
		32.593002, 38.529240, 48.968899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180058, 39.072151, 49.309158>,  <33.260262, 38.426506, 49.153873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180058, 39.072151, 49.309158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817150, 38.903969, 49.305779>,  <32.599403, 38.803059, 49.303749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817150, 38.903969, 49.305779>,  <33.180058, 39.072151, 49.309158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817150, 38.903969, 49.305779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171583, 0.351747, 0.920235,
		-0.383950, 0.836354, -0.391274,
		-0.907272, -0.420460, -0.008451,
		32.544968, 38.777832, 49.303242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737366, 39.597477, 49.643333>,  <33.180058, 39.072151, 49.309158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737366, 39.597477, 49.643333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542706, 39.248711, 49.664989>,  <32.425911, 39.039452, 49.677982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542706, 39.248711, 49.664989>,  <32.737366, 39.597477, 49.643333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542706, 39.248711, 49.664989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193849, 0.168205, 0.966504,
		-0.851818, 0.459855, -0.250877,
		-0.486650, -0.871918, 0.054138,
		32.396709, 38.987137, 49.681232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040833, 39.741833, 49.934757>,  <32.737366, 39.597477, 49.643333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040833, 39.741833, 49.934757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173779, 39.371780, 50.008152>,  <32.253548, 39.149750, 50.052189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173779, 39.371780, 50.008152>,  <32.040833, 39.741833, 49.934757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173779, 39.371780, 50.008152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347344, 0.060810, 0.935764,
		-0.876860, -0.374753, -0.301126,
		0.332368, -0.925129, 0.183490,
		32.273491, 39.094242, 50.063198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459446, 39.405613, 50.162144>,  <32.040833, 39.741833, 49.934757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459446, 39.405613, 50.162144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785110, 39.227631, 50.311356>,  <31.980509, 39.120842, 50.400883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785110, 39.227631, 50.311356>,  <31.459446, 39.405613, 50.162144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785110, 39.227631, 50.311356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319628, 0.192901, 0.927700,
		-0.484747, -0.874529, 0.014831,
		0.814161, -0.444960, 0.373031,
		32.029358, 39.094143, 50.423264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731781, 39.716755, 50.299278>,  <31.459446, 39.405613, 50.162144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731781, 39.716755, 50.299278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349213, 39.643669, 50.208176>,  <30.119671, 39.599819, 50.153515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349213, 39.643669, 50.208176>,  <30.731781, 39.716755, 50.299278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349213, 39.643669, 50.208176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189050, -0.981948, -0.006120,
		-0.222522, -0.048910, 0.973700,
		-0.956423, -0.182716, -0.227752,
		30.062286, 39.588856, 50.139851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548605, 39.259304, 50.816608>,  <30.731781, 39.716755, 50.299278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548605, 39.259304, 50.816608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358000, 39.215347, 50.467701>,  <30.243637, 39.188972, 50.258354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358000, 39.215347, 50.467701>,  <30.548605, 39.259304, 50.816608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358000, 39.215347, 50.467701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152046, -0.987508, 0.041347,
		-0.865920, -0.112924, 0.487269,
		-0.476513, -0.109890, -0.872273,
		30.215046, 39.182381, 50.206020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930386, 38.554504, 50.539490>,  <30.548605, 39.259304, 50.816608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930386, 38.554504, 50.539490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957872, 38.697678, 50.911976>,  <30.974365, 38.783581, 51.135468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957872, 38.697678, 50.911976>,  <30.930386, 38.554504, 50.539490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957872, 38.697678, 50.911976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799214, -0.578423, 0.163350,
		0.597105, 0.733016, -0.325811,
		0.068719, 0.357930, 0.931217,
		30.978489, 38.805058, 51.191341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648512, 38.819069, 50.730633>,  <30.930386, 38.554504, 50.539490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648512, 38.819069, 50.730633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470907, 38.676144, 51.059311>,  <31.364344, 38.590389, 51.256516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470907, 38.676144, 51.059311>,  <31.648512, 38.819069, 50.730633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470907, 38.676144, 51.059311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820824, -0.529941, 0.213098,
		0.359305, 0.769083, 0.528594,
		-0.444013, -0.357315, 0.821692,
		31.337704, 38.568951, 51.305820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024887, 39.102734, 51.253269>,  <31.648512, 38.819069, 50.730633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024887, 39.102734, 51.253269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877743, 38.733715, 51.299877>,  <31.789455, 38.512302, 51.327843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877743, 38.733715, 51.299877>,  <32.024887, 39.102734, 51.253269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877743, 38.733715, 51.299877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926890, -0.373831, -0.033549,
		0.074509, 0.095660, 0.992622,
		-0.367864, -0.922550, 0.116520,
		31.767384, 38.456951, 51.334831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261780, 38.730820, 51.901325>,  <32.024887, 39.102734, 51.253269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261780, 38.730820, 51.901325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200871, 38.501766, 51.579105>,  <32.164326, 38.364334, 51.385773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200871, 38.501766, 51.579105>,  <32.261780, 38.730820, 51.901325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200871, 38.501766, 51.579105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957973, -0.285997, 0.022221,
		-0.243108, -0.768308, 0.592115,
		-0.152271, -0.572633, -0.805547,
		32.155190, 38.329975, 51.337440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397339, 37.998272, 52.046066>,  <32.261780, 38.730820, 51.901325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397339, 37.998272, 52.046066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457645, 38.079388, 51.659046>,  <32.493828, 38.128056, 51.426834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457645, 38.079388, 51.659046>,  <32.397339, 37.998272, 52.046066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457645, 38.079388, 51.659046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933982, -0.349951, 0.072192,
		-0.323955, -0.914556, -0.242159,
		0.150768, 0.202786, -0.967547,
		32.502876, 38.140224, 51.368782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432899, 37.306366, 51.636776>,  <32.397339, 37.998272, 52.046066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432899, 37.306366, 51.636776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639694, 37.622581, 51.505459>,  <32.763771, 37.812309, 51.426666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639694, 37.622581, 51.505459>,  <32.432899, 37.306366, 51.636776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639694, 37.622581, 51.505459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855932, -0.472774, 0.209441,
		0.010361, -0.389276, -0.921063,
		0.516985, 0.790537, -0.328295,
		32.794788, 37.859741, 51.406971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061134, 36.732071, 51.154572>,  <32.432899, 37.306366, 51.636776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061134, 36.732071, 51.154572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825876, 37.025879, 51.019184>,  <31.684721, 37.202164, 50.937950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825876, 37.025879, 51.019184>,  <32.061134, 36.732071, 51.154572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825876, 37.025879, 51.019184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416161, -0.633711, -0.652089,
		-0.693467, -0.242664, 0.678394,
		-0.588144, 0.734523, -0.338471,
		31.649433, 37.246235, 50.917645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293938, 36.511318, 50.962799>,  <32.061134, 36.732071, 51.154572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293938, 36.511318, 50.962799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488098, 36.780701, 50.739788>,  <31.604595, 36.942329, 50.605980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488098, 36.780701, 50.739788>,  <31.293938, 36.511318, 50.962799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488098, 36.780701, 50.739788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004065, -0.635946, -0.771722,
		-0.874282, 0.376862, -0.305952,
		0.485402, 0.673459, -0.557528,
		31.633718, 36.982738, 50.572529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876831, 36.672543, 50.230640>,  <31.293938, 36.511318, 50.962799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876831, 36.672543, 50.230640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273537, 36.716545, 50.204399>,  <31.511560, 36.742947, 50.188656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273537, 36.716545, 50.204399>,  <30.876831, 36.672543, 50.230640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273537, 36.716545, 50.204399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009204, -0.572062, -0.820158,
		-0.127750, 0.812800, -0.568363,
		0.991764, 0.110007, -0.065600,
		31.571066, 36.749546, 50.184719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983164, 36.488945, 49.538326>,  <30.876831, 36.672543, 50.230640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983164, 36.488945, 49.538326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368374, 36.509510, 49.644112>,  <31.599501, 36.521851, 49.707581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368374, 36.509510, 49.644112>,  <30.983164, 36.488945, 49.538326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368374, 36.509510, 49.644112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246714, -0.562668, -0.789010,
		0.108234, 0.825083, -0.554548,
		0.963025, 0.051417, 0.264459,
		31.657282, 36.524937, 49.723450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355780, 36.594379, 48.949764>,  <30.983164, 36.488945, 49.538326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355780, 36.594379, 48.949764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582670, 36.410934, 49.223385>,  <31.718805, 36.300869, 49.387558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582670, 36.410934, 49.223385>,  <31.355780, 36.594379, 48.949764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582670, 36.410934, 49.223385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383592, -0.587883, -0.712215,
		0.728773, 0.666385, -0.157544,
		0.567227, -0.458611, 0.684053,
		31.752838, 36.273350, 49.428600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003403, 36.604637, 48.622353>,  <31.355780, 36.594379, 48.949764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003403, 36.604637, 48.622353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010880, 36.309650, 48.892399>,  <32.015366, 36.132656, 49.054428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010880, 36.309650, 48.892399>,  <32.003403, 36.604637, 48.622353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010880, 36.309650, 48.892399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440811, -0.599989, -0.667607,
		0.897406, 0.310078, 0.313871,
		0.018691, -0.737471, 0.675120,
		32.016487, 36.088409, 49.094936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727993, 36.358051, 48.698536>,  <32.003403, 36.604637, 48.622353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727993, 36.358051, 48.698536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463245, 36.071777, 48.787731>,  <32.304398, 35.900013, 48.841248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463245, 36.071777, 48.787731>,  <32.727993, 36.358051, 48.698536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463245, 36.071777, 48.787731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469450, -0.627650, -0.621025,
		0.584416, -0.306356, 0.751401,
		-0.661872, -0.715682, 0.222990,
		32.264683, 35.857071, 48.854630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988079, 35.859516, 48.279613>,  <32.727993, 36.358051, 48.698536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988079, 35.859516, 48.279613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657021, 35.692513, 48.429646>,  <32.458385, 35.592308, 48.519665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657021, 35.692513, 48.429646>,  <32.988079, 35.859516, 48.279613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657021, 35.692513, 48.429646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125221, -0.788813, -0.601742,
		0.547103, -0.451062, 0.705139,
		-0.827646, -0.417513, 0.375080,
		32.408726, 35.567257, 48.542168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194611, 35.168606, 48.260452>,  <32.988079, 35.859516, 48.279613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194611, 35.168606, 48.260452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796295, 35.201050, 48.243317>,  <32.557308, 35.220516, 48.233036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796295, 35.201050, 48.243317>,  <33.194611, 35.168606, 48.260452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796295, 35.201050, 48.243317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016350, -0.616451, -0.787223,
		-0.090262, -0.783204, 0.615179,
		-0.995784, 0.081114, -0.042837,
		32.497559, 35.225384, 48.230465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933319, 34.376549, 48.296127>,  <33.194611, 35.168606, 48.260452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933319, 34.376549, 48.296127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626560, 34.585960, 48.147652>,  <32.442505, 34.711605, 48.058567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626560, 34.585960, 48.147652>,  <32.933319, 34.376549, 48.296127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626560, 34.585960, 48.147652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000807, -0.579177, -0.815201,
		-0.641766, -0.624878, 0.444594,
		-0.766900, 0.523527, -0.371192,
		32.396488, 34.743019, 48.036293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422661, 33.902222, 48.049973>,  <32.933319, 34.376549, 48.296127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422661, 33.902222, 48.049973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354042, 34.229958, 47.831158>,  <32.312870, 34.426601, 47.699867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354042, 34.229958, 47.831158>,  <32.422661, 33.902222, 48.049973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354042, 34.229958, 47.831158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049069, -0.547473, -0.835383,
		-0.983953, -0.170152, 0.053715,
		-0.171550, 0.819341, -0.547037,
		32.302578, 34.475761, 47.667046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046623, 33.709167, 47.568432>,  <32.422661, 33.902222, 48.049973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046623, 33.709167, 47.568432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172710, 34.049362, 47.400002>,  <32.248363, 34.253479, 47.298943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172710, 34.049362, 47.400002>,  <32.046623, 33.709167, 47.568432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172710, 34.049362, 47.400002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045864, -0.429525, -0.901890,
		-0.947910, 0.303605, -0.096388,
		0.315219, 0.850489, -0.421076,
		32.267277, 34.304508, 47.273678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649494, 33.840733, 46.955040>,  <32.046623, 33.709167, 47.568432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649494, 33.840733, 46.955040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971815, 34.065117, 46.879143>,  <32.165207, 34.199749, 46.833603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971815, 34.065117, 46.879143>,  <31.649494, 33.840733, 46.955040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971815, 34.065117, 46.879143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012903, -0.336970, -0.941427,
		-0.592045, 0.756155, -0.278769,
		0.805802, 0.560964, -0.189744,
		32.213554, 34.233406, 46.822220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518652, 34.266548, 46.362663>,  <31.649494, 33.840733, 46.955040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518652, 34.266548, 46.362663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917715, 34.255089, 46.387497>,  <32.157154, 34.248215, 46.402397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917715, 34.255089, 46.387497>,  <31.518652, 34.266548, 46.362663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917715, 34.255089, 46.387497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055473, -0.191725, -0.979880,
		0.039975, 0.981031, -0.189687,
		0.997660, -0.028648, 0.062085,
		32.217014, 34.246494, 46.406124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762760, 34.454880, 45.739338>,  <31.518652, 34.266548, 46.362663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762760, 34.454880, 45.739338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096928, 34.289658, 45.884369>,  <32.297428, 34.190525, 45.971386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096928, 34.289658, 45.884369>,  <31.762760, 34.454880, 45.739338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096928, 34.289658, 45.884369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282588, -0.242998, -0.927953,
		0.471398, 0.877690, -0.086281,
		0.835421, -0.413053, 0.362573,
		32.347553, 34.165741, 45.993141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269077, 34.768635, 45.400787>,  <31.762760, 34.454880, 45.739338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269077, 34.768635, 45.400787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412212, 34.420490, 45.536095>,  <32.498093, 34.211605, 45.617279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412212, 34.420490, 45.536095>,  <32.269077, 34.768635, 45.400787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412212, 34.420490, 45.536095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137313, -0.309268, -0.941010,
		0.923632, 0.383179, 0.008843,
		0.357840, -0.870361, 0.338265,
		32.519566, 34.159382, 45.637573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002316, 34.828640, 45.092499>,  <32.269077, 34.768635, 45.400787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002316, 34.828640, 45.092499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911556, 34.447952, 45.175205>,  <32.857101, 34.219540, 45.224831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911556, 34.447952, 45.175205>,  <33.002316, 34.828640, 45.092499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911556, 34.447952, 45.175205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179035, -0.249446, -0.951695,
		0.957321, -0.178918, 0.226989,
		-0.226897, -0.951717, 0.206768,
		32.843487, 34.162437, 45.237236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393364, 34.437027, 44.719078>,  <33.002316, 34.828640, 45.092499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393364, 34.437027, 44.719078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125751, 34.150646, 44.798889>,  <32.965183, 33.978817, 44.846775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125751, 34.150646, 44.798889>,  <33.393364, 34.437027, 44.719078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125751, 34.150646, 44.798889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070324, -0.206272, -0.975964,
		0.739899, -0.666982, 0.087654,
		-0.669032, -0.715951, 0.199526,
		32.925041, 33.935860, 44.858746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558006, 33.892208, 44.324238>,  <33.393364, 34.437027, 44.719078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558006, 33.892208, 44.324238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188187, 33.783802, 44.431385>,  <32.966293, 33.718758, 44.495674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188187, 33.783802, 44.431385>,  <33.558006, 33.892208, 44.324238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188187, 33.783802, 44.431385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125168, -0.447973, -0.885242,
		0.359914, -0.851981, 0.380251,
		-0.924551, -0.271016, 0.267873,
		32.910820, 33.702496, 44.511745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438515, 33.144279, 44.063740>,  <33.558006, 33.892208, 44.324238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438515, 33.144279, 44.063740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088428, 33.334908, 44.096905>,  <32.878376, 33.449284, 44.116802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088428, 33.334908, 44.096905>,  <33.438515, 33.144279, 44.063740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088428, 33.334908, 44.096905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336888, -0.477517, -0.811470,
		-0.347127, -0.738147, 0.578482,
		-0.875220, 0.476567, 0.082914,
		32.825863, 33.477879, 44.121780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014908, 32.633434, 43.941380>,  <33.438515, 33.144279, 44.063740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014908, 32.633434, 43.941380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760284, 32.937862, 43.891476>,  <32.607510, 33.120518, 43.861534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760284, 32.937862, 43.891476>,  <33.014908, 32.633434, 43.941380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760284, 32.937862, 43.891476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472402, -0.512644, -0.716961,
		-0.609614, -0.397452, 0.685859,
		-0.636559, 0.761070, -0.124758,
		32.569317, 33.166183, 43.854050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386181, 32.355446, 43.761864>,  <33.014908, 32.633434, 43.941380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386181, 32.355446, 43.761864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299038, 32.722408, 43.628654>,  <32.246750, 32.942585, 43.548729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299038, 32.722408, 43.628654>,  <32.386181, 32.355446, 43.761864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299038, 32.722408, 43.628654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462618, -0.397518, -0.792442,
		-0.859372, -0.018582, 0.511012,
		-0.217862, 0.917406, -0.333020,
		32.233681, 32.997631, 43.528748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703976, 32.281017, 43.561306>,  <32.386181, 32.355446, 43.761864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703976, 32.281017, 43.561306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848114, 32.596992, 43.362854>,  <31.934597, 32.786579, 43.243782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848114, 32.596992, 43.362854>,  <31.703976, 32.281017, 43.561306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848114, 32.596992, 43.362854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344407, -0.381612, -0.857762,
		-0.866910, 0.479961, 0.134549,
		0.360347, 0.789943, -0.496126,
		31.956219, 32.833977, 43.214016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257376, 32.331024, 42.995354>,  <31.703976, 32.281017, 43.561306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257376, 32.331024, 42.995354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543177, 32.586346, 42.880772>,  <31.714657, 32.739536, 42.812023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543177, 32.586346, 42.880772>,  <31.257376, 32.331024, 42.995354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543177, 32.586346, 42.880772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296111, -0.095069, -0.950411,
		-0.633882, 0.763894, 0.121081,
		0.714502, 0.638301, -0.286459,
		31.757526, 32.777836, 42.794834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860296, 32.934780, 42.682083>,  <31.257376, 32.331024, 42.995354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860296, 32.934780, 42.682083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241222, 32.893738, 42.567146>,  <31.469778, 32.869114, 42.498184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241222, 32.893738, 42.567146>,  <30.860296, 32.934780, 42.682083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241222, 32.893738, 42.567146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297960, -0.110042, -0.948215,
		0.065674, 0.988617, -0.135367,
		0.952317, -0.102607, -0.287341,
		31.526917, 32.862957, 42.480946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921331, 33.231125, 42.033024>,  <30.860296, 32.934780, 42.682083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921331, 33.231125, 42.033024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268120, 33.031811, 42.036457>,  <31.476192, 32.912224, 42.038517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268120, 33.031811, 42.036457>,  <30.921331, 33.231125, 42.033024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268120, 33.031811, 42.036457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042033, -0.090271, -0.995030,
		0.496582, 0.862301, -0.099207,
		0.866971, -0.498284, 0.008582,
		31.528212, 32.882324, 42.039032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331579, 33.596382, 41.575066>,  <30.921331, 33.231125, 42.033024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331579, 33.596382, 41.575066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492641, 33.232590, 41.616451>,  <31.589279, 33.014313, 41.641285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492641, 33.232590, 41.616451>,  <31.331579, 33.596382, 41.575066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492641, 33.232590, 41.616451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210257, -0.201912, -0.956569,
		0.890876, 0.363413, -0.272526,
		0.402656, -0.909485, 0.103468,
		31.613438, 32.959743, 41.647491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711952, 33.547184, 41.014904>,  <31.331579, 33.596382, 41.575066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711952, 33.547184, 41.014904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660183, 33.165916, 41.124245>,  <31.629122, 32.937157, 41.189850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660183, 33.165916, 41.124245>,  <31.711952, 33.547184, 41.014904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660183, 33.165916, 41.124245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080077, -0.264721, -0.960994,
		0.988351, -0.146264, -0.042066,
		-0.129423, -0.953168, 0.273349,
		31.621357, 32.879967, 41.206249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093105, 33.125393, 40.619545>,  <31.711952, 33.547184, 41.014904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093105, 33.125393, 40.619545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827116, 32.857914, 40.752605>,  <31.667522, 32.697426, 40.832443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827116, 32.857914, 40.752605>,  <32.093105, 33.125393, 40.619545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827116, 32.857914, 40.752605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097980, -0.363438, -0.926452,
		0.740415, -0.648656, 0.176156,
		-0.664970, -0.668699, 0.332650,
		31.627625, 32.657303, 40.852402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403530, 32.460979, 40.365566>,  <32.093105, 33.125393, 40.619545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403530, 32.460979, 40.365566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012394, 32.461353, 40.449314>,  <31.777714, 32.461578, 40.499565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012394, 32.461353, 40.449314>,  <32.403530, 32.460979, 40.365566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012394, 32.461353, 40.449314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206569, -0.167434, -0.964000,
		0.034156, -0.985883, 0.163916,
		-0.977835, 0.000934, 0.209372,
		31.719044, 32.461636, 40.512127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107235, 31.776091, 39.995277>,  <32.403530, 32.460979, 40.365566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107235, 31.776091, 39.995277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809786, 32.035397, 40.060734>,  <31.631317, 32.190979, 40.100010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809786, 32.035397, 40.060734>,  <32.107235, 31.776091, 39.995277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809786, 32.035397, 40.060734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311924, -0.119882, -0.942514,
		-0.591383, -0.751916, 0.291357,
		-0.743619, 0.648268, 0.163645,
		31.586700, 32.229877, 40.109829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550228, 31.449945, 39.512413>,  <32.107235, 31.776091, 39.995277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550228, 31.449945, 39.512413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431484, 31.818302, 39.613472>,  <31.360237, 32.039318, 39.674107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431484, 31.818302, 39.613472>,  <31.550228, 31.449945, 39.512413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431484, 31.818302, 39.613472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322653, 0.152284, -0.934186,
		-0.898760, -0.358840, 0.251922,
		-0.296860, 0.920893, 0.252648,
		31.342426, 32.094570, 39.689266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816305, 31.540390, 39.341984>,  <31.550228, 31.449945, 39.512413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816305, 31.540390, 39.341984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952196, 31.915358, 39.372540>,  <31.033731, 32.140339, 39.390873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952196, 31.915358, 39.372540>,  <30.816305, 31.540390, 39.341984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952196, 31.915358, 39.372540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349029, 0.201073, -0.915286,
		-0.873364, 0.284287, 0.395496,
		0.339728, 0.937417, 0.076385,
		31.054115, 32.196583, 39.395454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304249, 31.986683, 39.217468>,  <30.816305, 31.540390, 39.341984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304249, 31.986683, 39.217468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626877, 32.210300, 39.140617>,  <30.820454, 32.344471, 39.094505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626877, 32.210300, 39.140617>,  <30.304249, 31.986683, 39.217468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626877, 32.210300, 39.140617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336692, 0.167312, -0.926631,
		-0.485882, 0.812082, 0.323175,
		0.806571, 0.559044, -0.192128,
		30.868849, 32.378014, 39.082977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948715, 32.587254, 38.883690>,  <30.304249, 31.986683, 39.217468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948715, 32.587254, 38.883690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336124, 32.629059, 38.793324>,  <30.568569, 32.654140, 38.739101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336124, 32.629059, 38.793324>,  <29.948715, 32.587254, 38.883690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336124, 32.629059, 38.793324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235822, 0.094698, -0.967171,
		-0.079688, 0.990004, 0.116364,
		0.968523, 0.104513, -0.225919,
		30.626682, 32.660412, 38.725548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082621, 33.279507, 38.552830>,  <29.948715, 32.587254, 38.883690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082621, 33.279507, 38.552830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383360, 33.047634, 38.427170>,  <30.563805, 32.908508, 38.351776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383360, 33.047634, 38.427170>,  <30.082621, 33.279507, 38.552830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383360, 33.047634, 38.427170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265024, 0.170570, -0.949036,
		0.603726, 0.796788, -0.025388,
		0.751849, -0.579686, -0.314145,
		30.608915, 32.873730, 38.332928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371946, 33.593048, 37.962109>,  <30.082621, 33.279507, 38.552830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371946, 33.593048, 37.962109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491590, 33.211876, 37.942307>,  <30.563377, 32.983173, 37.930424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491590, 33.211876, 37.942307>,  <30.371946, 33.593048, 37.962109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491590, 33.211876, 37.942307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169011, -0.001842, -0.985612,
		0.939132, 0.303173, -0.161607,
		0.299109, -0.952934, -0.049510,
		30.581324, 32.925995, 37.927452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843433, 33.524036, 37.369297>,  <30.371946, 33.593048, 37.962109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843433, 33.524036, 37.369297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696117, 33.156097, 37.423321>,  <30.607729, 32.935333, 37.455734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696117, 33.156097, 37.423321>,  <30.843433, 33.524036, 37.369297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696117, 33.156097, 37.423321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125553, -0.094736, -0.987553,
		0.921195, -0.380662, -0.080600,
		-0.368288, -0.919849, 0.135063,
		30.585630, 32.880142, 37.463840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124697, 33.260677, 36.864788>,  <30.843433, 33.524036, 37.369297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124697, 33.260677, 36.864788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856455, 32.979095, 36.958366>,  <30.695509, 32.810146, 37.014515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856455, 32.979095, 36.958366>,  <31.124697, 33.260677, 36.864788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856455, 32.979095, 36.958366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253778, -0.078632, -0.964061,
		0.697054, -0.705876, -0.125918,
		-0.670607, -0.703957, 0.233947,
		30.655273, 32.767910, 37.028549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300520, 32.727142, 36.474087>,  <31.124697, 33.260677, 36.864788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300520, 32.727142, 36.474087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914856, 32.766266, 36.572742>,  <30.683458, 32.789742, 36.631935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914856, 32.766266, 36.572742>,  <31.300520, 32.727142, 36.474087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914856, 32.766266, 36.572742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252047, -0.047297, -0.966559,
		-0.082877, -0.994080, 0.070256,
		-0.964159, 0.097814, 0.246635,
		30.625608, 32.795609, 36.646732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812397, 32.191109, 36.541508>,  <31.300520, 32.727142, 36.474087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812397, 32.191109, 36.541508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573219, 31.870863, 36.556904>,  <31.429712, 31.678717, 36.566139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573219, 31.870863, 36.556904>,  <31.812397, 32.191109, 36.541508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573219, 31.870863, 36.556904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801506, 0.596810, -0.037491,
		0.007045, -0.053266, -0.998555,
		-0.597945, -0.800613, 0.038488,
		31.393835, 31.630678, 36.568451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488388, 32.212067, 36.558315>,  <31.812397, 32.191109, 36.541508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488388, 32.212067, 36.558315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847252, 32.156147, 36.390717>,  <33.062569, 32.122593, 36.290157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847252, 32.156147, 36.390717>,  <32.488388, 32.212067, 36.558315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847252, 32.156147, 36.390717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360927, -0.314799, 0.877857,
		-0.254621, -0.938807, -0.231969,
		0.897162, -0.139797, -0.418995,
		33.116402, 32.114208, 36.265018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656521, 31.497498, 36.645023>,  <32.488388, 32.212067, 36.558315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656521, 31.497498, 36.645023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990368, 31.714355, 36.606052>,  <33.190678, 31.844469, 36.582672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990368, 31.714355, 36.606052>,  <32.656521, 31.497498, 36.645023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990368, 31.714355, 36.606052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328143, -0.347306, 0.878465,
		0.442418, -0.765153, -0.467769,
		0.834619, 0.542143, -0.097425,
		33.240753, 31.876999, 36.576824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976044, 31.212719, 37.139702>,  <32.656521, 31.497498, 36.645023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976044, 31.212719, 37.139702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244560, 31.494728, 37.048218>,  <33.405670, 31.663935, 36.993328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244560, 31.494728, 37.048218>,  <32.976044, 31.212719, 37.139702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244560, 31.494728, 37.048218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385447, -0.068502, 0.920184,
		0.633086, -0.705866, -0.317735,
		0.671292, 0.705025, -0.228706,
		33.445950, 31.706236, 36.979607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561085, 30.871855, 37.317326>,  <32.976044, 31.212719, 37.139702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561085, 30.871855, 37.317326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598579, 31.269482, 37.339378>,  <33.621078, 31.508059, 37.352612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598579, 31.269482, 37.339378>,  <33.561085, 30.871855, 37.317326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598579, 31.269482, 37.339378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344006, -0.084308, 0.935175,
		0.934277, -0.068698, -0.349868,
		0.093741, 0.994069, 0.055134,
		33.626701, 31.567703, 37.355919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230690, 31.036095, 37.663754>,  <33.561085, 30.871855, 37.317326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230690, 31.036095, 37.663754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034153, 31.381634, 37.708210>,  <33.916229, 31.588957, 37.734882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034153, 31.381634, 37.708210>,  <34.230690, 31.036095, 37.663754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034153, 31.381634, 37.708210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362509, 0.086804, 0.927929,
		0.791940, 0.496221, -0.355802,
		-0.491343, 0.863846, 0.111141,
		33.886749, 31.640787, 37.741554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672123, 31.670809, 37.839504>,  <34.230690, 31.036095, 37.663754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672123, 31.670809, 37.839504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318626, 31.806084, 37.968891>,  <34.106529, 31.887249, 38.046524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318626, 31.806084, 37.968891>,  <34.672123, 31.670809, 37.839504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318626, 31.806084, 37.968891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438234, 0.355576, 0.825540,
		0.164170, 0.871318, -0.462442,
		-0.883742, 0.338186, 0.323467,
		34.053505, 31.907539, 38.065929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752964, 32.415512, 38.199615>,  <34.672123, 31.670809, 37.839504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752964, 32.415512, 38.199615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433144, 32.230766, 38.353184>,  <34.241249, 32.119919, 38.445324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433144, 32.230766, 38.353184>,  <34.752964, 32.415512, 38.199615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433144, 32.230766, 38.353184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291236, 0.260894, 0.920389,
		-0.525258, 0.847712, -0.074087,
		-0.799553, -0.461865, 0.383921,
		34.193279, 32.092205, 38.468361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657642, 32.810257, 38.772423>,  <34.752964, 32.415512, 38.199615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657642, 32.810257, 38.772423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395027, 32.516296, 38.840401>,  <34.237457, 32.339920, 38.881187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395027, 32.516296, 38.840401>,  <34.657642, 32.810257, 38.772423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395027, 32.516296, 38.840401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294465, -0.042292, 0.954726,
		-0.694440, 0.676857, 0.244168,
		-0.656539, -0.734899, 0.169942,
		34.198067, 32.295826, 38.891384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256462, 33.010574, 39.312321>,  <34.657642, 32.810257, 38.772423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256462, 33.010574, 39.312321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206783, 32.613869, 39.324802>,  <34.176975, 32.375843, 39.332291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206783, 32.613869, 39.324802>,  <34.256462, 33.010574, 39.312321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206783, 32.613869, 39.324802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248412, -0.000629, 0.968654,
		-0.960659, 0.128060, 0.246445,
		-0.124201, -0.991766, 0.031208,
		34.169521, 32.316338, 39.334164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669098, 32.860538, 39.716248>,  <34.256462, 33.010574, 39.312321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669098, 32.860538, 39.716248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925446, 32.553768, 39.729607>,  <34.079254, 32.369705, 39.737621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925446, 32.553768, 39.729607>,  <33.669098, 32.860538, 39.716248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925446, 32.553768, 39.729607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005880, 0.038606, 0.999237,
		-0.767629, -0.640575, 0.020232,
		0.640868, -0.766925, 0.033402,
		34.117706, 32.323692, 39.739628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463642, 32.529240, 40.210602>,  <33.669098, 32.860538, 39.716248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463642, 32.529240, 40.210602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845978, 32.419907, 40.167397>,  <34.075378, 32.354305, 40.141472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845978, 32.419907, 40.167397>,  <33.463642, 32.529240, 40.210602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845978, 32.419907, 40.167397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120772, 0.030223, 0.992220,
		-0.267942, -0.961445, 0.061899,
		0.955835, -0.273333, -0.108017,
		34.132729, 32.337906, 40.134991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571419, 32.017494, 40.715000>,  <33.463642, 32.529240, 40.210602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571419, 32.017494, 40.715000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949493, 32.117214, 40.630646>,  <34.176338, 32.177048, 40.580032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949493, 32.117214, 40.630646>,  <33.571419, 32.017494, 40.715000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949493, 32.117214, 40.630646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260165, -0.184658, 0.947743,
		0.197332, -0.950658, -0.239395,
		0.945185, 0.249302, -0.210889,
		34.233047, 32.192005, 40.567379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025192, 31.454071, 41.002499>,  <33.571419, 32.017494, 40.715000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025192, 31.454071, 41.002499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260067, 31.772915, 40.946178>,  <34.400993, 31.964220, 40.912384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260067, 31.772915, 40.946178>,  <34.025192, 31.454071, 41.002499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260067, 31.772915, 40.946178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463402, -0.188411, 0.865887,
		0.663677, -0.573690, -0.480014,
		0.587190, 0.797108, -0.140805,
		34.436226, 32.012047, 40.903938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605560, 31.165382, 41.172997>,  <34.025192, 31.454071, 41.002499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605560, 31.165382, 41.172997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649773, 31.562325, 41.194965>,  <34.676300, 31.800489, 41.208145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649773, 31.562325, 41.194965>,  <34.605560, 31.165382, 41.172997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649773, 31.562325, 41.194965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394651, -0.094540, 0.913954,
		0.912159, -0.079343, -0.402083,
		0.110529, 0.992354, 0.054922,
		34.682930, 31.860031, 41.211441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281929, 31.222681, 41.574245>,  <34.605560, 31.165382, 41.172997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281929, 31.222681, 41.574245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115650, 31.586447, 41.579430>,  <35.015884, 31.804707, 41.582542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115650, 31.586447, 41.579430>,  <35.281929, 31.222681, 41.574245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115650, 31.586447, 41.579430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365313, 0.153900, 0.918075,
		0.832913, 0.386374, -0.396195,
		-0.415694, 0.909412, 0.012962,
		34.990940, 31.859270, 41.583317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755882, 31.613859, 41.881653>,  <35.281929, 31.222681, 41.574245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755882, 31.613859, 41.881653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410603, 31.808367, 41.935944>,  <35.203434, 31.925072, 41.968517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410603, 31.808367, 41.935944>,  <35.755882, 31.613859, 41.881653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410603, 31.808367, 41.935944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213258, 0.107527, 0.971061,
		0.457604, 0.867168, -0.196518,
		-0.863203, 0.486270, 0.135726,
		35.151642, 31.954248, 41.976662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930298, 32.105663, 42.375393>,  <35.755882, 31.613859, 41.881653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930298, 32.105663, 42.375393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530411, 32.102005, 42.384148>,  <35.290478, 32.099808, 42.389400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530411, 32.102005, 42.384148>,  <35.930298, 32.105663, 42.375393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530411, 32.102005, 42.384148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020165, 0.158406, 0.987168,
		-0.012499, 0.987332, -0.158176,
		-0.999718, -0.009149, 0.021890,
		35.230495, 32.099262, 42.390713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690308, 32.722210, 42.638550>,  <35.930298, 32.105663, 42.375393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690308, 32.722210, 42.638550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367775, 32.495075, 42.704758>,  <35.174255, 32.358795, 42.744484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367775, 32.495075, 42.704758>,  <35.690308, 32.722210, 42.638550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367775, 32.495075, 42.704758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022517, 0.309113, 0.950759,
		-0.591038, 0.762898, -0.262033,
		-0.806329, -0.567835, 0.165519,
		35.125877, 32.324726, 42.754414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196465, 33.119957, 43.040955>,  <35.690308, 32.722210, 42.638550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196465, 33.119957, 43.040955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092651, 32.740654, 43.114105>,  <35.030361, 32.513073, 43.157993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092651, 32.740654, 43.114105>,  <35.196465, 33.119957, 43.040955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092651, 32.740654, 43.114105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119372, 0.219412, 0.968302,
		-0.958328, 0.229478, -0.170141,
		-0.259535, -0.948261, 0.182875,
		35.014790, 32.456177, 43.168968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486198, 33.125797, 43.474827>,  <35.196465, 33.119957, 43.040955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486198, 33.125797, 43.474827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645588, 32.762356, 43.524891>,  <34.741222, 32.544292, 43.554928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645588, 32.762356, 43.524891>,  <34.486198, 33.125797, 43.474827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645588, 32.762356, 43.524891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129879, 0.079189, 0.988363,
		-0.907937, -0.410093, -0.086453,
		0.398475, -0.908599, 0.125162,
		34.765129, 32.489777, 43.562439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030437, 32.739506, 43.798664>,  <34.486198, 33.125797, 43.474827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030437, 32.739506, 43.798664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370144, 32.542046, 43.873562>,  <34.573967, 32.423569, 43.918503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370144, 32.542046, 43.873562>,  <34.030437, 32.739506, 43.798664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370144, 32.542046, 43.873562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151688, 0.111566, 0.982112,
		-0.505709, -0.862475, 0.019868,
		0.849264, -0.493649, 0.187247,
		34.624924, 32.393951, 43.929737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855965, 32.148521, 44.262981>,  <34.030437, 32.739506, 43.798664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855965, 32.148521, 44.262981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234119, 32.275612, 44.292068>,  <34.461014, 32.351864, 44.309521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234119, 32.275612, 44.292068>,  <33.855965, 32.148521, 44.262981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234119, 32.275612, 44.292068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080162, 0.010388, 0.996728,
		0.315928, -0.948127, 0.035290,
		0.945391, 0.317723, 0.072722,
		34.517738, 32.370930, 44.313885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304142, 31.753147, 44.820984>,  <33.855965, 32.148521, 44.262981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304142, 31.753147, 44.820984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476887, 32.109985, 44.767822>,  <34.580532, 32.324089, 44.735924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476887, 32.109985, 44.767822>,  <34.304142, 31.753147, 44.820984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476887, 32.109985, 44.767822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082245, 0.107794, 0.990766,
		0.898183, -0.438804, -0.026819,
		0.431861, 0.892094, -0.132908,
		34.606445, 32.377613, 44.727951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809280, 31.751017, 45.356228>,  <34.304142, 31.753147, 44.820984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809280, 31.751017, 45.356228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793030, 32.134075, 45.242203>,  <34.783279, 32.363911, 45.173790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793030, 32.134075, 45.242203>,  <34.809280, 31.751017, 45.356228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793030, 32.134075, 45.242203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210316, 0.287101, 0.934527,
		0.976789, -0.021982, -0.213074,
		-0.040631, 0.957648, -0.285060,
		34.780842, 32.421371, 45.156685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406116, 32.043915, 45.651470>,  <34.809280, 31.751017, 45.356228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406116, 32.043915, 45.651470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128437, 32.325344, 45.590706>,  <34.961830, 32.494202, 45.554249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128437, 32.325344, 45.590706>,  <35.406116, 32.043915, 45.651470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128437, 32.325344, 45.590706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258268, 0.440476, 0.859813,
		0.671851, 0.557648, -0.487488,
		-0.694200, 0.703569, -0.151911,
		34.920177, 32.536415, 45.545132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687187, 32.737244, 45.723690>,  <35.406116, 32.043915, 45.651470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687187, 32.737244, 45.723690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301258, 32.802254, 45.806355>,  <35.069702, 32.841259, 45.855953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301258, 32.802254, 45.806355>,  <35.687187, 32.737244, 45.723690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301258, 32.802254, 45.806355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247825, 0.299695, 0.921285,
		0.087797, 0.940089, -0.329429,
		-0.964818, 0.162527, 0.206665,
		35.011814, 32.851013, 45.868355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726749, 33.290394, 46.144882>,  <35.687187, 32.737244, 45.723690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726749, 33.290394, 46.144882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336571, 33.211914, 46.184914>,  <35.102463, 33.164825, 46.208935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336571, 33.211914, 46.184914>,  <35.726749, 33.290394, 46.144882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336571, 33.211914, 46.184914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015791, 0.390922, 0.920289,
		-0.219685, 0.899270, -0.378223,
		-0.975443, -0.196201, 0.100080,
		35.043938, 33.153053, 46.214939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404022, 33.875946, 46.402679>,  <35.726749, 33.290394, 46.144882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404022, 33.875946, 46.402679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127522, 33.596519, 46.476631>,  <34.961620, 33.428864, 46.521004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127522, 33.596519, 46.476631>,  <35.404022, 33.875946, 46.402679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127522, 33.596519, 46.476631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310994, 0.518538, 0.796493,
		-0.652269, 0.493080, -0.575689,
		-0.691252, -0.698563, 0.184881,
		34.920147, 33.386951, 46.532097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735046, 34.281822, 46.449947>,  <35.404022, 33.875946, 46.402679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735046, 34.281822, 46.449947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702198, 33.948483, 46.668594>,  <34.682487, 33.748478, 46.799782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702198, 33.948483, 46.668594>,  <34.735046, 34.281822, 46.449947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702198, 33.948483, 46.668594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179139, 0.551878, 0.814457,
		-0.980390, -0.031037, -0.194605,
		-0.082120, -0.833347, 0.546616,
		34.677563, 33.698479, 46.832581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192322, 34.263863, 46.954811>,  <34.735046, 34.281822, 46.449947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192322, 34.263863, 46.954811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437851, 33.988068, 47.108601>,  <34.585171, 33.822590, 47.200874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437851, 33.988068, 47.108601>,  <34.192322, 34.263863, 46.954811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437851, 33.988068, 47.108601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034968, 0.510290, 0.859291,
		-0.788667, -0.514011, 0.337339,
		0.613826, -0.689490, 0.384475,
		34.621998, 33.781219, 47.223942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843098, 33.971836, 47.556126>,  <34.192322, 34.263863, 46.954811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843098, 33.971836, 47.556126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236496, 33.908653, 47.591412>,  <34.472534, 33.870743, 47.612583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236496, 33.908653, 47.591412>,  <33.843098, 33.971836, 47.556126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236496, 33.908653, 47.591412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007901, 0.449642, 0.893174,
		-0.180750, -0.879131, 0.440973,
		0.983497, -0.157957, 0.088218,
		34.531544, 33.861267, 47.617878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907188, 33.722446, 48.150917>,  <33.843098, 33.971836, 47.556126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907188, 33.722446, 48.150917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287628, 33.835510, 48.101093>,  <34.515892, 33.903347, 48.071198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287628, 33.835510, 48.101093>,  <33.907188, 33.722446, 48.150917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287628, 33.835510, 48.101093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009478, 0.429781, 0.902883,
		0.308740, -0.857551, 0.411443,
		0.951100, 0.282656, -0.124563,
		34.572956, 33.920307, 48.063725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232826, 33.602982, 48.742310>,  <33.907188, 33.722446, 48.150917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232826, 33.602982, 48.742310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498753, 33.841003, 48.561676>,  <34.658310, 33.983814, 48.453297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498753, 33.841003, 48.561676>,  <34.232826, 33.602982, 48.742310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498753, 33.841003, 48.561676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263216, 0.379154, 0.887107,
		0.699097, -0.708629, 0.095440,
		0.664816, 0.595053, -0.451588,
		34.698196, 34.019520, 48.426201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889145, 33.589348, 49.048565>,  <34.232826, 33.602982, 48.742310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889145, 33.589348, 49.048565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893356, 33.939644, 48.855495>,  <34.895882, 34.149822, 48.739655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893356, 33.939644, 48.855495>,  <34.889145, 33.589348, 49.048565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893356, 33.939644, 48.855495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171940, 0.473923, 0.863616,
		0.985051, -0.092083, -0.145585,
		0.010529, 0.875738, -0.482671,
		34.896515, 34.202366, 48.710693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312832, 33.955055, 49.358227>,  <34.889145, 33.589348, 49.048565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312832, 33.955055, 49.358227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159134, 34.269291, 49.164234>,  <35.066914, 34.457832, 49.047836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159134, 34.269291, 49.164234>,  <35.312832, 33.955055, 49.358227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159134, 34.269291, 49.164234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191830, 0.581781, 0.790400,
		0.903082, 0.210672, -0.374246,
		-0.384244, 0.785588, -0.484983,
		35.043861, 34.504967, 49.018738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798588, 34.519817, 49.397488>,  <35.312832, 33.955055, 49.358227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798588, 34.519817, 49.397488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437492, 34.682014, 49.340019>,  <35.220837, 34.779335, 49.305538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437492, 34.682014, 49.340019>,  <35.798588, 34.519817, 49.397488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437492, 34.682014, 49.340019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113561, 0.546744, 0.829563,
		0.414938, 0.732560, -0.539614,
		-0.902735, 0.405497, -0.143674,
		35.166672, 34.803665, 49.296917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848400, 35.140125, 49.660679>,  <35.798588, 34.519817, 49.397488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848400, 35.140125, 49.660679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448570, 35.130127, 49.654789>,  <35.208672, 35.124126, 49.651257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448570, 35.130127, 49.654789>,  <35.848400, 35.140125, 49.660679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448570, 35.130127, 49.654789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024622, 0.462476, 0.886290,
		-0.015343, 0.886279, -0.462897,
		-0.999579, -0.024996, -0.014726,
		35.148697, 35.122627, 49.650372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708923, 35.856663, 49.796772>,  <35.848400, 35.140125, 49.660679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708923, 35.856663, 49.796772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427536, 35.589848, 49.894901>,  <35.258701, 35.429756, 49.953777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427536, 35.589848, 49.894901>,  <35.708923, 35.856663, 49.796772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427536, 35.589848, 49.894901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075857, 0.413668, 0.907262,
		-0.706664, 0.619624, -0.341604,
		-0.703472, -0.667042, 0.245321,
		35.216496, 35.389736, 49.968498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376541, 36.449657, 49.990627>,  <35.708923, 35.856663, 49.796772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376541, 36.449657, 49.990627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699791, 36.685257, 49.992146>,  <35.893742, 36.826614, 49.993057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699791, 36.685257, 49.992146>,  <35.376541, 36.449657, 49.990627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699791, 36.685257, 49.992146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036873, -0.044157, -0.998344,
		-0.587852, 0.806929, -0.057403,
		0.808128, 0.588996, 0.003797,
		35.942230, 36.861954, 49.993286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401134, 36.868244, 49.434196>,  <35.376541, 36.449657, 49.990627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401134, 36.868244, 49.434196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791851, 36.900402, 49.513603>,  <36.026283, 36.919697, 49.561249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791851, 36.900402, 49.513603>,  <35.401134, 36.868244, 49.434196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791851, 36.900402, 49.513603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202398, -0.043286, -0.978346,
		-0.070064, 0.995822, -0.058554,
		0.976794, 0.080399, 0.198520,
		36.084888, 36.924522, 49.573158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726807, 37.404381, 49.030815>,  <35.401134, 36.868244, 49.434196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726807, 37.404381, 49.030815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024704, 37.150772, 49.114109>,  <36.203442, 36.998608, 49.164085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024704, 37.150772, 49.114109>,  <35.726807, 37.404381, 49.030815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024704, 37.150772, 49.114109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267863, -0.001792, -0.963455,
		0.611228, 0.773310, 0.168497,
		0.744748, -0.634025, 0.208236,
		36.248127, 36.960564, 49.176579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248226, 37.596523, 48.581211>,  <35.726807, 37.404381, 49.030815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248226, 37.596523, 48.581211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370872, 37.232349, 48.692272>,  <36.444462, 37.013844, 48.758907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370872, 37.232349, 48.692272>,  <36.248226, 37.596523, 48.581211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370872, 37.232349, 48.692272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206908, -0.220974, -0.953079,
		0.929073, 0.349677, 0.120622,
		0.306616, -0.910437, 0.277652,
		36.462856, 36.959217, 48.775566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932079, 37.526234, 48.249252>,  <36.248226, 37.596523, 48.581211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932079, 37.526234, 48.249252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772640, 37.167095, 48.324078>,  <36.676975, 36.951611, 48.368973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772640, 37.167095, 48.324078>,  <36.932079, 37.526234, 48.249252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772640, 37.167095, 48.324078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192015, -0.281145, -0.940260,
		0.896801, -0.338865, 0.284463,
		-0.398597, -0.897846, 0.187063,
		36.653061, 36.897739, 48.380196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397694, 37.079849, 47.789139>,  <36.932079, 37.526234, 48.249252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397694, 37.079849, 47.789139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079121, 36.853447, 47.874310>,  <36.887978, 36.717606, 47.925411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079121, 36.853447, 47.874310>,  <37.397694, 37.079849, 47.789139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079121, 36.853447, 47.874310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015398, -0.370964, -0.928520,
		0.604536, -0.736221, 0.304162,
		-0.796429, -0.566007, 0.212925,
		36.840191, 36.683643, 47.938187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565735, 36.419464, 47.449463>,  <37.397694, 37.079849, 47.789139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565735, 36.419464, 47.449463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171909, 36.445614, 47.514404>,  <36.935612, 36.461304, 47.553368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171909, 36.445614, 47.514404>,  <37.565735, 36.419464, 47.449463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171909, 36.445614, 47.514404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172734, -0.213623, -0.961524,
		-0.028176, -0.974726, 0.221618,
		-0.984565, 0.065372, 0.162349,
		36.876541, 36.465225, 47.563110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310963, 35.851944, 47.118824>,  <37.565735, 36.419464, 47.449463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310963, 35.851944, 47.118824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972881, 36.056938, 47.179474>,  <36.770031, 36.179935, 47.215866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972881, 36.056938, 47.179474>,  <37.310963, 35.851944, 47.118824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972881, 36.056938, 47.179474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393548, -0.404848, -0.825359,
		-0.361599, -0.757268, 0.543867,
		-0.845201, 0.512487, 0.151629,
		36.719322, 36.210686, 47.224964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715153, 35.399113, 47.111282>,  <37.310963, 35.851944, 47.118824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715153, 35.399113, 47.111282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566517, 35.757820, 47.015182>,  <36.477333, 35.973045, 46.957523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566517, 35.757820, 47.015182>,  <36.715153, 35.399113, 47.111282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566517, 35.757820, 47.015182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518635, -0.415152, -0.747440,
		-0.770024, -0.153140, 0.619364,
		-0.371594, 0.896770, -0.240253,
		36.455040, 36.026852, 46.943108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065434, 35.385387, 46.787888>,  <36.715153, 35.399113, 47.111282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065434, 35.385387, 46.787888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172485, 35.743664, 46.645840>,  <36.236717, 35.958630, 46.560612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172485, 35.743664, 46.645840>,  <36.065434, 35.385387, 46.787888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172485, 35.743664, 46.645840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445410, -0.211812, -0.869911,
		-0.854391, 0.390989, 0.342263,
		0.267630, 0.895692, -0.355121,
		36.252773, 36.012371, 46.539303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572781, 35.571674, 46.260975>,  <36.065434, 35.385387, 46.787888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572781, 35.571674, 46.260975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871735, 35.831696, 46.206062>,  <36.051109, 35.987709, 46.173115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871735, 35.831696, 46.206062>,  <35.572781, 35.571674, 46.260975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871735, 35.831696, 46.206062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098387, -0.096054, -0.990502,
		-0.657062, 0.753796, -0.007833,
		0.747389, 0.650050, -0.137277,
		36.095951, 36.026711, 46.164879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341511, 36.014698, 45.655174>,  <35.572781, 35.571674, 46.260975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341511, 36.014698, 45.655174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736786, 36.048878, 45.706070>,  <35.973949, 36.069386, 45.736607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736786, 36.048878, 45.706070>,  <35.341511, 36.014698, 45.655174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736786, 36.048878, 45.706070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136725, -0.116232, -0.983766,
		-0.069272, 0.989540, -0.126542,
		0.988184, 0.085448, 0.127243,
		36.033241, 36.074512, 45.744244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498066, 36.503616, 45.173786>,  <35.341511, 36.014698, 45.655174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498066, 36.503616, 45.173786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842209, 36.324062, 45.270359>,  <36.048695, 36.216328, 45.328300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842209, 36.324062, 45.270359>,  <35.498066, 36.503616, 45.173786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842209, 36.324062, 45.270359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285917, 0.032917, -0.957689,
		0.421948, 0.892982, 0.156665,
		0.860356, -0.448888, 0.241429,
		36.100315, 36.189396, 45.342789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965420, 36.836315, 44.711327>,  <35.498066, 36.503616, 45.173786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965420, 36.836315, 44.711327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113445, 36.485947, 44.835140>,  <36.202259, 36.275726, 44.909428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113445, 36.485947, 44.835140>,  <35.965420, 36.836315, 44.711327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113445, 36.485947, 44.835140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298679, -0.203315, -0.932445,
		0.879683, 0.437515, 0.186381,
		0.370065, -0.875924, 0.309530,
		36.224464, 36.223167, 44.927998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606014, 36.645142, 44.297062>,  <35.965420, 36.836315, 44.711327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606014, 36.645142, 44.297062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471043, 36.292721, 44.429657>,  <36.390060, 36.081268, 44.509212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471043, 36.292721, 44.429657>,  <36.606014, 36.645142, 44.297062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471043, 36.292721, 44.429657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290602, -0.432433, -0.853553,
		0.895373, -0.191683, 0.401952,
		-0.337429, -0.881056, 0.331485,
		36.369812, 36.028404, 44.529102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011765, 36.169533, 44.108871>,  <36.606014, 36.645142, 44.297062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011765, 36.169533, 44.108871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682861, 35.953140, 44.179558>,  <36.485519, 35.823303, 44.221970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682861, 35.953140, 44.179558>,  <37.011765, 36.169533, 44.108871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682861, 35.953140, 44.179558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086670, -0.425923, -0.900599,
		0.562476, -0.725209, 0.397106,
		-0.822259, -0.540982, 0.176718,
		36.436184, 35.790844, 44.232574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173481, 35.441696, 43.883156>,  <37.011765, 36.169533, 44.108871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173481, 35.441696, 43.883156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774208, 35.423611, 43.899082>,  <36.534645, 35.412758, 43.908638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774208, 35.423611, 43.899082>,  <37.173481, 35.441696, 43.883156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774208, 35.423611, 43.899082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011162, -0.510671, -0.859704,
		0.059204, -0.858586, 0.509239,
		-0.998183, -0.045214, 0.039817,
		36.474754, 35.410046, 43.911026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986217, 34.717991, 43.842476>,  <37.173481, 35.441696, 43.883156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986217, 34.717991, 43.842476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665947, 34.924614, 43.721096>,  <36.473785, 35.048588, 43.648270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665947, 34.924614, 43.721096>,  <36.986217, 34.717991, 43.842476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665947, 34.924614, 43.721096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045568, -0.557551, -0.828891,
		-0.597363, -0.649845, 0.469956,
		-0.800676, 0.516564, -0.303448,
		36.425743, 35.079582, 43.630062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521866, 34.217991, 43.629635>,  <36.986217, 34.717991, 43.842476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521866, 34.217991, 43.629635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380051, 34.547169, 43.452068>,  <36.294964, 34.744675, 43.345528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380051, 34.547169, 43.452068>,  <36.521866, 34.217991, 43.629635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380051, 34.547169, 43.452068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192996, -0.528936, -0.826425,
		-0.914909, -0.207321, 0.346352,
		-0.354533, 0.822948, -0.443917,
		36.273689, 34.794052, 43.318893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962173, 33.984150, 43.279888>,  <36.521866, 34.217991, 43.629635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962173, 33.984150, 43.279888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040642, 34.326279, 43.088078>,  <36.087723, 34.531555, 42.972992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040642, 34.326279, 43.088078>,  <35.962173, 33.984150, 43.279888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040642, 34.326279, 43.088078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159948, -0.454566, -0.876234,
		-0.967436, 0.248592, 0.047634,
		0.196172, 0.855320, -0.479525,
		36.099495, 34.582874, 42.944221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394207, 34.110859, 42.723354>,  <35.962173, 33.984150, 43.279888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394207, 34.110859, 42.723354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715267, 34.332329, 42.634624>,  <35.907902, 34.465210, 42.581387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715267, 34.332329, 42.634624>,  <35.394207, 34.110859, 42.723354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715267, 34.332329, 42.634624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024961, -0.340399, -0.939950,
		-0.595932, 0.759985, -0.259400,
		0.802647, 0.553672, -0.221824,
		35.956062, 34.498432, 42.568077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288109, 34.186970, 41.983040>,  <35.394207, 34.110859, 42.723354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288109, 34.186970, 41.983040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661789, 34.308887, 42.057194>,  <35.885998, 34.382038, 42.101688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661789, 34.308887, 42.057194>,  <35.288109, 34.186970, 41.983040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661789, 34.308887, 42.057194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278150, -0.296913, -0.913496,
		-0.223383, 0.904955, -0.362155,
		0.934202, 0.304793, 0.185388,
		35.942051, 34.400326, 42.112812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567986, 34.610046, 41.439659>,  <35.288109, 34.186970, 41.983040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567986, 34.610046, 41.439659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892979, 34.460228, 41.618362>,  <36.087975, 34.370335, 41.725582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892979, 34.460228, 41.618362>,  <35.567986, 34.610046, 41.439659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892979, 34.460228, 41.618362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298767, -0.390535, -0.870759,
		0.500616, 0.840949, -0.205399,
		0.812479, -0.374549, 0.446756,
		36.136723, 34.347862, 41.752388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218933, 34.845116, 41.018696>,  <35.567986, 34.610046, 41.439659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218933, 34.845116, 41.018696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314663, 34.510094, 41.215153>,  <36.372101, 34.309078, 41.333027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314663, 34.510094, 41.215153>,  <36.218933, 34.845116, 41.018696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314663, 34.510094, 41.215153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444414, -0.355248, -0.822372,
		0.863261, 0.415086, 0.287201,
		0.239327, -0.837557, 0.491142,
		36.386459, 34.258827, 41.362495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802311, 34.607613, 40.648449>,  <36.218933, 34.845116, 41.018696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802311, 34.607613, 40.648449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710114, 34.292927, 40.877518>,  <36.654793, 34.104115, 41.014961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710114, 34.292927, 40.877518>,  <36.802311, 34.607613, 40.648449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710114, 34.292927, 40.877518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459221, -0.606807, -0.648769,
		0.857897, 0.113445, 0.501142,
		-0.230497, -0.786712, 0.572674,
		36.640965, 34.056911, 41.049320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370922, 34.303074, 40.811871>,  <36.802311, 34.607613, 40.648449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370922, 34.303074, 40.811871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082775, 34.025738, 40.819466>,  <36.909889, 33.859337, 40.824020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082775, 34.025738, 40.819466>,  <37.370922, 34.303074, 40.811871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082775, 34.025738, 40.819466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473808, -0.511898, -0.716565,
		0.506540, -0.507192, 0.697261,
		-0.720363, -0.693337, 0.018985,
		36.866665, 33.817738, 40.825161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731441, 33.718403, 40.932537>,  <37.370922, 34.303074, 40.811871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731441, 33.718403, 40.932537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383026, 33.587917, 40.785633>,  <37.173977, 33.509624, 40.697491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383026, 33.587917, 40.785633>,  <37.731441, 33.718403, 40.932537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383026, 33.587917, 40.785633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488804, -0.501538, -0.713814,
		0.048660, -0.801277, 0.596312,
		-0.871035, -0.326214, -0.367262,
		37.121716, 33.490051, 40.675453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790073, 32.982121, 40.631996>,  <37.731441, 33.718403, 40.932537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790073, 32.982121, 40.631996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463692, 33.132477, 40.456306>,  <37.267860, 33.222691, 40.350891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463692, 33.132477, 40.456306>,  <37.790073, 32.982121, 40.631996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463692, 33.132477, 40.456306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366742, -0.250751, -0.895893,
		-0.446892, -0.892094, 0.066749,
		-0.815958, 0.375887, -0.439227,
		37.218903, 33.245243, 40.324539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736389, 32.534264, 40.114628>,  <37.790073, 32.982121, 40.631996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736389, 32.534264, 40.114628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506016, 32.841690, 40.003189>,  <37.367794, 33.026146, 39.936325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506016, 32.841690, 40.003189>,  <37.736389, 32.534264, 40.114628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506016, 32.841690, 40.003189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457222, 0.020330, -0.889120,
		-0.677681, -0.639451, -0.363112,
		-0.575930, 0.768563, -0.278594,
		37.333237, 33.072258, 39.919609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553909, 32.400383, 39.409595>,  <37.736389, 32.534264, 40.114628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553909, 32.400383, 39.409595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492657, 32.795357, 39.425247>,  <37.455906, 33.032341, 39.434639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492657, 32.795357, 39.425247>,  <37.553909, 32.400383, 39.409595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492657, 32.795357, 39.425247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366935, 0.093579, -0.925528,
		-0.917557, -0.127367, -0.376653,
		-0.153129, 0.987431, 0.039129,
		37.446716, 33.091587, 39.436985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455624, 32.558159, 38.764999>,  <37.553909, 32.400383, 39.409595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455624, 32.558159, 38.764999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527771, 32.926670, 38.902817>,  <37.571060, 33.147778, 38.985508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527771, 32.926670, 38.902817>,  <37.455624, 32.558159, 38.764999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527771, 32.926670, 38.902817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342436, 0.269559, -0.900042,
		-0.922065, 0.280328, -0.266858,
		0.180373, 0.921278, 0.344546,
		37.581882, 33.203053, 39.006180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151112, 33.061676, 38.208954>,  <37.455624, 32.558159, 38.764999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151112, 33.061676, 38.208954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401115, 33.277298, 38.434795>,  <37.551117, 33.406673, 38.570301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401115, 33.277298, 38.434795>,  <37.151112, 33.061676, 38.208954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401115, 33.277298, 38.434795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514758, 0.259127, -0.817238,
		-0.586842, 0.801418, -0.115526,
		0.625013, 0.539057, 0.564603,
		37.588619, 33.439014, 38.604176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322178, 33.629032, 37.718128>,  <37.151112, 33.061676, 38.208954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322178, 33.629032, 37.718128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628460, 33.635986, 37.975311>,  <37.812229, 33.640160, 38.129620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628460, 33.635986, 37.975311>,  <37.322178, 33.629032, 37.718128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628460, 33.635986, 37.975311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609821, 0.298167, -0.734313,
		-0.204477, 0.954355, 0.217704,
		0.765708, 0.017390, 0.642954,
		37.858173, 33.641205, 38.168198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780533, 34.146866, 37.483582>,  <37.322178, 33.629032, 37.718128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780533, 34.146866, 37.483582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024269, 33.936165, 37.720638>,  <38.170513, 33.809742, 37.862873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024269, 33.936165, 37.720638>,  <37.780533, 34.146866, 37.483582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024269, 33.936165, 37.720638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792511, 0.381037, -0.476169,
		0.025006, 0.759828, 0.649643,
		0.609345, -0.526756, 0.592644,
		38.207073, 33.778137, 37.898430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322788, 34.542999, 37.583763>,  <37.780533, 34.146866, 37.483582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322788, 34.542999, 37.583763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481846, 34.183918, 37.659657>,  <38.577282, 33.968468, 37.705193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481846, 34.183918, 37.659657>,  <38.322788, 34.542999, 37.583763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481846, 34.183918, 37.659657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745523, 0.195576, -0.637139,
		0.534858, 0.394806, 0.747031,
		0.397647, -0.897707, 0.189731,
		38.601139, 33.914604, 37.716576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976109, 34.651772, 37.613831>,  <38.322788, 34.542999, 37.583763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976109, 34.651772, 37.613831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006947, 34.257896, 37.551292>,  <39.025448, 34.021572, 37.513767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006947, 34.257896, 37.551292>,  <38.976109, 34.651772, 37.613831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006947, 34.257896, 37.551292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821794, 0.151550, -0.549260,
		0.564545, -0.086143, 0.820895,
		0.077092, -0.984689, -0.156349,
		39.030075, 33.962490, 37.504387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623882, 34.369865, 37.834785>,  <38.976109, 34.651772, 37.613831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623882, 34.369865, 37.834785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495029, 34.104050, 37.565083>,  <39.417717, 33.944561, 37.403263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495029, 34.104050, 37.565083>,  <39.623882, 34.369865, 37.834785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495029, 34.104050, 37.565083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820434, 0.159395, -0.549073,
		0.472353, -0.730056, 0.493863,
		-0.322135, -0.664538, -0.674254,
		39.398388, 33.904690, 37.362808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160065, 33.903034, 37.804623>,  <39.623882, 34.369865, 37.834785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160065, 33.903034, 37.804623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964333, 33.836338, 37.462219>,  <39.846893, 33.796318, 37.256779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964333, 33.836338, 37.462219>,  <40.160065, 33.903034, 37.804623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964333, 33.836338, 37.462219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837779, 0.182766, -0.514512,
		0.242241, -0.968913, 0.050263,
		-0.489331, -0.166745, -0.856009,
		39.817532, 33.786316, 37.205418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536484, 33.414284, 37.432571>,  <40.160065, 33.903034, 37.804623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536484, 33.414284, 37.432571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314548, 33.598240, 37.155254>,  <40.181389, 33.708614, 36.988865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314548, 33.598240, 37.155254>,  <40.536484, 33.414284, 37.432571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314548, 33.598240, 37.155254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809354, 0.105424, -0.577782,
		-0.192627, -0.881694, -0.430709,
		-0.554834, 0.459893, -0.693295,
		40.148098, 33.736206, 36.947266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646587, 33.108253, 36.788269>,  <40.536484, 33.414284, 37.432571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646587, 33.108253, 36.788269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533947, 33.482395, 36.702652>,  <40.466362, 33.706879, 36.651283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533947, 33.482395, 36.702652>,  <40.646587, 33.108253, 36.788269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533947, 33.482395, 36.702652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799164, 0.105163, -0.591842,
		-0.531073, -0.337717, -0.777115,
		-0.281599, 0.935354, -0.214043,
		40.449467, 33.763000, 36.638439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571026, 33.239632, 36.003849>,  <40.646587, 33.108253, 36.788269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571026, 33.239632, 36.003849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674736, 33.574745, 36.196056>,  <40.736961, 33.775814, 36.311382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674736, 33.574745, 36.196056>,  <40.571026, 33.239632, 36.003849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674736, 33.574745, 36.196056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808503, 0.083874, -0.582484,
		-0.528297, 0.539527, -0.655601,
		0.259278, 0.837780, 0.480519,
		40.752518, 33.826080, 36.340214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488953, 33.918186, 35.547401>,  <40.571026, 33.239632, 36.003849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488953, 33.918186, 35.547401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781536, 33.950680, 35.818214>,  <40.957085, 33.970177, 35.980701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781536, 33.950680, 35.818214>,  <40.488953, 33.918186, 35.547401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781536, 33.950680, 35.818214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662279, 0.151744, -0.733730,
		-0.162338, 0.985076, 0.057196,
		0.731459, 0.081233, 0.677029,
		41.000973, 33.975048, 36.021324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790840, 34.585403, 35.382526>,  <40.488953, 33.918186, 35.547401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790840, 34.585403, 35.382526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060013, 34.366631, 35.581738>,  <41.221516, 34.235367, 35.701263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060013, 34.366631, 35.581738>,  <40.790840, 34.585403, 35.382526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060013, 34.366631, 35.581738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715576, 0.310768, -0.625599,
		0.187386, 0.777363, 0.600494,
		0.672932, -0.546928, 0.498028,
		41.261894, 34.202553, 35.731148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427189, 35.113998, 35.387665>,  <40.790840, 34.585403, 35.382526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427189, 35.113998, 35.387665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539082, 34.730465, 35.407200>,  <41.606216, 34.500343, 35.418922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539082, 34.730465, 35.407200>,  <41.427189, 35.113998, 35.387665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539082, 34.730465, 35.407200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672810, 0.159489, -0.722420,
		0.684892, 0.234943, 0.689728,
		0.279732, -0.958835, 0.048840,
		41.623001, 34.442814, 35.421852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969463, 35.481384, 35.642914>,  <41.427189, 35.113998, 35.387665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969463, 35.481384, 35.642914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259239, 35.229637, 35.755398>,  <42.433105, 35.078587, 35.822887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259239, 35.229637, 35.755398>,  <41.969463, 35.481384, 35.642914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259239, 35.229637, 35.755398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491843, -0.757748, -0.428845,
		0.482988, 0.172363, -0.858495,
		0.724440, -0.629372, 0.281208,
		42.476570, 35.040825, 35.839760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436939, 35.192394, 35.056385>,  <41.969463, 35.481384, 35.642914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436939, 35.192394, 35.056385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395405, 34.927528, 35.353237>,  <42.370483, 34.768608, 35.531349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395405, 34.927528, 35.353237>,  <42.436939, 35.192394, 35.056385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395405, 34.927528, 35.353237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392660, -0.658261, -0.642270,
		0.913803, -0.358099, -0.191651,
		-0.103840, -0.662162, 0.742132,
		42.364254, 34.728878, 35.575878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787621, 34.580006, 35.125622>,  <42.436939, 35.192394, 35.056385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787621, 34.580006, 35.125622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408241, 34.511143, 35.232059>,  <42.180614, 34.469826, 35.295921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408241, 34.511143, 35.232059>,  <42.787621, 34.580006, 35.125622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408241, 34.511143, 35.232059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121870, -0.576939, -0.807644,
		0.292564, -0.798438, 0.526215,
		-0.948448, -0.172158, 0.266097,
		42.123707, 34.459496, 35.311890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527573, 34.467724, 35.477352>,  <42.787621, 34.580006, 35.125622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527573, 34.467724, 35.477352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876335, 34.345150, 35.324581>,  <44.085594, 34.271606, 35.232918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876335, 34.345150, 35.324581>,  <43.527573, 34.467724, 35.477352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876335, 34.345150, 35.324581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489416, -0.570258, -0.659755,
		-0.015624, 0.762169, -0.647189,
		0.871910, -0.306437, -0.381927,
		44.137909, 34.253220, 35.210003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.474113, 34.424133, 34.761963>,  <43.527573, 34.467724, 35.477352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.474113, 34.424133, 34.761963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805275, 34.207767, 34.821278>,  <44.003971, 34.077946, 34.856865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805275, 34.207767, 34.821278>,  <43.474113, 34.424133, 34.761963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805275, 34.207767, 34.821278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337273, -0.691369, -0.638949,
		0.448137, 0.478974, -0.754822,
		0.827901, -0.540918, 0.148283,
		44.053646, 34.045494, 34.865761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675320, 34.204437, 34.052090>,  <43.474113, 34.424133, 34.761963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675320, 34.204437, 34.052090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.922684, 33.961887, 34.252045>,  <44.071102, 33.816357, 34.372017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.922684, 33.961887, 34.252045>,  <43.675320, 34.204437, 34.052090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.922684, 33.961887, 34.252045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268865, -0.760965, -0.590461,
		0.738434, 0.230744, -0.633619,
		0.618407, -0.606374, 0.499883,
		44.108204, 33.779976, 34.402008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096386, 33.848034, 33.539978>,  <43.675320, 34.204437, 34.052090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096386, 33.848034, 33.539978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075092, 33.609173, 33.860123>,  <44.062317, 33.465855, 34.052208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075092, 33.609173, 33.860123>,  <44.096386, 33.848034, 33.539978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.075092, 33.609173, 33.860123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021254, -0.800636, -0.598774,
		0.998356, -0.048888, 0.029932,
		-0.053238, -0.597153, 0.800359,
		44.059120, 33.430027, 34.100231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.515507, 33.303169, 33.407875>,  <44.096386, 33.848034, 33.539978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.515507, 33.303169, 33.407875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287884, 33.162941, 33.705406>,  <44.151310, 33.078804, 33.883926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287884, 33.162941, 33.705406>,  <44.515507, 33.303169, 33.407875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.287884, 33.162941, 33.705406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109599, -0.864164, -0.491131,
		0.814964, -0.361002, 0.453333,
		-0.569053, -0.350569, 0.743828,
		44.117168, 33.057770, 33.928555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.791340, 32.657928, 33.583752>,  <44.515507, 33.303169, 33.407875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.791340, 32.657928, 33.583752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.416542, 32.637024, 33.721912>,  <44.191662, 32.624481, 33.804810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.416542, 32.637024, 33.721912>,  <44.791340, 32.657928, 33.583752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.416542, 32.637024, 33.721912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156467, -0.821235, -0.548718,
		0.312337, -0.568192, 0.761317,
		-0.936997, -0.052263, 0.345405,
		44.135445, 32.621346, 33.825535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697834, 31.957588, 33.929382>,  <44.791340, 32.657928, 33.583752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697834, 31.957588, 33.929382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332455, 32.083984, 33.826813>,  <44.113228, 32.159821, 33.765270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332455, 32.083984, 33.826813>,  <44.697834, 31.957588, 33.929382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332455, 32.083984, 33.826813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122668, -0.814617, -0.566878,
		-0.388016, -0.486362, 0.782877,
		-0.913453, 0.315992, -0.256424,
		44.058418, 32.178783, 33.749886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228710, 31.391397, 33.825970>,  <44.697834, 31.957588, 33.929382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228710, 31.391397, 33.825970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.029148, 31.670195, 33.619942>,  <43.909412, 31.837473, 33.496326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.029148, 31.670195, 33.619942>,  <44.228710, 31.391397, 33.825970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.029148, 31.670195, 33.619942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313287, -0.699169, -0.642661,
		-0.808052, -0.159260, 0.567175,
		-0.498902, 0.696993, -0.515071,
		43.879478, 31.879292, 33.465420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587635, 31.061199, 33.669659>,  <44.228710, 31.391397, 33.825970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587635, 31.061199, 33.669659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607674, 31.366993, 33.412582>,  <43.619698, 31.550468, 33.258335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607674, 31.366993, 33.412582>,  <43.587635, 31.061199, 33.669659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607674, 31.366993, 33.412582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444135, -0.559322, -0.699931,
		-0.894558, 0.320505, 0.311515,
		0.050094, 0.764484, -0.642693,
		43.622704, 31.596338, 33.219776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006378, 31.013144, 33.421230>,  <43.587635, 31.061199, 33.669659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006378, 31.013144, 33.421230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211025, 31.243879, 33.166512>,  <43.333813, 31.382320, 33.013680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211025, 31.243879, 33.166512>,  <43.006378, 31.013144, 33.421230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211025, 31.243879, 33.166512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459828, -0.442249, -0.770048,
		-0.725814, 0.686785, 0.038983,
		0.511618, 0.576837, -0.636794,
		43.364510, 31.416931, 32.975475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571388, 31.145071, 32.852264>,  <43.006378, 31.013144, 33.421230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571388, 31.145071, 32.852264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922760, 31.249083, 32.691891>,  <43.133583, 31.311489, 32.595665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922760, 31.249083, 32.691891>,  <42.571388, 31.145071, 32.852264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922760, 31.249083, 32.691891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249004, -0.467036, -0.848454,
		-0.407875, 0.845140, -0.345508,
		0.878428, 0.260031, -0.400935,
		43.186287, 31.327091, 32.571609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435524, 31.387007, 32.151588>,  <42.571388, 31.145071, 32.852264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435524, 31.387007, 32.151588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.823025, 31.288374, 32.162354>,  <43.055523, 31.229195, 32.168812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.823025, 31.288374, 32.162354>,  <42.435524, 31.387007, 32.151588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.823025, 31.288374, 32.162354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083437, -0.426103, -0.900819,
		0.233592, 0.870421, -0.433361,
		0.968748, -0.246583, 0.026909,
		43.113647, 31.214399, 32.170425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681816, 31.545033, 31.490761>,  <42.435524, 31.387007, 32.151588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681816, 31.545033, 31.490761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952072, 31.293354, 31.644445>,  <43.114227, 31.142347, 31.736656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952072, 31.293354, 31.644445>,  <42.681816, 31.545033, 31.490761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952072, 31.293354, 31.644445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100692, -0.437515, -0.893556,
		0.730320, 0.642412, -0.232249,
		0.675643, -0.629196, 0.384211,
		43.154766, 31.104595, 31.759708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287945, 31.635702, 30.991467>,  <42.681816, 31.545033, 31.490761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287945, 31.635702, 30.991467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308247, 31.300190, 31.208305>,  <43.320427, 31.098883, 31.338409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308247, 31.300190, 31.208305>,  <43.287945, 31.635702, 30.991467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308247, 31.300190, 31.208305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244140, -0.515907, -0.821118,
		0.968411, 0.174025, 0.178595,
		0.050756, -0.838782, 0.542097,
		43.323475, 31.048555, 31.370934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835655, 31.187378, 30.685078>,  <43.287945, 31.635702, 30.991467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835655, 31.187378, 30.685078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.602795, 30.938341, 30.894258>,  <43.463078, 30.788919, 31.019768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.602795, 30.938341, 30.894258>,  <43.835655, 31.187378, 30.685078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.602795, 30.938341, 30.894258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141696, -0.711017, -0.688751,
		0.800640, -0.326855, 0.502136,
		-0.582149, -0.622592, 0.522955,
		43.428150, 30.751564, 31.051146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102753, 30.564493, 30.475615>,  <43.835655, 31.187378, 30.685078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102753, 30.564493, 30.475615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758965, 30.464224, 30.653814>,  <43.552692, 30.404062, 30.760735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758965, 30.464224, 30.653814>,  <44.102753, 30.564493, 30.475615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758965, 30.464224, 30.653814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087538, -0.786459, -0.611408,
		0.503632, -0.564487, 0.653996,
		-0.859472, -0.250675, 0.445500,
		43.501122, 30.389021, 30.787464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085930, 29.869932, 30.320995>,  <44.102753, 30.564493, 30.475615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085930, 29.869932, 30.320995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.712307, 29.923294, 30.453503>,  <43.488132, 29.955311, 30.533007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.712307, 29.923294, 30.453503>,  <44.085930, 29.869932, 30.320995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.712307, 29.923294, 30.453503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310660, -0.761047, -0.569471,
		0.176139, -0.634831, 0.752306,
		-0.934058, 0.133405, 0.331267,
		43.432091, 29.963316, 30.552883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791420, 29.285812, 30.677156>,  <44.085930, 29.869932, 30.320995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791420, 29.285812, 30.677156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.455940, 29.468552, 30.558580>,  <43.254654, 29.578196, 30.487434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.455940, 29.468552, 30.558580>,  <43.791420, 29.285812, 30.677156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.455940, 29.468552, 30.558580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331262, -0.860002, -0.388151,
		-0.432267, -0.227341, 0.872618,
		-0.838696, 0.456850, -0.296441,
		43.204330, 29.605606, 30.469648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235607, 28.801476, 30.727303>,  <43.791420, 29.285812, 30.677156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235607, 28.801476, 30.727303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.104446, 29.066042, 30.457483>,  <43.025749, 29.224781, 30.295591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.104446, 29.066042, 30.457483>,  <43.235607, 28.801476, 30.727303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.104446, 29.066042, 30.457483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441276, -0.738574, -0.509691,
		-0.835320, 0.130535, 0.534042,
		-0.327897, 0.661415, -0.674547,
		43.006077, 29.264467, 30.255119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486557, 28.649319, 30.703232>,  <43.235607, 28.801476, 30.727303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486557, 28.649319, 30.703232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605122, 28.850796, 30.378656>,  <42.676262, 28.971682, 30.183910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605122, 28.850796, 30.378656>,  <42.486557, 28.649319, 30.703232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605122, 28.850796, 30.378656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525046, -0.623771, -0.578997,
		-0.797788, 0.597664, 0.079568,
		0.296414, 0.503693, -0.811438,
		42.694046, 29.001904, 30.135225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914551, 28.572838, 30.261730>,  <42.486557, 28.649319, 30.703232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914551, 28.572838, 30.261730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223289, 28.668051, 30.025900>,  <42.408531, 28.725178, 29.884401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223289, 28.668051, 30.025900>,  <41.914551, 28.572838, 30.261730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223289, 28.668051, 30.025900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435172, -0.478281, -0.762806,
		-0.463552, 0.845334, -0.265575,
		0.771845, 0.238030, -0.589574,
		42.454842, 28.739460, 29.849028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579075, 28.719788, 29.629963>,  <41.914551, 28.572838, 30.261730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579075, 28.719788, 29.629963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956669, 28.618284, 29.545582>,  <42.183224, 28.557383, 29.494953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956669, 28.618284, 29.545582>,  <41.579075, 28.719788, 29.629963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956669, 28.618284, 29.545582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322747, -0.576759, -0.750456,
		0.068768, 0.776502, -0.626351,
		0.943984, -0.253760, -0.210951,
		42.239864, 28.542156, 29.482296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619568, 28.815601, 28.944031>,  <41.579075, 28.719788, 29.629963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619568, 28.815601, 28.944031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908718, 28.564632, 29.059816>,  <42.082211, 28.414051, 29.129288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908718, 28.564632, 29.059816>,  <41.619568, 28.815601, 28.944031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908718, 28.564632, 29.059816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223929, -0.609029, -0.760880,
		0.653685, 0.485204, -0.580752,
		0.722877, -0.627423, 0.289462,
		42.125580, 28.376406, 29.146654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366112, 28.687986, 28.585947>,  <41.619568, 28.815601, 28.944031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366112, 28.687986, 28.585947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208786, 28.372189, 28.774418>,  <42.114391, 28.182711, 28.887501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208786, 28.372189, 28.774418>,  <42.366112, 28.687986, 28.585947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208786, 28.372189, 28.774418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142555, -0.453914, -0.879568,
		0.908286, -0.413114, 0.065984,
		-0.393313, -0.789493, 0.471175,
		42.090794, 28.135342, 28.915770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222198, 28.619274, 27.959023>,  <42.366112, 28.687986, 28.585947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222198, 28.619274, 27.959023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050655, 28.934006, 28.136555>,  <41.947731, 29.122845, 28.243074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050655, 28.934006, 28.136555>,  <42.222198, 28.619274, 27.959023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050655, 28.934006, 28.136555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716756, -0.002674, 0.697319,
		0.549856, 0.617168, -0.562816,
		-0.428858, 0.786827, 0.443829,
		41.921997, 29.170053, 28.269703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945766, 28.914366, 27.533165>,  <42.222198, 28.619274, 27.959023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945766, 28.914366, 27.533165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125748, 29.155630, 27.796602>,  <43.233734, 29.300388, 27.954664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125748, 29.155630, 27.796602>,  <42.945766, 28.914366, 27.533165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125748, 29.155630, 27.796602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002973, 0.736445, -0.676491,
		-0.893049, 0.306345, 0.329569,
		0.449949, 0.603160, 0.658592,
		43.260731, 29.336578, 27.994181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505932, 29.519663, 27.670446>,  <42.945766, 28.914366, 27.533165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505932, 29.519663, 27.670446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.895115, 29.598463, 27.718693>,  <43.128624, 29.645742, 27.747641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.895115, 29.598463, 27.718693>,  <42.505932, 29.519663, 27.670446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.895115, 29.598463, 27.718693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070552, 0.750661, -0.656910,
		-0.219954, 0.630634, 0.744258,
		0.972956, 0.196999, 0.120618,
		43.187000, 29.657562, 27.754879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619961, 30.285179, 27.852589>,  <42.505932, 29.519663, 27.670446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619961, 30.285179, 27.852589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944771, 30.116030, 27.691692>,  <43.139656, 30.014540, 27.595154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944771, 30.116030, 27.691692>,  <42.619961, 30.285179, 27.852589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944771, 30.116030, 27.691692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058508, 0.744720, -0.664807,
		0.580688, 0.516303, 0.629470,
		0.812021, -0.422874, -0.402242,
		43.188377, 29.989168, 27.571020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295219, 30.675224, 27.959656>,  <42.619961, 30.285179, 27.852589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295219, 30.675224, 27.959656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293907, 30.495207, 27.602455>,  <43.293121, 30.387196, 27.388136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293907, 30.495207, 27.602455>,  <43.295219, 30.675224, 27.959656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293907, 30.495207, 27.602455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219634, 0.870876, -0.439701,
		0.975577, -0.197575, 0.095989,
		-0.003279, -0.450044, -0.893000,
		43.292923, 30.360193, 27.334555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180103, 30.920473, 27.310560>,  <43.295219, 30.675224, 27.959656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180103, 30.920473, 27.310560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230152, 31.182249, 27.012285>,  <43.260181, 31.339315, 26.833321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230152, 31.182249, 27.012285>,  <43.180103, 30.920473, 27.310560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230152, 31.182249, 27.012285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041325, 0.754381, 0.655135,
		0.991280, -0.051156, 0.121434,
		0.125122, 0.654441, -0.745689,
		43.267689, 31.378582, 26.788578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851170, 31.237295, 27.320702>,  <43.180103, 30.920473, 27.310560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851170, 31.237295, 27.320702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518982, 31.417946, 27.190256>,  <43.319668, 31.526337, 27.111988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518982, 31.417946, 27.190256>,  <43.851170, 31.237295, 27.320702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518982, 31.417946, 27.190256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091178, 0.687727, 0.720221,
		0.549546, 0.568390, -0.612316,
		-0.830473, 0.451625, -0.326113,
		43.269840, 31.553432, 27.092422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.949413, 31.984255, 27.046392>,  <43.851170, 31.237295, 27.320702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.949413, 31.984255, 27.046392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601192, 31.886742, 27.217371>,  <43.392262, 31.828234, 27.319958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601192, 31.886742, 27.217371>,  <43.949413, 31.984255, 27.046392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601192, 31.886742, 27.217371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138082, 0.712730, 0.687713,
		-0.472305, 0.657713, -0.586807,
		-0.870552, -0.243783, 0.427444,
		43.340027, 31.813606, 27.345604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621120, 32.621078, 27.174992>,  <43.949413, 31.984255, 27.046392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.621120, 32.621078, 27.174992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480034, 32.337185, 27.418915>,  <43.395382, 32.166847, 27.565269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480034, 32.337185, 27.418915>,  <43.621120, 32.621078, 27.174992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480034, 32.337185, 27.418915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291308, 0.536021, 0.792351,
		-0.889230, 0.457119, 0.017688,
		-0.352717, -0.709735, 0.609808,
		43.374218, 32.124264, 27.601858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321022, 33.002838, 27.684227>,  <43.621120, 32.621078, 27.174992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321022, 33.002838, 27.684227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376270, 32.648335, 27.861073>,  <43.409420, 32.435631, 27.967180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376270, 32.648335, 27.861073>,  <43.321022, 33.002838, 27.684227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376270, 32.648335, 27.861073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118335, 0.457965, 0.881059,
		-0.983320, -0.069378, 0.168131,
		0.138124, -0.886259, 0.442116,
		43.417709, 32.382458, 27.993708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982197, 33.090221, 28.331263>,  <43.321022, 33.002838, 27.684227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982197, 33.090221, 28.331263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211143, 32.768810, 28.396673>,  <43.348511, 32.575966, 28.435921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211143, 32.768810, 28.396673>,  <42.982197, 33.090221, 28.331263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211143, 32.768810, 28.396673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276833, 0.377069, 0.883845,
		-0.771853, -0.460617, 0.438265,
		0.572370, -0.803524, 0.163528,
		43.382854, 32.527752, 28.445732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860016, 32.966358, 29.022432>,  <42.982197, 33.090221, 28.331263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860016, 32.966358, 29.022432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199718, 32.777603, 28.927700>,  <43.403542, 32.664352, 28.870861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199718, 32.777603, 28.927700>,  <42.860016, 32.966358, 29.022432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199718, 32.777603, 28.927700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366434, 0.203844, 0.907840,
		-0.380119, -0.857772, 0.346030,
		0.849256, -0.471884, -0.236832,
		43.454494, 32.636040, 28.856651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027451, 32.547012, 29.555460>,  <42.860016, 32.966358, 29.022432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027451, 32.547012, 29.555460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381630, 32.562477, 29.370207>,  <43.594135, 32.571758, 29.259054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381630, 32.562477, 29.370207>,  <43.027451, 32.547012, 29.555460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.381630, 32.562477, 29.370207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437511, 0.266765, 0.858732,
		0.156751, -0.962986, 0.219290,
		0.885445, 0.038665, -0.463132,
		43.647263, 32.574078, 29.231268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585629, 32.194576, 29.995516>,  <43.027451, 32.547012, 29.555460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.585629, 32.194576, 29.995516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.782738, 32.447601, 29.756506>,  <43.901005, 32.599415, 29.613100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.782738, 32.447601, 29.756506>,  <43.585629, 32.194576, 29.995516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.782738, 32.447601, 29.756506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562621, 0.292220, 0.773347,
		0.663799, -0.717267, -0.211894,
		0.492776, 0.632563, -0.597524,
		43.930573, 32.637371, 29.577250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377052, 32.077129, 30.104811>,  <43.585629, 32.194576, 29.995516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377052, 32.077129, 30.104811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.377373, 32.424259, 29.906063>,  <44.377563, 32.632538, 29.786816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.377373, 32.424259, 29.906063>,  <44.377052, 32.077129, 30.104811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.377373, 32.424259, 29.906063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696817, 0.355893, 0.622725,
		0.717248, -0.346726, -0.604430,
		0.000802, 0.867826, -0.496868,
		44.377613, 32.684608, 29.757002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.057781, 32.242928, 30.048286>,  <44.377052, 32.077129, 30.104811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.057781, 32.242928, 30.048286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.838226, 32.574818, 30.007732>,  <44.706493, 32.773952, 29.983400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.838226, 32.574818, 30.007732>,  <45.057781, 32.242928, 30.048286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.838226, 32.574818, 30.007732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591471, 0.471228, 0.654299,
		0.590663, 0.299170, -0.749409,
		-0.548889, 0.829724, -0.101386,
		44.673561, 32.823734, 29.977316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503361, 32.820141, 29.783989>,  <45.057781, 32.242928, 30.048286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503361, 32.820141, 29.783989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202145, 32.992062, 29.983271>,  <45.021416, 33.095215, 30.102840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202145, 32.992062, 29.983271>,  <45.503361, 32.820141, 29.783989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202145, 32.992062, 29.983271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650625, 0.373508, 0.661195,
		0.098100, 0.822048, -0.560905,
		-0.753036, 0.429802, 0.498204,
		44.976234, 33.121002, 30.132732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.866478, 33.323917, 29.995296>,  <45.503361, 32.820141, 29.783989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.866478, 33.323917, 29.995296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.523891, 33.320778, 30.201752>,  <45.318340, 33.318893, 30.325624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.523891, 33.320778, 30.201752>,  <45.866478, 33.323917, 29.995296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523891, 33.320778, 30.201752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464602, 0.424026, 0.777398,
		-0.224959, 0.905616, -0.359517,
		-0.856468, -0.007850, 0.516140,
		45.266953, 33.318424, 30.356594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.893387, 34.046314, 30.372414>,  <45.866478, 33.323917, 29.995296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.893387, 34.046314, 30.372414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.659859, 33.774414, 30.549995>,  <45.519741, 33.611275, 30.656544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.659859, 33.774414, 30.549995>,  <45.893387, 34.046314, 30.372414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.659859, 33.774414, 30.549995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370015, 0.263956, 0.890739,
		-0.722663, 0.684302, 0.097413,
		-0.583822, -0.679748, 0.443953,
		45.484711, 33.570488, 30.683182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.051315, 34.276386, 30.976669>,  <45.893387, 34.046314, 30.372414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.051315, 34.276386, 30.976669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.820789, 33.961536, 31.064569>,  <45.682472, 33.772625, 31.117310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.820789, 33.961536, 31.064569>,  <46.051315, 34.276386, 30.976669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.820789, 33.961536, 31.064569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170459, 0.147202, 0.974308,
		-0.799251, 0.598969, 0.049338,
		-0.576318, -0.787126, 0.219750,
		45.647896, 33.725399, 31.130495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501740, 34.510391, 31.510666>,  <46.051315, 34.276386, 30.976669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501740, 34.510391, 31.510666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576084, 34.118385, 31.539003>,  <45.620689, 33.883183, 31.556005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576084, 34.118385, 31.539003>,  <45.501740, 34.510391, 31.510666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.576084, 34.118385, 31.539003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207368, 0.109600, 0.972104,
		-0.960445, -0.165984, 0.223595,
		0.185859, -0.980019, 0.070845,
		45.631844, 33.824379, 31.560257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.145683, 34.373344, 32.123596>,  <45.501740, 34.510391, 31.510666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.145683, 34.373344, 32.123596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.385887, 34.060715, 32.056038>,  <45.530010, 33.873138, 32.015503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.385887, 34.060715, 32.056038>,  <45.145683, 34.373344, 32.123596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.385887, 34.060715, 32.056038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251565, -0.015834, 0.967711,
		-0.759014, -0.623609, 0.187108,
		0.600511, -0.781576, -0.168896,
		45.566040, 33.826241, 32.005367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.983768, 33.869339, 32.635384>,  <45.145683, 34.373344, 32.123596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.983768, 33.869339, 32.635384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360962, 33.802917, 32.520008>,  <45.587280, 33.763065, 32.450783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360962, 33.802917, 32.520008>,  <44.983768, 33.869339, 32.635384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360962, 33.802917, 32.520008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307575, 0.103653, 0.945861,
		-0.127170, -0.980653, 0.148819,
		0.942988, -0.166058, -0.288443,
		45.643860, 33.753101, 32.433475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294136, 33.519512, 33.139114>,  <44.983768, 33.869339, 32.635384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294136, 33.519512, 33.139114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.637684, 33.568794, 32.940250>,  <45.843811, 33.598362, 32.820930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.637684, 33.568794, 32.940250>,  <45.294136, 33.519512, 33.139114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.637684, 33.568794, 32.940250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503530, -0.025280, 0.863608,
		0.093835, -0.992059, -0.083751,
		0.858867, 0.123208, -0.497159,
		45.895344, 33.605755, 32.791103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.817379, 32.927692, 33.256725>,  <45.294136, 33.519512, 33.139114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.817379, 32.927692, 33.256725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.033115, 33.245361, 33.144718>,  <46.162556, 33.435963, 33.077515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.033115, 33.245361, 33.144718>,  <45.817379, 32.927692, 33.256725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.033115, 33.245361, 33.144718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520651, -0.053136, 0.852114,
		0.661845, -0.605368, -0.442144,
		0.539337, 0.794170, -0.280018,
		46.194916, 33.483612, 33.060711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.441326, 32.775364, 33.322453>,  <45.817379, 32.927692, 33.256725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.441326, 32.775364, 33.322453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489571, 33.172432, 33.325562>,  <46.518517, 33.410671, 33.327427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489571, 33.172432, 33.325562>,  <46.441326, 32.775364, 33.322453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.489571, 33.172432, 33.325562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668481, -0.087009, 0.738622,
		0.733884, -0.083890, -0.674075,
		0.120614, 0.992669, 0.007775,
		46.525753, 33.470234, 33.327892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.189560, 32.921505, 33.397346>,  <46.441326, 32.775364, 33.322453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.189560, 32.921505, 33.397346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.013432, 33.256844, 33.525906>,  <46.907757, 33.458046, 33.603043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.013432, 33.256844, 33.525906>,  <47.189560, 32.921505, 33.397346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.013432, 33.256844, 33.525906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549060, -0.031808, 0.835177,
		0.710390, 0.544210, -0.446297,
		-0.440316, 0.838346, 0.321400,
		46.881336, 33.508347, 33.622326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.682396, 33.420300, 33.532211>,  <47.189560, 32.921505, 33.397346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.682396, 33.420300, 33.532211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365341, 33.473598, 33.770195>,  <47.175110, 33.505577, 33.912987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365341, 33.473598, 33.770195>,  <47.682396, 33.420300, 33.532211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.365341, 33.473598, 33.770195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591202, -0.070550, 0.803432,
		0.149031, 0.988568, -0.022857,
		-0.792634, 0.133250, 0.594958,
		47.127552, 33.513573, 33.948681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.963017, 33.253834, 34.197720>,  <47.682396, 33.420300, 33.532211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.963017, 33.253834, 34.197720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631283, 33.437389, 34.325233>,  <47.432243, 33.547523, 34.401741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631283, 33.437389, 34.325233>,  <47.963017, 33.253834, 34.197720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.631283, 33.437389, 34.325233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340519, -0.037250, 0.939499,
		0.443004, 0.887711, -0.125369,
		-0.829334, 0.458892, 0.318784,
		47.382484, 33.575058, 34.420868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.117977, 33.663986, 34.810677>,  <47.963017, 33.253834, 34.197720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.117977, 33.663986, 34.810677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.733334, 33.556313, 34.832039>,  <47.502548, 33.491711, 34.844856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.733334, 33.556313, 34.832039>,  <48.117977, 33.663986, 34.810677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.733334, 33.556313, 34.832039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102599, -0.172133, 0.979716,
		-0.254527, 0.947582, 0.193142,
		-0.961608, -0.269180, 0.053408,
		47.444851, 33.475559, 34.848061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.818604, 34.151520, 35.255356>,  <48.117977, 33.663986, 34.810677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.818604, 34.151520, 35.255356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.592247, 33.821857, 35.264538>,  <47.456432, 33.624058, 35.270046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.592247, 33.821857, 35.264538>,  <47.818604, 34.151520, 35.255356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.592247, 33.821857, 35.264538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120962, -0.055454, 0.991107,
		-0.815558, 0.563636, 0.131073,
		-0.565892, -0.824160, 0.022953,
		47.422478, 33.574608, 35.271423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.571037, 34.794666, 35.378410>,  <47.818604, 34.151520, 35.255356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.571037, 34.794666, 35.378410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.596085, 34.900043, 34.993355>,  <47.611111, 34.963268, 34.762321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.596085, 34.900043, 34.993355>,  <47.571037, 34.794666, 35.378410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.596085, 34.900043, 34.993355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320142, -0.908264, -0.269381,
		-0.945298, 0.325049, 0.027467,
		0.062615, 0.263439, -0.962642,
		47.614868, 34.979076, 34.704563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.203953, 40.290890, 42.823200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.814533, 40.230042, 42.755001>,  <34.580883, 40.193531, 42.714081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.814533, 40.230042, 42.755001>,  <35.203953, 40.290890, 42.823200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814533, 40.230042, 42.755001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221510, -0.445208, -0.867596,
		0.056074, -0.882411, 0.467127,
		-0.973545, -0.152123, -0.170498,
		34.522469, 40.184406, 42.703850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245407, 39.667416, 42.464859>,  <35.203953, 40.290890, 42.823200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245407, 39.667416, 42.464859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.878494, 39.800522, 42.377350>,  <34.658348, 39.880386, 42.324844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.878494, 39.800522, 42.377350>,  <35.245407, 39.667416, 42.464859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878494, 39.800522, 42.377350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062151, -0.422998, -0.903997,
		-0.393353, -0.842819, 0.367328,
		-0.917284, 0.332760, -0.218770,
		34.603310, 39.900352, 42.311718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885006, 39.171169, 42.194473>,  <35.245407, 39.667416, 42.464859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885006, 39.171169, 42.194473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.700413, 39.496258, 42.052197>,  <34.589657, 39.691311, 41.966831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.700413, 39.496258, 42.052197>,  <34.885006, 39.171169, 42.194473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700413, 39.496258, 42.052197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005951, -0.403765, -0.914843,
		-0.887129, -0.420068, 0.191167,
		-0.461482, 0.812722, -0.355692,
		34.561970, 39.740074, 41.945488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634338, 38.819736, 41.686596>,  <34.885006, 39.171169, 42.194473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634338, 38.819736, 41.686596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.548645, 39.205479, 41.624485>,  <34.497227, 39.436924, 41.587219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.548645, 39.205479, 41.624485>,  <34.634338, 38.819736, 41.686596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548645, 39.205479, 41.624485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148691, -0.189316, -0.970593,
		-0.965398, -0.184849, 0.183950,
		-0.214238, 0.964360, -0.155279,
		34.484375, 39.494785, 41.577900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965210, 38.787018, 41.359821>,  <34.634338, 38.819736, 41.686596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965210, 38.787018, 41.359821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.170109, 39.122131, 41.284225>,  <34.293049, 39.323200, 41.238869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.170109, 39.122131, 41.284225>,  <33.965210, 38.787018, 41.359821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170109, 39.122131, 41.284225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022320, -0.232965, -0.972229,
		-0.858545, 0.493808, -0.138036,
		0.512252, 0.837784, -0.188989,
		34.323784, 39.373466, 41.227528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662231, 39.205807, 40.714951>,  <33.965210, 38.787018, 41.359821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662231, 39.205807, 40.714951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.025661, 39.367085, 40.758640>,  <34.243717, 39.463852, 40.784855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.025661, 39.367085, 40.758640>,  <33.662231, 39.205807, 40.714951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025661, 39.367085, 40.758640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140821, -0.049458, -0.988799,
		-0.393278, 0.913776, -0.101714,
		0.908571, 0.403196, 0.109228,
		34.298233, 39.488045, 40.791409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756004, 39.606369, 40.157551>,  <33.662231, 39.205807, 40.714951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756004, 39.606369, 40.157551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.126667, 39.562260, 40.301304>,  <34.349064, 39.535793, 40.387554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.126667, 39.562260, 40.301304>,  <33.756004, 39.606369, 40.157551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126667, 39.562260, 40.301304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352675, -0.075949, -0.932659,
		0.130141, 0.990995, -0.031488,
		0.926652, -0.110272, 0.359383,
		34.404663, 39.529179, 40.409119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235741, 40.025238, 39.696560>,  <33.756004, 39.606369, 40.157551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235741, 40.025238, 39.696560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.472298, 39.761757, 39.882622>,  <34.614231, 39.603668, 39.994259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.472298, 39.761757, 39.882622>,  <34.235741, 40.025238, 39.696560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472298, 39.761757, 39.882622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417802, -0.243081, -0.875416,
		0.689705, 0.712059, 0.131449,
		0.591395, -0.658698, 0.465154,
		34.649715, 39.564148, 40.022167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921124, 40.145123, 39.337109>,  <34.235741, 40.025238, 39.696560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921124, 40.145123, 39.337109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.932991, 39.793163, 39.526806>,  <34.940113, 39.581989, 39.640625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.932991, 39.793163, 39.526806>,  <34.921124, 40.145123, 39.337109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932991, 39.793163, 39.526806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547260, -0.382721, -0.744333,
		0.836437, 0.281619, 0.470175,
		0.029672, -0.879895, 0.474241,
		34.941895, 39.529194, 39.669079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590290, 39.721478, 39.307903>,  <34.921124, 40.145123, 39.337109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590290, 39.721478, 39.307903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.313694, 39.434753, 39.343727>,  <35.147736, 39.262718, 39.365223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.313694, 39.434753, 39.343727>,  <35.590290, 39.721478, 39.307903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313694, 39.434753, 39.343727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459134, -0.531825, -0.711589,
		0.557704, -0.450939, 0.696865,
		-0.691493, -0.716810, 0.089560,
		35.106247, 39.219711, 39.370594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009861, 39.163975, 39.349518>,  <35.590290, 39.721478, 39.307903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009861, 39.163975, 39.349518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655327, 38.999958, 39.263470>,  <35.442608, 38.901546, 39.211842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655327, 38.999958, 39.263470>,  <36.009861, 39.163975, 39.349518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655327, 38.999958, 39.263470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436872, -0.586507, -0.682021,
		0.153487, -0.698479, 0.698976,
		-0.886332, -0.410044, -0.215125,
		35.389427, 38.876945, 39.198933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124344, 38.456501, 39.316780>,  <36.009861, 39.163975, 39.349518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124344, 38.456501, 39.316780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.770050, 38.485405, 39.133366>,  <35.557476, 38.502747, 39.023315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.770050, 38.485405, 39.133366>,  <36.124344, 38.456501, 39.316780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770050, 38.485405, 39.133366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318219, -0.624653, -0.713124,
		-0.337961, -0.777551, 0.530279,
		-0.885731, 0.072264, -0.458540,
		35.504330, 38.507084, 38.995804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000454, 37.742989, 39.033951>,  <36.124344, 38.456501, 39.316780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000454, 37.742989, 39.033951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734219, 37.959759, 38.828697>,  <35.574478, 38.089821, 38.705544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734219, 37.959759, 38.828697>,  <36.000454, 37.742989, 39.033951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734219, 37.959759, 38.828697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222389, -0.512303, -0.829511,
		-0.712414, -0.666230, 0.220466,
		-0.665590, 0.541926, -0.513134,
		35.534542, 38.122337, 38.674759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492928, 37.278076, 38.737614>,  <36.000454, 37.742989, 39.033951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492928, 37.278076, 38.737614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.509384, 37.613560, 38.520405>,  <35.519257, 37.814850, 38.390079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.509384, 37.613560, 38.520405>,  <35.492928, 37.278076, 38.737614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509384, 37.613560, 38.520405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279835, -0.531404, -0.799564,
		-0.959167, -0.119063, -0.256561,
		0.041139, 0.838710, -0.543023,
		35.521725, 37.865173, 38.357498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244568, 37.089691, 38.058434>,  <35.492928, 37.278076, 38.737614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244568, 37.089691, 38.058434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432449, 37.436481, 37.991821>,  <35.545177, 37.644554, 37.951855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432449, 37.436481, 37.991821>,  <35.244568, 37.089691, 38.058434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432449, 37.436481, 37.991821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399961, -0.377138, -0.835343,
		-0.787027, 0.325758, -0.523899,
		0.469702, 0.866977, -0.166527,
		35.573360, 37.696575, 37.941864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225773, 37.158104, 37.300011>,  <35.244568, 37.089691, 38.058434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225773, 37.158104, 37.300011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.515957, 37.414658, 37.399883>,  <35.690067, 37.568588, 37.459808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.515957, 37.414658, 37.399883>,  <35.225773, 37.158104, 37.300011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515957, 37.414658, 37.399883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458820, -0.180265, -0.870051,
		-0.513024, 0.745746, -0.425052,
		0.725459, 0.641379, 0.249683,
		35.733593, 37.607071, 37.474789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292503, 37.654629, 36.714001>,  <35.225773, 37.158104, 37.300011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292503, 37.654629, 36.714001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.635204, 37.667969, 36.919861>,  <35.840824, 37.675972, 37.043377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.635204, 37.667969, 36.919861>,  <35.292503, 37.654629, 36.714001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635204, 37.667969, 36.919861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513264, -0.152600, -0.844555,
		0.050372, 0.987725, -0.147856,
		0.856752, 0.033348, 0.514650,
		35.892231, 37.677975, 37.074257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781391, 38.088795, 36.321075>,  <35.292503, 37.654629, 36.714001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781391, 38.088795, 36.321075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.986996, 37.855061, 36.572262>,  <36.110359, 37.714821, 36.722973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.986996, 37.855061, 36.572262>,  <35.781391, 38.088795, 36.321075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986996, 37.855061, 36.572262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663371, -0.193326, -0.722886,
		0.543811, 0.788146, 0.288261,
		0.514012, -0.584337, 0.627967,
		36.141201, 37.679760, 36.760651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481976, 38.236511, 36.178562>,  <35.781391, 38.088795, 36.321075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481976, 38.236511, 36.178562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.512005, 37.885670, 36.368320>,  <36.530022, 37.675163, 36.482174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.512005, 37.885670, 36.368320>,  <36.481976, 38.236511, 36.178562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512005, 37.885670, 36.368320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726391, -0.277827, -0.628624,
		0.683170, 0.391784, 0.616267,
		0.075069, -0.877108, 0.474391,
		36.534527, 37.622536, 36.510639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242970, 38.112682, 36.211037>,  <36.481976, 38.236511, 36.178562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242970, 38.112682, 36.211037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.057190, 37.759499, 36.238380>,  <36.945724, 37.547588, 36.254787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.057190, 37.759499, 36.238380>,  <37.242970, 38.112682, 36.211037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057190, 37.759499, 36.238380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495880, -0.323239, -0.805990,
		0.733753, -0.340440, 0.587969,
		-0.464446, -0.882959, 0.068360,
		36.917854, 37.494610, 36.258888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789986, 37.741737, 35.950321>,  <37.242970, 38.112682, 36.211037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789986, 37.741737, 35.950321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.485725, 37.482098, 35.946842>,  <37.303169, 37.326313, 35.944756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.485725, 37.482098, 35.946842>,  <37.789986, 37.741737, 35.950321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485725, 37.482098, 35.946842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287057, -0.324318, -0.901341,
		0.582240, -0.688105, 0.433023,
		-0.760654, -0.649099, -0.008694,
		37.257530, 37.287369, 35.944233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106148, 37.122929, 35.909805>,  <37.789986, 37.741737, 35.950321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106148, 37.122929, 35.909805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.734512, 37.168625, 35.769096>,  <37.511532, 37.196045, 35.684673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.734512, 37.168625, 35.769096>,  <38.106148, 37.122929, 35.909805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734512, 37.168625, 35.769096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319209, -0.232704, -0.918670,
		-0.186807, -0.965814, 0.179737,
		-0.929090, 0.114241, -0.351767,
		37.455784, 37.202900, 35.663567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770992, 36.821606, 35.545185>,  <38.106148, 37.122929, 35.909805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770992, 36.821606, 35.545185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.086723, 36.715446, 35.766644>,  <39.276161, 36.651752, 35.899521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.086723, 36.715446, 35.766644>,  <38.770992, 36.821606, 35.545185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086723, 36.715446, 35.766644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475156, 0.307028, 0.824597,
		-0.388831, -0.913947, 0.116241,
		0.789327, -0.265397, 0.553649,
		39.323521, 36.635826, 35.932739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620502, 36.336266, 36.029530>,  <38.770992, 36.821606, 35.545185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620502, 36.336266, 36.029530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.952717, 36.513374, 36.164680>,  <39.152046, 36.619640, 36.245773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.952717, 36.513374, 36.164680>,  <38.620502, 36.336266, 36.029530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952717, 36.513374, 36.164680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463851, 0.214054, 0.859665,
		0.308316, -0.870706, 0.383162,
		0.830532, 0.442778, 0.337881,
		39.201878, 36.646206, 36.266045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708187, 36.150684, 36.719028>,  <38.620502, 36.336266, 36.029530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708187, 36.150684, 36.719028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.928394, 36.484322, 36.705086>,  <39.060520, 36.684505, 36.696720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.928394, 36.484322, 36.705086>,  <38.708187, 36.150684, 36.719028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928394, 36.484322, 36.705086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394067, 0.296448, 0.869960,
		0.735964, -0.465190, 0.491889,
		0.550516, 0.834096, -0.034859,
		39.093548, 36.734550, 36.694630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903690, 36.290627, 37.423717>,  <38.708187, 36.150684, 36.719028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903690, 36.290627, 37.423717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.979187, 36.644558, 37.253330>,  <39.024487, 36.856918, 37.151096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.979187, 36.644558, 37.253330>,  <38.903690, 36.290627, 37.423717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979187, 36.644558, 37.253330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310824, 0.465291, 0.828790,
		0.931539, -0.024025, 0.362847,
		0.188741, 0.884832, -0.425969,
		39.035809, 36.910007, 37.125538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248936, 36.631390, 37.907406>,  <38.903690, 36.290627, 37.423717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248936, 36.631390, 37.907406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.138123, 36.942745, 37.682068>,  <39.071636, 37.129559, 37.546864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.138123, 36.942745, 37.682068>,  <39.248936, 36.631390, 37.907406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138123, 36.942745, 37.682068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247133, 0.508847, 0.824622,
		0.928536, 0.367667, 0.051400,
		-0.277031, 0.778394, -0.563345,
		39.055012, 37.176262, 37.513065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617405, 37.232670, 38.141033>,  <39.248936, 36.631390, 37.907406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617405, 37.232670, 38.141033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.305943, 37.397606, 37.951862>,  <39.119064, 37.496567, 37.838360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.305943, 37.397606, 37.951862>,  <39.617405, 37.232670, 38.141033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305943, 37.397606, 37.951862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279673, 0.446633, 0.849884,
		0.561668, 0.794036, -0.232454,
		-0.778660, 0.412341, -0.472930,
		39.072346, 37.521309, 37.809982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596638, 37.902485, 38.496025>,  <39.617405, 37.232670, 38.141033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596638, 37.902485, 38.496025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.237099, 37.836605, 38.333569>,  <39.021378, 37.797077, 38.236095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.237099, 37.836605, 38.333569>,  <39.596638, 37.902485, 38.496025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237099, 37.836605, 38.333569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431192, 0.498163, 0.752268,
		0.078425, 0.851298, -0.518789,
		-0.898845, -0.164701, -0.406142,
		38.967445, 37.787193, 38.211727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186287, 38.465652, 38.676277>,  <39.596638, 37.902485, 38.496025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186287, 38.465652, 38.676277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.905701, 38.199844, 38.573238>,  <38.737347, 38.040359, 38.511414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.905701, 38.199844, 38.573238>,  <39.186287, 38.465652, 38.676277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905701, 38.199844, 38.573238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670061, 0.491769, 0.556042,
		-0.242822, 0.562652, -0.790228,
		-0.701468, -0.664520, -0.257599,
		38.695259, 38.000488, 38.495960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586380, 38.908684, 38.508488>,  <39.186287, 38.465652, 38.676277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586380, 38.908684, 38.508488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.480419, 38.535534, 38.606117>,  <38.416843, 38.311646, 38.664696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.480419, 38.535534, 38.606117>,  <38.586380, 38.908684, 38.508488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480419, 38.535534, 38.606117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681563, 0.360191, 0.636973,
		-0.682129, 0.002384, -0.731228,
		-0.264900, -0.932876, 0.244072,
		38.400948, 38.255672, 38.679340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896351, 38.978401, 38.747536>,  <38.586380, 38.908684, 38.508488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896351, 38.978401, 38.747536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979301, 38.612114, 38.885208>,  <38.029072, 38.392342, 38.967812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979301, 38.612114, 38.885208>,  <37.896351, 38.978401, 38.747536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979301, 38.612114, 38.885208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597798, 0.159871, 0.785544,
		-0.774359, -0.368652, -0.514260,
		0.207377, -0.915717, 0.344177,
		38.041515, 38.337399, 38.988461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153038, 38.539368, 38.909939>,  <37.896351, 38.978401, 38.747536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153038, 38.539368, 38.909939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.467030, 38.408115, 39.120132>,  <37.655426, 38.329365, 39.246250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.467030, 38.408115, 39.120132>,  <37.153038, 38.539368, 38.909939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467030, 38.408115, 39.120132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519968, 0.112187, 0.846787,
		-0.336813, -0.937945, -0.082555,
		0.784978, -0.328135, 0.525487,
		37.702522, 38.309673, 39.277779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878643, 38.159904, 39.479935>,  <37.153038, 38.539368, 38.909939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878643, 38.159904, 39.479935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.257259, 38.194767, 39.604168>,  <37.484428, 38.215687, 39.678707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.257259, 38.194767, 39.604168>,  <36.878643, 38.159904, 39.479935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257259, 38.194767, 39.604168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321335, 0.339459, 0.884031,
		-0.028380, -0.936574, 0.349319,
		0.946540, 0.087160, 0.310588,
		37.541222, 38.220917, 39.697346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882954, 37.854351, 40.091274>,  <36.878643, 38.159904, 39.479935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882954, 37.854351, 40.091274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181946, 38.119003, 40.067566>,  <37.361340, 38.277794, 40.053341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181946, 38.119003, 40.067566>,  <36.882954, 37.854351, 40.091274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181946, 38.119003, 40.067566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197601, 0.306646, 0.931087,
		0.634214, -0.684258, 0.359951,
		0.747480, 0.661634, -0.059269,
		37.406189, 38.317493, 40.049786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265915, 37.755859, 40.722282>,  <36.882954, 37.854351, 40.091274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265915, 37.755859, 40.722282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374233, 38.123413, 40.607517>,  <37.439224, 38.343945, 40.538658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374233, 38.123413, 40.607517>,  <37.265915, 37.755859, 40.722282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374233, 38.123413, 40.607517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168344, 0.338656, 0.925728,
		0.947802, -0.202386, 0.246397,
		0.270798, 0.918886, -0.286909,
		37.455471, 38.399078, 40.521446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726162, 37.914703, 41.165222>,  <37.265915, 37.755859, 40.722282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726162, 37.914703, 41.165222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.613117, 38.267887, 41.015285>,  <37.545292, 38.479797, 40.925323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.613117, 38.267887, 41.015285>,  <37.726162, 37.914703, 41.165222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613117, 38.267887, 41.015285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083725, 0.366579, 0.926613,
		0.955573, 0.293257, -0.029674,
		-0.282613, 0.882961, -0.374846,
		37.528332, 38.532776, 40.902832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044231, 38.347923, 41.617527>,  <37.726162, 37.914703, 41.165222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044231, 38.347923, 41.617527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.792057, 38.596138, 41.430988>,  <37.640755, 38.745068, 41.319065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.792057, 38.596138, 41.430988>,  <38.044231, 38.347923, 41.617527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792057, 38.596138, 41.430988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249342, 0.407053, 0.878713,
		0.735106, 0.670251, -0.101893,
		-0.630434, 0.620541, -0.466349,
		37.602928, 38.782299, 41.291084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231483, 38.925831, 41.949093>,  <38.044231, 38.347923, 41.617527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231483, 38.925831, 41.949093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.869205, 38.978752, 41.787987>,  <37.651840, 39.010506, 41.691322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.869205, 38.978752, 41.787987>,  <38.231483, 38.925831, 41.949093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869205, 38.978752, 41.787987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249685, 0.601326, 0.758989,
		0.342606, 0.787974, -0.511583,
		-0.905692, 0.132300, -0.402763,
		37.597496, 39.018440, 41.667156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083576, 39.628025, 41.993778>,  <38.231483, 38.925831, 41.949093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083576, 39.628025, 41.993778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729412, 39.444340, 41.965015>,  <37.516914, 39.334129, 41.947758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729412, 39.444340, 41.965015>,  <38.083576, 39.628025, 41.993778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729412, 39.444340, 41.965015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306871, 0.461320, 0.832475,
		-0.349113, 0.759147, -0.549377,
		-0.885409, -0.459216, -0.071908,
		37.463791, 39.306576, 41.943443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.573715, 40.099705, 42.137501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.394035, 39.745987, 42.188480>,  <37.286228, 39.533756, 42.219067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.394035, 39.745987, 42.188480>,  <37.573715, 40.099705, 42.137501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394035, 39.745987, 42.188480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461567, 0.351835, 0.814351,
		-0.764967, 0.306980, -0.566206,
		-0.449200, -0.884294, 0.127450,
		37.259274, 39.480698, 42.226715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859982, 40.236561, 42.151443>,  <37.573715, 40.099705, 42.137501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859982, 40.236561, 42.151443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.922825, 39.878811, 42.318974>,  <36.960529, 39.664162, 42.419491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.922825, 39.878811, 42.318974>,  <36.859982, 40.236561, 42.151443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922825, 39.878811, 42.318974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559879, 0.268691, 0.783799,
		-0.813543, -0.357630, -0.458528,
		0.157107, -0.894374, 0.418821,
		36.969955, 39.610500, 42.444618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181957, 39.936798, 42.392937>,  <36.859982, 40.236561, 42.151443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181957, 39.936798, 42.392937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.483231, 39.797691, 42.616283>,  <36.663994, 39.714226, 42.750290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.483231, 39.797691, 42.616283>,  <36.181957, 39.936798, 42.392937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483231, 39.797691, 42.616283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532310, 0.176475, 0.827951,
		-0.386474, -0.920822, -0.052203,
		0.753183, -0.347770, 0.558366,
		36.709187, 39.693359, 42.783794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902054, 39.726585, 43.053280>,  <36.181957, 39.936798, 42.392937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902054, 39.726585, 43.053280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.272995, 39.625824, 43.163960>,  <36.495560, 39.565369, 43.230366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.272995, 39.625824, 43.163960>,  <35.902054, 39.726585, 43.053280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272995, 39.625824, 43.163960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240526, 0.165158, 0.956488,
		-0.286642, -0.953555, 0.092570,
		0.927353, -0.251904, 0.276696,
		36.551201, 39.550251, 43.246967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859207, 39.084675, 43.570980>,  <35.902054, 39.726585, 43.053280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859207, 39.084675, 43.570980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.184032, 39.314400, 43.612385>,  <36.378929, 39.452236, 43.637230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.184032, 39.314400, 43.612385>,  <35.859207, 39.084675, 43.570980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184032, 39.314400, 43.612385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187057, 0.088148, 0.978386,
		0.552777, -0.813875, 0.179011,
		0.812064, 0.574314, 0.103515,
		36.427650, 39.486694, 43.643440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076214, 38.817448, 44.227398>,  <35.859207, 39.084675, 43.570980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076214, 38.817448, 44.227398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.232521, 39.182167, 44.176910>,  <36.326305, 39.400997, 44.146618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.232521, 39.182167, 44.176910>,  <36.076214, 38.817448, 44.227398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232521, 39.182167, 44.176910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031956, 0.150475, 0.988097,
		0.919934, -0.382085, 0.087938,
		0.390769, 0.911794, -0.126217,
		36.349751, 39.455704, 44.139046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600861, 38.863586, 44.778576>,  <36.076214, 38.817448, 44.227398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600861, 38.863586, 44.778576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.533066, 39.236492, 44.650723>,  <36.492390, 39.460236, 44.574013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.533066, 39.236492, 44.650723>,  <36.600861, 38.863586, 44.778576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533066, 39.236492, 44.650723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146687, 0.296848, 0.943591,
		0.974555, 0.206811, 0.086439,
		-0.169486, 0.932261, -0.319631,
		36.482220, 39.516171, 44.554832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118183, 39.374310, 45.055824>,  <36.600861, 38.863586, 44.778576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118183, 39.374310, 45.055824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779144, 39.573227, 44.981770>,  <36.575722, 39.692577, 44.937336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779144, 39.573227, 44.981770>,  <37.118183, 39.374310, 45.055824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779144, 39.573227, 44.981770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042161, 0.284686, 0.957693,
		0.528963, 0.819544, -0.220332,
		-0.847597, 0.497295, -0.185141,
		36.524864, 39.722416, 44.926228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151535, 39.781517, 45.566002>,  <37.118183, 39.374310, 45.055824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151535, 39.781517, 45.566002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.776436, 39.829506, 45.435631>,  <36.551376, 39.858299, 45.357407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.776436, 39.829506, 45.435631>,  <37.151535, 39.781517, 45.566002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776436, 39.829506, 45.435631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228970, 0.492062, 0.839909,
		0.261146, 0.862253, -0.433961,
		-0.937750, 0.119975, -0.325930,
		36.495110, 39.865498, 45.337852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029778, 40.471222, 45.522247>,  <37.151535, 39.781517, 45.566002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029778, 40.471222, 45.522247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.657234, 40.331028, 45.561691>,  <36.433708, 40.246910, 45.585358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.657234, 40.331028, 45.561691>,  <37.029778, 40.471222, 45.522247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657234, 40.331028, 45.561691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108451, 0.525603, 0.843789,
		-0.347565, 0.775179, -0.527538,
		-0.931363, -0.350484, 0.098612,
		36.377827, 40.225883, 45.591274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573662, 41.043678, 45.697994>,  <37.029778, 40.471222, 45.522247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573662, 41.043678, 45.697994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.409569, 40.705719, 45.835312>,  <36.311111, 40.502941, 45.917702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.409569, 40.705719, 45.835312>,  <36.573662, 41.043678, 45.697994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409569, 40.705719, 45.835312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139037, 0.429968, 0.892074,
		-0.901320, 0.318228, -0.293860,
		-0.410233, -0.844901, 0.343294,
		36.286499, 40.452248, 45.938301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055508, 41.289646, 46.177406>,  <36.573662, 41.043678, 45.697994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055508, 41.289646, 46.177406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.074078, 40.907219, 46.293182>,  <36.085220, 40.677761, 46.362648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.074078, 40.907219, 46.293182>,  <36.055508, 41.289646, 46.177406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074078, 40.907219, 46.293182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105242, 0.283460, 0.953192,
		-0.993362, -0.074714, -0.087459,
		0.046425, -0.956069, 0.289441,
		36.088005, 40.620399, 46.380016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527172, 41.166431, 46.788742>,  <36.055508, 41.289646, 46.177406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527172, 41.166431, 46.788742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.760933, 40.843967, 46.825813>,  <35.901188, 40.650490, 46.848057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.760933, 40.843967, 46.825813>,  <35.527172, 41.166431, 46.788742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760933, 40.843967, 46.825813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172958, -0.012155, 0.984854,
		-0.792819, -0.591579, -0.146534,
		0.584400, -0.806155, 0.092682,
		35.936253, 40.602119, 46.853619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207092, 40.715832, 47.278343>,  <35.527172, 41.166431, 46.788742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207092, 40.715832, 47.278343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.590912, 40.603943, 47.265533>,  <35.821201, 40.536808, 47.257847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.590912, 40.603943, 47.265533>,  <35.207092, 40.715832, 47.278343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590912, 40.603943, 47.265533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013958, -0.160864, 0.986878,
		-0.281207, -0.946507, -0.158261,
		0.959546, -0.279726, -0.032025,
		35.878777, 40.520027, 47.255928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210449, 40.073933, 47.633232>,  <35.207092, 40.715832, 47.278343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210449, 40.073933, 47.633232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.586552, 40.210114, 47.633949>,  <35.812214, 40.291824, 47.634380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.586552, 40.210114, 47.633949>,  <35.210449, 40.073933, 47.633232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586552, 40.210114, 47.633949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139481, -0.389997, 0.910191,
		0.310578, -0.855565, -0.414186,
		0.940259, 0.340456, 0.001789,
		35.868629, 40.312252, 47.634487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628181, 39.531548, 47.805111>,  <35.210449, 40.073933, 47.633232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628181, 39.531548, 47.805111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.854477, 39.849316, 47.893505>,  <35.990253, 40.039974, 47.946541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.854477, 39.849316, 47.893505>,  <35.628181, 39.531548, 47.805111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854477, 39.849316, 47.893505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142916, -0.358409, 0.922561,
		0.812102, -0.490350, -0.316302,
		0.565743, 0.794418, 0.220986,
		36.024200, 40.087643, 47.959801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183739, 39.265320, 48.170197>,  <35.628181, 39.531548, 47.805111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183739, 39.265320, 48.170197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.211700, 39.656178, 48.250500>,  <36.228477, 39.890694, 48.298683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.211700, 39.656178, 48.250500>,  <36.183739, 39.265320, 48.170197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211700, 39.656178, 48.250500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000225, -0.201238, 0.979542,
		0.997554, -0.068523, -0.013848,
		0.069908, 0.977143, 0.200761,
		36.232674, 39.949322, 48.310726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644566, 39.332775, 48.663830>,  <36.183739, 39.265320, 48.170197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644566, 39.332775, 48.663830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.433338, 39.668640, 48.714615>,  <36.306602, 39.870159, 48.745087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.433338, 39.668640, 48.714615>,  <36.644566, 39.332775, 48.663830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433338, 39.668640, 48.714615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027797, -0.132334, 0.990815,
		0.848748, 0.526746, 0.046541,
		-0.528067, 0.839658, 0.126960,
		36.274918, 39.920536, 48.752705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984684, 39.670238, 49.207676>,  <36.644566, 39.332775, 48.663830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984684, 39.670238, 49.207676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.618523, 39.831139, 49.213707>,  <36.398827, 39.927677, 49.217323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.618523, 39.831139, 49.213707>,  <36.984684, 39.670238, 49.207676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618523, 39.831139, 49.213707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069962, -0.195872, 0.978130,
		0.396404, 0.894333, 0.207445,
		-0.915407, 0.402248, 0.015075,
		36.343899, 39.951813, 49.218231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129265, 40.194073, 49.633625>,  <36.984684, 39.670238, 49.207676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129265, 40.194073, 49.633625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749386, 40.071232, 49.609058>,  <36.521458, 39.997528, 49.594318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749386, 40.071232, 49.609058>,  <37.129265, 40.194073, 49.633625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749386, 40.071232, 49.609058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027016, -0.275707, 0.960862,
		-0.312016, 0.910865, 0.270134,
		-0.949693, -0.307102, -0.061417,
		36.464478, 39.979103, 49.590633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745975, 40.584293, 50.112522>,  <37.129265, 40.194073, 49.633625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745975, 40.584293, 50.112522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.506451, 40.267700, 50.063580>,  <36.362736, 40.077744, 50.034214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.506451, 40.267700, 50.063580>,  <36.745975, 40.584293, 50.112522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506451, 40.267700, 50.063580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009159, -0.159531, 0.987150,
		-0.800834, 0.590001, 0.102779,
		-0.598817, -0.791485, -0.122354,
		36.326805, 40.030254, 50.026875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259720, 40.706573, 50.614433>,  <36.745975, 40.584293, 50.112522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259720, 40.706573, 50.614433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.254299, 40.322773, 50.501888>,  <36.251049, 40.092491, 50.434361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.254299, 40.322773, 50.501888>,  <36.259720, 40.706573, 50.614433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254299, 40.322773, 50.501888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050140, -0.281686, 0.958196,
		-0.998650, -0.001127, 0.051925,
		-0.013547, -0.959506, -0.281362,
		36.250237, 40.034920, 50.417480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705887, 40.328861, 50.981731>,  <36.259720, 40.706573, 50.614433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705887, 40.328861, 50.981731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.993073, 40.072659, 50.872715>,  <36.165382, 39.918938, 50.807304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.993073, 40.072659, 50.872715>,  <35.705887, 40.328861, 50.981731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993073, 40.072659, 50.872715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051909, -0.439710, 0.896638,
		-0.694145, -0.629603, -0.348943,
		0.717960, -0.640511, -0.272541,
		36.208462, 39.880505, 50.790955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101673, 40.874397, 50.966026>,  <35.705887, 40.328861, 50.981731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101673, 40.874397, 50.966026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.710781, 40.796383, 50.999458>,  <34.476246, 40.749573, 51.019520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.710781, 40.796383, 50.999458>,  <35.101673, 40.874397, 50.966026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710781, 40.796383, 50.999458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070080, -0.075151, -0.994707,
		0.200285, -0.977913, 0.059772,
		-0.977228, -0.195036, 0.083584,
		34.417614, 40.737873, 51.024532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954403, 40.298088, 50.667839>,  <35.101673, 40.874397, 50.966026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954403, 40.298088, 50.667839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.645836, 40.552299, 50.655113>,  <34.460693, 40.704826, 50.647476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.645836, 40.552299, 50.655113>,  <34.954403, 40.298088, 50.667839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645836, 40.552299, 50.655113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020527, -0.074830, -0.996985,
		-0.635995, -0.768441, 0.070771,
		-0.771420, 0.635530, -0.031818,
		34.414410, 40.742958, 50.645569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655224, 40.053493, 50.125126>,  <34.954403, 40.298088, 50.667839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655224, 40.053493, 50.125126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.442204, 40.383606, 50.200268>,  <34.314392, 40.581673, 50.245354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.442204, 40.383606, 50.200268>,  <34.655224, 40.053493, 50.125126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442204, 40.383606, 50.200268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255837, 0.054610, -0.965176,
		-0.806805, -0.562069, 0.182056,
		-0.532553, 0.825286, 0.187857,
		34.282436, 40.631191, 50.256626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011314, 39.998154, 49.772892>,  <34.655224, 40.053493, 50.125126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011314, 39.998154, 49.772892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.041912, 40.393204, 49.827656>,  <34.060272, 40.630234, 49.860512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.041912, 40.393204, 49.827656>,  <34.011314, 39.998154, 49.772892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041912, 40.393204, 49.827656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161331, 0.147761, -0.975776,
		-0.983931, 0.052555, 0.170637,
		0.076495, 0.987626, 0.136908,
		34.064861, 40.689491, 49.868729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543613, 40.215298, 49.312683>,  <34.011314, 39.998154, 49.772892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543613, 40.215298, 49.312683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.733143, 40.562817, 49.370213>,  <33.846859, 40.771328, 49.404728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.733143, 40.562817, 49.370213>,  <33.543613, 40.215298, 49.312683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733143, 40.562817, 49.370213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150128, 0.240618, -0.958939,
		-0.867730, 0.432773, 0.244441,
		0.473820, 0.868798, 0.143820,
		33.875290, 40.823456, 49.413357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058769, 40.663425, 48.973499>,  <33.543613, 40.215298, 49.312683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058769, 40.663425, 48.973499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.421318, 40.828152, 49.011227>,  <33.638847, 40.926987, 49.033863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.421318, 40.828152, 49.011227>,  <33.058769, 40.663425, 48.973499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421318, 40.828152, 49.011227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049289, 0.324811, -0.944494,
		-0.419592, 0.851415, 0.314698,
		0.906374, 0.411813, 0.094323,
		33.693230, 40.951694, 49.039524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989223, 41.372639, 48.714584>,  <33.058769, 40.663425, 48.973499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989223, 41.372639, 48.714584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.373314, 41.262882, 48.693913>,  <33.603767, 41.197029, 48.681511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.373314, 41.262882, 48.693913>,  <32.989223, 41.372639, 48.714584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373314, 41.262882, 48.693913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021116, 0.255911, -0.966470,
		0.278411, 0.926942, 0.251527,
		0.960230, -0.274387, -0.051675,
		33.661385, 41.180565, 48.678410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218815, 41.773941, 48.148102>,  <32.989223, 41.372639, 48.714584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218815, 41.773941, 48.148102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.496445, 41.488605, 48.186901>,  <33.663021, 41.317406, 48.210182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.496445, 41.488605, 48.186901>,  <33.218815, 41.773941, 48.148102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496445, 41.488605, 48.186901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054335, -0.082452, -0.995113,
		0.717849, 0.695953, -0.018469,
		0.694075, -0.713337, 0.097002,
		33.704666, 41.274605, 48.216003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573528, 41.817551, 47.552731>,  <33.218815, 41.773941, 48.148102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573528, 41.817551, 47.552731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.692558, 41.455528, 47.674263>,  <33.763977, 41.238316, 47.747185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.692558, 41.455528, 47.674263>,  <33.573528, 41.817551, 47.552731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692558, 41.455528, 47.674263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103593, -0.285763, -0.952685,
		0.949062, 0.314969, 0.008723,
		0.297573, -0.905060, 0.303835,
		33.781830, 41.184010, 47.765415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169426, 41.638638, 47.139038>,  <33.573528, 41.817551, 47.552731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169426, 41.638638, 47.139038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.031124, 41.283398, 47.260189>,  <33.948143, 41.070255, 47.332878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.031124, 41.283398, 47.260189>,  <34.169426, 41.638638, 47.139038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031124, 41.283398, 47.260189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041432, -0.336917, -0.940622,
		0.937409, -0.312677, 0.153286,
		-0.345756, -0.888099, 0.302875,
		33.927399, 41.016968, 47.351051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644669, 41.247639, 46.984573>,  <34.169426, 41.638638, 47.139038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644669, 41.247639, 46.984573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.323418, 41.009319, 46.984352>,  <34.130665, 40.866325, 46.984219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.323418, 41.009319, 46.984352>,  <34.644669, 41.247639, 46.984573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323418, 41.009319, 46.984352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260363, -0.350134, -0.899788,
		0.535903, -0.722790, 0.436328,
		-0.803131, -0.595802, -0.000550,
		34.082478, 40.830578, 46.984188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733147, 40.818375, 46.383945>,  <34.644669, 41.247639, 46.984573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733147, 40.818375, 46.383945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.355694, 40.740978, 46.491364>,  <34.129223, 40.694538, 46.555817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.355694, 40.740978, 46.491364>,  <34.733147, 40.818375, 46.383945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355694, 40.740978, 46.491364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207170, -0.287500, -0.935107,
		0.258145, -0.938032, 0.231208,
		-0.943632, -0.193494, 0.268549,
		34.072605, 40.682930, 46.571930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639225, 40.168243, 46.179142>,  <34.733147, 40.818375, 46.383945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639225, 40.168243, 46.179142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.279518, 40.341183, 46.205658>,  <34.063694, 40.444946, 46.221569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.279518, 40.341183, 46.205658>,  <34.639225, 40.168243, 46.179142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279518, 40.341183, 46.205658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115959, -0.089520, -0.989212,
		-0.421750, -0.897252, 0.130637,
		-0.899266, 0.432349, 0.066289,
		34.009739, 40.470886, 46.225544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318886, 39.692226, 45.783112>,  <34.639225, 40.168243, 46.179142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318886, 39.692226, 45.783112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.095928, 40.023602, 45.805023>,  <33.962154, 40.222427, 45.818172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.095928, 40.023602, 45.805023>,  <34.318886, 39.692226, 45.783112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095928, 40.023602, 45.805023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072985, 0.016833, -0.997191,
		-0.827035, -0.559825, 0.051081,
		-0.557392, 0.828440, 0.054781,
		33.928711, 40.272133, 45.821457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678963, 39.605263, 45.462440>,  <34.318886, 39.692226, 45.783112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678963, 39.605263, 45.462440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.756439, 39.997665, 45.458324>,  <33.802925, 40.233109, 45.455856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.756439, 39.997665, 45.458324>,  <33.678963, 39.605263, 45.462440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756439, 39.997665, 45.458324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015688, -0.007387, -0.999850,
		-0.980937, 0.193824, 0.013959,
		0.193691, 0.981009, -0.010287,
		33.814548, 40.291969, 45.455238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164909, 39.796661, 44.849499>,  <33.678963, 39.605263, 45.462440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164909, 39.796661, 44.849499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.424271, 40.089985, 44.931309>,  <33.579887, 40.265980, 44.980396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.424271, 40.089985, 44.931309>,  <33.164909, 39.796661, 44.849499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424271, 40.089985, 44.931309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115119, 0.171123, -0.978501,
		-0.752543, 0.658009, 0.026539,
		0.648404, 0.733309, 0.204526,
		33.618793, 40.309978, 44.992668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973663, 40.371696, 44.452347>,  <33.164909, 39.796661, 44.849499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973663, 40.371696, 44.452347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.365437, 40.393913, 44.529938>,  <33.600502, 40.407242, 44.576492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.365437, 40.393913, 44.529938>,  <32.973663, 40.371696, 44.452347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365437, 40.393913, 44.529938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188542, 0.090506, -0.977886,
		-0.071866, 0.994346, 0.078173,
		0.979432, 0.055537, 0.193980,
		33.659267, 40.410576, 44.588131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079391, 40.923920, 44.140610>,  <32.973663, 40.371696, 44.452347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079391, 40.923920, 44.140610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.433407, 40.745796, 44.194874>,  <33.645817, 40.638920, 44.227432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.433407, 40.745796, 44.194874>,  <33.079391, 40.923920, 44.140610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433407, 40.745796, 44.194874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159171, 0.015616, -0.987128,
		0.437462, 0.895239, 0.084701,
		0.885038, -0.445313, 0.135665,
		33.698917, 40.612202, 44.235573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655132, 41.281425, 43.687847>,  <33.079391, 40.923920, 44.140610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655132, 41.281425, 43.687847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.834618, 40.933163, 43.768459>,  <33.942307, 40.724205, 43.816826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.834618, 40.933163, 43.768459>,  <33.655132, 41.281425, 43.687847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834618, 40.933163, 43.768459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305327, -0.062585, -0.950189,
		0.839901, 0.487893, 0.237752,
		0.448711, -0.870657, 0.201532,
		33.969231, 40.671967, 43.828918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248528, 41.247967, 43.215462>,  <33.655132, 41.281425, 43.687847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248528, 41.247967, 43.215462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.212608, 40.869026, 43.338398>,  <34.191055, 40.641663, 43.412159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.212608, 40.869026, 43.338398>,  <34.248528, 41.247967, 43.215462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212608, 40.869026, 43.338398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065994, -0.313568, -0.947270,
		0.993771, -0.064779, 0.090677,
		-0.089797, -0.947354, 0.307340,
		34.185669, 40.584820, 43.430599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812580, 40.962955, 42.972042>,  <34.248528, 41.247967, 43.215462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812580, 40.962955, 42.972042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.545815, 40.667591, 43.011990>,  <34.385754, 40.490372, 43.035957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.545815, 40.667591, 43.011990>,  <34.812580, 40.962955, 42.972042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545815, 40.667591, 43.011990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146371, -0.261245, -0.954111,
		0.730617, -0.621691, 0.282310,
		-0.666914, -0.738411, 0.099872,
		34.345741, 40.446068, 43.041950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.432434, 29.070490, 29.098749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.112560, 28.969189, 29.316509>,  <42.920635, 28.908407, 29.447165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.112560, 28.969189, 29.316509>,  <43.432434, 29.070490, 29.098749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112560, 28.969189, 29.316509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064164, 0.865456, 0.496860,
		-0.596984, 0.432261, -0.675841,
		-0.799683, -0.253253, 0.544398,
		42.872654, 28.893213, 29.479828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957661, 29.565077, 28.950500>,  <43.432434, 29.070490, 29.098749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957661, 29.565077, 28.950500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.897655, 29.395704, 29.307869>,  <42.861652, 29.294081, 29.522289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.897655, 29.395704, 29.307869>,  <42.957661, 29.565077, 28.950500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897655, 29.395704, 29.307869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071801, 0.896595, 0.436991,
		-0.986073, 0.129704, -0.104101,
		-0.150016, -0.423431, 0.893421,
		42.852650, 29.268675, 29.575895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641060, 30.071644, 29.269573>,  <42.957661, 29.565077, 28.950500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641060, 30.071644, 29.269573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.774509, 29.834345, 29.562628>,  <42.854580, 29.691965, 29.738461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.774509, 29.834345, 29.562628>,  <42.641060, 30.071644, 29.269573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774509, 29.834345, 29.562628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174776, 0.802612, 0.570322,
		-0.926364, -0.062225, 0.371454,
		0.333622, -0.593247, 0.732635,
		42.874596, 29.656370, 29.782419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447910, 30.391521, 29.862587>,  <42.641060, 30.071644, 29.269573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447910, 30.391521, 29.862587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.690208, 30.127151, 30.039785>,  <42.835587, 29.968529, 30.146105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.690208, 30.127151, 30.039785>,  <42.447910, 30.391521, 29.862587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690208, 30.127151, 30.039785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321379, 0.712571, 0.623665,
		-0.727862, -0.235415, 0.644047,
		0.605749, -0.660926, 0.442996,
		42.871933, 29.928873, 30.172684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244576, 30.388401, 30.587725>,  <42.447910, 30.391521, 29.862587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244576, 30.388401, 30.587725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.612259, 30.231951, 30.605934>,  <42.832870, 30.138081, 30.616859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.612259, 30.231951, 30.605934>,  <42.244576, 30.388401, 30.587725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.612259, 30.231951, 30.605934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172425, 0.503745, 0.846469,
		-0.354008, -0.770234, 0.530488,
		0.919210, -0.391127, 0.045522,
		42.888023, 30.114613, 30.619591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336987, 30.182514, 31.300739>,  <42.244576, 30.388401, 30.587725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336987, 30.182514, 31.300739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.699291, 30.207170, 31.133024>,  <42.916672, 30.221964, 31.032396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.699291, 30.207170, 31.133024>,  <42.336987, 30.182514, 31.300739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699291, 30.207170, 31.133024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351635, 0.442918, 0.824728,
		0.236545, -0.894441, 0.379503,
		0.905759, 0.061639, -0.419286,
		42.971020, 30.225662, 31.007238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714256, 29.960297, 31.744692>,  <42.336987, 30.182514, 31.300739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714256, 29.960297, 31.744692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.944897, 30.200035, 31.522587>,  <43.083282, 30.343878, 31.389324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.944897, 30.200035, 31.522587>,  <42.714256, 29.960297, 31.744692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944897, 30.200035, 31.522587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300127, 0.476722, 0.826233,
		0.759906, -0.643055, 0.094998,
		0.576600, 0.599347, -0.555261,
		43.117878, 30.379839, 31.356009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299866, 29.966364, 32.145523>,  <42.714256, 29.960297, 31.744692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299866, 29.966364, 32.145523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.320984, 30.268656, 31.884420>,  <43.333656, 30.450031, 31.727758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.320984, 30.268656, 31.884420>,  <43.299866, 29.966364, 32.145523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320984, 30.268656, 31.884420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275430, 0.617291, 0.736947,
		0.959871, -0.218695, -0.175560,
		0.052796, 0.755728, -0.652755,
		43.336823, 30.495375, 31.688595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851212, 30.140118, 32.350834>,  <43.299866, 29.966364, 32.145523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851212, 30.140118, 32.350834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.646729, 30.428993, 32.164452>,  <43.524040, 30.602318, 32.052624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.646729, 30.428993, 32.164452>,  <43.851212, 30.140118, 32.350834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.646729, 30.428993, 32.164452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281655, 0.652981, 0.703055,
		0.811998, 0.228166, -0.537214,
		-0.511204, 0.722189, -0.465955,
		43.493366, 30.645649, 32.024666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.299183, 30.696123, 32.162064>,  <43.851212, 30.140118, 32.350834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.299183, 30.696123, 32.162064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.931156, 30.849117, 32.195976>,  <43.710342, 30.940914, 32.216324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.931156, 30.849117, 32.195976>,  <44.299183, 30.696123, 32.162064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.931156, 30.849117, 32.195976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341362, 0.676494, 0.652555,
		0.192236, 0.629335, -0.752983,
		-0.920064, 0.382484, 0.084785,
		43.655136, 30.963863, 32.221413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443550, 31.422804, 32.253689>,  <44.299183, 30.696123, 32.162064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443550, 31.422804, 32.253689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.053425, 31.413851, 32.341564>,  <43.819351, 31.408480, 32.394291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.053425, 31.413851, 32.341564>,  <44.443550, 31.422804, 32.253689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053425, 31.413851, 32.341564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109280, 0.815572, 0.568243,
		-0.191890, 0.578223, -0.792992,
		-0.975313, -0.022382, 0.219688,
		43.760830, 31.407137, 32.407471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.226757, 32.052963, 32.189617>,  <44.443550, 31.422804, 32.253689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.226757, 32.052963, 32.189617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.956055, 31.874996, 32.424240>,  <43.793633, 31.768215, 32.565014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.956055, 31.874996, 32.424240>,  <44.226757, 32.052963, 32.189617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956055, 31.874996, 32.424240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148096, 0.698170, 0.700447,
		-0.721158, 0.560898, -0.406600,
		-0.676756, -0.444917, 0.586558,
		43.753029, 31.741522, 32.600208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.826809, 32.573868, 32.369213>,  <44.226757, 32.052963, 32.189617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.826809, 32.573868, 32.369213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.730869, 32.294163, 32.638584>,  <43.673306, 32.126339, 32.800205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.730869, 32.294163, 32.638584>,  <43.826809, 32.573868, 32.369213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730869, 32.294163, 32.638584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081962, 0.676614, 0.731763,
		-0.967344, 0.230709, -0.104973,
		-0.239850, -0.699262, 0.673427,
		43.658913, 32.084385, 32.840611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216305, 32.777901, 32.807114>,  <43.826809, 32.573868, 32.369213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216305, 32.777901, 32.807114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.422203, 32.503628, 33.012978>,  <43.545742, 32.339062, 33.136497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.422203, 32.503628, 33.012978>,  <43.216305, 32.777901, 32.807114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422203, 32.503628, 33.012978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117726, 0.651139, 0.749773,
		-0.849221, -0.325354, 0.415894,
		0.514746, -0.685684, 0.514659,
		43.576626, 32.297924, 33.167374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856483, 32.670692, 33.594723>,  <43.216305, 32.777901, 32.807114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856483, 32.670692, 33.594723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.230705, 32.531033, 33.616024>,  <43.455238, 32.447235, 33.628803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.230705, 32.531033, 33.616024>,  <42.856483, 32.670692, 33.594723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230705, 32.531033, 33.616024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236972, 0.732326, 0.638391,
		-0.261893, -0.584629, 0.767868,
		0.935551, -0.349153, 0.053250,
		43.511372, 32.426285, 33.632000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915325, 32.594048, 34.325649>,  <42.856483, 32.670692, 33.594723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915325, 32.594048, 34.325649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.280655, 32.604465, 34.163086>,  <43.499851, 32.610718, 34.065548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.280655, 32.604465, 34.163086>,  <42.915325, 32.594048, 34.325649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280655, 32.604465, 34.163086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278610, 0.687889, 0.670213,
		0.297020, -0.725348, 0.621007,
		0.913322, 0.026048, -0.406406,
		43.554649, 32.612282, 34.041164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.366962, 32.481594, 34.833786>,  <42.915325, 32.594048, 34.325649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.366962, 32.481594, 34.833786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.606792, 32.661301, 34.568855>,  <43.750690, 32.769123, 34.409897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.606792, 32.661301, 34.568855>,  <43.366962, 32.481594, 34.833786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606792, 32.661301, 34.568855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243211, 0.686154, 0.685596,
		0.762472, -0.572148, 0.302131,
		0.599571, 0.449266, -0.662326,
		43.786663, 32.796082, 34.370159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.077106, 32.677635, 35.125957>,  <43.366962, 32.481594, 34.833786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.077106, 32.677635, 35.125957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.040989, 32.931099, 34.818626>,  <44.019318, 33.083176, 34.634228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.040989, 32.931099, 34.818626>,  <44.077106, 32.677635, 35.125957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.040989, 32.931099, 34.818626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368975, 0.737859, 0.565173,
		0.925043, -0.232464, -0.300425,
		-0.090289, 0.633659, -0.768326,
		44.013901, 33.121197, 34.588127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.747391, 32.933193, 35.147423>,  <44.077106, 32.677635, 35.125957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.747391, 32.933193, 35.147423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.560932, 33.195713, 34.910110>,  <44.449055, 33.353226, 34.767723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.560932, 33.195713, 34.910110>,  <44.747391, 32.933193, 35.147423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.560932, 33.195713, 34.910110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393118, 0.754411, 0.525664,
		0.792568, 0.011808, -0.609670,
		-0.466149, 0.656296, -0.593279,
		44.421089, 33.392601, 34.732128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.218258, 33.396973, 35.075485>,  <44.747391, 32.933193, 35.147423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.218258, 33.396973, 35.075485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.876534, 33.586445, 34.989899>,  <44.671497, 33.700127, 34.938545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.876534, 33.586445, 34.989899>,  <45.218258, 33.396973, 35.075485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.876534, 33.586445, 34.989899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278031, 0.764286, 0.581864,
		0.439146, 0.437605, -0.784635,
		-0.854312, 0.473676, -0.213966,
		44.620239, 33.728546, 34.925709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348370, 34.113667, 34.758057>,  <45.218258, 33.396973, 35.075485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348370, 34.113667, 34.758057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.980232, 34.126568, 34.913971>,  <44.759350, 34.134308, 35.007519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.980232, 34.126568, 34.913971>,  <45.348370, 34.113667, 34.758057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980232, 34.126568, 34.913971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268041, 0.777771, 0.568530,
		-0.284829, 0.627720, -0.724459,
		-0.920340, 0.032251, 0.389786,
		44.704128, 34.136242, 35.030907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.107521, 34.071163, 34.582813>,  <45.348370, 34.113667, 34.758057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.107521, 34.071163, 34.582813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.427197, 33.933075, 34.385986>,  <46.618999, 33.850224, 34.267891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.427197, 33.933075, 34.385986>,  <46.107521, 34.071163, 34.582813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.427197, 33.933075, 34.385986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407515, 0.290587, -0.865731,
		0.441853, 0.892404, 0.091552,
		0.799185, -0.345217, -0.492065,
		46.666954, 33.829510, 34.238365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.343143, 34.550014, 34.098503>,  <46.107521, 34.071163, 34.582813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.343143, 34.550014, 34.098503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.481815, 34.197983, 33.968719>,  <46.565018, 33.986763, 33.890850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.481815, 34.197983, 33.968719>,  <46.343143, 34.550014, 34.098503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.481815, 34.197983, 33.968719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175118, 0.279104, -0.944158,
		0.921491, 0.384142, -0.057358,
		0.346682, -0.880077, -0.324462,
		46.585819, 33.933960, 33.871380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.499947, 34.726524, 33.341648>,  <46.343143, 34.550014, 34.098503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.499947, 34.726524, 33.341648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.496342, 34.326763, 33.354950>,  <46.494179, 34.086906, 33.362930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.496342, 34.326763, 33.354950>,  <46.499947, 34.726524, 33.341648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.496342, 34.326763, 33.354950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222358, -0.030418, -0.974491,
		0.974924, -0.016172, -0.221952,
		-0.009008, -0.999407, 0.033251,
		46.493641, 34.026939, 33.364925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.779812, 34.611809, 32.760483>,  <46.499947, 34.726524, 33.341648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.779812, 34.611809, 32.760483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.605080, 34.264748, 32.855434>,  <46.500240, 34.056511, 32.912407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.605080, 34.264748, 32.855434>,  <46.779812, 34.611809, 32.760483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.605080, 34.264748, 32.855434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396401, -0.051214, -0.916648,
		0.807493, -0.494518, -0.321568,
		-0.436830, -0.867657, 0.237383,
		46.474030, 34.004452, 32.926651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.975887, 34.101486, 32.267624>,  <46.779812, 34.611809, 32.760483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.975887, 34.101486, 32.267624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.653294, 33.930485, 32.431000>,  <46.459736, 33.827885, 32.529026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.653294, 33.930485, 32.431000>,  <46.975887, 34.101486, 32.267624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.653294, 33.930485, 32.431000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309141, -0.283965, -0.907632,
		0.503999, -0.858256, 0.096855,
		-0.806484, -0.427504, 0.408440,
		46.411346, 33.802235, 32.553532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.840000, 33.465195, 32.007450>,  <46.975887, 34.101486, 32.267624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.840000, 33.465195, 32.007450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.472656, 33.554749, 32.137985>,  <46.252251, 33.608482, 32.216305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.472656, 33.554749, 32.137985>,  <46.840000, 33.465195, 32.007450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.472656, 33.554749, 32.137985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382779, -0.293105, -0.876110,
		-0.100501, -0.929496, 0.354876,
		-0.918357, 0.223889, 0.326334,
		46.197147, 33.621914, 32.235886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.409988, 32.805744, 31.942511>,  <46.840000, 33.465195, 32.007450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.409988, 32.805744, 31.942511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.162327, 33.119850, 31.941408>,  <46.013729, 33.308315, 31.940746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.162327, 33.119850, 31.941408>,  <46.409988, 32.805744, 31.942511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.162327, 33.119850, 31.941408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300329, -0.240040, -0.923138,
		-0.725569, -0.570738, 0.384459,
		-0.619155, 0.785264, -0.002757,
		45.976582, 33.355431, 31.940580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.830982, 32.569382, 31.732542>,  <46.409988, 32.805744, 31.942511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.830982, 32.569382, 31.732542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.811268, 32.959179, 31.644966>,  <45.799438, 33.193058, 31.592421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.811268, 32.959179, 31.644966>,  <45.830982, 32.569382, 31.732542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.811268, 32.959179, 31.644966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314074, -0.223208, -0.922787,
		-0.948118, 0.023280, 0.317064,
		-0.049289, 0.974493, -0.218939,
		45.796482, 33.251526, 31.579285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.207935, 32.523598, 31.445171>,  <45.830982, 32.569382, 31.732542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.207935, 32.523598, 31.445171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.296707, 32.901077, 31.347040>,  <45.349972, 33.127563, 31.288160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.296707, 32.901077, 31.347040>,  <45.207935, 32.523598, 31.445171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.296707, 32.901077, 31.347040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589633, -0.070503, -0.804588,
		-0.776582, 0.323216, 0.540788,
		0.221928, 0.943695, -0.245330,
		45.363285, 33.184185, 31.273441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544430, 32.802235, 31.276331>,  <45.207935, 32.523598, 31.445171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544430, 32.802235, 31.276331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.824238, 33.017956, 31.088787>,  <44.992123, 33.147388, 30.976261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.824238, 33.017956, 31.088787>,  <44.544430, 32.802235, 31.276331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824238, 33.017956, 31.088787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596030, 0.078354, -0.799130,
		-0.394234, 0.838461, 0.376250,
		0.699520, 0.539300, -0.468858,
		45.034092, 33.179745, 30.948130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.204830, 33.361053, 31.086733>,  <44.544430, 32.802235, 31.276331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.204830, 33.361053, 31.086733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.533497, 33.348480, 30.859095>,  <44.730698, 33.340939, 30.722511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.533497, 33.348480, 30.859095>,  <44.204830, 33.361053, 31.086733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.533497, 33.348480, 30.859095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555693, 0.177844, -0.812143,
		0.126735, 0.983556, 0.128664,
		0.821671, -0.031429, -0.569095,
		44.779999, 33.339050, 30.688366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913326, 33.647133, 30.568010>,  <44.204830, 33.361053, 31.086733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913326, 33.647133, 30.568010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.256172, 33.492935, 30.431339>,  <44.461880, 33.400417, 30.349337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.256172, 33.492935, 30.431339>,  <43.913326, 33.647133, 30.568010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.256172, 33.492935, 30.431339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368923, 0.003539, -0.929454,
		0.359506, 0.922705, -0.139183,
		0.857118, -0.385492, -0.341679,
		44.513309, 33.377289, 30.328836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989025, 33.911507, 29.837519>,  <43.913326, 33.647133, 30.568010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989025, 33.911507, 29.837519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.232552, 33.595245, 29.863461>,  <44.378670, 33.405487, 29.879025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.232552, 33.595245, 29.863461>,  <43.989025, 33.911507, 29.837519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.232552, 33.595245, 29.863461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227604, -0.252402, -0.940473,
		0.759957, 0.557818, -0.333623,
		0.608820, -0.790653, 0.064853,
		44.415199, 33.358047, 29.882915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364628, 33.900093, 29.244303>,  <43.989025, 33.911507, 29.837519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364628, 33.900093, 29.244303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.359081, 33.531158, 29.398762>,  <44.355755, 33.309799, 29.491438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.359081, 33.531158, 29.398762>,  <44.364628, 33.900093, 29.244303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359081, 33.531158, 29.398762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351924, -0.356975, -0.865285,
		0.935926, -0.147894, -0.319641,
		-0.013867, -0.922332, 0.386150,
		44.354919, 33.254459, 29.514606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657570, 33.410065, 28.743950>,  <44.364628, 33.900093, 29.244303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657570, 33.410065, 28.743950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.432076, 33.191483, 28.991690>,  <44.296780, 33.060333, 29.140333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.432076, 33.191483, 28.991690>,  <44.657570, 33.410065, 28.743950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.432076, 33.191483, 28.991690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384298, -0.490212, -0.782309,
		0.731111, -0.679026, 0.066345,
		-0.563731, -0.546458, 0.619348,
		44.262955, 33.027546, 29.177494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717697, 32.673218, 28.508633>,  <44.657570, 33.410065, 28.743950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717697, 32.673218, 28.508633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.390881, 32.631607, 28.735481>,  <44.194790, 32.606640, 28.871590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.390881, 32.631607, 28.735481>,  <44.717697, 32.673218, 28.508633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390881, 32.631607, 28.735481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432853, -0.539112, -0.722493,
		0.380900, -0.835785, 0.395448,
		-0.817040, -0.104027, 0.567120,
		44.145767, 32.600399, 28.905617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.565498, 31.961958, 28.633060>,  <44.717697, 32.673218, 28.508633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.565498, 31.961958, 28.633060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.213295, 32.136257, 28.707712>,  <44.001972, 32.240837, 28.752502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.213295, 32.136257, 28.707712>,  <44.565498, 31.961958, 28.633060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.213295, 32.136257, 28.707712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444373, -0.621683, -0.645014,
		-0.165039, -0.650873, 0.741031,
		-0.880508, 0.435746, 0.186628,
		43.949142, 32.266979, 28.763700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117970, 31.449568, 28.719013>,  <44.565498, 31.961958, 28.633060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117970, 31.449568, 28.719013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.908188, 31.774956, 28.618448>,  <43.782318, 31.970188, 28.558109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.908188, 31.774956, 28.618448>,  <44.117970, 31.449568, 28.719013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908188, 31.774956, 28.618448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493500, -0.531049, -0.688800,
		-0.693831, -0.237174, 0.679961,
		-0.524457, 0.813471, -0.251413,
		43.750851, 32.018997, 28.543024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396088, 31.261356, 28.689150>,  <44.117970, 31.449568, 28.719013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396088, 31.261356, 28.689150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.452766, 31.594725, 28.475485>,  <43.486774, 31.794746, 28.347286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.452766, 31.594725, 28.475485>,  <43.396088, 31.261356, 28.689150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.452766, 31.594725, 28.475485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381930, -0.451800, -0.806229,
		-0.913264, 0.318255, 0.254289,
		0.141699, 0.833421, -0.534164,
		43.495277, 31.844751, 28.315235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738415, 31.299793, 28.419237>,  <43.396088, 31.261356, 28.689150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738415, 31.299793, 28.419237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.924320, 31.554180, 28.172812>,  <43.035866, 31.706812, 28.024956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.924320, 31.554180, 28.172812>,  <42.738415, 31.299793, 28.419237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924320, 31.554180, 28.172812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531437, -0.356160, -0.768586,
		-0.708215, 0.684613, 0.172446,
		0.464766, 0.635968, -0.616066,
		43.063751, 31.744970, 27.987991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263676, 31.507944, 28.017700>,  <42.738415, 31.299793, 28.419237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.263676, 31.507944, 28.017700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.602962, 31.575245, 27.816814>,  <42.806534, 31.615625, 27.696283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.602962, 31.575245, 27.816814>,  <42.263676, 31.507944, 28.017700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602962, 31.575245, 27.816814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400357, -0.417110, -0.815925,
		-0.346758, 0.893147, -0.286440,
		0.848218, 0.168250, -0.502214,
		42.857430, 31.625719, 27.666151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.736244, 38.315521, 40.193344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374908, 38.307957, 40.021938>,  <38.158108, 38.303417, 39.919094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374908, 38.307957, 40.021938>,  <38.736244, 38.315521, 40.193344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374908, 38.307957, 40.021938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307255, -0.725604, -0.615705,
		-0.299289, -0.687852, 0.661276,
		-0.903339, -0.018907, -0.428511,
		38.103909, 38.302284, 39.893383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603348, 37.656376, 39.993637>,  <38.736244, 38.315521, 40.193344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603348, 37.656376, 39.993637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338306, 37.858471, 39.772476>,  <38.179283, 37.979729, 39.639778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338306, 37.858471, 39.772476>,  <38.603348, 37.656376, 39.993637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338306, 37.858471, 39.772476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281128, -0.516467, -0.808844,
		-0.694210, -0.691376, 0.200176,
		-0.662600, 0.505233, -0.552902,
		38.139526, 38.010040, 39.606606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186363, 37.210556, 39.595890>,  <38.603348, 37.656376, 39.993637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186363, 37.210556, 39.595890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162437, 37.553795, 39.391891>,  <38.148083, 37.759739, 39.269493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162437, 37.553795, 39.391891>,  <38.186363, 37.210556, 39.595890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162437, 37.553795, 39.391891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302549, -0.471293, -0.828460,
		-0.951255, -0.203857, -0.231423,
		-0.059819, 0.858094, -0.509997,
		38.144493, 37.811222, 39.238892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068352, 37.017296, 38.944855>,  <38.186363, 37.210556, 39.595890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068352, 37.017296, 38.944855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168003, 37.398144, 38.873981>,  <38.227795, 37.626652, 38.831459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168003, 37.398144, 38.873981>,  <38.068352, 37.017296, 38.944855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168003, 37.398144, 38.873981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356703, -0.260298, -0.897222,
		-0.900387, 0.160326, -0.404474,
		0.249132, 0.952124, -0.177180,
		38.242744, 37.683781, 38.820827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708866, 37.201233, 38.267590>,  <38.068352, 37.017296, 38.944855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708866, 37.201233, 38.267590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006882, 37.462517, 38.321613>,  <38.185692, 37.619286, 38.354027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006882, 37.462517, 38.321613>,  <37.708866, 37.201233, 38.267590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006882, 37.462517, 38.321613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446653, -0.338171, -0.828336,
		-0.495402, 0.677466, -0.543707,
		0.745036, 0.653207, 0.135061,
		38.230392, 37.658478, 38.362133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781330, 37.696880, 37.662376>,  <37.708866, 37.201233, 38.267590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781330, 37.696880, 37.662376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138172, 37.688873, 37.842930>,  <38.352276, 37.684071, 37.951263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138172, 37.688873, 37.842930>,  <37.781330, 37.696880, 37.662376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138172, 37.688873, 37.842930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440782, -0.180992, -0.879178,
		0.099292, 0.983281, -0.152643,
		0.892106, -0.020013, 0.451383,
		38.405804, 37.682869, 37.978344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103313, 38.040874, 37.065239>,  <37.781330, 37.696880, 37.662376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103313, 38.040874, 37.065239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389660, 37.895847, 37.303925>,  <38.561470, 37.808830, 37.447136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389660, 37.895847, 37.303925>,  <38.103313, 38.040874, 37.065239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389660, 37.895847, 37.303925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488545, -0.350483, -0.799053,
		0.498854, 0.863541, -0.073768,
		0.715869, -0.362572, 0.596718,
		38.604420, 37.787075, 37.482941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852211, 38.357811, 36.986847>,  <38.103313, 38.040874, 37.065239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852211, 38.357811, 36.986847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882122, 37.979488, 37.113251>,  <38.900066, 37.752495, 37.189095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882122, 37.979488, 37.113251>,  <38.852211, 38.357811, 36.986847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882122, 37.979488, 37.113251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655407, -0.192228, -0.730404,
		0.751566, 0.261731, 0.605513,
		0.074773, -0.945804, 0.316012,
		38.904552, 37.695747, 37.208054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310810, 38.045425, 36.594490>,  <38.852211, 38.357811, 36.986847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310810, 38.045425, 36.594490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249474, 37.685848, 36.758633>,  <39.212673, 37.470100, 36.857117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249474, 37.685848, 36.758633>,  <39.310810, 38.045425, 36.594490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249474, 37.685848, 36.758633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513344, -0.427300, -0.744240,
		0.844372, 0.096529, 0.526989,
		-0.153342, -0.898942, 0.410353,
		39.203472, 37.416164, 36.881737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936535, 37.762032, 36.649250>,  <39.310810, 38.045425, 36.594490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936535, 37.762032, 36.649250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711304, 37.433727, 36.687813>,  <39.576164, 37.236744, 36.710953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711304, 37.433727, 36.687813>,  <39.936535, 37.762032, 36.649250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711304, 37.433727, 36.687813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570036, -0.470214, -0.673764,
		0.598333, -0.324423, 0.732630,
		-0.563078, -0.820761, 0.096412,
		39.542381, 37.187500, 36.716736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311241, 37.169926, 36.690754>,  <39.936535, 37.762032, 36.649250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311241, 37.169926, 36.690754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960651, 37.019379, 36.570660>,  <39.750298, 36.929050, 36.498604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960651, 37.019379, 36.570660>,  <40.311241, 37.169926, 36.690754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960651, 37.019379, 36.570660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479631, -0.736688, -0.476702,
		-0.041767, -0.561820, 0.826205,
		-0.876476, -0.376363, -0.300236,
		39.697708, 36.906471, 36.480591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465202, 36.396175, 36.584686>,  <40.311241, 37.169926, 36.690754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465202, 36.396175, 36.584686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126190, 36.464813, 36.383789>,  <39.922783, 36.505997, 36.263252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126190, 36.464813, 36.383789>,  <40.465202, 36.396175, 36.584686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126190, 36.464813, 36.383789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307265, -0.612945, -0.727933,
		-0.432755, -0.771267, 0.466765,
		-0.847533, 0.171596, -0.502239,
		39.871929, 36.516293, 36.233116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236240, 35.732574, 36.250172>,  <40.465202, 36.396175, 36.584686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236240, 35.732574, 36.250172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020016, 36.011799, 36.062344>,  <39.890282, 36.179333, 35.949646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020016, 36.011799, 36.062344>,  <40.236240, 35.732574, 36.250172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020016, 36.011799, 36.062344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124627, -0.485546, -0.865282,
		-0.832022, -0.526261, 0.175471,
		-0.540563, 0.698065, -0.469571,
		39.857845, 36.221218, 35.921471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402889, 35.013447, 36.434769>,  <40.236240, 35.732574, 36.250172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402889, 35.013447, 36.434769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404881, 34.643444, 36.282799>,  <40.406075, 34.421444, 36.191616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404881, 34.643444, 36.282799>,  <40.402889, 35.013447, 36.434769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404881, 34.643444, 36.282799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652532, -0.290900, 0.699699,
		-0.757745, 0.244431, -0.605042,
		0.004978, -0.925003, -0.379927,
		40.406376, 34.365944, 36.168819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684483, 34.757057, 36.400013>,  <40.402889, 35.013447, 36.434769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684483, 34.757057, 36.400013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917347, 34.432079, 36.412769>,  <40.057068, 34.237091, 36.420422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917347, 34.432079, 36.412769>,  <39.684483, 34.757057, 36.400013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917347, 34.432079, 36.412769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620197, -0.418362, 0.663573,
		-0.525776, -0.406086, -0.747432,
		0.582164, -0.812445, 0.031889,
		40.091995, 34.188347, 36.422337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316833, 34.185295, 36.089348>,  <39.684483, 34.757057, 36.400013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316833, 34.185295, 36.089348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577400, 34.039665, 36.355610>,  <39.733742, 33.952286, 36.515369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577400, 34.039665, 36.355610>,  <39.316833, 34.185295, 36.089348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577400, 34.039665, 36.355610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758713, -0.315446, 0.569955,
		0.002475, -0.876325, -0.481715,
		0.651420, -0.364073, 0.665660,
		39.772827, 33.930443, 36.555309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118271, 33.540714, 36.146656>,  <39.316833, 34.185295, 36.089348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118271, 33.540714, 36.146656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349609, 33.616085, 36.464149>,  <39.488411, 33.661308, 36.654644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349609, 33.616085, 36.464149>,  <39.118271, 33.540714, 36.146656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349609, 33.616085, 36.464149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738691, -0.291930, 0.607546,
		0.346193, -0.937695, -0.029646,
		0.578347, 0.188429, 0.793731,
		39.523113, 33.672615, 36.702271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036453, 32.970638, 36.491756>,  <39.118271, 33.540714, 36.146656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036453, 32.970638, 36.491756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147541, 33.263451, 36.740597>,  <39.214191, 33.439137, 36.889900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147541, 33.263451, 36.740597>,  <39.036453, 32.970638, 36.491756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147541, 33.263451, 36.740597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773937, -0.213150, 0.596313,
		0.569118, -0.647073, 0.507347,
		0.277717, 0.732027, 0.622101,
		39.230858, 33.483059, 36.927227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944550, 32.731552, 37.173599>,  <39.036453, 32.970638, 36.491756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944550, 32.731552, 37.173599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984947, 33.111210, 37.292881>,  <39.009186, 33.339005, 37.364449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984947, 33.111210, 37.292881>,  <38.944550, 32.731552, 37.173599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984947, 33.111210, 37.292881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617312, -0.175275, 0.766945,
		0.780209, -0.261538, 0.568218,
		0.100991, 0.949145, 0.298202,
		39.015244, 33.395954, 37.382343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945141, 32.719349, 37.933666>,  <38.944550, 32.731552, 37.173599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945141, 32.719349, 37.933666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880035, 33.113075, 37.906464>,  <38.840973, 33.349312, 37.890141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880035, 33.113075, 37.906464>,  <38.945141, 32.719349, 37.933666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880035, 33.113075, 37.906464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727946, -0.073273, 0.681708,
		0.666035, 0.160462, 0.728457,
		-0.162765, 0.984319, -0.068005,
		38.831207, 33.408371, 37.886063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861870, 32.929878, 38.588623>,  <38.945141, 32.719349, 37.933666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861870, 32.929878, 38.588623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667820, 33.225281, 38.401321>,  <38.551392, 33.402523, 38.288940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667820, 33.225281, 38.401321>,  <38.861870, 32.929878, 38.588623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667820, 33.225281, 38.401321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610536, 0.097301, 0.785989,
		0.626022, 0.667184, 0.403685,
		-0.485120, 0.738511, -0.468252,
		38.522285, 33.446835, 38.260845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807991, 33.624508, 39.022438>,  <38.861870, 32.929878, 38.588623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807991, 33.624508, 39.022438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508049, 33.594200, 38.759541>,  <38.328083, 33.576015, 38.601803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508049, 33.594200, 38.759541>,  <38.807991, 33.624508, 39.022438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508049, 33.594200, 38.759541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660935, 0.130243, 0.739055,
		0.029601, 0.988582, -0.147745,
		-0.749859, -0.075773, -0.657244,
		38.283092, 33.571468, 38.562366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361454, 34.268940, 39.076714>,  <38.807991, 33.624508, 39.022438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361454, 34.268940, 39.076714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162846, 33.942799, 38.957611>,  <38.043678, 33.747112, 38.886150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162846, 33.942799, 38.957611>,  <38.361454, 34.268940, 39.076714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162846, 33.942799, 38.957611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597836, 0.072519, 0.798331,
		-0.629331, 0.574401, -0.523456,
		-0.496523, -0.815355, -0.297760,
		38.013889, 33.698193, 38.868282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888371, 34.269024, 39.602638>,  <38.361454, 34.268940, 39.076714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888371, 34.269024, 39.602638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767792, 33.951801, 39.390903>,  <37.695446, 33.761467, 39.263863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767792, 33.951801, 39.390903>,  <37.888371, 34.269024, 39.602638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767792, 33.951801, 39.390903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682386, -0.208299, 0.700686,
		-0.665942, 0.572428, -0.478380,
		-0.301446, -0.793056, -0.529332,
		37.677357, 33.713886, 39.232105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194771, 34.376953, 39.512169>,  <37.888371, 34.269024, 39.602638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194771, 34.376953, 39.512169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278534, 33.986206, 39.494812>,  <37.328793, 33.751759, 39.484398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278534, 33.986206, 39.494812>,  <37.194771, 34.376953, 39.512169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278534, 33.986206, 39.494812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587760, -0.161217, 0.792810,
		-0.781464, -0.140514, -0.607922,
		0.209408, -0.976865, -0.043396,
		37.341358, 33.693146, 39.481792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596359, 34.040192, 39.549587>,  <37.194771, 34.376953, 39.512169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596359, 34.040192, 39.549587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829456, 33.738117, 39.669655>,  <36.969315, 33.556873, 39.741695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829456, 33.738117, 39.669655>,  <36.596359, 34.040192, 39.549587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829456, 33.738117, 39.669655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613893, -0.167056, 0.771510,
		-0.532489, -0.633865, -0.560954,
		0.582744, -0.755186, 0.300170,
		37.004280, 33.511562, 39.759705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107334, 33.523102, 39.718155>,  <36.596359, 34.040192, 39.549587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107334, 33.523102, 39.718155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451031, 33.441864, 39.905964>,  <36.657249, 33.393120, 40.018650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451031, 33.441864, 39.905964>,  <36.107334, 33.523102, 39.718155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451031, 33.441864, 39.905964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495242, -0.100266, 0.862950,
		-0.128179, -0.974013, -0.186732,
		0.859247, -0.203090, 0.469520,
		36.708805, 33.380936, 40.046822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905224, 33.021805, 40.250114>,  <36.107334, 33.523102, 39.718155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905224, 33.021805, 40.250114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242050, 33.204189, 40.365372>,  <36.444145, 33.313622, 40.434528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242050, 33.204189, 40.365372>,  <35.905224, 33.021805, 40.250114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242050, 33.204189, 40.365372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404120, 0.179510, 0.896919,
		0.357240, -0.871706, 0.335423,
		0.842061, 0.455966, 0.288146,
		36.494667, 33.340977, 40.451817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436474, 32.379585, 40.200375>,  <35.905224, 33.021805, 40.250114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436474, 32.379585, 40.200375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057701, 32.312187, 40.309864>,  <34.830437, 32.271748, 40.375557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057701, 32.312187, 40.309864>,  <35.436474, 32.379585, 40.200375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057701, 32.312187, 40.309864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240956, -0.191488, -0.951458,
		0.212735, -0.966923, 0.140725,
		-0.946934, -0.168500, 0.273722,
		34.773621, 32.261639, 40.391979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252483, 31.779583, 39.876423>,  <35.436474, 32.379585, 40.200375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252483, 31.779583, 39.876423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914825, 31.973948, 39.967026>,  <34.712231, 32.090565, 40.021389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914825, 31.973948, 39.967026>,  <35.252483, 31.779583, 39.876423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914825, 31.973948, 39.967026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358989, -0.198534, -0.911982,
		-0.398172, -0.851161, 0.342028,
		-0.844148, 0.485910, 0.226507,
		34.661579, 32.119720, 40.034977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856529, 31.233135, 39.634823>,  <35.252483, 31.779583, 39.876423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856529, 31.233135, 39.634823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635456, 31.564930, 39.667061>,  <34.502811, 31.764006, 39.686401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635456, 31.564930, 39.667061>,  <34.856529, 31.233135, 39.634823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635456, 31.564930, 39.667061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419068, -0.193022, -0.887201,
		-0.720364, -0.524114, 0.454291,
		-0.552683, 0.829486, 0.080593,
		34.469650, 31.813776, 39.691238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258224, 31.037310, 39.348598>,  <34.856529, 31.233135, 39.634823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258224, 31.037310, 39.348598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218506, 31.435326, 39.350864>,  <34.194675, 31.674135, 39.352226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218506, 31.435326, 39.350864>,  <34.258224, 31.037310, 39.348598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218506, 31.435326, 39.350864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459508, -0.040799, -0.887236,
		-0.882606, -0.090700, 0.461281,
		-0.099292, 0.995042, 0.005668,
		34.188717, 31.733839, 39.352566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602791, 31.133341, 39.192127>,  <34.258224, 31.037310, 39.348598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602791, 31.133341, 39.192127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733742, 31.498575, 39.094891>,  <33.812313, 31.717716, 39.036549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733742, 31.498575, 39.094891>,  <33.602791, 31.133341, 39.192127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733742, 31.498575, 39.094891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478456, -0.061659, -0.875944,
		-0.814803, 0.403074, 0.416686,
		0.327378, 0.913088, -0.243093,
		33.831955, 31.772501, 39.021961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125885, 31.564531, 38.920521>,  <33.602791, 31.133341, 39.192127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125885, 31.564531, 38.920521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446854, 31.745699, 38.765091>,  <33.639435, 31.854399, 38.671833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446854, 31.745699, 38.765091>,  <33.125885, 31.564531, 38.920521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446854, 31.745699, 38.765091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374354, -0.125057, -0.918815,
		-0.464742, 0.882738, 0.069204,
		0.802418, 0.452918, -0.388575,
		33.687580, 31.881575, 38.648518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854992, 32.021770, 38.405201>,  <33.125885, 31.564531, 38.920521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854992, 32.021770, 38.405201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239929, 32.014381, 38.296722>,  <33.470894, 32.009949, 38.231636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239929, 32.014381, 38.296722>,  <32.854992, 32.021770, 38.405201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239929, 32.014381, 38.296722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270176, 0.044674, -0.961774,
		0.029886, 0.998831, 0.038000,
		0.962347, -0.018477, -0.271195,
		33.528633, 32.008839, 38.215363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043346, 32.645256, 37.932365>,  <32.854992, 32.021770, 38.405201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043346, 32.645256, 37.932365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311050, 32.358685, 37.853542>,  <33.471672, 32.186741, 37.806248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311050, 32.358685, 37.853542>,  <33.043346, 32.645256, 37.932365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311050, 32.358685, 37.853542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104453, 0.171857, -0.979569,
		0.735652, 0.676166, 0.040183,
		0.669257, -0.716425, -0.197054,
		33.511829, 32.143757, 37.794426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669968, 32.845871, 37.535378>,  <33.043346, 32.645256, 37.932365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669968, 32.845871, 37.535378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661018, 32.451275, 37.470467>,  <33.655647, 32.214516, 37.431519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661018, 32.451275, 37.470467>,  <33.669968, 32.845871, 37.535378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661018, 32.451275, 37.470467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009909, 0.162529, -0.986654,
		0.999701, -0.020466, -0.013411,
		-0.022373, -0.986492, -0.162278,
		33.654308, 32.155327, 37.421783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969604, 32.905312, 36.921516>,  <33.669968, 32.845871, 37.535378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969604, 32.905312, 36.921516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824703, 32.533382, 36.947460>,  <33.737762, 32.310226, 36.963028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824703, 32.533382, 36.947460>,  <33.969604, 32.905312, 36.921516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824703, 32.533382, 36.947460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249386, 0.029638, -0.967950,
		0.898098, -0.366818, -0.242621,
		-0.362252, -0.929821, 0.064861,
		33.716026, 32.254436, 36.966919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376293, 32.439213, 36.438480>,  <33.969604, 32.905312, 36.921516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376293, 32.439213, 36.438480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996796, 32.339283, 36.515907>,  <33.769096, 32.279324, 36.562363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996796, 32.339283, 36.515907>,  <34.376293, 32.439213, 36.438480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996796, 32.339283, 36.515907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163507, -0.136131, -0.977105,
		0.270459, -0.958673, 0.088305,
		-0.948745, -0.249829, 0.193568,
		33.712173, 32.264336, 36.573978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375629, 31.983351, 35.926296>,  <34.376293, 32.439213, 36.438480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375629, 31.983351, 35.926296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996773, 32.057106, 36.031315>,  <33.769459, 32.101360, 36.094326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996773, 32.057106, 36.031315>,  <34.375629, 31.983351, 35.926296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996773, 32.057106, 36.031315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250623, 0.085671, -0.964287,
		-0.200294, -0.979113, -0.034931,
		-0.947138, 0.184387, 0.262547,
		33.712631, 32.112423, 36.110081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.682457, 31.640858, 44.142899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.358387, 31.874052, 44.118401>,  <35.163944, 32.013969, 44.103703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.358387, 31.874052, 44.118401>,  <35.682457, 31.640858, 44.142899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358387, 31.874052, 44.118401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013130, -0.122501, -0.992382,
		-0.586046, -0.803195, 0.106902,
		-0.810172, 0.582985, -0.061245,
		35.115334, 32.048946, 44.100025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206039, 31.260496, 43.713745>,  <35.682457, 31.640858, 44.142899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206039, 31.260496, 43.713745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.076824, 31.637877, 43.683952>,  <34.999294, 31.864305, 43.666077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.076824, 31.637877, 43.683952>,  <35.206039, 31.260496, 43.713745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076824, 31.637877, 43.683952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109570, -0.115460, -0.987251,
		-0.940022, -0.310758, 0.140672,
		-0.323038, 0.943450, -0.074485,
		34.979912, 31.920912, 43.661606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620274, 31.241713, 43.395760>,  <35.206039, 31.260496, 43.713745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620274, 31.241713, 43.395760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.755295, 31.609894, 43.316940>,  <34.836308, 31.830803, 43.269650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.755295, 31.609894, 43.316940>,  <34.620274, 31.241713, 43.395760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755295, 31.609894, 43.316940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322325, -0.083655, -0.942925,
		-0.884400, 0.381801, 0.268446,
		0.337553, 0.920451, -0.197048,
		34.856560, 31.886028, 43.257824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167072, 31.489035, 42.909763>,  <34.620274, 31.241713, 43.395760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167072, 31.489035, 42.909763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.483353, 31.729290, 42.862381>,  <34.673119, 31.873444, 42.833954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.483353, 31.729290, 42.862381>,  <34.167072, 31.489035, 42.909763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483353, 31.729290, 42.862381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155343, 0.009691, -0.987813,
		-0.592172, 0.799461, 0.100968,
		0.790697, 0.600640, -0.118452,
		34.720562, 31.909481, 42.826847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939381, 31.917732, 42.366032>,  <34.167072, 31.489035, 42.909763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939381, 31.917732, 42.366032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.332405, 31.990768, 42.380081>,  <34.568218, 32.034588, 42.388512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.332405, 31.990768, 42.380081>,  <33.939381, 31.917732, 42.366032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332405, 31.990768, 42.380081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009000, 0.235407, -0.971855,
		-0.185719, 0.954592, 0.232946,
		0.982562, 0.182589, 0.035128,
		34.627174, 32.045544, 42.390621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994835, 32.530560, 42.035618>,  <33.939381, 31.917732, 42.366032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994835, 32.530560, 42.035618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.359295, 32.366295, 42.022003>,  <34.577972, 32.267735, 42.013836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.359295, 32.366295, 42.022003>,  <33.994835, 32.530560, 42.035618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359295, 32.366295, 42.022003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010989, 0.058348, -0.998236,
		0.411923, 0.909919, 0.048651,
		0.911152, -0.410662, -0.034034,
		34.632641, 32.243095, 42.011791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430485, 33.036747, 41.714649>,  <33.994835, 32.530560, 42.035618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430485, 33.036747, 41.714649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.595375, 32.675102, 41.669674>,  <34.694309, 32.458115, 41.642689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.595375, 32.675102, 41.669674>,  <34.430485, 33.036747, 41.714649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595375, 32.675102, 41.669674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140885, 0.058673, -0.988286,
		0.900122, 0.423239, -0.103190,
		0.412227, -0.904116, -0.112440,
		34.719044, 32.403866, 41.635941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872219, 33.168625, 41.217491>,  <34.430485, 33.036747, 41.714649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872219, 33.168625, 41.217491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.807232, 32.774025, 41.225647>,  <34.768238, 32.537266, 41.230541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.807232, 32.774025, 41.225647>,  <34.872219, 33.168625, 41.217491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807232, 32.774025, 41.225647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233009, 0.018282, -0.972303,
		0.958807, -0.162718, -0.232834,
		-0.162468, -0.986503, 0.020386,
		34.758492, 32.478073, 41.231762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270313, 32.932003, 40.639332>,  <34.872219, 33.168625, 41.217491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270313, 32.932003, 40.639332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.006439, 32.641708, 40.717430>,  <34.848114, 32.467533, 40.764290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.006439, 32.641708, 40.717430>,  <35.270313, 32.932003, 40.639332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006439, 32.641708, 40.717430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260752, -0.022629, -0.965141,
		0.704856, -0.687601, -0.174309,
		-0.659687, -0.725736, 0.195244,
		34.808533, 32.423988, 40.776005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964993, 32.916744, 40.939342>,  <35.270313, 32.932003, 40.639332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964993, 32.916744, 40.939342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.249672, 33.196651, 40.914680>,  <36.420479, 33.364597, 40.899883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.249672, 33.196651, 40.914680>,  <35.964993, 32.916744, 40.939342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249672, 33.196651, 40.914680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295522, 0.377864, 0.877431,
		0.637298, -0.606248, 0.475725,
		0.711700, 0.699772, -0.061652,
		36.463181, 33.406582, 40.896183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260014, 32.958752, 41.616295>,  <35.964993, 32.916744, 40.939342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260014, 32.958752, 41.616295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.353893, 33.301224, 41.432178>,  <36.410221, 33.506706, 41.321709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.353893, 33.301224, 41.432178>,  <36.260014, 32.958752, 41.616295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353893, 33.301224, 41.432178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198069, 0.505706, 0.839661,
		0.951674, -0.105901, 0.288273,
		0.234702, 0.856182, -0.460291,
		36.424305, 33.558079, 41.294090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782013, 33.294155, 42.100243>,  <36.260014, 32.958752, 41.616295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782013, 33.294155, 42.100243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.638538, 33.581032, 41.861252>,  <36.552456, 33.753159, 41.717857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.638538, 33.581032, 41.861252>,  <36.782013, 33.294155, 42.100243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638538, 33.581032, 41.861252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015073, 0.635539, 0.771921,
		0.933337, 0.285882, -0.217148,
		-0.358684, 0.717190, -0.597481,
		36.530933, 33.796188, 41.682007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226269, 33.906624, 42.312950>,  <36.782013, 33.294155, 42.100243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226269, 33.906624, 42.312950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.882507, 34.025021, 42.146191>,  <36.676250, 34.096058, 42.046135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.882507, 34.025021, 42.146191>,  <37.226269, 33.906624, 42.312950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882507, 34.025021, 42.146191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132316, 0.658861, 0.740537,
		0.493875, 0.691585, -0.527065,
		-0.859407, 0.295993, -0.416902,
		36.624683, 34.113819, 42.021118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224159, 34.606670, 42.274681>,  <37.226269, 33.906624, 42.312950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224159, 34.606670, 42.274681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.835117, 34.525146, 42.229946>,  <36.601692, 34.476231, 42.203106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.835117, 34.525146, 42.229946>,  <37.224159, 34.606670, 42.274681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835117, 34.525146, 42.229946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224861, 0.702563, 0.675162,
		-0.059031, 0.681811, -0.729142,
		-0.972601, -0.203811, -0.111839,
		36.543339, 34.464005, 42.196396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902130, 35.209728, 42.102444>,  <37.224159, 34.606670, 42.274681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902130, 35.209728, 42.102444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.622368, 34.977516, 42.269207>,  <36.454510, 34.838188, 42.369263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.622368, 34.977516, 42.269207>,  <36.902130, 35.209728, 42.102444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622368, 34.977516, 42.269207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074629, 0.639441, 0.765210,
		-0.710816, 0.504081, -0.490554,
		-0.699408, -0.580533, 0.416906,
		36.412544, 34.803356, 42.394279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407135, 35.738991, 42.370552>,  <36.902130, 35.209728, 42.102444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407135, 35.738991, 42.370552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.309082, 35.394482, 42.548595>,  <36.250252, 35.187778, 42.655422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.309082, 35.394482, 42.548595>,  <36.407135, 35.738991, 42.370552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309082, 35.394482, 42.548595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217301, 0.496249, 0.840545,
		-0.944823, 0.109323, -0.308802,
		-0.245133, -0.861270, 0.445112,
		36.235542, 35.136101, 42.682129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826263, 35.887817, 42.757793>,  <36.407135, 35.738991, 42.370552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826263, 35.887817, 42.757793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.934208, 35.544472, 42.932327>,  <35.998974, 35.338467, 43.037048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.934208, 35.544472, 42.932327>,  <35.826263, 35.887817, 42.757793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934208, 35.544472, 42.932327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115686, 0.420965, 0.899669,
		-0.955924, -0.293266, 0.014303,
		0.269864, -0.858361, 0.436338,
		36.015167, 35.286964, 43.063229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378742, 35.816460, 43.338264>,  <35.826263, 35.887817, 42.757793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378742, 35.816460, 43.338264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.683723, 35.568825, 43.413521>,  <35.866711, 35.420242, 43.458675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.683723, 35.568825, 43.413521>,  <35.378742, 35.816460, 43.338264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683723, 35.568825, 43.413521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063782, 0.361268, 0.930278,
		-0.643897, -0.697289, 0.314935,
		0.762449, -0.619091, 0.188144,
		35.912457, 35.383099, 43.469963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142426, 35.482346, 44.049458>,  <35.378742, 35.816460, 43.338264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142426, 35.482346, 44.049458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.538193, 35.445347, 44.004734>,  <35.775654, 35.423149, 43.977901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.538193, 35.445347, 44.004734>,  <35.142426, 35.482346, 44.049458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538193, 35.445347, 44.004734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129888, 0.221043, 0.966576,
		-0.064688, -0.970868, 0.230718,
		0.989417, -0.092493, -0.111805,
		35.835018, 35.417599, 43.971191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419964, 35.011047, 44.545231>,  <35.142426, 35.482346, 44.049458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419964, 35.011047, 44.545231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.720940, 35.251434, 44.437401>,  <35.901524, 35.395668, 44.372704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.720940, 35.251434, 44.437401>,  <35.419964, 35.011047, 44.545231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720940, 35.251434, 44.437401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117348, 0.280420, 0.952677,
		0.648123, -0.748467, 0.140477,
		0.752440, 0.600967, -0.269578,
		35.946671, 35.431725, 44.356529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958778, 34.913876, 45.013069>,  <35.419964, 35.011047, 44.545231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958778, 34.913876, 45.013069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.067055, 35.264706, 44.854336>,  <36.132019, 35.475204, 44.759098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.067055, 35.264706, 44.854336>,  <35.958778, 34.913876, 45.013069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067055, 35.264706, 44.854336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333440, 0.301281, 0.893335,
		0.903076, -0.374135, -0.210897,
		0.270688, 0.877071, -0.396831,
		36.148262, 35.527828, 44.735287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647381, 35.032806, 45.152527>,  <35.958778, 34.913876, 45.013069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647381, 35.032806, 45.152527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.482529, 35.394943, 45.111534>,  <36.383617, 35.612225, 45.086937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.482529, 35.394943, 45.111534>,  <36.647381, 35.032806, 45.152527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482529, 35.394943, 45.111534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223334, 0.209428, 0.951978,
		0.883330, 0.369450, -0.288505,
		-0.412129, 0.905343, -0.102484,
		36.358891, 35.666546, 45.080788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151566, 35.416958, 45.636047>,  <36.647381, 35.032806, 45.152527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151566, 35.416958, 45.636047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.854866, 35.666672, 45.538006>,  <36.676846, 35.816502, 45.479179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.854866, 35.666672, 45.538006>,  <37.151566, 35.416958, 45.636047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854866, 35.666672, 45.538006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185601, 0.542256, 0.819458,
		0.644485, 0.562340, -0.518085,
		-0.741749, 0.624286, -0.245105,
		36.632343, 35.853958, 45.464474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.287388, 38.048119, 44.193520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.605488, 37.997589, 44.430710>,  <32.796349, 37.967274, 44.573025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.605488, 37.997589, 44.430710>,  <32.287388, 38.048119, 44.193520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605488, 37.997589, 44.430710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601312, 0.039399, -0.798042,
		0.077446, 0.991207, 0.107290,
		0.795252, -0.126320, 0.592974,
		32.844063, 37.959694, 44.608601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782139, 38.538059, 43.909771>,  <32.287388, 38.048119, 44.193520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782139, 38.538059, 43.909771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.983387, 38.261250, 44.116837>,  <33.104134, 38.095161, 44.241074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.983387, 38.261250, 44.116837>,  <32.782139, 38.538059, 43.909771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983387, 38.261250, 44.116837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572547, -0.181776, -0.799467,
		0.647350, 0.698611, 0.304763,
		0.503118, -0.692027, 0.517660,
		33.134323, 38.053642, 44.272133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492981, 38.631763, 43.846760>,  <32.782139, 38.538059, 43.909771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492981, 38.631763, 43.846760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.431152, 38.245361, 43.929646>,  <33.394054, 38.013519, 43.979378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.431152, 38.245361, 43.929646>,  <33.492981, 38.631763, 43.846760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431152, 38.245361, 43.929646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483830, -0.256881, -0.836613,
		0.861403, -0.029062, 0.507090,
		-0.154575, -0.966006, 0.207216,
		33.384781, 37.955559, 43.991810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115681, 38.304508, 43.721249>,  <33.492981, 38.631763, 43.846760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115681, 38.304508, 43.721249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.835323, 38.023891, 43.669720>,  <33.667110, 37.855522, 43.638802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.835323, 38.023891, 43.669720>,  <34.115681, 38.304508, 43.721249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835323, 38.023891, 43.669720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429873, -0.271351, -0.861149,
		0.569174, -0.658948, 0.491760,
		-0.700892, -0.701538, -0.128818,
		33.625057, 37.813431, 43.631073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465729, 37.825466, 43.453827>,  <34.115681, 38.304508, 43.721249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465729, 37.825466, 43.453827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.082325, 37.748905, 43.369331>,  <33.852283, 37.702969, 43.318634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.082325, 37.748905, 43.369331>,  <34.465729, 37.825466, 43.453827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082325, 37.748905, 43.369331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252416, -0.225583, -0.940956,
		0.132445, -0.955238, 0.264536,
		-0.958512, -0.191398, -0.211240,
		33.794773, 37.691486, 43.305958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472279, 37.175346, 43.114513>,  <34.465729, 37.825466, 43.453827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472279, 37.175346, 43.114513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.124657, 37.347240, 43.016479>,  <33.916084, 37.450378, 42.957661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.124657, 37.347240, 43.016479>,  <34.472279, 37.175346, 43.114513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124657, 37.347240, 43.016479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113551, -0.308900, -0.944292,
		-0.481504, -0.848472, 0.219655,
		-0.869057, 0.429739, -0.245082,
		33.863941, 37.476162, 42.942955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254375, 36.670776, 42.767395>,  <34.472279, 37.175346, 43.114513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254375, 36.670776, 42.767395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.035038, 36.987564, 42.659988>,  <33.903435, 37.177635, 42.595543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.035038, 36.987564, 42.659988>,  <34.254375, 36.670776, 42.767395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035038, 36.987564, 42.659988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022430, -0.307052, -0.951429,
		-0.835950, -0.527736, 0.150608,
		-0.548347, 0.791968, -0.268517,
		33.870533, 37.225155, 42.579433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806789, 36.436066, 42.304276>,  <34.254375, 36.670776, 42.767395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806789, 36.436066, 42.304276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.816109, 36.828754, 42.228725>,  <33.821701, 37.064369, 42.183395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.816109, 36.828754, 42.228725>,  <33.806789, 36.436066, 42.304276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816109, 36.828754, 42.228725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103322, -0.185554, -0.977187,
		-0.994375, 0.042280, 0.097111,
		0.023297, 0.981724, -0.188879,
		33.823097, 37.123272, 42.172062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349136, 36.468800, 41.787243>,  <33.806789, 36.436066, 42.304276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349136, 36.468800, 41.787243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.541630, 36.816303, 41.740475>,  <33.657127, 37.024807, 41.712414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.541630, 36.816303, 41.740475>,  <33.349136, 36.468800, 41.787243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541630, 36.816303, 41.740475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071504, -0.094032, -0.992998,
		-0.873672, 0.486223, 0.016869,
		0.481233, 0.868761, -0.116921,
		33.686001, 37.076931, 41.705399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905972, 36.807945, 41.326096>,  <33.349136, 36.468800, 41.787243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905972, 36.807945, 41.326096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.258972, 36.995556, 41.312214>,  <33.470772, 37.108120, 41.303883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.258972, 36.995556, 41.312214>,  <32.905972, 36.807945, 41.326096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258972, 36.995556, 41.312214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088366, 0.092880, -0.991748,
		-0.461929, 0.878289, 0.123412,
		0.882504, 0.469023, -0.034707,
		33.523724, 37.136261, 41.301804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809849, 37.401638, 40.926674>,  <32.905972, 36.807945, 41.326096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809849, 37.401638, 40.926674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.205814, 37.345772, 40.917179>,  <33.443394, 37.312252, 40.911484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.205814, 37.345772, 40.917179>,  <32.809849, 37.401638, 40.926674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205814, 37.345772, 40.917179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005909, 0.126702, -0.991923,
		0.141541, 0.982060, 0.124599,
		0.989915, -0.139661, -0.023736,
		33.502789, 37.303875, 40.910057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002846, 38.044529, 40.564320>,  <32.809849, 37.401638, 40.926674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002846, 38.044529, 40.564320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.272823, 37.750935, 40.534058>,  <33.434811, 37.574780, 40.515900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.272823, 37.750935, 40.534058>,  <33.002846, 38.044529, 40.564320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272823, 37.750935, 40.534058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113794, -0.002242, -0.993502,
		0.729044, 0.679164, -0.085037,
		0.674941, -0.733983, -0.075650,
		33.475307, 37.530739, 40.511364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145237, 38.187675, 39.895733>,  <33.002846, 38.044529, 40.564320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145237, 38.187675, 39.895733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.325123, 37.837318, 39.965672>,  <33.433052, 37.627106, 40.007633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.325123, 37.837318, 39.965672>,  <33.145237, 38.187675, 39.895733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325123, 37.837318, 39.965672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028325, -0.181676, -0.982950,
		0.892725, 0.446996, -0.056892,
		0.449710, -0.875893, 0.174848,
		33.460037, 37.574551, 40.018127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614029, 38.185707, 39.401615>,  <33.145237, 38.187675, 39.895733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614029, 38.185707, 39.401615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.536583, 37.810043, 39.515106>,  <33.490116, 37.584644, 39.583202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.536583, 37.810043, 39.515106>,  <33.614029, 38.185707, 39.401615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536583, 37.810043, 39.515106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218416, -0.240681, -0.945710,
		0.956456, -0.245072, -0.158528,
		-0.193612, -0.939155, 0.283729,
		33.478500, 37.528297, 39.600224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246445, 38.367718, 39.747131>,  <33.614029, 38.185707, 39.401615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246445, 38.367718, 39.747131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.528538, 38.626930, 39.632099>,  <34.697792, 38.782459, 39.563080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.528538, 38.626930, 39.632099>,  <34.246445, 38.367718, 39.747131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528538, 38.626930, 39.632099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002507, 0.407905, 0.913021,
		0.708975, -0.643168, 0.289291,
		0.705229, 0.648034, -0.287582,
		34.740108, 38.821339, 39.545826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850815, 38.308651, 40.224915>,  <34.246445, 38.367718, 39.747131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850815, 38.308651, 40.224915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.849865, 38.665623, 40.044441>,  <34.849297, 38.879807, 39.936157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.849865, 38.665623, 40.044441>,  <34.850815, 38.308651, 40.224915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849865, 38.665623, 40.044441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005896, 0.451166, 0.892420,
		0.999980, 0.004780, 0.004190,
		-0.002375, 0.892427, -0.451185,
		34.849152, 38.933350, 39.909084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362991, 38.641914, 40.560116>,  <34.850815, 38.308651, 40.224915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362991, 38.641914, 40.560116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.127823, 38.911915, 40.381802>,  <34.986721, 39.073914, 40.274815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.127823, 38.911915, 40.381802>,  <35.362991, 38.641914, 40.560116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127823, 38.911915, 40.381802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190445, 0.420096, 0.887271,
		0.786182, 0.606541, -0.118431,
		-0.587918, 0.675002, -0.445785,
		34.951447, 39.114414, 40.248066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600075, 39.310223, 40.820633>,  <35.362991, 38.641914, 40.560116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600075, 39.310223, 40.820633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.225651, 39.371174, 40.693775>,  <35.000996, 39.407745, 40.617661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.225651, 39.371174, 40.693775>,  <35.600075, 39.310223, 40.820633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225651, 39.371174, 40.693775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186726, 0.548817, 0.814821,
		0.298217, 0.821936, -0.485270,
		-0.936056, 0.152381, -0.317143,
		34.944836, 39.416889, 40.598633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480915, 39.972569, 40.968128>,  <35.600075, 39.310223, 40.820633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480915, 39.972569, 40.968128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.121880, 39.803688, 40.917400>,  <34.906460, 39.702358, 40.886963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.121880, 39.803688, 40.917400>,  <35.480915, 39.972569, 40.968128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121880, 39.803688, 40.917400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308694, 0.396594, 0.864535,
		-0.314714, 0.815143, -0.486309,
		-0.897587, -0.422202, -0.126817,
		34.852604, 39.677029, 40.879356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094532, 40.463364, 41.094650>,  <35.480915, 39.972569, 40.968128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094532, 40.463364, 41.094650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.851639, 40.145885, 41.109196>,  <34.705902, 39.955399, 41.117924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.851639, 40.145885, 41.109196>,  <35.094532, 40.463364, 41.094650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851639, 40.145885, 41.109196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430627, 0.367230, 0.824441,
		-0.667705, 0.484969, -0.564779,
		-0.607232, -0.793692, 0.036360,
		34.669468, 39.907780, 41.120106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357212, 40.784527, 41.262131>,  <35.094532, 40.463364, 41.094650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357212, 40.784527, 41.262131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.368462, 40.392361, 41.340107>,  <34.375210, 40.157063, 41.386894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.368462, 40.392361, 41.340107>,  <34.357212, 40.784527, 41.262131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368462, 40.392361, 41.340107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341277, 0.173887, 0.923739,
		-0.939542, -0.092505, -0.329702,
		0.028120, -0.980411, 0.194945,
		34.376896, 40.098236, 41.398590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717262, 40.556469, 41.474751>,  <34.357212, 40.784527, 41.262131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717262, 40.556469, 41.474751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.996937, 40.316727, 41.630657>,  <34.164742, 40.172882, 41.724201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.996937, 40.316727, 41.630657>,  <33.717262, 40.556469, 41.474751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996937, 40.316727, 41.630657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237460, 0.319539, 0.917337,
		-0.674357, -0.733939, 0.081093,
		0.699182, -0.599357, 0.389765,
		34.206692, 40.136921, 41.747585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416466, 40.313198, 42.059715>,  <33.717262, 40.556469, 41.474751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416466, 40.313198, 42.059715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.781715, 40.163712, 42.124889>,  <34.000866, 40.074020, 42.163994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.781715, 40.163712, 42.124889>,  <33.416466, 40.313198, 42.059715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781715, 40.163712, 42.124889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061054, 0.269795, 0.960980,
		-0.403089, -0.887440, 0.223539,
		0.913122, -0.373713, 0.162933,
		34.055653, 40.051598, 42.173771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272663, 39.752934, 42.580067>,  <33.416466, 40.313198, 42.059715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272663, 39.752934, 42.580067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.649452, 39.883484, 42.611458>,  <33.875526, 39.961815, 42.630291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.649452, 39.883484, 42.611458>,  <33.272663, 39.752934, 42.580067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649452, 39.883484, 42.611458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134464, 0.152664, 0.979088,
		0.307572, -0.932830, 0.187692,
		0.941976, 0.326378, 0.078477,
		33.932045, 39.981396, 42.635002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516659, 39.462727, 43.150288>,  <33.272663, 39.752934, 42.580067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516659, 39.462727, 43.150288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.761589, 39.776646, 43.112034>,  <33.908546, 39.964996, 43.089081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.761589, 39.776646, 43.112034>,  <33.516659, 39.462727, 43.150288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761589, 39.776646, 43.112034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215071, 0.281753, 0.935072,
		0.760787, -0.552004, 0.341313,
		0.612330, 0.784797, -0.095634,
		33.945290, 40.012085, 43.083344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926224, 39.337852, 43.718342>,  <33.516659, 39.462727, 43.150288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926224, 39.337852, 43.718342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.021324, 39.714561, 43.623230>,  <34.078384, 39.940586, 43.566162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.021324, 39.714561, 43.623230>,  <33.926224, 39.337852, 43.718342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021324, 39.714561, 43.623230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092196, 0.221809, 0.970722,
		0.966940, -0.252714, -0.034092,
		0.237753, 0.941773, -0.237776,
		34.092651, 39.997093, 43.551899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466660, 39.545670, 44.233513>,  <33.926224, 39.337852, 43.718342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466660, 39.545670, 44.233513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.327366, 39.888695, 44.082081>,  <34.243790, 40.094509, 43.991222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.327366, 39.888695, 44.082081>,  <34.466660, 39.545670, 44.233513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327366, 39.888695, 44.082081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028256, 0.413275, 0.910168,
		0.936980, 0.306257, -0.168149,
		-0.348237, 0.857561, -0.378577,
		34.222897, 40.145962, 43.968506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897385, 40.198944, 44.385025>,  <34.466660, 39.545670, 44.233513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897385, 40.198944, 44.385025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.516281, 40.299252, 44.316483>,  <34.287621, 40.359436, 44.275356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.516281, 40.299252, 44.316483>,  <34.897385, 40.198944, 44.385025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516281, 40.299252, 44.316483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075084, 0.352206, 0.932906,
		0.294297, 0.901702, -0.316739,
		-0.952760, 0.250769, -0.171356,
		34.230453, 40.374481, 44.265076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556618, 40.447201, 44.518005>,  <34.897385, 40.198944, 44.385025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556618, 40.447201, 44.518005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.869488, 40.246407, 44.665634>,  <36.057209, 40.125931, 44.754211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.869488, 40.246407, 44.665634>,  <35.556618, 40.447201, 44.518005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869488, 40.246407, 44.665634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368446, -0.105024, -0.923698,
		0.502447, 0.858474, 0.102809,
		0.782173, -0.501988, 0.369070,
		36.104141, 40.095810, 44.776356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222469, 40.829372, 44.308861>,  <35.556618, 40.447201, 44.518005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222469, 40.829372, 44.308861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.279064, 40.438850, 44.374355>,  <36.313023, 40.204536, 44.413654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.279064, 40.438850, 44.374355>,  <36.222469, 40.829372, 44.308861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279064, 40.438850, 44.374355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248810, -0.125023, -0.960449,
		0.958162, 0.176631, 0.225225,
		0.141487, -0.976305, 0.163740,
		36.321510, 40.145958, 44.423477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835354, 40.663296, 43.968754>,  <36.222469, 40.829372, 44.308861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835354, 40.663296, 43.968754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.693703, 40.292686, 44.019585>,  <36.608711, 40.070320, 44.050083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.693703, 40.292686, 44.019585>,  <36.835354, 40.663296, 43.968754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693703, 40.292686, 44.019585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485400, -0.298243, -0.821850,
		0.799362, -0.229359, 0.555351,
		-0.354128, -0.926524, 0.127073,
		36.587463, 40.014729, 44.057705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477982, 40.235058, 43.868732>,  <36.835354, 40.663296, 43.968754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477982, 40.235058, 43.868732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.147816, 40.017342, 43.808815>,  <36.949715, 39.886711, 43.772865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.147816, 40.017342, 43.808815>,  <37.477982, 40.235058, 43.868732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147816, 40.017342, 43.808815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325793, -0.242579, -0.913791,
		0.461031, -0.803059, 0.377554,
		-0.825415, -0.544290, -0.149795,
		36.900192, 39.854053, 43.763878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752071, 39.645477, 43.536865>,  <37.477982, 40.235058, 43.868732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752071, 39.645477, 43.536865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.361504, 39.593426, 43.467953>,  <37.127163, 39.562195, 43.426605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.361504, 39.593426, 43.467953>,  <37.752071, 39.645477, 43.536865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361504, 39.593426, 43.467953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203644, -0.290054, -0.935092,
		0.071712, -0.948122, 0.309713,
		-0.976415, -0.130128, -0.172279,
		37.068581, 39.554386, 43.416267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686489, 38.975571, 43.313248>,  <37.752071, 39.645477, 43.536865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686489, 38.975571, 43.313248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.387554, 39.201187, 43.172760>,  <37.208195, 39.336555, 43.088467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.387554, 39.201187, 43.172760>,  <37.686489, 38.975571, 43.313248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387554, 39.201187, 43.172760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102743, -0.424133, -0.899753,
		-0.656458, -0.708500, 0.259018,
		-0.747333, 0.564038, -0.351219,
		37.163353, 39.370399, 43.067394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174610, 38.502811, 43.047325>,  <37.686489, 38.975571, 43.313248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174610, 38.502811, 43.047325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136765, 38.850960, 42.854038>,  <37.114059, 39.059849, 42.738068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136765, 38.850960, 42.854038>,  <37.174610, 38.502811, 43.047325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136765, 38.850960, 42.854038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196431, -0.459529, -0.866169,
		-0.975942, -0.176868, -0.127491,
		-0.094612, 0.870374, -0.483216,
		37.108379, 39.112072, 42.709072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638927, 38.400341, 42.534515>,  <37.174610, 38.502811, 43.047325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638927, 38.400341, 42.534515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.876015, 38.706257, 42.433495>,  <37.018269, 38.889805, 42.372883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.876015, 38.706257, 42.433495>,  <36.638927, 38.400341, 42.534515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876015, 38.706257, 42.433495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141686, -0.407686, -0.902063,
		-0.792849, 0.498887, -0.350004,
		0.592719, 0.764790, -0.252548,
		37.053829, 38.935696, 42.357731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334579, 38.738850, 41.843407>,  <36.638927, 38.400341, 42.534515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334579, 38.738850, 41.843407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.683014, 38.934757, 41.858070>,  <36.892075, 39.052303, 41.866871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.683014, 38.934757, 41.858070>,  <36.334579, 38.738850, 41.843407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683014, 38.934757, 41.858070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070815, -0.051379, -0.996165,
		-0.486006, 0.870337, -0.079438,
		0.871082, 0.489768, 0.036662,
		36.944340, 39.081688, 41.869068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353016, 39.168098, 41.216885>,  <36.334579, 38.738850, 41.843407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353016, 39.168098, 41.216885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.723892, 39.123779, 41.360012>,  <36.946419, 39.097187, 41.445889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.723892, 39.123779, 41.360012>,  <36.353016, 39.168098, 41.216885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723892, 39.123779, 41.360012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330834, -0.205749, -0.920987,
		0.175666, 0.972312, -0.154113,
		0.927195, -0.110800, 0.357817,
		37.002052, 39.090538, 41.467358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727184, 39.642872, 40.842896>,  <36.353016, 39.168098, 41.216885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727184, 39.642872, 40.842896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.997234, 39.374512, 40.965591>,  <37.159264, 39.213493, 41.039207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.997234, 39.374512, 40.965591>,  <36.727184, 39.642872, 40.842896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997234, 39.374512, 40.965591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344841, -0.080564, -0.935197,
		0.652139, 0.737155, 0.176964,
		0.675129, -0.670903, 0.306741,
		37.199772, 39.173241, 41.057613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251350, 39.720257, 40.390236>,  <36.727184, 39.642872, 40.842896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251350, 39.720257, 40.390236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.342472, 39.363758, 40.547100>,  <37.397144, 39.149860, 40.641220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.342472, 39.363758, 40.547100>,  <37.251350, 39.720257, 40.390236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342472, 39.363758, 40.547100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302929, -0.317894, -0.898431,
		0.925386, 0.323464, 0.197565,
		0.227805, -0.891243, 0.392161,
		37.410812, 39.096386, 40.664749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985203, 39.532837, 40.156338>,  <37.251350, 39.720257, 40.390236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985203, 39.532837, 40.156338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.830273, 39.184658, 40.277859>,  <37.737316, 38.975750, 40.350773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.830273, 39.184658, 40.277859>,  <37.985203, 39.532837, 40.156338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830273, 39.184658, 40.277859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259451, -0.419116, -0.870073,
		0.884684, -0.258177, 0.388173,
		-0.387322, -0.870452, 0.303801,
		37.714077, 38.923523, 40.368999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504143, 39.082401, 40.080841>,  <37.985203, 39.532837, 40.156338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504143, 39.082401, 40.080841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.178944, 38.849560, 40.086380>,  <37.983826, 38.709854, 40.089703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.178944, 38.849560, 40.086380>,  <38.504143, 39.082401, 40.080841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178944, 38.849560, 40.086380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358322, -0.518903, -0.776109,
		0.458962, -0.626011, 0.630447,
		-0.812994, -0.582108, 0.013843,
		37.935047, 38.674927, 40.090534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.897305, 26.327278, 32.255028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.641672, 26.394949, 31.954906>,  <26.488293, 26.435553, 31.774834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.641672, 26.394949, 31.954906>,  <26.897305, 26.327278, 32.255028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641672, 26.394949, 31.954906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206969, 0.977354, 0.044085,
		0.740770, -0.127115, -0.659622,
		-0.639080, 0.169178, -0.750303,
		26.449947, 26.445702, 31.729816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221310, 26.779755, 31.700979>,  <26.897305, 26.327278, 32.255028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221310, 26.779755, 31.700979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.826134, 26.828247, 31.662443>,  <26.589029, 26.857342, 31.639322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.826134, 26.828247, 31.662443>,  <27.221310, 26.779755, 31.700979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826134, 26.828247, 31.662443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128920, 0.988579, -0.078049,
		0.085776, -0.089527, -0.992284,
		-0.987938, 0.121231, -0.096339,
		26.529753, 26.864616, 31.633541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949114, 27.266018, 31.086641>,  <27.221310, 26.779755, 31.700979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949114, 27.266018, 31.086641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.676374, 27.272825, 31.379158>,  <26.512730, 27.276911, 31.554668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.676374, 27.272825, 31.379158>,  <26.949114, 27.266018, 31.086641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676374, 27.272825, 31.379158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065499, 0.994293, -0.084212,
		-0.728553, -0.105318, -0.676845,
		-0.681851, 0.017020, 0.731293,
		26.471819, 27.277931, 31.598545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595001, 27.888798, 30.887251>,  <26.949114, 27.266018, 31.086641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.595001, 27.888798, 30.887251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.405237, 27.826864, 31.233883>,  <26.291378, 27.789705, 31.441862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.405237, 27.826864, 31.233883>,  <26.595001, 27.888798, 30.887251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405237, 27.826864, 31.233883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312626, 0.949875, -0.001433,
		-0.822922, -0.271595, -0.499034,
		-0.474410, -0.154832, 0.866581,
		26.262915, 27.780415, 31.493856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912046, 28.221468, 30.908152>,  <26.595001, 27.888798, 30.887251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912046, 28.221468, 30.908152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.969368, 28.185118, 31.302351>,  <26.003761, 28.163307, 31.538870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.969368, 28.185118, 31.302351>,  <25.912046, 28.221468, 30.908152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.969368, 28.185118, 31.302351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384723, 0.912341, 0.140076,
		-0.911840, -0.399217, 0.095781,
		0.143305, -0.090878, 0.985497,
		26.012360, 28.157854, 31.598000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.371788, 28.652342, 31.272463>,  <25.912046, 28.221468, 30.908152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.371788, 28.652342, 31.272463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.649710, 28.593664, 31.554094>,  <25.816463, 28.558458, 31.723074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.649710, 28.593664, 31.554094>,  <25.371788, 28.652342, 31.272463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649710, 28.593664, 31.554094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169463, 0.918020, 0.358498,
		-0.698949, -0.368401, 0.612985,
		0.694804, -0.146693, 0.704080,
		25.858150, 28.549656, 31.765318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.091698, 28.973932, 31.875826>,  <25.371788, 28.652342, 31.272463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.091698, 28.973932, 31.875826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.473734, 28.927832, 31.985018>,  <25.702955, 28.900171, 32.050533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.473734, 28.927832, 31.985018>,  <25.091698, 28.973932, 31.875826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.473734, 28.927832, 31.985018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004074, 0.916063, 0.401015,
		-0.296282, -0.384118, 0.874454,
		0.955092, -0.115251, 0.272978,
		25.760262, 28.893257, 32.066910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.170713, 29.163294, 32.658863>,  <25.091698, 28.973932, 31.875826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.170713, 29.163294, 32.658863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.531599, 29.210756, 32.493004>,  <25.748131, 29.239233, 32.393490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.531599, 29.210756, 32.493004>,  <25.170713, 29.163294, 32.658863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531599, 29.210756, 32.493004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014606, 0.952453, 0.304337,
		0.431042, -0.280633, 0.857583,
		0.902214, 0.118656, -0.414646,
		25.802263, 29.246353, 32.368610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593023, 29.551798, 33.245907>,  <25.170713, 29.163294, 32.658863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593023, 29.551798, 33.245907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.771570, 29.624269, 32.895382>,  <25.878698, 29.667753, 32.685066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.771570, 29.624269, 32.895382>,  <25.593023, 29.551798, 33.245907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771570, 29.624269, 32.895382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047849, 0.973055, 0.225553,
		0.893569, -0.142610, 0.425671,
		0.446368, 0.181179, -0.876316,
		25.905481, 29.678623, 32.632488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271950, 30.015514, 33.405121>,  <25.593023, 29.551798, 33.245907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271950, 30.015514, 33.405121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.191133, 30.071808, 33.017437>,  <26.142643, 30.105583, 32.784824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.191133, 30.071808, 33.017437>,  <26.271950, 30.015514, 33.405121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191133, 30.071808, 33.017437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350305, 0.934537, 0.062675,
		0.914585, -0.326857, -0.238113,
		-0.202040, 0.140733, -0.969213,
		26.130522, 30.114027, 32.726673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809465, 30.403656, 33.239208>,  <26.271950, 30.015514, 33.405121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809465, 30.403656, 33.239208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.554382, 30.442053, 32.933498>,  <26.401333, 30.465092, 32.750072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.554382, 30.442053, 32.933498>,  <26.809465, 30.403656, 33.239208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554382, 30.442053, 32.933498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299403, 0.945074, -0.131120,
		0.709708, -0.312442, -0.631423,
		-0.637709, 0.095993, -0.764273,
		26.363070, 30.470850, 32.704216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201658, 30.946636, 32.729675>,  <26.809465, 30.403656, 33.239208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201658, 30.946636, 32.729675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.804180, 30.943222, 32.684959>,  <26.565693, 30.941174, 32.658131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.804180, 30.943222, 32.684959>,  <27.201658, 30.946636, 32.729675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804180, 30.943222, 32.684959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025540, 0.988117, 0.151565,
		0.109169, 0.153465, -0.982105,
		-0.993695, -0.008537, -0.111791,
		26.506071, 30.940660, 32.651421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002649, 31.502306, 32.193325>,  <27.201658, 30.946636, 32.729675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.002649, 31.502306, 32.193325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.679600, 31.420872, 32.414700>,  <26.485769, 31.372011, 32.547523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.679600, 31.420872, 32.414700>,  <27.002649, 31.502306, 32.193325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.679600, 31.420872, 32.414700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138327, 0.977734, 0.157804,
		-0.573242, 0.050891, -0.817804,
		-0.807626, -0.203584, 0.553438,
		26.437311, 31.359797, 32.580730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387503, 31.950850, 31.934017>,  <27.002649, 31.502306, 32.193325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387503, 31.950850, 31.934017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.303652, 31.842247, 32.309750>,  <26.253342, 31.777086, 32.535191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.303652, 31.842247, 32.309750>,  <26.387503, 31.950850, 31.934017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.303652, 31.842247, 32.309750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114186, 0.960899, 0.252258,
		-0.971091, -0.054378, -0.232432,
		-0.209627, -0.271506, 0.939330,
		26.240765, 31.760796, 32.591549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.794722, 32.528538, 32.234467>,  <26.387503, 31.950850, 31.934017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.794722, 32.528538, 32.234467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.879448, 32.327335, 32.569637>,  <25.930285, 32.206615, 32.770741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.879448, 32.327335, 32.569637>,  <25.794722, 32.528538, 32.234467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879448, 32.327335, 32.569637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030980, 0.860406, 0.508666,
		-0.976819, -0.081784, 0.197830,
		0.211815, -0.503003, 0.837927,
		25.942993, 32.176434, 32.821014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.322037, 32.630268, 32.847710>,  <25.794722, 32.528538, 32.234467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.322037, 32.630268, 32.847710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.672838, 32.519424, 33.004719>,  <25.883320, 32.452919, 33.098923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.672838, 32.519424, 33.004719>,  <25.322037, 32.630268, 32.847710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.672838, 32.519424, 33.004719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015934, 0.833261, 0.552650,
		-0.480218, -0.478421, 0.735189,
		0.877004, -0.277107, 0.392524,
		25.935940, 32.436291, 33.122475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.225132, 32.832230, 33.500340>,  <25.322037, 32.630268, 32.847710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.225132, 32.832230, 33.500340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.619490, 32.772598, 33.469902>,  <25.856104, 32.736820, 33.451641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.619490, 32.772598, 33.469902>,  <25.225132, 32.832230, 33.500340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.619490, 32.772598, 33.469902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158025, 0.679225, 0.716715,
		-0.055166, -0.718629, 0.693202,
		0.985893, -0.149082, -0.076091,
		25.915258, 32.727875, 33.447075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479172, 32.734619, 34.202156>,  <25.225132, 32.832230, 33.500340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479172, 32.734619, 34.202156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.773350, 32.873466, 33.969387>,  <25.949856, 32.956776, 33.829727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.773350, 32.873466, 33.969387>,  <25.479172, 32.734619, 34.202156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773350, 32.873466, 33.969387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298608, 0.604876, 0.738213,
		0.608224, -0.716686, 0.341210,
		0.735457, 0.347111, -0.581908,
		25.993982, 32.977604, 33.794811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.895916, 32.938885, 34.716553>,  <25.479172, 32.734619, 34.202156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.895916, 32.938885, 34.716553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.016203, 33.122837, 34.382347>,  <26.088375, 33.233208, 34.181824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.016203, 33.122837, 34.382347>,  <25.895916, 32.938885, 34.716553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016203, 33.122837, 34.382347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328773, 0.772373, 0.543459,
		0.895253, -0.438121, 0.081070,
		0.300717, 0.459880, -0.835512,
		26.106419, 33.260799, 34.131695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609022, 33.119404, 34.820206>,  <25.895916, 32.938885, 34.716553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609022, 33.119404, 34.820206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.460232, 33.367916, 34.544338>,  <26.370958, 33.517025, 34.378819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.460232, 33.367916, 34.544338>,  <26.609022, 33.119404, 34.820206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460232, 33.367916, 34.544338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447109, 0.771033, 0.453433,
		0.813467, -0.139691, -0.564587,
		-0.371974, 0.621284, -0.689667,
		26.348640, 33.554302, 34.337437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312140, 33.437408, 34.789368>,  <26.609022, 33.119404, 34.820206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312140, 33.437408, 34.789368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.683731, 33.416756, 34.935974>,  <27.906685, 33.404366, 35.023937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.683731, 33.416756, 34.935974>,  <27.312140, 33.437408, 34.789368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683731, 33.416756, 34.935974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050060, -0.998651, -0.013791,
		0.366734, -0.005536, -0.930309,
		0.928978, -0.051629, 0.366516,
		27.962425, 33.401268, 35.045929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699278, 33.059132, 34.298447>,  <27.312140, 33.437408, 34.789368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699278, 33.059132, 34.298447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.896164, 33.013229, 34.643597>,  <28.014296, 32.985687, 34.850685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.896164, 33.013229, 34.643597>,  <27.699278, 33.059132, 34.298447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896164, 33.013229, 34.643597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104042, -0.991922, -0.072571,
		0.864234, -0.054055, -0.500178,
		0.492214, -0.114758, 0.862876,
		28.043829, 32.978802, 34.902458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964520, 32.426960, 34.229694>,  <27.699278, 33.059132, 34.298447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964520, 32.426960, 34.229694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.991587, 32.478355, 34.625454>,  <28.007828, 32.509193, 34.862911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.991587, 32.478355, 34.625454>,  <27.964520, 32.426960, 34.229694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991587, 32.478355, 34.625454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205906, -0.968526, 0.139860,
		0.976229, -0.213188, -0.039083,
		0.067669, 0.128488, 0.989400,
		28.011887, 32.516903, 34.922276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583885, 31.973959, 34.542587>,  <27.964520, 32.426960, 34.229694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583885, 31.973959, 34.542587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.316994, 32.054157, 34.829533>,  <28.156858, 32.102276, 35.001698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.316994, 32.054157, 34.829533>,  <28.583885, 31.973959, 34.542587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316994, 32.054157, 34.829533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106811, -0.978892, 0.174246,
		0.737153, 0.039640, 0.674562,
		-0.667230, 0.200497, 0.717359,
		28.116825, 32.114307, 35.044739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803659, 31.685637, 35.074905>,  <28.583885, 31.973959, 34.542587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803659, 31.685637, 35.074905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.426409, 31.729830, 35.200321>,  <28.200058, 31.756346, 35.275570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.426409, 31.729830, 35.200321>,  <28.803659, 31.685637, 35.074905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426409, 31.729830, 35.200321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001423, -0.944488, 0.328542,
		0.332429, 0.309411, 0.890930,
		-0.943127, 0.110484, 0.313535,
		28.143471, 31.762976, 35.294380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762688, 31.432068, 35.735920>,  <28.803659, 31.685637, 35.074905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762688, 31.432068, 35.735920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.381413, 31.428400, 35.615028>,  <28.152647, 31.426199, 35.542492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.381413, 31.428400, 35.615028>,  <28.762688, 31.432068, 35.735920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381413, 31.428400, 35.615028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095157, -0.939657, 0.328617,
		-0.287008, 0.341994, 0.894800,
		-0.953190, -0.009169, -0.302233,
		28.095455, 31.425650, 35.524357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363714, 30.982815, 36.260864>,  <28.762688, 31.432068, 35.735920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363714, 30.982815, 36.260864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.122171, 30.994104, 35.942226>,  <27.977245, 31.000879, 35.751045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.122171, 30.994104, 35.942226>,  <28.363714, 30.982815, 36.260864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.122171, 30.994104, 35.942226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291288, -0.938066, 0.187573,
		-0.741962, 0.345305, 0.574680,
		-0.603857, 0.028225, -0.796593,
		27.941013, 31.002571, 35.703247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821358, 30.620024, 36.427380>,  <28.363714, 30.982815, 36.260864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821358, 30.620024, 36.427380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.800266, 30.602871, 36.028305>,  <27.787611, 30.592579, 35.788860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.800266, 30.602871, 36.028305>,  <27.821358, 30.620024, 36.427380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800266, 30.602871, 36.028305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310889, -0.948723, 0.057209,
		-0.948982, 0.313186, 0.036695,
		-0.052730, -0.042882, -0.997688,
		27.784447, 30.590006, 35.729000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263529, 30.171057, 36.338253>,  <27.821358, 30.620024, 36.427380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263529, 30.171057, 36.338253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.441458, 30.180433, 35.980129>,  <27.548216, 30.186060, 35.765255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.441458, 30.180433, 35.980129>,  <27.263529, 30.171057, 36.338253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441458, 30.180433, 35.980129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317491, -0.930611, -0.182108,
		-0.837456, 0.365260, -0.406514,
		0.444823, 0.023443, -0.895312,
		27.574905, 30.187466, 35.711536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728573, 30.020657, 35.888348>,  <27.263529, 30.171057, 36.338253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728573, 30.020657, 35.888348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.055683, 29.930971, 35.676319>,  <27.251949, 29.877161, 35.549103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.055683, 29.930971, 35.676319>,  <26.728573, 30.020657, 35.888348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055683, 29.930971, 35.676319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426497, -0.854495, -0.296546,
		-0.386453, 0.468581, -0.794409,
		0.817774, -0.224212, -0.530070,
		27.301016, 29.863707, 35.517300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510035, 29.821604, 35.210991>,  <26.728573, 30.020657, 35.888348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510035, 29.821604, 35.210991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.883877, 29.679544, 35.218830>,  <27.108183, 29.594309, 35.223534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.883877, 29.679544, 35.218830>,  <26.510035, 29.821604, 35.210991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883877, 29.679544, 35.218830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313738, -0.849081, -0.425006,
		0.167578, 0.391065, -0.904978,
		0.934605, -0.355148, 0.019596,
		27.164259, 29.573000, 35.224709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619608, 29.415468, 34.564613>,  <26.510035, 29.821604, 35.210991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619608, 29.415468, 34.564613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.945015, 29.301764, 34.767544>,  <27.140259, 29.233541, 34.889301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.945015, 29.301764, 34.767544>,  <26.619608, 29.415468, 34.564613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945015, 29.301764, 34.767544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017187, -0.883763, -0.467619,
		0.581285, 0.371697, -0.723843,
		0.813518, -0.284261, 0.507330,
		27.189070, 29.216486, 34.919743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081337, 29.183210, 33.993099>,  <26.619608, 29.415468, 34.564613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081337, 29.183210, 33.993099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.148623, 29.036299, 34.359009>,  <27.188993, 28.948153, 34.578556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.148623, 29.036299, 34.359009>,  <27.081337, 29.183210, 33.993099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148623, 29.036299, 34.359009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111791, -0.914902, -0.387889,
		0.979391, 0.167513, -0.112842,
		0.168216, -0.367280, 0.914773,
		27.199087, 28.926115, 34.633442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557550, 28.563704, 33.901924>,  <27.081337, 29.183210, 33.993099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557550, 28.563704, 33.901924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.394377, 28.497513, 34.261082>,  <27.296473, 28.457798, 34.476574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.394377, 28.497513, 34.261082>,  <27.557550, 28.563704, 33.901924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394377, 28.497513, 34.261082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145129, -0.959183, -0.242706,
		0.901403, -0.229318, 0.367267,
		-0.407933, -0.165475, 0.897891,
		27.271997, 28.447870, 34.530449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892328, 27.941429, 34.223167>,  <27.557550, 28.563704, 33.901924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892328, 27.941429, 34.223167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532541, 27.993254, 34.390106>,  <27.316669, 28.024349, 34.490269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532541, 27.993254, 34.390106>,  <27.892328, 27.941429, 34.223167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532541, 27.993254, 34.390106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145469, -0.989342, -0.006383,
		0.412068, -0.066452, 0.908726,
		-0.899465, 0.129561, 0.417343,
		27.262701, 28.032122, 34.515308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863945, 27.404263, 34.701996>,  <27.892328, 27.941429, 34.223167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863945, 27.404263, 34.701996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.480124, 27.516319, 34.690861>,  <27.249830, 27.583553, 34.684177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.480124, 27.516319, 34.690861>,  <27.863945, 27.404263, 34.701996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480124, 27.516319, 34.690861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266837, -0.936569, -0.227236,
		-0.089732, -0.210617, 0.973442,
		-0.959555, 0.280141, -0.027840,
		27.192257, 27.600361, 34.682510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531086, 26.996494, 35.228313>,  <27.863945, 27.404263, 34.701996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531086, 26.996494, 35.228313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.275850, 27.112185, 34.942883>,  <27.122709, 27.181599, 34.771626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.275850, 27.112185, 34.942883>,  <27.531086, 26.996494, 35.228313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275850, 27.112185, 34.942883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349529, -0.934580, -0.066250,
		-0.686055, 0.207142, 0.697439,
		-0.638090, 0.289226, -0.713575,
		27.084423, 27.198952, 34.728809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945137, 26.595131, 35.421864>,  <27.531086, 26.996494, 35.228313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945137, 26.595131, 35.421864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.818613, 26.742010, 35.071980>,  <26.742699, 26.830137, 34.862049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.818613, 26.742010, 35.071980>,  <26.945137, 26.595131, 35.421864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818613, 26.742010, 35.071980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570357, -0.810401, -0.133953,
		-0.758052, 0.456525, 0.465770,
		-0.316308, 0.367199, -0.874708,
		26.723721, 26.852169, 34.809566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.265497, 26.333794, 35.362614>,  <26.945137, 26.595131, 35.421864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.265497, 26.333794, 35.362614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.344606, 26.458876, 34.991001>,  <26.392073, 26.533926, 34.768032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.344606, 26.458876, 34.991001>,  <26.265497, 26.333794, 35.362614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344606, 26.458876, 34.991001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457882, -0.808531, -0.369622,
		-0.866735, 0.498488, -0.016724,
		0.197774, 0.312707, -0.929031,
		26.403938, 26.552689, 34.712292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.617989, 26.450985, 34.926643>,  <26.265497, 26.333794, 35.362614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.617989, 26.450985, 34.926643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.911787, 26.399498, 34.660126>,  <26.088066, 26.368607, 34.500217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.911787, 26.399498, 34.660126>,  <25.617989, 26.450985, 34.926643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.911787, 26.399498, 34.660126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492705, -0.776312, -0.393169,
		-0.466643, 0.617067, -0.633619,
		0.734497, -0.128717, -0.666292,
		26.132135, 26.360884, 34.460239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.304546, 26.519915, 34.245762>,  <25.617989, 26.450985, 34.926643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.304546, 26.519915, 34.245762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.636383, 26.296595, 34.249252>,  <25.835485, 26.162603, 34.251347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.636383, 26.296595, 34.249252>,  <25.304546, 26.519915, 34.245762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.636383, 26.296595, 34.249252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512189, -0.767113, -0.386263,
		0.222345, 0.315971, -0.922348,
		0.829593, -0.558300, 0.008727,
		25.885262, 26.129105, 34.251869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.156525, 26.266947, 33.635502>,  <25.304546, 26.519915, 34.245762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.156525, 26.266947, 33.635502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.420324, 26.034395, 33.826103>,  <25.578604, 25.894865, 33.940464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.420324, 26.034395, 33.826103>,  <25.156525, 26.266947, 33.635502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.420324, 26.034395, 33.826103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448596, -0.813044, -0.371108,
		0.603175, 0.030987, -0.797007,
		0.659501, -0.581377, 0.476507,
		25.618176, 25.859982, 33.969055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.302441, 36.158855, 45.735069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.902588, 36.161053, 45.745670>,  <36.662674, 36.162373, 45.752033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.902588, 36.161053, 45.745670>,  <37.302441, 36.158855, 45.735069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902588, 36.161053, 45.745670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026340, 0.423059, 0.905719,
		-0.006236, 0.906085, -0.423049,
		-0.999634, 0.005496, 0.026505,
		36.602699, 36.162701, 45.753620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128170, 36.815018, 45.966427>,  <37.302441, 36.158855, 45.735069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128170, 36.815018, 45.966427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.803253, 36.584755, 46.003944>,  <36.608303, 36.446598, 46.026455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.803253, 36.584755, 46.003944>,  <37.128170, 36.815018, 45.966427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803253, 36.584755, 46.003944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182003, 0.402957, 0.896940,
		-0.554128, 0.711506, -0.432090,
		-0.812291, -0.575661, 0.093793,
		36.559566, 36.412056, 46.032082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669460, 37.194195, 46.217518>,  <37.128170, 36.815018, 45.966427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669460, 37.194195, 46.217518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536366, 36.830956, 46.319221>,  <36.456509, 36.613014, 46.380245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536366, 36.830956, 46.319221>,  <36.669460, 37.194195, 46.217518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536366, 36.830956, 46.319221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096573, 0.301020, 0.948715,
		-0.938061, 0.291121, -0.187859,
		-0.332740, -0.908094, 0.254261,
		36.436543, 36.558529, 46.395500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128822, 37.275867, 46.669361>,  <36.669460, 37.194195, 46.217518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128822, 37.275867, 46.669361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.245884, 36.903927, 46.758564>,  <36.316120, 36.680763, 46.812084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.245884, 36.903927, 46.758564>,  <36.128822, 37.275867, 46.669361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245884, 36.903927, 46.758564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041381, 0.245312, 0.968561,
		-0.955324, -0.274222, 0.110269,
		0.292651, -0.929852, 0.223005,
		36.333679, 36.624969, 46.825466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739605, 37.059219, 47.205727>,  <36.128822, 37.275867, 46.669361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739605, 37.059219, 47.205727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.051678, 36.809536, 47.222157>,  <36.238922, 36.659725, 47.232014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.051678, 36.809536, 47.222157>,  <35.739605, 37.059219, 47.205727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051678, 36.809536, 47.222157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086672, 0.172884, 0.981121,
		-0.619523, -0.761890, 0.188982,
		0.780179, -0.624207, 0.041071,
		36.285732, 36.622272, 47.234478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588326, 36.539551, 47.769722>,  <35.739605, 37.059219, 47.205727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588326, 36.539551, 47.769722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.981430, 36.502148, 47.705917>,  <36.217293, 36.479706, 47.667633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.981430, 36.502148, 47.705917>,  <35.588326, 36.539551, 47.769722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981430, 36.502148, 47.705917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136025, -0.218737, 0.966256,
		-0.125238, -0.971294, -0.202247,
		0.982758, -0.093501, -0.159514,
		36.276257, 36.474098, 47.658062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775906, 36.023647, 48.229546>,  <35.588326, 36.539551, 47.769722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775906, 36.023647, 48.229546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.114117, 36.224155, 48.155991>,  <36.317043, 36.344460, 48.111858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.114117, 36.224155, 48.155991>,  <35.775906, 36.023647, 48.229546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114117, 36.224155, 48.155991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248057, -0.063803, 0.966642,
		0.472813, -0.862937, -0.178290,
		0.845527, 0.501267, -0.183891,
		36.367775, 36.374535, 48.100822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255039, 35.720718, 48.731136>,  <35.775906, 36.023647, 48.229546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255039, 35.720718, 48.731136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419537, 36.068497, 48.621639>,  <36.518234, 36.277164, 48.555939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419537, 36.068497, 48.621639>,  <36.255039, 35.720718, 48.731136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419537, 36.068497, 48.621639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044487, 0.280816, 0.958730,
		0.910438, -0.406452, 0.076805,
		0.411246, 0.869448, -0.273747,
		36.542912, 36.329330, 48.539516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851654, 35.807411, 49.120708>,  <36.255039, 35.720718, 48.731136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851654, 35.807411, 49.120708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.744526, 36.176094, 49.008469>,  <36.680248, 36.397305, 48.941124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.744526, 36.176094, 49.008469>,  <36.851654, 35.807411, 49.120708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744526, 36.176094, 49.008469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036595, 0.300758, 0.952998,
		0.962773, 0.244966, -0.114280,
		-0.267823, 0.921703, -0.280597,
		36.664181, 36.452606, 48.924290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275879, 36.227688, 49.479000>,  <36.851654, 35.807411, 49.120708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275879, 36.227688, 49.479000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.952305, 36.447807, 49.396255>,  <36.758160, 36.579880, 49.346607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.952305, 36.447807, 49.396255>,  <37.275879, 36.227688, 49.479000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952305, 36.447807, 49.396255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033169, 0.394035, 0.918497,
		0.586957, 0.736145, -0.337003,
		-0.808938, 0.550297, -0.206864,
		36.709625, 36.612896, 49.334198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360863, 36.871853, 49.785809>,  <37.275879, 36.227688, 49.479000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360863, 36.871853, 49.785809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961830, 36.866909, 49.758438>,  <36.722412, 36.863941, 49.742016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961830, 36.866909, 49.758438>,  <37.360863, 36.871853, 49.785809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961830, 36.866909, 49.758438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068279, 0.360496, 0.930258,
		0.013172, 0.932679, -0.360467,
		-0.997579, -0.012359, -0.068431,
		36.662556, 36.863201, 49.737907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028095, 37.583031, 50.017319>,  <37.360863, 36.871853, 49.785809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028095, 37.583031, 50.017319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.711708, 37.338287, 50.016811>,  <36.521877, 37.191441, 50.016506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.711708, 37.338287, 50.016811>,  <37.028095, 37.583031, 50.017319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711708, 37.338287, 50.016811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180848, 0.231800, 0.955805,
		-0.584524, 0.756238, -0.293999,
		-0.790965, -0.611860, -0.001272,
		36.474419, 37.154728, 50.016430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403690, 37.954121, 50.130665>,  <37.028095, 37.583031, 50.017319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403690, 37.954121, 50.130665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.362774, 37.584354, 50.277630>,  <36.338223, 37.362495, 50.365810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.362774, 37.584354, 50.277630>,  <36.403690, 37.954121, 50.130665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362774, 37.584354, 50.277630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244078, 0.381387, 0.891611,
		-0.964345, 0.001526, -0.264642,
		-0.102292, -0.924414, 0.367416,
		36.332085, 37.307030, 50.387856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489498, 38.517441, 49.554794>,  <36.403690, 37.954121, 50.130665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489498, 38.517441, 49.554794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.520855, 38.500000, 49.156406>,  <36.539669, 38.489536, 48.917374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.520855, 38.500000, 49.156406>,  <36.489498, 38.517441, 49.554794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520855, 38.500000, 49.156406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568813, 0.818508, -0.080598,
		0.818723, 0.572838, 0.039362,
		0.078388, -0.043598, -0.995969,
		36.544373, 38.486919, 48.857616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119225, 38.759285, 50.102425>,  <36.489498, 38.517441, 49.554794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119225, 38.759285, 50.102425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.140251, 39.140259, 50.222492>,  <36.152866, 39.368843, 50.294533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.140251, 39.140259, 50.222492>,  <36.119225, 38.759285, 50.102425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140251, 39.140259, 50.222492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227446, 0.304106, -0.925088,
		-0.972371, -0.019648, 0.232612,
		0.052562, 0.952436, 0.300173,
		36.156021, 39.425991, 50.312546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468811, 39.117054, 49.901146>,  <36.119225, 38.759285, 50.102425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468811, 39.117054, 49.901146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.756714, 39.393867, 49.923180>,  <35.929455, 39.559956, 49.936401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.756714, 39.393867, 49.923180>,  <35.468811, 39.117054, 49.901146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756714, 39.393867, 49.923180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203329, 0.286014, -0.936404,
		-0.663781, 0.662784, 0.346572,
		0.719758, 0.692036, 0.055088,
		35.972641, 39.601479, 49.939705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195385, 39.663212, 49.481117>,  <35.468811, 39.117054, 49.901146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195385, 39.663212, 49.481117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.572308, 39.789120, 49.526699>,  <35.798462, 39.864662, 49.554047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.572308, 39.789120, 49.526699>,  <35.195385, 39.663212, 49.481117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572308, 39.789120, 49.526699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001680, 0.335953, -0.941877,
		-0.334754, 0.887726, 0.316041,
		0.942304, 0.314766, 0.113953,
		35.855000, 39.883549, 49.560886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139099, 40.434052, 49.247318>,  <35.195385, 39.663212, 49.481117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139099, 40.434052, 49.247318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.510658, 40.287216, 49.227730>,  <35.733593, 40.199116, 49.215977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.510658, 40.287216, 49.227730>,  <35.139099, 40.434052, 49.247318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510658, 40.287216, 49.227730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120651, 0.424990, -0.897121,
		0.350135, 0.827424, 0.439061,
		0.928897, -0.367087, -0.048974,
		35.789326, 40.177090, 49.213039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685741, 40.983852, 49.077068>,  <35.139099, 40.434052, 49.247318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685741, 40.983852, 49.077068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839081, 40.633430, 48.960060>,  <35.931084, 40.423176, 48.889854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839081, 40.633430, 48.960060>,  <35.685741, 40.983852, 49.077068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839081, 40.633430, 48.960060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075272, 0.345298, -0.935469,
		0.920532, 0.336591, 0.198312,
		0.383347, -0.876057, -0.292522,
		35.954086, 40.370613, 48.872303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324112, 41.265049, 48.662655>,  <35.685741, 40.983852, 49.077068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324112, 41.265049, 48.662655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.269917, 40.889042, 48.537426>,  <36.237400, 40.663437, 48.462288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.269917, 40.889042, 48.537426>,  <36.324112, 41.265049, 48.662655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269917, 40.889042, 48.537426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202000, 0.283144, -0.937563,
		0.969968, -0.190271, 0.151520,
		-0.135489, -0.940014, -0.313076,
		36.229271, 40.607037, 48.443504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721958, 41.146976, 48.077152>,  <36.324112, 41.265049, 48.662655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721958, 41.146976, 48.077152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.505753, 40.812565, 48.039410>,  <36.376030, 40.611919, 48.016766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.505753, 40.812565, 48.039410>,  <36.721958, 41.146976, 48.077152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505753, 40.812565, 48.039410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036580, 0.088693, -0.995387,
		0.840542, -0.541469, -0.017358,
		-0.540510, -0.836029, -0.094357,
		36.343601, 40.561756, 48.011101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133221, 40.628017, 47.700474>,  <36.721958, 41.146976, 48.077152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133221, 40.628017, 47.700474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.750114, 40.515343, 47.677334>,  <36.520252, 40.447739, 47.663452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.750114, 40.515343, 47.677334>,  <37.133221, 40.628017, 47.700474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750114, 40.515343, 47.677334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060079, 0.000710, -0.998193,
		0.281215, -0.959507, 0.016243,
		-0.957762, -0.281683, -0.057846,
		36.462784, 40.430840, 47.659981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131618, 40.328163, 47.117401>,  <37.133221, 40.628017, 47.700474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131618, 40.328163, 47.117401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.738029, 40.367142, 47.177124>,  <36.501877, 40.390530, 47.212959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.738029, 40.367142, 47.177124>,  <37.131618, 40.328163, 47.117401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738029, 40.367142, 47.177124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159039, -0.101144, -0.982078,
		-0.080584, -0.990089, 0.115019,
		-0.983978, 0.097433, 0.149313,
		36.442837, 40.396378, 47.221916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808170, 39.683876, 46.954208>,  <37.131618, 40.328163, 47.117401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808170, 39.683876, 46.954208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.538857, 39.978462, 46.927956>,  <36.377270, 40.155212, 46.912205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.538857, 39.978462, 46.927956>,  <36.808170, 39.683876, 46.954208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538857, 39.978462, 46.927956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107080, -0.184951, -0.976897,
		-0.731587, -0.650703, 0.203385,
		-0.673286, 0.736464, -0.065630,
		36.336872, 40.199402, 46.908268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263165, 39.362377, 46.692139>,  <36.808170, 39.683876, 46.954208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263165, 39.362377, 46.692139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.211929, 39.751774, 46.616337>,  <36.181187, 39.985413, 46.570858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.211929, 39.751774, 46.616337>,  <36.263165, 39.362377, 46.692139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211929, 39.751774, 46.616337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139757, -0.206887, -0.968331,
		-0.981866, -0.097551, 0.162553,
		-0.128092, 0.973489, -0.189502,
		36.173500, 40.043819, 46.559486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612141, 39.415646, 46.293228>,  <36.263165, 39.362377, 46.692139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612141, 39.415646, 46.293228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.828766, 39.733498, 46.183483>,  <35.958740, 39.924210, 46.117638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.828766, 39.733498, 46.183483>,  <35.612141, 39.415646, 46.293228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828766, 39.733498, 46.183483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103970, -0.260542, -0.959848,
		-0.834209, 0.548339, -0.058481,
		0.541559, 0.794633, -0.274358,
		35.991234, 39.971886, 46.101177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186054, 39.720684, 45.645420>,  <35.612141, 39.415646, 46.293228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186054, 39.720684, 45.645420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.564220, 39.851017, 45.647045>,  <35.791122, 39.929218, 45.648018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.564220, 39.851017, 45.647045>,  <35.186054, 39.720684, 45.645420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564220, 39.851017, 45.647045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122972, -0.345223, -0.930429,
		-0.301762, 0.880145, -0.366449,
		0.945419, 0.325831, 0.004058,
		35.847847, 39.948765, 45.648262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211422, 40.026928, 45.079239>,  <35.186054, 39.720684, 45.645420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211422, 40.026928, 45.079239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.602856, 39.986744, 45.151108>,  <35.837715, 39.962635, 45.194229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.602856, 39.986744, 45.151108>,  <35.211422, 40.026928, 45.079239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602856, 39.986744, 45.151108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165836, -0.132332, -0.977234,
		0.121947, 0.986102, -0.112839,
		0.978584, -0.100458, 0.179669,
		35.896431, 39.956608, 45.205009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848747, 40.713242, 44.912678>,  <35.211422, 40.026928, 45.079239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848747, 40.713242, 44.912678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.473267, 40.616684, 44.814228>,  <34.247978, 40.558750, 44.755157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.473267, 40.616684, 44.814228>,  <34.848747, 40.713242, 44.912678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473267, 40.616684, 44.814228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284473, 0.139100, 0.948539,
		-0.194737, 0.960406, -0.199243,
		-0.938697, -0.241395, -0.246122,
		34.191658, 40.544266, 44.740391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477398, 41.288883, 45.134911>,  <34.848747, 40.713242, 44.912678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477398, 41.288883, 45.134911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.214626, 40.989010, 45.102875>,  <34.056961, 40.809086, 45.083652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.214626, 40.989010, 45.102875>,  <34.477398, 41.288883, 45.134911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214626, 40.989010, 45.102875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306816, 0.168792, 0.936682,
		-0.688698, 0.639909, -0.340900,
		-0.656932, -0.749684, -0.080087,
		34.017548, 40.764103, 45.078850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882618, 41.570240, 45.514935>,  <34.477398, 41.288883, 45.134911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882618, 41.570240, 45.514935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.855736, 41.172161, 45.486469>,  <33.839607, 40.933315, 45.469391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.855736, 41.172161, 45.486469>,  <33.882618, 41.570240, 45.514935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855736, 41.172161, 45.486469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326044, -0.045501, 0.944259,
		-0.942963, 0.086659, -0.321421,
		-0.067203, -0.995199, -0.071160,
		33.835575, 40.873600, 45.465122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229416, 41.385250, 45.872700>,  <33.882618, 41.570240, 45.514935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229416, 41.385250, 45.872700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.446732, 41.049988, 45.853394>,  <33.577122, 40.848831, 45.841808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.446732, 41.049988, 45.853394>,  <33.229416, 41.385250, 45.872700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446732, 41.049988, 45.853394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159428, -0.159442, 0.974249,
		-0.824269, -0.521604, -0.220249,
		0.543289, -0.838157, -0.048265,
		33.609718, 40.798542, 45.838913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816719, 40.874996, 46.351250>,  <33.229416, 41.385250, 45.872700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816719, 40.874996, 46.351250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197056, 40.758400, 46.309429>,  <33.425259, 40.688442, 46.284336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197056, 40.758400, 46.309429>,  <32.816719, 40.874996, 46.351250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197056, 40.758400, 46.309429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085489, -0.077417, 0.993327,
		-0.297641, -0.953435, -0.048692,
		0.950843, -0.291492, -0.104551,
		33.482307, 40.670952, 46.278065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811848, 40.420837, 46.809216>,  <32.816719, 40.874996, 46.351250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811848, 40.420837, 46.809216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.198685, 40.485310, 46.730465>,  <33.430786, 40.523994, 46.683216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.198685, 40.485310, 46.730465>,  <32.811848, 40.420837, 46.809216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198685, 40.485310, 46.730465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212789, -0.088112, 0.973117,
		0.139505, -0.982983, -0.119510,
		0.967088, 0.161185, -0.196876,
		33.488811, 40.533665, 46.671402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322525, 39.764305, 46.941002>,  <32.811848, 40.420837, 46.809216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322525, 39.764305, 46.941002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.493294, 40.121460, 46.998257>,  <33.595757, 40.335754, 47.032608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.493294, 40.121460, 46.998257>,  <33.322525, 39.764305, 46.941002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493294, 40.121460, 46.998257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290416, -0.285284, 0.913385,
		0.856384, -0.348378, -0.381103,
		0.426926, 0.892886, 0.143138,
		33.621372, 40.389324, 47.041199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407196, 38.966492, 47.262089>,  <33.322525, 39.764305, 46.941002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407196, 38.966492, 47.262089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.064400, 38.762207, 47.289639>,  <32.858723, 38.639637, 47.306168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.064400, 38.762207, 47.289639>,  <33.407196, 38.966492, 47.262089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064400, 38.762207, 47.289639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071950, -0.250913, -0.965332,
		0.510283, -0.822326, 0.251776,
		-0.856992, -0.510708, 0.068870,
		32.807301, 38.608994, 47.310299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542469, 38.183029, 47.049026>,  <33.407196, 38.966492, 47.262089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542469, 38.183029, 47.049026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.156311, 38.267422, 46.987717>,  <32.924614, 38.318058, 46.950932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.156311, 38.267422, 46.987717>,  <33.542469, 38.183029, 47.049026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156311, 38.267422, 46.987717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040599, -0.459006, -0.887505,
		-0.257604, -0.863018, 0.434558,
		-0.965397, 0.210982, -0.153279,
		32.866692, 38.330715, 46.941734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368385, 37.731056, 46.610630>,  <33.542469, 38.183029, 47.049026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368385, 37.731056, 46.610630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036572, 37.953896, 46.595104>,  <32.837482, 38.087601, 46.585789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036572, 37.953896, 46.595104>,  <33.368385, 37.731056, 46.610630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036572, 37.953896, 46.595104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229278, -0.403132, -0.885955,
		-0.509214, -0.726033, 0.462144,
		-0.829538, 0.557100, -0.038817,
		32.787708, 38.121025, 46.583458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786472, 37.386108, 46.334698>,  <33.368385, 37.731056, 46.610630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786472, 37.386108, 46.334698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.643814, 37.750080, 46.250000>,  <32.558220, 37.968464, 46.199181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.643814, 37.750080, 46.250000>,  <32.786472, 37.386108, 46.334698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643814, 37.750080, 46.250000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216668, -0.301027, -0.928675,
		-0.908767, -0.285331, 0.304513,
		-0.356647, 0.909928, -0.211742,
		32.536819, 38.023060, 46.186478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083927, 37.304043, 46.000423>,  <32.786472, 37.386108, 46.334698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083927, 37.304043, 46.000423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.290688, 37.628082, 45.889755>,  <32.414745, 37.822506, 45.823353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.290688, 37.628082, 45.889755>,  <32.083927, 37.304043, 46.000423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290688, 37.628082, 45.889755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021301, -0.310927, -0.950195,
		-0.855779, 0.497053, -0.143463,
		0.516904, 0.810100, -0.276673,
		32.445759, 37.871113, 45.806755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088413, 37.271549, 45.314075>,  <32.083927, 37.304043, 46.000423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088413, 37.271549, 45.314075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.368973, 37.553326, 45.357510>,  <32.537308, 37.722393, 45.383572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.368973, 37.553326, 45.357510>,  <32.088413, 37.271549, 45.314075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368973, 37.553326, 45.357510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190487, -0.038460, -0.980936,
		-0.686839, 0.708716, -0.161164,
		0.701403, 0.704445, 0.108585,
		32.579395, 37.764660, 45.390083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023205, 37.690662, 44.778854>,  <32.088413, 37.271549, 45.314075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023205, 37.690662, 44.778854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.397820, 37.760098, 44.900684>,  <32.622589, 37.801758, 44.973782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.397820, 37.760098, 44.900684>,  <32.023205, 37.690662, 44.778854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397820, 37.760098, 44.900684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293863, 0.085018, -0.952059,
		-0.191160, 0.981142, 0.028612,
		0.936537, 0.173588, 0.304573,
		32.678780, 37.812176, 44.992058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.013596, 34.798100, 50.296062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.349358, 34.979820, 50.176723>,  <34.550816, 35.088852, 50.105118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.349358, 34.979820, 50.176723>,  <34.013596, 34.798100, 50.296062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349358, 34.979820, 50.176723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003320, -0.553207, -0.833037,
		-0.543499, 0.698263, -0.465872,
		0.839403, 0.454301, -0.298350,
		34.601177, 35.116112, 50.087219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865864, 34.985516, 49.619888>,  <34.013596, 34.798100, 50.296062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865864, 34.985516, 49.619888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.264141, 35.021523, 49.628834>,  <34.503105, 35.043125, 49.634201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.264141, 35.021523, 49.628834>,  <33.865864, 34.985516, 49.619888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264141, 35.021523, 49.628834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052086, -0.343157, -0.937833,
		-0.076744, 0.934955, -0.346366,
		0.995689, 0.090014, 0.022363,
		34.562847, 35.048527, 49.635544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055847, 35.392193, 48.985142>,  <33.865864, 34.985516, 49.619888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055847, 35.392193, 48.985142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.398933, 35.217270, 49.093277>,  <34.604786, 35.112316, 49.158157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.398933, 35.217270, 49.093277>,  <34.055847, 35.392193, 48.985142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398933, 35.217270, 49.093277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215525, -0.171548, -0.961312,
		0.466764, 0.882799, -0.052890,
		0.857718, -0.437306, 0.270338,
		34.656250, 35.086079, 49.174377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633743, 35.642925, 48.508698>,  <34.055847, 35.392193, 48.985142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633743, 35.642925, 48.508698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.749245, 35.291504, 48.660892>,  <34.818546, 35.080650, 48.752209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.749245, 35.291504, 48.660892>,  <34.633743, 35.642925, 48.508698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749245, 35.291504, 48.660892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237878, -0.319117, -0.917376,
		0.927382, 0.355403, 0.116842,
		0.288752, -0.878552, 0.380486,
		34.835869, 35.027939, 48.775040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801765, 35.263027, 47.891052>,  <34.633743, 35.642925, 48.508698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801765, 35.263027, 47.891052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.868786, 34.960629, 48.144157>,  <34.908997, 34.779190, 48.296021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.868786, 34.960629, 48.144157>,  <34.801765, 35.263027, 47.891052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868786, 34.960629, 48.144157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287470, -0.576482, -0.764872,
		0.943021, 0.310056, 0.120737,
		0.167550, -0.755998, 0.632767,
		34.919052, 34.733829, 48.333988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348499, 34.877769, 47.635811>,  <34.801765, 35.263027, 47.891052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348499, 34.877769, 47.635811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.167202, 34.629189, 47.891426>,  <35.058426, 34.480038, 48.044796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.167202, 34.629189, 47.891426>,  <35.348499, 34.877769, 47.635811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167202, 34.629189, 47.891426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224389, -0.773358, -0.592931,
		0.862684, -0.125347, 0.489964,
		-0.453239, -0.621455, 0.639037,
		35.031231, 34.442753, 48.083138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744133, 34.284782, 47.730846>,  <35.348499, 34.877769, 47.635811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744133, 34.284782, 47.730846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.388981, 34.147812, 47.853752>,  <35.175888, 34.065628, 47.927494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.388981, 34.147812, 47.853752>,  <35.744133, 34.284782, 47.730846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388981, 34.147812, 47.853752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024694, -0.631428, -0.775041,
		0.459412, -0.695731, 0.552176,
		-0.887880, -0.342427, 0.307266,
		35.122616, 34.045082, 47.945930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723484, 33.464542, 47.765564>,  <35.744133, 34.284782, 47.730846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723484, 33.464542, 47.765564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.352257, 33.597504, 47.698391>,  <35.129520, 33.677280, 47.658089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.352257, 33.597504, 47.698391>,  <35.723484, 33.464542, 47.765564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352257, 33.597504, 47.698391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116811, -0.687990, -0.716257,
		-0.353621, -0.645118, 0.677329,
		-0.928067, 0.332403, -0.167931,
		35.073837, 33.697224, 47.648010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306999, 32.832478, 47.687176>,  <35.723484, 33.464542, 47.765564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306999, 32.832478, 47.687176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.115921, 33.142052, 47.520889>,  <35.001274, 33.327797, 47.421116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.115921, 33.142052, 47.520889>,  <35.306999, 32.832478, 47.687176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115921, 33.142052, 47.520889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291541, -0.586041, -0.756016,
		-0.828740, -0.239947, 0.505585,
		-0.477698, 0.773938, -0.415721,
		34.972610, 33.374233, 47.396172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653885, 32.516064, 47.428169>,  <35.306999, 32.832478, 47.687176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653885, 32.516064, 47.428169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.697258, 32.873989, 47.254940>,  <34.723282, 33.088745, 47.151005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.697258, 32.873989, 47.254940>,  <34.653885, 32.516064, 47.428169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697258, 32.873989, 47.254940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332269, -0.377963, -0.864142,
		-0.936931, 0.237595, 0.256337,
		0.108430, 0.894814, -0.433071,
		34.729786, 33.142433, 47.125019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064789, 32.601986, 47.025345>,  <34.653885, 32.516064, 47.428169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064789, 32.601986, 47.025345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.350964, 32.827366, 46.860096>,  <34.522667, 32.962593, 46.760948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.350964, 32.827366, 46.860096>,  <34.064789, 32.601986, 47.025345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350964, 32.827366, 46.860096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277037, -0.314045, -0.908089,
		-0.641406, 0.764130, -0.068582,
		0.715436, 0.563454, -0.413123,
		34.565594, 32.996403, 46.736160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734840, 33.025234, 46.541107>,  <34.064789, 32.601986, 47.025345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734840, 33.025234, 46.541107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.119045, 33.024818, 46.429806>,  <34.349567, 33.024570, 46.363026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.119045, 33.024818, 46.429806>,  <33.734840, 33.025234, 46.541107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119045, 33.024818, 46.429806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268609, -0.264452, -0.926237,
		-0.072625, 0.964398, -0.254286,
		0.960508, -0.001036, -0.278252,
		34.407196, 33.024509, 46.346329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398457, 33.649200, 46.510185>,  <33.734840, 33.025234, 46.541107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398457, 33.649200, 46.510185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.099731, 33.849724, 46.335392>,  <32.920494, 33.970036, 46.230515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.099731, 33.849724, 46.335392>,  <33.398457, 33.649200, 46.510185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099731, 33.849724, 46.335392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278724, 0.360654, 0.890080,
		0.603804, 0.786525, -0.129616,
		-0.746816, 0.501306, -0.436987,
		32.875687, 34.000114, 46.204296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503136, 34.397633, 46.538868>,  <33.398457, 33.649200, 46.510185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503136, 34.397633, 46.538868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.108444, 34.353310, 46.491405>,  <32.871628, 34.326717, 46.462929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.108444, 34.353310, 46.491405>,  <33.503136, 34.397633, 46.538868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108444, 34.353310, 46.491405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161102, 0.577690, 0.800200,
		-0.020119, 0.808701, -0.587877,
		-0.986733, -0.110807, -0.118661,
		32.812424, 34.320068, 46.455807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156101, 35.056763, 46.664646>,  <33.503136, 34.397633, 46.538868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156101, 35.056763, 46.664646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.864067, 34.786823, 46.707653>,  <32.688847, 34.624859, 46.733456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.864067, 34.786823, 46.707653>,  <33.156101, 35.056763, 46.664646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864067, 34.786823, 46.707653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322945, 0.479386, 0.816024,
		-0.602229, 0.561047, -0.567931,
		-0.730087, -0.674844, 0.107513,
		32.645042, 34.584370, 46.739906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552170, 35.445599, 46.774628>,  <33.156101, 35.056763, 46.664646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552170, 35.445599, 46.774628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.475903, 35.088196, 46.937256>,  <32.430141, 34.873756, 47.034832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.475903, 35.088196, 46.937256>,  <32.552170, 35.445599, 46.774628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475903, 35.088196, 46.937256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296797, 0.447256, 0.843726,
		-0.935713, 0.040199, -0.350464,
		-0.190664, -0.893502, 0.406572,
		32.418705, 34.820145, 47.059227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952528, 35.601234, 47.112011>,  <32.552170, 35.445599, 46.774628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952528, 35.601234, 47.112011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.096809, 35.265961, 47.275639>,  <32.183376, 35.064796, 47.373814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.096809, 35.265961, 47.275639>,  <31.952528, 35.601234, 47.112011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096809, 35.265961, 47.275639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216494, 0.351373, 0.910861,
		-0.907207, -0.417112, -0.054720,
		0.360703, -0.838185, 0.409070,
		32.205021, 35.014503, 47.398361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437777, 35.538319, 47.575996>,  <31.952528, 35.601234, 47.112011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437777, 35.538319, 47.575996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.724871, 35.300713, 47.721325>,  <31.897127, 35.158150, 47.808521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.724871, 35.300713, 47.721325>,  <31.437777, 35.538319, 47.575996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724871, 35.300713, 47.721325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135318, 0.392841, 0.909596,
		-0.683040, -0.702014, 0.201575,
		0.717736, -0.594014, 0.363321,
		31.940191, 35.122509, 47.830322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217758, 35.268387, 48.190273>,  <31.437777, 35.538319, 47.575996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217758, 35.268387, 48.190273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.616709, 35.244175, 48.206135>,  <31.856079, 35.229649, 48.215652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.616709, 35.244175, 48.206135>,  <31.217758, 35.268387, 48.190273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616709, 35.244175, 48.206135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026339, 0.206711, 0.978047,
		-0.067395, -0.976528, 0.204575,
		0.997378, -0.060527, 0.039652,
		31.915922, 35.226017, 48.218029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371851, 34.873325, 48.847031>,  <31.217758, 35.268387, 48.190273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371851, 34.873325, 48.847031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.680353, 35.109047, 48.750793>,  <31.865454, 35.250481, 48.693050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.680353, 35.109047, 48.750793>,  <31.371851, 34.873325, 48.847031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680353, 35.109047, 48.750793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016182, 0.396001, 0.918107,
		0.636321, -0.704201, 0.314954,
		0.771255, 0.589308, -0.240589,
		31.911730, 35.285839, 48.678616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685680, 34.918053, 49.442299>,  <31.371851, 34.873325, 48.847031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685680, 34.918053, 49.442299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.857655, 35.212353, 49.232983>,  <31.960838, 35.388931, 49.107391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.857655, 35.212353, 49.232983>,  <31.685680, 34.918053, 49.442299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857655, 35.212353, 49.232983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120118, 0.621054, 0.774509,
		0.894834, -0.270131, 0.355389,
		0.429934, 0.735746, -0.523293,
		31.986635, 35.433075, 49.075996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090595, 35.167999, 49.984085>,  <31.685680, 34.918053, 49.442299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090595, 35.167999, 49.984085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.047024, 35.443718, 49.697586>,  <32.020882, 35.609150, 49.525688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.047024, 35.443718, 49.697586>,  <32.090595, 35.167999, 49.984085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047024, 35.443718, 49.697586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181362, 0.694656, 0.696104,
		0.977365, 0.205727, 0.049342,
		-0.108932, 0.689296, -0.716243,
		32.014343, 35.650505, 49.482712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544109, 35.740593, 50.290459>,  <32.090595, 35.167999, 49.984085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544109, 35.740593, 50.290459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.328148, 35.919674, 50.005341>,  <32.198570, 36.027122, 49.834270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.328148, 35.919674, 50.005341>,  <32.544109, 35.740593, 50.290459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328148, 35.919674, 50.005341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046020, 0.829853, 0.556081,
		0.840470, 0.333031, -0.427434,
		-0.539900, 0.447699, -0.712793,
		32.166180, 36.053982, 49.791504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869251, 36.485874, 50.150742>,  <32.544109, 35.740593, 50.290459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869251, 36.485874, 50.150742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.493973, 36.509651, 50.014362>,  <32.268806, 36.523918, 49.932533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.493973, 36.509651, 50.014362>,  <32.869251, 36.485874, 50.150742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493973, 36.509651, 50.014362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127698, 0.856178, 0.500652,
		0.321676, 0.513250, -0.795675,
		-0.938199, 0.059442, -0.340953,
		32.212513, 36.527485, 49.912075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811180, 37.165867, 50.008129>,  <32.869251, 36.485874, 50.150742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811180, 37.165867, 50.008129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.434845, 37.034481, 50.041420>,  <32.209042, 36.955650, 50.061394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.434845, 37.034481, 50.041420>,  <32.811180, 37.165867, 50.008129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434845, 37.034481, 50.041420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227752, 0.794868, 0.562418,
		-0.250890, 0.510191, -0.822654,
		-0.940842, -0.328466, 0.083227,
		32.152592, 36.935940, 50.066387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423832, 37.673656, 49.753223>,  <32.811180, 37.165867, 50.008129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423832, 37.673656, 49.753223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.211414, 37.462303, 50.018192>,  <32.083961, 37.335491, 50.177174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.211414, 37.462303, 50.018192>,  <32.423832, 37.673656, 49.753223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211414, 37.462303, 50.018192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328940, 0.849006, 0.413506,
		-0.780889, 0.001693, -0.624667,
		-0.531046, -0.528381, 0.662423,
		32.052101, 37.303787, 50.216919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220470, 37.867142, 50.366112>,  <32.423832, 37.673656, 49.753223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220470, 37.867142, 50.366112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.135078, 38.244766, 50.265575>,  <32.083843, 38.471340, 50.205254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.135078, 38.244766, 50.265575>,  <32.220470, 37.867142, 50.366112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135078, 38.244766, 50.265575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064524, -0.270335, -0.960602,
		-0.974814, -0.188852, 0.118626,
		-0.213480, 0.944062, -0.251341,
		32.071033, 38.527985, 50.190174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753807, 37.896973, 49.818645>,  <32.220470, 37.867142, 50.366112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753807, 37.896973, 49.818645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.906481, 38.264107, 49.775017>,  <31.998085, 38.484386, 49.748840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.906481, 38.264107, 49.775017>,  <31.753807, 37.896973, 49.818645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906481, 38.264107, 49.775017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130676, -0.170402, -0.976671,
		-0.915009, 0.358526, -0.184979,
		0.381683, 0.917836, -0.109069,
		32.020985, 38.539459, 49.742294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346233, 38.373001, 49.303162>,  <31.753807, 37.896973, 49.818645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346233, 38.373001, 49.303162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.730661, 38.482903, 49.314842>,  <31.961319, 38.548843, 49.321850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.730661, 38.482903, 49.314842>,  <31.346233, 38.373001, 49.303162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730661, 38.482903, 49.314842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054260, -0.084057, -0.994983,
		-0.270920, 0.957834, -0.095693,
		0.961071, 0.274753, 0.029199,
		32.018982, 38.565327, 49.323601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360836, 38.856327, 48.713703>,  <31.346233, 38.373001, 49.303162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360836, 38.856327, 48.713703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.732487, 38.738575, 48.803204>,  <31.955477, 38.667923, 48.856903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.732487, 38.738575, 48.803204>,  <31.360836, 38.856327, 48.713703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732487, 38.738575, 48.803204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195772, -0.121704, -0.973068,
		0.313681, 0.947908, -0.055448,
		0.929127, -0.294378, 0.223750,
		32.011227, 38.650261, 48.870327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712173, 39.195946, 48.203110>,  <31.360836, 38.856327, 48.713703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712173, 39.195946, 48.203110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.990583, 38.938625, 48.330681>,  <32.157631, 38.784233, 48.407223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.990583, 38.938625, 48.330681>,  <31.712173, 39.195946, 48.203110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990583, 38.938625, 48.330681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316581, -0.123728, -0.940462,
		0.644457, 0.755553, 0.117537,
		0.696026, -0.643297, 0.318931,
		32.199390, 38.745636, 48.426361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322498, 39.557205, 47.995358>,  <31.712173, 39.195946, 48.203110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322498, 39.557205, 47.995358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.395634, 39.166107, 48.036526>,  <32.439514, 38.931450, 48.061226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.395634, 39.166107, 48.036526>,  <32.322498, 39.557205, 47.995358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395634, 39.166107, 48.036526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345552, -0.034101, -0.937780,
		0.920416, 0.207025, 0.331626,
		0.182835, -0.977741, 0.102925,
		32.450485, 38.872784, 48.067402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879044, 39.493298, 47.544365>,  <32.322498, 39.557205, 47.995358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879044, 39.493298, 47.544365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.742496, 39.122562, 47.606903>,  <32.660568, 38.900124, 47.644428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.742496, 39.122562, 47.606903>,  <32.879044, 39.493298, 47.544365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742496, 39.122562, 47.606903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358765, -0.282229, -0.889738,
		0.868767, -0.247636, 0.428860,
		-0.341368, -0.926835, 0.156348,
		32.640087, 38.844513, 47.653809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423759, 39.887993, 47.777737>,  <32.879044, 39.493298, 47.544365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423759, 39.887993, 47.777737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.619793, 40.212307, 47.649712>,  <33.737415, 40.406895, 47.572899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.619793, 40.212307, 47.649712>,  <33.423759, 39.887993, 47.777737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619793, 40.212307, 47.649712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138182, 0.290270, 0.946916,
		0.860651, -0.508298, 0.030221,
		0.490088, 0.810788, -0.320059,
		33.766819, 40.455544, 47.553696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026402, 39.978321, 48.204918>,  <33.423759, 39.887993, 47.777737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026402, 39.978321, 48.204918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.980602, 40.343964, 48.049332>,  <33.953125, 40.563351, 47.955978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.980602, 40.343964, 48.049332>,  <34.026402, 39.978321, 48.204918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980602, 40.343964, 48.049332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113182, 0.400995, 0.909062,
		0.986955, 0.060059, -0.149372,
		-0.114495, 0.914109, -0.388966,
		33.946255, 40.618195, 47.932640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589748, 40.346882, 48.372524>,  <34.026402, 39.978321, 48.204918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589748, 40.346882, 48.372524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.316547, 40.634991, 48.323990>,  <34.152626, 40.807858, 48.294868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.316547, 40.634991, 48.323990>,  <34.589748, 40.346882, 48.372524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316547, 40.634991, 48.323990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052629, 0.214217, 0.975367,
		0.728522, 0.659788, -0.184217,
		-0.682998, 0.720271, -0.121338,
		34.111649, 40.851070, 48.287590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949070, 40.854683, 48.552109>,  <34.589748, 40.346882, 48.372524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949070, 40.854683, 48.552109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.567776, 40.971951, 48.581486>,  <34.339001, 41.042313, 48.599110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.567776, 40.971951, 48.581486>,  <34.949070, 40.854683, 48.552109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567776, 40.971951, 48.581486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123269, 0.155278, 0.980150,
		0.275944, 0.943367, -0.184155,
		-0.953236, 0.293167, 0.073439,
		34.281803, 41.059902, 48.603519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904522, 41.482498, 49.024483>,  <34.949070, 40.854683, 48.552109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904522, 41.482498, 49.024483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.527695, 41.348988, 49.037773>,  <34.301598, 41.268883, 49.045750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.527695, 41.348988, 49.037773>,  <34.904522, 41.482498, 49.024483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527695, 41.348988, 49.037773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002508, 0.106073, 0.994355,
		-0.335414, 0.936666, -0.100765,
		-0.942067, -0.333773, 0.033229,
		34.245075, 41.248856, 49.047741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523129, 41.941177, 49.465351>,  <34.904522, 41.482498, 49.024483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523129, 41.941177, 49.465351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.338669, 41.586262, 49.462284>,  <34.227993, 41.373310, 49.460445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.338669, 41.586262, 49.462284>,  <34.523129, 41.941177, 49.465351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338669, 41.586262, 49.462284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036137, 0.010144, 0.999296,
		-0.886589, 0.461098, -0.036741,
		-0.461145, -0.887292, -0.007669,
		34.200325, 41.320076, 49.459984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183979, 41.947510, 50.106121>,  <34.523129, 41.941177, 49.465351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183979, 41.947510, 50.106121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.136715, 41.558159, 50.027561>,  <34.108356, 41.324547, 49.980423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.136715, 41.558159, 50.027561>,  <34.183979, 41.947510, 50.106121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136715, 41.558159, 50.027561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097544, -0.185453, 0.977800,
		-0.988192, 0.134697, -0.073034,
		-0.118162, -0.973378, -0.196402,
		34.101265, 41.266144, 49.968639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576626, 41.705208, 50.472176>,  <34.183979, 41.947510, 50.106121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576626, 41.705208, 50.472176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.798462, 41.375656, 50.425434>,  <33.931564, 41.177925, 50.397388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.798462, 41.375656, 50.425434>,  <33.576626, 41.705208, 50.472176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798462, 41.375656, 50.425434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143596, -0.233072, 0.961799,
		-0.819641, -0.516624, -0.247565,
		0.554589, -0.823879, -0.116851,
		33.964840, 41.128494, 50.390381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164822, 41.288391, 50.887657>,  <33.576626, 41.705208, 50.472176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164822, 41.288391, 50.887657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.527111, 41.135983, 50.813374>,  <33.744484, 41.044537, 50.768803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.527111, 41.135983, 50.813374>,  <33.164822, 41.288391, 50.887657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527111, 41.135983, 50.813374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134553, -0.157024, 0.978386,
		-0.401951, -0.911133, -0.090952,
		0.905721, -0.381025, -0.185712,
		33.798828, 41.021675, 50.757660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.266441, 36.990219, 35.217030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619667, 36.889133, 35.375187>,  <36.831604, 36.828480, 35.470081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619667, 36.889133, 35.375187>,  <36.266441, 36.990219, 35.217030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619667, 36.889133, 35.375187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368638, 0.147756, 0.917755,
		-0.290352, -0.956192, 0.037317,
		0.883063, -0.252716, 0.395390,
		36.884586, 36.813320, 35.493805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216492, 36.530056, 35.762997>,  <36.266441, 36.990219, 35.217030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216492, 36.530056, 35.762997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536690, 36.760513, 35.829052>,  <36.728809, 36.898788, 35.868687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536690, 36.760513, 35.829052>,  <36.216492, 36.530056, 35.762997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536690, 36.760513, 35.829052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334509, 0.200858, 0.920739,
		0.497310, -0.792284, 0.353511,
		0.800492, 0.576145, 0.165137,
		36.776836, 36.933357, 35.878593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325539, 36.347095, 36.449661>,  <36.216492, 36.530056, 35.762997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325539, 36.347095, 36.449661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510487, 36.693787, 36.374832>,  <36.621456, 36.901802, 36.329933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510487, 36.693787, 36.374832>,  <36.325539, 36.347095, 36.449661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510487, 36.693787, 36.374832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320860, 0.360234, 0.875945,
		0.826597, -0.344985, 0.444660,
		0.462370, 0.866728, -0.187077,
		36.649197, 36.953804, 36.318710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649731, 36.508232, 37.133465>,  <36.325539, 36.347095, 36.449661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649731, 36.508232, 37.133465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614441, 36.847267, 36.924156>,  <36.593266, 37.050690, 36.798573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614441, 36.847267, 36.924156>,  <36.649731, 36.508232, 37.133465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614441, 36.847267, 36.924156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391963, 0.453394, 0.800498,
		0.915740, 0.275729, 0.292222,
		-0.088229, 0.847589, -0.523267,
		36.587971, 37.101543, 36.767178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949017, 36.952374, 37.543804>,  <36.649731, 36.508232, 37.133465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949017, 36.952374, 37.543804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690376, 37.154186, 37.314945>,  <36.535194, 37.275276, 37.177628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690376, 37.154186, 37.314945>,  <36.949017, 36.952374, 37.543804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690376, 37.154186, 37.314945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370304, 0.448135, 0.813665,
		0.666923, 0.737983, -0.102931,
		-0.646598, 0.504536, -0.572149,
		36.496395, 37.305546, 37.143299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905197, 37.584370, 37.887959>,  <36.949017, 36.952374, 37.543804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905197, 37.584370, 37.887959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599865, 37.619469, 37.631950>,  <36.416668, 37.640530, 37.478344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599865, 37.619469, 37.631950>,  <36.905197, 37.584370, 37.887959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599865, 37.619469, 37.631950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461837, 0.618618, 0.635624,
		0.451704, 0.780777, -0.431685,
		-0.763329, 0.087746, -0.640023,
		36.370865, 37.645794, 37.439945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756149, 38.336166, 37.788864>,  <36.905197, 37.584370, 37.887959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756149, 38.336166, 37.788864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437218, 38.123848, 37.673958>,  <36.245857, 37.996456, 37.605015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437218, 38.123848, 37.673958>,  <36.756149, 38.336166, 37.788864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437218, 38.123848, 37.673958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570363, 0.507038, 0.646219,
		-0.197357, 0.679094, -0.707023,
		-0.797330, -0.530796, -0.287263,
		36.198017, 37.964611, 37.587780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247597, 38.767517, 37.734653>,  <36.756149, 38.336166, 37.788864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247597, 38.767517, 37.734653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038208, 38.431774, 37.793251>,  <35.912575, 38.230328, 37.828407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038208, 38.431774, 37.793251>,  <36.247597, 38.767517, 37.734653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038208, 38.431774, 37.793251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610504, 0.489422, 0.622696,
		-0.594361, 0.236528, -0.768628,
		-0.523468, -0.839358, 0.146492,
		35.881168, 38.179966, 37.837200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450119, 38.942905, 37.634304>,  <36.247597, 38.767517, 37.734653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450119, 38.942905, 37.634304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501049, 38.615173, 37.857903>,  <35.531609, 38.418533, 37.992062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501049, 38.615173, 37.857903>,  <35.450119, 38.942905, 37.634304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501049, 38.615173, 37.857903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606593, 0.381579, 0.697454,
		-0.784750, -0.427887, -0.448419,
		0.127324, -0.819335, 0.558998,
		35.539246, 38.369373, 38.025600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786934, 38.779224, 37.818752>,  <35.450119, 38.942905, 37.634304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786934, 38.779224, 37.818752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015923, 38.603401, 38.095612>,  <35.153316, 38.497910, 38.261726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015923, 38.603401, 38.095612>,  <34.786934, 38.779224, 37.818752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015923, 38.603401, 38.095612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589975, 0.365395, 0.720011,
		-0.569392, -0.820535, -0.050149,
		0.572470, -0.439556, 0.692148,
		35.187664, 38.471535, 38.303257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418774, 38.692284, 38.391407>,  <34.786934, 38.779224, 37.818752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418774, 38.692284, 38.391407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755718, 38.599174, 38.585831>,  <34.957886, 38.543308, 38.702484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755718, 38.599174, 38.585831>,  <34.418774, 38.692284, 38.391407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755718, 38.599174, 38.585831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319825, 0.509999, 0.798507,
		-0.433757, -0.828082, 0.355156,
		0.842358, -0.232770, 0.486057,
		35.008427, 38.529343, 38.731647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244839, 38.249199, 39.046310>,  <34.418774, 38.692284, 38.391407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244839, 38.249199, 39.046310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583824, 38.457615, 39.086964>,  <34.787216, 38.582664, 39.111355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583824, 38.457615, 39.086964>,  <34.244839, 38.249199, 39.046310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583824, 38.457615, 39.086964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353824, 0.411665, 0.839845,
		0.395735, -0.747707, 0.533224,
		0.847468, 0.521024, 0.101646,
		34.838062, 38.613926, 39.117455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066921, 37.621758, 38.848854>,  <34.244839, 38.249199, 39.046310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066921, 37.621758, 38.848854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801487, 37.378391, 39.022972>,  <33.642227, 37.232372, 39.127441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801487, 37.378391, 39.022972>,  <34.066921, 37.621758, 38.848854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801487, 37.378391, 39.022972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285467, -0.331902, -0.899082,
		0.691492, -0.720882, 0.046564,
		-0.663587, -0.608416, 0.435296,
		33.602409, 37.195866, 39.153561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172974, 36.931557, 38.640865>,  <34.066921, 37.621758, 38.848854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172974, 36.931557, 38.640865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785019, 36.967342, 38.731480>,  <33.552246, 36.988815, 38.785847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785019, 36.967342, 38.731480>,  <34.172974, 36.931557, 38.640865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785019, 36.967342, 38.731480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242945, -0.421441, -0.873708,
		0.017304, -0.902432, 0.430485,
		-0.969886, 0.089465, 0.226534,
		33.494053, 36.994183, 38.799438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877869, 36.356297, 38.248642>,  <34.172974, 36.931557, 38.640865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877869, 36.356297, 38.248642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541599, 36.548225, 38.349072>,  <33.339836, 36.663383, 38.409328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541599, 36.548225, 38.349072>,  <33.877869, 36.356297, 38.248642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541599, 36.548225, 38.349072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506917, -0.534121, -0.676573,
		-0.190531, -0.696050, 0.692251,
		-0.840674, 0.479822, 0.251073,
		33.289398, 36.692173, 38.424393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327358, 35.845486, 38.517521>,  <33.877869, 36.356297, 38.248642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327358, 35.845486, 38.517521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118958, 36.170513, 38.412994>,  <32.993916, 36.365532, 38.350277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118958, 36.170513, 38.412994>,  <33.327358, 35.845486, 38.517521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118958, 36.170513, 38.412994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626527, -0.571980, -0.529436,
		-0.579676, -0.112109, 0.807098,
		-0.520998, 0.812570, -0.261324,
		32.962658, 36.414284, 38.334599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592701, 35.639866, 38.352768>,  <33.327358, 35.845486, 38.517521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592701, 35.639866, 38.352768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626892, 35.993328, 38.168659>,  <32.647408, 36.205406, 38.058193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626892, 35.993328, 38.168659>,  <32.592701, 35.639866, 38.352768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626892, 35.993328, 38.168659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696443, -0.277373, -0.661840,
		-0.712504, 0.377126, 0.591705,
		0.085474, 0.883652, -0.460276,
		32.652534, 36.258423, 38.030575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001690, 35.669392, 38.162842>,  <32.592701, 35.639866, 38.352768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001690, 35.669392, 38.162842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175457, 35.943138, 37.928600>,  <32.279716, 36.107388, 37.788055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175457, 35.943138, 37.928600>,  <32.001690, 35.669392, 38.162842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175457, 35.943138, 37.928600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670316, -0.188627, -0.717702,
		-0.601630, 0.704318, 0.376799,
		0.434416, 0.684365, -0.585600,
		32.305782, 36.148449, 37.752922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474390, 36.108593, 37.908947>,  <32.001690, 35.669392, 38.162842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474390, 36.108593, 37.908947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785208, 36.153458, 37.661198>,  <31.971699, 36.180374, 37.512550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785208, 36.153458, 37.661198>,  <31.474390, 36.108593, 37.908947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785208, 36.153458, 37.661198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619573, -0.037292, -0.784053,
		-0.111035, 0.992990, 0.040512,
		0.777046, 0.112157, -0.619371,
		32.018322, 36.187103, 37.475388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292154, 36.588879, 37.378181>,  <31.474390, 36.108593, 37.908947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292154, 36.588879, 37.378181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602715, 36.418335, 37.192528>,  <31.789051, 36.316010, 37.081135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602715, 36.418335, 37.192528>,  <31.292154, 36.588879, 37.378181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602715, 36.418335, 37.192528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563495, -0.139780, -0.814208,
		0.282270, 0.893687, -0.348778,
		0.776400, -0.426361, -0.464133,
		31.835634, 36.290428, 37.053288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154011, 36.784153, 36.712982>,  <31.292154, 36.588879, 37.378181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154011, 36.784153, 36.712982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376328, 36.451736, 36.704281>,  <31.509718, 36.252289, 36.699062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376328, 36.451736, 36.704281>,  <31.154011, 36.784153, 36.712982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376328, 36.451736, 36.704281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598569, -0.381888, -0.704185,
		0.576899, 0.404397, -0.709683,
		0.555790, -0.831038, -0.021749,
		31.543064, 36.202423, 36.697758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387186, 36.572971, 35.951740>,  <31.154011, 36.784153, 36.712982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387186, 36.572971, 35.951740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379593, 36.255142, 36.194489>,  <31.375038, 36.064445, 36.340137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379593, 36.255142, 36.194489>,  <31.387186, 36.572971, 35.951740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379593, 36.255142, 36.194489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615839, -0.468875, -0.633165,
		0.787643, -0.385750, -0.480432,
		-0.018981, -0.794577, 0.606867,
		31.373899, 36.016769, 36.376549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149990, 36.163853, 35.429207>,  <31.387186, 36.572971, 35.951740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149990, 36.163853, 35.429207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176012, 35.896236, 35.725357>,  <31.191626, 35.735668, 35.903046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176012, 35.896236, 35.725357>,  <31.149990, 36.163853, 35.429207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176012, 35.896236, 35.725357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479155, -0.671760, -0.564933,
		0.875316, -0.318001, -0.364276,
		0.065056, -0.669039, 0.740374,
		31.195528, 35.695526, 35.947468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140537, 35.487057, 35.052711>,  <31.149990, 36.163853, 35.429207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140537, 35.487057, 35.052711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048630, 35.419842, 35.436161>,  <30.993484, 35.379513, 35.666233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048630, 35.419842, 35.436161>,  <31.140537, 35.487057, 35.052711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048630, 35.419842, 35.436161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579917, -0.767389, -0.273515,
		0.781602, -0.618771, 0.078875,
		-0.229770, -0.168039, 0.958628,
		30.979698, 35.369431, 35.723751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162067, 34.735649, 35.188446>,  <31.140537, 35.487057, 35.052711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162067, 34.735649, 35.188446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919350, 34.931622, 35.438812>,  <30.773720, 35.049206, 35.589031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919350, 34.931622, 35.438812>,  <31.162067, 34.735649, 35.188446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919350, 34.931622, 35.438812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748737, -0.616645, -0.243192,
		0.266823, -0.616215, 0.741003,
		-0.606794, 0.489927, 0.625917,
		30.737312, 35.078598, 35.626587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770046, 34.202412, 35.572014>,  <31.162067, 34.735649, 35.188446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770046, 34.202412, 35.572014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563524, 34.542210, 35.615437>,  <30.439611, 34.746090, 35.641491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563524, 34.542210, 35.615437>,  <30.770046, 34.202412, 35.572014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563524, 34.542210, 35.615437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849582, -0.492093, -0.189879,
		-0.107881, -0.190264, 0.975788,
		-0.516305, 0.849496, 0.108558,
		30.408632, 34.797058, 35.648003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173182, 34.014679, 35.968613>,  <30.770046, 34.202412, 35.572014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173182, 34.014679, 35.968613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104643, 34.327763, 35.729275>,  <30.063520, 34.515614, 35.585670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104643, 34.327763, 35.729275>,  <30.173182, 34.014679, 35.968613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104643, 34.327763, 35.729275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884537, -0.389665, -0.256428,
		-0.433861, 0.485320, 0.759098,
		-0.171344, 0.782704, -0.598344,
		30.053240, 34.562572, 35.549770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331511, 33.246086, 35.976028>,  <30.173182, 34.014679, 35.968613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331511, 33.246086, 35.976028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126232, 32.902813, 35.971111>,  <30.003065, 32.696850, 35.968163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126232, 32.902813, 35.971111>,  <30.331511, 33.246086, 35.976028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126232, 32.902813, 35.971111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151610, -0.104742, 0.982875,
		-0.844776, 0.502542, 0.183862,
		-0.513194, -0.858185, -0.012293,
		29.972275, 32.645359, 35.967422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840677, 33.122540, 36.545830>,  <30.331511, 33.246086, 35.976028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840677, 33.122540, 36.545830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963478, 32.750320, 36.465992>,  <30.037159, 32.526989, 36.418091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963478, 32.750320, 36.465992>,  <29.840677, 33.122540, 36.545830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963478, 32.750320, 36.465992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214683, -0.136604, 0.967083,
		-0.927179, -0.339746, 0.157834,
		0.307002, -0.930544, -0.199594,
		30.055578, 32.471157, 36.406113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510839, 32.565006, 36.970528>,  <29.840677, 33.122540, 36.545830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510839, 32.565006, 36.970528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888502, 32.462463, 36.887733>,  <30.115101, 32.400936, 36.838055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888502, 32.462463, 36.887733>,  <29.510839, 32.565006, 36.970528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888502, 32.462463, 36.887733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198677, -0.058211, 0.978335,
		-0.262857, -0.964826, -0.004028,
		0.944158, -0.256362, -0.206990,
		30.171749, 32.385555, 36.825638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713093, 31.966444, 37.474102>,  <29.510839, 32.565006, 36.970528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713093, 31.966444, 37.474102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023438, 32.180645, 37.340668>,  <30.209644, 32.309166, 37.260609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023438, 32.180645, 37.340668>,  <29.713093, 31.966444, 37.474102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023438, 32.180645, 37.340668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377535, 0.029553, 0.925524,
		0.505477, -0.844017, -0.179242,
		0.775861, 0.535501, -0.333584,
		30.256195, 32.341293, 37.240593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268122, 31.709572, 37.839077>,  <29.713093, 31.966444, 37.474102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268122, 31.709572, 37.839077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384373, 32.072899, 37.718742>,  <30.454123, 32.290894, 37.646542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384373, 32.072899, 37.718742>,  <30.268122, 31.709572, 37.839077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384373, 32.072899, 37.718742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524567, 0.111694, 0.844011,
		0.800229, -0.403098, -0.444011,
		0.290625, 0.908315, -0.300833,
		30.471560, 32.345394, 37.628494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928276, 31.682980, 37.889622>,  <30.268122, 31.709572, 37.839077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928276, 31.682980, 37.889622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838747, 32.072762, 37.882221>,  <30.785030, 32.306629, 37.877781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838747, 32.072762, 37.882221>,  <30.928276, 31.682980, 37.889622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838747, 32.072762, 37.882221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430431, 0.115859, 0.895157,
		0.874433, 0.192394, -0.445368,
		-0.223823, 0.974454, -0.018499,
		30.771601, 32.365097, 37.876671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572548, 32.074589, 37.997002>,  <30.928276, 31.682980, 37.889622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572548, 32.074589, 37.997002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274475, 32.323547, 38.092773>,  <31.095631, 32.472923, 38.150238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274475, 32.323547, 38.092773>,  <31.572548, 32.074589, 37.997002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274475, 32.323547, 38.092773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403431, 0.134866, 0.905016,
		0.530985, 0.770998, -0.351593,
		-0.745183, 0.622394, 0.239432,
		31.050920, 32.510265, 38.164604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923012, 32.631508, 38.362030>,  <31.572548, 32.074589, 37.997002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923012, 32.631508, 38.362030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538685, 32.645889, 38.471970>,  <31.308088, 32.654518, 38.537933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538685, 32.645889, 38.471970>,  <31.923012, 32.631508, 38.362030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538685, 32.645889, 38.471970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277186, 0.121318, 0.953126,
		0.000928, 0.991962, -0.126531,
		-0.960816, 0.035958, 0.274846,
		31.250441, 32.656677, 38.554424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859411, 33.188526, 38.918823>,  <31.923012, 32.631508, 38.362030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859411, 33.188526, 38.918823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557949, 32.933270, 38.981800>,  <31.377071, 32.780117, 39.019585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557949, 32.933270, 38.981800>,  <31.859411, 33.188526, 38.918823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557949, 32.933270, 38.981800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249803, -0.056534, 0.966645,
		-0.607952, 0.767844, 0.202016,
		-0.753653, -0.638138, 0.157439,
		31.331854, 32.741829, 39.029034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578745, 33.380753, 39.480316>,  <31.859411, 33.188526, 38.918823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578745, 33.380753, 39.480316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412159, 33.017353, 39.466537>,  <31.312208, 32.799313, 39.458271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412159, 33.017353, 39.466537>,  <31.578745, 33.380753, 39.480316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412159, 33.017353, 39.466537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110699, -0.088280, 0.989925,
		-0.902387, 0.408457, 0.137336,
		-0.416466, -0.908499, -0.034447,
		31.287220, 32.744804, 39.456203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001667, 33.354244, 39.932957>,  <31.578745, 33.380753, 39.480316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001667, 33.354244, 39.932957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082272, 32.966274, 39.878357>,  <31.130634, 32.733490, 39.845596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082272, 32.966274, 39.878357>,  <31.001667, 33.354244, 39.932957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082272, 32.966274, 39.878357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062671, -0.151841, 0.986416,
		-0.977479, -0.190218, -0.091384,
		0.201510, -0.969929, -0.136501,
		31.142725, 32.675297, 39.837406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564714, 32.956944, 40.343834>,  <31.001667, 33.354244, 39.932957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564714, 32.956944, 40.343834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889517, 32.734783, 40.272087>,  <31.084398, 32.601486, 40.229038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889517, 32.734783, 40.272087>,  <30.564714, 32.956944, 40.343834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889517, 32.734783, 40.272087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073331, -0.207793, 0.975420,
		-0.579025, -0.805199, -0.128001,
		0.812005, -0.555406, -0.179363,
		31.133120, 32.568161, 40.218277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468153, 32.336449, 40.791630>,  <30.564714, 32.956944, 40.343834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468153, 32.336449, 40.791630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856844, 32.370960, 40.703716>,  <31.090057, 32.391666, 40.650967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856844, 32.370960, 40.703716>,  <30.468153, 32.336449, 40.791630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856844, 32.370960, 40.703716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230623, -0.147219, 0.961842,
		0.050630, -0.985334, -0.162954,
		0.971725, 0.086279, -0.219787,
		31.148361, 32.396843, 40.637779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715134, 31.872770, 41.249275>,  <30.468153, 32.336449, 40.791630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715134, 31.872770, 41.249275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994598, 32.124512, 41.113163>,  <31.162277, 32.275555, 41.031498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994598, 32.124512, 41.113163>,  <30.715134, 31.872770, 41.249275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994598, 32.124512, 41.113163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203556, 0.281098, 0.937843,
		0.685885, -0.724499, 0.068283,
		0.698661, 0.629353, -0.340277,
		31.204197, 32.313316, 41.011082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302736, 31.672670, 41.499329>,  <30.715134, 31.872770, 41.249275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302736, 31.672670, 41.499329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391903, 32.055275, 41.424072>,  <31.445402, 32.284836, 41.378918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391903, 32.055275, 41.424072>,  <31.302736, 31.672670, 41.499329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391903, 32.055275, 41.424072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463696, 0.065728, 0.883553,
		0.857493, -0.284199, -0.428878,
		0.222915, 0.956510, -0.188143,
		31.458778, 32.342228, 41.367630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056789, 31.767418, 41.661701>,  <31.302736, 31.672670, 41.499329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056789, 31.767418, 41.661701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907087, 32.138344, 41.660202>,  <31.817265, 32.360901, 41.659302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907087, 32.138344, 41.660202>,  <32.056789, 31.767418, 41.661701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907087, 32.138344, 41.660202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474670, 0.195045, 0.858281,
		0.796629, 0.319439, -0.513167,
		-0.374259, 0.927317, -0.003750,
		31.794809, 32.416538, 41.659077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585770, 32.105495, 41.967796>,  <32.056789, 31.767418, 41.661701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585770, 32.105495, 41.967796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274826, 32.354126, 42.006489>,  <32.088261, 32.503304, 42.029705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274826, 32.354126, 42.006489>,  <32.585770, 32.105495, 41.967796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274826, 32.354126, 42.006489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382281, 0.344659, 0.857363,
		0.499575, 0.703458, -0.505540,
		-0.777358, 0.621576, 0.096735,
		32.041618, 32.540600, 42.035511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813850, 32.751316, 42.129875>,  <32.585770, 32.105495, 41.967796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813850, 32.751316, 42.129875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426895, 32.793938, 42.221798>,  <32.194721, 32.819511, 42.276951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426895, 32.793938, 42.221798>,  <32.813850, 32.751316, 42.129875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426895, 32.793938, 42.221798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252479, 0.478946, 0.840753,
		-0.020482, 0.871354, -0.490228,
		-0.967386, 0.106551, 0.229808,
		32.136681, 32.825905, 42.290741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697849, 33.451130, 42.219818>,  <32.813850, 32.751316, 42.129875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697849, 33.451130, 42.219818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401772, 33.264526, 42.413513>,  <32.224125, 33.152565, 42.529728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401772, 33.264526, 42.413513>,  <32.697849, 33.451130, 42.219818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401772, 33.264526, 42.413513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263290, 0.461570, 0.847131,
		-0.618702, 0.754536, -0.218824,
		-0.740194, -0.466508, 0.484235,
		32.179714, 33.124573, 42.558784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418247, 33.923141, 42.654091>,  <32.697849, 33.451130, 42.219818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418247, 33.923141, 42.654091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289143, 33.578686, 42.811192>,  <32.211678, 33.372009, 42.905453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289143, 33.578686, 42.811192>,  <32.418247, 33.923141, 42.654091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289143, 33.578686, 42.811192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290072, 0.304992, 0.907104,
		-0.900934, 0.406707, 0.151353,
		-0.322764, -0.861144, 0.392752,
		32.192314, 33.320343, 42.929016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910343, 34.145279, 43.074345>,  <32.418247, 33.923141, 42.654091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910343, 34.145279, 43.074345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037960, 33.790699, 43.208458>,  <32.114529, 33.577950, 43.288925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037960, 33.790699, 43.208458>,  <31.910343, 34.145279, 43.074345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037960, 33.790699, 43.208458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017391, 0.359190, 0.933102,
		-0.947582, -0.291866, 0.130012,
		0.319040, -0.886452, 0.335286,
		32.133671, 33.524765, 43.309044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630411, 34.127838, 43.672195>,  <31.910343, 34.145279, 43.074345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630411, 34.127838, 43.672195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929157, 33.866943, 43.724007>,  <32.108406, 33.710407, 43.755093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929157, 33.866943, 43.724007>,  <31.630411, 34.127838, 43.672195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929157, 33.866943, 43.724007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113431, 0.316889, 0.941655,
		-0.655228, -0.688599, 0.310657,
		0.746866, -0.652237, 0.129526,
		32.153217, 33.671272, 43.762863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587540, 34.073200, 44.363342>,  <31.630411, 34.127838, 43.672195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587540, 34.073200, 44.363342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942493, 33.926140, 44.252071>,  <32.155464, 33.837906, 44.185310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942493, 33.926140, 44.252071>,  <31.587540, 34.073200, 44.363342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942493, 33.926140, 44.252071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337335, 0.106502, 0.935341,
		-0.314248, -0.923847, 0.218528,
		0.887386, -0.367646, -0.278178,
		32.208710, 33.815845, 44.168617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691206, 33.521477, 44.846615>,  <31.587540, 34.073200, 44.363342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691206, 33.521477, 44.846615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060226, 33.587086, 44.706902>,  <32.281639, 33.626453, 44.623074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060226, 33.587086, 44.706902>,  <31.691206, 33.521477, 44.846615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060226, 33.587086, 44.706902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364254, -0.071438, 0.928556,
		0.127354, -0.983866, -0.125652,
		0.922551, 0.164025, -0.349279,
		32.336990, 33.636292, 44.602119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110649, 32.983448, 45.016014>,  <31.691206, 33.521477, 44.846615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110649, 32.983448, 45.016014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343258, 33.306324, 44.975475>,  <32.482822, 33.500050, 44.951153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343258, 33.306324, 44.975475>,  <32.110649, 32.983448, 45.016014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343258, 33.306324, 44.975475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321976, -0.113955, 0.939865,
		0.747103, -0.579184, -0.326164,
		0.581523, 0.807193, -0.101347,
		32.517715, 33.548481, 44.945072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641930, 32.868359, 45.538235>,  <32.110649, 32.983448, 45.016014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641930, 32.868359, 45.538235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697681, 33.252010, 45.439735>,  <32.731133, 33.482201, 45.380638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697681, 33.252010, 45.439735>,  <32.641930, 32.868359, 45.538235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697681, 33.252010, 45.439735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111038, 0.231966, 0.966366,
		0.983994, -0.162033, -0.074169,
		0.139378, 0.959133, -0.246245,
		32.739494, 33.539749, 45.365860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072060, 33.100548, 46.135815>,  <32.641930, 32.868359, 45.538235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072060, 33.100548, 46.135815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901855, 33.414093, 45.954926>,  <32.799732, 33.602219, 45.846394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901855, 33.414093, 45.954926>,  <33.072060, 33.100548, 46.135815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901855, 33.414093, 45.954926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009587, 0.503593, 0.863888,
		0.904903, 0.363257, -0.221798,
		-0.425509, 0.783861, -0.452221,
		32.774204, 33.649250, 45.819260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803040, 33.127506, 45.724144>,  <33.072060, 33.100548, 46.135815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803040, 33.127506, 45.724144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195114, 33.084129, 45.790440>,  <34.430359, 33.058102, 45.830215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195114, 33.084129, 45.790440>,  <33.803040, 33.127506, 45.724144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195114, 33.084129, 45.790440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115548, -0.366558, -0.923192,
		0.160865, 0.924054, -0.346766,
		0.980189, -0.108441, 0.165739,
		34.489170, 33.051598, 45.840160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180573, 33.574909, 45.328407>,  <33.803040, 33.127506, 45.724144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180573, 33.574909, 45.328407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404362, 33.251183, 45.399952>,  <34.538635, 33.056946, 45.442879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404362, 33.251183, 45.399952>,  <34.180573, 33.574909, 45.328407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404362, 33.251183, 45.399952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083782, -0.159473, -0.983640,
		0.824602, 0.565308, -0.021415,
		0.559475, -0.809317, 0.178865,
		34.572205, 33.008389, 45.453609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581566, 33.678791, 44.869865>,  <34.180573, 33.574909, 45.328407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581566, 33.678791, 44.869865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637138, 33.293972, 44.963806>,  <34.670483, 33.063080, 45.020172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637138, 33.293972, 44.963806>,  <34.581566, 33.678791, 44.869865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637138, 33.293972, 44.963806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143697, -0.215058, -0.965972,
		0.979822, 0.167947, 0.108367,
		0.138927, -0.962052, 0.234852,
		34.678818, 33.005356, 45.034264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202843, 33.508461, 44.456680>,  <34.581566, 33.678791, 44.869865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202843, 33.508461, 44.456680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969704, 33.195038, 44.542778>,  <34.829819, 33.006985, 44.594437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969704, 33.195038, 44.542778>,  <35.202843, 33.508461, 44.456680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969704, 33.195038, 44.542778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005275, -0.268528, -0.963257,
		0.812565, -0.560295, 0.160644,
		-0.582846, -0.783557, 0.215241,
		34.794849, 32.959972, 44.607349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460865, 33.063217, 44.080521>,  <35.202843, 33.508461, 44.456680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460865, 33.063217, 44.080521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090450, 32.925339, 44.142021>,  <34.868202, 32.842613, 44.178921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090450, 32.925339, 44.142021>,  <35.460865, 33.063217, 44.080521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090450, 32.925339, 44.142021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066678, -0.251539, -0.965548,
		0.371494, -0.904385, 0.209951,
		-0.926038, -0.344696, 0.153747,
		34.812637, 32.821930, 44.188145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
