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
	<2.571256, 4.024690, 2.314301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.946701, 4.126663, 2.407265>,  <3.171968, 4.187847, 2.463043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.946701, 4.126663, 2.407265>,  <2.571256, 4.024690, 2.314301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.946701, 4.126663, 2.407265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254554, -0.966524, 0.032149,
		0.232826, 0.028986, -0.972086,
		0.938613, 0.254933, 0.232411,
		3.228285, 4.203143, 2.476988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.970160, 3.716985, 1.849276>,  <2.571256, 4.024690, 2.314301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.970160, 3.716985, 1.849276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.193710, 3.771601, 2.176449>,  <3.327841, 3.804370, 2.372753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.193710, 3.771601, 2.176449>,  <2.970160, 3.716985, 1.849276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.193710, 3.771601, 2.176449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191026, -0.981022, 0.033241,
		0.806949, 0.137668, -0.574352,
		0.558876, 0.136540, 0.817933,
		3.361373, 3.812563, 2.421829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.700664, 3.386305, 1.818164>,  <2.970160, 3.716985, 1.849276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.700664, 3.386305, 1.818164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.565521, 3.409689, 2.193916>,  <3.484435, 3.423719, 2.419368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.565521, 3.409689, 2.193916>,  <3.700664, 3.386305, 1.818164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.565521, 3.409689, 2.193916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095026, -0.990850, 0.095840,
		0.936388, 0.121646, 0.329211,
		-0.337858, 0.058460, 0.939380,
		3.464164, 3.427227, 2.475730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.206888, 3.067209, 2.171503>,  <3.700664, 3.386305, 1.818164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.206888, 3.067209, 2.171503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.835510, 3.050694, 2.319172>,  <3.612684, 3.040784, 2.407773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.835510, 3.050694, 2.319172>,  <4.206888, 3.067209, 2.171503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.835510, 3.050694, 2.319172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049085, -0.998725, 0.011747,
		0.368217, 0.029028, 0.929286,
		-0.928443, -0.041289, 0.369173,
		3.556977, 3.038307, 2.429924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.090562, 2.801488, 2.764642>,  <4.206888, 3.067209, 2.171503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.090562, 2.801488, 2.764642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.756653, 2.763647, 2.547680>,  <3.556307, 2.740942, 2.417503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.756653, 2.763647, 2.547680>,  <4.090562, 2.801488, 2.764642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.756653, 2.763647, 2.547680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101522, -0.994684, 0.017241,
		-0.541153, -0.040674, 0.839940,
		-0.834774, -0.094602, -0.542406,
		3.506221, 2.735266, 2.384958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.639592, 2.342171, 3.205898>,  <4.090562, 2.801488, 2.764642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.639592, 2.342171, 3.205898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.528999, 2.325151, 2.821867>,  <3.462644, 2.314939, 2.591449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.528999, 2.325151, 2.821867>,  <3.639592, 2.342171, 3.205898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.528999, 2.325151, 2.821867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071461, -0.995343, 0.064692,
		-0.958359, 0.086495, 0.272153,
		-0.276481, -0.042550, -0.960077,
		3.446055, 2.312387, 2.533844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.986796, 2.019554, 3.165944>,  <3.639592, 2.342171, 3.205898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.986796, 2.019554, 3.165944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.156189, 1.965176, 2.807686>,  <3.257825, 1.932548, 2.592731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.156189, 1.965176, 2.807686>,  <2.986796, 2.019554, 3.165944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.156189, 1.965176, 2.807686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263162, -0.964501, 0.021969,
		-0.866838, 0.226396, -0.444225,
		0.423482, -0.135947, -0.895646,
		3.283234, 1.924392, 2.538992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.470110, 1.713144, 2.669762>,  <2.986796, 2.019554, 3.165944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.470110, 1.713144, 2.669762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.840012, 1.646530, 2.532883>,  <3.061952, 1.606562, 2.450755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.840012, 1.646530, 2.532883>,  <2.470110, 1.713144, 2.669762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.840012, 1.646530, 2.532883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148497, -0.985796, 0.078448,
		-0.350401, -0.021730, -0.936347,
		0.924753, -0.166533, -0.342197,
		3.117437, 1.596570, 2.430223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.612750, 0.312813, 3.246991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.743309, 0.322285, 2.869017>,  <3.821644, 0.327968, 2.642232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.743309, 0.322285, 2.869017>,  <3.612750, 0.312813, 3.246991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.743309, 0.322285, 2.869017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494510, 0.856244, -0.149354,
		0.805559, 0.516029, 0.291185,
		0.326397, 0.023680, -0.944936,
		3.841228, 0.329389, 2.585536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.927204, 0.945995, 3.136065>,  <3.612750, 0.312813, 3.246991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.927204, 0.945995, 3.136065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.743011, 0.798290, 2.813177>,  <3.632496, 0.709667, 2.619445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.743011, 0.798290, 2.813177>,  <3.927204, 0.945995, 3.136065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.743011, 0.798290, 2.813177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476924, 0.869886, -0.125866,
		0.748665, 0.327023, -0.576677,
		-0.460482, -0.369263, -0.807219,
		3.604867, 0.687511, 2.571012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.100054, 1.322743, 2.546098>,  <3.927204, 0.945995, 3.136065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.100054, 1.322743, 2.546098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.736938, 1.158298, 2.512854>,  <3.519069, 1.059632, 2.492907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.736938, 1.158298, 2.512854>,  <4.100054, 1.322743, 2.546098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.736938, 1.158298, 2.512854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388976, 0.899313, -0.199833,
		0.156895, -0.149078, -0.976299,
		-0.907789, -0.411110, -0.083109,
		3.464602, 1.034965, 2.487921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.266607, 1.716825, 1.815961>,  <4.100054, 1.322743, 2.546098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.266607, 1.716825, 1.815961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.887444, 1.626614, 1.905945>,  <3.659945, 1.572487, 1.959935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.887444, 1.626614, 1.905945>,  <4.266607, 1.716825, 1.815961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.887444, 1.626614, 1.905945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221981, 0.974177, 0.041287,
		-0.228462, -0.010800, -0.973493,
		-0.947908, -0.225530, 0.224959,
		3.603071, 1.558955, 1.973433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.766109, 1.987047, 1.306774>,  <4.266607, 1.716825, 1.815961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.766109, 1.987047, 1.306774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.591927, 1.953411, 1.665283>,  <3.487417, 1.933230, 1.880389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.591927, 1.953411, 1.665283>,  <3.766109, 1.987047, 1.306774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.591927, 1.953411, 1.665283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157771, 0.987346, 0.015980,
		-0.886276, -0.134447, -0.443214,
		-0.435457, -0.084089, 0.896273,
		3.461289, 1.928184, 1.934165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.006621, 2.379322, 1.343035>,  <3.766109, 1.987047, 1.306774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.006621, 2.379322, 1.343035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.142426, 2.338406, 1.717045>,  <3.223908, 2.313856, 1.941450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.142426, 2.338406, 1.717045>,  <3.006621, 2.379322, 1.343035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.142426, 2.338406, 1.717045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265381, 0.943266, 0.199554,
		-0.902389, -0.315889, 0.293103,
		0.339511, -0.102292, 0.935023,
		3.244279, 2.307718, 1.997552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.456040, 2.523115, 1.760386>,  <3.006621, 2.379322, 1.343035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.456040, 2.523115, 1.760386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.782280, 2.614971, 1.972824>,  <2.978024, 2.670085, 2.100287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.782280, 2.614971, 1.972824>,  <2.456040, 2.523115, 1.760386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.782280, 2.614971, 1.972824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391705, 0.894695, 0.214684,
		-0.425867, -0.383128, 0.819665,
		0.815601, 0.229640, 0.531094,
		3.026960, 2.683863, 2.132152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.324012, 2.881220, 2.396362>,  <2.456040, 2.523115, 1.760386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.324012, 2.881220, 2.396362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.684914, 2.985878, 2.259262>,  <2.901455, 3.048673, 2.177002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.684914, 2.985878, 2.259262>,  <2.324012, 2.881220, 2.396362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.684914, 2.985878, 2.259262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172861, 0.947674, 0.268390,
		0.395038, -0.182908, 0.900272,
		0.902255, 0.261646, -0.342750,
		2.955590, 3.064372, 2.156437>
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
