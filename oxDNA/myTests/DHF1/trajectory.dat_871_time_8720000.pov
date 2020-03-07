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
	<1.899330, 5.413501, 0.624612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.973251, 5.595779, 0.972908>,  <2.017604, 5.705147, 1.181886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.973251, 5.595779, 0.972908>,  <1.899330, 5.413501, 0.624612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.973251, 5.595779, 0.972908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495622, 0.808297, -0.317828,
		-0.848650, -0.372822, 0.375230,
		0.184804, 0.455697, 0.870740,
		2.028692, 5.732489, 1.234130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.340969, 5.651960, 0.966813>,  <1.899330, 5.413501, 0.624612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.340969, 5.651960, 0.966813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.667114, 5.878983, 1.012532>,  <1.862801, 6.015196, 1.039963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.667114, 5.878983, 1.012532>,  <1.340969, 5.651960, 0.966813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.667114, 5.878983, 1.012532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434938, 0.730787, -0.526098,
		-0.382117, 0.379249, 0.842708,
		0.815362, 0.567557, 0.114296,
		1.911723, 6.049250, 1.046821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.696424, 5.119074, 1.291366>,  <1.340969, 5.651960, 0.966813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.696424, 5.119074, 1.291366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.828941, 4.790550, 1.105593>,  <1.908452, 4.593436, 0.994130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.828941, 4.790550, 1.105593>,  <1.696424, 5.119074, 1.291366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.828941, 4.790550, 1.105593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732402, -0.534171, 0.422195,
		-0.594838, 0.200281, -0.778495,
		0.331293, -0.821309, -0.464431,
		1.928329, 4.544158, 0.966264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.074145, 4.801708, 0.886032>,  <1.696424, 5.119074, 1.291366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.074145, 4.801708, 0.886032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.366371, 4.579788, 1.045266>,  <1.541707, 4.446636, 1.140807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.366371, 4.579788, 1.045266>,  <1.074145, 4.801708, 0.886032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.366371, 4.579788, 1.045266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674204, -0.678503, 0.291690,
		0.108274, -0.481490, -0.869738,
		0.730565, -0.554799, 0.398086,
		1.585541, 4.413349, 1.164692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.993002, 4.027146, 0.595940>,  <1.074145, 4.801708, 0.886032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.993002, 4.027146, 0.595940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.216576, 3.993660, 0.925930>,  <1.350720, 3.973568, 1.123924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.216576, 3.993660, 0.925930>,  <0.993002, 4.027146, 0.595940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.216576, 3.993660, 0.925930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629516, -0.690401, 0.356448,
		0.539724, -0.718566, -0.438589,
		0.558934, -0.083715, 0.824975,
		1.384256, 3.968545, 1.173423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.038644, 3.316238, 0.724571>,  <0.993002, 4.027146, 0.595940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.038644, 3.316238, 0.724571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.105118, 3.474419, 1.085902>,  <1.145002, 3.569327, 1.302701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.105118, 3.474419, 1.085902>,  <1.038644, 3.316238, 0.724571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.105118, 3.474419, 1.085902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548022, -0.724532, 0.418000,
		0.819789, -0.564509, 0.096310,
		0.166185, 0.395452, 0.903327,
		1.154973, 3.593054, 1.356900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.216798, 2.664248, 1.035753>,  <1.038644, 3.316238, 0.724571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.216798, 2.664248, 1.035753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.105293, 2.947655, 1.295074>,  <1.038391, 3.117699, 1.450666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.105293, 2.947655, 1.295074>,  <1.216798, 2.664248, 1.035753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.105293, 2.947655, 1.295074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569641, -0.665472, 0.482345,
		0.773176, -0.234840, 0.589109,
		-0.278762, 0.708518, 0.648301,
		1.021665, 3.160210, 1.489564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.251061, 2.355758, 1.719873>,  <1.216798, 2.664248, 1.035753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.251061, 2.355758, 1.719873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.996109, 2.657219, 1.784065>,  <0.843138, 2.838096, 1.822581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.996109, 2.657219, 1.784065>,  <1.251061, 2.355758, 1.719873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.996109, 2.657219, 1.784065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696573, -0.652597, 0.298166,
		0.329443, 0.078258, 0.940927,
		-0.637380, 0.753653, 0.160482,
		0.804895, 2.883315, 1.832210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.058472, 2.048711, 1.929288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.122795, 2.313728, 2.167843>,  <-0.231555, 2.472739, 2.310975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.122795, 2.313728, 2.167843>,  <0.058472, 2.048711, 1.929288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.122795, 2.313728, 2.167843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595387, 0.722878, -0.350658,
		-0.663441, 0.196174, -0.722054,
		-0.453167, 0.662543, 0.596387,
		-0.258745, 2.512491, 2.346759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.118328, 2.688300, 1.492114>,  <0.058472, 2.048711, 1.929288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.118328, 2.688300, 1.492114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.078384, 2.761719, 1.883285>,  <-0.054418, 2.805770, 2.117987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.078384, 2.761719, 1.883285>,  <-0.118328, 2.688300, 1.492114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.078384, 2.761719, 1.883285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662360, 0.721162, -0.202990,
		-0.742501, 0.668009, -0.049560,
		0.099858, 0.183547, 0.977926,
		-0.048427, 2.816783, 2.176662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.111886, 3.429161, 1.494034>,  <-0.118328, 2.688300, 1.492114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.111886, 3.429161, 1.494034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.080864, 3.233475, 1.784817>,  <0.196514, 3.116063, 1.959286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.080864, 3.233475, 1.784817>,  <-0.111886, 3.429161, 1.494034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.080864, 3.233475, 1.784817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800613, 0.582986, -0.138372,
		-0.356112, 0.648688, 0.672598,
		0.481875, -0.489215, 0.726956,
		0.225427, 3.086710, 2.002904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.086835, 3.913458, 2.088365>,  <-0.111886, 3.429161, 1.494034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.086835, 3.913458, 2.088365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.311333, 3.588539, 2.024894>,  <0.446031, 3.393588, 1.986811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.311333, 3.588539, 2.024894>,  <0.086835, 3.913458, 2.088365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.311333, 3.588539, 2.024894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814350, 0.576213, -0.069370,
		0.147781, -0.090287, 0.984890,
		0.561244, -0.812297, -0.158679,
		0.479706, 3.344850, 1.977290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.628874, 3.923907, 2.497979>,  <0.086835, 3.913458, 2.088365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.628874, 3.923907, 2.497979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.757698, 3.702759, 2.190574>,  <0.834992, 3.570070, 2.006130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.757698, 3.702759, 2.190574>,  <0.628874, 3.923907, 2.497979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.757698, 3.702759, 2.190574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833667, 0.550303, -0.046525,
		0.448637, -0.625700, 0.638140,
		0.322060, -0.552870, -0.768513,
		0.854316, 3.536898, 1.960020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.412092, 4.108303, 2.550021>,  <0.628874, 3.923907, 2.497979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.412092, 4.108303, 2.550021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.348740, 3.923737, 2.200848>,  <1.310728, 3.812997, 1.991344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.348740, 3.923737, 2.200848>,  <1.412092, 4.108303, 2.550021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.348740, 3.923737, 2.200848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861946, 0.366635, -0.350183,
		0.481628, -0.807883, 0.339648,
		-0.158380, -0.461416, -0.872933,
		1.301226, 3.785312, 1.938968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.068408, 3.929158, 2.253243>,  <1.412092, 4.108303, 2.550021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.068408, 3.929158, 2.253243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.847633, 3.938881, 1.919831>,  <1.715168, 3.944715, 1.719783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.847633, 3.938881, 1.919831>,  <2.068408, 3.929158, 2.253243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.847633, 3.938881, 1.919831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756583, 0.434905, -0.488303,
		0.350638, -0.900148, -0.258431,
		-0.551938, 0.024307, -0.833531,
		1.682052, 3.946173, 1.669771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.496286, 3.692207, 1.710698>,  <2.068408, 3.929158, 2.253243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.496286, 3.692207, 1.710698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.213417, 3.934418, 1.564687>,  <2.043695, 4.079744, 1.477081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.213417, 3.934418, 1.564687>,  <2.496286, 3.692207, 1.710698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.213417, 3.934418, 1.564687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706755, 0.590722, -0.389287,
		-0.020094, -0.533278, -0.845702,
		-0.707173, 0.605526, -0.365027,
		2.001265, 4.116076, 1.455179>
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
