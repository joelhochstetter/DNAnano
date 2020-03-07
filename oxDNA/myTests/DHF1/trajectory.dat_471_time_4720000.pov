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
	<4.290861, -0.318881, 0.987886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.628484, -0.142117, 1.109398>,  <4.831058, -0.036058, 1.182305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.628484, -0.142117, 1.109398>,  <4.290861, -0.318881, 0.987886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.628484, -0.142117, 1.109398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261099, 0.833471, -0.486984,
		-0.468395, 0.331726, 0.818880,
		0.844058, 0.441910, 0.303780,
		4.881701, -0.009544, 1.200532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.125262, 0.268401, 1.426079>,  <4.290861, -0.318881, 0.987886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.125262, 0.268401, 1.426079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.462778, 0.318378, 1.217308>,  <4.665287, 0.348365, 1.092046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.462778, 0.318378, 1.217308>,  <4.125262, 0.268401, 1.426079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.462778, 0.318378, 1.217308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381485, 0.823673, -0.419562,
		0.377475, 0.553129, 0.742671,
		0.843790, 0.124943, -0.521927,
		4.715915, 0.355861, 1.060730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.446062, 0.857871, 1.565489>,  <4.125262, 0.268401, 1.426079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.446062, 0.857871, 1.565489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.563037, 0.781590, 1.190659>,  <4.633223, 0.735821, 0.965760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.563037, 0.781590, 1.190659>,  <4.446062, 0.857871, 1.565489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.563037, 0.781590, 1.190659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449604, 0.837437, -0.310735,
		0.844000, 0.512184, 0.159158,
		0.292438, -0.190702, -0.937077,
		4.650769, 0.724379, 0.909536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.675310, 1.469359, 1.233262>,  <4.446062, 0.857871, 1.565489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.675310, 1.469359, 1.233262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.546249, 1.224838, 0.944206>,  <4.468813, 1.078126, 0.770773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.546249, 1.224838, 0.944206>,  <4.675310, 1.469359, 1.233262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.546249, 1.224838, 0.944206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498202, 0.758836, -0.419478,
		0.804792, 0.224675, -0.549391,
		-0.322651, -0.611301, -0.722639,
		4.449454, 1.041448, 0.727414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.875651, 1.800311, 0.563366>,  <4.675310, 1.469359, 1.233262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.875651, 1.800311, 0.563366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.557678, 1.561268, 0.521515>,  <4.366894, 1.417842, 0.496404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.557678, 1.561268, 0.521515>,  <4.875651, 1.800311, 0.563366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.557678, 1.561268, 0.521515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517538, 0.757947, -0.397078,
		0.316599, -0.261501, -0.911802,
		-0.794933, -0.597607, -0.104628,
		4.319198, 1.381986, 0.490126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.693881, 1.834799, -0.065742>,  <4.875651, 1.800311, 0.563366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.693881, 1.834799, -0.065742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.366989, 1.744377, 0.146309>,  <4.170854, 1.690124, 0.273540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.366989, 1.744377, 0.146309>,  <4.693881, 1.834799, -0.065742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.366989, 1.744377, 0.146309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448670, 0.826882, -0.339060,
		-0.361707, -0.514943, -0.777175,
		-0.817229, -0.226055, 0.530129,
		4.121820, 1.676561, 0.305347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.137184, 1.872569, -0.572563>,  <4.693881, 1.834799, -0.065742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.137184, 1.872569, -0.572563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.963027, 1.888382, -0.212814>,  <3.858533, 1.897870, 0.003035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.963027, 1.888382, -0.212814>,  <4.137184, 1.872569, -0.572563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.963027, 1.888382, -0.212814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585636, 0.746307, -0.316316,
		-0.683713, -0.664427, -0.301785,
		-0.435393, 0.039533, 0.899372,
		3.832409, 1.900242, 0.056997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.432061, 1.651040, -0.567525>,  <4.137184, 1.872569, -0.572563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.432061, 1.651040, -0.567525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.469975, 1.913555, -0.268112>,  <3.492723, 2.071064, -0.088464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.469975, 1.913555, -0.268112>,  <3.432061, 1.651040, -0.567525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.469975, 1.913555, -0.268112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737853, 0.551074, -0.389731,
		-0.668273, -0.515367, 0.536478,
		0.094784, 0.656289, 0.748533,
		3.498410, 2.110442, -0.043552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.566301, 2.954986, -0.693365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.424591, 3.175678, -0.391350>,  <3.339565, 3.308094, -0.210141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.424591, 3.175678, -0.391350>,  <3.566301, 2.954986, -0.693365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.424591, 3.175678, -0.391350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140310, -0.766903, 0.626237,
		0.924555, 0.327800, 0.194282,
		-0.354276, 0.551731, 0.755038,
		3.318308, 3.341197, -0.164839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.073403, 2.919431, -0.146247>,  <3.566301, 2.954986, -0.693365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.073403, 2.919431, -0.146247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.694155, 2.955532, -0.024315>,  <3.466606, 2.977192, 0.048845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.694155, 2.955532, -0.024315>,  <4.073403, 2.919431, -0.146247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.694155, 2.955532, -0.024315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138384, -0.746086, 0.651311,
		0.286212, 0.659705, 0.694890,
		-0.948120, 0.090251, 0.304831,
		3.409719, 2.982608, 0.067135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.086574, 2.900140, 0.597961>,  <4.073403, 2.919431, -0.146247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.086574, 2.900140, 0.597961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.726635, 2.744064, 0.519958>,  <3.510672, 2.650419, 0.473157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.726635, 2.744064, 0.519958>,  <4.086574, 2.900140, 0.597961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.726635, 2.744064, 0.519958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221958, -0.794426, 0.565351,
		-0.375511, 0.465446, 0.801468,
		-0.899848, -0.390188, -0.195007,
		3.456681, 2.627008, 0.461456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.711026, 2.610052, 1.198748>,  <4.086574, 2.900140, 0.597961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.711026, 2.610052, 1.198748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.588507, 2.425407, 0.865738>,  <3.514995, 2.314621, 0.665932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.588507, 2.425407, 0.865738>,  <3.711026, 2.610052, 1.198748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.588507, 2.425407, 0.865738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415298, -0.851742, 0.319473,
		-0.856568, -0.247892, 0.452593,
		-0.306298, -0.461611, -0.832524,
		3.496617, 2.286924, 0.615981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.305685, 1.949853, 1.245555>,  <3.711026, 2.610052, 1.198748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.305685, 1.949853, 1.245555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.447990, 1.924778, 0.872566>,  <3.533374, 1.909733, 0.648773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.447990, 1.924778, 0.872566>,  <3.305685, 1.949853, 1.245555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.447990, 1.924778, 0.872566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458360, -0.857805, 0.232545,
		-0.814456, -0.510139, -0.276441,
		0.355763, -0.062688, -0.932471,
		3.554719, 1.905972, 0.592825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.009763, 1.280203, 0.911230>,  <3.305685, 1.949853, 1.245555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.009763, 1.280203, 0.911230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.346498, 1.407909, 0.737160>,  <3.548540, 1.484533, 0.632717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.346498, 1.407909, 0.737160>,  <3.009763, 1.280203, 0.911230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.346498, 1.407909, 0.737160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380644, -0.922817, 0.059325,
		-0.382648, -0.215589, -0.898389,
		0.841838, 0.319265, -0.435176,
		3.599050, 1.503689, 0.606607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.139423, 0.830727, 0.485532>,  <3.009763, 1.280203, 0.911230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.139423, 0.830727, 0.485532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.499908, 1.000694, 0.519608>,  <3.716200, 1.102675, 0.540053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.499908, 1.000694, 0.519608>,  <3.139423, 0.830727, 0.485532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.499908, 1.000694, 0.519608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380633, -0.870077, 0.313184,
		0.207199, -0.249821, -0.945864,
		0.901214, 0.424918, 0.085189,
		3.770273, 1.128170, 0.545164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.731919, 0.587127, 0.096286>,  <3.139423, 0.830727, 0.485532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.731919, 0.587127, 0.096286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.868511, 0.713593, 0.450333>,  <3.950466, 0.789472, 0.662761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.868511, 0.713593, 0.450333>,  <3.731919, 0.587127, 0.096286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.868511, 0.713593, 0.450333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279776, -0.933228, 0.225412,
		0.897283, 0.170661, -0.407134,
		0.341480, 0.316165, 0.885117,
		3.970955, 0.808442, 0.715868>
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
