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
	<3.881493, 3.540965, 1.134982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.656757, 3.567215, 0.805126>,  <3.521916, 3.582965, 0.607213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.656757, 3.567215, 0.805126>,  <3.881493, 3.540965, 1.134982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.656757, 3.567215, 0.805126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023046, 0.995220, 0.094901,
		0.826926, 0.072323, -0.557641,
		-0.561839, 0.065624, -0.824640,
		3.488206, 3.586902, 0.557734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.092314, 4.175673, 0.921169>,  <3.881493, 3.540965, 1.134982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.092314, 4.175673, 0.921169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.749130, 4.082947, 0.737793>,  <3.543220, 4.027311, 0.627768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.749130, 4.082947, 0.737793>,  <4.092314, 4.175673, 0.921169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.749130, 4.082947, 0.737793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307312, 0.946713, 0.096409,
		0.411661, 0.223599, -0.883481,
		-0.857960, -0.231816, -0.458439,
		3.491742, 4.013402, 0.600261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.049652, 4.594775, 0.395145>,  <4.092314, 4.175673, 0.921169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.049652, 4.594775, 0.395145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.677719, 4.480499, 0.487919>,  <3.454559, 4.411934, 0.543583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.677719, 4.480499, 0.487919>,  <4.049652, 4.594775, 0.395145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.677719, 4.480499, 0.487919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280613, 0.958225, 0.055320,
		-0.238051, -0.013646, -0.971157,
		-0.929832, -0.285689, 0.231936,
		3.398769, 4.394793, 0.557500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.619531, 4.952219, -0.041571>,  <4.049652, 4.594775, 0.395145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.619531, 4.952219, -0.041571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.421677, 4.850266, 0.290783>,  <3.302964, 4.789093, 0.490195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.421677, 4.850266, 0.290783>,  <3.619531, 4.952219, -0.041571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.421677, 4.850266, 0.290783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201219, 0.963638, 0.175821,
		-0.845486, -0.080222, -0.527938,
		-0.494636, -0.254885, 0.830884,
		3.273286, 4.773800, 0.540048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.952280, 5.278131, 0.021022>,  <3.619531, 4.952219, -0.041571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.952280, 5.278131, 0.021022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.131046, 5.198471, 0.369873>,  <3.238306, 5.150675, 0.579183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.131046, 5.198471, 0.369873>,  <2.952280, 5.278131, 0.021022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.131046, 5.198471, 0.369873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240299, 0.912350, 0.331473,
		-0.861697, -0.357712, 0.359889,
		0.446917, -0.199149, 0.872127,
		3.265121, 5.138726, 0.631511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.578191, 5.700351, 0.514008>,  <2.952280, 5.278131, 0.021022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.578191, 5.700351, 0.514008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.900970, 5.597427, 0.726658>,  <3.094638, 5.535673, 0.854248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.900970, 5.597427, 0.726658>,  <2.578191, 5.700351, 0.514008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.900970, 5.597427, 0.726658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076028, 0.847368, 0.525535,
		-0.585707, -0.464498, 0.664220,
		0.806949, -0.257310, 0.531625,
		3.143055, 5.520235, 0.886145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.507161, 5.912184, 1.285560>,  <2.578191, 5.700351, 0.514008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.507161, 5.912184, 1.285560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.898125, 5.907913, 1.201126>,  <3.132703, 5.905351, 1.150466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.898125, 5.907913, 1.201126>,  <2.507161, 5.912184, 1.285560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.898125, 5.907913, 1.201126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083780, 0.936480, 0.340567,
		0.194039, -0.350558, 0.916219,
		0.977410, -0.010677, -0.211084,
		3.191348, 5.904710, 1.137801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.835161, 5.941233, 1.877106>,  <2.507161, 5.912184, 1.285560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.835161, 5.941233, 1.877106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.079777, 6.079117, 1.592236>,  <3.226546, 6.161847, 1.421313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.079777, 6.079117, 1.592236>,  <2.835161, 5.941233, 1.877106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.079777, 6.079117, 1.592236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047133, 0.882636, 0.467689,
		0.789809, -0.319577, 0.523520,
		0.611540, 0.344710, -0.712176,
		3.263238, 6.182530, 1.378583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.501290, 2.993798, 2.210732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.785088, 2.911530, 1.941120>,  <3.955366, 2.862168, 1.779353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.785088, 2.911530, 1.941120>,  <3.501290, 2.993798, 2.210732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.785088, 2.911530, 1.941120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262929, -0.964655, 0.017588,
		-0.653824, 0.164743, -0.738495,
		0.709495, -0.205672, -0.674030,
		3.997936, 2.849828, 1.738911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.099416, 2.556697, 1.589607>,  <3.501290, 2.993798, 2.210732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.099416, 2.556697, 1.589607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.489264, 2.506683, 1.515327>,  <3.723172, 2.476675, 1.470760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.489264, 2.506683, 1.515327>,  <3.099416, 2.556697, 1.589607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.489264, 2.506683, 1.515327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176729, -0.938897, -0.295362,
		-0.137421, 0.320684, -0.937164,
		0.974619, -0.125035, -0.185698,
		3.781649, 2.469173, 1.459618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.097931, 2.196470, 1.011178>,  <3.099416, 2.556697, 1.589607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.097931, 2.196470, 1.011178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.460699, 2.146362, 1.172077>,  <3.678360, 2.116298, 1.268617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.460699, 2.146362, 1.172077>,  <3.097931, 2.196470, 1.011178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.460699, 2.146362, 1.172077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040737, -0.924225, -0.379668,
		0.419329, 0.360715, -0.833095,
		0.906920, -0.125268, 0.402249,
		3.732775, 2.108782, 1.292752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.766033, 2.015773, 0.499201>,  <3.097931, 2.196470, 1.011178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.766033, 2.015773, 0.499201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.775885, 1.842896, 0.859779>,  <3.781796, 1.739169, 1.076126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.775885, 1.842896, 0.859779>,  <3.766033, 2.015773, 0.499201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.775885, 1.842896, 0.859779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082971, -0.899491, -0.428989,
		0.996248, -0.064227, -0.058014,
		0.024630, -0.432193, 0.901445,
		3.783274, 1.713238, 1.130213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.156513, 1.531054, 0.545753>,  <3.766033, 2.015773, 0.499201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.156513, 1.531054, 0.545753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.891674, 1.416962, 0.822960>,  <3.732771, 1.348506, 0.989284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.891674, 1.416962, 0.822960>,  <4.156513, 1.531054, 0.545753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.891674, 1.416962, 0.822960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095311, -0.885180, -0.455380,
		0.743333, -0.367558, 0.558889,
		-0.662097, -0.285231, 0.693016,
		3.693045, 1.331392, 1.030865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.475979, 0.998030, 1.090520>,  <4.156513, 1.531054, 0.545753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.475979, 0.998030, 1.090520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.080921, 0.954559, 1.045361>,  <3.843886, 0.928477, 1.018265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.080921, 0.954559, 1.045361>,  <4.475979, 0.998030, 1.090520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.080921, 0.954559, 1.045361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128164, -0.974742, -0.182901,
		-0.090169, -0.195111, 0.976627,
		-0.987645, -0.108676, -0.112897,
		3.784627, 0.921956, 1.011491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.399307, 0.426528, 1.412405>,  <4.475979, 0.998030, 1.090520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.399307, 0.426528, 1.412405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.034750, 0.416611, 1.248089>,  <3.816016, 0.410660, 1.149499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.034750, 0.416611, 1.248089>,  <4.399307, 0.426528, 1.412405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.034750, 0.416611, 1.248089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142703, -0.955291, -0.258949,
		-0.386005, -0.294626, 0.874183,
		-0.911392, -0.024793, -0.410791,
		3.761332, 0.409173, 1.124851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.066846, -0.162671, 1.552625>,  <4.399307, 0.426528, 1.412405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.066846, -0.162671, 1.552625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.839479, -0.063126, 1.238945>,  <3.703059, -0.003398, 1.050737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.839479, -0.063126, 1.238945>,  <4.066846, -0.162671, 1.552625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.839479, -0.063126, 1.238945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161987, -0.968350, -0.189890,
		-0.806636, 0.019093, 0.590739,
		-0.568417, 0.248864, -0.784199,
		3.668954, 0.011534, 1.003685>
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
