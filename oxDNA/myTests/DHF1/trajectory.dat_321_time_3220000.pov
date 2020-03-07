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
	<4.063015, 3.010950, 2.042293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.104603, 3.184189, 2.400425>,  <4.129556, 3.288132, 2.615304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.104603, 3.184189, 2.400425>,  <4.063015, 3.010950, 2.042293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.104603, 3.184189, 2.400425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939159, 0.339059, -0.054953,
		-0.327370, -0.835144, 0.441999,
		0.103970, 0.433097, 0.895331,
		4.135794, 3.314118, 2.669024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.502849, 2.857915, 2.418806>,  <4.063015, 3.010950, 2.042293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.502849, 2.857915, 2.418806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.628876, 3.190422, 2.601990>,  <3.704492, 3.389926, 2.711900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.628876, 3.190422, 2.601990>,  <3.502849, 2.857915, 2.418806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.628876, 3.190422, 2.601990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940470, 0.338268, 0.033015,
		-0.127469, -0.441100, 0.888360,
		0.315067, 0.831268, 0.457960,
		3.723396, 3.439802, 2.739378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.334353, 2.985123, 3.199893>,  <3.502849, 2.857915, 2.418806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.334353, 2.985123, 3.199893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.323624, 3.305542, 2.960693>,  <3.317186, 3.497793, 2.817173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.323624, 3.305542, 2.960693>,  <3.334353, 2.985123, 3.199893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.323624, 3.305542, 2.960693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994445, 0.039525, 0.097553,
		0.101780, 0.597295, 0.795537,
		-0.026824, 0.801047, -0.598000,
		3.315576, 3.545856, 2.781293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.070006, 3.585304, 3.492592>,  <3.334353, 2.985123, 3.199893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.070006, 3.585304, 3.492592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.984619, 3.598526, 3.102036>,  <2.933387, 3.606459, 2.867702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.984619, 3.598526, 3.102036>,  <3.070006, 3.585304, 3.492592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.984619, 3.598526, 3.102036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967544, 0.131203, 0.215974,
		0.135244, 0.990804, 0.003974,
		-0.213467, 0.033054, -0.976391,
		2.920579, 3.608442, 2.809118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.877621, 4.271329, 3.286294>,  <3.070006, 3.585304, 3.492592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.877621, 4.271329, 3.286294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.699291, 4.022202, 3.029129>,  <2.592294, 3.872725, 2.874830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.699291, 4.022202, 3.029129>,  <2.877621, 4.271329, 3.286294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.699291, 4.022202, 3.029129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881662, 0.429618, 0.195192,
		0.154638, 0.653854, -0.740650,
		-0.445824, -0.622819, -0.642914,
		2.565544, 3.835356, 2.836255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.630898, 4.609914, 2.659173>,  <2.877621, 4.271329, 3.286294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.630898, 4.609914, 2.659173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.400696, 4.288475, 2.719872>,  <2.262574, 4.095612, 2.756290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.400696, 4.288475, 2.719872>,  <2.630898, 4.609914, 2.659173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.400696, 4.288475, 2.719872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796162, 0.592949, 0.120573,
		-0.186870, -0.051423, -0.981038,
		-0.575505, -0.803596, 0.151745,
		2.228044, 4.047396, 2.765395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.041589, 4.757306, 2.299605>,  <2.630898, 4.609914, 2.659173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.041589, 4.757306, 2.299605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.927284, 4.462296, 2.544357>,  <1.858702, 4.285289, 2.691209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.927284, 4.462296, 2.544357>,  <2.041589, 4.757306, 2.299605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.927284, 4.462296, 2.544357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897380, 0.429972, 0.099168,
		-0.336230, -0.520750, -0.784709,
		-0.285761, -0.737525, 0.611880,
		1.841556, 4.241038, 2.727921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.411973, 4.583600, 2.068109>,  <2.041589, 4.757306, 2.299605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.411973, 4.583600, 2.068109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.406105, 4.437897, 2.440582>,  <1.402584, 4.350475, 2.664066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.406105, 4.437897, 2.440582>,  <1.411973, 4.583600, 2.068109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.406105, 4.437897, 2.440582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794575, 0.569585, 0.210291,
		-0.606988, -0.736810, -0.297785,
		-0.014669, -0.364257, 0.931183,
		1.401704, 4.328619, 2.719937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.746470, 5.298841, 2.490543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.667736, 5.424194, 2.862144>,  <0.620495, 5.499406, 3.085105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.667736, 5.424194, 2.862144>,  <0.746470, 5.298841, 2.490543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.667736, 5.424194, 2.862144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251210, -0.899788, 0.356755,
		0.947707, 0.303597, 0.098385,
		-0.196836, 0.313384, 0.929003,
		0.608685, 5.518209, 3.140845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.369153, 5.185695, 2.963305>,  <0.746470, 5.298841, 2.490543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.369153, 5.185695, 2.963305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.999344, 5.170059, 3.114952>,  <0.777458, 5.160678, 3.205940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.999344, 5.170059, 3.114952>,  <1.369153, 5.185695, 2.963305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.999344, 5.170059, 3.114952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167698, -0.934982, 0.312548,
		0.342250, 0.352535, 0.870967,
		-0.924523, -0.039090, 0.379117,
		0.721987, 5.158332, 3.228687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.419068, 5.149068, 3.725020>,  <1.369153, 5.185695, 2.963305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.419068, 5.149068, 3.725020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.149189, 4.973480, 3.487671>,  <0.987262, 4.868128, 3.345262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.149189, 4.973480, 3.487671>,  <1.419068, 5.149068, 3.725020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.149189, 4.973480, 3.487671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502312, -0.862116, 0.066626,
		-0.540803, -0.253106, 0.802166,
		-0.674697, -0.438969, -0.593372,
		0.946780, 4.841790, 3.309659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.348310, 4.560572, 4.005537>,  <1.419068, 5.149068, 3.725020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.348310, 4.560572, 4.005537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.246185, 4.509354, 3.622200>,  <1.184911, 4.478623, 3.392198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.246185, 4.509354, 3.622200>,  <1.348310, 4.560572, 4.005537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.246185, 4.509354, 3.622200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530783, -0.847037, -0.028232,
		-0.808137, -0.515880, 0.284223,
		-0.255311, -0.128045, -0.958343,
		1.169592, 4.470940, 3.334697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.423517, 3.836142, 3.896090>,  <1.348310, 4.560572, 4.005537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.423517, 3.836142, 3.896090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.402023, 3.987076, 3.526283>,  <1.389127, 4.077636, 3.304399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.402023, 3.987076, 3.526283>,  <1.423517, 3.836142, 3.896090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.402023, 3.987076, 3.526283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621581, -0.711967, -0.326710,
		-0.781505, -0.592217, -0.196288,
		-0.053733, 0.377335, -0.924517,
		1.385903, 4.100276, 3.248928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.262014, 3.296204, 3.362015>,  <1.423517, 3.836142, 3.896090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.262014, 3.296204, 3.362015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.469362, 3.590454, 3.187592>,  <1.593771, 3.767004, 3.082937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.469362, 3.590454, 3.187592>,  <1.262014, 3.296204, 3.362015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.469362, 3.590454, 3.187592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650152, -0.670261, -0.357844,
		-0.555512, -0.098008, -0.825712,
		0.518371, 0.735625, -0.436058,
		1.624874, 3.811142, 3.056774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.534832, 2.972700, 2.805088>,  <1.262014, 3.296204, 3.362015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.534832, 2.972700, 2.805088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.737675, 3.317413, 2.799850>,  <1.859380, 3.524242, 2.796708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.737675, 3.317413, 2.799850>,  <1.534832, 2.972700, 2.805088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.737675, 3.317413, 2.799850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775600, -0.462911, -0.429137,
		-0.375884, 0.207462, -0.903145,
		0.507106, 0.861785, -0.013093,
		1.889806, 3.575949, 2.795923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.922182, 2.893466, 2.234860>,  <1.534832, 2.972700, 2.805088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.922182, 2.893466, 2.234860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.132977, 3.163071, 2.441933>,  <2.259453, 3.324833, 2.566176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.132977, 3.163071, 2.441933>,  <1.922182, 2.893466, 2.234860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.132977, 3.163071, 2.441933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849823, -0.424592, -0.312287,
		0.009319, 0.604509, -0.796544,
		0.526986, 0.674011, 0.517682,
		2.291072, 3.365274, 2.597237>
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
