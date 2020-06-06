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
	<24.127235, 35.226341, 35.089859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.342690, 34.889637, 35.104378>,  <24.471962, 34.687614, 35.113087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.342690, 34.889637, 35.104378>,  <24.127235, 35.226341, 35.089859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.342690, 34.889637, 35.104378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067072, 0.000100, 0.997748,
		-0.839864, -0.539858, -0.056404,
		0.538637, -0.841756, 0.036294,
		24.504280, 34.637112, 35.115265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.574549, 35.800713, 35.140343>,  <24.127235, 35.226341, 35.089859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.574549, 35.800713, 35.140343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.760389, 36.074875, 34.916069>,  <24.871895, 36.239372, 34.781506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.760389, 36.074875, 34.916069>,  <24.574549, 35.800713, 35.140343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.760389, 36.074875, 34.916069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869010, -0.231215, 0.437448,
		0.170190, -0.690479, -0.703047,
		0.464604, 0.685404, -0.560682,
		24.899771, 36.280495, 34.747864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.155323, 35.457066, 34.764107>,  <24.574549, 35.800713, 35.140343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.155323, 35.457066, 34.764107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216125, 35.844326, 34.843681>,  <25.252607, 36.076683, 34.891426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216125, 35.844326, 34.843681>,  <25.155323, 35.457066, 34.764107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216125, 35.844326, 34.843681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940515, -0.203561, 0.272019,
		0.303852, 0.145758, -0.941503,
		0.152004, 0.968152, 0.198940,
		25.261726, 36.134773, 34.903362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.649677, 35.656059, 34.400803>,  <25.155323, 35.457066, 34.764107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.649677, 35.656059, 34.400803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656273, 35.893471, 34.722660>,  <25.660231, 36.035915, 34.915775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656273, 35.893471, 34.722660>,  <25.649677, 35.656059, 34.400803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.656273, 35.893471, 34.722660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969405, -0.206611, 0.132534,
		0.244912, 0.777844, -0.578772,
		0.016490, 0.593524, 0.804647,
		25.661221, 36.071529, 34.964054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.145281, 36.238430, 34.385578>,  <25.649677, 35.656059, 34.400803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.145281, 36.238430, 34.385578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070482, 36.190376, 34.775574>,  <26.025604, 36.161545, 35.009571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070482, 36.190376, 34.775574>,  <26.145281, 36.238430, 34.385578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.070482, 36.190376, 34.775574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968077, -0.191169, 0.162114,
		0.166912, 0.974178, 0.152046,
		-0.186995, -0.120133, 0.974988,
		26.014383, 36.154335, 35.068069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730003, 36.593666, 34.813835>,  <26.145281, 36.238430, 34.385578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730003, 36.593666, 34.813835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546713, 36.300556, 35.015060>,  <26.436739, 36.124691, 35.135796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546713, 36.300556, 35.015060>,  <26.730003, 36.593666, 34.813835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546713, 36.300556, 35.015060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884580, -0.320644, 0.338682,
		-0.086871, 0.600195, 0.795123,
		-0.458227, -0.732771, 0.503065,
		26.409245, 36.080727, 35.165981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040482, 36.665398, 35.427017>,  <26.730003, 36.593666, 34.813835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040482, 36.665398, 35.427017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871161, 36.306618, 35.375950>,  <26.769567, 36.091351, 35.345310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871161, 36.306618, 35.375950>,  <27.040482, 36.665398, 35.427017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871161, 36.306618, 35.375950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794589, -0.435249, 0.423304,
		-0.435249, 0.077743, 0.896947,
		-0.423304, -0.896947, -0.127668,
		26.744169, 36.037533, 35.337650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.890875, 36.366768, 36.019466>,  <27.040482, 36.665398, 35.427017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.890875, 36.366768, 36.019466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990562, 36.091629, 35.746773>,  <27.050375, 35.926548, 35.583157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990562, 36.091629, 35.746773>,  <26.890875, 36.366768, 36.019466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990562, 36.091629, 35.746773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762330, -0.294815, 0.576140,
		-0.597280, -0.663290, 0.450892,
		0.249218, -0.687845, -0.681733,
		27.065329, 35.885277, 35.542252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982935, 35.806499, 36.454647>,  <26.890875, 36.366768, 36.019466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982935, 35.806499, 36.454647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.182188, 35.772556, 36.109470>,  <27.301739, 35.752190, 35.902367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.182188, 35.772556, 36.109470>,  <26.982935, 35.806499, 36.454647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182188, 35.772556, 36.109470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808857, -0.313118, 0.497702,
		-0.312438, -0.945915, -0.087334,
		0.498130, -0.084860, -0.862940,
		27.331627, 35.747101, 35.850590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192591, 35.120758, 36.517761>,  <26.982935, 35.806499, 36.454647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192591, 35.120758, 36.517761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405676, 35.324726, 36.247589>,  <27.533527, 35.447105, 36.085487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405676, 35.324726, 36.247589>,  <27.192591, 35.120758, 36.517761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405676, 35.324726, 36.247589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829405, -0.155909, 0.536452,
		0.168240, -0.845978, -0.505982,
		0.532713, 0.509916, -0.675428,
		27.565491, 35.477699, 36.044960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735529, 34.644169, 36.391907>,  <27.192591, 35.120758, 36.517761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735529, 34.644169, 36.391907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827696, 35.020519, 36.292583>,  <27.882996, 35.246330, 36.232990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827696, 35.020519, 36.292583>,  <27.735529, 34.644169, 36.391907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827696, 35.020519, 36.292583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850776, -0.070926, 0.520720,
		0.472321, -0.331242, -0.816818,
		0.230418, 0.940876, -0.248312,
		27.896822, 35.302784, 36.218090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468372, 34.585922, 36.287388>,  <27.735529, 34.644169, 36.391907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468372, 34.585922, 36.287388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351591, 34.967205, 36.318775>,  <28.281523, 35.195976, 36.337608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351591, 34.967205, 36.318775>,  <28.468372, 34.585922, 36.287388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351591, 34.967205, 36.318775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914475, 0.254172, 0.314851,
		0.280174, 0.163679, -0.945892,
		-0.291954, 0.953208, 0.078468,
		28.264006, 35.253166, 36.342316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176039, 34.925636, 36.476482>,  <28.468372, 34.585922, 36.287388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176039, 34.925636, 36.476482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369984, 35.275471, 36.476311>,  <29.486351, 35.485371, 36.476208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369984, 35.275471, 36.476311>,  <29.176039, 34.925636, 36.476482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369984, 35.275471, 36.476311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773656, 0.428675, -0.466577,
		-0.407880, 0.226558, 0.884480,
		0.484862, 0.874591, -0.000430,
		29.515442, 35.537849, 36.476181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669577, 35.341587, 36.737480>,  <29.176039, 34.925636, 36.476482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669577, 35.341587, 36.737480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943068, 35.541714, 36.524990>,  <29.107162, 35.661789, 36.397495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943068, 35.541714, 36.524990>,  <28.669577, 35.341587, 36.737480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943068, 35.541714, 36.524990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729192, 0.496553, -0.470865,
		0.028203, 0.709310, 0.704332,
		0.683728, 0.500314, -0.531227,
		29.148186, 35.691807, 36.365623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768122, 36.065994, 36.990303>,  <28.669577, 35.341587, 36.737480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768122, 36.065994, 36.990303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838495, 35.968693, 36.608753>,  <28.880720, 35.910313, 36.379822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838495, 35.968693, 36.608753>,  <28.768122, 36.065994, 36.990303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838495, 35.968693, 36.608753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923724, 0.294145, -0.245383,
		0.340267, 0.924288, -0.172945,
		0.175934, -0.243249, -0.953875,
		28.891275, 35.895718, 36.322590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614067, 36.550045, 36.325504>,  <28.768122, 36.065994, 36.990303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614067, 36.550045, 36.325504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568008, 36.164352, 36.230000>,  <28.540373, 35.932938, 36.172695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568008, 36.164352, 36.230000>,  <28.614067, 36.550045, 36.325504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568008, 36.164352, 36.230000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855338, 0.218462, -0.469756,
		0.505112, 0.150132, -0.849895,
		-0.115145, -0.964227, -0.238762,
		28.533464, 35.875084, 36.158371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264570, 36.464233, 35.731636>,  <28.614067, 36.550045, 36.325504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264570, 36.464233, 35.731636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180302, 36.102066, 35.879063>,  <28.129740, 35.884766, 35.967518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180302, 36.102066, 35.879063>,  <28.264570, 36.464233, 35.731636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180302, 36.102066, 35.879063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877375, 0.008865, -0.479724,
		0.431081, -0.424437, -0.796255,
		-0.210671, -0.905414, 0.368568,
		28.117100, 35.830441, 35.989632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259897, 36.105911, 35.146835>,  <28.264570, 36.464233, 35.731636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259897, 36.105911, 35.146835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055109, 35.895676, 35.418610>,  <27.932236, 35.769535, 35.581676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055109, 35.895676, 35.418610>,  <28.259897, 36.105911, 35.146835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055109, 35.895676, 35.418610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757740, -0.096239, -0.645421,
		0.404617, -0.845275, -0.348990,
		-0.511972, -0.525592, 0.679439,
		27.901518, 35.737999, 35.622440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085121, 35.457470, 34.830021>,  <28.259897, 36.105911, 35.146835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085121, 35.457470, 34.830021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834976, 35.563381, 35.123638>,  <27.684889, 35.626926, 35.299809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834976, 35.563381, 35.123638>,  <28.085121, 35.457470, 34.830021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834976, 35.563381, 35.123638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770961, -0.064285, -0.633630,
		-0.120584, -0.962164, 0.244336,
		-0.625363, 0.264779, 0.734039,
		27.647367, 35.642815, 35.343849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564774, 34.963562, 34.752125>,  <28.085121, 35.457470, 34.830021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.564774, 34.963562, 34.752125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423458, 35.282234, 34.948284>,  <27.338669, 35.473438, 35.065979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423458, 35.282234, 34.948284>,  <27.564774, 34.963562, 34.752125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423458, 35.282234, 34.948284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848848, -0.052637, -0.526010,
		-0.393246, -0.602110, 0.694853,
		-0.353291, 0.796676, 0.490400,
		27.317471, 35.521236, 35.095406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938238, 34.720634, 34.954292>,  <27.564774, 34.963562, 34.752125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938238, 34.720634, 34.954292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919552, 35.120022, 34.966118>,  <26.908340, 35.359653, 34.973213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919552, 35.120022, 34.966118>,  <26.938238, 34.720634, 34.954292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919552, 35.120022, 34.966118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941043, -0.034063, -0.336567,
		-0.335045, -0.043547, 0.941195,
		-0.046716, 0.998471, 0.029567,
		26.905537, 35.419563, 34.974987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234222, 34.910286, 35.081120>,  <26.938238, 34.720634, 34.954292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234222, 34.910286, 35.081120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393682, 35.268112, 35.161953>,  <26.489359, 35.482807, 35.210453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393682, 35.268112, 35.161953>,  <26.234222, 34.910286, 35.081120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393682, 35.268112, 35.161953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906453, 0.417819, -0.061410,
		-0.139369, -0.158696, 0.977442,
		0.398648, 0.894563, 0.202081,
		26.513277, 35.536480, 35.222576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759748, 35.067539, 35.536182>,  <26.234222, 34.910286, 35.081120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759748, 35.067539, 35.536182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964190, 35.366917, 35.367138>,  <26.086855, 35.546543, 35.265709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964190, 35.366917, 35.367138>,  <25.759748, 35.067539, 35.536182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.964190, 35.366917, 35.367138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848413, 0.518090, -0.108525,
		0.137728, 0.414019, 0.899788,
		0.511102, 0.748446, -0.422615,
		26.117519, 35.591450, 35.240353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.885218, 35.572220, 36.164528>,  <25.759748, 35.067539, 35.536182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.885218, 35.572220, 36.164528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066853, 35.776424, 35.872452>,  <26.175835, 35.898949, 35.697205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066853, 35.776424, 35.872452>,  <25.885218, 35.572220, 36.164528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.066853, 35.776424, 35.872452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867786, 0.439117, -0.232646,
		0.201871, 0.739292, 0.642414,
		0.454088, 0.510513, -0.730192,
		26.203079, 35.929577, 35.653393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.827822, 36.254463, 36.314571>,  <25.885218, 35.572220, 36.164528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.827822, 36.254463, 36.314571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.887918, 36.218639, 35.920738>,  <25.923977, 36.197144, 35.684437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.887918, 36.218639, 35.920738>,  <25.827822, 36.254463, 36.314571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.887918, 36.218639, 35.920738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894425, 0.411996, -0.173963,
		0.421225, 0.906773, -0.018207,
		0.150244, -0.089562, -0.984584,
		25.932991, 36.191772, 35.625362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742638, 36.865982, 36.000423>,  <25.827822, 36.254463, 36.314571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742638, 36.865982, 36.000423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673939, 36.601826, 35.708015>,  <25.632719, 36.443333, 35.532570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673939, 36.601826, 35.708015>,  <25.742638, 36.865982, 36.000423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673939, 36.601826, 35.708015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851484, 0.472706, -0.226988,
		0.495457, 0.583465, -0.643500,
		-0.171747, -0.660392, -0.731016,
		25.622414, 36.403709, 35.488712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.483961, 37.259476, 35.363132>,  <25.742638, 36.865982, 36.000423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.483961, 37.259476, 35.363132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408682, 36.884159, 35.247063>,  <25.363514, 36.658970, 35.177422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408682, 36.884159, 35.247063>,  <25.483961, 37.259476, 35.363132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.408682, 36.884159, 35.247063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721150, 0.332589, -0.607723,
		0.666726, 0.094882, -0.739239,
		-0.188200, -0.938287, -0.290170,
		25.352222, 36.602673, 35.160011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.568974, 37.098770, 34.608646>,  <25.483961, 37.259476, 35.363132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.568974, 37.098770, 34.608646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278343, 36.930439, 34.825897>,  <25.103966, 36.829441, 34.956249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278343, 36.930439, 34.825897>,  <25.568974, 37.098770, 34.608646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.278343, 36.930439, 34.825897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665422, 0.627920, -0.403646,
		-0.171177, -0.654691, -0.736260,
		-0.726575, -0.420828, 0.543131,
		25.060371, 36.804192, 34.988838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217037, 37.605160, 34.418159>,  <25.568974, 37.098770, 34.608646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217037, 37.605160, 34.418159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533226, 37.737564, 34.212021>,  <26.722939, 37.817009, 34.088337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533226, 37.737564, 34.212021>,  <26.217037, 37.605160, 34.418159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.533226, 37.737564, 34.212021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457885, -0.239473, -0.856151,
		-0.406810, 0.912733, -0.037730,
		0.790473, 0.331014, -0.515347,
		26.770369, 37.836868, 34.057415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.914719, 37.799248, 33.849358>,  <26.217037, 37.605160, 34.418159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.914719, 37.799248, 33.849358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304688, 37.793308, 33.760536>,  <26.538668, 37.789745, 33.707241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304688, 37.793308, 33.760536>,  <25.914719, 37.799248, 33.849358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304688, 37.793308, 33.760536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215083, -0.319194, -0.922960,
		-0.057172, 0.947573, -0.314383,
		0.974921, -0.014851, -0.222056,
		26.597164, 37.788853, 33.693920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.911379, 38.124199, 33.080372>,  <25.914719, 37.799248, 33.849358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.911379, 38.124199, 33.080372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243330, 37.919659, 33.169655>,  <26.442501, 37.796936, 33.223225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243330, 37.919659, 33.169655>,  <25.911379, 38.124199, 33.080372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243330, 37.919659, 33.169655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021938, -0.369845, -0.928834,
		0.557513, 0.775716, -0.295709,
		0.829878, -0.511350, 0.223211,
		26.492294, 37.766254, 33.236618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499128, 38.243252, 32.548237>,  <25.911379, 38.124199, 33.080372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499128, 38.243252, 32.548237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.525812, 37.881786, 32.717442>,  <26.541822, 37.664906, 32.818966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.525812, 37.881786, 32.717442>,  <26.499128, 38.243252, 32.548237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.525812, 37.881786, 32.717442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006495, -0.423555, -0.905847,
		0.997751, 0.063178, -0.022387,
		0.066712, -0.903664, 0.423013,
		26.545826, 37.610687, 32.844345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144436, 37.932503, 32.280762>,  <26.499128, 38.243252, 32.548237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144436, 37.932503, 32.280762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913784, 37.627800, 32.398899>,  <26.775393, 37.444981, 32.469780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913784, 37.627800, 32.398899>,  <27.144436, 37.932503, 32.280762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913784, 37.627800, 32.398899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018368, -0.373488, -0.927453,
		0.816798, -0.529373, 0.229356,
		-0.576631, -0.761755, 0.295341,
		26.740795, 37.399273, 32.487503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635796, 37.433254, 32.023922>,  <27.144436, 37.932503, 32.280762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635796, 37.433254, 32.023922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282238, 37.256401, 32.084911>,  <27.070103, 37.150288, 32.121506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282238, 37.256401, 32.084911>,  <27.635796, 37.433254, 32.023922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282238, 37.256401, 32.084911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115414, -0.522147, -0.845010,
		0.453221, -0.729303, 0.512551,
		-0.883895, -0.442132, 0.152476,
		27.017069, 37.123760, 32.130653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697336, 36.675220, 32.017151>,  <27.635796, 37.433254, 32.023922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697336, 36.675220, 32.017151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.330902, 36.797642, 31.913519>,  <27.111042, 36.871094, 31.851339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.330902, 36.797642, 31.913519>,  <27.697336, 36.675220, 32.017151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.330902, 36.797642, 31.913519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036551, -0.579687, -0.814019,
		-0.399318, -0.755179, 0.519855,
		-0.916084, 0.306051, -0.259082,
		27.056078, 36.889458, 31.835794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384695, 36.199463, 31.553709>,  <27.697336, 36.675220, 32.017151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384695, 36.199463, 31.553709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114759, 36.481640, 31.467037>,  <26.952799, 36.650944, 31.415033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114759, 36.481640, 31.467037>,  <27.384695, 36.199463, 31.553709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114759, 36.481640, 31.467037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039169, -0.258963, -0.965093,
		-0.736927, -0.659767, 0.147126,
		-0.674836, 0.705440, -0.216679,
		26.912308, 36.693272, 31.402033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791334, 35.931648, 31.193130>,  <27.384695, 36.199463, 31.553709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791334, 35.931648, 31.193130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815845, 36.317265, 31.089689>,  <26.830553, 36.548634, 31.027624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815845, 36.317265, 31.089689>,  <26.791334, 35.931648, 31.193130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815845, 36.317265, 31.089689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009940, -0.258490, -0.965963,
		-0.998071, 0.061764, -0.006258,
		0.061279, 0.964038, -0.258605,
		26.834229, 36.606476, 31.012108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151960, 35.593998, 30.916731>,  <26.791334, 35.931648, 31.193130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.151960, 35.593998, 30.916731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254086, 35.207260, 30.918745>,  <26.315361, 34.975216, 30.919954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254086, 35.207260, 30.918745>,  <26.151960, 35.593998, 30.916731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254086, 35.207260, 30.918745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275841, -0.077831, -0.958047,
		0.926675, 0.243212, -0.286567,
		0.255313, -0.966845, 0.005036,
		26.330679, 34.917206, 30.920256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690626, 35.346260, 30.513992>,  <26.151960, 35.593998, 30.916731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690626, 35.346260, 30.513992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084429, 35.291679, 30.558048>,  <27.320709, 35.258930, 30.584482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084429, 35.291679, 30.558048>,  <26.690626, 35.346260, 30.513992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084429, 35.291679, 30.558048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152393, -0.976495, 0.152425,
		0.086751, -0.166847, -0.982159,
		0.984505, -0.136451, 0.110138,
		27.379780, 35.250744, 30.591089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295277, 35.074726, 29.930771>,  <26.690626, 35.346260, 30.513992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.295277, 35.074726, 29.930771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060318, 35.361912, 29.781378>,  <25.919342, 35.534225, 29.691742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060318, 35.361912, 29.781378>,  <26.295277, 35.074726, 29.930771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.060318, 35.361912, 29.781378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354121, 0.642983, 0.679096,
		0.727711, 0.266640, -0.631933,
		-0.587397, 0.717967, -0.373483,
		25.884100, 35.577301, 29.669333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630062, 35.608807, 29.763878>,  <26.295277, 35.074726, 29.930771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630062, 35.608807, 29.763878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267609, 35.744125, 29.865448>,  <26.050137, 35.825317, 29.926390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267609, 35.744125, 29.865448>,  <26.630062, 35.608807, 29.763878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267609, 35.744125, 29.865448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422738, 0.703335, 0.571500,
		0.014743, 0.625199, -0.780326,
		-0.906132, 0.338299, 0.253926,
		25.995770, 35.845615, 29.941626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635204, 36.345184, 29.659203>,  <26.630062, 35.608807, 29.763878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635204, 36.345184, 29.659203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.384651, 36.259834, 29.959101>,  <26.234320, 36.208622, 30.139040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.384651, 36.259834, 29.959101>,  <26.635204, 36.345184, 29.659203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.384651, 36.259834, 29.959101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526064, 0.594051, 0.608572,
		-0.575242, 0.775612, -0.259853,
		-0.626382, -0.213378, 0.749744,
		26.196737, 36.195820, 30.184025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568453, 36.943291, 30.015423>,  <26.635204, 36.345184, 29.659203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568453, 36.943291, 30.015423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436245, 36.653496, 30.257372>,  <26.356920, 36.479618, 30.402542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436245, 36.653496, 30.257372>,  <26.568453, 36.943291, 30.015423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436245, 36.653496, 30.257372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257565, 0.547327, 0.796300,
		-0.907974, 0.418988, 0.005700,
		-0.330520, -0.724488, 0.604875,
		26.337090, 36.436150, 30.438835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579008, 37.185616, 30.718317>,  <26.568453, 36.943291, 30.015423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579008, 37.185616, 30.718317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404224, 36.846828, 30.839453>,  <26.299355, 36.643555, 30.912134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404224, 36.846828, 30.839453>,  <26.579008, 37.185616, 30.718317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404224, 36.846828, 30.839453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048766, 0.358492, 0.932258,
		-0.898159, 0.392590, -0.197949,
		-0.436959, -0.846969, 0.302838,
		26.273136, 36.592739, 30.930304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186563, 37.373230, 31.211239>,  <26.579008, 37.185616, 30.718317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186563, 37.373230, 31.211239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253006, 36.984116, 31.275866>,  <26.292871, 36.750648, 31.314642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253006, 36.984116, 31.275866>,  <26.186563, 37.373230, 31.211239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253006, 36.984116, 31.275866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040438, 0.156984, 0.986773,
		-0.985278, -0.170444, -0.013261,
		0.166108, -0.972782, 0.161565,
		26.302839, 36.692280, 31.324335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.785435, 37.132713, 31.804699>,  <26.186563, 37.373230, 31.211239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.785435, 37.132713, 31.804699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127802, 36.928127, 31.835199>,  <26.333221, 36.805378, 31.853500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127802, 36.928127, 31.835199>,  <25.785435, 37.132713, 31.804699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.127802, 36.928127, 31.835199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062047, 0.247968, 0.966779,
		-0.513378, -0.822751, 0.243974,
		0.855916, -0.511461, 0.076252,
		26.384577, 36.774689, 31.858074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776699, 36.570332, 32.381020>,  <25.785435, 37.132713, 31.804699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776699, 36.570332, 32.381020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143793, 36.719421, 32.326115>,  <26.364050, 36.808876, 32.293171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143793, 36.719421, 32.326115>,  <25.776699, 36.570332, 32.381020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143793, 36.719421, 32.326115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054856, 0.223333, 0.973197,
		0.393388, -0.900666, 0.184514,
		0.917735, 0.372723, -0.137264,
		26.419113, 36.831238, 32.284935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132109, 36.385067, 32.925159>,  <25.776699, 36.570332, 32.381020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132109, 36.385067, 32.925159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336334, 36.706520, 32.802849>,  <26.458870, 36.899391, 32.729462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336334, 36.706520, 32.802849>,  <26.132109, 36.385067, 32.925159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336334, 36.706520, 32.802849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066955, 0.391701, 0.917653,
		0.857230, -0.448046, 0.253795,
		0.510562, 0.803633, -0.305779,
		26.489504, 36.947609, 32.711117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562435, 36.484188, 33.466244>,  <26.132109, 36.385067, 32.925159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.562435, 36.484188, 33.466244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.531954, 36.840153, 33.286358>,  <26.513664, 37.053734, 33.178425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.531954, 36.840153, 33.286358>,  <26.562435, 36.484188, 33.466244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.531954, 36.840153, 33.286358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009623, 0.451661, 0.892138,
		0.997046, 0.063657, -0.042982,
		-0.076204, 0.889916, -0.449714,
		26.509092, 37.107128, 33.151443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078228, 36.829121, 33.595089>,  <26.562435, 36.484188, 33.466244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078228, 36.829121, 33.595089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760778, 37.061436, 33.522594>,  <26.570309, 37.200825, 33.479095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760778, 37.061436, 33.522594>,  <27.078228, 36.829121, 33.595089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.760778, 37.061436, 33.522594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053902, 0.363839, 0.929901,
		0.606016, 0.728222, -0.320057,
		-0.793624, 0.580787, -0.181240,
		26.522692, 37.235672, 33.468224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243811, 37.579979, 33.606430>,  <27.078228, 36.829121, 33.595089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243811, 37.579979, 33.606430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864534, 37.552502, 33.730507>,  <26.636969, 37.536015, 33.804955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864534, 37.552502, 33.730507>,  <27.243811, 37.579979, 33.606430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864534, 37.552502, 33.730507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229251, 0.528022, 0.817702,
		-0.219956, 0.846448, -0.484918,
		-0.948190, -0.068690, 0.310191,
		26.580078, 37.531895, 33.823563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697273, 38.146236, 33.553375>,  <27.243811, 37.579979, 33.606430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697273, 38.146236, 33.553375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.814814, 37.998104, 33.905853>,  <27.885338, 37.909225, 34.117340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.814814, 37.998104, 33.905853>,  <27.697273, 38.146236, 33.553375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814814, 37.998104, 33.905853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946110, -0.018598, -0.323311,
		0.136120, 0.928715, 0.344904,
		0.293849, -0.370326, 0.881199,
		27.902967, 37.887005, 34.170212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106625, 38.592484, 34.011379>,  <27.697273, 38.146236, 33.553375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106625, 38.592484, 34.011379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187477, 38.200890, 34.022186>,  <28.235989, 37.965935, 34.028671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187477, 38.200890, 34.022186>,  <28.106625, 38.592484, 34.011379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187477, 38.200890, 34.022186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861874, 0.164713, -0.479627,
		0.465098, 0.120233, 0.877056,
		0.202130, -0.978986, 0.027018,
		28.248116, 37.907192, 34.030293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753056, 38.524738, 34.274704>,  <28.106625, 38.592484, 34.011379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753056, 38.524738, 34.274704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664349, 38.200378, 34.058086>,  <28.611124, 38.005764, 33.928116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664349, 38.200378, 34.058086>,  <28.753056, 38.524738, 34.274704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664349, 38.200378, 34.058086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875837, 0.078482, -0.476183,
		0.428636, -0.579901, 0.692810,
		-0.221766, -0.810898, -0.541539,
		28.597818, 37.957108, 33.895626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669502, 38.188393, 34.946259>,  <28.753056, 38.524738, 34.274704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669502, 38.188393, 34.946259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573071, 37.822758, 35.076691>,  <28.515211, 37.603378, 35.154949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573071, 37.822758, 35.076691>,  <28.669502, 38.188393, 34.946259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573071, 37.822758, 35.076691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743808, -0.041796, -0.667086,
		0.623402, -0.403361, -0.669828,
		-0.241081, -0.914086, 0.326079,
		28.500746, 37.548531, 35.174515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154545, 38.131832, 35.471756>,  <28.669502, 38.188393, 34.946259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154545, 38.131832, 35.471756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362644, 38.175850, 35.132999>,  <29.487505, 38.202259, 34.929745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362644, 38.175850, 35.132999>,  <29.154545, 38.131832, 35.471756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362644, 38.175850, 35.132999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215330, 0.976527, -0.005394,
		0.826422, 0.185168, 0.531733,
		0.520250, 0.110041, -0.846895,
		29.518719, 38.208862, 34.878929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730949, 38.737206, 35.608650>,  <29.154545, 38.131832, 35.471756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730949, 38.737206, 35.608650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625925, 38.673195, 35.228027>,  <29.562910, 38.634789, 34.999653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625925, 38.673195, 35.228027>,  <29.730949, 38.737206, 35.608650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625925, 38.673195, 35.228027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279095, 0.956595, -0.083863,
		0.923671, 0.243554, -0.295828,
		-0.262562, -0.160026, -0.951553,
		29.547157, 38.625187, 34.942562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318407, 38.288971, 35.237408>,  <29.730949, 38.737206, 35.608650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318407, 38.288971, 35.237408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682396, 38.454811, 35.240406>,  <30.900789, 38.554314, 35.242203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682396, 38.454811, 35.240406>,  <30.318407, 38.288971, 35.237408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682396, 38.454811, 35.240406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230766, -0.521342, 0.821553,
		0.344520, -0.745863, -0.570083,
		0.909974, 0.414597, 0.007492,
		30.955389, 38.579189, 35.242653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754942, 37.671822, 35.336975>,  <30.318407, 38.288971, 35.237408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754942, 37.671822, 35.336975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944304, 38.009781, 35.436604>,  <31.057920, 38.212555, 35.496380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944304, 38.009781, 35.436604>,  <30.754942, 37.671822, 35.336975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944304, 38.009781, 35.436604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504495, -0.491864, 0.709616,
		0.722062, -0.210281, -0.659097,
		0.473404, 0.844898, 0.249071,
		31.086325, 38.263248, 35.511326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465128, 37.548107, 35.601276>,  <30.754942, 37.671822, 35.336975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465128, 37.548107, 35.601276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250298, 37.294857, 35.378315>,  <31.121399, 37.142906, 35.244537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250298, 37.294857, 35.378315>,  <31.465128, 37.548107, 35.601276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250298, 37.294857, 35.378315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425516, 0.367218, -0.827096,
		0.728346, -0.681397, 0.072183,
		-0.537074, -0.633126, -0.557407,
		31.089176, 37.104919, 35.211094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445877, 36.791847, 35.653378>,  <31.465128, 37.548107, 35.601276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445877, 36.791847, 35.653378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397985, 36.977676, 35.302418>,  <31.369249, 37.089176, 35.091843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397985, 36.977676, 35.302418>,  <31.445877, 36.791847, 35.653378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397985, 36.977676, 35.302418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845823, -0.510486, -0.154878,
		-0.519854, 0.723583, 0.454071,
		-0.119730, 0.464577, -0.877401,
		31.362066, 37.117050, 35.039196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005337, 36.403049, 35.774933>,  <31.445877, 36.791847, 35.653378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005337, 36.403049, 35.774933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253723, 36.276402, 35.488117>,  <32.402756, 36.200413, 35.316029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253723, 36.276402, 35.488117>,  <32.005337, 36.403049, 35.774933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253723, 36.276402, 35.488117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518095, 0.852258, 0.072346,
		0.588198, -0.416420, 0.693265,
		0.620968, -0.316623, -0.717042,
		32.440014, 36.181416, 35.273006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057732, 36.362450, 34.995121>,  <32.005337, 36.403049, 35.774933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057732, 36.362450, 34.995121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297100, 36.317486, 35.312424>,  <32.440720, 36.290508, 35.502804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297100, 36.317486, 35.312424>,  <32.057732, 36.362450, 34.995121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297100, 36.317486, 35.312424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492254, -0.729596, -0.474738,
		0.632123, 0.674577, -0.381270,
		0.598420, -0.112412, 0.793257,
		32.476627, 36.283764, 35.550400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768745, 36.618774, 35.018154>,  <32.057732, 36.362450, 34.995121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768745, 36.618774, 35.018154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734356, 36.294868, 35.250320>,  <32.713722, 36.100525, 35.389622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734356, 36.294868, 35.250320>,  <32.768745, 36.618774, 35.018154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734356, 36.294868, 35.250320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668601, -0.478802, -0.568965,
		0.738635, 0.339153, 0.582575,
		-0.085972, -0.809767, 0.580418,
		32.708565, 36.051937, 35.424446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266888, 36.194794, 34.671432>,  <32.768745, 36.618774, 35.018154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266888, 36.194794, 34.671432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114044, 35.991291, 34.980019>,  <33.022339, 35.869190, 35.165169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114044, 35.991291, 34.980019>,  <33.266888, 36.194794, 34.671432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114044, 35.991291, 34.980019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308813, -0.857119, -0.412289,
		0.870993, 0.080700, 0.484623,
		-0.382108, -0.508758, 0.771465,
		32.999413, 35.838665, 35.211456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805073, 35.660160, 35.005779>,  <33.266888, 36.194794, 34.671432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805073, 35.660160, 35.005779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415424, 35.571232, 35.022072>,  <33.181637, 35.517876, 35.031849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415424, 35.571232, 35.022072>,  <33.805073, 35.660160, 35.005779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415424, 35.571232, 35.022072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179070, -0.869087, -0.461109,
		0.137915, -0.441883, 0.886408,
		-0.974122, -0.222323, 0.040732,
		33.123188, 35.504536, 35.034290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774746, 34.945969, 35.177174>,  <33.805073, 35.660160, 35.005779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774746, 34.945969, 35.177174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423717, 35.060986, 35.023712>,  <33.213100, 35.129997, 34.931637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423717, 35.060986, 35.023712>,  <33.774746, 34.945969, 35.177174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423717, 35.060986, 35.023712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070343, -0.868753, -0.490225,
		-0.474257, -0.403220, 0.782620,
		-0.877572, 0.287544, -0.383649,
		33.160446, 35.147247, 34.908619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255447, 34.454628, 35.406727>,  <33.774746, 34.945969, 35.177174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255447, 34.454628, 35.406727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166645, 34.598499, 35.044216>,  <33.113365, 34.684822, 34.826710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166645, 34.598499, 35.044216>,  <33.255447, 34.454628, 35.406727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166645, 34.598499, 35.044216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198535, -0.893327, -0.403175,
		-0.954620, -0.269435, 0.126911,
		-0.222003, 0.359682, -0.906280,
		33.100044, 34.706406, 34.772331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994377, 33.857925, 35.071766>,  <33.255447, 34.454628, 35.406727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994377, 33.857925, 35.071766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094776, 34.112225, 34.779789>,  <33.155014, 34.264805, 34.604603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094776, 34.112225, 34.779789>,  <32.994377, 33.857925, 35.071766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094776, 34.112225, 34.779789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400050, -0.754803, -0.519839,
		-0.881453, -0.161536, -0.443786,
		0.250999, 0.635750, -0.729946,
		33.170074, 34.302948, 34.560806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791019, 33.536064, 34.370884>,  <32.994377, 33.857925, 35.071766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791019, 33.536064, 34.370884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070889, 33.811218, 34.293667>,  <33.238811, 33.976311, 34.247337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070889, 33.811218, 34.293667>,  <32.791019, 33.536064, 34.370884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070889, 33.811218, 34.293667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419286, -0.614114, -0.668628,
		-0.578492, 0.386882, -0.718101,
		0.699676, 0.687886, -0.193046,
		33.280792, 34.017586, 34.235752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813873, 33.638836, 33.626396>,  <32.791019, 33.536064, 34.370884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813873, 33.638836, 33.626396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157818, 33.707249, 33.818810>,  <33.364185, 33.748295, 33.934258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157818, 33.707249, 33.818810>,  <32.813873, 33.638836, 33.626396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157818, 33.707249, 33.818810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499867, -0.473639, -0.725120,
		0.103818, 0.863953, -0.492755,
		0.859858, 0.171031, 0.481033,
		33.415775, 33.758556, 33.963120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359966, 33.591022, 33.137180>,  <32.813873, 33.638836, 33.626396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359966, 33.591022, 33.137180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639938, 33.620373, 33.421352>,  <33.807922, 33.637981, 33.591858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639938, 33.620373, 33.421352>,  <33.359966, 33.591022, 33.137180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639938, 33.620373, 33.421352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650324, -0.476695, -0.591473,
		0.295260, 0.876001, -0.381371,
		0.699928, 0.073376, 0.710434,
		33.849918, 33.642387, 33.634483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107216, 33.965794, 32.870434>,  <33.359966, 33.591022, 33.137180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107216, 33.965794, 32.870434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145523, 33.690891, 33.158466>,  <34.168507, 33.525951, 33.331284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145523, 33.690891, 33.158466>,  <34.107216, 33.965794, 32.870434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145523, 33.690891, 33.158466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732956, -0.440776, -0.518163,
		0.673502, 0.577408, 0.461514,
		0.095767, -0.687253, 0.720078,
		34.174252, 33.484715, 33.374489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748768, 33.889603, 32.747307>,  <34.107216, 33.965794, 32.870434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748768, 33.889603, 32.747307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675793, 33.580711, 32.990742>,  <34.632008, 33.395378, 33.136803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675793, 33.580711, 32.990742>,  <34.748768, 33.889603, 32.747307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675793, 33.580711, 32.990742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617500, -0.571668, -0.540268,
		0.765121, 0.277240, 0.581143,
		-0.182437, -0.772226, 0.608591,
		34.621063, 33.349045, 33.173321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374397, 33.564941, 33.015572>,  <34.748768, 33.889603, 32.747307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374397, 33.564941, 33.015572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085526, 33.289276, 33.039265>,  <34.912201, 33.123878, 33.053482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085526, 33.289276, 33.039265>,  <35.374397, 33.564941, 33.015572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085526, 33.289276, 33.039265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568813, -0.640423, -0.516053,
		0.393580, -0.338990, 0.854506,
		-0.722182, -0.689162, 0.059236,
		34.868870, 33.082527, 33.057037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649090, 32.815739, 33.081387>,  <35.374397, 33.564941, 33.015572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649090, 32.815739, 33.081387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275906, 32.793480, 32.939129>,  <35.051994, 32.780125, 32.853775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275906, 32.793480, 32.939129>,  <35.649090, 32.815739, 33.081387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275906, 32.793480, 32.939129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276122, -0.744477, -0.607874,
		-0.230939, -0.665325, 0.709936,
		-0.932965, -0.055647, -0.355640,
		34.996017, 32.776787, 32.832436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675747, 32.138142, 32.805813>,  <35.649090, 32.815739, 33.081387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675747, 32.138142, 32.805813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324409, 32.263412, 32.661354>,  <35.113605, 32.338577, 32.574680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324409, 32.263412, 32.661354>,  <35.675747, 32.138142, 32.805813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324409, 32.263412, 32.661354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103700, -0.612670, -0.783506,
		-0.466643, -0.725640, 0.505659,
		-0.878345, 0.313181, -0.361147,
		35.060905, 32.357368, 32.553009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138016, 31.549772, 32.759262>,  <35.675747, 32.138142, 32.805813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138016, 31.549772, 32.759262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999241, 31.805382, 32.484661>,  <34.915974, 31.958748, 32.319901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999241, 31.805382, 32.484661>,  <35.138016, 31.549772, 32.759262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999241, 31.805382, 32.484661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125590, -0.693719, -0.709212,
		-0.929441, -0.332271, 0.160424,
		-0.346940, 0.639023, -0.686500,
		34.895157, 31.997089, 32.278709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711624, 31.137972, 32.266697>,  <35.138016, 31.549772, 32.759262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711624, 31.137972, 32.266697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783733, 31.477129, 32.067268>,  <34.827000, 31.680624, 31.947611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783733, 31.477129, 32.067268>,  <34.711624, 31.137972, 32.266697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783733, 31.477129, 32.067268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057870, -0.515143, -0.855148,
		-0.981913, 0.125308, -0.141934,
		0.180274, 0.847894, -0.498574,
		34.837814, 31.731497, 31.917696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184586, 31.139366, 31.824169>,  <34.711624, 31.137972, 32.266697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184586, 31.139366, 31.824169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450130, 31.387438, 31.657000>,  <34.609459, 31.536280, 31.556698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450130, 31.387438, 31.657000>,  <34.184586, 31.139366, 31.824169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450130, 31.387438, 31.657000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222292, -0.369937, -0.902071,
		-0.714051, 0.691756, -0.107728,
		0.663866, 0.620178, -0.417926,
		34.649292, 31.573492, 31.531622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804905, 31.435534, 31.290146>,  <34.184586, 31.139366, 31.824169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804905, 31.435534, 31.290146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189522, 31.492767, 31.196367>,  <34.420292, 31.527107, 31.140100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189522, 31.492767, 31.196367>,  <33.804905, 31.435534, 31.290146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189522, 31.492767, 31.196367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218024, -0.121511, -0.968350,
		-0.167046, 0.982223, -0.085641,
		0.961541, 0.143087, -0.234446,
		34.477985, 31.535694, 31.126034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760666, 31.779787, 30.583784>,  <33.804905, 31.435534, 31.290146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760666, 31.779787, 30.583784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134415, 31.648720, 30.639757>,  <34.358665, 31.570080, 30.673342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134415, 31.648720, 30.639757>,  <33.760666, 31.779787, 30.583784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134415, 31.648720, 30.639757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005964, -0.378303, -0.925663,
		0.356247, 0.865749, -0.351522,
		0.934373, -0.327668, 0.139933,
		34.414726, 31.550419, 30.681736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222404, 31.963064, 29.980017>,  <33.760666, 31.779787, 30.583784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222404, 31.963064, 29.980017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374878, 31.634216, 30.149164>,  <34.466362, 31.436907, 30.250652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374878, 31.634216, 30.149164>,  <34.222404, 31.963064, 29.980017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374878, 31.634216, 30.149164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024134, -0.448399, -0.893508,
		0.924184, 0.350797, -0.151082,
		0.381185, -0.822119, 0.422869,
		34.489235, 31.387581, 30.276026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783836, 31.743313, 29.522579>,  <34.222404, 31.963064, 29.980017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783836, 31.743313, 29.522579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686451, 31.425261, 29.744747>,  <34.628017, 31.234428, 29.878048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686451, 31.425261, 29.744747>,  <34.783836, 31.743313, 29.522579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686451, 31.425261, 29.744747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002257, -0.572183, -0.820123,
		0.969907, -0.200925, 0.137512,
		-0.243465, -0.795132, 0.555418,
		34.613411, 31.186720, 29.911373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264793, 31.181068, 29.465246>,  <34.783836, 31.743313, 29.522579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264793, 31.181068, 29.465246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957748, 30.949051, 29.574291>,  <34.773521, 30.809841, 29.639719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957748, 30.949051, 29.574291>,  <35.264793, 31.181068, 29.465246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957748, 30.949051, 29.574291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116740, -0.544777, -0.830415,
		0.630190, -0.605614, 0.485893,
		-0.767615, -0.580042, 0.272613,
		34.727463, 30.775038, 29.656075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509880, 30.487242, 29.388632>,  <35.264793, 31.181068, 29.465246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509880, 30.487242, 29.388632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113487, 30.439337, 29.412697>,  <34.875652, 30.410593, 29.427135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113487, 30.439337, 29.412697>,  <35.509880, 30.487242, 29.388632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113487, 30.439337, 29.412697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040368, -0.694756, -0.718111,
		0.127800, -0.709204, 0.693323,
		-0.990978, -0.119763, 0.060161,
		34.816193, 30.403408, 29.430744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345718, 29.783766, 29.201706>,  <35.509880, 30.487242, 29.388632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345718, 29.783766, 29.201706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987022, 29.959145, 29.177633>,  <34.771805, 30.064373, 29.163189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987022, 29.959145, 29.177633>,  <35.345718, 29.783766, 29.201706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987022, 29.959145, 29.177633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276799, -0.661759, -0.696748,
		-0.345313, -0.608143, 0.714787,
		-0.896739, 0.438449, -0.060181,
		34.718002, 30.090679, 29.159578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776089, 29.265409, 29.256321>,  <35.345718, 29.783766, 29.201706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776089, 29.265409, 29.256321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646267, 29.588062, 29.058731>,  <34.568375, 29.781654, 28.940178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646267, 29.588062, 29.058731>,  <34.776089, 29.265409, 29.256321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646267, 29.588062, 29.058731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297015, -0.582742, -0.756435,
		-0.898023, -0.098788, 0.428714,
		-0.324556, 0.806630, -0.493974,
		34.548901, 29.830051, 28.910540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143814, 29.042442, 28.930332>,  <34.776089, 29.265409, 29.256321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143814, 29.042442, 28.930332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247971, 29.375238, 28.734377>,  <34.310467, 29.574915, 28.616804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247971, 29.375238, 28.734377>,  <34.143814, 29.042442, 28.930332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247971, 29.375238, 28.734377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307563, -0.409479, -0.858913,
		-0.915204, 0.374329, 0.149262,
		0.260396, 0.831989, -0.489887,
		34.326088, 29.624834, 28.587410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664494, 29.041824, 28.426338>,  <34.143814, 29.042442, 28.930332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664494, 29.041824, 28.426338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956181, 29.275974, 28.284592>,  <34.131195, 29.416464, 28.199543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956181, 29.275974, 28.284592>,  <33.664494, 29.041824, 28.426338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956181, 29.275974, 28.284592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334520, -0.146806, -0.930883,
		-0.596939, 0.797361, 0.088765,
		0.729219, 0.585374, -0.354367,
		34.174946, 29.451586, 28.178282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332726, 29.357250, 27.909836>,  <33.664494, 29.041824, 28.426338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332726, 29.357250, 27.909836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715664, 29.420254, 27.812948>,  <33.945427, 29.458055, 27.754816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715664, 29.420254, 27.812948>,  <33.332726, 29.357250, 27.909836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715664, 29.420254, 27.812948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179860, -0.331208, -0.926257,
		-0.226121, 0.930318, -0.288753,
		0.957350, 0.157511, -0.242220,
		34.002869, 29.467506, 27.740282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255917, 29.853876, 27.301842>,  <33.332726, 29.357250, 27.909836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255917, 29.853876, 27.301842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615883, 29.679760, 27.312185>,  <33.831863, 29.575291, 27.318392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615883, 29.679760, 27.312185>,  <33.255917, 29.853876, 27.301842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615883, 29.679760, 27.312185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107269, -0.278468, -0.954437,
		0.422656, 0.856142, -0.297291,
		0.899920, -0.435288, 0.025859,
		33.885860, 29.549173, 27.319942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432121, 29.939367, 26.657398>,  <33.255917, 29.853876, 27.301842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432121, 29.939367, 26.657398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682781, 29.653194, 26.780991>,  <33.833176, 29.481491, 26.855146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682781, 29.653194, 26.780991>,  <33.432121, 29.939367, 26.657398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682781, 29.653194, 26.780991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082395, -0.455088, -0.886626,
		0.774933, 0.530145, -0.344128,
		0.626649, -0.715431, 0.308981,
		33.870777, 29.438564, 26.873686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972523, 29.928154, 26.155041>,  <33.432121, 29.939367, 26.657398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972523, 29.928154, 26.155041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019802, 29.575029, 26.336885>,  <34.048168, 29.363153, 26.445992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019802, 29.575029, 26.336885>,  <33.972523, 29.928154, 26.155041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019802, 29.575029, 26.336885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026827, -0.460492, -0.887258,
		0.992628, 0.092673, -0.078111,
		0.118195, -0.882813, 0.454611,
		34.055260, 29.310186, 26.473269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597149, 29.519474, 25.835472>,  <33.972523, 29.928154, 26.155041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597149, 29.519474, 25.835472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390121, 29.211121, 25.983992>,  <34.265903, 29.026108, 26.073103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390121, 29.211121, 25.983992>,  <34.597149, 29.519474, 25.835472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390121, 29.211121, 25.983992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083752, -0.386215, -0.918599,
		0.851534, -0.506534, 0.135329,
		-0.517567, -0.770884, 0.371298,
		34.234852, 28.979855, 26.095381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857674, 28.960312, 25.619165>,  <34.597149, 29.519474, 25.835472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857674, 28.960312, 25.619165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500225, 28.831974, 25.744703>,  <34.285755, 28.754971, 25.820026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500225, 28.831974, 25.744703>,  <34.857674, 28.960312, 25.619165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500225, 28.831974, 25.744703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098206, -0.542541, -0.834269,
		0.437944, -0.776343, 0.453318,
		-0.893622, -0.320844, 0.313844,
		34.232140, 28.735722, 25.838856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890476, 28.190855, 25.702908>,  <34.857674, 28.960312, 25.619165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890476, 28.190855, 25.702908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515099, 28.322290, 25.660301>,  <34.289871, 28.401152, 25.634737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515099, 28.322290, 25.660301>,  <34.890476, 28.190855, 25.702908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515099, 28.322290, 25.660301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099089, -0.551494, -0.828273,
		-0.330906, -0.766736, 0.550107,
		-0.938447, 0.328590, -0.106517,
		34.233566, 28.420868, 25.628345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560413, 27.657045, 25.427603>,  <34.890476, 28.190855, 25.702908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560413, 27.657045, 25.427603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283985, 27.933786, 25.343925>,  <34.118130, 28.099831, 25.293718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283985, 27.933786, 25.343925>,  <34.560413, 27.657045, 25.427603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283985, 27.933786, 25.343925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276393, -0.520385, -0.807964,
		-0.667853, -0.500541, 0.550846,
		-0.691071, 0.691851, -0.209195,
		34.076664, 28.141342, 25.281168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035145, 27.299284, 25.355654>,  <34.560413, 27.657045, 25.427603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035145, 27.299284, 25.355654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936344, 27.637253, 25.165878>,  <33.877064, 27.840034, 25.052013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936344, 27.637253, 25.165878>,  <34.035145, 27.299284, 25.355654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936344, 27.637253, 25.165878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224325, -0.526170, -0.820258,
		-0.942692, -0.096178, 0.319503,
		-0.247004, 0.844923, -0.474441,
		33.862244, 27.890730, 25.023546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364597, 27.104841, 24.916616>,  <34.035145, 27.299284, 25.355654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364597, 27.104841, 24.916616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513359, 27.437061, 24.750788>,  <33.602615, 27.636395, 24.651291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513359, 27.437061, 24.750788>,  <33.364597, 27.104841, 24.916616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513359, 27.437061, 24.750788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321870, -0.303519, -0.896814,
		-0.870681, 0.466968, 0.154450,
		0.371905, 0.830552, -0.414571,
		33.624931, 27.686228, 24.626417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844910, 27.369028, 24.380257>,  <33.364597, 27.104841, 24.916616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844910, 27.369028, 24.380257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157333, 27.586515, 24.257410>,  <33.344788, 27.717007, 24.183702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157333, 27.586515, 24.257410>,  <32.844910, 27.369028, 24.380257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157333, 27.586515, 24.257410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258769, -0.165789, -0.951605,
		-0.568321, 0.822731, 0.011207,
		0.781057, 0.543717, -0.307118,
		33.391651, 27.749630, 24.165274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580753, 27.863602, 23.912565>,  <32.844910, 27.369028, 24.380257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580753, 27.863602, 23.912565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970112, 27.808765, 23.839134>,  <33.203728, 27.775864, 23.795076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970112, 27.808765, 23.839134>,  <32.580753, 27.863602, 23.912565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970112, 27.808765, 23.839134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212119, -0.236382, -0.948224,
		0.086599, 0.961940, -0.259174,
		0.973399, -0.137091, -0.183576,
		33.262131, 27.767637, 23.784061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833027, 28.419411, 23.335728>,  <32.580753, 27.863602, 23.912565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833027, 28.419411, 23.335728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096283, 28.118275, 23.332230>,  <33.254238, 27.937592, 23.330132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096283, 28.118275, 23.332230>,  <32.833027, 28.419411, 23.335728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096283, 28.118275, 23.332230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149473, -0.119268, -0.981546,
		0.737907, 0.647305, -0.191025,
		0.658143, -0.752842, -0.008746,
		33.293724, 27.892422, 23.329605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407871, 28.591911, 22.864687>,  <32.833027, 28.419411, 23.335728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407871, 28.591911, 22.864687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409977, 28.192802, 22.891289>,  <33.411240, 27.953337, 22.907249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409977, 28.192802, 22.891289>,  <33.407871, 28.591911, 22.864687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409977, 28.192802, 22.891289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002222, -0.066518, -0.997783,
		0.999984, 0.005103, -0.002567,
		0.005262, -0.997772, 0.066506,
		33.411556, 27.893471, 22.911240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881344, 28.383812, 22.380215>,  <33.407871, 28.591911, 22.864687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881344, 28.383812, 22.380215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712929, 28.025494, 22.437172>,  <33.611877, 27.810503, 22.471346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712929, 28.025494, 22.437172>,  <33.881344, 28.383812, 22.380215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712929, 28.025494, 22.437172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167387, -0.077553, -0.982836,
		0.891462, -0.437650, -0.117291,
		-0.421042, -0.895795, 0.142392,
		33.586617, 27.756756, 22.479889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100124, 28.070656, 21.848017>,  <33.881344, 28.383812, 22.380215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100124, 28.070656, 21.848017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786652, 27.843735, 21.949215>,  <33.598568, 27.707582, 22.009933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786652, 27.843735, 21.949215>,  <34.100124, 28.070656, 21.848017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786652, 27.843735, 21.949215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166953, -0.199936, -0.965480,
		0.598304, -0.798869, 0.061973,
		-0.783683, -0.567304, 0.252996,
		33.551548, 27.673544, 22.025114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256767, 27.355314, 21.582899>,  <34.100124, 28.070656, 21.848017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256767, 27.355314, 21.582899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860279, 27.390274, 21.622597>,  <33.622387, 27.411249, 21.646416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860279, 27.390274, 21.622597>,  <34.256767, 27.355314, 21.582899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860279, 27.390274, 21.622597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117739, -0.241539, -0.963222,
		-0.060212, -0.966447, 0.249708,
		-0.991217, 0.087398, 0.099245,
		33.562912, 27.416494, 21.652370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875980, 26.694830, 21.222790>,  <34.256767, 27.355314, 21.582899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875980, 26.694830, 21.222790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621632, 27.003138, 21.238714>,  <33.469025, 27.188122, 21.248270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621632, 27.003138, 21.238714>,  <33.875980, 26.694830, 21.222790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621632, 27.003138, 21.238714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117783, -0.045929, -0.991976,
		-0.762757, -0.635456, 0.119989,
		-0.635869, 0.770769, 0.039813,
		33.430870, 27.234369, 21.250658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342094, 26.554827, 20.648458>,  <33.875980, 26.694830, 21.222790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342094, 26.554827, 20.648458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296810, 26.941380, 20.740795>,  <33.269638, 27.173311, 20.796198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296810, 26.941380, 20.740795>,  <33.342094, 26.554827, 20.648458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296810, 26.941380, 20.740795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309101, 0.186550, -0.932553,
		-0.944267, -0.176930, 0.277590,
		-0.113212, 0.966382, 0.230843,
		33.262848, 27.231295, 20.810047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667870, 26.632996, 20.461327>,  <33.342094, 26.554827, 20.648458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667870, 26.632996, 20.461327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845219, 26.991358, 20.472469>,  <32.951630, 27.206375, 20.479155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845219, 26.991358, 20.472469>,  <32.667870, 26.632996, 20.461327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845219, 26.991358, 20.472469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301179, 0.178178, -0.936773,
		-0.844223, 0.406948, 0.348827,
		0.443371, 0.895905, 0.027858,
		32.978230, 27.260130, 20.480827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278637, 27.188004, 20.219942>,  <32.667870, 26.632996, 20.461327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278637, 27.188004, 20.219942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645729, 27.325970, 20.141142>,  <32.865982, 27.408751, 20.093863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645729, 27.325970, 20.141142>,  <32.278637, 27.188004, 20.219942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645729, 27.325970, 20.141142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295103, 0.260074, -0.919389,
		-0.265878, 0.901883, 0.340463,
		0.917727, 0.344917, -0.197000,
		32.921047, 27.429445, 20.082043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885283, 27.804285, 20.077034>,  <32.278637, 27.188004, 20.219942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885283, 27.804285, 20.077034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754034, 28.058043, 19.797068>,  <31.675285, 28.210297, 19.629087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754034, 28.058043, 19.797068>,  <31.885283, 27.804285, 20.077034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754034, 28.058043, 19.797068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109547, -0.761491, -0.638851,
		-0.938263, -0.132945, 0.319356,
		-0.328119, 0.634395, -0.699915,
		31.655598, 28.248362, 19.587093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360033, 27.460861, 19.793623>,  <31.885283, 27.804285, 20.077034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360033, 27.460861, 19.793623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453405, 27.740484, 19.523268>,  <31.509428, 27.908258, 19.361053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453405, 27.740484, 19.523268>,  <31.360033, 27.460861, 19.793623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453405, 27.740484, 19.523268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051276, -0.685275, -0.726477,
		-0.971020, 0.204239, -0.124119,
		0.233431, 0.699060, -0.675889,
		31.523434, 27.950203, 19.320501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319157, 27.058243, 19.207975>,  <31.360033, 27.460861, 19.793623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319157, 27.058243, 19.207975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536947, 27.355124, 19.051680>,  <31.667622, 27.533253, 18.957901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536947, 27.355124, 19.051680>,  <31.319157, 27.058243, 19.207975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536947, 27.355124, 19.051680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336691, -0.620063, -0.708633,
		-0.768234, 0.254276, -0.587503,
		0.544478, 0.742203, -0.390741,
		31.700291, 27.577784, 18.934458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018078, 27.057043, 18.802727>,  <31.319157, 27.058243, 19.207975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018078, 27.057043, 18.802727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903803, 26.919237, 19.160429>,  <31.835238, 26.836554, 19.375050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903803, 26.919237, 19.160429>,  <32.018078, 27.057043, 18.802727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903803, 26.919237, 19.160429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954263, 0.016475, -0.298515,
		0.088109, -0.938638, -0.333461,
		-0.285691, -0.344511, 0.894255,
		31.818096, 26.815884, 19.428705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765236, 27.151367, 18.672829>,  <32.018078, 27.057043, 18.802727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765236, 27.151367, 18.672829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569817, 27.353109, 18.388027>,  <32.452564, 27.474155, 18.217146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569817, 27.353109, 18.388027>,  <32.765236, 27.151367, 18.672829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569817, 27.353109, 18.388027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528379, 0.478370, 0.701411,
		0.694363, 0.718878, 0.032787,
		-0.488544, 0.504358, -0.712003,
		32.423252, 27.504417, 18.174427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764660, 27.870722, 18.819254>,  <32.765236, 27.151367, 18.672829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764660, 27.870722, 18.819254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407421, 27.797085, 18.655064>,  <32.193077, 27.752903, 18.556549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407421, 27.797085, 18.655064>,  <32.764660, 27.870722, 18.819254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407421, 27.797085, 18.655064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434329, 0.590589, 0.680120,
		0.117219, 0.785694, -0.607408,
		-0.893095, -0.184092, -0.410478,
		32.139492, 27.741858, 18.531919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409779, 28.523775, 18.640085>,  <32.764660, 27.870722, 18.819254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409779, 28.523775, 18.640085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109184, 28.262297, 18.675741>,  <31.928827, 28.105410, 18.697136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109184, 28.262297, 18.675741>,  <32.409779, 28.523775, 18.640085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109184, 28.262297, 18.675741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472375, 0.627455, 0.619000,
		-0.460570, 0.423064, -0.780315,
		-0.751490, -0.653694, 0.089142,
		31.883738, 28.066189, 18.702484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864576, 28.889126, 18.461527>,  <32.409779, 28.523775, 18.640085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864576, 28.889126, 18.461527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748896, 28.598080, 18.710342>,  <31.679487, 28.423450, 18.859632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748896, 28.598080, 18.710342>,  <31.864576, 28.889126, 18.461527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748896, 28.598080, 18.710342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273704, 0.685533, 0.674634,
		-0.917305, 0.024851, -0.397410,
		-0.289202, -0.727618, 0.622040,
		31.662134, 28.379795, 18.896955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268259, 29.123205, 18.760620>,  <31.864576, 28.889126, 18.461527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268259, 29.123205, 18.760620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364187, 28.841858, 19.028278>,  <31.421743, 28.673050, 19.188873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364187, 28.841858, 19.028278>,  <31.268259, 29.123205, 18.760620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364187, 28.841858, 19.028278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161404, 0.650781, 0.741912,
		-0.957306, -0.285929, 0.042544,
		0.239821, -0.703370, 0.669147,
		31.436134, 28.630848, 19.229023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720339, 29.144426, 19.328070>,  <31.268259, 29.123205, 18.760620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720339, 29.144426, 19.328070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075731, 29.008553, 19.451498>,  <31.288967, 28.927029, 19.525555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075731, 29.008553, 19.451498>,  <30.720339, 29.144426, 19.328070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075731, 29.008553, 19.451498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063633, 0.574708, 0.815880,
		-0.454480, -0.744530, 0.489003,
		0.888481, -0.339685, 0.308570,
		31.342276, 28.906647, 19.544069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631109, 29.049807, 20.064123>,  <30.720339, 29.144426, 19.328070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631109, 29.049807, 20.064123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025690, 29.092215, 20.014044>,  <31.262438, 29.117661, 19.983995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025690, 29.092215, 20.014044>,  <30.631109, 29.049807, 20.064123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025690, 29.092215, 20.014044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055543, 0.502251, 0.862936,
		0.154371, -0.858198, 0.489557,
		0.986450, 0.106021, -0.125200,
		31.321625, 29.124022, 19.976484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970480, 29.090019, 20.726040>,  <30.631109, 29.049807, 20.064123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970480, 29.090019, 20.726040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269192, 29.231276, 20.500612>,  <31.448420, 29.316029, 20.365356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269192, 29.231276, 20.500612>,  <30.970480, 29.090019, 20.726040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269192, 29.231276, 20.500612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242728, 0.644213, 0.725309,
		0.619199, -0.678438, 0.395366,
		0.746777, 0.353144, -0.563572,
		31.493225, 29.337217, 20.331541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482328, 29.101046, 21.210791>,  <30.970480, 29.090019, 20.726040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482328, 29.101046, 21.210791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597130, 29.338537, 20.910095>,  <31.666010, 29.481033, 20.729677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597130, 29.338537, 20.910095>,  <31.482328, 29.101046, 21.210791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597130, 29.338537, 20.910095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221492, 0.722359, 0.655086,
		0.931972, -0.354515, 0.075812,
		0.287001, 0.593731, -0.751741,
		31.683229, 29.516657, 20.684572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989447, 29.438753, 21.502687>,  <31.482328, 29.101046, 21.210791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989447, 29.438753, 21.502687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886042, 29.678532, 21.199680>,  <31.823999, 29.822399, 21.017876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886042, 29.678532, 21.199680>,  <31.989447, 29.438753, 21.502687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886042, 29.678532, 21.199680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024359, 0.779879, 0.625456,
		0.965701, 0.180141, -0.187007,
		-0.258513, 0.599448, -0.757517,
		31.808487, 29.858366, 20.972425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409554, 30.039093, 21.658628>,  <31.989447, 29.438753, 21.502687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409554, 30.039093, 21.658628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122040, 30.139828, 21.399422>,  <31.949532, 30.200270, 21.243896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122040, 30.139828, 21.399422>,  <32.409554, 30.039093, 21.658628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122040, 30.139828, 21.399422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196361, 0.820599, 0.536712,
		0.666927, 0.513025, -0.540383,
		-0.718784, 0.251838, -0.648018,
		31.906404, 30.215380, 21.205017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519382, 30.774839, 21.469784>,  <32.409554, 30.039093, 21.658628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519382, 30.774839, 21.469784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136528, 30.678474, 21.405460>,  <31.906816, 30.620655, 21.366867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136528, 30.678474, 21.405460>,  <32.519382, 30.774839, 21.469784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136528, 30.678474, 21.405460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286994, 0.863804, 0.414097,
		0.039144, 0.442496, -0.895916,
		-0.957132, -0.240913, -0.160807,
		31.849388, 30.606201, 21.357218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291805, 31.401031, 21.344145>,  <32.519382, 30.774839, 21.469784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291805, 31.401031, 21.344145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961668, 31.203354, 21.453379>,  <31.763584, 31.084747, 21.518919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961668, 31.203354, 21.453379>,  <32.291805, 31.401031, 21.344145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961668, 31.203354, 21.453379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354414, 0.829949, 0.430785,
		-0.439537, 0.258763, -0.860145,
		-0.825348, -0.494193, 0.273084,
		31.714064, 31.055096, 21.535303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724876, 31.837994, 21.246910>,  <32.291805, 31.401031, 21.344145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724876, 31.837994, 21.246910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594482, 31.567982, 21.511658>,  <31.516247, 31.405975, 21.670506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594482, 31.567982, 21.511658>,  <31.724876, 31.837994, 21.246910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594482, 31.567982, 21.511658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265921, 0.737319, 0.621005,
		-0.907204, 0.026433, -0.419859,
		-0.325985, -0.675028, 0.661870,
		31.496687, 31.365473, 21.710218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089197, 32.123062, 21.480532>,  <31.724876, 31.837994, 21.246910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089197, 32.123062, 21.480532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179319, 31.833803, 21.741695>,  <31.233393, 31.660248, 21.898394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179319, 31.833803, 21.741695>,  <31.089197, 32.123062, 21.480532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179319, 31.833803, 21.741695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280982, 0.593437, 0.754242,
		-0.932891, -0.353391, -0.069487,
		0.225306, -0.723151, 0.652909,
		31.246912, 31.616858, 21.937569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643658, 32.279316, 22.075756>,  <31.089197, 32.123062, 21.480532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643658, 32.279316, 22.075756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947445, 32.048531, 22.195974>,  <31.129717, 31.910061, 22.268106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947445, 32.048531, 22.195974>,  <30.643658, 32.279316, 22.075756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947445, 32.048531, 22.195974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038140, 0.500687, 0.864788,
		-0.649428, -0.645314, 0.402260,
		0.759466, -0.576960, 0.300547,
		31.175285, 31.875443, 22.286139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465185, 32.238194, 22.706059>,  <30.643658, 32.279316, 22.075756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465185, 32.238194, 22.706059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841024, 32.101311, 22.703381>,  <31.066528, 32.019180, 22.701773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841024, 32.101311, 22.703381>,  <30.465185, 32.238194, 22.706059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841024, 32.101311, 22.703381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128092, 0.333426, 0.934034,
		-0.317401, -0.878476, 0.357121,
		0.939600, -0.342208, -0.006696,
		31.122904, 31.998648, 22.701372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606373, 31.819698, 23.350657>,  <30.465185, 32.238194, 22.706059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606373, 31.819698, 23.350657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967638, 31.933828, 23.222355>,  <31.184397, 32.002308, 23.145374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967638, 31.933828, 23.222355>,  <30.606373, 31.819698, 23.350657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967638, 31.933828, 23.222355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248334, 0.262224, 0.932507,
		0.350178, -0.921861, 0.165975,
		0.903164, 0.285326, -0.320754,
		31.238588, 32.019424, 23.126129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155436, 31.493492, 23.781713>,  <30.606373, 31.819698, 23.350657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155436, 31.493492, 23.781713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284580, 31.843557, 23.637577>,  <31.362068, 32.053596, 23.551094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284580, 31.843557, 23.637577>,  <31.155436, 31.493492, 23.781713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284580, 31.843557, 23.637577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236633, 0.293996, 0.926052,
		0.916386, -0.384257, -0.112173,
		0.322863, 0.875165, -0.360342,
		31.381439, 32.106106, 23.529474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819017, 31.562815, 24.015423>,  <31.155436, 31.493492, 23.781713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819017, 31.562815, 24.015423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723745, 31.938612, 23.916935>,  <31.666582, 32.164089, 23.857841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723745, 31.938612, 23.916935>,  <31.819017, 31.562815, 24.015423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723745, 31.938612, 23.916935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196801, 0.294944, 0.935028,
		0.951072, 0.174250, -0.255143,
		-0.238182, 0.939492, -0.246221,
		31.652290, 32.220459, 23.843069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320225, 32.023251, 24.362188>,  <31.819017, 31.562815, 24.015423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320225, 32.023251, 24.362188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021061, 32.274052, 24.275013>,  <31.841562, 32.424534, 24.222708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021061, 32.274052, 24.275013>,  <32.320225, 32.023251, 24.362188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021061, 32.274052, 24.275013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080346, 0.411412, 0.907901,
		0.658921, 0.661517, -0.358077,
		-0.747909, 0.627005, -0.217938,
		31.796688, 32.462154, 24.209631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446629, 32.630680, 24.731146>,  <32.320225, 32.023251, 24.362188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446629, 32.630680, 24.731146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060863, 32.692780, 24.645540>,  <31.829405, 32.730042, 24.594177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060863, 32.692780, 24.645540>,  <32.446629, 32.630680, 24.731146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060863, 32.692780, 24.645540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119033, 0.467831, 0.875766,
		0.236087, 0.870075, -0.432702,
		-0.964414, 0.155251, -0.214016,
		31.771540, 32.739353, 24.581335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276855, 33.330006, 25.011492>,  <32.446629, 32.630680, 24.731146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276855, 33.330006, 25.011492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924248, 33.152973, 24.945715>,  <31.712683, 33.046753, 24.906248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924248, 33.152973, 24.945715>,  <32.276855, 33.330006, 25.011492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924248, 33.152973, 24.945715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324498, 0.314930, 0.891920,
		-0.342957, 0.839609, -0.421234,
		-0.881523, -0.442579, -0.164444,
		31.659790, 33.020199, 24.896381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779083, 33.876087, 25.181011>,  <32.276855, 33.330006, 25.011492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779083, 33.876087, 25.181011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623013, 33.511227, 25.231197>,  <31.529369, 33.292309, 25.261309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623013, 33.511227, 25.231197>,  <31.779083, 33.876087, 25.181011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623013, 33.511227, 25.231197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191073, 0.213512, 0.958073,
		-0.900696, 0.349846, -0.257595,
		-0.390177, -0.912152, 0.125463,
		31.505959, 33.237579, 25.268837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223356, 33.975662, 25.713945>,  <31.779083, 33.876087, 25.181011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223356, 33.975662, 25.713945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263977, 33.577938, 25.726826>,  <31.288349, 33.339302, 25.734554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263977, 33.577938, 25.726826>,  <31.223356, 33.975662, 25.713945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263977, 33.577938, 25.726826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091974, 0.022846, 0.995499,
		-0.990570, -0.104057, -0.089131,
		0.101552, -0.994309, 0.032201,
		31.294443, 33.279644, 25.736486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717684, 33.664410, 26.171694>,  <31.223356, 33.975662, 25.713945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717684, 33.664410, 26.171694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018875, 33.401783, 26.154032>,  <31.199591, 33.244209, 26.143435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018875, 33.401783, 26.154032>,  <30.717684, 33.664410, 26.171694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018875, 33.401783, 26.154032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068324, -0.144743, 0.987107,
		-0.654489, -0.740253, -0.153848,
		0.752978, -0.656562, -0.044156,
		31.244768, 33.204815, 26.140785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487551, 33.197376, 26.704777>,  <30.717684, 33.664410, 26.171694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487551, 33.197376, 26.704777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874533, 33.117905, 26.642096>,  <31.106722, 33.070221, 26.604486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874533, 33.117905, 26.642096>,  <30.487551, 33.197376, 26.704777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874533, 33.117905, 26.642096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129602, -0.142819, 0.981227,
		-0.217329, -0.969603, -0.112422,
		0.967456, -0.198679, -0.156702,
		31.164770, 33.058304, 26.595085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739737, 32.571075, 27.179003>,  <30.487551, 33.197376, 26.704777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739737, 32.571075, 27.179003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064497, 32.790691, 27.099636>,  <31.259354, 32.922462, 27.052015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064497, 32.790691, 27.099636>,  <30.739737, 32.571075, 27.179003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064497, 32.790691, 27.099636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245797, -0.013206, 0.969231,
		0.529527, -0.835691, -0.145675,
		0.811902, 0.549041, -0.198418,
		31.308067, 32.955402, 27.040112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225058, 32.272934, 27.586828>,  <30.739737, 32.571075, 27.179003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225058, 32.272934, 27.586828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400951, 32.619026, 27.490482>,  <31.506487, 32.826679, 27.432674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400951, 32.619026, 27.490482>,  <31.225058, 32.272934, 27.586828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400951, 32.619026, 27.490482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411538, 0.044263, 0.910317,
		0.798292, -0.499424, -0.336609,
		0.439735, 0.865226, -0.240866,
		31.532871, 32.878593, 27.418222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889090, 32.220257, 27.870275>,  <31.225058, 32.272934, 27.586828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889090, 32.220257, 27.870275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837574, 32.605663, 27.776430>,  <31.806665, 32.836906, 27.720123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837574, 32.605663, 27.776430>,  <31.889090, 32.220257, 27.870275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837574, 32.605663, 27.776430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533337, 0.266753, 0.802742,
		0.836042, -0.021746, -0.548235,
		-0.128787, 0.963519, -0.234615,
		31.798939, 32.894718, 27.706045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528557, 32.474327, 28.049955>,  <31.889090, 32.220257, 27.870275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528557, 32.474327, 28.049955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280075, 32.787136, 28.070175>,  <32.130985, 32.974819, 28.082308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280075, 32.787136, 28.070175>,  <32.528557, 32.474327, 28.049955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280075, 32.787136, 28.070175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340759, 0.211470, 0.916059,
		0.705685, 0.586283, -0.397845,
		-0.621202, 0.782018, 0.050550,
		32.093716, 33.021740, 28.085340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870571, 33.056278, 28.279116>,  <32.528557, 32.474327, 28.049955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870571, 33.056278, 28.279116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491356, 33.155476, 28.358841>,  <32.263828, 33.214993, 28.406677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491356, 33.155476, 28.358841>,  <32.870571, 33.056278, 28.279116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491356, 33.155476, 28.358841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285504, 0.386641, 0.876924,
		0.140408, 0.888262, -0.437352,
		-0.948036, 0.247993, 0.199315,
		32.206944, 33.229874, 28.418636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890160, 33.849007, 28.541279>,  <32.870571, 33.056278, 28.279116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890160, 33.849007, 28.541279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536118, 33.686951, 28.632889>,  <32.323692, 33.589718, 28.687855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536118, 33.686951, 28.632889>,  <32.890160, 33.849007, 28.541279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536118, 33.686951, 28.632889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061388, 0.589438, 0.805478,
		-0.461329, 0.698871, -0.546585,
		-0.885103, -0.405143, 0.229023,
		32.270588, 33.565407, 28.701595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488152, 34.421299, 28.770798>,  <32.890160, 33.849007, 28.541279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488152, 34.421299, 28.770798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330162, 34.102875, 28.954229>,  <32.235371, 33.911819, 29.064287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330162, 34.102875, 28.954229>,  <32.488152, 34.421299, 28.770798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330162, 34.102875, 28.954229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051061, 0.479369, 0.876127,
		-0.917274, 0.369460, -0.148690,
		-0.394971, -0.796056, 0.458577,
		32.211670, 33.864059, 29.091803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875240, 34.633087, 29.173725>,  <32.488152, 34.421299, 28.770798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875240, 34.633087, 29.173725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924391, 34.273407, 29.341696>,  <31.953882, 34.057598, 29.442478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924391, 34.273407, 29.341696>,  <31.875240, 34.633087, 29.173725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924391, 34.273407, 29.341696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100568, 0.432239, 0.896134,
		-0.987313, -0.067883, 0.143544,
		0.122878, -0.899200, 0.419929,
		31.961254, 34.003647, 29.467674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423437, 34.601830, 29.744890>,  <31.875240, 34.633087, 29.173725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423437, 34.601830, 29.744890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711390, 34.336418, 29.826378>,  <31.884161, 34.177170, 29.875271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711390, 34.336418, 29.826378>,  <31.423437, 34.601830, 29.744890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711390, 34.336418, 29.826378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178309, 0.460439, 0.869599,
		-0.670806, -0.589681, 0.449774,
		0.719879, -0.663530, 0.203720,
		31.927353, 34.137360, 29.887493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136177, 34.243332, 30.334215>,  <31.423437, 34.601830, 29.744890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136177, 34.243332, 30.334215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534279, 34.204552, 30.337591>,  <31.773140, 34.181286, 30.339617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534279, 34.204552, 30.337591>,  <31.136177, 34.243332, 30.334215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534279, 34.204552, 30.337591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014053, 0.229018, 0.973321,
		-0.096296, -0.968582, 0.229293,
		0.995253, -0.096950, 0.008442,
		31.832855, 34.175468, 30.340124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298258, 33.988014, 31.103588>,  <31.136177, 34.243332, 30.334215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298258, 33.988014, 31.103588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658451, 34.080635, 30.956339>,  <31.874567, 34.136208, 30.867990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658451, 34.080635, 30.956339>,  <31.298258, 33.988014, 31.103588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658451, 34.080635, 30.956339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293231, 0.301834, 0.907145,
		0.321161, -0.924814, 0.203899,
		0.900484, 0.231550, -0.368122,
		31.928596, 34.150101, 30.845903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001667, 33.639523, 31.475718>,  <31.298258, 33.988014, 31.103588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001667, 33.639523, 31.475718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080006, 33.996540, 31.313229>,  <32.127010, 34.210751, 31.215736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080006, 33.996540, 31.313229>,  <32.001667, 33.639523, 31.475718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080006, 33.996540, 31.313229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136942, 0.385292, 0.912577,
		0.971025, -0.234355, -0.046768,
		0.195848, 0.892540, -0.406221,
		32.138760, 34.264301, 31.191362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514778, 33.920864, 31.877855>,  <32.001667, 33.639523, 31.475718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514778, 33.920864, 31.877855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407825, 34.254601, 31.685032>,  <32.343655, 34.454842, 31.569338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407825, 34.254601, 31.685032>,  <32.514778, 33.920864, 31.877855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407825, 34.254601, 31.685032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101426, 0.521866, 0.846976,
		0.958236, 0.177576, -0.224163,
		-0.267386, 0.834339, -0.482061,
		32.327610, 34.504902, 31.540413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986069, 34.497528, 32.117069>,  <32.514778, 33.920864, 31.877855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986069, 34.497528, 32.117069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667973, 34.686333, 31.964859>,  <32.477116, 34.799614, 31.873531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667973, 34.686333, 31.964859>,  <32.986069, 34.497528, 32.117069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667973, 34.686333, 31.964859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168589, 0.775027, 0.609025,
		0.582387, 0.420167, -0.695906,
		-0.795238, 0.472010, -0.380530,
		32.429401, 34.827934, 31.850700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225300, 35.181763, 32.004822>,  <32.986069, 34.497528, 32.117069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225300, 35.181763, 32.004822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826153, 35.175030, 32.030022>,  <32.586662, 35.170990, 32.045143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826153, 35.175030, 32.030022>,  <33.225300, 35.181763, 32.004822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826153, 35.175030, 32.030022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032126, 0.713854, 0.699557,
		-0.056747, 0.700092, -0.711794,
		-0.997872, -0.016831, 0.063000,
		32.526791, 35.169979, 32.048923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015404, 35.867268, 31.972614>,  <33.225300, 35.181763, 32.004822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015404, 35.867268, 31.972614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702900, 35.686653, 32.145004>,  <32.515396, 35.578285, 32.248440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702900, 35.686653, 32.145004>,  <33.015404, 35.867268, 31.972614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702900, 35.686653, 32.145004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049032, 0.732702, 0.678781,
		-0.622273, 0.509175, -0.594573,
		-0.781263, -0.451540, 0.430975,
		32.468521, 35.551189, 32.274296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471786, 36.448448, 32.026978>,  <33.015404, 35.867268, 31.972614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471786, 36.448448, 32.026978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364822, 36.148262, 32.268738>,  <32.300644, 35.968151, 32.413792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364822, 36.148262, 32.268738>,  <32.471786, 36.448448, 32.026978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364822, 36.148262, 32.268738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309641, 0.660896, 0.683622,
		-0.912478, -0.004341, -0.409103,
		-0.267406, -0.750465, 0.604397,
		32.284599, 35.923122, 32.450058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929195, 36.958256, 31.860369>,  <32.471786, 36.448448, 32.026978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929195, 36.958256, 31.860369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954128, 36.794098, 32.224277>,  <32.969090, 36.695602, 32.442623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954128, 36.794098, 32.224277>,  <32.929195, 36.958256, 31.860369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954128, 36.794098, 32.224277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998044, 0.021265, -0.058790,
		0.004781, 0.911658, 0.410922,
		0.062335, -0.410399, 0.909773,
		32.972828, 36.670979, 32.497208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601624, 36.766148, 31.544050>,  <32.929195, 36.958256, 31.860369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601624, 36.766148, 31.544050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970806, 36.828632, 31.403334>,  <34.192314, 36.866123, 31.318905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970806, 36.828632, 31.403334>,  <33.601624, 36.766148, 31.544050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970806, 36.828632, 31.403334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267510, -0.396820, -0.878050,
		-0.276762, 0.904506, -0.324457,
		0.922952, 0.156215, -0.351789,
		34.247692, 36.875496, 31.297796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548866, 37.153011, 30.841761>,  <33.601624, 36.766148, 31.544050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548866, 37.153011, 30.841761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921566, 37.009132, 30.861643>,  <34.145184, 36.922806, 30.873571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921566, 37.009132, 30.861643>,  <33.548866, 37.153011, 30.841761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921566, 37.009132, 30.861643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060056, -0.287650, -0.955851,
		0.358112, 0.887624, -0.289618,
		0.931745, -0.359695, 0.049704,
		34.201088, 36.901222, 30.876554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773380, 37.335041, 30.257935>,  <33.548866, 37.153011, 30.841761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773380, 37.335041, 30.257935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012981, 37.039165, 30.380613>,  <34.156742, 36.861641, 30.454220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012981, 37.039165, 30.380613>,  <33.773380, 37.335041, 30.257935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012981, 37.039165, 30.380613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064122, -0.426088, -0.902406,
		0.798178, 0.520875, -0.302656,
		0.598999, -0.739688, 0.306695,
		34.192680, 36.817261, 30.472622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167328, 37.262695, 29.671026>,  <33.773380, 37.335041, 30.257935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167328, 37.262695, 29.671026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242313, 36.932747, 29.884357>,  <34.287304, 36.734776, 30.012356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242313, 36.932747, 29.884357>,  <34.167328, 37.262695, 29.671026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242313, 36.932747, 29.884357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010069, -0.541312, -0.840762,
		0.982219, 0.162985, -0.093173,
		0.187467, -0.824874, 0.533328,
		34.298553, 36.685284, 30.044355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655510, 36.945602, 29.366884>,  <34.167328, 37.262695, 29.671026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655510, 36.945602, 29.366884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512619, 36.632275, 29.570375>,  <34.426884, 36.444279, 29.692471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512619, 36.632275, 29.570375>,  <34.655510, 36.945602, 29.366884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512619, 36.632275, 29.570375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024704, -0.536552, -0.843506,
		0.933691, -0.313890, 0.172319,
		-0.357226, -0.783317, 0.508728,
		34.405453, 36.397278, 29.722994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075535, 36.342232, 29.214186>,  <34.655510, 36.945602, 29.366884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075535, 36.342232, 29.214186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732101, 36.195976, 29.357927>,  <34.526039, 36.108223, 29.444172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732101, 36.195976, 29.357927>,  <35.075535, 36.342232, 29.214186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732101, 36.195976, 29.357927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085924, -0.588399, -0.803992,
		0.505417, -0.721174, 0.473774,
		-0.858586, -0.365643, 0.359353,
		34.474525, 36.086285, 29.465733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183121, 35.643208, 29.181677>,  <35.075535, 36.342232, 29.214186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183121, 35.643208, 29.181677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789661, 35.714832, 29.174053>,  <34.553585, 35.757809, 29.169479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789661, 35.714832, 29.174053>,  <35.183121, 35.643208, 29.181677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789661, 35.714832, 29.174053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057694, -0.413640, -0.908611,
		-0.170583, -0.892658, 0.417209,
		-0.983653, 0.179064, -0.019059,
		34.494564, 35.768551, 29.168335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948730, 35.141472, 28.731987>,  <35.183121, 35.643208, 29.181677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948730, 35.141472, 28.731987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627033, 35.378353, 28.751945>,  <34.434013, 35.520481, 28.763922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627033, 35.378353, 28.751945>,  <34.948730, 35.141472, 28.731987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627033, 35.378353, 28.751945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245755, -0.254948, -0.935204,
		-0.541110, -0.764392, 0.350577,
		-0.804241, 0.592204, 0.049898,
		34.385761, 35.556015, 28.766914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332897, 34.700977, 28.542585>,  <34.948730, 35.141472, 28.731987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332897, 34.700977, 28.542585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248322, 35.084743, 28.467941>,  <34.197575, 35.315002, 28.423155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248322, 35.084743, 28.467941>,  <34.332897, 34.700977, 28.542585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248322, 35.084743, 28.467941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438438, -0.263743, -0.859193,
		-0.873536, -0.099849, 0.476408,
		-0.211439, 0.959411, -0.186611,
		34.184891, 35.372566, 28.411959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680397, 34.567238, 28.211643>,  <34.332897, 34.700977, 28.542585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680397, 34.567238, 28.211643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816010, 34.931652, 28.117773>,  <33.897377, 35.150299, 28.061451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816010, 34.931652, 28.117773>,  <33.680397, 34.567238, 28.211643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816010, 34.931652, 28.117773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416714, -0.078216, -0.905667,
		-0.843448, 0.404846, 0.353122,
		0.339036, 0.911033, -0.234676,
		33.917721, 35.204964, 28.047371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103451, 35.101360, 27.934902>,  <33.680397, 34.567238, 28.211643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103451, 35.101360, 27.934902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458916, 35.228886, 27.803062>,  <33.672195, 35.305401, 27.723959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458916, 35.228886, 27.803062>,  <33.103451, 35.101360, 27.934902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458916, 35.228886, 27.803062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359791, 0.039131, -0.932212,
		-0.284306, 0.947008, 0.149481,
		0.888662, 0.318816, -0.329601,
		33.725513, 35.324532, 27.704182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882137, 35.656944, 27.388002>,  <33.103451, 35.101360, 27.934902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882137, 35.656944, 27.388002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255215, 35.549831, 27.291355>,  <33.479061, 35.485561, 27.233368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255215, 35.549831, 27.291355>,  <32.882137, 35.656944, 27.388002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255215, 35.549831, 27.291355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266254, -0.059297, -0.962077,
		0.243303, 0.961652, -0.126605,
		0.932691, -0.267785, -0.241616,
		33.535023, 35.469498, 27.218870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007183, 35.964764, 26.741730>,  <32.882137, 35.656944, 27.388002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007183, 35.964764, 26.741730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310993, 35.706902, 26.776474>,  <33.493279, 35.552185, 26.797321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310993, 35.706902, 26.776474>,  <33.007183, 35.964764, 26.741730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310993, 35.706902, 26.776474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049512, -0.190442, -0.980449,
		0.648595, 0.740371, -0.176563,
		0.759521, -0.644657, 0.086862,
		33.538849, 35.513504, 26.802532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489079, 36.182796, 26.315037>,  <33.007183, 35.964764, 26.741730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489079, 36.182796, 26.315037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559795, 35.791195, 26.355604>,  <33.602226, 35.556232, 26.379944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559795, 35.791195, 26.355604>,  <33.489079, 36.182796, 26.315037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559795, 35.791195, 26.355604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073783, -0.115933, -0.990513,
		0.981478, 0.167636, -0.092731,
		0.176796, -0.979008, 0.101417,
		33.612835, 35.497494, 26.386030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032387, 36.020432, 25.797234>,  <33.489079, 36.182796, 26.315037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032387, 36.020432, 25.797234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849293, 35.681599, 25.905254>,  <33.739437, 35.478298, 25.970068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849293, 35.681599, 25.905254>,  <34.032387, 36.020432, 25.797234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849293, 35.681599, 25.905254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058759, -0.274255, -0.959860,
		0.887146, -0.455227, 0.075762,
		-0.457732, -0.847085, 0.270053,
		33.711971, 35.427475, 25.986271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436253, 35.463032, 25.480551>,  <34.032387, 36.020432, 25.797234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436253, 35.463032, 25.480551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095493, 35.274097, 25.571035>,  <33.891037, 35.160736, 25.625326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095493, 35.274097, 25.571035>,  <34.436253, 35.463032, 25.480551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095493, 35.274097, 25.571035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108734, -0.263009, -0.958647,
		0.512299, -0.841265, 0.172697,
		-0.851896, -0.472335, 0.226213,
		33.839924, 35.132397, 25.638899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463478, 34.822514, 25.140812>,  <34.436253, 35.463032, 25.480551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463478, 34.822514, 25.140812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075970, 34.890888, 25.212669>,  <33.843464, 34.931911, 25.255785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075970, 34.890888, 25.212669>,  <34.463478, 34.822514, 25.140812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075970, 34.890888, 25.212669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227943, -0.328622, -0.916542,
		-0.097632, -0.928865, 0.357321,
		-0.968767, 0.170932, 0.179645,
		33.785339, 34.942169, 25.266563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155136, 34.170261, 25.133724>,  <34.463478, 34.822514, 25.140812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155136, 34.170261, 25.133724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899174, 34.466171, 25.050535>,  <33.745598, 34.643719, 25.000622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899174, 34.466171, 25.050535>,  <34.155136, 34.170261, 25.133724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899174, 34.466171, 25.050535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162852, -0.395040, -0.904114,
		-0.751000, -0.544678, 0.373262,
		-0.639905, 0.739776, -0.207974,
		33.707203, 34.688103, 24.988144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483627, 33.861958, 24.755587>,  <34.155136, 34.170261, 25.133724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483627, 33.861958, 24.755587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449306, 34.253075, 24.679098>,  <33.428715, 34.487743, 24.633205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449306, 34.253075, 24.679098>,  <33.483627, 33.861958, 24.755587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449306, 34.253075, 24.679098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205288, -0.205160, -0.956957,
		-0.974933, -0.042852, 0.218331,
		-0.085800, 0.977790, -0.191221,
		33.423565, 34.546413, 24.621733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755932, 34.084827, 24.605980>,  <33.483627, 33.861958, 24.755587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755932, 34.084827, 24.605980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021713, 34.319153, 24.420370>,  <33.181183, 34.459747, 24.309004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021713, 34.319153, 24.420370>,  <32.755932, 34.084827, 24.605980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021713, 34.319153, 24.420370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315869, -0.342579, -0.884797,
		-0.677294, 0.734478, -0.042586,
		0.664454, 0.585817, -0.464026,
		33.221050, 34.494896, 24.281162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360821, 34.348766, 24.048651>,  <32.755932, 34.084827, 24.605980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360821, 34.348766, 24.048651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743435, 34.408581, 23.948507>,  <32.973003, 34.444469, 23.888422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743435, 34.408581, 23.948507>,  <32.360821, 34.348766, 24.048651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743435, 34.408581, 23.948507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211634, -0.234670, -0.948758,
		-0.200628, 0.960504, -0.192823,
		0.956535, 0.149539, -0.250356,
		33.030396, 34.453442, 23.873400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402725, 34.702126, 23.385130>,  <32.360821, 34.348766, 24.048651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402725, 34.702126, 23.385130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767017, 34.544743, 23.435352>,  <32.985592, 34.450314, 23.465487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767017, 34.544743, 23.435352>,  <32.402725, 34.702126, 23.385130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767017, 34.544743, 23.435352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054185, -0.415207, -0.908112,
		0.409436, 0.820240, -0.399460,
		0.910728, -0.393458, 0.125556,
		33.040237, 34.426704, 23.473019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669960, 34.728447, 22.695816>,  <32.402725, 34.702126, 23.385130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669960, 34.728447, 22.695816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952953, 34.501419, 22.864256>,  <33.122749, 34.365200, 22.965321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952953, 34.501419, 22.864256>,  <32.669960, 34.728447, 22.695816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952953, 34.501419, 22.864256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007589, -0.601914, -0.798525,
		0.706687, 0.561749, -0.430153,
		0.707486, -0.567571, 0.421101,
		33.165199, 34.331146, 22.990585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184143, 34.727634, 22.199429>,  <32.669960, 34.728447, 22.695816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184143, 34.727634, 22.199429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263802, 34.404827, 22.421803>,  <33.311596, 34.211143, 22.555227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263802, 34.404827, 22.421803>,  <33.184143, 34.727634, 22.199429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263802, 34.404827, 22.421803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024613, -0.563002, -0.826089,
		0.979660, 0.178199, -0.092259,
		0.199150, -0.807016, 0.555936,
		33.323547, 34.162724, 22.588583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807735, 34.403652, 21.856403>,  <33.184143, 34.727634, 22.199429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807735, 34.403652, 21.856403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637688, 34.103600, 22.059019>,  <33.535660, 33.923569, 22.180588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637688, 34.103600, 22.059019>,  <33.807735, 34.403652, 21.856403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637688, 34.103600, 22.059019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150042, -0.610285, -0.777843,
		0.892615, -0.254673, 0.371994,
		-0.425118, -0.750129, 0.506538,
		33.510151, 33.878559, 22.210981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275578, 33.858139, 21.912514>,  <33.807735, 34.403652, 21.856403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275578, 33.858139, 21.912514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918343, 33.681412, 21.946444>,  <33.704002, 33.575375, 21.966801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918343, 33.681412, 21.946444>,  <34.275578, 33.858139, 21.912514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918343, 33.681412, 21.946444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273306, -0.682576, -0.677786,
		0.357358, -0.582137, 0.730350,
		-0.893084, -0.441822, 0.084823,
		33.650417, 33.548866, 21.971889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444782, 33.132847, 21.960781>,  <34.275578, 33.858139, 21.912514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444782, 33.132847, 21.960781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068336, 33.181915, 21.834766>,  <33.842468, 33.211357, 21.759157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068336, 33.181915, 21.834766>,  <34.444782, 33.132847, 21.960781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068336, 33.181915, 21.834766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110921, -0.768229, -0.630492,
		-0.319364, -0.628312, 0.709387,
		-0.941118, 0.122671, -0.315038,
		33.785999, 33.218716, 21.740255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332222, 32.452148, 21.891428>,  <34.444782, 33.132847, 21.960781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332222, 32.452148, 21.891428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056396, 32.659054, 21.688669>,  <33.890900, 32.783195, 21.567015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056396, 32.659054, 21.688669>,  <34.332222, 32.452148, 21.891428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056396, 32.659054, 21.688669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029278, -0.719253, -0.694132,
		-0.723680, -0.463772, 0.511080,
		-0.689515, 0.517292, -0.506930,
		33.849529, 32.814232, 21.536600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787212, 31.934021, 21.637451>,  <34.332222, 32.452148, 21.891428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787212, 31.934021, 21.637451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790390, 32.260960, 21.407015>,  <33.792297, 32.457123, 21.268753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790390, 32.260960, 21.407015>,  <33.787212, 31.934021, 21.637451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790390, 32.260960, 21.407015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225744, -0.559772, -0.797305,
		-0.974154, 0.136384, 0.180064,
		0.007945, 0.817347, -0.576092,
		33.792774, 32.506165, 21.234188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329655, 31.705179, 20.928375>,  <33.787212, 31.934021, 21.637451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329655, 31.705179, 20.928375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473896, 32.062782, 20.822006>,  <33.560440, 32.277344, 20.758184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473896, 32.062782, 20.822006>,  <33.329655, 31.705179, 20.928375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473896, 32.062782, 20.822006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041239, -0.269547, -0.962104,
		-0.931807, 0.357905, -0.060332,
		0.360604, 0.894007, -0.265925,
		33.582077, 32.330986, 20.742229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833492, 31.896338, 20.402716>,  <33.329655, 31.705179, 20.928375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833492, 31.896338, 20.402716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193035, 32.067612, 20.365385>,  <33.408760, 32.170376, 20.342987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193035, 32.067612, 20.365385>,  <32.833492, 31.896338, 20.402716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193035, 32.067612, 20.365385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073096, -0.063490, -0.995302,
		-0.432097, 0.901459, -0.025770,
		0.898860, 0.428183, -0.093327,
		33.462692, 32.196068, 20.337387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793835, 32.488453, 19.866856>,  <32.833492, 31.896338, 20.402716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793835, 32.488453, 19.866856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181046, 32.390518, 19.888672>,  <33.413372, 32.331757, 19.901762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181046, 32.390518, 19.888672>,  <32.793835, 32.488453, 19.866856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181046, 32.390518, 19.888672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029175, -0.106049, -0.993933,
		0.249140, 0.963746, -0.095515,
		0.968028, -0.244841, 0.054538,
		33.471455, 32.317066, 19.905033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079647, 32.838207, 19.287811>,  <32.793835, 32.488453, 19.866856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079647, 32.838207, 19.287811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327042, 32.546116, 19.403906>,  <33.475479, 32.370861, 19.473562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327042, 32.546116, 19.403906>,  <33.079647, 32.838207, 19.287811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327042, 32.546116, 19.403906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274143, -0.145634, -0.950598,
		0.736425, 0.667497, 0.110116,
		0.618485, -0.730232, 0.290238,
		33.512589, 32.327045, 19.490976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664875, 32.945240, 18.862595>,  <33.079647, 32.838207, 19.287811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664875, 32.945240, 18.862595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678837, 32.566254, 18.989767>,  <33.687214, 32.338860, 19.066071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678837, 32.566254, 18.989767>,  <33.664875, 32.945240, 18.862595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678837, 32.566254, 18.989767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323019, -0.290355, -0.900751,
		0.945748, 0.134143, 0.295915,
		0.034909, -0.947470, 0.317933,
		33.689308, 32.282013, 19.085148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393700, 32.711899, 18.661249>,  <33.664875, 32.945240, 18.862595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393700, 32.711899, 18.661249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167183, 32.384094, 18.696371>,  <34.031273, 32.187412, 18.717443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167183, 32.384094, 18.696371>,  <34.393700, 32.711899, 18.661249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167183, 32.384094, 18.696371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327998, -0.321812, -0.888174,
		0.756128, -0.474167, 0.451039,
		-0.566293, -0.819513, 0.087805,
		33.997295, 32.138241, 18.722713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844440, 32.104744, 18.591402>,  <34.393700, 32.711899, 18.661249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844440, 32.104744, 18.591402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476929, 31.964506, 18.518810>,  <34.256424, 31.880363, 18.475254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476929, 31.964506, 18.518810>,  <34.844440, 32.104744, 18.591402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476929, 31.964506, 18.518810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346712, -0.496756, -0.795628,
		0.188790, -0.793926, 0.577962,
		-0.918776, -0.350593, -0.181481,
		34.201298, 31.859329, 18.464365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914341, 31.339075, 18.656620>,  <34.844440, 32.104744, 18.591402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914341, 31.339075, 18.656620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604149, 31.413181, 18.415192>,  <34.418034, 31.457645, 18.270334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604149, 31.413181, 18.415192>,  <34.914341, 31.339075, 18.656620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604149, 31.413181, 18.415192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359263, -0.656638, -0.663141,
		-0.519185, -0.731098, 0.442654,
		-0.775485, 0.185264, -0.603574,
		34.371502, 31.468760, 18.234119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265419, 30.781715, 19.079056>,  <34.914341, 31.339075, 18.656620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265419, 30.781715, 19.079056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665268, 30.774290, 19.087122>,  <35.905178, 30.769835, 19.091961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665268, 30.774290, 19.087122>,  <35.265419, 30.781715, 19.079056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665268, 30.774290, 19.087122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022829, -0.156730, 0.987378,
		-0.015169, -0.987467, -0.157095,
		0.999625, -0.018564, 0.020165,
		35.965157, 30.768721, 19.093172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350975, 30.277267, 19.488789>,  <35.265419, 30.781715, 19.079056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350975, 30.277267, 19.488789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707306, 30.458954, 19.493217>,  <35.921104, 30.567966, 19.495874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707306, 30.458954, 19.493217>,  <35.350975, 30.277267, 19.488789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707306, 30.458954, 19.493217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009163, -0.042321, 0.999062,
		0.454259, -0.889886, -0.041863,
		0.890823, 0.454216, 0.011071,
		35.974552, 30.595219, 19.496538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738857, 30.027004, 20.046732>,  <35.350975, 30.277267, 19.488789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738857, 30.027004, 20.046732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916763, 30.380962, 19.991379>,  <36.023506, 30.593336, 19.958166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916763, 30.380962, 19.991379>,  <35.738857, 30.027004, 20.046732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916763, 30.380962, 19.991379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170368, 0.068100, 0.983024,
		0.879297, -0.460787, -0.120469,
		0.444761, 0.884894, -0.138383,
		36.050190, 30.646431, 19.949863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302361, 29.964514, 20.474411>,  <35.738857, 30.027004, 20.046732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302361, 29.964514, 20.474411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252609, 30.354980, 20.403271>,  <36.222759, 30.589260, 20.360586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252609, 30.354980, 20.403271>,  <36.302361, 29.964514, 20.474411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252609, 30.354980, 20.403271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032878, 0.175089, 0.984003,
		0.991690, 0.128237, 0.010317,
		-0.124379, 0.976166, -0.177850,
		36.215294, 30.647831, 20.349916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773357, 30.282343, 20.880608>,  <36.302361, 29.964514, 20.474411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773357, 30.282343, 20.880608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505074, 30.576551, 20.842342>,  <36.344101, 30.753077, 20.819384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505074, 30.576551, 20.842342>,  <36.773357, 30.282343, 20.880608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505074, 30.576551, 20.842342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002190, 0.127011, 0.991899,
		0.741715, 0.665487, -0.083577,
		-0.670712, 0.735523, -0.095663,
		36.303860, 30.797209, 20.813643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025505, 30.832157, 21.260370>,  <36.773357, 30.282343, 20.880608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025505, 30.832157, 21.260370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633694, 30.907879, 21.232958>,  <36.398609, 30.953312, 21.216511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633694, 30.907879, 21.232958>,  <37.025505, 30.832157, 21.260370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633694, 30.907879, 21.232958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055990, 0.070817, 0.995917,
		0.193383, 0.979362, -0.058768,
		-0.979525, 0.189303, -0.068529,
		36.339836, 30.964670, 21.212399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933231, 31.340305, 21.769846>,  <37.025505, 30.832157, 21.260370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933231, 31.340305, 21.769846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551544, 31.240986, 21.703136>,  <36.322533, 31.181395, 21.663111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551544, 31.240986, 21.703136>,  <36.933231, 31.340305, 21.769846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551544, 31.240986, 21.703136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205879, 0.140749, 0.968403,
		-0.216982, 0.958403, -0.185425,
		-0.954219, -0.248301, -0.166775,
		36.265278, 31.166496, 21.653105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426228, 31.871803, 22.050686>,  <36.933231, 31.340305, 21.769846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426228, 31.871803, 22.050686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228859, 31.524418, 22.031492>,  <36.110439, 31.315987, 22.019976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228859, 31.524418, 22.031492>,  <36.426228, 31.871803, 22.050686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228859, 31.524418, 22.031492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160738, 0.036831, 0.986310,
		-0.854809, 0.494379, -0.157769,
		-0.493422, -0.868466, -0.047982,
		36.080833, 31.263878, 22.017097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751476, 32.002056, 22.324896>,  <36.426228, 31.871803, 22.050686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751476, 32.002056, 22.324896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841431, 31.613470, 22.355068>,  <35.895401, 31.380320, 22.373171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841431, 31.613470, 22.355068>,  <35.751476, 32.002056, 22.324896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841431, 31.613470, 22.355068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344047, -0.006738, 0.938928,
		-0.911624, -0.237102, -0.335743,
		0.224884, -0.971462, 0.075431,
		35.908897, 31.322031, 22.377697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139027, 31.780167, 22.689093>,  <35.751476, 32.002056, 22.324896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139027, 31.780167, 22.689093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410843, 31.488482, 22.721287>,  <35.573933, 31.313471, 22.740602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410843, 31.488482, 22.721287>,  <35.139027, 31.780167, 22.689093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410843, 31.488482, 22.721287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119475, -0.001758, 0.992836,
		-0.723846, -0.684286, -0.088317,
		0.679539, -0.729212, 0.080483,
		35.614704, 31.269718, 22.745432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821018, 31.328245, 23.229622>,  <35.139027, 31.780167, 22.689093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821018, 31.328245, 23.229622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216213, 31.268894, 23.212376>,  <35.453331, 31.233284, 23.202028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216213, 31.268894, 23.212376>,  <34.821018, 31.328245, 23.229622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216213, 31.268894, 23.212376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075082, 0.217147, 0.973247,
		-0.135048, -0.964796, 0.225679,
		0.987990, -0.148379, -0.043113,
		35.512611, 31.224380, 23.199442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995392, 30.931419, 23.705263>,  <34.821018, 31.328245, 23.229622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995392, 30.931419, 23.705263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339561, 31.123461, 23.636942>,  <35.546062, 31.238686, 23.595949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339561, 31.123461, 23.636942>,  <34.995392, 30.931419, 23.705263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339561, 31.123461, 23.636942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042741, 0.401994, 0.914644,
		0.507783, -0.779682, 0.366406,
		0.860424, 0.480101, -0.170802,
		35.597687, 31.267490, 23.585701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384407, 30.973526, 24.410259>,  <34.995392, 30.931419, 23.705263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384407, 30.973526, 24.410259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593678, 31.229948, 24.185640>,  <35.719238, 31.383801, 24.050869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593678, 31.229948, 24.185640>,  <35.384407, 30.973526, 24.410259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593678, 31.229948, 24.185640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266042, 0.503136, 0.822238,
		0.809635, -0.579570, 0.092681,
		0.523176, 0.641056, -0.561546,
		35.750629, 31.422264, 24.017176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057056, 31.048742, 24.723793>,  <35.384407, 30.973526, 24.410259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057056, 31.048742, 24.723793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997787, 31.375948, 24.501478>,  <35.962227, 31.572271, 24.368090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997787, 31.375948, 24.501478>,  <36.057056, 31.048742, 24.723793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997787, 31.375948, 24.501478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283631, 0.573533, 0.768514,
		0.947417, -0.043764, -0.316996,
		-0.148174, 0.818013, -0.555787,
		35.953335, 31.621351, 24.334742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555450, 31.502893, 24.914055>,  <36.057056, 31.048742, 24.723793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555450, 31.502893, 24.914055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311298, 31.756670, 24.724352>,  <36.164806, 31.908936, 24.610529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311298, 31.756670, 24.724352>,  <36.555450, 31.502893, 24.914055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311298, 31.756670, 24.724352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391573, 0.762133, 0.515580,
		0.688552, 0.128994, -0.713622,
		-0.610382, 0.634439, -0.474258,
		36.128185, 31.947002, 24.582075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914577, 32.171124, 24.869604>,  <36.555450, 31.502893, 24.914055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914577, 32.171124, 24.869604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527962, 32.271591, 24.848738>,  <36.295994, 32.331871, 24.836218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527962, 32.271591, 24.848738>,  <36.914577, 32.171124, 24.869604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527962, 32.271591, 24.848738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185575, 0.824993, 0.533806,
		0.177109, 0.506263, -0.843997,
		-0.966537, 0.251166, -0.052164,
		36.237999, 32.346943, 24.833088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911732, 32.849762, 25.015011>,  <36.914577, 32.171124, 24.869604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911732, 32.849762, 25.015011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525452, 32.760674, 25.068403>,  <36.293682, 32.707218, 25.100439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525452, 32.760674, 25.068403>,  <36.911732, 32.849762, 25.015011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525452, 32.760674, 25.068403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064676, 0.704177, 0.707073,
		-0.251476, 0.674187, -0.694429,
		-0.965700, -0.222725, 0.133480,
		36.235741, 32.693855, 25.108448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625046, 33.390663, 24.934582>,  <36.911732, 32.849762, 25.015011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625046, 33.390663, 24.934582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372677, 33.183727, 25.165855>,  <36.221256, 33.059566, 25.304619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372677, 33.183727, 25.165855>,  <36.625046, 33.390663, 24.934582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372677, 33.183727, 25.165855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092931, 0.689473, 0.718325,
		-0.770257, 0.506941, -0.386930,
		-0.630926, -0.517337, 0.578182,
		36.183399, 33.028526, 25.339310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075756, 33.889183, 25.067490>,  <36.625046, 33.390663, 24.934582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075756, 33.889183, 25.067490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061886, 33.599159, 25.342615>,  <36.053562, 33.425144, 25.507690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061886, 33.599159, 25.342615>,  <36.075756, 33.889183, 25.067490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061886, 33.599159, 25.342615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002787, 0.688154, 0.725560,
		-0.999395, 0.027076, -0.021842,
		-0.034676, -0.725060, 0.687813,
		36.051483, 33.381641, 25.548960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585632, 34.118240, 25.558537>,  <36.075756, 33.889183, 25.067490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585632, 34.118240, 25.558537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769684, 33.837692, 25.776293>,  <35.880116, 33.669365, 25.906946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769684, 33.837692, 25.776293>,  <35.585632, 34.118240, 25.558537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769684, 33.837692, 25.776293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027996, 0.601387, 0.798467,
		-0.887410, -0.382639, 0.257081,
		0.460130, -0.701370, 0.544390,
		35.907722, 33.627281, 25.939610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132469, 34.022324, 26.241756>,  <35.585632, 34.118240, 25.558537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132469, 34.022324, 26.241756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501579, 33.878395, 26.296913>,  <35.723045, 33.792038, 26.330008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501579, 33.878395, 26.296913>,  <35.132469, 34.022324, 26.241756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501579, 33.878395, 26.296913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098517, 0.566250, 0.818325,
		-0.372535, -0.741544, 0.557969,
		0.922774, -0.359824, 0.137893,
		35.778412, 33.770447, 26.338282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053722, 33.788643, 26.912031>,  <35.132469, 34.022324, 26.241756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053722, 33.788643, 26.912031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430702, 33.849598, 26.792992>,  <35.656891, 33.886169, 26.721567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430702, 33.849598, 26.792992>,  <35.053722, 33.788643, 26.912031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430702, 33.849598, 26.792992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088330, 0.744988, 0.661204,
		0.322465, -0.649440, 0.688654,
		0.942451, 0.152386, -0.297598,
		35.713436, 33.895313, 26.703712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332195, 34.032902, 27.427757>,  <35.053722, 33.788643, 26.912031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332195, 34.032902, 27.427757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638588, 34.117023, 27.184763>,  <35.822426, 34.167496, 27.038967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638588, 34.117023, 27.184763>,  <35.332195, 34.032902, 27.427757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638588, 34.117023, 27.184763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235384, 0.787603, 0.569453,
		0.598215, -0.579184, 0.553790,
		0.765985, 0.210302, -0.607487,
		35.868385, 34.180115, 27.002518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796650, 34.276936, 27.865877>,  <35.332195, 34.032902, 27.427757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796650, 34.276936, 27.865877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914715, 34.413155, 27.508799>,  <35.985554, 34.494884, 27.294552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914715, 34.413155, 27.508799>,  <35.796650, 34.276936, 27.865877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914715, 34.413155, 27.508799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407477, 0.800228, 0.439997,
		0.864201, -0.493624, 0.097430,
		0.295159, 0.340545, -0.892698,
		36.003262, 34.515320, 27.240990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588448, 34.467453, 27.804846>,  <35.796650, 34.276936, 27.865877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588448, 34.467453, 27.804846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410301, 34.672005, 27.510868>,  <36.303413, 34.794735, 27.334480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410301, 34.672005, 27.510868>,  <36.588448, 34.467453, 27.804846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410301, 34.672005, 27.510868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338618, 0.856080, 0.390467,
		0.828848, -0.074965, -0.554428,
		-0.445364, 0.511378, -0.734945,
		36.276691, 34.825417, 27.290384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077179, 34.943241, 27.559391>,  <36.588448, 34.467453, 27.804846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077179, 34.943241, 27.559391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732849, 35.099136, 27.428492>,  <36.526253, 35.192673, 27.349953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732849, 35.099136, 27.428492>,  <37.077179, 34.943241, 27.559391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732849, 35.099136, 27.428492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289481, 0.903872, 0.314984,
		0.418549, 0.176414, -0.890895,
		-0.860823, 0.389734, -0.327247,
		36.474602, 35.216057, 27.330318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328701, 35.461811, 27.073917>,  <37.077179, 34.943241, 27.559391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328701, 35.461811, 27.073917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957401, 35.561474, 27.184385>,  <36.734623, 35.621273, 27.250666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957401, 35.561474, 27.184385>,  <37.328701, 35.461811, 27.073917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957401, 35.561474, 27.184385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330240, 0.893711, 0.303680,
		-0.171152, 0.373093, -0.911871,
		-0.928250, 0.249161, 0.276171,
		36.678925, 35.636223, 27.267237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158882, 36.171337, 26.759109>,  <37.328701, 35.461811, 27.073917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158882, 36.171337, 26.759109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908562, 36.128292, 27.068117>,  <36.758369, 36.102467, 27.253523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908562, 36.128292, 27.068117>,  <37.158882, 36.171337, 26.759109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908562, 36.128292, 27.068117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229456, 0.921209, 0.314203,
		-0.745465, 0.373889, -0.551806,
		-0.625805, -0.107612, 0.772520,
		36.720821, 36.096008, 27.299873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996872, 36.883949, 26.861401>,  <37.158882, 36.171337, 26.759109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996872, 36.883949, 26.861401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841049, 36.686085, 27.172157>,  <36.747555, 36.567368, 27.358610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841049, 36.686085, 27.172157>,  <36.996872, 36.883949, 26.861401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841049, 36.686085, 27.172157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008500, 0.841559, 0.540098,
		-0.920965, 0.217001, -0.323628,
		-0.389554, -0.494660, 0.776891,
		36.724182, 36.537685, 27.405224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524803, 37.371937, 27.128639>,  <36.996872, 36.883949, 26.861401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524803, 37.371937, 27.128639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612576, 37.102379, 27.410837>,  <36.665237, 36.940643, 27.580156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612576, 37.102379, 27.410837>,  <36.524803, 37.371937, 27.128639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612576, 37.102379, 27.410837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143946, 0.737566, 0.659754,
		-0.964951, -0.043217, 0.258849,
		0.219431, -0.673891, 0.705494,
		36.678406, 36.900211, 27.622486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148533, 37.586094, 27.747337>,  <36.524803, 37.371937, 27.128639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148533, 37.586094, 27.747337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468845, 37.381775, 27.872450>,  <36.661034, 37.259182, 27.947517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468845, 37.381775, 27.872450>,  <36.148533, 37.586094, 27.747337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468845, 37.381775, 27.872450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099442, 0.628346, 0.771552,
		-0.590646, -0.586740, 0.553962,
		0.800780, -0.510801, 0.312783,
		36.709080, 37.228535, 27.966286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113132, 37.617340, 28.550146>,  <36.148533, 37.586094, 27.747337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113132, 37.617340, 28.550146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486755, 37.487522, 28.490540>,  <36.710930, 37.409630, 28.454775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486755, 37.487522, 28.490540>,  <36.113132, 37.617340, 28.550146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486755, 37.487522, 28.490540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304876, 0.507355, 0.806003,
		-0.185983, -0.798285, 0.572846,
		0.934056, -0.324549, -0.149018,
		36.766972, 37.390156, 28.445833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321960, 37.529263, 29.153749>,  <36.113132, 37.617340, 28.550146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321960, 37.529263, 29.153749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672382, 37.546810, 28.961664>,  <36.882637, 37.557339, 28.846413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672382, 37.546810, 28.961664>,  <36.321960, 37.529263, 29.153749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672382, 37.546810, 28.961664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436545, 0.350872, 0.828443,
		0.204832, -0.935396, 0.288234,
		0.876055, 0.043864, -0.480212,
		36.935200, 37.559971, 28.817600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911209, 37.139542, 29.571527>,  <36.321960, 37.529263, 29.153749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911209, 37.139542, 29.571527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097218, 37.417843, 29.352556>,  <37.208824, 37.584824, 29.221174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097218, 37.417843, 29.352556>,  <36.911209, 37.139542, 29.571527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097218, 37.417843, 29.352556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570232, 0.237601, 0.786373,
		0.677193, -0.677841, -0.286253,
		0.465022, 0.695757, -0.547428,
		37.236725, 37.626572, 29.188328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649364, 36.998550, 29.609411>,  <36.911209, 37.139542, 29.571527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649364, 36.998550, 29.609411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609669, 37.382999, 29.506344>,  <37.585854, 37.613670, 29.444504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609669, 37.382999, 29.506344>,  <37.649364, 36.998550, 29.609411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609669, 37.382999, 29.506344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554501, 0.268428, 0.787702,
		0.826245, -0.064707, -0.559583,
		-0.099238, 0.961124, -0.257667,
		37.579899, 37.671337, 29.429043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293144, 37.143585, 29.864782>,  <37.649364, 36.998550, 29.609411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293144, 37.143585, 29.864782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086239, 37.481438, 29.809589>,  <37.962097, 37.684151, 29.776474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086239, 37.481438, 29.809589>,  <38.293144, 37.143585, 29.864782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086239, 37.481438, 29.809589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467000, 0.413670, 0.781530,
		0.717182, 0.339820, -0.608418,
		-0.517264, 0.844630, -0.137981,
		37.931061, 37.734825, 29.768194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858772, 37.783215, 30.001612>,  <38.293144, 37.143585, 29.864782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858772, 37.783215, 30.001612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483074, 37.911274, 30.051142>,  <38.257656, 37.988110, 30.080860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483074, 37.911274, 30.051142>,  <38.858772, 37.783215, 30.001612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483074, 37.911274, 30.051142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320611, 0.689343, 0.649626,
		0.122620, 0.649854, -0.750102,
		-0.939241, 0.320148, 0.123823,
		38.201302, 38.007317, 30.088289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959930, 38.478111, 29.898380>,  <38.858772, 37.783215, 30.001612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959930, 38.478111, 29.898380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621357, 38.383324, 30.089127>,  <38.418213, 38.326450, 30.203573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621357, 38.383324, 30.089127>,  <38.959930, 38.478111, 29.898380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621357, 38.383324, 30.089127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305769, 0.516880, 0.799588,
		-0.435956, 0.822607, -0.365048,
		-0.846433, -0.236964, 0.476864,
		38.367428, 38.312233, 30.232185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652775, 39.080593, 30.060087>,  <38.959930, 38.478111, 29.898380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652775, 39.080593, 30.060087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494099, 38.837219, 30.335024>,  <38.398891, 38.691193, 30.499987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494099, 38.837219, 30.335024>,  <38.652775, 39.080593, 30.060087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494099, 38.837219, 30.335024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305142, 0.618794, 0.723866,
		-0.865751, 0.496888, -0.059810,
		-0.396691, -0.608438, 0.687343,
		38.375092, 38.654690, 30.541227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407295, 39.519848, 30.541409>,  <38.652775, 39.080593, 30.060087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407295, 39.519848, 30.541409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460136, 39.172379, 30.732388>,  <38.491840, 38.963898, 30.846975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460136, 39.172379, 30.732388>,  <38.407295, 39.519848, 30.541409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460136, 39.172379, 30.732388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402911, 0.487141, 0.774827,
		-0.905654, 0.090009, 0.414353,
		0.132107, -0.868672, 0.477447,
		38.499767, 38.911777, 30.875622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129704, 39.605824, 31.321539>,  <38.407295, 39.519848, 30.541409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129704, 39.605824, 31.321539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409065, 39.321083, 31.291878>,  <38.576683, 39.150238, 31.274082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409065, 39.321083, 31.291878>,  <38.129704, 39.605824, 31.321539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409065, 39.321083, 31.291878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474705, 0.383204, 0.792345,
		-0.535614, -0.588579, 0.605551,
		0.698407, -0.711849, -0.074152,
		38.618587, 39.107529, 31.269632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154507, 39.273987, 31.965874>,  <38.129704, 39.605824, 31.321539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154507, 39.273987, 31.965874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503101, 39.190205, 31.788500>,  <38.712257, 39.139935, 31.682076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503101, 39.190205, 31.788500>,  <38.154507, 39.273987, 31.965874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503101, 39.190205, 31.788500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478191, 0.563557, 0.673600,
		0.108808, -0.799081, 0.591296,
		0.871490, -0.209459, -0.443433,
		38.764549, 39.127365, 31.655470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613178, 38.955917, 32.468513>,  <38.154507, 39.273987, 31.965874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613178, 38.955917, 32.468513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865334, 39.108047, 32.197823>,  <39.016628, 39.199326, 32.035408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865334, 39.108047, 32.197823>,  <38.613178, 38.955917, 32.468513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865334, 39.108047, 32.197823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512669, 0.450634, 0.730821,
		0.582907, -0.807639, 0.089094,
		0.630389, 0.380325, -0.676730,
		39.054451, 39.222145, 31.994804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282574, 38.902756, 32.735703>,  <38.613178, 38.955917, 32.468513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282574, 38.902756, 32.735703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256870, 39.212379, 32.483765>,  <39.241447, 39.398151, 32.332600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256870, 39.212379, 32.483765>,  <39.282574, 38.902756, 32.735703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256870, 39.212379, 32.483765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440469, 0.588346, 0.678112,
		0.895465, -0.233853, -0.378754,
		-0.064259, 0.774055, -0.629848,
		39.237591, 39.444595, 32.294811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846603, 39.261456, 32.991982>,  <39.282574, 38.902756, 32.735703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846603, 39.261456, 32.991982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686829, 39.522213, 32.734150>,  <39.590965, 39.678669, 32.579453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686829, 39.522213, 32.734150>,  <39.846603, 39.261456, 32.991982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686829, 39.522213, 32.734150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509413, 0.742391, 0.435147,
		0.762200, -0.154543, -0.628624,
		-0.399436, 0.651898, -0.644577,
		39.566998, 39.717781, 32.540775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426281, 39.675800, 32.803139>,  <39.846603, 39.261456, 32.991982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426281, 39.675800, 32.803139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113613, 39.890625, 32.676296>,  <39.926010, 40.019520, 32.600189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113613, 39.890625, 32.676296>,  <40.426281, 39.675800, 32.803139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113613, 39.890625, 32.676296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354349, 0.800824, 0.482822,
		0.513250, 0.265042, -0.816288,
		-0.781672, 0.537060, -0.317106,
		39.879112, 40.051743, 32.581165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706131, 40.167160, 32.460346>,  <40.426281, 39.675800, 32.803139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706131, 40.167160, 32.460346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348728, 40.311829, 32.566803>,  <40.134285, 40.398632, 32.630676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348728, 40.311829, 32.566803>,  <40.706131, 40.167160, 32.460346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348728, 40.311829, 32.566803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445388, 0.789266, 0.422716,
		-0.057168, 0.496236, -0.866304,
		-0.893511, 0.361676, 0.266138,
		40.080673, 40.420330, 32.646645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699841, 40.826630, 32.309734>,  <40.706131, 40.167160, 32.460346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699841, 40.826630, 32.309734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446968, 40.796776, 32.618221>,  <40.295246, 40.778862, 32.803314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446968, 40.796776, 32.618221>,  <40.699841, 40.826630, 32.309734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446968, 40.796776, 32.618221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417784, 0.805427, 0.420409,
		-0.652538, 0.587976, -0.477993,
		-0.632179, -0.074635, 0.771219,
		40.257313, 40.774384, 32.849586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355537, 41.473381, 32.453773>,  <40.699841, 40.826630, 32.309734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355537, 41.473381, 32.453773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382263, 41.264347, 32.793758>,  <40.398300, 41.138927, 32.997749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382263, 41.264347, 32.793758>,  <40.355537, 41.473381, 32.453773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382263, 41.264347, 32.793758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299530, 0.823081, 0.482513,
		-0.951744, 0.222350, 0.211527,
		0.066817, -0.522588, 0.849963,
		40.402309, 41.107571, 33.048748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022816, 41.837109, 33.009228>,  <40.355537, 41.473381, 32.453773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022816, 41.837109, 33.009228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292679, 41.598095, 33.182564>,  <40.454597, 41.454685, 33.286564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292679, 41.598095, 33.182564>,  <40.022816, 41.837109, 33.009228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292679, 41.598095, 33.182564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269384, 0.745908, 0.609141,
		-0.687218, -0.294227, 0.664200,
		0.674659, -0.597538, 0.433341,
		40.495075, 41.418835, 33.312565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805466, 41.874405, 33.735687>,  <40.022816, 41.837109, 33.009228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805466, 41.874405, 33.735687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190632, 41.766697, 33.728825>,  <40.421730, 41.702072, 33.724709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190632, 41.766697, 33.728825>,  <39.805466, 41.874405, 33.735687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190632, 41.766697, 33.728825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194521, 0.648731, 0.735738,
		-0.186984, -0.711788, 0.677049,
		0.962911, -0.269271, -0.017156,
		40.479504, 41.685917, 33.723679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931271, 41.776814, 34.395653>,  <39.805466, 41.874405, 33.735687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931271, 41.776814, 34.395653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278511, 41.852585, 34.212124>,  <40.486855, 41.898048, 34.102005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278511, 41.852585, 34.212124>,  <39.931271, 41.776814, 34.395653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278511, 41.852585, 34.212124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280238, 0.575918, 0.767975,
		0.409719, -0.795259, 0.446870,
		0.868100, 0.189424, -0.458826,
		40.538940, 41.909412, 34.074474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536682, 41.691376, 34.857891>,  <39.931271, 41.776814, 34.395653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536682, 41.691376, 34.857891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640701, 41.953461, 34.574181>,  <40.703114, 42.110714, 34.403954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640701, 41.953461, 34.574181>,  <40.536682, 41.691376, 34.857891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640701, 41.953461, 34.574181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485142, 0.546443, 0.682669,
		0.834872, -0.521627, -0.175769,
		0.260051, 0.655214, -0.709273,
		40.718716, 42.150024, 34.361401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108685, 41.867149, 35.229107>,  <40.536682, 41.691376, 34.857891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108685, 41.867149, 35.229107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103512, 42.104851, 34.907436>,  <41.100407, 42.247471, 34.714436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103512, 42.104851, 34.907436>,  <41.108685, 41.867149, 35.229107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103512, 42.104851, 34.907436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379927, 0.746847, 0.545780,
		0.924926, -0.298466, -0.235435,
		-0.012937, 0.594254, -0.804173,
		41.099632, 42.283127, 34.666183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504364, 42.441502, 35.399357>,  <41.108685, 41.867149, 35.229107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504364, 42.441502, 35.399357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312794, 42.586792, 35.079681>,  <41.197849, 42.673965, 34.887878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312794, 42.586792, 35.079681>,  <41.504364, 42.441502, 35.399357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312794, 42.586792, 35.079681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165962, 0.931432, 0.323870,
		0.862023, 0.022476, -0.506371,
		-0.478929, 0.363221, -0.799185,
		41.169113, 42.695759, 34.839928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938690, 42.756001, 34.925789>,  <41.504364, 42.441502, 35.399357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938690, 42.756001, 34.925789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581676, 42.936363, 34.922504>,  <41.367470, 43.044582, 34.920532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581676, 42.936363, 34.922504>,  <41.938690, 42.756001, 34.925789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581676, 42.936363, 34.922504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372399, 0.747156, 0.550524,
		0.254375, 0.488301, -0.834779,
		-0.892531, 0.450911, -0.008215,
		41.313915, 43.071636, 34.920040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104336, 43.413059, 34.754810>,  <41.938690, 42.756001, 34.925789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104336, 43.413059, 34.754810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745300, 43.435020, 34.929768>,  <41.529877, 43.448196, 35.034740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745300, 43.435020, 34.929768>,  <42.104336, 43.413059, 34.754810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745300, 43.435020, 34.929768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234954, 0.899121, 0.369295,
		-0.372993, 0.434244, -0.819944,
		-0.897593, 0.054904, 0.437393,
		41.476021, 43.451492, 35.060986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826328, 43.976677, 34.613300>,  <42.104336, 43.413059, 34.754810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826328, 43.976677, 34.613300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648155, 43.879803, 34.958073>,  <41.541252, 43.821678, 35.164936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648155, 43.879803, 34.958073>,  <41.826328, 43.976677, 34.613300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648155, 43.879803, 34.958073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241956, 0.894334, 0.376330,
		-0.862001, 0.376181, -0.339769,
		-0.445435, -0.242188, 0.861936,
		41.514526, 43.807148, 35.216652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348148, 44.531937, 34.736759>,  <41.826328, 43.976677, 34.613300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348148, 44.531937, 34.736759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460545, 44.332329, 35.064667>,  <41.527985, 44.212563, 35.261410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460545, 44.332329, 35.064667>,  <41.348148, 44.531937, 34.736759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460545, 44.332329, 35.064667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305025, 0.856330, 0.416724,
		-0.909947, 0.132953, 0.392837,
		0.280993, -0.499021, 0.819768,
		41.544842, 44.182621, 35.310596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018295, 44.905556, 35.254875>,  <41.348148, 44.531937, 34.736759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018295, 44.905556, 35.254875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331535, 44.691479, 35.381565>,  <41.519482, 44.563030, 35.457581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331535, 44.691479, 35.381565>,  <41.018295, 44.905556, 35.254875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331535, 44.691479, 35.381565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357629, 0.804214, 0.474702,
		-0.508775, -0.258469, 0.821183,
		0.783102, -0.535195, 0.316728,
		41.566467, 44.530922, 35.476582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261833, 44.888935, 36.063877>,  <41.018295, 44.905556, 35.254875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261833, 44.888935, 36.063877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568176, 44.850986, 35.809490>,  <41.751984, 44.828217, 35.656857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568176, 44.850986, 35.809490>,  <41.261833, 44.888935, 36.063877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568176, 44.850986, 35.809490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465580, 0.764000, 0.446699,
		0.443497, -0.638203, 0.629291,
		0.765863, -0.094875, -0.635966,
		41.797935, 44.822525, 35.618702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734600, 45.409439, 36.420044>,  <41.261833, 44.888935, 36.063877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734600, 45.409439, 36.420044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410774, 45.643005, 36.444191>,  <41.216480, 45.783146, 36.458679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410774, 45.643005, 36.444191>,  <41.734600, 45.409439, 36.420044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410774, 45.643005, 36.444191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465750, -0.576308, -0.671525,
		-0.357322, -0.571761, 0.738519,
		-0.809566, 0.583917, 0.060370,
		41.167904, 45.818180, 36.462303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493641, 45.627846, 36.338692>,  <41.734600, 45.409439, 36.420044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493641, 45.627846, 36.338692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436951, 45.274452, 36.517296>,  <42.402939, 45.062416, 36.624458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436951, 45.274452, 36.517296>,  <42.493641, 45.627846, 36.338692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436951, 45.274452, 36.517296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597700, -0.283185, -0.750041,
		0.789094, -0.373175, -0.487926,
		-0.141723, -0.883485, 0.446506,
		42.394432, 45.009407, 36.651249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548183, 45.023617, 35.876820>,  <42.493641, 45.627846, 36.338692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548183, 45.023617, 35.876820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305733, 44.926964, 36.179928>,  <42.160263, 44.868973, 36.361794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305733, 44.926964, 36.179928>,  <42.548183, 45.023617, 35.876820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305733, 44.926964, 36.179928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582981, -0.513132, -0.629944,
		0.541053, -0.823595, 0.170156,
		-0.606131, -0.241635, 0.757772,
		42.123894, 44.854473, 36.407261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407413, 44.276043, 35.815388>,  <42.548183, 45.023617, 35.876820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407413, 44.276043, 35.815388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094742, 44.443569, 36.000244>,  <41.907139, 44.544083, 36.111156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094742, 44.443569, 36.000244>,  <42.407413, 44.276043, 35.815388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094742, 44.443569, 36.000244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566506, -0.786716, -0.245252,
		0.260856, -0.453513, 0.852221,
		-0.781681, 0.418813, 0.462137,
		41.860237, 44.569214, 36.138885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107140, 43.930969, 36.423794>,  <42.407413, 44.276043, 35.815388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107140, 43.930969, 36.423794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872608, 44.142551, 36.178379>,  <41.731892, 44.269501, 36.031132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872608, 44.142551, 36.178379>,  <42.107140, 43.930969, 36.423794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872608, 44.142551, 36.178379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442186, -0.843577, -0.304712,
		-0.678744, 0.092636, 0.728509,
		-0.586326, 0.528958, -0.613535,
		41.696709, 44.301239, 35.994320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408867, 43.622818, 36.483093>,  <42.107140, 43.930969, 36.423794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408867, 43.622818, 36.483093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444302, 43.800339, 36.126400>,  <41.465561, 43.906849, 35.912384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444302, 43.800339, 36.126400>,  <41.408867, 43.622818, 36.483093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444302, 43.800339, 36.126400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596636, -0.693240, -0.404281,
		-0.797608, 0.567857, 0.203374,
		0.088587, 0.443798, -0.891737,
		41.470879, 43.933479, 35.858879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673412, 43.600803, 36.192364>,  <41.408867, 43.622818, 36.483093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673412, 43.600803, 36.192364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944927, 43.666576, 35.906086>,  <41.107834, 43.706039, 35.734322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944927, 43.666576, 35.906086>,  <40.673412, 43.600803, 36.192364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944927, 43.666576, 35.906086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351952, -0.782530, -0.513592,
		-0.644501, 0.600507, -0.473297,
		0.678785, 0.164433, -0.715690,
		41.148563, 43.715908, 35.691380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327560, 43.333431, 35.540012>,  <40.673412, 43.600803, 36.192364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327560, 43.333431, 35.540012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652332, 43.447826, 35.336452>,  <40.847195, 43.516464, 35.214317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652332, 43.447826, 35.336452>,  <40.327560, 43.333431, 35.540012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652332, 43.447826, 35.336452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246687, -0.622012, -0.743133,
		-0.529068, 0.728912, -0.434482,
		0.811932, 0.285986, -0.508900,
		40.895912, 43.533623, 35.183781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215481, 43.523857, 34.766914>,  <40.327560, 43.333431, 35.540012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215481, 43.523857, 34.766914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600201, 43.414364, 34.768345>,  <40.831032, 43.348667, 34.769203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600201, 43.414364, 34.768345>,  <40.215481, 43.523857, 34.766914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600201, 43.414364, 34.768345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193997, -0.690750, -0.696584,
		0.193149, 0.669280, -0.717466,
		0.961800, -0.273731, 0.003580,
		40.888741, 43.332245, 34.769421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500587, 43.396561, 33.984947>,  <40.215481, 43.523857, 34.766914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500587, 43.396561, 33.984947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687618, 43.163242, 34.250622>,  <40.799835, 43.023251, 34.410027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687618, 43.163242, 34.250622>,  <40.500587, 43.396561, 33.984947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687618, 43.163242, 34.250622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109682, -0.783858, -0.611176,
		0.877120, 0.212924, -0.430492,
		0.467578, -0.583292, 0.664184,
		40.827892, 42.988255, 34.449879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112007, 43.085869, 33.646034>,  <40.500587, 43.396561, 33.984947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112007, 43.085869, 33.646034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123581, 42.833530, 33.956181>,  <41.130524, 42.682129, 34.142269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123581, 42.833530, 33.956181>,  <41.112007, 43.085869, 33.646034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123581, 42.833530, 33.956181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020770, -0.775905, -0.630507,
		0.999366, 0.002137, -0.035551,
		0.028931, -0.630846, 0.775369,
		41.132259, 42.644276, 34.188789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552147, 42.585003, 33.555950>,  <41.112007, 43.085869, 33.646034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552147, 42.585003, 33.555950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296185, 42.421535, 33.816261>,  <41.142609, 42.323456, 33.972446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296185, 42.421535, 33.816261>,  <41.552147, 42.585003, 33.555950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296185, 42.421535, 33.816261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094831, -0.798397, -0.594617,
		0.762579, -0.442213, 0.472146,
		-0.639907, -0.408668, 0.650776,
		41.104214, 42.298935, 34.011494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682716, 41.902420, 33.688721>,  <41.552147, 42.585003, 33.555950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682716, 41.902420, 33.688721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331924, 41.848331, 33.873165>,  <41.121449, 41.815880, 33.983833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331924, 41.848331, 33.873165>,  <41.682716, 41.902420, 33.688721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331924, 41.848331, 33.873165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096324, -0.890644, -0.444382,
		0.470776, -0.434130, 0.768050,
		-0.876979, -0.135223, 0.461111,
		41.068832, 41.807766, 34.011497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571507, 41.223228, 33.663967>,  <41.682716, 41.902420, 33.688721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571507, 41.223228, 33.663967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203232, 41.331238, 33.776703>,  <40.982269, 41.396042, 33.844345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203232, 41.331238, 33.776703>,  <41.571507, 41.223228, 33.663967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203232, 41.331238, 33.776703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383794, -0.757714, -0.527799,
		0.071037, -0.594103, 0.801246,
		-0.920682, 0.270020, 0.281839,
		40.927029, 41.412243, 33.861256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221905, 40.561214, 33.988857>,  <41.571507, 41.223228, 33.663967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221905, 40.561214, 33.988857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994301, 40.828785, 33.797539>,  <40.857738, 40.989326, 33.682747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994301, 40.828785, 33.797539>,  <41.221905, 40.561214, 33.988857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994301, 40.828785, 33.797539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395065, -0.732487, -0.554424,
		-0.721207, -0.126522, 0.681067,
		-0.569020, 0.668920, -0.478291,
		40.823597, 41.029461, 33.654049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497581, 40.303703, 34.080933>,  <41.221905, 40.561214, 33.988857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497581, 40.303703, 34.080933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473888, 40.560295, 33.774990>,  <40.459671, 40.714249, 33.591427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473888, 40.560295, 33.774990>,  <40.497581, 40.303703, 34.080933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473888, 40.560295, 33.774990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635145, -0.615320, -0.466874,
		-0.770118, 0.458138, 0.443879,
		-0.059234, 0.641476, -0.764853,
		40.456120, 40.752739, 33.545532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897427, 40.955898, 33.978310>,  <40.497581, 40.303703, 34.080933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897427, 40.955898, 33.978310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960537, 41.077408, 33.602474>,  <39.998405, 41.150314, 33.376972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960537, 41.077408, 33.602474>,  <39.897427, 40.955898, 33.978310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960537, 41.077408, 33.602474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406906, -0.846967, -0.342162,
		-0.899741, 0.436309, -0.010024,
		0.157779, 0.303778, -0.939587,
		40.007870, 41.168541, 33.320599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221939, 40.915207, 33.588684>,  <39.897427, 40.955898, 33.978310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221939, 40.915207, 33.588684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545029, 40.867577, 33.357719>,  <39.738884, 40.839001, 33.219143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545029, 40.867577, 33.357719>,  <39.221939, 40.915207, 33.588684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545029, 40.867577, 33.357719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451959, -0.753944, -0.476762,
		-0.378564, 0.646058, -0.662797,
		0.807727, -0.119072, -0.577407,
		39.787346, 40.831856, 33.184498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890282, 40.818829, 33.021385>,  <39.221939, 40.915207, 33.588684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890282, 40.818829, 33.021385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256214, 40.695148, 32.917480>,  <39.475773, 40.620941, 32.855137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256214, 40.695148, 32.917480>,  <38.890282, 40.818829, 33.021385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256214, 40.695148, 32.917480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400599, -0.776030, -0.487132,
		-0.050961, 0.549704, -0.833803,
		0.914835, -0.309196, -0.259758,
		39.530666, 40.602390, 32.839554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631702, 40.619862, 32.419266>,  <38.890282, 40.818829, 33.021385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631702, 40.619862, 32.419266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014713, 40.504608, 32.423576>,  <39.244522, 40.435455, 32.426163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014713, 40.504608, 32.423576>,  <38.631702, 40.619862, 32.419266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014713, 40.504608, 32.423576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223224, -0.764452, -0.604801,
		0.182498, 0.576710, -0.796304,
		0.957531, -0.288129, 0.010776,
		39.301971, 40.418171, 32.426807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029469, 40.611694, 31.807777>,  <38.631702, 40.619862, 32.419266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029469, 40.611694, 31.807777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196312, 40.331165, 32.039009>,  <39.296417, 40.162849, 32.177750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196312, 40.331165, 32.039009>,  <39.029469, 40.611694, 31.807777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196312, 40.331165, 32.039009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103738, -0.668630, -0.736324,
		0.902917, 0.247158, -0.351645,
		0.417109, -0.701318, 0.578078,
		39.321445, 40.120770, 32.212433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479851, 40.300797, 31.439486>,  <39.029469, 40.611694, 31.807777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479851, 40.300797, 31.439486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454353, 39.995041, 31.696123>,  <39.439056, 39.811588, 31.850105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454353, 39.995041, 31.696123>,  <39.479851, 40.300797, 31.439486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454353, 39.995041, 31.696123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243640, -0.611528, -0.752777,
		0.967769, -0.204299, -0.147258,
		-0.063739, -0.764392, 0.641594,
		39.435230, 39.765724, 31.888601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813519, 39.671314, 31.089493>,  <39.479851, 40.300797, 31.439486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813519, 39.671314, 31.089493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592014, 39.521652, 31.387045>,  <39.459110, 39.431854, 31.565577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592014, 39.521652, 31.387045>,  <39.813519, 39.671314, 31.089493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592014, 39.521652, 31.387045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378160, -0.682916, -0.624997,
		0.741853, -0.627404, 0.236682,
		-0.553760, -0.374152, 0.743882,
		39.425888, 39.409405, 31.610210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979115, 38.895229, 31.262211>,  <39.813519, 39.671314, 31.089493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979115, 38.895229, 31.262211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599667, 38.989517, 31.346642>,  <39.371998, 39.046089, 31.397301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599667, 38.989517, 31.346642>,  <39.979115, 38.895229, 31.262211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599667, 38.989517, 31.346642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316320, -0.690483, -0.650519,
		-0.007593, -0.683865, 0.729569,
		-0.948623, 0.235716, 0.211077,
		39.315079, 39.060230, 31.409966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618240, 38.248295, 31.184406>,  <39.979115, 38.895229, 31.262211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618240, 38.248295, 31.184406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322998, 38.518105, 31.178579>,  <39.145851, 38.679989, 31.175083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322998, 38.518105, 31.178579>,  <39.618240, 38.248295, 31.184406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322998, 38.518105, 31.178579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512416, -0.574506, -0.638258,
		-0.438888, -0.463640, 0.769685,
		-0.738111, 0.674523, -0.014567,
		39.101566, 38.720463, 31.174210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103420, 38.324615, 31.765041>,  <39.618240, 38.248295, 31.184406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103420, 38.324615, 31.765041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339542, 38.633358, 31.670582>,  <40.481216, 38.818604, 31.613907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339542, 38.633358, 31.670582>,  <40.103420, 38.324615, 31.765041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339542, 38.633358, 31.670582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762377, -0.629264, -0.151025,
		-0.265170, -0.090883, -0.959909,
		0.590310, 0.771860, -0.236149,
		40.516636, 38.864918, 31.599737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718391, 38.586369, 32.240993>,  <40.103420, 38.324615, 31.765041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718391, 38.586369, 32.240993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980152, 38.580070, 32.543385>,  <41.137211, 38.576294, 32.724819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980152, 38.580070, 32.543385>,  <40.718391, 38.586369, 32.240993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980152, 38.580070, 32.543385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747310, -0.138914, -0.649793,
		0.115245, 0.990179, -0.079142,
		0.654405, -0.015742, 0.755980,
		41.176476, 38.575348, 32.770180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254990, 39.099194, 32.242489>,  <40.718391, 38.586369, 32.240993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254990, 39.099194, 32.242489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397324, 38.763657, 32.407280>,  <41.482723, 38.562336, 32.506153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397324, 38.763657, 32.407280>,  <41.254990, 39.099194, 32.242489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397324, 38.763657, 32.407280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784180, 0.028208, -0.619892,
		0.508371, 0.543644, 0.667840,
		0.355839, -0.838842, 0.411975,
		41.504074, 38.512005, 32.530872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936485, 39.212643, 32.168839>,  <41.254990, 39.099194, 32.242489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936485, 39.212643, 32.168839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878250, 38.822655, 32.236046>,  <41.843307, 38.588661, 32.276371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878250, 38.822655, 32.236046>,  <41.936485, 39.212643, 32.168839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878250, 38.822655, 32.236046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838402, -0.211746, -0.502240,
		0.525248, 0.067744, 0.848248,
		-0.145589, -0.974974, 0.168016,
		41.834572, 38.530163, 32.286449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566658, 38.913940, 32.547367>,  <41.936485, 39.212643, 32.168839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566658, 38.913940, 32.547367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391762, 38.623264, 32.335426>,  <42.286823, 38.448860, 32.208263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391762, 38.623264, 32.335426>,  <42.566658, 38.913940, 32.547367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391762, 38.623264, 32.335426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895513, -0.297481, -0.331000,
		0.082914, -0.619215, 0.780831,
		-0.437242, -0.726690, -0.529850,
		42.260590, 38.405258, 32.176472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242451, 39.060730, 32.857113>,  <42.566658, 38.913940, 32.547367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242451, 39.060730, 32.857113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231289, 38.711590, 32.662235>,  <43.224594, 38.502106, 32.545307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231289, 38.711590, 32.662235>,  <43.242451, 39.060730, 32.857113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231289, 38.711590, 32.662235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780233, -0.323684, 0.535225,
		-0.624867, -0.365191, 0.690056,
		-0.027901, -0.872848, -0.487194,
		43.222919, 38.449734, 32.516079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119438, 38.467495, 33.269123>,  <43.242451, 39.060730, 32.857113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119438, 38.467495, 33.269123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381592, 38.368088, 32.983826>,  <43.538883, 38.308445, 32.812649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381592, 38.368088, 32.983826>,  <43.119438, 38.467495, 33.269123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.381592, 38.368088, 32.983826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681437, -0.212734, 0.700277,
		-0.325763, -0.944978, 0.029929,
		0.655380, -0.248520, -0.713243,
		43.578205, 38.293533, 32.769852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.283260, 37.668457, 33.089363>,  <43.119438, 38.467495, 33.269123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.283260, 37.668457, 33.089363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584610, 37.930229, 33.063606>,  <43.765419, 38.087292, 33.048153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584610, 37.930229, 33.063606>,  <43.283260, 37.668457, 33.089363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584610, 37.930229, 33.063606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475804, -0.474903, 0.740323,
		0.453908, -0.588381, -0.669160,
		0.753378, 0.654428, -0.064392,
		43.810623, 38.126556, 33.044289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881954, 37.236404, 32.994171>,  <43.283260, 37.668457, 33.089363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881954, 37.236404, 32.994171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949055, 37.588238, 33.172245>,  <43.989315, 37.799339, 33.279091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949055, 37.588238, 33.172245>,  <43.881954, 37.236404, 32.994171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949055, 37.588238, 33.172245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422898, -0.472133, 0.773465,
		0.890514, 0.058516, -0.451177,
		0.167755, 0.879583, 0.445187,
		43.999382, 37.852112, 33.305801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355835, 36.764336, 33.268902>,  <43.881954, 37.236404, 32.994171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355835, 36.764336, 33.268902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394302, 36.394646, 33.416718>,  <43.417381, 36.172832, 33.505409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394302, 36.394646, 33.416718>,  <43.355835, 36.764336, 33.268902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394302, 36.394646, 33.416718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876615, 0.254501, 0.408381,
		-0.471484, 0.284673, 0.834664,
		0.096168, -0.924224, 0.369542,
		43.423153, 36.117378, 33.527580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.507439, 36.771965, 33.999897>,  <43.355835, 36.764336, 33.268902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.507439, 36.771965, 33.999897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657127, 36.440643, 33.833107>,  <43.746941, 36.241848, 33.733032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657127, 36.440643, 33.833107>,  <43.507439, 36.771965, 33.999897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657127, 36.440643, 33.833107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890128, 0.194739, 0.412006,
		-0.260065, -0.525343, 0.810173,
		0.374217, -0.828306, -0.416977,
		43.769394, 36.192150, 33.708015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839806, 36.175068, 34.529144>,  <43.507439, 36.771965, 33.999897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839806, 36.175068, 34.529144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027630, 36.189693, 34.176289>,  <44.140324, 36.198471, 33.964577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027630, 36.189693, 34.176289>,  <43.839806, 36.175068, 34.529144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027630, 36.189693, 34.176289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869079, 0.156936, 0.469118,
		0.155607, -0.986930, 0.041888,
		0.469561, 0.036594, -0.882141,
		44.168499, 36.200665, 33.911648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.414524, 35.639954, 34.518887>,  <43.839806, 36.175068, 34.529144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.414524, 35.639954, 34.518887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476860, 35.963650, 34.292313>,  <44.514263, 36.157867, 34.156368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476860, 35.963650, 34.292313>,  <44.414524, 35.639954, 34.518887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476860, 35.963650, 34.292313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934078, 0.065772, 0.350960,
		0.321266, -0.583785, -0.745643,
		0.155843, 0.809240, -0.566431,
		44.523613, 36.206421, 34.122383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.947422, 35.518135, 34.049061>,  <44.414524, 35.639954, 34.518887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.947422, 35.518135, 34.049061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.934681, 35.912365, 34.115547>,  <44.927036, 36.148903, 34.155441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.934681, 35.912365, 34.115547>,  <44.947422, 35.518135, 34.049061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.934681, 35.912365, 34.115547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918061, -0.036902, 0.394719,
		0.395159, 0.165170, -0.903642,
		-0.031849, 0.985575, 0.166219,
		44.925125, 36.208038, 34.165413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574356, 35.829670, 33.630955>,  <44.947422, 35.518135, 34.049061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574356, 35.829670, 33.630955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.434574, 36.041058, 33.940434>,  <45.350704, 36.167892, 34.126122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.434574, 36.041058, 33.940434>,  <45.574356, 35.829670, 33.630955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.434574, 36.041058, 33.940434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910469, -0.003420, 0.413564,
		0.221204, 0.848943, -0.479963,
		-0.349451, 0.528473, 0.773693,
		45.329739, 36.199600, 34.172543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.992558, 36.518070, 33.763123>,  <45.574356, 35.829670, 33.630955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.992558, 36.518070, 33.763123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856651, 36.318581, 34.082081>,  <45.775108, 36.198887, 34.273457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856651, 36.318581, 34.082081>,  <45.992558, 36.518070, 33.763123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856651, 36.318581, 34.082081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905740, 0.054895, 0.420264,
		-0.253369, 0.865019, 0.433065,
		-0.339764, -0.498726, 0.797391,
		45.754723, 36.168964, 34.321297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.084846, 36.903008, 34.418209>,  <45.992558, 36.518070, 33.763123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.084846, 36.903008, 34.418209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.080280, 36.503838, 34.443539>,  <46.077541, 36.264336, 34.458736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.080280, 36.503838, 34.443539>,  <46.084846, 36.903008, 34.418209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.080280, 36.503838, 34.443539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940652, 0.010760, 0.339203,
		-0.339181, 0.063442, 0.938579,
		-0.011420, -0.997928, 0.063326,
		46.076855, 36.204460, 34.462536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.185051, 36.703091, 35.102146>,  <46.084846, 36.903008, 34.418209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.185051, 36.703091, 35.102146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.316864, 36.423496, 34.848270>,  <46.395950, 36.255741, 34.695946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.316864, 36.423496, 34.848270>,  <46.185051, 36.703091, 35.102146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.316864, 36.423496, 34.848270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875683, -0.025044, 0.482237,
		-0.352973, -0.714696, 0.603838,
		0.329531, -0.698987, -0.634687,
		46.415722, 36.213799, 34.657864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.515469, 36.160709, 35.530750>,  <46.185051, 36.703091, 35.102146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.515469, 36.160709, 35.530750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.661758, 36.171261, 35.158611>,  <46.749531, 36.177593, 34.935326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.661758, 36.171261, 35.158611>,  <46.515469, 36.160709, 35.530750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.661758, 36.171261, 35.158611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930672, -0.020969, 0.365252,
		-0.009873, -0.999432, -0.032219,
		0.365720, 0.026379, -0.930351,
		46.771473, 36.179176, 34.879505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.051739, 35.660709, 35.516418>,  <46.515469, 36.160709, 35.530750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.051739, 35.660709, 35.516418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.131710, 35.908981, 35.213161>,  <47.179695, 36.057945, 35.031208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.131710, 35.908981, 35.213161>,  <47.051739, 35.660709, 35.516418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.131710, 35.908981, 35.213161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965416, 0.007353, 0.260610,
		0.167329, -0.784030, -0.597743,
		0.199931, 0.620679, -0.758146,
		47.191689, 36.095184, 34.985718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.676731, 35.406265, 35.025108>,  <47.051739, 35.660709, 35.516418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.676731, 35.406265, 35.025108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.857231, 35.055294, 35.090210>,  <47.965530, 34.844711, 35.129272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.857231, 35.055294, 35.090210>,  <47.676731, 35.406265, 35.025108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.857231, 35.055294, 35.090210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636509, 0.188629, -0.747847,
		0.625483, 0.441062, 0.643611,
		0.451250, -0.877430, 0.162756,
		47.992607, 34.792065, 35.139038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.535599, 29.488272, 26.671593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.253391, 29.284044, 26.868189>,  <37.084068, 29.161509, 26.986147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.253391, 29.284044, 26.868189>,  <37.535599, 29.488272, 26.671593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253391, 29.284044, 26.868189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006270, 0.688996, 0.724738,
		-0.708664, 0.514398, -0.482898,
		-0.705518, -0.510568, 0.491492,
		37.041737, 29.130875, 27.015636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065876, 29.992664, 26.858454>,  <37.535599, 29.488272, 26.671593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065876, 29.992664, 26.858454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.971489, 29.695396, 27.108898>,  <36.914856, 29.517035, 27.259165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.971489, 29.695396, 27.108898>,  <37.065876, 29.992664, 26.858454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971489, 29.695396, 27.108898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008738, 0.642657, 0.766104,
		-0.971722, 0.186245, -0.145151,
		-0.235966, -0.743172, 0.626111,
		36.900700, 29.472445, 27.296732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433956, 30.221363, 27.218212>,  <37.065876, 29.992664, 26.858454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433956, 30.221363, 27.218212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.621513, 29.945740, 27.439241>,  <36.734047, 29.780365, 27.571859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.621513, 29.945740, 27.439241>,  <36.433956, 30.221363, 27.218212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621513, 29.945740, 27.439241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145685, 0.556704, 0.817837,
		-0.871157, -0.463981, 0.160650,
		0.468895, -0.689059, 0.552571,
		36.762180, 29.739021, 27.605013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003338, 30.136791, 27.820793>,  <36.433956, 30.221363, 27.218212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003338, 30.136791, 27.820793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.350933, 29.983915, 27.946514>,  <36.559490, 29.892189, 28.021946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.350933, 29.983915, 27.946514>,  <36.003338, 30.136791, 27.820793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350933, 29.983915, 27.946514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045075, 0.571394, 0.819437,
		-0.492772, -0.726250, 0.479309,
		0.868990, -0.382190, 0.314303,
		36.611629, 29.869259, 28.040806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908714, 29.902227, 28.602705>,  <36.003338, 30.136791, 27.820793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908714, 29.902227, 28.602705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.300293, 29.952631, 28.538473>,  <36.535240, 29.982874, 28.499933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.300293, 29.952631, 28.538473>,  <35.908714, 29.902227, 28.602705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300293, 29.952631, 28.538473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090767, 0.435899, 0.895407,
		0.182826, -0.891131, 0.415284,
		0.978947, 0.126009, -0.160579,
		36.593975, 29.990435, 28.490299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188522, 29.776897, 29.312077>,  <35.908714, 29.902227, 28.602705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188522, 29.776897, 29.312077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.470299, 29.969473, 29.103474>,  <36.639366, 30.085018, 28.978312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.470299, 29.969473, 29.103474>,  <36.188522, 29.776897, 29.312077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470299, 29.969473, 29.103474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128201, 0.636375, 0.760652,
		0.698085, -0.602695, 0.386570,
		0.704444, 0.481442, -0.521510,
		36.681633, 30.113905, 28.947021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707325, 29.743496, 29.751526>,  <36.188522, 29.776897, 29.312077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707325, 29.743496, 29.751526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.757832, 30.065861, 29.520161>,  <36.788136, 30.259279, 29.381342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.757832, 30.065861, 29.520161>,  <36.707325, 29.743496, 29.751526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757832, 30.065861, 29.520161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132319, 0.564187, 0.814975,
		0.983132, -0.179441, -0.035398,
		0.126269, 0.805912, -0.578413,
		36.795712, 30.307634, 29.346636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392548, 30.152197, 30.002419>,  <36.707325, 29.743496, 29.751526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392548, 30.152197, 30.002419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.137226, 30.406471, 29.828764>,  <36.984032, 30.559036, 29.724571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.137226, 30.406471, 29.828764>,  <37.392548, 30.152197, 30.002419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137226, 30.406471, 29.828764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201263, 0.682167, 0.702952,
		0.743008, 0.361322, -0.563370,
		-0.638304, 0.635684, -0.434134,
		36.945736, 30.597178, 29.698524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713215, 30.822102, 29.970140>,  <37.392548, 30.152197, 30.002419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713215, 30.822102, 29.970140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.337971, 30.940714, 29.898571>,  <37.112823, 31.011881, 29.855629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.337971, 30.940714, 29.898571>,  <37.713215, 30.822102, 29.970140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337971, 30.940714, 29.898571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088726, 0.705163, 0.703472,
		0.334770, 0.644062, -0.687832,
		-0.938114, 0.296530, -0.178922,
		37.056538, 31.029673, 29.844894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653946, 31.596945, 29.733845>,  <37.713215, 30.822102, 29.970140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653946, 31.596945, 29.733845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.287884, 31.538071, 29.883949>,  <37.068245, 31.502747, 29.974012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.287884, 31.538071, 29.883949>,  <37.653946, 31.596945, 29.733845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287884, 31.538071, 29.883949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073375, 0.854570, 0.514127,
		-0.396359, 0.498042, -0.771267,
		-0.915159, -0.147187, 0.375260,
		37.013336, 31.493914, 29.996527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404537, 32.202579, 29.659168>,  <37.653946, 31.596945, 29.733845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404537, 32.202579, 29.659168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.190327, 32.018501, 29.942415>,  <37.061798, 31.908054, 30.112364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.190327, 32.018501, 29.942415>,  <37.404537, 32.202579, 29.659168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190327, 32.018501, 29.942415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087621, 0.864239, 0.495393,
		-0.839959, 0.203251, -0.503148,
		-0.535529, -0.460196, 0.708116,
		37.029667, 31.880442, 30.154850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903484, 32.663422, 29.840109>,  <37.404537, 32.202579, 29.659168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903484, 32.663422, 29.840109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.911461, 32.407616, 30.147516>,  <36.916248, 32.254131, 30.331961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.911461, 32.407616, 30.147516>,  <36.903484, 32.663422, 29.840109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911461, 32.407616, 30.147516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165197, 0.755997, 0.633386,
		-0.986059, -0.139590, -0.090567,
		0.019946, -0.639517, 0.768518,
		36.917446, 32.215759, 30.378071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467209, 32.997879, 30.413004>,  <36.903484, 32.663422, 29.840109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467209, 32.997879, 30.413004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.661068, 32.702751, 30.600937>,  <36.777386, 32.525677, 30.713696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.661068, 32.702751, 30.600937>,  <36.467209, 32.997879, 30.413004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661068, 32.702751, 30.600937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091163, 0.491598, 0.866037,
		-0.869944, -0.462557, 0.170992,
		0.484651, -0.737816, 0.469831,
		36.806461, 32.481407, 30.741886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136063, 32.966335, 31.037086>,  <36.467209, 32.997879, 30.413004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136063, 32.966335, 31.037086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.501480, 32.810734, 31.084604>,  <36.720730, 32.717373, 31.113115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.501480, 32.810734, 31.084604>,  <36.136063, 32.966335, 31.037086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501480, 32.810734, 31.084604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113757, 0.524773, 0.843607,
		-0.390502, -0.757161, 0.523656,
		0.913546, -0.389000, 0.118793,
		36.775543, 32.694035, 31.120243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140896, 32.795086, 31.746313>,  <36.136063, 32.966335, 31.037086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140896, 32.795086, 31.746313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.531345, 32.799286, 31.659523>,  <36.765614, 32.801804, 31.607449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.531345, 32.799286, 31.659523>,  <36.140896, 32.795086, 31.746313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531345, 32.799286, 31.659523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159103, 0.645505, 0.747000,
		0.147899, -0.763684, 0.628421,
		0.976121, 0.010497, -0.216974,
		36.824181, 32.802437, 31.594431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530025, 32.811573, 32.408707>,  <36.140896, 32.795086, 31.746313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530025, 32.811573, 32.408707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.784836, 32.949596, 32.132988>,  <36.937721, 33.032410, 31.967556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.784836, 32.949596, 32.132988>,  <36.530025, 32.811573, 32.408707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784836, 32.949596, 32.132988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360104, 0.657432, 0.661897,
		0.681563, -0.669864, 0.294542,
		0.637023, 0.345059, -0.689301,
		36.975945, 33.053112, 31.926199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157570, 32.897297, 32.721165>,  <36.530025, 32.811573, 32.408707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157570, 32.897297, 32.721165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.218609, 33.148293, 32.415752>,  <37.255234, 33.298889, 32.232506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.218609, 33.148293, 32.415752>,  <37.157570, 32.897297, 32.721165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218609, 33.148293, 32.415752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449553, 0.643946, 0.619060,
		0.880123, -0.437713, -0.183824,
		0.152598, 0.627487, -0.763527,
		37.264389, 33.336540, 32.186695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832428, 33.188622, 32.895863>,  <37.157570, 32.897297, 32.721165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832428, 33.188622, 32.895863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.651169, 33.433971, 32.637119>,  <37.542416, 33.581184, 32.481873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.651169, 33.433971, 32.637119>,  <37.832428, 33.188622, 32.895863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651169, 33.433971, 32.637119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359318, 0.789756, 0.497168,
		0.815812, -0.007138, -0.578273,
		-0.453146, 0.613380, -0.646857,
		37.515224, 33.617985, 32.443062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364136, 33.685318, 32.726768>,  <37.832428, 33.188622, 32.895863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364136, 33.685318, 32.726768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.002037, 33.842213, 32.661438>,  <37.784779, 33.936348, 32.622238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.002037, 33.842213, 32.661438>,  <38.364136, 33.685318, 32.726768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002037, 33.842213, 32.661438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312838, 0.875430, 0.368450,
		0.287503, 0.282444, -0.915187,
		-0.905249, 0.392236, -0.163329,
		37.730461, 33.959885, 32.612438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589718, 34.269035, 32.494297>,  <38.364136, 33.685318, 32.726768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589718, 34.269035, 32.494297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.200584, 34.339294, 32.554623>,  <37.967106, 34.381451, 32.590816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.200584, 34.339294, 32.554623>,  <38.589718, 34.269035, 32.494297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200584, 34.339294, 32.554623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226628, 0.855618, 0.465357,
		-0.047298, 0.486892, -0.872180,
		-0.972832, 0.175650, 0.150812,
		37.908733, 34.391991, 32.599865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511433, 34.981655, 32.284138>,  <38.589718, 34.269035, 32.494297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511433, 34.981655, 32.284138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.217880, 34.882084, 32.536949>,  <38.041748, 34.822342, 32.688637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.217880, 34.882084, 32.536949>,  <38.511433, 34.981655, 32.284138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217880, 34.882084, 32.536949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180524, 0.825505, 0.534745,
		-0.654853, 0.506534, -0.560884,
		-0.733879, -0.248926, 0.632027,
		37.997715, 34.807407, 32.726559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061085, 35.513672, 32.421303>,  <38.511433, 34.981655, 32.284138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061085, 35.513672, 32.421303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077579, 35.276367, 32.742882>,  <38.087475, 35.133984, 32.935829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077579, 35.276367, 32.742882>,  <38.061085, 35.513672, 32.421303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077579, 35.276367, 32.742882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125398, 0.801345, 0.584912,
		-0.991249, 0.076695, 0.107438,
		0.041235, -0.593266, 0.803949,
		38.089951, 35.098389, 32.984066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625572, 36.028156, 32.498837>,  <38.061085, 35.513672, 32.421303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625572, 36.028156, 32.498837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.874313, 36.314415, 32.371624>,  <39.023560, 36.486172, 32.295296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.874313, 36.314415, 32.371624>,  <38.625572, 36.028156, 32.498837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874313, 36.314415, 32.371624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033135, -0.429784, -0.902323,
		-0.782430, 0.550578, -0.290977,
		0.621857, 0.715646, -0.318033,
		39.060871, 36.529110, 32.276215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256985, 36.282524, 31.950760>,  <38.625572, 36.028156, 32.498837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256985, 36.282524, 31.950760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.650909, 36.345699, 31.921934>,  <38.887264, 36.383606, 31.904638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.650909, 36.345699, 31.921934>,  <38.256985, 36.282524, 31.950760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650909, 36.345699, 31.921934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004677, -0.439085, -0.898433,
		-0.173542, 0.884454, -0.433156,
		0.984815, 0.157942, -0.072063,
		38.946354, 36.393082, 31.900314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434292, 36.638004, 31.264797>,  <38.256985, 36.282524, 31.950760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434292, 36.638004, 31.264797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.772739, 36.453869, 31.372255>,  <38.975807, 36.343388, 31.436729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.772739, 36.453869, 31.372255>,  <38.434292, 36.638004, 31.264797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772739, 36.453869, 31.372255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125531, -0.317741, -0.939831,
		0.517996, 0.828935, -0.211062,
		0.846122, -0.460334, 0.268645,
		39.026577, 36.315769, 31.452848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911766, 36.715759, 30.664780>,  <38.434292, 36.638004, 31.264797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911766, 36.715759, 30.664780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064289, 36.414505, 30.879211>,  <39.155804, 36.233753, 31.007870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064289, 36.414505, 30.879211>,  <38.911766, 36.715759, 30.664780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064289, 36.414505, 30.879211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288987, -0.453719, -0.842986,
		0.878116, 0.476361, 0.044639,
		0.381312, -0.753140, 0.536080,
		39.178684, 36.188564, 31.040035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722290, 36.529259, 30.350906>,  <38.911766, 36.715759, 30.664780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722290, 36.529259, 30.350906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.542809, 36.229469, 30.545616>,  <39.435120, 36.049595, 30.662443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.542809, 36.229469, 30.545616>,  <39.722290, 36.529259, 30.350906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542809, 36.229469, 30.545616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270405, -0.633016, -0.725377,
		0.851788, -0.193856, 0.486701,
		-0.448708, -0.749474, 0.486776,
		39.408195, 36.004627, 30.691648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122032, 35.964439, 30.251966>,  <39.722290, 36.529259, 30.350906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122032, 35.964439, 30.251966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.796207, 35.762726, 30.366634>,  <39.600712, 35.641697, 30.435434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.796207, 35.762726, 30.366634>,  <40.122032, 35.964439, 30.251966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796207, 35.762726, 30.366634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138563, -0.649045, -0.748025,
		0.563279, -0.569594, 0.598565,
		-0.814566, -0.504286, 0.286669,
		39.551838, 35.611439, 30.452635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299427, 35.313480, 30.249281>,  <40.122032, 35.964439, 30.251966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299427, 35.313480, 30.249281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.902775, 35.261921, 30.252129>,  <39.664783, 35.230984, 30.253838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.902775, 35.261921, 30.252129>,  <40.299427, 35.313480, 30.249281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902775, 35.261921, 30.252129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084902, -0.692701, -0.716211,
		0.097254, -0.709612, 0.697848,
		-0.991632, -0.128903, 0.007121,
		39.605286, 35.223251, 30.254265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037098, 34.569153, 30.361841>,  <40.299427, 35.313480, 30.249281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037098, 34.569153, 30.361841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.722546, 34.743313, 30.186560>,  <39.533813, 34.847809, 30.081390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.722546, 34.743313, 30.186560>,  <40.037098, 34.569153, 30.361841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722546, 34.743313, 30.186560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103376, -0.792123, -0.601544,
		-0.609025, -0.427746, 0.667924,
		-0.786385, 0.435403, -0.438204,
		39.486629, 34.873932, 30.055098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448277, 34.001194, 30.244974>,  <40.037098, 34.569153, 30.361841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448277, 34.001194, 30.244974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.315113, 34.300724, 30.015738>,  <39.235214, 34.480442, 29.878195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.315113, 34.300724, 30.015738>,  <39.448277, 34.001194, 30.244974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315113, 34.300724, 30.015738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390638, -0.662672, -0.638958,
		-0.858240, 0.011160, 0.513126,
		-0.332904, 0.748826, -0.573092,
		39.215240, 34.525372, 29.843809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761497, 33.845993, 30.095871>,  <39.448277, 34.001194, 30.244974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761497, 33.845993, 30.095871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.878860, 34.094326, 29.805084>,  <38.949280, 34.243324, 29.630611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.878860, 34.094326, 29.805084>,  <38.761497, 33.845993, 30.095871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878860, 34.094326, 29.805084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322396, -0.651631, -0.686613,
		-0.899984, 0.435832, 0.008956,
		0.293412, 0.620828, -0.726968,
		38.966885, 34.280575, 29.586994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248798, 33.699169, 29.657364>,  <38.761497, 33.845993, 30.095871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248798, 33.699169, 29.657364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.529888, 33.882568, 29.439753>,  <38.698540, 33.992607, 29.309187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.529888, 33.882568, 29.439753>,  <38.248798, 33.699169, 29.657364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529888, 33.882568, 29.439753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315250, -0.484832, -0.815816,
		-0.637809, 0.744796, -0.196161,
		0.702721, 0.458495, -0.544027,
		38.740704, 34.020119, 29.276545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904427, 33.851177, 29.063389>,  <38.248798, 33.699169, 29.657364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904427, 33.851177, 29.063389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.294228, 33.858791, 28.973959>,  <38.528107, 33.863361, 28.920301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.294228, 33.858791, 28.973959>,  <37.904427, 33.851177, 29.063389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294228, 33.858791, 28.973959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174593, -0.561554, -0.808811,
		-0.140946, 0.827221, -0.543911,
		0.974501, 0.019035, -0.223576,
		38.586578, 33.864502, 28.906887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018475, 33.906521, 28.282949>,  <37.904427, 33.851177, 29.063389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018475, 33.906521, 28.282949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.360836, 33.741879, 28.408178>,  <38.566254, 33.643093, 28.483315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.360836, 33.741879, 28.408178>,  <38.018475, 33.906521, 28.282949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360836, 33.741879, 28.408178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019864, -0.631106, -0.775442,
		0.516761, 0.657482, -0.548339,
		0.855899, -0.411610, 0.313071,
		38.617607, 33.618397, 28.502100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383213, 33.848694, 27.734844>,  <38.018475, 33.906521, 28.282949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383213, 33.848694, 27.734844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.542744, 33.569351, 27.972580>,  <38.638462, 33.401745, 28.115221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.542744, 33.569351, 27.972580>,  <38.383213, 33.848694, 27.734844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542744, 33.569351, 27.972580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107715, -0.607953, -0.786632,
		0.910680, 0.377746, -0.167242,
		0.398823, -0.698355, 0.594340,
		38.662392, 33.359844, 28.150883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952194, 33.692726, 27.405437>,  <38.383213, 33.848694, 27.734844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952194, 33.692726, 27.405437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.852478, 33.396511, 27.655064>,  <38.792648, 33.218781, 27.804838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.852478, 33.396511, 27.655064>,  <38.952194, 33.692726, 27.405437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852478, 33.396511, 27.655064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070461, -0.656570, -0.750967,
		0.965863, -0.143234, 0.215854,
		-0.249287, -0.740540, 0.624064,
		38.777691, 33.174351, 27.842283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379868, 33.159893, 27.232153>,  <38.952194, 33.692726, 27.405437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379868, 33.159893, 27.232153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.081310, 32.963127, 27.411448>,  <38.902176, 32.845066, 27.519024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.081310, 32.963127, 27.411448>,  <39.379868, 33.159893, 27.232153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081310, 32.963127, 27.411448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128104, -0.767131, -0.628569,
		0.653062, -0.411737, 0.635597,
		-0.746391, -0.491917, 0.448239,
		38.857391, 32.815552, 27.545919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663883, 32.465855, 27.114149>,  <39.379868, 33.159893, 27.232153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663883, 32.465855, 27.114149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.268608, 32.453144, 27.174114>,  <39.031445, 32.445518, 27.210093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.268608, 32.453144, 27.174114>,  <39.663883, 32.465855, 27.114149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268608, 32.453144, 27.174114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109555, -0.537525, -0.836101,
		0.107147, -0.842649, 0.527695,
		-0.988189, -0.031774, 0.149911,
		38.972153, 32.443611, 27.219088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462372, 31.659639, 27.102816>,  <39.663883, 32.465855, 27.114149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462372, 31.659639, 27.102816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.144554, 31.881086, 27.003046>,  <38.953865, 32.013954, 26.943184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.144554, 31.881086, 27.003046>,  <39.462372, 31.659639, 27.102816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144554, 31.881086, 27.003046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215151, -0.640797, -0.736946,
		-0.567813, -0.531871, 0.628252,
		-0.794543, 0.553617, -0.249421,
		38.906193, 32.047173, 26.928219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.896988, 31.187195, 27.076666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.701408, 31.484503, 26.894028>,  <38.584061, 31.662888, 26.784445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.701408, 31.484503, 26.894028>,  <38.896988, 31.187195, 27.076666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701408, 31.484503, 26.894028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349110, -0.646420, -0.678427,
		-0.799406, -0.172315, 0.575550,
		-0.488950, 0.743269, -0.456595,
		38.554722, 31.707483, 26.757050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193886, 31.033287, 27.058969>,  <38.896988, 31.187195, 27.076666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193886, 31.033287, 27.058969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.251003, 31.297951, 26.764536>,  <38.285275, 31.456749, 26.587875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.251003, 31.297951, 26.764536>,  <38.193886, 31.033287, 27.058969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251003, 31.297951, 26.764536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339323, -0.665906, -0.664402,
		-0.929769, 0.344643, 0.129428,
		0.142795, 0.661658, -0.736083,
		38.293842, 31.496449, 26.543711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587154, 31.143944, 26.755056>,  <38.193886, 31.033287, 27.058969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587154, 31.143944, 26.755056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.846367, 31.259357, 26.473118>,  <38.001892, 31.328606, 26.303955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.846367, 31.259357, 26.473118>,  <37.587154, 31.143944, 26.755056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846367, 31.259357, 26.473118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461510, -0.587434, -0.664778,
		-0.605861, 0.756088, -0.247513,
		0.648028, 0.288534, -0.704846,
		38.040775, 31.345917, 26.261663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080475, 31.152100, 26.160301>,  <37.587154, 31.143944, 26.755056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080475, 31.152100, 26.160301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.457302, 31.143749, 26.026398>,  <37.683399, 31.138739, 25.946056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.457302, 31.143749, 26.026398>,  <37.080475, 31.152100, 26.160301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457302, 31.143749, 26.026398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272768, -0.628483, -0.728428,
		-0.195185, 0.777544, -0.597770,
		0.942073, -0.020875, -0.334759,
		37.739925, 31.137487, 25.925970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026302, 31.021561, 25.485565>,  <37.080475, 31.152100, 26.160301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026302, 31.021561, 25.485565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.409737, 30.929192, 25.552244>,  <37.639797, 30.873770, 25.592251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.409737, 30.929192, 25.552244>,  <37.026302, 31.021561, 25.485565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409737, 30.929192, 25.552244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013957, -0.546512, -0.837335,
		0.284463, 0.804984, -0.520656,
		0.958585, -0.230924, 0.166698,
		37.697311, 30.859915, 25.602253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403984, 31.273893, 24.863676>,  <37.026302, 31.021561, 25.485565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403984, 31.273893, 24.863676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.581547, 30.964642, 25.044884>,  <37.688084, 30.779091, 25.153608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.581547, 30.964642, 25.044884>,  <37.403984, 31.273893, 24.863676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581547, 30.964642, 25.044884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109090, -0.455169, -0.883697,
		0.889410, 0.441695, -0.117710,
		0.443903, -0.773127, 0.453017,
		37.714718, 30.732704, 25.180788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730896, 30.980989, 24.325470>,  <37.403984, 31.273893, 24.863676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730896, 30.980989, 24.325470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.800541, 30.693829, 24.595078>,  <37.842327, 30.521532, 24.756842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.800541, 30.693829, 24.595078>,  <37.730896, 30.980989, 24.325470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800541, 30.693829, 24.595078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141894, -0.659041, -0.738601,
		0.974450, 0.224236, -0.012879,
		0.174109, -0.717902, 0.674020,
		37.852776, 30.478458, 24.797283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322445, 30.587788, 24.008549>,  <37.730896, 30.980989, 24.325470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322445, 30.587788, 24.008549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163925, 30.342827, 24.282166>,  <38.068813, 30.195850, 24.446335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163925, 30.342827, 24.282166>,  <38.322445, 30.587788, 24.008549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163925, 30.342827, 24.282166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066525, -0.762238, -0.643870,
		0.915709, -0.209659, 0.342814,
		-0.396298, -0.612403, 0.684040,
		38.045036, 30.159105, 24.487377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814281, 30.125326, 24.216545>,  <38.322445, 30.587788, 24.008549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814281, 30.125326, 24.216545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.456932, 29.958479, 24.283352>,  <38.242523, 29.858370, 24.323437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.456932, 29.958479, 24.283352>,  <38.814281, 30.125326, 24.216545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456932, 29.958479, 24.283352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125579, -0.588701, -0.798537,
		0.431407, -0.692419, 0.578312,
		-0.893375, -0.417118, 0.167017,
		38.188919, 29.833344, 24.333456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885044, 29.349007, 24.124050>,  <38.814281, 30.125326, 24.216545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885044, 29.349007, 24.124050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.493298, 29.423235, 24.092031>,  <38.258251, 29.467772, 24.072821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.493298, 29.423235, 24.092031>,  <38.885044, 29.349007, 24.124050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493298, 29.423235, 24.092031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079461, -0.717757, -0.691745,
		-0.185821, -0.671110, 0.717692,
		-0.979365, 0.185569, -0.080047,
		38.199490, 29.478905, 24.068018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606709, 28.637154, 24.177691>,  <38.885044, 29.349007, 24.124050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606709, 28.637154, 24.177691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.303143, 28.840322, 24.014685>,  <38.121002, 28.962223, 23.916882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.303143, 28.840322, 24.014685>,  <38.606709, 28.637154, 24.177691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303143, 28.840322, 24.014685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129220, -0.730816, -0.670231,
		-0.638242, -0.455988, 0.620259,
		-0.758913, 0.507920, -0.407515,
		38.075470, 28.992699, 23.892429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078251, 28.137785, 23.918032>,  <38.606709, 28.637154, 24.177691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078251, 28.137785, 23.918032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.039772, 28.477524, 23.710434>,  <38.016685, 28.681368, 23.585876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.039772, 28.477524, 23.710434>,  <38.078251, 28.137785, 23.918032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039772, 28.477524, 23.710434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269781, -0.524142, -0.807770,
		-0.958104, 0.062306, 0.279561,
		-0.096201, 0.849348, -0.518992,
		38.010910, 28.732328, 23.554737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568985, 27.903828, 23.428436>,  <38.078251, 28.137785, 23.918032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568985, 27.903828, 23.428436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.722691, 28.250788, 23.301971>,  <37.814915, 28.458963, 23.226093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.722691, 28.250788, 23.301971>,  <37.568985, 27.903828, 23.428436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722691, 28.250788, 23.301971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143345, -0.282244, -0.948573,
		-0.912026, 0.409826, 0.015880,
		0.384267, 0.867399, -0.316160,
		37.837971, 28.511007, 23.207123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046349, 28.260532, 23.047827>,  <37.568985, 27.903828, 23.428436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046349, 28.260532, 23.047827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.387115, 28.415890, 22.907318>,  <37.591576, 28.509104, 22.823013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.387115, 28.415890, 22.907318>,  <37.046349, 28.260532, 23.047827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387115, 28.415890, 22.907318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288436, -0.211861, -0.933766,
		-0.437088, 0.896809, -0.068462,
		0.851915, 0.388391, -0.351274,
		37.642689, 28.532408, 22.801935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841747, 28.580343, 22.546240>,  <37.046349, 28.260532, 23.047827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841747, 28.580343, 22.546240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.234856, 28.553841, 22.477215>,  <37.470718, 28.537939, 22.435801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.234856, 28.553841, 22.477215>,  <36.841747, 28.580343, 22.546240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234856, 28.553841, 22.477215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181291, -0.163335, -0.969771,
		0.036068, 0.984343, -0.172532,
		0.982768, -0.066256, -0.172561,
		37.529686, 28.533964, 22.425446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023693, 28.993818, 22.036291>,  <36.841747, 28.580343, 22.546240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023693, 28.993818, 22.036291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307018, 28.713385, 22.003361>,  <37.477013, 28.545124, 21.983603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307018, 28.713385, 22.003361>,  <37.023693, 28.993818, 22.036291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307018, 28.713385, 22.003361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045126, 0.071420, -0.996425,
		0.704455, 0.709495, 0.018950,
		0.708312, -0.701082, -0.082328,
		37.519512, 28.503059, 21.978662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256149, 29.202431, 21.474617>,  <37.023693, 28.993818, 22.036291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256149, 29.202431, 21.474617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.419270, 28.840103, 21.520544>,  <37.517143, 28.622705, 21.548100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.419270, 28.840103, 21.520544>,  <37.256149, 29.202431, 21.474617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419270, 28.840103, 21.520544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004549, -0.127763, -0.991794,
		0.913058, 0.403936, -0.056223,
		0.407805, -0.905821, 0.114818,
		37.541611, 28.568357, 21.554989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819157, 29.185608, 21.031988>,  <37.256149, 29.202431, 21.474617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819157, 29.185608, 21.031988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684166, 28.810896, 21.068975>,  <37.603172, 28.586069, 21.091167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684166, 28.810896, 21.068975>,  <37.819157, 29.185608, 21.031988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684166, 28.810896, 21.068975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024817, -0.089344, -0.995692,
		0.941006, -0.338318, 0.006904,
		-0.337478, -0.936781, 0.092469,
		37.582924, 28.529861, 21.096716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124710, 28.763338, 20.442846>,  <37.819157, 29.185608, 21.031988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124710, 28.763338, 20.442846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.796139, 28.576534, 20.573784>,  <37.598995, 28.464453, 20.652346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.796139, 28.576534, 20.573784>,  <38.124710, 28.763338, 20.442846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796139, 28.576534, 20.573784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337636, -0.064355, -0.939074,
		0.459622, -0.881908, -0.104816,
		-0.821432, -0.467009, 0.327342,
		37.549709, 28.436432, 20.671988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081135, 28.235935, 19.945375>,  <38.124710, 28.763338, 20.442846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081135, 28.235935, 19.945375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.717480, 28.259468, 20.110304>,  <37.499287, 28.273588, 20.209261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.717480, 28.259468, 20.110304>,  <38.081135, 28.235935, 19.945375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717480, 28.259468, 20.110304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409480, 0.054723, -0.910677,
		-0.076145, -0.996767, -0.025659,
		-0.909136, 0.058837, 0.412323,
		37.444740, 28.277119, 20.234001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685326, 27.719280, 19.636019>,  <38.081135, 28.235935, 19.945375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685326, 27.719280, 19.636019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.428196, 27.987320, 19.784473>,  <37.273918, 28.148144, 19.873547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.428196, 27.987320, 19.784473>,  <37.685326, 27.719280, 19.636019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428196, 27.987320, 19.784473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519088, -0.024766, -0.854362,
		-0.563315, -0.741859, 0.363760,
		-0.642825, 0.670099, 0.371139,
		37.235348, 28.188349, 19.895815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035809, 27.384481, 19.615292>,  <37.685326, 27.719280, 19.636019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035809, 27.384481, 19.615292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.983337, 27.780909, 19.624861>,  <36.951855, 28.018764, 19.630602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.983337, 27.780909, 19.624861>,  <37.035809, 27.384481, 19.615292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983337, 27.780909, 19.624861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448402, -0.037796, -0.893032,
		-0.884153, -0.127875, 0.449356,
		-0.131180, 0.991070, 0.023922,
		36.943985, 28.078230, 19.632038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391415, 27.545912, 19.697241>,  <37.035809, 27.384481, 19.615292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391415, 27.545912, 19.697241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.525188, 27.865374, 19.497118>,  <36.605453, 28.057051, 19.377045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.525188, 27.865374, 19.497118>,  <36.391415, 27.545912, 19.697241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525188, 27.865374, 19.497118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695990, -0.148628, -0.702501,
		-0.635414, 0.583150, 0.506147,
		0.334436, 0.798652, -0.500307,
		36.625519, 28.104969, 19.347027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811920, 27.741060, 19.274244>,  <36.391415, 27.545912, 19.697241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811920, 27.741060, 19.274244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117878, 27.941275, 19.112062>,  <36.301453, 28.061403, 19.014753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117878, 27.941275, 19.112062>,  <35.811920, 27.741060, 19.274244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117878, 27.941275, 19.112062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557343, 0.198689, -0.806158,
		-0.322954, 0.842606, 0.430948,
		0.764898, 0.500538, -0.405453,
		36.347347, 28.091436, 18.990427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841328, 27.008791, 19.483011>,  <35.811920, 27.741060, 19.274244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841328, 27.008791, 19.483011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.630222, 26.687464, 19.593388>,  <35.503559, 26.494667, 19.659615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.630222, 26.687464, 19.593388>,  <35.841328, 27.008791, 19.483011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630222, 26.687464, 19.593388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284839, 0.138675, 0.948491,
		-0.800205, 0.579182, 0.155628,
		-0.527767, -0.803317, 0.275942,
		35.471893, 26.446468, 19.676170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440002, 27.189941, 20.034672>,  <35.841328, 27.008791, 19.483011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440002, 27.189941, 20.034672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408073, 26.794918, 20.088867>,  <35.388916, 26.557903, 20.121384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408073, 26.794918, 20.088867>,  <35.440002, 27.189941, 20.034672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408073, 26.794918, 20.088867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179705, 0.147950, 0.972531,
		-0.980477, 0.053280, -0.189279,
		-0.079820, -0.987559, 0.135487,
		35.384129, 26.498650, 20.129513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909153, 27.116304, 20.455013>,  <35.440002, 27.189941, 20.034672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909153, 27.116304, 20.455013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.134323, 26.788799, 20.500172>,  <35.269424, 26.592297, 20.527266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.134323, 26.788799, 20.500172>,  <34.909153, 27.116304, 20.455013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134323, 26.788799, 20.500172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064223, 0.179512, 0.981657,
		-0.824009, -0.545350, 0.153635,
		0.562926, -0.818761, 0.112895,
		35.303200, 26.543171, 20.534040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566586, 26.692078, 20.990700>,  <34.909153, 27.116304, 20.455013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566586, 26.692078, 20.990700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.920918, 26.511066, 20.949673>,  <35.133518, 26.402460, 20.925056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.920918, 26.511066, 20.949673>,  <34.566586, 26.692078, 20.990700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920918, 26.511066, 20.949673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083342, -0.062282, 0.994573,
		-0.456459, -0.889573, -0.017457,
		0.885833, -0.452527, -0.102568,
		35.186668, 26.375309, 20.918901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497131, 26.215414, 21.514938>,  <34.566586, 26.692078, 20.990700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497131, 26.215414, 21.514938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.889660, 26.246241, 21.444424>,  <35.125175, 26.264736, 21.402115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.889660, 26.246241, 21.444424>,  <34.497131, 26.215414, 21.514938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889660, 26.246241, 21.444424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173992, 0.035605, 0.984103,
		0.082122, -0.996390, 0.021530,
		0.981317, 0.077071, -0.176288,
		35.184055, 26.269361, 21.391537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790443, 25.783993, 22.094870>,  <34.497131, 26.215414, 21.514938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790443, 25.783993, 22.094870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.075764, 26.031639, 21.963478>,  <35.246956, 26.180227, 21.884644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.075764, 26.031639, 21.963478>,  <34.790443, 25.783993, 22.094870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075764, 26.031639, 21.963478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327711, 0.119659, 0.937170,
		0.619521, -0.776131, -0.117537,
		0.713302, 0.619114, -0.328478,
		35.289753, 26.217373, 21.864935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383743, 25.535248, 22.429089>,  <34.790443, 25.783993, 22.094870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383743, 25.535248, 22.429089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471081, 25.905546, 22.305590>,  <35.523483, 26.127726, 22.231491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471081, 25.905546, 22.305590>,  <35.383743, 25.535248, 22.429089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471081, 25.905546, 22.305590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370218, 0.214153, 0.903923,
		0.902921, -0.311666, -0.295970,
		0.218340, 0.925744, -0.308747,
		35.536583, 26.183270, 22.212965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103191, 25.762486, 22.504696>,  <35.383743, 25.535248, 22.429089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103191, 25.762486, 22.504696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.909195, 26.112215, 22.512112>,  <35.792797, 26.322052, 22.516562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.909195, 26.112215, 22.512112>,  <36.103191, 25.762486, 22.504696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909195, 26.112215, 22.512112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501300, 0.260579, 0.825104,
		0.716576, 0.409463, -0.564676,
		-0.484992, 0.874322, 0.018539,
		35.763699, 26.374512, 22.517673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608246, 26.281897, 22.688734>,  <36.103191, 25.762486, 22.504696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608246, 26.281897, 22.688734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.255283, 26.448954, 22.775398>,  <36.043507, 26.549187, 22.827396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.255283, 26.448954, 22.775398>,  <36.608246, 26.281897, 22.688734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255283, 26.448954, 22.775398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399832, 0.422910, 0.813192,
		0.247994, 0.804191, -0.540163,
		-0.882402, 0.417642, 0.216662,
		35.990562, 26.574245, 22.840397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767242, 26.937824, 22.766350>,  <36.608246, 26.281897, 22.688734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767242, 26.937824, 22.766350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.416695, 26.937983, 22.959002>,  <36.206364, 26.938078, 23.074593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.416695, 26.937983, 22.959002>,  <36.767242, 26.937824, 22.766350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416695, 26.937983, 22.959002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376414, 0.624420, 0.684406,
		-0.300468, 0.781089, -0.547375,
		-0.876374, 0.000397, 0.481631,
		36.153782, 26.938101, 23.103491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677029, 27.596319, 23.090040>,  <36.767242, 26.937824, 22.766350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677029, 27.596319, 23.090040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.418350, 27.368494, 23.292973>,  <36.263142, 27.231800, 23.414732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.418350, 27.368494, 23.292973>,  <36.677029, 27.596319, 23.090040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418350, 27.368494, 23.292973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206375, 0.509667, 0.835254,
		-0.734297, 0.644857, -0.212057,
		-0.646698, -0.569561, 0.507329,
		36.224342, 27.197626, 23.445171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441792, 28.104221, 23.608368>,  <36.677029, 27.596319, 23.090040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441792, 28.104221, 23.608368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.324371, 27.750151, 23.752748>,  <36.253918, 27.537708, 23.839376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.324371, 27.750151, 23.752748>,  <36.441792, 28.104221, 23.608368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324371, 27.750151, 23.752748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089503, 0.350478, 0.932285,
		-0.951743, 0.305983, -0.023659,
		-0.293555, -0.885178, 0.360951,
		36.236305, 27.484598, 23.861034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852207, 28.241962, 23.989077>,  <36.441792, 28.104221, 23.608368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852207, 28.241962, 23.989077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.000317, 27.901821, 24.138634>,  <36.089184, 27.697737, 24.228367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.000317, 27.901821, 24.138634>,  <35.852207, 28.241962, 23.989077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000317, 27.901821, 24.138634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100431, 0.436787, 0.893941,
		-0.923477, -0.293453, 0.247132,
		0.370274, -0.850354, 0.373891,
		36.111401, 27.646715, 24.250801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577976, 28.128201, 24.630726>,  <35.852207, 28.241962, 23.989077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577976, 28.128201, 24.630726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.930470, 27.939505, 24.642653>,  <36.141964, 27.826286, 24.649809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.930470, 27.939505, 24.642653>,  <35.577976, 28.128201, 24.630726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930470, 27.939505, 24.642653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123777, 0.291181, 0.948627,
		-0.456187, -0.832271, 0.314989,
		0.881233, -0.471740, 0.029817,
		36.194839, 27.797983, 24.651598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504375, 27.754595, 25.315256>,  <35.577976, 28.128201, 24.630726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504375, 27.754595, 25.315256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.888313, 27.782093, 25.206465>,  <36.118675, 27.798592, 25.141190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.888313, 27.782093, 25.206465>,  <35.504375, 27.754595, 25.315256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888313, 27.782093, 25.206465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245447, 0.263693, 0.932857,
		0.135847, -0.962154, 0.236231,
		0.959845, 0.068743, -0.271980,
		36.176266, 27.802717, 25.124870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879299, 27.411465, 25.881310>,  <35.504375, 27.754595, 25.315256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879299, 27.411465, 25.881310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.148342, 27.635584, 25.687956>,  <36.309769, 27.770056, 25.571943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.148342, 27.635584, 25.687956>,  <35.879299, 27.411465, 25.881310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148342, 27.635584, 25.687956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328186, 0.359610, 0.873484,
		0.663243, -0.746153, 0.057995,
		0.672609, 0.560299, -0.483386,
		36.350124, 27.803673, 25.542940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578888, 27.351112, 26.175993>,  <35.879299, 27.411465, 25.881310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578888, 27.351112, 26.175993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.595680, 27.697062, 25.975899>,  <36.605755, 27.904631, 25.855843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.595680, 27.697062, 25.975899>,  <36.578888, 27.351112, 26.175993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595680, 27.697062, 25.975899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212920, 0.481432, 0.850228,
		0.976167, -0.142205, -0.163937,
		0.041983, 0.864871, -0.500236,
		36.608276, 27.956522, 25.825829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207767, 27.651745, 26.306114>,  <36.578888, 27.351112, 26.175993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207767, 27.651745, 26.306114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.002335, 27.968952, 26.175051>,  <36.879074, 28.159277, 26.096413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.002335, 27.968952, 26.175051>,  <37.207767, 27.651745, 26.306114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002335, 27.968952, 26.175051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204015, 0.483777, 0.851080,
		0.833435, 0.370250, -0.410245,
		-0.513580, 0.793016, -0.327660,
		36.848259, 28.206858, 26.076754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516006, 28.015659, 26.719097>,  <37.207767, 27.651745, 26.306114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516006, 28.015659, 26.719097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.212402, 28.245340, 26.596331>,  <37.030239, 28.383148, 26.522671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.212402, 28.245340, 26.596331>,  <37.516006, 28.015659, 26.719097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212402, 28.245340, 26.596331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238863, 0.684106, 0.689161,
		0.605681, 0.449769, -0.656399,
		-0.759010, 0.574201, -0.306917,
		36.984699, 28.417601, 26.504255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725109, 28.793051, 26.517763>,  <37.516006, 28.015659, 26.719097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725109, 28.793051, 26.517763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.339233, 28.812384, 26.621334>,  <37.107708, 28.823984, 26.683477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.339233, 28.812384, 26.621334>,  <37.725109, 28.793051, 26.517763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339233, 28.812384, 26.621334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228481, 0.642653, 0.731296,
		-0.131056, 0.764631, -0.631002,
		-0.964687, 0.048332, 0.258927,
		37.049828, 28.826883, 26.699013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.896885, 33.869255, 28.667393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.499958, 33.867260, 28.716829>,  <39.261803, 33.866062, 28.746490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.499958, 33.867260, 28.716829>,  <39.896885, 33.869255, 28.667393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499958, 33.867260, 28.716829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078185, 0.748979, 0.657965,
		-0.095844, 0.662575, -0.742838,
		-0.992321, -0.004983, 0.123589,
		39.202263, 33.865765, 28.753906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746525, 34.588158, 28.628908>,  <39.896885, 33.869255, 28.667393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746525, 34.588158, 28.628908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.434696, 34.433640, 28.826107>,  <39.247601, 34.340927, 28.944426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.434696, 34.433640, 28.826107>,  <39.746525, 34.588158, 28.628908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434696, 34.433640, 28.826107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060900, 0.736656, 0.673520,
		-0.623346, 0.555080, -0.550751,
		-0.779571, -0.386295, 0.492996,
		39.200825, 34.317753, 28.974007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211967, 35.074619, 28.632498>,  <39.746525, 34.588158, 28.628908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211967, 35.074619, 28.632498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.138885, 34.845009, 28.951775>,  <39.095036, 34.707241, 29.143341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.138885, 34.845009, 28.951775>,  <39.211967, 35.074619, 28.632498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138885, 34.845009, 28.951775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061684, 0.803565, 0.592013,
		-0.981230, 0.157401, -0.111408,
		-0.182707, -0.574029, 0.798191,
		39.084072, 34.672802, 29.191233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813248, 35.465057, 29.075123>,  <39.211967, 35.074619, 28.632498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813248, 35.465057, 29.075123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.923985, 35.157040, 29.305044>,  <38.990425, 34.972229, 29.442997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.923985, 35.157040, 29.305044>,  <38.813248, 35.465057, 29.075123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923985, 35.157040, 29.305044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241013, 0.634705, 0.734209,
		-0.930201, -0.064722, 0.361300,
		0.276838, -0.770040, 0.574804,
		39.007034, 34.926029, 29.477486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414726, 35.486897, 29.642252>,  <38.813248, 35.465057, 29.075123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414726, 35.486897, 29.642252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.740803, 35.286674, 29.758808>,  <38.936447, 35.166542, 29.828743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.740803, 35.286674, 29.758808>,  <38.414726, 35.486897, 29.642252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740803, 35.286674, 29.758808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062544, 0.576232, 0.814889,
		-0.575809, -0.646063, 0.501045,
		0.815188, -0.500559, 0.291393,
		38.985359, 35.136505, 29.846226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318577, 35.284153, 30.330774>,  <38.414726, 35.486897, 29.642252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318577, 35.284153, 30.330774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.716202, 35.251640, 30.301832>,  <38.954777, 35.232132, 30.284468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.716202, 35.251640, 30.301832>,  <38.318577, 35.284153, 30.330774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716202, 35.251640, 30.301832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101289, 0.448079, 0.888237,
		-0.039777, -0.890291, 0.453652,
		0.994061, -0.081282, -0.072354,
		39.014420, 35.227257, 30.280127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520775, 35.010536, 30.957121>,  <38.318577, 35.284153, 30.330774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520775, 35.010536, 30.957121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.823471, 35.213089, 30.791752>,  <39.005089, 35.334621, 30.692532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.823471, 35.213089, 30.791752>,  <38.520775, 35.010536, 30.957121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823471, 35.213089, 30.791752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131401, 0.501682, 0.855014,
		0.640372, -0.701348, 0.313104,
		0.756741, 0.506385, -0.413421,
		39.050495, 35.365005, 30.667727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041927, 34.997307, 31.444714>,  <38.520775, 35.010536, 30.957121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041927, 34.997307, 31.444714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.145542, 35.303200, 31.208717>,  <39.207710, 35.486736, 31.067120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.145542, 35.303200, 31.208717>,  <39.041927, 34.997307, 31.444714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145542, 35.303200, 31.208717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192636, 0.557665, 0.807404,
		0.946463, -0.322799, -0.002860,
		0.259034, 0.764729, -0.589993,
		39.223251, 35.532619, 31.031719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753147, 35.285931, 31.718897>,  <39.041927, 34.997307, 31.444714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753147, 35.285931, 31.718897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.580280, 35.580158, 31.510218>,  <39.476559, 35.756695, 31.385010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.580280, 35.580158, 31.510218>,  <39.753147, 35.285931, 31.718897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580280, 35.580158, 31.510218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043376, 0.594796, 0.802706,
		0.900748, 0.324276, -0.288959,
		-0.432170, 0.735570, -0.521696,
		39.450630, 35.800831, 31.353708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191917, 35.894783, 31.874947>,  <39.753147, 35.285931, 31.718897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191917, 35.894783, 31.874947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.828709, 36.010307, 31.753567>,  <39.610783, 36.079620, 31.680738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.828709, 36.010307, 31.753567>,  <40.191917, 35.894783, 31.874947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828709, 36.010307, 31.753567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023592, 0.687957, 0.725368,
		0.418254, 0.665810, -0.617867,
		-0.908024, 0.288812, -0.303448,
		39.556301, 36.096951, 31.662533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250614, 36.677151, 31.876612>,  <40.191917, 35.894783, 31.874947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250614, 36.677151, 31.876612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.862499, 36.582218, 31.857798>,  <39.629631, 36.525257, 31.846510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.862499, 36.582218, 31.857798>,  <40.250614, 36.677151, 31.876612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862499, 36.582218, 31.857798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201298, 0.684022, 0.701137,
		-0.134231, 0.689773, -0.711474,
		-0.970289, -0.237333, -0.047033,
		39.571411, 36.511017, 31.843687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926769, 37.333866, 31.881449>,  <40.250614, 36.677151, 31.876612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926769, 37.333866, 31.881449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.657448, 37.065414, 32.005543>,  <39.495853, 36.904343, 32.079998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.657448, 37.065414, 32.005543>,  <39.926769, 37.333866, 31.881449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657448, 37.065414, 32.005543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004299, 0.423143, 0.906053,
		-0.739351, 0.608718, -0.287790,
		-0.673307, -0.671128, 0.310235,
		39.455456, 36.864075, 32.098614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153614, 37.637093, 31.950562>,  <39.926769, 37.333866, 31.881449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153614, 37.637093, 31.950562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.269695, 37.353191, 32.207317>,  <39.339344, 37.182850, 32.361370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.269695, 37.353191, 32.207317>,  <39.153614, 37.637093, 31.950562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269695, 37.353191, 32.207317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110408, 0.691112, 0.714265,
		-0.950573, -0.136415, 0.278929,
		0.290208, -0.709757, 0.641892,
		39.356758, 37.140263, 32.399883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959557, 38.268677, 31.847754>,  <39.153614, 37.637093, 31.950562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959557, 38.268677, 31.847754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.700500, 38.519302, 31.674332>,  <38.545067, 38.669678, 31.570278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.700500, 38.519302, 31.674332>,  <38.959557, 38.268677, 31.847754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700500, 38.519302, 31.674332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263682, -0.718159, -0.643987,
		-0.714860, -0.302757, 0.630328,
		-0.647648, 0.626567, -0.433551,
		38.506207, 38.707272, 31.544266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451054, 37.901966, 31.644266>,  <38.959557, 38.268677, 31.847754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451054, 37.901966, 31.644266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.438023, 38.217812, 31.399172>,  <38.430206, 38.407318, 31.252115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.438023, 38.217812, 31.399172>,  <38.451054, 37.901966, 31.644266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438023, 38.217812, 31.399172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454549, -0.557693, -0.694524,
		-0.890126, 0.255895, 0.377086,
		-0.032573, 0.789617, -0.612734,
		38.428249, 38.454697, 31.215351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746498, 37.948467, 31.354845>,  <38.451054, 37.901966, 31.644266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746498, 37.948467, 31.354845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.974712, 38.159817, 31.103348>,  <38.111641, 38.286625, 30.952450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.974712, 38.159817, 31.103348>,  <37.746498, 37.948467, 31.354845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974712, 38.159817, 31.103348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355152, -0.531554, -0.768971,
		-0.740511, 0.662024, -0.115619,
		0.570535, 0.528369, -0.628741,
		38.145874, 38.318329, 30.914726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280575, 37.918175, 30.789999>,  <37.746498, 37.948467, 31.354845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280575, 37.918175, 30.789999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.618885, 38.053604, 30.625059>,  <37.821873, 38.134861, 30.526094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.618885, 38.053604, 30.625059>,  <37.280575, 37.918175, 30.789999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618885, 38.053604, 30.625059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351435, -0.227988, -0.908028,
		-0.401443, 0.912903, -0.073841,
		0.845776, 0.338571, -0.412350,
		37.872620, 38.155174, 30.501354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006138, 38.397804, 30.194380>,  <37.280575, 37.918175, 30.789999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006138, 38.397804, 30.194380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.390614, 38.292328, 30.161922>,  <37.621300, 38.229042, 30.142448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.390614, 38.292328, 30.161922>,  <37.006138, 38.397804, 30.194380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390614, 38.292328, 30.161922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154909, -0.272438, -0.949621,
		0.228304, 0.925334, -0.302713,
		0.961187, -0.263695, -0.081144,
		37.678970, 38.213219, 30.137579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333004, 38.908062, 29.790932>,  <37.006138, 38.397804, 30.194380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333004, 38.908062, 29.790932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.493778, 38.542900, 29.762474>,  <37.590240, 38.323803, 29.745399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.493778, 38.542900, 29.762474>,  <37.333004, 38.908062, 29.790932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493778, 38.542900, 29.762474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428199, -0.118712, -0.895853,
		0.809380, 0.390536, -0.438618,
		0.401932, -0.912902, -0.071144,
		37.614357, 38.269028, 29.741131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516834, 38.882420, 29.090893>,  <37.333004, 38.908062, 29.790932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516834, 38.882420, 29.090893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.555912, 38.494774, 29.181465>,  <37.579357, 38.262184, 29.235809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.555912, 38.494774, 29.181465>,  <37.516834, 38.882420, 29.090893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555912, 38.494774, 29.181465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119758, -0.237312, -0.964023,
		0.987985, 0.067059, -0.139243,
		0.097691, -0.969116, 0.226430,
		37.585220, 38.204041, 29.249393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796833, 38.556545, 28.498735>,  <37.516834, 38.882420, 29.090893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796833, 38.556545, 28.498735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.604080, 38.288242, 28.724257>,  <37.488426, 38.127262, 28.859570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.604080, 38.288242, 28.724257>,  <37.796833, 38.556545, 28.498735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604080, 38.288242, 28.724257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263368, -0.502813, -0.823296,
		0.835718, -0.545221, 0.065642,
		-0.481884, -0.670755, 0.563804,
		37.459515, 38.087017, 28.893398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000671, 37.893833, 28.230989>,  <37.796833, 38.556545, 28.498735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000671, 37.893833, 28.230989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.661732, 37.789124, 28.415800>,  <37.458366, 37.726299, 28.526686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.661732, 37.789124, 28.415800>,  <38.000671, 37.893833, 28.230989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661732, 37.789124, 28.415800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104530, -0.770808, -0.628433,
		0.520640, -0.580800, 0.625783,
		-0.847353, -0.261774, 0.462025,
		37.407524, 37.710590, 28.554407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074097, 37.137611, 28.274176>,  <38.000671, 37.893833, 28.230989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074097, 37.137611, 28.274176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.685947, 37.227795, 28.308903>,  <37.453056, 37.281906, 28.329739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.685947, 37.227795, 28.308903>,  <38.074097, 37.137611, 28.274176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685947, 37.227795, 28.308903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239001, -0.843257, -0.481453,
		-0.035338, -0.487940, 0.872161,
		-0.970376, 0.225462, 0.086819,
		37.394836, 37.295433, 28.334948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626732, 36.555393, 28.477171>,  <38.074097, 37.137611, 28.274176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626732, 36.555393, 28.477171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.362915, 36.782810, 28.280493>,  <37.204624, 36.919262, 28.162487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.362915, 36.782810, 28.280493>,  <37.626732, 36.555393, 28.477171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362915, 36.782810, 28.280493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367955, -0.814607, -0.448358,
		-0.655447, -0.114791, 0.746467,
		-0.659544, 0.568541, -0.491693,
		37.165051, 36.953373, 28.132984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065342, 36.180798, 28.686344>,  <37.626732, 36.555393, 28.477171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065342, 36.180798, 28.686344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.945969, 36.382915, 28.362463>,  <36.874344, 36.504185, 28.168135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.945969, 36.382915, 28.362463>,  <37.065342, 36.180798, 28.686344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945969, 36.382915, 28.362463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315793, -0.852855, -0.415828,
		-0.900674, 0.131603, 0.414086,
		-0.298431, 0.505291, -0.809703,
		36.856438, 36.534504, 28.119553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397717, 36.031998, 28.551680>,  <37.065342, 36.180798, 28.686344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397717, 36.031998, 28.551680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.474823, 36.195755, 28.194977>,  <36.521088, 36.294010, 27.980955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.474823, 36.195755, 28.194977>,  <36.397717, 36.031998, 28.551680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474823, 36.195755, 28.194977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484793, -0.750404, -0.449299,
		-0.853121, 0.518930, 0.053816,
		0.192771, 0.409396, -0.891759,
		36.532654, 36.318573, 27.927448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819492, 35.892803, 28.157709>,  <36.397717, 36.031998, 28.551680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819492, 35.892803, 28.157709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.100613, 35.984909, 27.888472>,  <36.269283, 36.040173, 27.726929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.100613, 35.984909, 27.888472>,  <35.819492, 35.892803, 28.157709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100613, 35.984909, 27.888472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302248, -0.759869, -0.575539,
		-0.643989, 0.607929, -0.464436,
		0.702797, 0.230266, -0.673092,
		36.311451, 36.053989, 27.686544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495392, 36.005398, 27.528149>,  <35.819492, 35.892803, 28.157709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495392, 36.005398, 27.528149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.867462, 35.891026, 27.436039>,  <36.090702, 35.822403, 27.380774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.867462, 35.891026, 27.436039>,  <35.495392, 36.005398, 27.528149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867462, 35.891026, 27.436039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363468, -0.805530, -0.467987,
		-0.051682, 0.519005, -0.853207,
		0.930172, -0.285927, -0.230274,
		36.146515, 35.805248, 27.366957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885010, 35.763031, 27.471725>,  <35.495392, 36.005398, 27.528149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885010, 35.763031, 27.471725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.506298, 35.646564, 27.526619>,  <34.279072, 35.576687, 27.559555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.506298, 35.646564, 27.526619>,  <34.885010, 35.763031, 27.471725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506298, 35.646564, 27.526619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055598, 0.272012, 0.960686,
		-0.317044, 0.917188, -0.241347,
		-0.946779, -0.291162, 0.137234,
		34.222263, 35.559216, 27.567789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452740, 36.366123, 27.698036>,  <34.885010, 35.763031, 27.471725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452740, 36.366123, 27.698036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.305347, 36.015507, 27.821909>,  <34.216911, 35.805138, 27.896233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.305347, 36.015507, 27.821909>,  <34.452740, 36.366123, 27.698036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305347, 36.015507, 27.821909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002925, 0.334214, 0.942492,
		-0.929630, 0.346387, -0.125716,
		-0.368483, -0.876537, 0.309682,
		34.194801, 35.752544, 27.914814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853683, 36.581535, 28.181524>,  <34.452740, 36.366123, 27.698036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853683, 36.581535, 28.181524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.956837, 36.201744, 28.253063>,  <34.018726, 35.973869, 28.295986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.956837, 36.201744, 28.253063>,  <33.853683, 36.581535, 28.181524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956837, 36.201744, 28.253063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026032, 0.191867, 0.981076,
		-0.965827, -0.248343, 0.074195,
		0.257879, -0.949481, 0.178845,
		34.034199, 35.916901, 28.306717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462929, 36.472572, 28.758139>,  <33.853683, 36.581535, 28.181524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462929, 36.472572, 28.758139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.720802, 36.166840, 28.763577>,  <33.875526, 35.983402, 28.766840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.720802, 36.166840, 28.763577>,  <33.462929, 36.472572, 28.758139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720802, 36.166840, 28.763577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009595, 0.025875, 0.999619,
		-0.764390, -0.644306, 0.024016,
		0.644682, -0.764330, 0.013596,
		33.914207, 35.937542, 28.767656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201881, 35.930138, 29.238424>,  <33.462929, 36.472572, 28.758139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201881, 35.930138, 29.238424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.599751, 35.910084, 29.202412>,  <33.838474, 35.898052, 29.180805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.599751, 35.910084, 29.202412>,  <33.201881, 35.930138, 29.238424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599751, 35.910084, 29.202412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089955, -0.003749, 0.995939,
		-0.050272, -0.998735, 0.000782,
		0.994676, -0.050138, -0.090030,
		33.898155, 35.895042, 29.175404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338955, 35.519703, 29.821194>,  <33.201881, 35.930138, 29.238424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338955, 35.519703, 29.821194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.667152, 35.719952, 29.710794>,  <33.864071, 35.840099, 29.644554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.667152, 35.719952, 29.710794>,  <33.338955, 35.519703, 29.821194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667152, 35.719952, 29.710794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306779, 0.021800, 0.951531,
		0.482372, -0.865393, -0.135693,
		0.820490, 0.500620, -0.276000,
		33.913300, 35.870136, 29.627995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724937, 35.564243, 30.389139>,  <33.338955, 35.519703, 29.821194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724937, 35.564243, 30.389139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.931118, 35.840752, 30.186577>,  <34.054829, 36.006657, 30.065041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.931118, 35.840752, 30.186577>,  <33.724937, 35.564243, 30.389139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931118, 35.840752, 30.186577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458460, 0.276804, 0.844508,
		0.723961, -0.667473, -0.174242,
		0.515456, 0.691274, -0.506405,
		34.085754, 36.048134, 30.034655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405006, 35.614445, 30.754654>,  <33.724937, 35.564243, 30.389139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405006, 35.614445, 30.754654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.362427, 35.954861, 30.548975>,  <34.336880, 36.159111, 30.425568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.362427, 35.954861, 30.548975>,  <34.405006, 35.614445, 30.754654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362427, 35.954861, 30.548975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366364, 0.514325, 0.775401,
		0.924362, -0.105841, -0.366541,
		-0.106451, 0.851039, -0.514199,
		34.330490, 36.210171, 30.394714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007801, 35.853008, 30.679703>,  <34.405006, 35.614445, 30.754654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007801, 35.853008, 30.679703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.758617, 36.162258, 30.632038>,  <34.609108, 36.347809, 30.603439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.758617, 36.162258, 30.632038>,  <35.007801, 35.853008, 30.679703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758617, 36.162258, 30.632038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306153, 0.381140, 0.872355,
		0.719859, 0.506956, -0.474129,
		-0.622955, 0.773129, -0.119161,
		34.571732, 36.394196, 30.596291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436253, 36.446739, 30.925076>,  <35.007801, 35.853008, 30.679703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436253, 36.446739, 30.925076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.057236, 36.571430, 30.896812>,  <34.829826, 36.646244, 30.879854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.057236, 36.571430, 30.896812>,  <35.436253, 36.446739, 30.925076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057236, 36.571430, 30.896812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137801, 0.597862, 0.789666,
		0.288402, 0.738504, -0.609455,
		-0.947541, 0.311725, -0.070658,
		34.772972, 36.664948, 30.875614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406399, 37.250641, 30.983360>,  <35.436253, 36.446739, 30.925076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406399, 37.250641, 30.983360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.046925, 37.125374, 31.106192>,  <34.831242, 37.050213, 31.179890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.046925, 37.125374, 31.106192>,  <35.406399, 37.250641, 30.983360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046925, 37.125374, 31.106192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141957, 0.454767, 0.879225,
		-0.414992, 0.833736, -0.364235,
		-0.898683, -0.313166, 0.307079,
		34.777321, 37.031425, 31.198315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731907, 37.602776, 30.691137>,  <35.406399, 37.250641, 30.983360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731907, 37.602776, 30.691137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.793945, 37.986282, 30.786396>,  <34.831169, 38.216385, 30.843552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.793945, 37.986282, 30.786396>,  <34.731907, 37.602776, 30.691137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793945, 37.986282, 30.786396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093867, -0.254276, 0.962566,
		0.983430, -0.126932, -0.129433,
		0.155092, 0.958766, 0.238147,
		34.840473, 38.273911, 30.857840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.987026, 35.392670, 23.859522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751083, 35.098175, 23.992205>,  <33.609520, 34.921478, 24.071814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751083, 35.098175, 23.992205>,  <33.987026, 35.392670, 23.859522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751083, 35.098175, 23.992205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271594, 0.205968, 0.940114,
		-0.760466, 0.644620, 0.078466,
		-0.589855, -0.736235, 0.331706,
		33.574127, 34.877304, 24.091717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557209, 35.816334, 24.435669>,  <33.987026, 35.392670, 23.859522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557209, 35.816334, 24.435669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486675, 35.422836, 24.449236>,  <33.444355, 35.186737, 24.457376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486675, 35.422836, 24.449236>,  <33.557209, 35.816334, 24.435669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486675, 35.422836, 24.449236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020894, 0.038192, 0.999052,
		-0.984108, 0.175461, -0.027289,
		-0.176337, -0.983745, 0.033919,
		33.433773, 35.127712, 24.459412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937366, 35.715816, 24.833612>,  <33.557209, 35.816334, 24.435669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937366, 35.715816, 24.833612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149754, 35.377117, 24.846807>,  <33.277184, 35.173897, 24.854725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149754, 35.377117, 24.846807>,  <32.937366, 35.715816, 24.833612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149754, 35.377117, 24.846807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009630, 0.044954, 0.998943,
		-0.847339, -0.530086, 0.032023,
		0.530965, -0.846751, 0.032987,
		33.309044, 35.123093, 24.856703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538654, 35.285591, 25.348070>,  <32.937366, 35.715816, 24.833612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538654, 35.285591, 25.348070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912907, 35.144840, 25.336950>,  <33.137459, 35.060390, 25.330278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912907, 35.144840, 25.336950>,  <32.538654, 35.285591, 25.348070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912907, 35.144840, 25.336950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045084, 0.041015, 0.998141,
		-0.350079, -0.935149, 0.054239,
		0.935635, -0.351873, -0.027802,
		33.193596, 35.039280, 25.328609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617470, 34.663342, 25.810165>,  <32.538654, 35.285591, 25.348070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617470, 34.663342, 25.810165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976925, 34.831726, 25.760798>,  <33.192600, 34.932758, 25.731176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976925, 34.831726, 25.760798>,  <32.617470, 34.663342, 25.810165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976925, 34.831726, 25.760798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144268, -0.017907, 0.989377,
		0.414284, -0.906900, -0.076824,
		0.898641, 0.420967, -0.123418,
		33.246517, 34.958015, 25.723772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087955, 34.265480, 26.379025>,  <32.617470, 34.663342, 25.810165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087955, 34.265480, 26.379025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290989, 34.586292, 26.253098>,  <33.412811, 34.778778, 26.177542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290989, 34.586292, 26.253098>,  <33.087955, 34.265480, 26.379025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290989, 34.586292, 26.253098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321421, 0.162745, 0.932847,
		0.799403, -0.574688, -0.175182,
		0.507585, 0.802028, -0.314816,
		33.443264, 34.826900, 26.158653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816494, 34.264057, 26.627886>,  <33.087955, 34.265480, 26.379025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816494, 34.264057, 26.627886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740547, 34.645752, 26.535473>,  <33.694981, 34.874771, 26.480024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740547, 34.645752, 26.535473>,  <33.816494, 34.264057, 26.627886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740547, 34.645752, 26.535473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338934, 0.284551, 0.896746,
		0.921452, 0.091956, -0.377451,
		-0.189865, 0.954240, -0.231033,
		33.683586, 34.932026, 26.466164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436455, 34.564041, 26.914360>,  <33.816494, 34.264057, 26.627886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436455, 34.564041, 26.914360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168968, 34.856171, 26.858580>,  <34.008476, 35.031448, 26.825111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168968, 34.856171, 26.858580>,  <34.436455, 34.564041, 26.914360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168968, 34.856171, 26.858580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318181, 0.450602, 0.834098,
		0.671999, 0.513402, -0.533699,
		-0.668714, 0.730326, -0.139449,
		33.968353, 35.075268, 26.816746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798435, 35.181690, 26.972965>,  <34.436455, 34.564041, 26.914360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798435, 35.181690, 26.972965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418953, 35.282135, 27.049799>,  <34.191261, 35.342403, 27.095900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418953, 35.282135, 27.049799>,  <34.798435, 35.181690, 26.972965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418953, 35.282135, 27.049799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286337, 0.424896, 0.858763,
		0.134031, 0.869716, -0.475005,
		-0.948708, 0.251112, 0.192083,
		34.134342, 35.357468, 27.107424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382099, 35.619083, 26.825806>,  <34.798435, 35.181690, 26.972965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382099, 35.619083, 26.825806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732082, 35.507225, 26.983915>,  <35.942074, 35.440109, 27.078781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732082, 35.507225, 26.983915>,  <35.382099, 35.619083, 26.825806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732082, 35.507225, 26.983915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121244, -0.916890, -0.380281,
		0.468767, 0.284806, -0.836148,
		0.874962, -0.279641, 0.395276,
		35.994572, 35.423332, 27.102499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706951, 35.383110, 26.299461>,  <35.382099, 35.619083, 26.825806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706951, 35.383110, 26.299461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873299, 35.210346, 26.619587>,  <35.973106, 35.106686, 26.811663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873299, 35.210346, 26.619587>,  <35.706951, 35.383110, 26.299461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873299, 35.210346, 26.619587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036893, -0.887311, -0.459694,
		0.908675, 0.161648, -0.384942,
		0.415872, -0.431914, 0.800313,
		35.998058, 35.080772, 26.859680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342140, 35.026073, 26.103678>,  <35.706951, 35.383110, 26.299461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342140, 35.026073, 26.103678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248074, 34.862495, 26.456371>,  <36.191635, 34.764347, 26.667988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248074, 34.862495, 26.456371>,  <36.342140, 35.026073, 26.103678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248074, 34.862495, 26.456371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127232, -0.912324, -0.389200,
		0.963591, 0.020658, 0.266580,
		-0.235167, -0.408947, 0.881736,
		36.177525, 34.739811, 26.720892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837109, 34.647995, 26.308754>,  <36.342140, 35.026073, 26.103678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837109, 34.647995, 26.308754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512016, 34.494690, 26.484291>,  <36.316963, 34.402706, 26.589613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512016, 34.494690, 26.484291>,  <36.837109, 34.647995, 26.308754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512016, 34.494690, 26.484291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219680, -0.899178, -0.378445,
		0.539642, -0.211167, 0.814981,
		-0.812728, -0.383260, 0.438845,
		36.268196, 34.379711, 26.615944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916031, 34.042549, 26.285597>,  <36.837109, 34.647995, 26.308754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916031, 34.042549, 26.285597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551929, 34.006550, 26.447256>,  <36.333469, 33.984951, 26.544252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551929, 34.006550, 26.447256>,  <36.916031, 34.042549, 26.285597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551929, 34.006550, 26.447256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111866, -0.886338, -0.449323,
		0.398652, -0.454209, 0.796725,
		-0.910254, -0.089997, 0.404150,
		36.278854, 33.979549, 26.568501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018036, 33.352383, 26.610500>,  <36.916031, 34.042549, 26.285597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018036, 33.352383, 26.610500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649036, 33.482765, 26.527800>,  <36.427635, 33.560993, 26.478180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649036, 33.482765, 26.527800>,  <37.018036, 33.352383, 26.610500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649036, 33.482765, 26.527800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130074, -0.766815, -0.628550,
		-0.363417, -0.552945, 0.749786,
		-0.922501, 0.325953, -0.206750,
		36.372288, 33.580551, 26.465775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555786, 32.750530, 26.613382>,  <37.018036, 33.352383, 26.610500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555786, 32.750530, 26.613382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394726, 33.024158, 26.370098>,  <36.298088, 33.188335, 26.224127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394726, 33.024158, 26.370098>,  <36.555786, 32.750530, 26.613382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394726, 33.024158, 26.370098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160433, -0.706911, -0.688867,
		-0.901184, -0.179796, 0.394387,
		-0.402652, 0.684069, -0.608212,
		36.273930, 33.229378, 26.187635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947796, 32.361877, 26.441978>,  <36.555786, 32.750530, 26.613382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947796, 32.361877, 26.441978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000103, 32.655331, 26.175241>,  <36.031487, 32.831402, 26.015200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000103, 32.655331, 26.175241>,  <35.947796, 32.361877, 26.441978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000103, 32.655331, 26.175241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253523, -0.625512, -0.737876,
		-0.958450, 0.265551, 0.104196,
		0.130768, 0.733633, -0.666845,
		36.039333, 32.875420, 25.975187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446831, 32.312725, 26.077354>,  <35.947796, 32.361877, 26.441978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446831, 32.312725, 26.077354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665348, 32.549156, 25.839972>,  <35.796459, 32.691013, 25.697542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665348, 32.549156, 25.839972>,  <35.446831, 32.312725, 26.077354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665348, 32.549156, 25.839972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244083, -0.565433, -0.787851,
		-0.801242, 0.575249, -0.164619,
		0.546292, 0.591078, -0.593457,
		35.829235, 32.726479, 25.661934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070160, 32.367126, 25.554382>,  <35.446831, 32.312725, 26.077354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070160, 32.367126, 25.554382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425808, 32.455601, 25.394114>,  <35.639198, 32.508686, 25.297953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425808, 32.455601, 25.394114>,  <35.070160, 32.367126, 25.554382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425808, 32.455601, 25.394114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205865, -0.588608, -0.781767,
		-0.408754, 0.777571, -0.477811,
		0.889123, 0.221186, -0.400670,
		35.692543, 32.521957, 25.273912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983742, 32.415108, 24.815836>,  <35.070160, 32.367126, 25.554382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983742, 32.415108, 24.815836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383389, 32.398724, 24.819485>,  <35.623177, 32.388893, 24.821674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383389, 32.398724, 24.819485>,  <34.983742, 32.415108, 24.815836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383389, 32.398724, 24.819485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014932, -0.550240, -0.834873,
		0.039214, 0.834001, -0.550367,
		0.999119, -0.040956, 0.009124,
		35.683125, 32.386436, 24.822222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159023, 32.770271, 24.171400>,  <34.983742, 32.415108, 24.815836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159023, 32.770271, 24.171400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452511, 32.523811, 24.285954>,  <35.628605, 32.375935, 24.354687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452511, 32.523811, 24.285954>,  <35.159023, 32.770271, 24.171400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452511, 32.523811, 24.285954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119719, -0.532135, -0.838153,
		0.668822, 0.580683, -0.464203,
		0.733720, -0.616149, 0.286385,
		35.672626, 32.338966, 24.371868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620972, 32.607582, 23.572151>,  <35.159023, 32.770271, 24.171400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620972, 32.607582, 23.572151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733845, 32.312214, 23.817133>,  <35.801567, 32.134991, 23.964123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733845, 32.312214, 23.817133>,  <35.620972, 32.607582, 23.572151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733845, 32.312214, 23.817133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180280, -0.586212, -0.789845,
		0.942269, 0.333295, -0.032297,
		0.282184, -0.738424, 0.612455,
		35.818501, 32.090687, 24.000870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239666, 32.324295, 23.248907>,  <35.620972, 32.607582, 23.572151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239666, 32.324295, 23.248907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094730, 32.037922, 23.487617>,  <36.007767, 31.866096, 23.630844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094730, 32.037922, 23.487617>,  <36.239666, 32.324295, 23.248907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094730, 32.037922, 23.487617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117997, -0.670372, -0.732583,
		0.924546, -0.195027, 0.327382,
		-0.362341, -0.715937, 0.596777,
		35.986027, 31.823141, 23.666651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.532394, 28.020491, 26.691429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.716202, 28.341497, 26.539215>,  <33.826485, 28.534101, 26.447886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.716202, 28.341497, 26.539215>,  <33.532394, 28.020491, 26.691429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716202, 28.341497, 26.539215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296403, 0.265324, 0.917469,
		0.837250, -0.534387, -0.115947,
		0.459519, 0.802517, -0.380536,
		33.854057, 28.582253, 26.425055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068157, 28.166779, 27.117365>,  <33.532394, 28.020491, 26.691429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068157, 28.166779, 27.117365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.055939, 28.513344, 26.918007>,  <34.048607, 28.721283, 26.798393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.055939, 28.513344, 26.918007>,  <34.068157, 28.166779, 27.117365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055939, 28.513344, 26.918007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381739, 0.470941, 0.795292,
		0.923765, -0.165962, -0.345129,
		-0.030547, 0.866413, -0.498394,
		34.046776, 28.773268, 26.768488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705570, 28.473757, 27.185425>,  <34.068157, 28.166779, 27.117365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705570, 28.473757, 27.185425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.434761, 28.760576, 27.119114>,  <34.272274, 28.932669, 27.079329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.434761, 28.760576, 27.119114>,  <34.705570, 28.473757, 27.185425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434761, 28.760576, 27.119114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303538, 0.477253, 0.824678,
		0.670451, 0.508006, -0.540763,
		-0.677023, 0.717049, -0.165776,
		34.231655, 28.975691, 27.069382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063778, 28.943993, 27.345739>,  <34.705570, 28.473757, 27.185425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063778, 28.943993, 27.345739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.709846, 29.129726, 27.330431>,  <34.497486, 29.241167, 27.321245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.709846, 29.129726, 27.330431>,  <35.063778, 28.943993, 27.345739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709846, 29.129726, 27.330431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203837, 0.459676, 0.864378,
		0.418952, 0.757029, -0.501385,
		-0.884833, 0.464333, -0.038272,
		34.444397, 29.269026, 27.318949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215832, 29.646614, 27.440004>,  <35.063778, 28.943993, 27.345739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215832, 29.646614, 27.440004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.829620, 29.590654, 27.527807>,  <34.597893, 29.557079, 27.580488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.829620, 29.590654, 27.527807>,  <35.215832, 29.646614, 27.440004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829620, 29.590654, 27.527807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130011, 0.471376, 0.872297,
		-0.225502, 0.870766, -0.436939,
		-0.965529, -0.139898, 0.219505,
		34.539963, 29.548685, 27.593658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183926, 30.170256, 27.819305>,  <35.215832, 29.646614, 27.440004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183926, 30.170256, 27.819305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.850658, 29.967667, 27.908129>,  <34.650696, 29.846113, 27.961424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.850658, 29.967667, 27.908129>,  <35.183926, 30.170256, 27.819305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850658, 29.967667, 27.908129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060421, 0.482511, 0.873804,
		-0.549705, 0.714611, -0.432616,
		-0.833171, -0.506473, 0.222061,
		34.600708, 29.815725, 27.974747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637867, 30.650843, 27.907322>,  <35.183926, 30.170256, 27.819305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637867, 30.650843, 27.907322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.531296, 30.325684, 28.114481>,  <34.467354, 30.130589, 28.238775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.531296, 30.325684, 28.114481>,  <34.637867, 30.650843, 27.907322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531296, 30.325684, 28.114481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007274, 0.535607, 0.844436,
		-0.963827, 0.228748, -0.136788,
		-0.266428, -0.812896, 0.517897,
		34.451366, 30.081816, 28.269850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079014, 30.820225, 28.278595>,  <34.637867, 30.650843, 27.907322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079014, 30.820225, 28.278595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.233341, 30.507488, 28.474501>,  <34.325939, 30.319847, 28.592043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.233341, 30.507488, 28.474501>,  <34.079014, 30.820225, 28.278595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233341, 30.507488, 28.474501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136314, 0.476728, 0.868418,
		-0.912448, -0.401815, 0.077356,
		0.385821, -0.781841, 0.489762,
		34.349087, 30.272936, 28.621429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619991, 30.719940, 28.873310>,  <34.079014, 30.820225, 28.278595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619991, 30.719940, 28.873310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.945129, 30.516344, 28.986591>,  <34.140213, 30.394186, 29.054560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.945129, 30.516344, 28.986591>,  <33.619991, 30.719940, 28.873310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945129, 30.516344, 28.986591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156941, 0.276842, 0.948013,
		-0.560933, -0.815037, 0.145149,
		0.812849, -0.508992, 0.283203,
		34.188984, 30.363647, 29.071552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489750, 30.448765, 29.529978>,  <33.619991, 30.719940, 28.873310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489750, 30.448765, 29.529978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.885147, 30.398031, 29.497021>,  <34.122387, 30.367592, 29.477245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.885147, 30.398031, 29.497021>,  <33.489750, 30.448765, 29.529978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885147, 30.398031, 29.497021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111186, 0.240066, 0.964368,
		-0.102533, -0.962435, 0.251406,
		0.988496, -0.126833, -0.082394,
		34.181698, 30.359982, 29.472301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779476, 30.046577, 30.069859>,  <33.489750, 30.448765, 29.529978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779476, 30.046577, 30.069859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.046143, 30.306847, 29.924435>,  <34.206142, 30.463009, 29.837179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.046143, 30.306847, 29.924435>,  <33.779476, 30.046577, 30.069859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046143, 30.306847, 29.924435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077851, 0.424315, 0.902162,
		0.741279, -0.629745, 0.232221,
		0.666667, 0.650675, -0.363562,
		34.246143, 30.502048, 29.815367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355389, 30.069969, 30.580753>,  <33.779476, 30.046577, 30.069859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355389, 30.069969, 30.580753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.405701, 30.410597, 30.377182>,  <34.435886, 30.614973, 30.255039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.405701, 30.410597, 30.377182>,  <34.355389, 30.069969, 30.580753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405701, 30.410597, 30.377182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184252, 0.484027, 0.855436,
		0.974798, -0.201365, -0.096024,
		0.125777, 0.851569, -0.508930,
		34.443432, 30.666067, 30.224503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953793, 30.286371, 30.793116>,  <34.355389, 30.069969, 30.580753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953793, 30.286371, 30.793116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.820007, 30.632330, 30.643402>,  <34.739738, 30.839905, 30.553574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.820007, 30.632330, 30.643402>,  <34.953793, 30.286371, 30.793116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820007, 30.632330, 30.643402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395470, 0.489303, 0.777294,
		0.855418, 0.111956, -0.505693,
		-0.334460, 0.864898, -0.374283,
		34.719669, 30.891800, 30.531116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509655, 30.854507, 30.871826>,  <34.953793, 30.286371, 30.793116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509655, 30.854507, 30.871826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.168232, 31.061007, 30.843756>,  <34.963379, 31.184906, 30.826914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.168232, 31.061007, 30.843756>,  <35.509655, 30.854507, 30.871826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168232, 31.061007, 30.843756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309218, 0.610386, 0.729255,
		0.419311, 0.600762, -0.680634,
		-0.853559, 0.516249, -0.070175,
		34.912163, 31.215881, 30.822702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795841, 31.163429, 30.230509>,  <35.509655, 30.854507, 30.871826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795841, 31.163429, 30.230509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.168808, 31.285053, 30.152386>,  <36.392590, 31.358028, 30.105513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.168808, 31.285053, 30.152386>,  <35.795841, 31.163429, 30.230509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168808, 31.285053, 30.152386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060926, -0.664972, -0.744379,
		-0.356210, 0.682173, -0.638557,
		0.932417, 0.304060, -0.195308,
		36.448532, 31.376272, 30.093794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911842, 31.514751, 29.519491>,  <35.795841, 31.163429, 30.230509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911842, 31.514751, 29.519491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.242722, 31.332516, 29.651056>,  <36.441250, 31.223175, 29.729996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.242722, 31.332516, 29.651056>,  <35.911842, 31.514751, 29.519491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242722, 31.332516, 29.651056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043006, -0.532297, -0.845464,
		0.560262, 0.713512, -0.420723,
		0.827198, -0.455588, 0.328911,
		36.490883, 31.195839, 29.749729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342716, 31.449598, 28.939880>,  <35.911842, 31.514751, 29.519491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342716, 31.449598, 28.939880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.488468, 31.167198, 29.182793>,  <36.575920, 30.997757, 29.328539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.488468, 31.167198, 29.182793>,  <36.342716, 31.449598, 28.939880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488468, 31.167198, 29.182793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014355, -0.656292, -0.754370,
		0.931140, 0.266160, -0.249274,
		0.364380, -0.706002, 0.607279,
		36.597782, 30.955397, 29.364977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963039, 31.250183, 28.508503>,  <36.342716, 31.449598, 28.939880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963039, 31.250183, 28.508503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.937729, 30.963444, 28.786243>,  <36.922543, 30.791401, 28.952888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.937729, 30.963444, 28.786243>,  <36.963039, 31.250183, 28.508503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937729, 30.963444, 28.786243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081937, -0.697130, -0.712247,
		0.994627, 0.011823, 0.102849,
		-0.063278, -0.716847, 0.694353,
		36.918747, 30.748390, 28.994549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588612, 30.775150, 28.332529>,  <36.963039, 31.250183, 28.508503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588612, 30.775150, 28.332529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.303925, 30.577782, 28.532530>,  <37.133114, 30.459360, 28.652531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.303925, 30.577782, 28.532530>,  <37.588612, 30.775150, 28.332529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303925, 30.577782, 28.532530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134113, -0.794124, -0.592773,
		0.689548, -0.354828, 0.631364,
		-0.711714, -0.493420, 0.500000,
		37.090412, 30.429756, 28.682529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898994, 30.083792, 28.400940>,  <37.588612, 30.775150, 28.332529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898994, 30.083792, 28.400940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.499001, 30.083483, 28.403046>,  <37.259003, 30.083298, 28.404308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.499001, 30.083483, 28.403046>,  <37.898994, 30.083792, 28.400940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499001, 30.083483, 28.403046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003083, -0.722285, -0.691589,
		0.004334, -0.691595, 0.722272,
		-0.999986, -0.000770, 0.005262,
		37.199005, 30.083252, 28.404625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735729, 29.372398, 28.511848>,  <37.898994, 30.083792, 28.400940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735729, 29.372398, 28.511848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.405663, 29.530159, 28.350086>,  <37.207623, 29.624815, 28.253029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.405663, 29.530159, 28.350086>,  <37.735729, 29.372398, 28.511848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405663, 29.530159, 28.350086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007981, -0.723974, -0.689781,
		-0.564831, -0.565958, 0.600548,
		-0.825168, 0.394403, -0.404405,
		37.158112, 29.648479, 28.228765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173794, 28.770855, 28.340876>,  <37.735729, 29.372398, 28.511848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173794, 28.770855, 28.340876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.070286, 29.079390, 28.108295>,  <37.008183, 29.264509, 27.968748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.070286, 29.079390, 28.108295>,  <37.173794, 28.770855, 28.340876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070286, 29.079390, 28.108295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114041, -0.622137, -0.774559,
		-0.959184, -0.134120, 0.248952,
		-0.258766, 0.771335, -0.581449,
		36.992657, 29.310791, 27.933861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627632, 28.531023, 28.111376>,  <37.173794, 28.770855, 28.340876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627632, 28.531023, 28.111376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.700951, 28.825203, 27.850451>,  <36.744942, 29.001711, 27.693895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.700951, 28.825203, 27.850451>,  <36.627632, 28.531023, 28.111376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700951, 28.825203, 27.850451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311817, -0.585796, -0.748073,
		-0.932294, 0.340523, 0.121951,
		0.183298, 0.735451, -0.652315,
		36.755939, 29.045837, 27.654757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043732, 28.594349, 27.656065>,  <36.627632, 28.531023, 28.111376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043732, 28.594349, 27.656065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.351124, 28.754398, 27.456331>,  <36.535561, 28.850428, 27.336491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.351124, 28.754398, 27.456331>,  <36.043732, 28.594349, 27.656065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351124, 28.754398, 27.456331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294679, -0.471385, -0.831241,
		-0.567977, 0.785938, -0.244344,
		0.768483, 0.400122, -0.499335,
		36.581669, 28.874435, 27.306530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841660, 28.959282, 27.049053>,  <36.043732, 28.594349, 27.656065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841660, 28.959282, 27.049053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.221790, 28.916058, 26.932297>,  <36.449867, 28.890123, 26.862242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.221790, 28.916058, 26.932297>,  <35.841660, 28.959282, 27.049053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221790, 28.916058, 26.932297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310181, -0.406566, -0.859355,
		-0.025812, 0.907208, -0.419889,
		0.950327, -0.108060, -0.291893,
		36.506889, 28.883640, 26.844728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870792, 29.103825, 26.352329>,  <35.841660, 28.959282, 27.049053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870792, 29.103825, 26.352329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.216129, 28.907213, 26.397993>,  <36.423332, 28.789246, 26.425390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.216129, 28.907213, 26.397993>,  <35.870792, 29.103825, 26.352329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216129, 28.907213, 26.397993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108623, -0.401950, -0.909196,
		0.492782, 0.772551, -0.400414,
		0.863346, -0.491530, 0.114158,
		36.475132, 28.759754, 26.432240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073570, 29.150217, 25.720804>,  <35.870792, 29.103825, 26.352329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073570, 29.150217, 25.720804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.337944, 28.870806, 25.830509>,  <36.496571, 28.703159, 25.896332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.337944, 28.870806, 25.830509>,  <36.073570, 29.150217, 25.720804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337944, 28.870806, 25.830509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069380, -0.420783, -0.904504,
		0.747227, 0.578793, -0.326575,
		0.660938, -0.698527, 0.274264,
		36.536224, 28.661247, 25.912788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666775, 29.120827, 25.226000>,  <36.073570, 29.150217, 25.720804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666775, 29.120827, 25.226000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.611607, 28.760365, 25.390388>,  <36.578506, 28.544088, 25.489021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.611607, 28.760365, 25.390388>,  <36.666775, 29.120827, 25.226000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611607, 28.760365, 25.390388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053661, -0.421128, -0.905412,
		0.988989, -0.102822, 0.106439,
		-0.137921, -0.901154, 0.410974,
		36.570229, 28.490019, 25.513681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427162, 29.321337, 25.288200>,  <36.666775, 29.120827, 25.226000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427162, 29.321337, 25.288200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.625633, 29.572157, 25.047995>,  <37.744717, 29.722649, 24.903872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.625633, 29.572157, 25.047995>,  <37.427162, 29.321337, 25.288200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625633, 29.572157, 25.047995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068376, 0.661291, 0.747007,
		0.865526, -0.411707, 0.285241,
		0.496175, 0.627050, -0.600515,
		37.774487, 29.760271, 24.867840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087181, 29.456131, 25.638769>,  <37.427162, 29.321337, 25.288200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087181, 29.456131, 25.638769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.013866, 29.757385, 25.386042>,  <37.969879, 29.938137, 25.234406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.013866, 29.757385, 25.386042>,  <38.087181, 29.456131, 25.638769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013866, 29.757385, 25.386042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257313, 0.657054, 0.708570,
		0.948786, -0.032703, -0.314221,
		-0.183288, 0.753134, -0.631818,
		37.958881, 29.983326, 25.196497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586281, 29.874924, 25.726488>,  <38.087181, 29.456131, 25.638769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586281, 29.874924, 25.726488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.328819, 30.131804, 25.559977>,  <38.174343, 30.285931, 25.460070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.328819, 30.131804, 25.559977>,  <38.586281, 29.874924, 25.726488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328819, 30.131804, 25.559977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345316, 0.729115, 0.590887,
		0.682982, 0.236580, -0.691061,
		-0.643655, 0.642200, -0.416278,
		38.135723, 30.324463, 25.435093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927391, 30.484116, 25.857208>,  <38.586281, 29.874924, 25.726488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927391, 30.484116, 25.857208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.559399, 30.594109, 25.745478>,  <38.338604, 30.660105, 25.678440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.559399, 30.594109, 25.745478>,  <38.927391, 30.484116, 25.857208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559399, 30.594109, 25.745478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132758, 0.889104, 0.438029,
		0.368798, 0.365895, -0.854464,
		-0.919980, 0.274981, -0.279325,
		38.283405, 30.676603, 25.661680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030853, 31.118622, 25.578768>,  <38.927391, 30.484116, 25.857208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030853, 31.118622, 25.578768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.639648, 31.140915, 25.659151>,  <38.404926, 31.154291, 25.707380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.639648, 31.140915, 25.659151>,  <39.030853, 31.118622, 25.578768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639648, 31.140915, 25.659151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142182, 0.883143, 0.447037,
		-0.152558, 0.465780, -0.871651,
		-0.978013, 0.055734, 0.200956,
		38.346245, 31.157635, 25.719439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880001, 31.773829, 25.423557>,  <39.030853, 31.118622, 25.578768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880001, 31.773829, 25.423557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.590687, 31.647217, 25.669048>,  <38.417099, 31.571251, 25.816343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.590687, 31.647217, 25.669048>,  <38.880001, 31.773829, 25.423557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590687, 31.647217, 25.669048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067269, 0.852235, 0.518816,
		-0.687260, 0.416540, -0.595120,
		-0.723290, -0.316528, 0.613728,
		38.373699, 31.552258, 25.853167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537601, 32.360931, 25.555117>,  <38.880001, 31.773829, 25.423557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537601, 32.360931, 25.555117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.463856, 32.105324, 25.853825>,  <38.419609, 31.951960, 26.033051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.463856, 32.105324, 25.853825>,  <38.537601, 32.360931, 25.555117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463856, 32.105324, 25.853825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162845, 0.729435, 0.664384,
		-0.969274, 0.244097, -0.030422,
		-0.184364, -0.639016, 0.746772,
		38.408546, 31.913620, 26.077856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238140, 32.737793, 26.125189>,  <38.537601, 32.360931, 25.555117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238140, 32.737793, 26.125189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.357849, 32.405323, 26.312632>,  <38.429672, 32.205841, 26.425097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.357849, 32.405323, 26.312632>,  <38.238140, 32.737793, 26.125189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357849, 32.405323, 26.312632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026805, 0.498245, 0.866622,
		-0.953792, -0.246791, 0.171389,
		0.299269, -0.831171, 0.468607,
		38.447628, 32.155972, 26.453215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762695, 32.587349, 26.697170>,  <38.238140, 32.737793, 26.125189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762695, 32.587349, 26.697170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108570, 32.410881, 26.793240>,  <38.316097, 32.305000, 26.850882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108570, 32.410881, 26.793240>,  <37.762695, 32.587349, 26.697170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108570, 32.410881, 26.793240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072794, 0.583149, 0.809097,
		-0.497005, -0.682134, 0.536357,
		0.864689, -0.441169, 0.240172,
		38.367977, 32.278530, 26.865292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691761, 32.352200, 27.395464>,  <37.762695, 32.587349, 26.697170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691761, 32.352200, 27.395464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080307, 32.405254, 27.316618>,  <38.313435, 32.437088, 27.269310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080307, 32.405254, 27.316618>,  <37.691761, 32.352200, 27.395464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080307, 32.405254, 27.316618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133666, 0.380816, 0.914939,
		0.196421, -0.915088, 0.352182,
		0.971366, 0.132639, -0.197116,
		38.371716, 32.445045, 27.257483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848385, 32.273014, 28.069254>,  <37.691761, 32.352200, 27.395464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848385, 32.273014, 28.069254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.180191, 32.431625, 27.911938>,  <38.379272, 32.526791, 27.817549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.180191, 32.431625, 27.911938>,  <37.848385, 32.273014, 28.069254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180191, 32.431625, 27.911938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204881, 0.439047, 0.874792,
		0.519554, -0.806227, 0.282953,
		0.829511, 0.396531, -0.393289,
		38.429043, 32.550583, 27.793951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481812, 32.116829, 28.555855>,  <37.848385, 32.273014, 28.069254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481812, 32.116829, 28.555855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.592384, 32.437748, 28.344233>,  <38.658730, 32.630299, 28.217258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.592384, 32.437748, 28.344233>,  <38.481812, 32.116829, 28.555855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592384, 32.437748, 28.344233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188500, 0.494550, 0.848462,
		0.942366, -0.334269, -0.014524,
		0.276431, 0.802300, -0.529057,
		38.675312, 32.678436, 28.185516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086739, 32.413521, 28.909504>,  <38.481812, 32.116829, 28.555855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086739, 32.413521, 28.909504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.932034, 32.713421, 28.694733>,  <38.839211, 32.893360, 28.565870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.932034, 32.713421, 28.694733>,  <39.086739, 32.413521, 28.909504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932034, 32.713421, 28.694733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221972, 0.640810, 0.734909,
		0.895066, 0.165051, -0.414264,
		-0.386762, 0.749748, -0.536930,
		38.816006, 32.938347, 28.533653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625114, 32.940216, 28.914949>,  <39.086739, 32.413521, 28.909504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625114, 32.940216, 28.914949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.278847, 33.120758, 28.828329>,  <39.071087, 33.229084, 28.776356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.278847, 33.120758, 28.828329>,  <39.625114, 32.940216, 28.914949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278847, 33.120758, 28.828329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223680, 0.735719, 0.639285,
		0.447866, 0.504970, -0.737849,
		-0.865669, 0.451357, -0.216552,
		39.019146, 33.256165, 28.763363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.734497, 31.658209, 23.126057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.385696, 31.558296, 23.294451>,  <36.176418, 31.498348, 23.395487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.385696, 31.558296, 23.294451>,  <36.734497, 31.658209, 23.126057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385696, 31.558296, 23.294451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021478, -0.878713, -0.476868,
		0.489038, -0.406786, 0.771600,
		-0.871998, -0.249779, 0.420987,
		36.124096, 31.483362, 23.420746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804348, 30.915819, 23.192461>,  <36.734497, 31.658209, 23.126057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804348, 30.915819, 23.192461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.413898, 31.002666, 23.189619>,  <36.179630, 31.054775, 23.187914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.413898, 31.002666, 23.189619>,  <36.804348, 30.915819, 23.192461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413898, 31.002666, 23.189619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039167, -0.208060, -0.977332,
		-0.213731, -0.953702, 0.211594,
		-0.976108, 0.217174, -0.007115,
		36.121063, 31.067801, 23.187489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541500, 30.386459, 22.824911>,  <36.804348, 30.915819, 23.192461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541500, 30.386459, 22.824911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.249557, 30.658161, 22.794136>,  <36.074390, 30.821182, 22.775671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.249557, 30.658161, 22.794136>,  <36.541500, 30.386459, 22.824911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249557, 30.658161, 22.794136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021881, -0.135704, -0.990508,
		-0.683247, -0.721248, 0.113907,
		-0.729860, 0.679254, -0.076938,
		36.030598, 30.861937, 22.771055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014507, 30.013649, 22.341068>,  <36.541500, 30.386459, 22.824911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014507, 30.013649, 22.341068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.978294, 30.411509, 22.360968>,  <35.956566, 30.650225, 22.372908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.978294, 30.411509, 22.360968>,  <36.014507, 30.013649, 22.341068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978294, 30.411509, 22.360968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026334, 0.052327, -0.998283,
		-0.995545, -0.089071, -0.030931,
		-0.090537, 0.994650, 0.049748,
		35.951134, 30.709904, 22.375893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492661, 30.101624, 21.814892>,  <36.014507, 30.013649, 22.341068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492661, 30.101624, 21.814892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.665443, 30.455566, 21.884684>,  <35.769112, 30.667933, 21.926559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.665443, 30.455566, 21.884684>,  <35.492661, 30.101624, 21.814892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665443, 30.455566, 21.884684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003821, 0.191661, -0.981454,
		-0.901888, 0.424609, 0.079407,
		0.431954, 0.884858, 0.174479,
		35.795029, 30.721024, 21.937027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208206, 30.546484, 21.283821>,  <35.492661, 30.101624, 21.814892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208206, 30.546484, 21.283821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.529556, 30.742527, 21.419106>,  <35.722366, 30.860153, 21.500277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.529556, 30.742527, 21.419106>,  <35.208206, 30.546484, 21.283821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529556, 30.742527, 21.419106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277071, 0.195083, -0.940837,
		-0.527091, 0.849551, 0.020930,
		0.803372, 0.490107, 0.338212,
		35.770569, 30.889559, 21.520569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122540, 31.227905, 21.038839>,  <35.208206, 30.546484, 21.283821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122540, 31.227905, 21.038839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.510567, 31.149006, 21.095499>,  <35.743382, 31.101665, 21.129494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.510567, 31.149006, 21.095499>,  <35.122540, 31.227905, 21.038839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510567, 31.149006, 21.095499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164250, 0.103310, -0.980994,
		0.178865, 0.974895, 0.132616,
		0.970066, -0.197248, 0.141648,
		35.801586, 31.089832, 21.137993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634899, 31.795401, 20.797117>,  <35.122540, 31.227905, 21.038839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634899, 31.795401, 20.797117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.789902, 31.427561, 20.771269>,  <35.882904, 31.206858, 20.755760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.789902, 31.427561, 20.771269>,  <35.634899, 31.795401, 20.797117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789902, 31.427561, 20.771269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222593, 0.161359, -0.961465,
		0.894589, 0.358191, 0.267225,
		0.387508, -0.919599, -0.064619,
		35.906155, 31.151682, 20.751883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077164, 31.968092, 20.205856>,  <35.634899, 31.795401, 20.797117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077164, 31.968092, 20.205856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.129353, 31.574520, 20.254620>,  <36.160664, 31.338377, 20.283876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.129353, 31.574520, 20.254620>,  <36.077164, 31.968092, 20.205856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129353, 31.574520, 20.254620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237997, -0.088281, -0.967246,
		0.962463, 0.155208, 0.222654,
		0.130468, -0.983929, 0.121906,
		36.168491, 31.279341, 20.291191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661785, 31.751240, 19.757702>,  <36.077164, 31.968092, 20.205856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661785, 31.751240, 19.757702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.488659, 31.396338, 19.821510>,  <36.384781, 31.183397, 19.859795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.488659, 31.396338, 19.821510>,  <36.661785, 31.751240, 19.757702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488659, 31.396338, 19.821510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162346, -0.250777, -0.954334,
		0.886742, -0.387156, 0.252584,
		-0.432819, -0.887255, 0.159522,
		36.358814, 31.130161, 19.869368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132710, 31.256926, 19.464607>,  <36.661785, 31.751240, 19.757702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132710, 31.256926, 19.464607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.770996, 31.086920, 19.480806>,  <36.553970, 30.984917, 19.490526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.770996, 31.086920, 19.480806>,  <37.132710, 31.256926, 19.464607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770996, 31.086920, 19.480806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125907, -0.356115, -0.925921,
		0.407950, -0.832194, 0.375541,
		-0.904281, -0.425012, 0.040498,
		36.499710, 30.959415, 19.492956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215298, 30.549685, 19.281595>,  <37.132710, 31.256926, 19.464607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215298, 30.549685, 19.281595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.841522, 30.664192, 19.196867>,  <36.617256, 30.732897, 19.146030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.841522, 30.664192, 19.196867>,  <37.215298, 30.549685, 19.281595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841522, 30.664192, 19.196867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051111, -0.480841, -0.875317,
		-0.352427, -0.828759, 0.434687,
		-0.934443, 0.286268, -0.211820,
		36.561188, 30.750072, 19.133322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735195, 29.922756, 19.199627>,  <37.215298, 30.549685, 19.281595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735195, 29.922756, 19.199627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.647972, 30.251249, 18.988714>,  <36.595638, 30.448345, 18.862167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.647972, 30.251249, 18.988714>,  <36.735195, 29.922756, 19.199627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647972, 30.251249, 18.988714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231886, -0.481210, -0.845379,
		-0.947987, -0.306612, -0.085501,
		-0.218059, 0.821234, -0.527280,
		36.582554, 30.497620, 18.830530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947899, 29.225605, 19.287836>,  <36.735195, 29.922756, 19.199627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947899, 29.225605, 19.287836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.751881, 28.879698, 19.331713>,  <36.634270, 28.672153, 19.358040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.751881, 28.879698, 19.331713>,  <36.947899, 29.225605, 19.287836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751881, 28.879698, 19.331713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343071, -0.075650, 0.936258,
		-0.801348, 0.496441, 0.333749,
		-0.490045, -0.864768, 0.109693,
		36.604866, 28.620268, 19.364620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603249, 29.281580, 19.883221>,  <36.947899, 29.225605, 19.287836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603249, 29.281580, 19.883221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.692230, 28.900017, 19.802645>,  <36.745621, 28.671080, 19.754299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.692230, 28.900017, 19.802645>,  <36.603249, 29.281580, 19.883221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692230, 28.900017, 19.802645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290268, -0.132445, 0.947736,
		-0.930730, -0.269299, 0.247425,
		0.222454, -0.953906, -0.201440,
		36.758965, 28.613846, 19.742212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359818, 28.985634, 20.415264>,  <36.603249, 29.281580, 19.883221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359818, 28.985634, 20.415264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.639313, 28.747501, 20.256596>,  <36.807011, 28.604622, 20.161394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.639313, 28.747501, 20.256596>,  <36.359818, 28.985634, 20.415264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639313, 28.747501, 20.256596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360873, -0.185443, 0.913992,
		-0.617688, -0.781787, 0.085264,
		0.698736, -0.595332, -0.396672,
		36.848934, 28.568903, 20.137594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314430, 28.410872, 20.869173>,  <36.359818, 28.985634, 20.415264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314430, 28.410872, 20.869173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.659981, 28.383337, 20.669582>,  <36.867313, 28.366816, 20.549828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.659981, 28.383337, 20.669582>,  <36.314430, 28.410872, 20.869173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659981, 28.383337, 20.669582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430121, -0.414703, 0.801883,
		-0.262127, -0.907349, -0.328644,
		0.863878, -0.068838, -0.498975,
		36.919144, 28.362686, 20.519890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452942, 27.882303, 21.115416>,  <36.314430, 28.410872, 20.869173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452942, 27.882303, 21.115416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.784538, 28.057772, 20.976650>,  <36.983494, 28.163052, 20.893391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.784538, 28.057772, 20.976650>,  <36.452942, 27.882303, 21.115416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784538, 28.057772, 20.976650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462240, -0.188240, 0.866545,
		0.314825, -0.878711, -0.358819,
		0.828987, 0.438671, -0.346913,
		37.033234, 28.189373, 20.872576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069427, 27.362886, 21.254650>,  <36.452942, 27.882303, 21.115416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069427, 27.362886, 21.254650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.206875, 27.735706, 21.208679>,  <37.289345, 27.959398, 21.181097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.206875, 27.735706, 21.208679>,  <37.069427, 27.362886, 21.254650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206875, 27.735706, 21.208679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387041, -0.029050, 0.921605,
		0.855643, -0.361163, -0.370723,
		0.343619, 0.932050, -0.114929,
		37.309959, 28.015322, 21.174200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691963, 27.292894, 21.805016>,  <37.069427, 27.362886, 21.254650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691963, 27.292894, 21.805016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.676048, 27.684082, 21.723051>,  <37.666500, 27.918795, 21.673872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.676048, 27.684082, 21.723051>,  <37.691963, 27.292894, 21.805016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676048, 27.684082, 21.723051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407652, 0.203120, 0.890260,
		0.912270, -0.048111, -0.406754,
		-0.039788, 0.977971, -0.204913,
		37.664112, 27.977474, 21.661577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422478, 27.585247, 21.817379>,  <37.691963, 27.292894, 21.805016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422478, 27.585247, 21.817379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.142288, 27.865610, 21.871140>,  <37.974174, 28.033827, 21.903397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.142288, 27.865610, 21.871140>,  <38.422478, 27.585247, 21.817379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142288, 27.865610, 21.871140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447138, 0.284237, 0.848102,
		0.556238, 0.654171, -0.512503,
		-0.700476, 0.700906, 0.134401,
		37.932144, 28.075882, 21.911461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754601, 28.282471, 22.062954>,  <38.422478, 27.585247, 21.817379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754601, 28.282471, 22.062954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.381229, 28.364676, 22.180588>,  <38.157207, 28.414000, 22.251167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.381229, 28.364676, 22.180588>,  <38.754601, 28.282471, 22.062954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381229, 28.364676, 22.180588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344813, 0.287410, 0.893588,
		0.099122, 0.935500, -0.339139,
		-0.933423, 0.205514, 0.294083,
		38.101204, 28.426331, 22.268812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772789, 29.053318, 22.351267>,  <38.754601, 28.282471, 22.062954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772789, 29.053318, 22.351267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.446301, 28.871449, 22.493849>,  <38.250408, 28.762327, 22.579397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.446301, 28.871449, 22.493849>,  <38.772789, 29.053318, 22.351267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446301, 28.871449, 22.493849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164068, 0.409159, 0.897591,
		-0.553958, 0.791113, -0.259365,
		-0.816218, -0.454675, 0.356454,
		38.201435, 28.735046, 22.600784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441803, 29.579739, 22.716064>,  <38.772789, 29.053318, 22.351267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441803, 29.579739, 22.716064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.245739, 29.254593, 22.841917>,  <38.128101, 29.059505, 22.917429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.245739, 29.254593, 22.841917>,  <38.441803, 29.579739, 22.716064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245739, 29.254593, 22.841917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011772, 0.354763, 0.934882,
		-0.871554, 0.461943, -0.164321,
		-0.490158, -0.812866, 0.314633,
		38.098690, 29.010733, 22.936308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782173, 29.856495, 22.936907>,  <38.441803, 29.579739, 22.716064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782173, 29.856495, 22.936907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.834122, 29.505852, 23.122244>,  <37.865292, 29.295465, 23.233446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.834122, 29.505852, 23.122244>,  <37.782173, 29.856495, 22.936907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834122, 29.505852, 23.122244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229054, 0.428137, 0.874204,
		-0.964711, -0.219667, -0.145187,
		0.129874, -0.876610, 0.463344,
		37.873085, 29.242868, 23.261248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190067, 29.772488, 23.332186>,  <37.782173, 29.856495, 22.936907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190067, 29.772488, 23.332186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.474228, 29.548689, 23.502972>,  <37.644722, 29.414410, 23.605444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.474228, 29.548689, 23.502972>,  <37.190067, 29.772488, 23.332186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474228, 29.548689, 23.502972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111123, 0.509879, 0.853039,
		-0.694973, -0.653442, 0.300044,
		0.710397, -0.559497, 0.426965,
		37.687347, 29.380840, 23.631062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938572, 29.582495, 23.924429>,  <37.190067, 29.772488, 23.332186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938572, 29.582495, 23.924429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.332226, 29.534279, 23.976509>,  <37.568417, 29.505350, 24.007757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.332226, 29.534279, 23.976509>,  <36.938572, 29.582495, 23.924429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332226, 29.534279, 23.976509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053452, 0.498311, 0.865349,
		-0.169191, -0.858578, 0.483961,
		0.984132, -0.120540, 0.130202,
		37.627464, 29.498117, 24.015570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081715, 29.240290, 24.631577>,  <36.938572, 29.582495, 23.924429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081715, 29.240290, 24.631577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.402409, 29.449680, 24.516203>,  <37.594826, 29.575315, 24.446980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.402409, 29.449680, 24.516203>,  <37.081715, 29.240290, 24.631577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402409, 29.449680, 24.516203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027683, 0.514593, 0.856988,
		0.597038, -0.679093, 0.427059,
		0.801735, 0.523476, -0.288432,
		37.642929, 29.606724, 24.429674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072887, 28.488373, 24.694332>,  <37.081715, 29.240290, 24.631577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072887, 28.488373, 24.694332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.853092, 28.297340, 24.968552>,  <36.721214, 28.182720, 25.133083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.853092, 28.297340, 24.968552>,  <37.072887, 28.488373, 24.694332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853092, 28.297340, 24.968552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119094, -0.767376, -0.630041,
		0.826972, -0.427843, 0.364785,
		-0.549486, -0.477582, 0.685551,
		36.688248, 28.154066, 25.174217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388550, 27.777079, 24.723568>,  <37.072887, 28.488373, 24.694332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388550, 27.777079, 24.723568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.021255, 27.766500, 24.881624>,  <36.800877, 27.760155, 24.976458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.021255, 27.766500, 24.881624>,  <37.388550, 27.777079, 24.723568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021255, 27.766500, 24.881624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268964, -0.690711, -0.671250,
		0.290679, -0.722647, 0.627126,
		-0.918239, -0.026444, 0.395141,
		36.745785, 27.758568, 25.000166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190395, 27.022898, 24.907036>,  <37.388550, 27.777079, 24.723568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190395, 27.022898, 24.907036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.872860, 27.251978, 24.825222>,  <36.682339, 27.389425, 24.776134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.872860, 27.251978, 24.825222>,  <37.190395, 27.022898, 24.907036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872860, 27.251978, 24.825222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330054, -0.688233, -0.646065,
		-0.510768, -0.445365, 0.735368,
		-0.793839, 0.572701, -0.204532,
		36.634708, 27.423788, 24.763863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586151, 26.536674, 24.804575>,  <37.190395, 27.022898, 24.907036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586151, 26.536674, 24.804575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.437172, 26.869371, 24.639900>,  <36.347786, 27.068991, 24.541096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.437172, 26.869371, 24.639900>,  <36.586151, 26.536674, 24.804575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437172, 26.869371, 24.639900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405314, -0.544840, -0.734077,
		-0.834868, -0.106541, 0.540041,
		-0.372446, 0.831744, -0.411687,
		36.325439, 27.118895, 24.516394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041065, 26.313103, 24.329300>,  <36.586151, 26.536674, 24.804575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041065, 26.313103, 24.329300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.064041, 26.691055, 24.200365>,  <36.077827, 26.917828, 24.123005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.064041, 26.691055, 24.200365>,  <36.041065, 26.313103, 24.329300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064041, 26.691055, 24.200365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401211, -0.273801, -0.874107,
		-0.914183, 0.179537, 0.363369,
		0.057444, 0.944881, -0.322337,
		36.081276, 26.974520, 24.103664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346931, 26.593531, 24.130304>,  <36.041065, 26.313103, 24.329300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346931, 26.593531, 24.130304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.639603, 26.776653, 23.928288>,  <35.815205, 26.886526, 23.807077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.639603, 26.776653, 23.928288>,  <35.346931, 26.593531, 24.130304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639603, 26.776653, 23.928288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406063, -0.302373, -0.862371,
		-0.547508, 0.836053, -0.035341,
		0.731674, 0.457805, -0.505042,
		35.859104, 26.913994, 23.776775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974663, 26.950579, 23.679920>,  <35.346931, 26.593531, 24.130304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974663, 26.950579, 23.679920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.326862, 26.944510, 23.490396>,  <35.538181, 26.940868, 23.376682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.326862, 26.944510, 23.490396>,  <34.974663, 26.950579, 23.679920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326862, 26.944510, 23.490396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464238, -0.229936, -0.855344,
		-0.095967, 0.973087, -0.209502,
		0.880496, -0.015174, -0.473810,
		35.591011, 26.939957, 23.348253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601624, 27.563133, 23.698444>,  <34.974663, 26.950579, 23.679920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601624, 27.563133, 23.698444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.206638, 27.626274, 23.697842>,  <33.969646, 27.664158, 23.697479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.206638, 27.626274, 23.697842>,  <34.601624, 27.563133, 23.698444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206638, 27.626274, 23.697842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063604, 0.406593, 0.911393,
		0.144477, 0.899870, -0.411535,
		-0.987462, 0.157850, -0.001508,
		33.910400, 27.673630, 23.697390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521023, 28.239180, 23.794083>,  <34.601624, 27.563133, 23.698444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521023, 28.239180, 23.794083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.174572, 28.090431, 23.927670>,  <33.966702, 28.001183, 24.007822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.174572, 28.090431, 23.927670>,  <34.521023, 28.239180, 23.794083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174572, 28.090431, 23.927670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122438, 0.489954, 0.863107,
		-0.484594, 0.788451, -0.378831,
		-0.866128, -0.371873, 0.333966,
		33.914734, 27.978868, 24.027859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145237, 28.741917, 24.107235>,  <34.521023, 28.239180, 23.794083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145237, 28.741917, 24.107235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.966312, 28.424463, 24.272188>,  <33.858959, 28.233992, 24.371161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.966312, 28.424463, 24.272188>,  <34.145237, 28.741917, 24.107235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966312, 28.424463, 24.272188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007768, 0.457618, 0.889115,
		-0.894344, 0.400916, -0.198534,
		-0.447313, -0.793632, 0.412382,
		33.832119, 28.186373, 24.395903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639576, 29.042152, 24.504406>,  <34.145237, 28.741917, 24.107235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639576, 29.042152, 24.504406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.699352, 28.675879, 24.653641>,  <33.735218, 28.456114, 24.743181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.699352, 28.675879, 24.653641>,  <33.639576, 29.042152, 24.504406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699352, 28.675879, 24.653641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100879, 0.361235, 0.927002,
		-0.983612, -0.176165, -0.038391,
		0.149437, -0.915683, 0.373087,
		33.744183, 28.401175, 24.765566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171223, 29.031357, 25.059818>,  <33.639576, 29.042152, 24.504406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171223, 29.031357, 25.059818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.445766, 28.746038, 25.116550>,  <33.610493, 28.574848, 25.150589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.445766, 28.746038, 25.116550>,  <33.171223, 29.031357, 25.059818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445766, 28.746038, 25.116550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036149, 0.228240, 0.972934,
		-0.726360, -0.662659, 0.182440,
		0.686363, -0.713295, 0.141830,
		33.651676, 28.532049, 25.159100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944538, 28.661036, 25.653889>,  <33.171223, 29.031357, 25.059818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944538, 28.661036, 25.653889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.334717, 28.576408, 25.629412>,  <33.568825, 28.525633, 25.614725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.334717, 28.576408, 25.629412>,  <32.944538, 28.661036, 25.653889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334717, 28.576408, 25.629412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097673, 0.166533, 0.981186,
		-0.197395, -0.963071, 0.183109,
		0.975446, -0.211566, -0.061193,
		33.627350, 28.512939, 25.611053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061203, 28.362101, 26.244698>,  <32.944538, 28.661036, 25.653889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061203, 28.362101, 26.244698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.428333, 28.468517, 26.126842>,  <33.648613, 28.532368, 26.056129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.428333, 28.468517, 26.126842>,  <33.061203, 28.362101, 26.244698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428333, 28.468517, 26.126842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194295, 0.346175, 0.917830,
		0.346175, -0.899658, 0.266040,
		-0.917830, -0.266040, 0.294636,
		33.703682, 28.548328, 26.038452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.254971, 31.523176, 17.661045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.608837, 31.484642, 17.843510>,  <33.821159, 31.461521, 17.952988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.608837, 31.484642, 17.843510>,  <33.254971, 31.523176, 17.661045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608837, 31.484642, 17.843510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409652, 0.306521, 0.859203,
		-0.222594, -0.946977, 0.231706,
		0.884668, -0.096334, 0.456160,
		33.874237, 31.455742, 17.980358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079933, 31.277451, 18.392494>,  <33.254971, 31.523176, 17.661045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079933, 31.277451, 18.392494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.446537, 31.437449, 18.394402>,  <33.666500, 31.533447, 18.395546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.446537, 31.437449, 18.394402>,  <33.079933, 31.277451, 18.392494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446537, 31.437449, 18.394402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180721, 0.403388, 0.897005,
		0.356871, -0.822973, 0.441995,
		0.916506, 0.399993, 0.004771,
		33.721489, 31.557447, 18.395832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332409, 31.000216, 19.022924>,  <33.079933, 31.277451, 18.392494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332409, 31.000216, 19.022924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.553978, 31.325300, 18.950626>,  <33.686920, 31.520351, 18.907248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.553978, 31.325300, 18.950626>,  <33.332409, 31.000216, 19.022924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553978, 31.325300, 18.950626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083606, 0.270294, 0.959141,
		0.828359, -0.516179, 0.217670,
		0.553923, 0.812712, -0.180745,
		33.720154, 31.569113, 18.896402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840363, 31.065042, 19.534262>,  <33.332409, 31.000216, 19.022924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840363, 31.065042, 19.534262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.803532, 31.434904, 19.386457>,  <33.781433, 31.656820, 19.297775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.803532, 31.434904, 19.386457>,  <33.840363, 31.065042, 19.534262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803532, 31.434904, 19.386457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017735, 0.372550, 0.927843,
		0.995594, 0.078877, -0.050701,
		-0.092074, 0.924654, -0.369509,
		33.775909, 31.712299, 19.275604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467987, 31.430105, 19.832251>,  <33.840363, 31.065042, 19.534262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467987, 31.430105, 19.832251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.173401, 31.679062, 19.726227>,  <33.996651, 31.828436, 19.662613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.173401, 31.679062, 19.726227>,  <34.467987, 31.430105, 19.832251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173401, 31.679062, 19.726227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069925, 0.459761, 0.885286,
		0.672856, 0.633444, -0.382116,
		-0.736461, 0.622389, -0.265059,
		33.952461, 31.865778, 19.646709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698811, 32.025703, 20.136602>,  <34.467987, 31.430105, 19.832251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698811, 32.025703, 20.136602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.316868, 32.116291, 20.059706>,  <34.087700, 32.170643, 20.013569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.316868, 32.116291, 20.059706>,  <34.698811, 32.025703, 20.136602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316868, 32.116291, 20.059706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048246, 0.520324, 0.852605,
		0.293115, 0.823393, -0.485910,
		-0.954859, 0.226468, -0.192240,
		34.030411, 32.184231, 20.002033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682865, 32.678562, 20.167103>,  <34.698811, 32.025703, 20.136602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682865, 32.678562, 20.167103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.310745, 32.542637, 20.222332>,  <34.087471, 32.461082, 20.255470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.310745, 32.542637, 20.222332>,  <34.682865, 32.678562, 20.167103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310745, 32.542637, 20.222332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032300, 0.450865, 0.892007,
		-0.365369, 0.825377, -0.430417,
		-0.930302, -0.339815, 0.138072,
		34.031654, 32.440693, 20.263754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230827, 33.286167, 20.280512>,  <34.682865, 32.678562, 20.167103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230827, 33.286167, 20.280512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.027317, 32.969067, 20.414793>,  <33.905212, 32.778809, 20.495361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.027317, 32.969067, 20.414793>,  <34.230827, 33.286167, 20.280512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027317, 32.969067, 20.414793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145931, 0.463717, 0.873882,
		-0.848441, 0.395619, -0.351614,
		-0.508774, -0.792749, 0.335704,
		33.874683, 32.731243, 20.515505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698822, 33.627430, 20.604168>,  <34.230827, 33.286167, 20.280512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698822, 33.627430, 20.604168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.692371, 33.267197, 20.777924>,  <33.688499, 33.051056, 20.882177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.692371, 33.267197, 20.777924>,  <33.698822, 33.627430, 20.604168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692371, 33.267197, 20.777924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070602, 0.434388, 0.897955,
		-0.997374, -0.016184, -0.070590,
		-0.016131, -0.900581, 0.434390,
		33.687531, 32.997021, 20.908241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023327, 33.592979, 20.843357>,  <33.698822, 33.627430, 20.604168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023327, 33.592979, 20.843357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.264606, 33.349903, 21.049995>,  <33.409374, 33.204060, 21.173979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.264606, 33.349903, 21.049995>,  <33.023327, 33.592979, 20.843357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264606, 33.349903, 21.049995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310016, 0.418129, 0.853849,
		-0.734877, -0.675191, 0.063820,
		0.603196, -0.607689, 0.516594,
		33.445564, 33.167595, 21.204973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594582, 33.252560, 21.348598>,  <33.023327, 33.592979, 20.843357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594582, 33.252560, 21.348598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.978439, 33.239296, 21.460295>,  <33.208755, 33.231339, 21.527313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.978439, 33.239296, 21.460295>,  <32.594582, 33.252560, 21.348598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978439, 33.239296, 21.460295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242419, 0.405678, 0.881283,
		-0.142506, -0.913415, 0.381269,
		0.959648, -0.033162, 0.279240,
		33.266335, 33.229347, 21.544067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440777, 33.026989, 22.132318>,  <32.594582, 33.252560, 21.348598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440777, 33.026989, 22.132318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.785599, 33.224056, 22.084747>,  <32.992493, 33.342297, 22.056204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.785599, 33.224056, 22.084747>,  <32.440777, 33.026989, 22.132318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785599, 33.224056, 22.084747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097925, 0.392143, 0.914677,
		0.497270, -0.776853, 0.386293,
		0.862051, 0.492670, -0.118928,
		33.044216, 33.371857, 22.049068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358452, 32.399734, 22.681770>,  <32.440777, 33.026989, 22.132318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358452, 32.399734, 22.681770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.002155, 32.296234, 22.831234>,  <31.788376, 32.234135, 22.920912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.002155, 32.296234, 22.831234>,  <32.358452, 32.399734, 22.681770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002155, 32.296234, 22.831234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098770, -0.692284, -0.714833,
		0.443641, -0.673641, 0.591093,
		-0.890745, -0.258747, 0.373661,
		31.734932, 32.218609, 22.943333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411083, 31.715246, 22.655510>,  <32.358452, 32.399734, 22.681770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411083, 31.715246, 22.655510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.013737, 31.747309, 22.688503>,  <31.775330, 31.766546, 22.708300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.013737, 31.747309, 22.688503>,  <32.411083, 31.715246, 22.655510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013737, 31.747309, 22.688503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113921, -0.587031, -0.801509,
		-0.015824, -0.805587, 0.592267,
		-0.993364, 0.080155, 0.082484,
		31.715727, 31.771355, 22.713249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055756, 31.058342, 22.822968>,  <32.411083, 31.715246, 22.655510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055756, 31.058342, 22.822968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.784695, 31.299946, 22.655176>,  <31.622059, 31.444908, 22.554501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.784695, 31.299946, 22.655176>,  <32.055756, 31.058342, 22.822968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784695, 31.299946, 22.655176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100008, -0.640814, -0.761154,
		-0.728553, -0.473845, 0.494653,
		-0.677649, 0.604010, -0.419479,
		31.581400, 31.481148, 22.529333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553844, 30.673368, 22.749424>,  <32.055756, 31.058342, 22.822968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553844, 30.673368, 22.749424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.461439, 30.972471, 22.500427>,  <31.405996, 31.151932, 22.351030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.461439, 30.972471, 22.500427>,  <31.553844, 30.673368, 22.749424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461439, 30.972471, 22.500427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177345, -0.661440, -0.728728,
		-0.956651, -0.057952, 0.285413,
		-0.231015, 0.747755, -0.622490,
		31.392134, 31.196798, 22.313681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944487, 30.490229, 22.449078>,  <31.553844, 30.673368, 22.749424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944487, 30.490229, 22.449078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.117237, 30.758610, 22.207977>,  <31.220886, 30.919638, 22.063316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.117237, 30.758610, 22.207977>,  <30.944487, 30.490229, 22.449078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117237, 30.758610, 22.207977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086988, -0.634185, -0.768272,
		-0.897729, 0.384229, -0.215523,
		0.431874, 0.670952, -0.602750,
		31.246799, 30.959896, 22.027153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637117, 30.386162, 21.866663>,  <30.944487, 30.490229, 22.449078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637117, 30.386162, 21.866663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.978437, 30.564503, 21.758518>,  <31.183229, 30.671507, 21.693632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.978437, 30.564503, 21.758518>,  <30.637117, 30.386162, 21.866663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978437, 30.564503, 21.758518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041076, -0.574378, -0.817559,
		-0.519799, 0.686518, -0.508431,
		0.853301, 0.445851, -0.270361,
		31.234428, 30.698257, 21.677410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591642, 30.469414, 21.159639>,  <30.637117, 30.386162, 21.866663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591642, 30.469414, 21.159639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.985256, 30.498821, 21.224466>,  <31.221424, 30.516466, 21.263363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.985256, 30.498821, 21.224466>,  <30.591642, 30.469414, 21.159639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985256, 30.498821, 21.224466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169331, -0.667021, -0.725541,
		0.054761, 0.741402, -0.668823,
		0.984037, 0.073521, 0.162069,
		31.280468, 30.520878, 21.273087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860855, 30.573982, 20.489075>,  <30.591642, 30.469414, 21.159639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860855, 30.573982, 20.489075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.185146, 30.465776, 20.696747>,  <31.379721, 30.400854, 20.821350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.185146, 30.465776, 20.696747>,  <30.860855, 30.573982, 20.489075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185146, 30.465776, 20.696747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148556, -0.762749, -0.629400,
		0.566263, 0.587399, -0.578194,
		0.810726, -0.270512, 0.519179,
		31.428364, 30.384623, 20.852501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478477, 30.626472, 20.027849>,  <30.860855, 30.573982, 20.489075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478477, 30.626472, 20.027849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.545521, 30.347425, 20.306484>,  <31.585747, 30.179996, 20.473665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.545521, 30.347425, 20.306484>,  <31.478477, 30.626472, 20.027849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545521, 30.347425, 20.306484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311224, -0.633007, -0.708831,
		0.935439, 0.335602, 0.111017,
		0.167611, -0.697620, 0.696587,
		31.595804, 30.138140, 20.515461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033958, 30.368612, 19.763243>,  <31.478477, 30.626472, 20.027849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033958, 30.368612, 19.763243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.916233, 30.108656, 20.043535>,  <31.845598, 29.952682, 20.211710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.916233, 30.108656, 20.043535>,  <32.033958, 30.368612, 19.763243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916233, 30.108656, 20.043535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147051, -0.755268, -0.638707,
		0.944329, -0.084935, 0.317851,
		-0.294311, -0.649889, 0.700731,
		31.827940, 29.913689, 20.253756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528660, 29.761503, 19.698154>,  <32.033958, 30.368612, 19.763243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528660, 29.761503, 19.698154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.208012, 29.619289, 19.890408>,  <32.015625, 29.533960, 20.005758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.208012, 29.619289, 19.890408>,  <32.528660, 29.761503, 19.698154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208012, 29.619289, 19.890408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064351, -0.850589, -0.521878,
		0.594366, -0.387416, 0.704725,
		-0.801616, -0.355536, 0.480631,
		31.967527, 29.512629, 20.034597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586014, 29.000589, 19.846529>,  <32.528660, 29.761503, 19.698154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586014, 29.000589, 19.846529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.188744, 29.022177, 19.887869>,  <31.950380, 29.035130, 19.912674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.188744, 29.022177, 19.887869>,  <32.586014, 29.000589, 19.846529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188744, 29.022177, 19.887869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094794, -0.889849, -0.446299,
		0.067883, -0.453052, 0.888896,
		-0.993180, 0.053966, 0.103352,
		31.890789, 29.038366, 19.918875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454655, 28.405083, 19.967960>,  <32.586014, 29.000589, 19.846529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454655, 28.405083, 19.967960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.113598, 28.568338, 19.837465>,  <31.908964, 28.666292, 19.759169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.113598, 28.568338, 19.837465>,  <32.454655, 28.405083, 19.967960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113598, 28.568338, 19.837465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219990, -0.846750, -0.484375,
		-0.473934, -0.341228, 0.811758,
		-0.852638, 0.408140, -0.326237,
		31.857807, 28.690781, 19.739594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100811, 28.467606, 20.314426>,  <32.454655, 28.405083, 19.967960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100811, 28.467606, 20.314426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.126011, 28.074272, 20.382647>,  <33.141132, 27.838272, 20.423578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.126011, 28.074272, 20.382647>,  <33.100811, 28.467606, 20.314426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126011, 28.074272, 20.382647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040074, 0.168258, 0.984928,
		-0.997208, -0.068887, -0.028806,
		0.063002, -0.983333, 0.170549,
		33.144913, 27.779272, 20.433811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084461, 28.512533, 21.036444>,  <33.100811, 28.467606, 20.314426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084461, 28.512533, 21.036444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.148335, 28.120670, 20.987818>,  <33.186657, 27.885553, 20.958643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.148335, 28.120670, 20.987818>,  <33.084461, 28.512533, 21.036444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148335, 28.120670, 20.987818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016620, -0.125795, 0.991917,
		-0.987029, -0.156370, -0.036369,
		0.159681, -0.979655, -0.121564,
		33.196239, 27.826775, 20.951349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580791, 28.240314, 21.398558>,  <33.084461, 28.512533, 21.036444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580791, 28.240314, 21.398558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.820404, 27.923811, 21.349451>,  <32.964172, 27.733908, 21.319986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.820404, 27.923811, 21.349451>,  <32.580791, 28.240314, 21.398558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820404, 27.923811, 21.349451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030241, -0.175566, 0.984003,
		-0.800156, -0.585734, -0.129098,
		0.599029, -0.791260, -0.122767,
		33.000114, 27.686434, 21.312620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277531, 27.646425, 21.746819>,  <32.580791, 28.240314, 21.398558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277531, 27.646425, 21.746819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.668335, 27.564278, 21.723944>,  <32.902817, 27.514988, 21.710218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.668335, 27.564278, 21.723944>,  <32.277531, 27.646425, 21.746819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668335, 27.564278, 21.723944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021003, -0.174222, 0.984482,
		-0.212154, -0.963051, -0.165903,
		0.977011, -0.205377, -0.057189,
		32.961437, 27.502666, 21.706787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428486, 27.084576, 22.203167>,  <32.277531, 27.646425, 21.746819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428486, 27.084576, 22.203167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.796478, 27.234501, 22.157295>,  <33.017273, 27.324455, 22.129772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.796478, 27.234501, 22.157295>,  <32.428486, 27.084576, 22.203167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796478, 27.234501, 22.157295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157520, -0.085625, 0.983797,
		0.358921, -0.923138, -0.137814,
		0.919980, 0.374813, -0.114680,
		33.072472, 27.346945, 22.122890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988762, 26.659958, 22.625145>,  <32.428486, 27.084576, 22.203167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988762, 26.659958, 22.625145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.160675, 27.019762, 22.593725>,  <33.263821, 27.235645, 22.574873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.160675, 27.019762, 22.593725>,  <32.988762, 26.659958, 22.625145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160675, 27.019762, 22.593725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376513, -0.099465, 0.921056,
		0.820687, -0.425426, -0.381426,
		0.429780, 0.899511, -0.078549,
		33.289608, 27.289616, 22.570160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583027, 26.631277, 23.119236>,  <32.988762, 26.659958, 22.625145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583027, 26.631277, 23.119236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.536480, 27.022678, 23.051136>,  <33.508553, 27.257519, 23.010277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.536480, 27.022678, 23.051136>,  <33.583027, 26.631277, 23.119236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536480, 27.022678, 23.051136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299012, 0.197979, 0.933486,
		0.947127, 0.057725, -0.315624,
		-0.116372, 0.978505, -0.170251,
		33.501568, 27.316231, 23.000061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193001, 26.979918, 23.346735>,  <33.583027, 26.631277, 23.119236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193001, 26.979918, 23.346735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.909660, 27.262146, 23.354887>,  <33.739658, 27.431482, 23.359777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.909660, 27.262146, 23.354887>,  <34.193001, 26.979918, 23.346735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909660, 27.262146, 23.354887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231070, 0.204507, 0.951201,
		0.666970, 0.678490, -0.307899,
		-0.708348, 0.705569, 0.020379,
		33.697155, 27.473816, 23.361000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834412, 27.320351, 23.015888>,  <34.193001, 26.979918, 23.346735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834412, 27.320351, 23.015888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.164448, 27.098457, 22.972986>,  <35.362469, 26.965322, 22.947245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.164448, 27.098457, 22.972986>,  <34.834412, 27.320351, 23.015888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164448, 27.098457, 22.972986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414270, -0.464886, -0.782471,
		0.384201, 0.690039, -0.613380,
		0.825088, -0.554731, -0.107253,
		35.411976, 26.932037, 22.940811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116776, 27.441387, 22.333117>,  <34.834412, 27.320351, 23.015888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116776, 27.441387, 22.333117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.334755, 27.115522, 22.412470>,  <35.465542, 26.920004, 22.460081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.334755, 27.115522, 22.412470>,  <35.116776, 27.441387, 22.333117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334755, 27.115522, 22.412470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050860, -0.268284, -0.961996,
		0.836924, 0.514151, -0.187636,
		0.544951, -0.814661, 0.198384,
		35.498241, 26.871124, 22.471985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793552, 27.357944, 21.829130>,  <35.116776, 27.441387, 22.333117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793552, 27.357944, 21.829130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.721958, 26.981640, 21.944321>,  <35.679001, 26.755857, 22.013435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.721958, 26.981640, 21.944321>,  <35.793552, 27.357944, 21.829130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721958, 26.981640, 21.944321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026961, -0.287905, -0.957280,
		0.983483, -0.179102, 0.026166,
		-0.178984, -0.940762, 0.287978,
		35.668262, 26.699411, 22.030714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341785, 26.909168, 21.496893>,  <35.793552, 27.357944, 21.829130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341785, 26.909168, 21.496893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.023350, 26.697906, 21.615082>,  <35.832291, 26.571150, 21.685995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.023350, 26.697906, 21.615082>,  <36.341785, 26.909168, 21.496893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023350, 26.697906, 21.615082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082016, -0.389574, -0.917336,
		0.599601, -0.754511, 0.266817,
		-0.796085, -0.528152, 0.295471,
		35.784523, 26.539461, 21.703724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460140, 26.253702, 21.309450>,  <36.341785, 26.909168, 21.496893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460140, 26.253702, 21.309450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.062481, 26.285961, 21.338202>,  <35.823887, 26.305317, 21.355452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.062481, 26.285961, 21.338202>,  <36.460140, 26.253702, 21.309450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062481, 26.285961, 21.338202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100560, -0.447714, -0.888504,
		-0.039475, -0.890533, 0.453203,
		-0.994148, 0.080648, 0.071879,
		35.764236, 26.310156, 21.359764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313530, 25.751217, 20.946136>,  <36.460140, 26.253702, 21.309450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313530, 25.751217, 20.946136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.979733, 25.969309, 20.914263>,  <35.779453, 26.100164, 20.895138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.979733, 25.969309, 20.914263>,  <36.313530, 25.751217, 20.946136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979733, 25.969309, 20.914263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102944, -0.296333, -0.949521,
		-0.541321, -0.784163, 0.303415,
		-0.834491, 0.545230, -0.079686,
		35.729385, 26.132877, 20.890356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903255, 25.398657, 20.538012>,  <36.313530, 25.751217, 20.946136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903255, 25.398657, 20.538012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.716713, 25.752493, 20.536469>,  <35.604790, 25.964794, 20.535543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.716713, 25.752493, 20.536469>,  <35.903255, 25.398657, 20.538012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716713, 25.752493, 20.536469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284787, -0.154263, -0.946097,
		-0.837504, -0.440115, 0.323861,
		-0.466351, 0.884591, -0.003857,
		35.576809, 26.017870, 20.535311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217213, 25.232847, 20.285404>,  <35.903255, 25.398657, 20.538012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217213, 25.232847, 20.285404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.283550, 25.622122, 20.221651>,  <35.323353, 25.855686, 20.183399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.283550, 25.622122, 20.221651>,  <35.217213, 25.232847, 20.285404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283550, 25.622122, 20.221651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268009, -0.111058, -0.956994,
		-0.949035, 0.201427, 0.242404,
		0.165844, 0.973187, -0.159382,
		35.333302, 25.914078, 20.173836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748234, 25.414972, 19.900890>,  <35.217213, 25.232847, 20.285404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748234, 25.414972, 19.900890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.010174, 25.713058, 19.850580>,  <35.167339, 25.891911, 19.820395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.010174, 25.713058, 19.850580>,  <34.748234, 25.414972, 19.900890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010174, 25.713058, 19.850580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085961, -0.091901, -0.992051,
		-0.750852, 0.660459, 0.003878,
		0.654853, 0.745217, -0.125777,
		35.206631, 25.936623, 19.812847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.715225, 34.491806, 33.958126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.730495, 34.735432, 33.641247>,  <37.739658, 34.881607, 33.451118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.730495, 34.735432, 33.641247>,  <37.715225, 34.491806, 33.958126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730495, 34.735432, 33.641247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359830, -0.731218, -0.579519,
		-0.932236, 0.307180, 0.191247,
		0.038174, 0.609066, -0.792201,
		37.741947, 34.918152, 33.403587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028419, 34.529213, 33.553341>,  <37.715225, 34.491806, 33.958126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028419, 34.529213, 33.553341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.325493, 34.622421, 33.302223>,  <37.503735, 34.678345, 33.151550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.325493, 34.622421, 33.302223>,  <37.028419, 34.529213, 33.553341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325493, 34.622421, 33.302223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380402, -0.624746, -0.681900,
		-0.551109, 0.745248, -0.375345,
		0.742679, 0.233019, -0.627797,
		37.548298, 34.692326, 33.113884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715858, 34.699940, 32.929813>,  <37.028419, 34.529213, 33.553341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715858, 34.699940, 32.929813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.085789, 34.597801, 32.817032>,  <37.307747, 34.536518, 32.749363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.085789, 34.597801, 32.817032>,  <36.715858, 34.699940, 32.929813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085789, 34.597801, 32.817032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380387, -0.625729, -0.681006,
		-0.002533, 0.737063, -0.675820,
		0.924824, -0.255348, -0.281954,
		37.363235, 34.521198, 32.732445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653370, 34.536007, 32.268772>,  <36.715858, 34.699940, 32.929813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653370, 34.536007, 32.268772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.004513, 34.373501, 32.370213>,  <37.215199, 34.275997, 32.431076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.004513, 34.373501, 32.370213>,  <36.653370, 34.536007, 32.268772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004513, 34.373501, 32.370213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032776, -0.579259, -0.814484,
		0.477797, 0.706690, -0.521823,
		0.877859, -0.406262, 0.253606,
		37.267872, 34.251621, 32.446293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133209, 34.496460, 31.608831>,  <36.653370, 34.536007, 32.268772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133209, 34.496460, 31.608831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.213829, 34.219616, 31.886065>,  <37.262203, 34.053509, 32.052402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.213829, 34.219616, 31.886065>,  <37.133209, 34.496460, 31.608831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213829, 34.219616, 31.886065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156499, -0.675758, -0.720319,
		0.966895, 0.253648, -0.027885,
		0.201551, -0.692108, 0.693082,
		37.274296, 34.011982, 32.093990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502625, 34.105709, 31.191767>,  <37.133209, 34.496460, 31.608831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502625, 34.105709, 31.191767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.420975, 33.863911, 31.499771>,  <37.371983, 33.718830, 31.684574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.420975, 33.863911, 31.499771>,  <37.502625, 34.105709, 31.191767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420975, 33.863911, 31.499771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121048, -0.764951, -0.632611,
		0.971432, -0.222341, 0.082974,
		-0.204126, -0.604495, 0.770012,
		37.359737, 33.682564, 31.730774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836060, 33.512215, 31.024097>,  <37.502625, 34.105709, 31.191767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836060, 33.512215, 31.024097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.572483, 33.382465, 31.295559>,  <37.414337, 33.304615, 31.458437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.572483, 33.382465, 31.295559>,  <37.836060, 33.512215, 31.024097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572483, 33.382465, 31.295559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014350, -0.896653, -0.442501,
		0.752053, -0.301322, 0.586191,
		-0.658946, -0.324372, 0.678655,
		37.374798, 33.285152, 31.499155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083958, 32.904709, 31.272219>,  <37.836060, 33.512215, 31.024097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083958, 32.904709, 31.272219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.695721, 32.866524, 31.360615>,  <37.462780, 32.843613, 31.413652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.695721, 32.866524, 31.360615>,  <38.083958, 32.904709, 31.272219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695721, 32.866524, 31.360615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044753, -0.830444, -0.555302,
		0.236531, -0.548862, 0.801750,
		-0.970592, -0.095465, 0.220989,
		37.404541, 32.837883, 31.426912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006248, 32.244804, 31.322195>,  <38.083958, 32.904709, 31.272219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006248, 32.244804, 31.322195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.632805, 32.375763, 31.263966>,  <37.408741, 32.454338, 31.229029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.632805, 32.375763, 31.263966>,  <38.006248, 32.244804, 31.322195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632805, 32.375763, 31.263966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135510, -0.698744, -0.702420,
		-0.331689, -0.636056, 0.696717,
		-0.933605, 0.327397, -0.145574,
		37.352722, 32.473984, 31.220293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646309, 31.645712, 31.292480>,  <38.006248, 32.244804, 31.322195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646309, 31.645712, 31.292480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.369896, 31.896763, 31.149061>,  <37.204048, 32.047394, 31.063009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.369896, 31.896763, 31.149061>,  <37.646309, 31.645712, 31.292480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369896, 31.896763, 31.149061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317422, -0.709148, -0.629565,
		-0.649394, -0.321240, 0.689269,
		-0.691035, 0.627625, -0.358548,
		37.162586, 32.085052, 31.041496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897717, 31.344057, 31.348591>,  <37.646309, 31.645712, 31.292480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897717, 31.344057, 31.348591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.920433, 31.601562, 31.043346>,  <36.934063, 31.756065, 30.860199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.920433, 31.601562, 31.043346>,  <36.897717, 31.344057, 31.348591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920433, 31.601562, 31.043346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274309, -0.724868, -0.631918,
		-0.959963, 0.245217, 0.135422,
		0.056794, 0.643766, -0.763112,
		36.937469, 31.794693, 30.814413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238026, 31.249962, 30.977983>,  <36.897717, 31.344057, 31.348591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238026, 31.249962, 30.977983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.498856, 31.429300, 30.733431>,  <36.655354, 31.536903, 30.586699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.498856, 31.429300, 30.733431>,  <36.238026, 31.249962, 30.977983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498856, 31.429300, 30.733431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311576, -0.576689, -0.755215,
		-0.691175, 0.682947, -0.236350,
		0.652072, 0.448345, -0.611382,
		36.694477, 31.563805, 30.550016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760372, 31.716709, 30.756945>,  <36.238026, 31.249962, 30.977983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760372, 31.716709, 30.756945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.376854, 31.672548, 30.861650>,  <35.146744, 31.646051, 30.924475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.376854, 31.672548, 30.861650>,  <35.760372, 31.716709, 30.756945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376854, 31.672548, 30.861650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190726, 0.432749, 0.881108,
		-0.210555, 0.894729, -0.393862,
		-0.958796, -0.110402, 0.261765,
		35.089214, 31.639427, 30.940180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547398, 32.326916, 30.946070>,  <35.760372, 31.716709, 30.756945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547398, 32.326916, 30.946070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.277779, 32.087734, 31.119560>,  <35.116009, 31.944225, 31.223654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.277779, 32.087734, 31.119560>,  <35.547398, 32.326916, 30.946070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277779, 32.087734, 31.119560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093521, 0.513354, 0.853066,
		-0.732746, 0.615568, -0.290103,
		-0.674045, -0.597950, 0.433727,
		35.075565, 31.908350, 31.249678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126068, 32.805382, 31.342600>,  <35.547398, 32.326916, 30.946070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126068, 32.805382, 31.342600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.028877, 32.458530, 31.516520>,  <34.970562, 32.250420, 31.620871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.028877, 32.458530, 31.516520>,  <35.126068, 32.805382, 31.342600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028877, 32.458530, 31.516520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138012, 0.474573, 0.869329,
		-0.960164, 0.151220, -0.234985,
		-0.242978, -0.867129, 0.434798,
		34.955982, 32.198391, 31.646959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487400, 33.015900, 31.640684>,  <35.126068, 32.805382, 31.342600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487400, 33.015900, 31.640684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.608032, 32.680958, 31.823061>,  <34.680412, 32.479992, 31.932487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.608032, 32.680958, 31.823061>,  <34.487400, 33.015900, 31.640684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608032, 32.680958, 31.823061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240864, 0.395787, 0.886192,
		-0.922516, -0.377075, -0.082329,
		0.301576, -0.837357, 0.455944,
		34.698505, 32.429752, 31.959845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896496, 32.793118, 32.083572>,  <34.487400, 33.015900, 31.640684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896496, 32.793118, 32.083572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.251606, 32.661911, 32.212727>,  <34.464672, 32.583187, 32.290218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.251606, 32.661911, 32.212727>,  <33.896496, 32.793118, 32.083572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251606, 32.661911, 32.212727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173535, 0.411200, 0.894874,
		-0.426305, -0.850481, 0.308132,
		0.887778, -0.328018, 0.322885,
		34.517941, 32.563507, 32.309593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790623, 32.441082, 32.669090>,  <33.896496, 32.793118, 32.083572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790623, 32.441082, 32.669090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.160038, 32.582756, 32.727917>,  <34.381687, 32.667759, 32.763210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.160038, 32.582756, 32.727917>,  <33.790623, 32.441082, 32.669090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160038, 32.582756, 32.727917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247642, 0.257974, 0.933875,
		0.292831, -0.898888, 0.325961,
		0.923539, 0.354189, 0.147060,
		34.437099, 32.689011, 32.772034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917549, 32.222290, 33.304111>,  <33.790623, 32.441082, 32.669090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917549, 32.222290, 33.304111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.206177, 32.487576, 33.224636>,  <34.379356, 32.646748, 33.176949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.206177, 32.487576, 33.224636>,  <33.917549, 32.222290, 33.304111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206177, 32.487576, 33.224636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164106, 0.442648, 0.881551,
		0.672608, -0.603496, 0.428241,
		0.721573, 0.663215, -0.198692,
		34.422649, 32.686539, 33.165028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204330, 32.384556, 33.957973>,  <33.917549, 32.222290, 33.304111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204330, 32.384556, 33.957973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.338886, 32.680168, 33.724503>,  <34.419621, 32.857536, 33.584419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.338886, 32.680168, 33.724503>,  <34.204330, 32.384556, 33.957973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338886, 32.680168, 33.724503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275041, 0.669871, 0.689656,
		0.900665, -0.071455, 0.428599,
		0.336385, 0.739031, -0.583676,
		34.439800, 32.901878, 33.549400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629078, 32.858036, 34.342148>,  <34.204330, 32.384556, 33.957973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629078, 32.858036, 34.342148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.469292, 33.059383, 34.035671>,  <34.373421, 33.180191, 33.851784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.469292, 33.059383, 34.035671>,  <34.629078, 32.858036, 34.342148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469292, 33.059383, 34.035671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342430, 0.693348, 0.634043,
		0.850392, 0.515647, -0.104603,
		-0.399468, 0.503365, -0.766191,
		34.349453, 33.210392, 33.805813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827641, 33.559475, 34.480835>,  <34.629078, 32.858036, 34.342148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827641, 33.559475, 34.480835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518673, 33.562351, 34.226807>,  <34.333294, 33.564075, 34.074390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518673, 33.562351, 34.226807>,  <34.827641, 33.559475, 34.480835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518673, 33.562351, 34.226807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369182, 0.808564, 0.458180,
		0.516790, 0.588365, -0.621897,
		-0.772421, 0.007190, -0.635071,
		34.286945, 33.564507, 34.036285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631424, 34.179646, 34.263885>,  <34.827641, 33.559475, 34.480835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631424, 34.179646, 34.263885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260933, 34.044338, 34.197338>,  <34.038639, 33.963154, 34.157410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260933, 34.044338, 34.197338>,  <34.631424, 34.179646, 34.263885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260933, 34.044338, 34.197338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371907, 0.892043, 0.256796,
		0.061544, 0.299725, -0.952038,
		-0.926228, -0.338266, -0.166369,
		33.983063, 33.942860, 34.147427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271538, 34.814198, 33.973492>,  <34.631424, 34.179646, 34.263885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271538, 34.814198, 33.973492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.969246, 34.566780, 34.059532>,  <33.787868, 34.418327, 34.111156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.969246, 34.566780, 34.059532>,  <34.271538, 34.814198, 33.973492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969246, 34.566780, 34.059532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577684, 0.784372, 0.225924,
		-0.308466, 0.046476, -0.950099,
		-0.755731, -0.618547, 0.215104,
		33.742527, 34.381214, 34.124062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684677, 35.168438, 33.695812>,  <34.271538, 34.814198, 33.973492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684677, 35.168438, 33.695812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.518784, 34.894173, 33.935101>,  <33.419247, 34.729614, 34.078674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.518784, 34.894173, 33.935101>,  <33.684677, 35.168438, 33.695812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518784, 34.894173, 33.935101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684854, 0.668081, 0.290935,
		-0.599141, -0.289031, -0.746653,
		-0.414735, -0.685660, 0.598219,
		33.394363, 34.688477, 34.114567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963165, 35.328384, 33.638508>,  <33.684677, 35.168438, 33.695812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963165, 35.328384, 33.638508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.021755, 35.131557, 33.981766>,  <33.056908, 35.013462, 34.187721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.021755, 35.131557, 33.981766>,  <32.963165, 35.328384, 33.638508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021755, 35.131557, 33.981766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311749, 0.800333, 0.512132,
		-0.938807, -0.342539, -0.036176,
		0.146473, -0.492071, 0.858144,
		33.065697, 34.983936, 34.239208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387760, 35.361080, 34.043652>,  <32.963165, 35.328384, 33.638508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387760, 35.361080, 34.043652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.721600, 35.322964, 34.260674>,  <32.921902, 35.300095, 34.390888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.721600, 35.322964, 34.260674>,  <32.387760, 35.361080, 34.043652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721600, 35.322964, 34.260674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215647, 0.849797, 0.480979,
		-0.506895, -0.518424, 0.688690,
		0.834598, -0.095292, 0.542554,
		32.971977, 35.294376, 34.423439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990011, 34.783951, 33.885235>,  <32.387760, 35.361080, 34.043652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990011, 34.783951, 33.885235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.966709, 34.488701, 34.154095>,  <31.952728, 34.311550, 34.315411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.966709, 34.488701, 34.154095>,  <31.990011, 34.783951, 33.885235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966709, 34.488701, 34.154095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963041, -0.218915, -0.156936,
		0.262982, 0.638164, 0.723594,
		-0.058255, -0.738121, 0.672148,
		31.949232, 34.267265, 34.355740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904007, 34.948460, 33.237038>,  <31.990011, 34.783951, 33.885235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904007, 34.948460, 33.237038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.991148, 35.259972, 33.001740>,  <32.043434, 35.446880, 32.860561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.991148, 35.259972, 33.001740>,  <31.904007, 34.948460, 33.237038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991148, 35.259972, 33.001740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123850, -0.575792, -0.808161,
		-0.968092, 0.248914, -0.028986,
		0.217853, 0.778785, -0.588247,
		32.056503, 35.493607, 32.825264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393250, 34.998745, 32.722237>,  <31.904007, 34.948460, 33.237038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393250, 34.998745, 32.722237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.721565, 35.171833, 32.573071>,  <31.918554, 35.275684, 32.483570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.721565, 35.171833, 32.573071>,  <31.393250, 34.998745, 32.722237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721565, 35.171833, 32.573071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127166, -0.498026, -0.857787,
		-0.556899, 0.751483, -0.353747,
		0.820788, 0.432716, -0.372913,
		31.967802, 35.301647, 32.461197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251558, 35.233170, 32.072441>,  <31.393250, 34.998745, 32.722237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251558, 35.233170, 32.072441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.650980, 35.214901, 32.061119>,  <31.890633, 35.203938, 32.054325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.650980, 35.214901, 32.061119>,  <31.251558, 35.233170, 32.072441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650980, 35.214901, 32.061119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050533, -0.619035, -0.783736,
		0.018273, 0.784034, -0.620448,
		0.998555, -0.045674, -0.028308,
		31.950546, 35.201199, 32.052628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360842, 35.366783, 31.338972>,  <31.251558, 35.233170, 32.072441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360842, 35.366783, 31.338972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.692751, 35.207134, 31.495012>,  <31.891895, 35.111343, 31.588636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.692751, 35.207134, 31.495012>,  <31.360842, 35.366783, 31.338972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692751, 35.207134, 31.495012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160175, -0.499261, -0.851517,
		0.534625, 0.769049, -0.350342,
		0.829771, -0.399127, 0.390100,
		31.941683, 35.087395, 31.612041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929886, 35.598866, 30.962181>,  <31.360842, 35.366783, 31.338972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929886, 35.598866, 30.962181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.068512, 35.266193, 31.135712>,  <32.151688, 35.066589, 31.239830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.068512, 35.266193, 31.135712>,  <31.929886, 35.598866, 30.962181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068512, 35.266193, 31.135712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157769, -0.404218, -0.900953,
		0.924664, 0.380681, -0.008875,
		0.346563, -0.831679, 0.433826,
		32.172482, 35.016689, 31.265860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536785, 35.283417, 30.521637>,  <31.929886, 35.598866, 30.962181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536785, 35.283417, 30.521637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.392242, 34.973770, 30.729546>,  <32.305519, 34.787983, 30.854290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.392242, 34.973770, 30.729546>,  <32.536785, 35.283417, 30.521637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392242, 34.973770, 30.729546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031026, -0.567112, -0.823056,
		0.931912, -0.281288, 0.228946,
		-0.361354, -0.774119, 0.519772,
		32.283836, 34.741535, 30.885477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004185, 34.702232, 30.362108>,  <32.536785, 35.283417, 30.521637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004185, 34.702232, 30.362108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.647205, 34.571850, 30.486872>,  <32.433018, 34.493622, 30.561729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.647205, 34.571850, 30.486872>,  <33.004185, 34.702232, 30.362108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647205, 34.571850, 30.486872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043369, -0.626186, -0.778467,
		0.449058, -0.708269, 0.544703,
		-0.892450, -0.325953, 0.311910,
		32.379471, 34.474064, 30.580444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138779, 33.979397, 30.419230>,  <33.004185, 34.702232, 30.362108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138779, 33.979397, 30.419230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.743011, 34.032810, 30.396559>,  <32.505550, 34.064857, 30.382957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.743011, 34.032810, 30.396559>,  <33.138779, 33.979397, 30.419230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743011, 34.032810, 30.396559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042360, -0.639623, -0.767521,
		-0.138740, -0.757001, 0.638514,
		-0.989422, 0.133533, -0.056675,
		32.446186, 34.072868, 30.379557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847267, 33.279232, 30.195286>,  <33.138779, 33.979397, 30.419230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847267, 33.279232, 30.195286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.540771, 33.522442, 30.112158>,  <32.356873, 33.668365, 30.062281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.540771, 33.522442, 30.112158>,  <32.847267, 33.279232, 30.195286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540771, 33.522442, 30.112158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144082, -0.477773, -0.866587,
		-0.626195, -0.634068, 0.453692,
		-0.766237, 0.608022, -0.207822,
		32.310902, 33.704849, 30.049812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189632, 32.901257, 30.082729>,  <32.847267, 33.279232, 30.195286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189632, 32.901257, 30.082729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.149269, 33.239040, 29.872316>,  <32.125050, 33.441711, 29.746069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.149269, 33.239040, 29.872316>,  <32.189632, 32.901257, 30.082729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149269, 33.239040, 29.872316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214131, -0.534774, -0.817413,
		-0.971578, 0.030153, 0.234790,
		-0.100912, 0.844457, -0.526032,
		32.118996, 33.492378, 29.714506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746822, 32.746151, 29.584454>,  <32.189632, 32.901257, 30.082729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746822, 32.746151, 29.584454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.879484, 33.098186, 29.448544>,  <31.959082, 33.309406, 29.366997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.879484, 33.098186, 29.448544>,  <31.746822, 32.746151, 29.584454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879484, 33.098186, 29.448544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402333, -0.193815, -0.894742,
		-0.853307, 0.433448, 0.289809,
		0.331655, 0.880090, -0.339774,
		31.978981, 33.362213, 29.346611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235790, 32.945625, 29.138134>,  <31.746822, 32.746151, 29.584454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235790, 32.945625, 29.138134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.538147, 33.165989, 28.996643>,  <31.719561, 33.298206, 28.911749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.538147, 33.165989, 28.996643>,  <31.235790, 32.945625, 29.138134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538147, 33.165989, 28.996643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350010, -0.116547, -0.929467,
		-0.553280, 0.826386, 0.104727,
		0.755893, 0.550911, -0.353727,
		31.764915, 33.331261, 28.890526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972292, 33.505962, 28.711788>,  <31.235790, 32.945625, 29.138134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972292, 33.505962, 28.711788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.353626, 33.441395, 28.609735>,  <31.582426, 33.402653, 28.548504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.353626, 33.441395, 28.609735>,  <30.972292, 33.505962, 28.711788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353626, 33.441395, 28.609735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238826, 0.113756, -0.964376,
		0.184694, 0.980307, 0.069896,
		0.953336, -0.161422, -0.255133,
		31.639627, 33.392967, 28.533195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120935, 33.881336, 28.178583>,  <30.972292, 33.505962, 28.711788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120935, 33.881336, 28.178583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.433828, 33.633560, 28.152037>,  <31.621565, 33.484894, 28.136108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.433828, 33.633560, 28.152037>,  <31.120935, 33.881336, 28.178583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433828, 33.633560, 28.152037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038344, 0.058459, -0.997553,
		0.621804, 0.782865, 0.021976,
		0.782234, -0.619439, -0.066368,
		31.668499, 33.447727, 28.132126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548908, 34.162350, 27.581924>,  <31.120935, 33.881336, 28.178583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548908, 34.162350, 27.581924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.651615, 33.778351, 27.626614>,  <31.713240, 33.547951, 27.653427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.651615, 33.778351, 27.626614>,  <31.548908, 34.162350, 27.581924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651615, 33.778351, 27.626614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097068, -0.140632, -0.985292,
		0.961587, 0.242144, -0.129294,
		0.256766, -0.959994, 0.111725,
		31.728645, 33.490353, 27.660131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120449, 34.000282, 27.136518>,  <31.548908, 34.162350, 27.581924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120449, 34.000282, 27.136518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.931480, 33.657925, 27.220665>,  <31.818098, 33.452511, 27.271152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.931480, 33.657925, 27.220665>,  <32.120449, 34.000282, 27.136518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931480, 33.657925, 27.220665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013554, -0.245708, -0.969249,
		0.881266, -0.455047, 0.127680,
		-0.472426, -0.855897, 0.210367,
		31.789753, 33.401157, 27.283775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384701, 33.522167, 26.653706>,  <32.120449, 34.000282, 27.136518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384701, 33.522167, 26.653706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.053066, 33.344856, 26.790010>,  <31.854086, 33.238472, 26.871794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.053066, 33.344856, 26.790010>,  <32.384701, 33.522167, 26.653706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053066, 33.344856, 26.790010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217336, -0.306033, -0.926882,
		0.515149, -0.842526, 0.157389,
		-0.829088, -0.443276, 0.340763,
		31.804340, 33.211872, 26.892239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410847, 32.800503, 26.371145>,  <32.384701, 33.522167, 26.653706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410847, 32.800503, 26.371145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030991, 32.911491, 26.429384>,  <31.803078, 32.978085, 26.464327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030991, 32.911491, 26.429384>,  <32.410847, 32.800503, 26.371145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030991, 32.911491, 26.429384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271526, -0.496728, -0.824339,
		-0.156413, -0.822355, 0.547053,
		-0.949636, 0.277476, 0.145596,
		31.746099, 32.994736, 26.473063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123028, 32.221458, 26.078003>,  <32.410847, 32.800503, 26.371145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123028, 32.221458, 26.078003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.840754, 32.504124, 26.098515>,  <31.671389, 32.673725, 26.110821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.840754, 32.504124, 26.098515>,  <32.123028, 32.221458, 26.078003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840754, 32.504124, 26.098515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335009, -0.269018, -0.902994,
		-0.624323, -0.654408, 0.426581,
		-0.705685, 0.706668, 0.051278,
		31.629047, 32.716125, 26.113897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477737, 32.007072, 25.757317>,  <32.123028, 32.221458, 26.078003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477737, 32.007072, 25.757317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.449026, 32.405846, 25.744814>,  <31.431799, 32.645107, 25.737312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.449026, 32.405846, 25.744814>,  <31.477737, 32.007072, 25.757317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449026, 32.405846, 25.744814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215254, -0.046083, -0.975471,
		-0.973917, -0.063290, 0.217901,
		-0.071779, 0.996931, -0.031258,
		31.427492, 32.704926, 25.735437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883682, 32.066895, 25.342678>,  <31.477737, 32.007072, 25.757317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883682, 32.066895, 25.342678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.064356, 32.423550, 25.330282>,  <31.172760, 32.637543, 25.322844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.064356, 32.423550, 25.330282>,  <30.883682, 32.066895, 25.342678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064356, 32.423550, 25.330282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018789, -0.044236, -0.998844,
		-0.891980, 0.450581, -0.036734,
		0.451685, 0.891639, -0.030992,
		31.199862, 32.691040, 25.320984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504061, 32.398121, 24.830996>,  <30.883682, 32.066895, 25.342678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504061, 32.398121, 24.830996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.869349, 32.557102, 24.866909>,  <31.088522, 32.652493, 24.888458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.869349, 32.557102, 24.866909>,  <30.504061, 32.398121, 24.830996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869349, 32.557102, 24.866909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128658, -0.072184, -0.989058,
		-0.386622, 0.914779, -0.117055,
		0.913220, 0.397452, 0.089786,
		31.143314, 32.676338, 24.893845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523598, 32.995712, 24.341234>,  <30.504061, 32.398121, 24.830996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523598, 32.995712, 24.341234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.906794, 32.893333, 24.393003>,  <31.136711, 32.831905, 24.424065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.906794, 32.893333, 24.393003>,  <30.523598, 32.995712, 24.341234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906794, 32.893333, 24.393003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096931, -0.135774, -0.985987,
		0.269934, 0.957108, -0.105261,
		0.957987, -0.255949, 0.129423,
		31.194189, 32.816547, 24.431831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851633, 33.229137, 23.759920>,  <30.523598, 32.995712, 24.341234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851633, 33.229137, 23.759920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.139210, 32.997841, 23.914198>,  <31.311756, 32.859062, 24.006763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.139210, 32.997841, 23.914198>,  <30.851633, 33.229137, 23.759920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139210, 32.997841, 23.914198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124385, -0.438909, -0.889881,
		0.683850, 0.687747, -0.243626,
		0.718942, -0.578242, 0.385693,
		31.354893, 32.824368, 24.029905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396872, 33.381721, 23.350367>,  <30.851633, 33.229137, 23.759920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396872, 33.381721, 23.350367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.467989, 33.023132, 23.512711>,  <31.510658, 32.807980, 23.610117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.467989, 33.023132, 23.512711>,  <31.396872, 33.381721, 23.350367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467989, 33.023132, 23.512711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105988, -0.392585, -0.913588,
		0.978344, 0.205445, 0.025217,
		0.177792, -0.896476, 0.405858,
		31.521326, 32.754189, 23.634468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980379, 33.122894, 23.005766>,  <31.396872, 33.381721, 23.350367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980379, 33.122894, 23.005766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.764994, 32.822876, 23.159382>,  <31.635763, 32.642864, 23.251551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.764994, 32.822876, 23.159382>,  <31.980379, 33.122894, 23.005766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764994, 32.822876, 23.159382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215896, -0.317738, -0.923272,
		0.814523, -0.580059, 0.009157,
		-0.538462, -0.750049, 0.384038,
		31.603455, 32.597862, 23.274593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733437, 33.107494, 22.914169>,  <31.980379, 33.122894, 23.005766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733437, 33.107494, 22.914169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.988373, 33.326294, 22.697063>,  <33.141335, 33.457573, 22.566801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.988373, 33.326294, 22.697063>,  <32.733437, 33.107494, 22.914169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988373, 33.326294, 22.697063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220029, 0.545849, 0.808478,
		0.738505, -0.634696, 0.227533,
		0.637336, 0.547002, -0.542764,
		33.179573, 33.490395, 22.534235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535568, 33.017117, 23.132078>,  <32.733437, 33.107494, 22.914169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535568, 33.017117, 23.132078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.443684, 33.373917, 22.976355>,  <33.388554, 33.587997, 22.882919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.443684, 33.373917, 22.976355>,  <33.535568, 33.017117, 23.132078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443684, 33.373917, 22.976355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311811, 0.446374, 0.838764,
		0.921957, 0.071285, -0.380674,
		-0.229714, 0.892003, -0.389310,
		33.374771, 33.641518, 22.859562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841934, 33.376587, 23.506638>,  <33.535568, 33.017117, 23.132078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841934, 33.376587, 23.506638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.634647, 33.682350, 23.353210>,  <33.510277, 33.865810, 23.261154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.634647, 33.682350, 23.353210>,  <33.841934, 33.376587, 23.506638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634647, 33.682350, 23.353210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109552, 0.504125, 0.856654,
		0.848203, 0.401913, -0.344989,
		-0.518218, 0.764411, -0.383570,
		33.479183, 33.911674, 23.238140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256580, 33.963921, 23.488821>,  <33.841934, 33.376587, 23.506638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256580, 33.963921, 23.488821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.878544, 34.094643, 23.489679>,  <33.651722, 34.173077, 23.490194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.878544, 34.094643, 23.489679>,  <34.256580, 33.963921, 23.488821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878544, 34.094643, 23.489679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206172, 0.591114, 0.779793,
		0.253567, 0.737418, -0.626034,
		-0.945091, 0.326800, 0.002148,
		33.595016, 34.192684, 23.490324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301441, 34.728428, 23.524656>,  <34.256580, 33.963921, 23.488821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301441, 34.728428, 23.524656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.928738, 34.623337, 23.624897>,  <33.705116, 34.560280, 23.685041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.928738, 34.623337, 23.624897>,  <34.301441, 34.728428, 23.524656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928738, 34.623337, 23.624897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093599, 0.493068, 0.864941,
		-0.350812, 0.829371, -0.434828,
		-0.931757, -0.262732, 0.250602,
		33.649212, 34.544518, 23.700077>
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
