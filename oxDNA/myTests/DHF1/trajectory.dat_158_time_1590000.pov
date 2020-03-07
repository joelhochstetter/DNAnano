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
	<0.008463, 3.265995, 3.042383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.247330, 3.483414, 2.806435>,  <0.390650, 3.613865, 2.664865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.247330, 3.483414, 2.806435>,  <0.008463, 3.265995, 3.042383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.247330, 3.483414, 2.806435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634440, -0.770039, -0.067276,
		-0.490792, -0.334063, -0.804690,
		0.597168, 0.543546, -0.589872,
		0.426480, 3.646477, 2.629473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.136481, 2.914439, 2.367586>,  <0.008463, 3.265995, 3.042383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.136481, 2.914439, 2.367586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.428772, 3.149483, 2.506584>,  <0.604147, 3.290509, 2.589983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.428772, 3.149483, 2.506584>,  <0.136481, 2.914439, 2.367586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.428772, 3.149483, 2.506584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661020, -0.736202, -0.145117,
		0.170555, 0.335742, -0.926384,
		0.730728, 0.587608, 0.347496,
		0.647990, 3.325765, 2.610833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.702155, 2.802329, 1.925315>,  <0.136481, 2.914439, 2.367586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.702155, 2.802329, 1.925315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.802177, 2.897728, 2.300674>,  <0.862191, 2.954967, 2.525890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.802177, 2.897728, 2.300674>,  <0.702155, 2.802329, 1.925315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.802177, 2.897728, 2.300674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566168, -0.822239, 0.058109,
		0.785447, 0.516760, -0.340635,
		0.250055, 0.238498, 0.938398,
		0.877194, 2.969277, 2.582194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.336908, 2.890159, 1.906805>,  <0.702155, 2.802329, 1.925315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.336908, 2.890159, 1.906805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.200142, 2.738663, 2.250816>,  <1.118082, 2.647765, 2.457223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.200142, 2.738663, 2.250816>,  <1.336908, 2.890159, 1.906805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.200142, 2.738663, 2.250816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551229, -0.822033, -0.142860,
		0.761079, 0.425227, 0.489838,
		-0.341915, -0.378741, 0.860029,
		1.097567, 2.625041, 2.508825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.948698, 2.651889, 2.118475>,  <1.336908, 2.890159, 1.906805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.948698, 2.651889, 2.118475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.659134, 2.479156, 2.333687>,  <1.485396, 2.375517, 2.462814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.659134, 2.479156, 2.333687>,  <1.948698, 2.651889, 2.118475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.659134, 2.479156, 2.333687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465051, -0.881498, -0.081788,
		0.509590, 0.191004, 0.838949,
		-0.723910, -0.431832, 0.538029,
		1.441961, 2.349607, 2.495095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.263066, 2.185673, 2.686262>,  <1.948698, 2.651889, 2.118475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.263066, 2.185673, 2.686262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.895035, 2.045258, 2.616714>,  <1.674216, 1.961008, 2.574986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.895035, 2.045258, 2.616714>,  <2.263066, 2.185673, 2.686262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.895035, 2.045258, 2.616714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343033, -0.936313, 0.075144,
		-0.189173, 0.009496, 0.981898,
		-0.920077, -0.351039, -0.173868,
		1.619012, 1.939946, 2.564554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.127105, 1.697105, 3.172088>,  <2.263066, 2.185673, 2.686262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.127105, 1.697105, 3.172088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.881432, 1.594803, 2.873459>,  <1.734028, 1.533422, 2.694282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.881432, 1.594803, 2.873459>,  <2.127105, 1.697105, 3.172088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.881432, 1.594803, 2.873459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382300, -0.924036, 0.002043,
		-0.690382, -0.284160, 0.665302,
		-0.614182, -0.255755, -0.746572,
		1.697177, 1.518076, 2.649487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.932953, 1.107674, 3.314426>,  <2.127105, 1.697105, 3.172088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.932953, 1.107674, 3.314426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.850311, 1.105057, 2.923065>,  <1.800726, 1.103486, 2.688249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.850311, 1.105057, 2.923065>,  <1.932953, 1.107674, 3.314426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.850311, 1.105057, 2.923065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370734, -0.925937, -0.072093,
		-0.905467, -0.377622, 0.193729,
		-0.206605, -0.006544, -0.978402,
		1.788330, 1.103094, 2.629544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.565834, -0.734751, 2.534684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.592392, -0.592529, 2.161766>,  <1.608327, -0.507196, 1.938015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.592392, -0.592529, 2.161766>,  <1.565834, -0.734751, 2.534684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.592392, -0.592529, 2.161766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230940, 0.903509, 0.361024,
		0.970700, -0.239274, -0.022123,
		0.066396, 0.355555, -0.932294,
		1.612311, -0.485863, 1.882078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.075505, -0.328126, 2.479000>,  <1.565834, -0.734751, 2.534684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.075505, -0.328126, 2.479000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.834507, -0.206474, 2.183838>,  <1.689908, -0.133483, 2.006740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.834507, -0.206474, 2.183838>,  <2.075505, -0.328126, 2.479000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.834507, -0.206474, 2.183838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122272, 0.948810, 0.291219,
		0.788701, 0.085233, -0.608840,
		-0.602495, 0.304129, -0.737906,
		1.653759, -0.115236, 1.962466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.320370, 0.209426, 1.941916>,  <2.075505, -0.328126, 2.479000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.320370, 0.209426, 1.941916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.924389, 0.245255, 1.985680>,  <1.686800, 0.266751, 2.011938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.924389, 0.245255, 1.985680>,  <2.320370, 0.209426, 1.941916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.924389, 0.245255, 1.985680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110878, 0.971918, 0.207562,
		-0.087746, 0.217608, -0.972084,
		-0.989953, 0.089570, 0.109409,
		1.627403, 0.272126, 2.018502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.157707, 0.811600, 1.608891>,  <2.320370, 0.209426, 1.941916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.157707, 0.811600, 1.608891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.864555, 0.745232, 1.872818>,  <1.688664, 0.705411, 2.031174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.864555, 0.745232, 1.872818>,  <2.157707, 0.811600, 1.608891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.864555, 0.745232, 1.872818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079324, 0.942355, 0.325075,
		-0.675718, 0.290580, -0.677472,
		-0.732880, -0.165920, 0.659817,
		1.644691, 0.695456, 2.070763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.508564, 1.204456, 1.501804>,  <2.157707, 0.811600, 1.608891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.508564, 1.204456, 1.501804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.502293, 1.125763, 1.893936>,  <1.498530, 1.078547, 2.129216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.502293, 1.125763, 1.893936>,  <1.508564, 1.204456, 1.501804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.502293, 1.125763, 1.893936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100743, 0.975774, 0.194207,
		-0.994789, -0.095717, -0.035119,
		-0.015680, -0.196733, 0.980332,
		1.497589, 1.066743, 2.188036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.880436, 1.264008, 1.699374>,  <1.508564, 1.204456, 1.501804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.880436, 1.264008, 1.699374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.125702, 1.323265, 2.009750>,  <1.272861, 1.358819, 2.195976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.125702, 1.323265, 2.009750>,  <0.880436, 1.264008, 1.699374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.125702, 1.323265, 2.009750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448969, 0.873545, 0.188007,
		-0.649967, -0.463652, 0.602137,
		0.613164, 0.148142, 0.775941,
		1.309651, 1.367708, 2.242532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.459610, 1.429971, 2.364502>,  <0.880436, 1.264008, 1.699374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.459610, 1.429971, 2.364502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.827286, 1.580666, 2.410393>,  <1.047891, 1.671082, 2.437927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.827286, 1.580666, 2.410393>,  <0.459610, 1.429971, 2.364502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.827286, 1.580666, 2.410393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393806, 0.881558, 0.260330,
		-0.003063, -0.284473, 0.958679,
		0.919189, 0.376736, 0.114727,
		1.103042, 1.693686, 2.444811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.322818, 1.937791, 2.969188>,  <0.459610, 1.429971, 2.364502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.322818, 1.937791, 2.969188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.653625, 2.045006, 2.771523>,  <0.852110, 2.109335, 2.652923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.653625, 2.045006, 2.771523>,  <0.322818, 1.937791, 2.969188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.653625, 2.045006, 2.771523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351886, 0.932338, -0.083199,
		0.438427, 0.242697, 0.865379,
		0.827018, 0.268038, -0.494163,
		0.901731, 2.125417, 2.623274>
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
