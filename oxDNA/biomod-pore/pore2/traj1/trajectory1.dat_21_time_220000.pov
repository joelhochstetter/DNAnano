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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.585594, 17.168381, -2.744288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.571350, 17.018959, -2.373518>,  <22.562803, 16.929306, -2.151056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.571350, 17.018959, -2.373518>,  <22.585594, 17.168381, -2.744288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.571350, 17.018959, -2.373518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696129, 0.656208, 0.291197,
		-0.717033, 0.655629, 0.236673,
		-0.035610, -0.373553, 0.926925,
		22.560667, 16.906893, -2.095440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.977648, 17.678413, -3.089659>,  <22.585594, 17.168381, -2.744288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.977648, 17.678413, -3.089659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.877228, 17.701408, -2.703153>,  <22.816977, 17.715206, -2.471249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.877228, 17.701408, -2.703153>,  <22.977648, 17.678413, -3.089659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.877228, 17.701408, -2.703153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611789, 0.783000, 0.112366,
		-0.750126, 0.619360, -0.231741,
		-0.251048, 0.057488, 0.966266,
		22.801914, 17.718655, -2.413273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.841404, 18.359180, -2.821062>,  <22.977648, 17.678413, -3.089659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.841404, 18.359180, -2.821062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.028336, 18.127041, -2.554289>,  <23.140493, 17.987757, -2.394226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.028336, 18.127041, -2.554289>,  <22.841404, 18.359180, -2.821062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.028336, 18.127041, -2.554289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746813, 0.662877, 0.053520,
		-0.473153, 0.473062, 0.743194,
		0.467328, -0.580351, 0.666932,
		23.168533, 17.952936, -2.354210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.037722, 18.382641, -2.722593>,  <22.841404, 18.359180, -2.821062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.037722, 18.382641, -2.722593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.723759, 18.574890, -2.566172>,  <21.535381, 18.690239, -2.472319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.723759, 18.574890, -2.566172>,  <22.037722, 18.382641, -2.722593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.723759, 18.574890, -2.566172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234209, -0.354163, 0.905381,
		0.573643, 0.802228, 0.165419,
		-0.784908, 0.480622, 0.391052,
		21.488287, 18.719076, -2.448856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.318533, 18.868797, -2.026588>,  <22.037722, 18.382641, -2.722593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.318533, 18.868797, -2.026588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.544861, 18.984474, -2.335448>,  <22.680658, 19.053881, -2.520764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.544861, 18.984474, -2.335448>,  <22.318533, 18.868797, -2.026588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.544861, 18.984474, -2.335448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661558, 0.718170, -0.215805,
		0.492126, 0.632929, 0.597673,
		0.565820, 0.289193, -0.772149,
		22.714607, 19.071232, -2.567093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.620817, 19.491827, -1.975277>,  <22.318533, 18.868797, -2.026588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.620817, 19.491827, -1.975277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.500225, 19.407036, -2.347121>,  <22.427870, 19.356161, -2.570227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.500225, 19.407036, -2.347121>,  <22.620817, 19.491827, -1.975277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.500225, 19.407036, -2.347121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602521, 0.797990, 0.013437,
		0.738970, 0.564160, -0.368302,
		-0.301482, -0.211980, -0.929609,
		22.409781, 19.343441, -2.626004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.881037, 19.980303, -2.435920>,  <22.620817, 19.491827, -1.975277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.881037, 19.980303, -2.435920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.536804, 19.866020, -2.604569>,  <22.330265, 19.797451, -2.705759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.536804, 19.866020, -2.604569>,  <22.881037, 19.980303, -2.435920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.536804, 19.866020, -2.604569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368627, 0.920646, 0.128546,
		0.351440, 0.266046, -0.897613,
		-0.860583, -0.285709, -0.421624,
		22.278629, 19.780308, -2.731056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.654291, 20.408281, -3.056611>,  <22.881037, 19.980303, -2.435920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.654291, 20.408281, -3.056611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.366390, 20.245564, -2.831588>,  <22.193649, 20.147932, -2.696574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.366390, 20.245564, -2.831588>,  <22.654291, 20.408281, -3.056611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.366390, 20.245564, -2.831588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432370, 0.896657, 0.095201,
		-0.543149, -0.174712, -0.821258,
		-0.719753, -0.406796, 0.562559,
		22.150465, 20.123526, -2.662820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.590662, 20.646492, -2.382277>,  <22.654291, 20.408281, -3.056611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.590662, 20.646492, -2.382277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.308296, 20.928925, -2.404649>,  <22.138876, 21.098385, -2.418072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.308296, 20.928925, -2.404649>,  <22.590662, 20.646492, -2.382277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.308296, 20.928925, -2.404649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634036, 0.665131, 0.394460,
		0.315722, 0.242995, -0.917209,
		-0.705917, 0.706083, -0.055929,
		22.096521, 21.140749, -2.421427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.571419, 20.528517, -1.597342>,  <22.590662, 20.646492, -2.382277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.571419, 20.528517, -1.597342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.200703, 20.634762, -1.491129>,  <21.978273, 20.698509, -1.427402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.200703, 20.634762, -1.491129>,  <22.571419, 20.528517, -1.597342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.200703, 20.634762, -1.491129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370395, 0.763438, 0.529121,
		-0.062174, 0.588736, -0.805930,
		-0.926791, 0.265615, 0.265531,
		21.922665, 20.714447, -1.411470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.380301, 21.209751, -1.821660>,  <22.571419, 20.528517, -1.597342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.380301, 21.209751, -1.821660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.207607, 21.099297, -1.478182>,  <22.103991, 21.033024, -1.272096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.207607, 21.099297, -1.478182>,  <22.380301, 21.209751, -1.821660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.207607, 21.099297, -1.478182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151104, 0.916393, 0.370664,
		-0.889254, 0.289780, -0.353913,
		-0.431734, -0.276137, 0.858693,
		22.078087, 21.016455, -1.220574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.807255, 21.674299, -1.624479>,  <22.380301, 21.209751, -1.821660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.807255, 21.674299, -1.624479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.931232, 21.535271, -1.270501>,  <22.005619, 21.451853, -1.058114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.931232, 21.535271, -1.270501>,  <21.807255, 21.674299, -1.624479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.931232, 21.535271, -1.270501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111225, 0.937647, 0.329314,
		-0.944226, -0.003641, 0.329279,
		0.309946, -0.347571, 0.884945,
		22.024216, 21.431000, -1.005017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.263149, 21.898375, -0.979876>,  <21.807255, 21.674299, -1.624479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.263149, 21.898375, -0.979876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.654716, 21.873123, -0.902173>,  <21.889656, 21.857973, -0.855551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.654716, 21.873123, -0.902173>,  <21.263149, 21.898375, -0.979876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.654716, 21.873123, -0.902173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002256, 0.954327, 0.298755,
		-0.204246, -0.292018, 0.934350,
		0.978917, -0.063128, 0.194258,
		21.948391, 21.854185, -0.843895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.415041, 22.098124, -0.258197>,  <21.263149, 21.898375, -0.979876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.415041, 22.098124, -0.258197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.716251, 22.172108, -0.510781>,  <21.896978, 22.216499, -0.662331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.716251, 22.172108, -0.510781>,  <21.415041, 22.098124, -0.258197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.716251, 22.172108, -0.510781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044390, 0.943211, 0.329214,
		0.656492, -0.275937, 0.702052,
		0.753026, 0.184962, -0.631460,
		21.942160, 22.227596, -0.700219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.131960, 22.267763, 0.055856>,  <21.415041, 22.098124, -0.258197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.131960, 22.267763, 0.055856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.024933, 22.464466, -0.275585>,  <21.960716, 22.582487, -0.474449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.024933, 22.464466, -0.275585>,  <22.131960, 22.267763, 0.055856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.024933, 22.464466, -0.275585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081189, 0.868406, 0.489162,
		0.960112, 0.063611, -0.272284,
		-0.267569, 0.491757, -0.828602,
		21.944662, 22.611994, -0.524165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.712120, 22.758419, -0.113769>,  <22.131960, 22.267763, 0.055856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.712120, 22.758419, -0.113769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.337040, 22.853779, -0.214873>,  <22.111992, 22.910995, -0.275535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.337040, 22.853779, -0.214873>,  <22.712120, 22.758419, -0.113769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.337040, 22.853779, -0.214873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128159, 0.913490, 0.386150,
		0.322951, 0.329699, -0.887131,
		-0.937698, 0.238401, -0.252759,
		22.055731, 22.925299, -0.290701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.615164, 23.377363, -0.573114>,  <22.712120, 22.758419, -0.113769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.615164, 23.377363, -0.573114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.345364, 23.347401, -0.279328>,  <22.183483, 23.329422, -0.103057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.345364, 23.347401, -0.279328>,  <22.615164, 23.377363, -0.573114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.345364, 23.347401, -0.279328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256794, 0.908914, 0.328530,
		-0.692174, 0.410200, -0.593827,
		-0.674501, -0.074908, 0.734464,
		22.143013, 23.324928, -0.058989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.231653, 24.012323, -0.409150>,  <22.615164, 23.377363, -0.573114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.231653, 24.012323, -0.409150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.233131, 23.786140, -0.079242>,  <22.234018, 23.650431, 0.118703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.233131, 23.786140, -0.079242>,  <22.231653, 24.012323, -0.409150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.233131, 23.786140, -0.079242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429629, 0.745673, 0.509304,
		-0.902998, 0.352463, 0.245693,
		0.003696, -0.565457, 0.824769,
		22.234240, 23.616503, 0.168189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.895313, 24.388214, 0.158989>,  <22.231653, 24.012323, -0.409150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.895313, 24.388214, 0.158989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.227741, 24.167557, 0.187319>,  <22.427198, 24.035164, 0.204317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.227741, 24.167557, 0.187319>,  <21.895313, 24.388214, 0.158989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.227741, 24.167557, 0.187319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453235, 0.745549, 0.488604,
		-0.322338, -0.373963, 0.869626,
		0.831069, -0.551641, 0.070826,
		22.477062, 24.002064, 0.208567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.090658, 24.354733, 0.797148>,  <21.895313, 24.388214, 0.158989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.090658, 24.354733, 0.797148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.391235, 24.324036, 0.535020>,  <22.571581, 24.305616, 0.377744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.391235, 24.324036, 0.535020>,  <22.090658, 24.354733, 0.797148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.391235, 24.324036, 0.535020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481209, 0.743267, 0.464750,
		0.451411, -0.664579, 0.595453,
		0.751443, -0.076744, -0.655320,
		22.616669, 24.301012, 0.338424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.987633, 25.002403, 1.073523>,  <22.090658, 24.354733, 0.797148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.987633, 25.002403, 1.073523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.877583, 24.637989, 1.196368>,  <21.811552, 24.419340, 1.270075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.877583, 24.637989, 1.196368>,  <21.987633, 25.002403, 1.073523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.877583, 24.637989, 1.196368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416478, 0.174973, 0.892149,
		-0.866518, 0.373357, 0.331288,
		-0.275124, -0.911037, 0.307112,
		21.795046, 24.364677, 1.288501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.786934, 25.084373, 1.639393>,  <21.987633, 25.002403, 1.073523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.786934, 25.084373, 1.639393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.868340, 24.693954, 1.670159>,  <21.917183, 24.459703, 1.688619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.868340, 24.693954, 1.670159>,  <21.786934, 25.084373, 1.639393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.868340, 24.693954, 1.670159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488510, 0.169314, 0.855974,
		-0.848493, -0.136629, 0.511266,
		0.203515, -0.976046, 0.076917,
		21.929394, 24.401140, 1.693234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.471474, 24.714262, 2.258888>,  <21.786934, 25.084373, 1.639393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.471474, 24.714262, 2.258888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.822933, 24.588772, 2.114912>,  <22.033808, 24.513477, 2.028527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.822933, 24.588772, 2.114912>,  <21.471474, 24.714262, 2.258888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.822933, 24.588772, 2.114912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433861, 0.209836, 0.876204,
		-0.199361, -0.926037, 0.320486,
		0.878646, -0.313727, -0.359939,
		22.086527, 24.494654, 2.006930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.737206, 24.147890, 2.598858>,  <21.471474, 24.714262, 2.258888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.737206, 24.147890, 2.598858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.032665, 24.380817, 2.463033>,  <22.209942, 24.520575, 2.381538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.032665, 24.380817, 2.463033>,  <21.737206, 24.147890, 2.598858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.032665, 24.380817, 2.463033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341446, 0.111120, 0.933310,
		0.581216, -0.805330, -0.116752,
		0.738649, 0.582319, -0.339561,
		22.254261, 24.555513, 2.361165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.367191, 23.925106, 2.933182>,  <21.737206, 24.147890, 2.598858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.367191, 23.925106, 2.933182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.359703, 24.307083, 2.814702>,  <22.355209, 24.536270, 2.743613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.359703, 24.307083, 2.814702>,  <22.367191, 23.925106, 2.933182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.359703, 24.307083, 2.814702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217646, 0.293041, 0.930998,
		0.975848, -0.047037, -0.213325,
		-0.018721, 0.954942, -0.296201,
		22.354086, 24.593565, 2.725841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.603165, 23.355463, 3.254792>,  <22.367191, 23.925106, 2.933182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.603165, 23.355463, 3.254792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.821106, 23.030037, 3.173559>,  <22.951872, 22.834782, 3.124819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.821106, 23.030037, 3.173559>,  <22.603165, 23.355463, 3.254792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.821106, 23.030037, 3.173559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453950, -0.489814, 0.744320,
		-0.705027, -0.313356, -0.636195,
		0.544855, -0.813566, -0.203084,
		22.984562, 22.785967, 3.112633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.118881, 22.709154, 3.165281>,  <22.603165, 23.355463, 3.254792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.118881, 22.709154, 3.165281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.457554, 22.529934, 3.280091>,  <22.660757, 22.422401, 3.348977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.457554, 22.529934, 3.280091>,  <22.118881, 22.709154, 3.165281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.457554, 22.529934, 3.280091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511574, -0.537048, 0.670724,
		-0.146372, -0.714724, -0.683919,
		0.846680, -0.448051, 0.287026,
		22.711557, 22.395519, 3.366199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.992279, 21.938221, 3.138681>,  <22.118881, 22.709154, 3.165281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.992279, 21.938221, 3.138681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.260681, 22.041241, 3.416795>,  <22.421722, 22.103052, 3.583664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.260681, 22.041241, 3.416795>,  <21.992279, 21.938221, 3.138681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.260681, 22.041241, 3.416795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535055, -0.480978, 0.694533,
		0.513294, -0.838050, -0.184935,
		0.671004, 0.257549, 0.695286,
		22.461983, 22.118505, 3.625381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.264378, 21.389105, 3.606391>,  <21.992279, 21.938221, 3.138681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.264378, 21.389105, 3.606391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.187759, 21.720898, 3.816257>,  <22.141788, 21.919973, 3.942176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.187759, 21.720898, 3.816257>,  <22.264378, 21.389105, 3.606391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.187759, 21.720898, 3.816257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476701, -0.545899, 0.689021,
		0.857943, -0.118131, 0.499978,
		-0.191543, 0.829481, 0.524664,
		22.130297, 21.969742, 3.973656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.467154, 21.356146, 4.278805>,  <22.264378, 21.389105, 3.606391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.467154, 21.356146, 4.278805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.174904, 21.627541, 4.309380>,  <21.999554, 21.790379, 4.327724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.174904, 21.627541, 4.309380>,  <22.467154, 21.356146, 4.278805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.174904, 21.627541, 4.309380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449142, -0.561912, 0.694641,
		0.514256, 0.473190, 0.715284,
		-0.730624, 0.678488, 0.076437,
		21.955717, 21.831087, 4.332311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.384169, 21.553080, 5.073083>,  <22.467154, 21.356146, 4.278805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.384169, 21.553080, 5.073083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.035881, 21.617687, 4.887283>,  <21.826908, 21.656452, 4.775803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.035881, 21.617687, 4.887283>,  <22.384169, 21.553080, 5.073083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.035881, 21.617687, 4.887283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488523, -0.392636, 0.779219,
		-0.056519, 0.905399, 0.420783,
		-0.870719, 0.161521, -0.464500,
		21.774666, 21.666143, 4.747933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.781376, 22.051882, 5.449309>,  <22.384169, 21.553080, 5.073083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.781376, 22.051882, 5.449309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.607918, 21.752144, 5.249137>,  <21.503843, 21.572300, 5.129034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.607918, 21.752144, 5.249137>,  <21.781376, 22.051882, 5.449309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.607918, 21.752144, 5.249137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589156, -0.184427, 0.786691,
		-0.681797, 0.635976, -0.361506,
		-0.433645, -0.749347, -0.500431,
		21.477825, 21.527340, 5.099008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.026945, 22.061073, 5.567824>,  <21.781376, 22.051882, 5.449309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.026945, 22.061073, 5.567824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.131439, 21.685902, 5.476575>,  <21.194136, 21.460798, 5.421825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.131439, 21.685902, 5.476575>,  <21.026945, 22.061073, 5.567824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.131439, 21.685902, 5.476575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193856, -0.282494, 0.939477,
		-0.945608, -0.201203, -0.255622,
		0.261237, -0.937931, -0.228124,
		21.209810, 21.404522, 5.408138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.515495, 21.690041, 5.652035>,  <21.026945, 22.061073, 5.567824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.515495, 21.690041, 5.652035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.841228, 21.460270, 5.685244>,  <21.036669, 21.322407, 5.705169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.841228, 21.460270, 5.685244>,  <20.515495, 21.690041, 5.652035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.841228, 21.460270, 5.685244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227318, -0.184046, 0.956271,
		-0.534027, -0.797597, -0.280452,
		0.814335, -0.574426, 0.083022,
		21.085529, 21.287943, 5.710150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.663212, 21.083176, 6.073732>,  <20.515495, 21.690041, 5.652035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.663212, 21.083176, 6.073732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.038330, 21.178516, 6.174708>,  <21.263401, 21.235722, 6.235294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.038330, 21.178516, 6.174708>,  <20.663212, 21.083176, 6.073732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.038330, 21.178516, 6.174708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167143, -0.327346, 0.930004,
		0.304303, -0.914349, -0.267145,
		0.937797, 0.238351, 0.252440,
		21.319670, 21.250021, 6.250440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.027002, 20.450872, 6.370120>,  <20.663212, 21.083176, 6.073732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.027002, 20.450872, 6.370120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.168804, 20.796593, 6.512841>,  <21.253885, 21.004025, 6.598474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.168804, 20.796593, 6.512841>,  <21.027002, 20.450872, 6.370120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.168804, 20.796593, 6.512841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286477, -0.262842, 0.921328,
		0.890089, -0.428830, 0.154424,
		0.354504, 0.864303, 0.356802,
		21.275156, 21.055883, 6.619882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.711359, 20.492792, 6.858741>,  <21.027002, 20.450872, 6.370120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.711359, 20.492792, 6.858741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.438316, 20.771305, 6.947499>,  <21.274490, 20.938414, 7.000754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.438316, 20.771305, 6.947499>,  <21.711359, 20.492792, 6.858741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.438316, 20.771305, 6.947499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088920, -0.380521, 0.920487,
		0.725356, 0.608600, 0.321660,
		-0.682606, 0.696283, 0.221896,
		21.233534, 20.980190, 7.014068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.867411, 20.600706, 7.570081>,  <21.711359, 20.492792, 6.858741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.867411, 20.600706, 7.570081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.490242, 20.713318, 7.498928>,  <21.263941, 20.780886, 7.456236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.490242, 20.713318, 7.498928>,  <21.867411, 20.600706, 7.570081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.490242, 20.713318, 7.498928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236784, -0.191184, 0.952566,
		0.234168, 0.940314, 0.246933,
		-0.942920, 0.281530, -0.177882,
		21.207365, 20.797777, 7.445563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.754852, 20.831249, 8.139827>,  <21.867411, 20.600706, 7.570081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.754852, 20.831249, 8.139827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.396446, 20.797192, 7.965513>,  <21.181402, 20.776756, 7.860925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.396446, 20.797192, 7.965513>,  <21.754852, 20.831249, 8.139827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.396446, 20.797192, 7.965513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424346, -0.124733, 0.896868,
		-0.130721, 0.988530, 0.075631,
		-0.896015, -0.085146, -0.435784,
		21.127642, 20.771648, 7.834778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.360899, 21.350931, 8.401980>,  <21.754852, 20.831249, 8.139827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.360899, 21.350931, 8.401980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.127918, 21.049770, 8.279418>,  <20.988129, 20.869074, 8.205880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.127918, 21.049770, 8.279418>,  <21.360899, 21.350931, 8.401980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.127918, 21.049770, 8.279418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375554, -0.085054, 0.922890,
		-0.720907, 0.652613, -0.233215,
		-0.582454, -0.752903, -0.306407,
		20.953182, 20.823900, 8.187496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.638163, 21.497667, 8.714086>,  <21.360899, 21.350931, 8.401980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.638163, 21.497667, 8.714086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.636501, 21.107582, 8.625596>,  <20.635504, 20.873531, 8.572502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.636501, 21.107582, 8.625596>,  <20.638163, 21.497667, 8.714086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.636501, 21.107582, 8.625596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338236, -0.206816, 0.918054,
		-0.941052, 0.078640, -0.328993,
		-0.004155, -0.975214, -0.221223,
		20.635256, 20.815018, 8.559229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.018040, 21.228947, 9.050143>,  <20.638163, 21.497667, 8.714086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.018040, 21.228947, 9.050143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.206150, 20.879951, 8.997066>,  <20.319016, 20.670555, 8.965220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.206150, 20.879951, 8.997066>,  <20.018040, 21.228947, 9.050143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.206150, 20.879951, 8.997066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358149, -0.326098, 0.874865,
		-0.806580, -0.363903, -0.465836,
		0.470275, -0.872487, -0.132693,
		20.347233, 20.618206, 8.957259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.530371, 20.725964, 9.245199>,  <20.018040, 21.228947, 9.050143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.530371, 20.725964, 9.245199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.894653, 20.564457, 9.280047>,  <20.113222, 20.467552, 9.300957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.894653, 20.564457, 9.280047>,  <19.530371, 20.725964, 9.245199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.894653, 20.564457, 9.280047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300089, -0.501814, 0.811251,
		-0.283837, -0.764955, -0.578170,
		0.910705, -0.403766, 0.087121,
		20.167864, 20.443327, 9.306184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.423426, 20.080200, 9.508438>,  <19.530371, 20.725964, 9.245199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.423426, 20.080200, 9.508438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.810364, 20.144665, 9.586688>,  <20.042526, 20.183344, 9.633638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.810364, 20.144665, 9.586688>,  <19.423426, 20.080200, 9.508438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.810364, 20.144665, 9.586688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127206, -0.358881, 0.924674,
		0.219226, -0.919365, -0.326662,
		0.967346, 0.161160, 0.195625,
		20.100567, 20.193012, 9.645375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.604650, 19.452747, 9.965056>,  <19.423426, 20.080200, 9.508438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.604650, 19.452747, 9.965056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.883362, 19.736446, 10.007891>,  <20.050589, 19.906666, 10.033591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.883362, 19.736446, 10.007891>,  <19.604650, 19.452747, 9.965056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.883362, 19.736446, 10.007891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037248, -0.184869, 0.982057,
		0.716318, -0.680288, -0.155231,
		0.696779, 0.709247, 0.107086,
		20.092396, 19.949221, 10.040016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.137999, 19.163359, 10.414756>,  <19.604650, 19.452747, 9.965056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.137999, 19.163359, 10.414756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.252392, 19.546547, 10.423767>,  <20.321028, 19.776459, 10.429174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.252392, 19.546547, 10.423767>,  <20.137999, 19.163359, 10.414756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.252392, 19.546547, 10.423767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148455, -0.067521, 0.986611,
		0.946665, -0.278810, -0.161526,
		0.285984, 0.957969, 0.022529,
		20.338186, 19.833939, 10.430526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.869078, 19.234568, 10.698752>,  <20.137999, 19.163359, 10.414756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.869078, 19.234568, 10.698752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.676086, 19.581238, 10.749491>,  <20.560291, 19.789240, 10.779934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.676086, 19.581238, 10.749491>,  <20.869078, 19.234568, 10.698752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.676086, 19.581238, 10.749491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101621, -0.088452, 0.990883,
		0.869994, 0.490969, -0.045396,
		-0.482477, 0.866675, 0.126846,
		20.531343, 19.841240, 10.787544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.321163, 19.619814, 11.047783>,  <20.869078, 19.234568, 10.698752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.321163, 19.619814, 11.047783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.962704, 19.776546, 11.131098>,  <20.747627, 19.870586, 11.181087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.962704, 19.776546, 11.131098>,  <21.321163, 19.619814, 11.047783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.962704, 19.776546, 11.131098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176193, -0.116608, 0.977424,
		0.407274, 0.912617, 0.035460,
		-0.896149, 0.391832, 0.208288,
		20.693859, 19.894096, 11.193584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.402079, 20.030695, 11.607879>,  <21.321163, 19.619814, 11.047783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.402079, 20.030695, 11.607879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.002598, 20.023975, 11.627107>,  <20.762909, 20.019943, 11.638643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.002598, 20.023975, 11.627107>,  <21.402079, 20.030695, 11.607879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.002598, 20.023975, 11.627107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046257, 0.095366, 0.994367,
		-0.021290, 0.995300, -0.094465,
		-0.998703, -0.016801, 0.048070,
		20.702988, 20.018934, 11.641528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.135651, 20.670958, 11.978528>,  <21.402079, 20.030695, 11.607879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.135651, 20.670958, 11.978528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883770, 20.360889, 11.998852>,  <20.732641, 20.174849, 12.011046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883770, 20.360889, 11.998852>,  <21.135651, 20.670958, 11.978528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.883770, 20.360889, 11.998852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061361, 0.015569, 0.997994,
		-0.774408, 0.631559, 0.037761,
		-0.629704, -0.775172, 0.050810,
		20.694859, 20.128338, 12.014095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.596189, 20.936085, 12.412811>,  <21.135651, 20.670958, 11.978528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.596189, 20.936085, 12.412811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.601116, 20.536308, 12.400358>,  <20.604073, 20.296442, 12.392886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.601116, 20.536308, 12.400358>,  <20.596189, 20.936085, 12.412811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.601116, 20.536308, 12.400358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151883, -0.032643, 0.987859,
		-0.988322, -0.007440, -0.152200,
		0.012318, -0.999439, -0.031132,
		20.604813, 20.236477, 12.391019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.513126, 20.827236, 13.095326>,  <20.596189, 20.936085, 12.412811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.513126, 20.827236, 13.095326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.531315, 20.451073, 12.960527>,  <20.542229, 20.225374, 12.879648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.531315, 20.451073, 12.960527>,  <20.513126, 20.827236, 13.095326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.531315, 20.451073, 12.960527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076504, -0.339633, 0.937441,
		-0.996032, -0.016845, -0.087388,
		0.045471, -0.940407, -0.336997,
		20.544956, 20.168951, 12.859428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.902582, 20.480787, 13.173285>,  <20.513126, 20.827236, 13.095326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.902582, 20.480787, 13.173285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.205612, 20.219902, 13.183861>,  <20.387430, 20.063372, 13.190206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.205612, 20.219902, 13.183861>,  <19.902582, 20.480787, 13.173285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.205612, 20.219902, 13.183861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204583, -0.198781, 0.958453,
		-0.619859, -0.731510, -0.284023,
		0.757576, -0.652212, 0.026438,
		20.432884, 20.024239, 13.191792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.595387, 19.914724, 13.500484>,  <19.902582, 20.480787, 13.173285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.595387, 19.914724, 13.500484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.991459, 19.899128, 13.554182>,  <20.229103, 19.889771, 13.586401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.991459, 19.899128, 13.554182>,  <19.595387, 19.914724, 13.500484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.991459, 19.899128, 13.554182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138403, -0.138392, 0.980659,
		-0.019658, -0.989610, -0.142430,
		0.990181, -0.038991, 0.134244,
		20.288513, 19.887430, 13.594456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.629887, 19.417784, 14.021400>,  <19.595387, 19.914724, 13.500484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.629887, 19.417784, 14.021400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.993610, 19.583694, 14.034784>,  <20.211843, 19.683241, 14.042814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.993610, 19.583694, 14.034784>,  <19.629887, 19.417784, 14.021400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.993610, 19.583694, 14.034784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042678, 0.012974, 0.999005,
		0.413930, -0.909830, 0.029499,
		0.909308, 0.414777, 0.033460,
		20.266403, 19.708128, 14.044823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.037010, 18.936321, 14.491036>,  <19.629887, 19.417784, 14.021400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.037010, 18.936321, 14.491036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.246124, 19.277237, 14.497894>,  <20.371593, 19.481787, 14.502008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.246124, 19.277237, 14.497894>,  <20.037010, 18.936321, 14.491036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.246124, 19.277237, 14.497894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015733, -0.029754, 0.999433,
		0.852318, -0.522221, -0.028964,
		0.522787, 0.852291, 0.017144,
		20.402960, 19.532925, 14.503037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.466112, 19.002010, 15.170315>,  <20.037010, 18.936321, 14.491036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.466112, 19.002010, 15.170315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.504890, 19.385273, 15.062582>,  <20.528158, 19.615231, 14.997943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.504890, 19.385273, 15.062582>,  <20.466112, 19.002010, 15.170315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.504890, 19.385273, 15.062582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070805, 0.263280, 0.962118,
		0.992768, -0.112343, -0.042318,
		0.096946, 0.958156, -0.269331,
		20.533974, 19.672720, 14.981783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.124601, 19.226334, 15.469766>,  <20.466112, 19.002010, 15.170315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.124601, 19.226334, 15.469766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.880341, 19.535316, 15.400009>,  <20.733784, 19.720707, 15.358155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.880341, 19.535316, 15.400009>,  <21.124601, 19.226334, 15.469766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.880341, 19.535316, 15.400009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153266, 0.331339, 0.930980,
		0.776926, 0.541776, -0.320724,
		-0.610651, 0.772459, -0.174390,
		20.697145, 19.767054, 15.347692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.403103, 19.782602, 15.721276>,  <21.124601, 19.226334, 15.469766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.403103, 19.782602, 15.721276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.021236, 19.899895, 15.700773>,  <20.792116, 19.970270, 15.688472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.021236, 19.899895, 15.700773>,  <21.403103, 19.782602, 15.721276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.021236, 19.899895, 15.700773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064040, 0.370469, 0.926634,
		0.290708, 0.881344, -0.372453,
		-0.954666, 0.293232, -0.051257,
		20.734837, 19.987864, 15.685396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.413643, 20.354689, 16.145536>,  <21.403103, 19.782602, 15.721276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.413643, 20.354689, 16.145536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.024437, 20.274216, 16.100344>,  <20.790913, 20.225933, 16.073229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.024437, 20.274216, 16.100344>,  <21.413643, 20.354689, 16.145536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.024437, 20.274216, 16.100344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173181, 0.313210, 0.933760,
		-0.152469, 0.928130, -0.339600,
		-0.973017, -0.201181, -0.112980,
		20.732533, 20.213861, 16.066450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.064688, 20.957674, 16.537210>,  <21.413643, 20.354689, 16.145536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.064688, 20.957674, 16.537210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.819603, 20.642433, 16.513622>,  <20.672552, 20.453289, 16.499470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.819603, 20.642433, 16.513622>,  <21.064688, 20.957674, 16.537210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.819603, 20.642433, 16.513622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375036, 0.224267, 0.899473,
		-0.695652, 0.573235, -0.432978,
		-0.612712, -0.788103, -0.058972,
		20.635790, 20.406002, 16.495932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.399151, 21.275791, 16.680490>,  <21.064688, 20.957674, 16.537210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.399151, 21.275791, 16.680490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.423561, 20.880280, 16.735027>,  <20.438208, 20.642973, 16.767750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.423561, 20.880280, 16.735027>,  <20.399151, 21.275791, 16.680490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.423561, 20.880280, 16.735027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567101, 0.078059, 0.819941,
		-0.821385, -0.127357, -0.555974,
		0.061027, -0.988781, 0.136340,
		20.441870, 20.583645, 16.775928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.646103, 20.964378, 16.709267>,  <20.399151, 21.275791, 16.680490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.646103, 20.964378, 16.709267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.900562, 20.727409, 16.906994>,  <20.053238, 20.585228, 17.025631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.900562, 20.727409, 16.906994>,  <19.646103, 20.964378, 16.709267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.900562, 20.727409, 16.906994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618486, -0.008506, 0.785749,
		-0.461293, -0.805581, -0.371817,
		0.636148, -0.592424, 0.494317,
		20.091406, 20.549683, 17.055288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.197111, 20.644869, 17.161400>,  <19.646103, 20.964378, 16.709267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.197111, 20.644869, 17.161400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.545788, 20.530846, 17.320847>,  <19.754993, 20.462431, 17.416515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.545788, 20.530846, 17.320847>,  <19.197111, 20.644869, 17.161400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.545788, 20.530846, 17.320847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454200, -0.164536, 0.875574,
		-0.184017, -0.944278, -0.272905,
		0.871688, -0.285074, 0.398613,
		19.807295, 20.445328, 17.440432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.030643, 19.924517, 17.580290>,  <19.197111, 20.644869, 17.161400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.030643, 19.924517, 17.580290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.369705, 20.066612, 17.737913>,  <19.573143, 20.151871, 17.832487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.369705, 20.066612, 17.737913>,  <19.030643, 19.924517, 17.580290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.369705, 20.066612, 17.737913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405984, -0.043840, 0.912828,
		0.341550, -0.933746, 0.107061,
		0.847656, 0.355241, 0.394060,
		19.624002, 20.173183, 17.856131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.179457, 19.578781, 18.277159>,  <19.030643, 19.924517, 17.580290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.179457, 19.578781, 18.277159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.379051, 19.924606, 18.253344>,  <19.498808, 20.132101, 18.239056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.379051, 19.924606, 18.253344>,  <19.179457, 19.578781, 18.277159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.379051, 19.924606, 18.253344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400726, 0.291102, 0.868722,
		0.768397, -0.409621, 0.491709,
		0.498984, 0.864563, -0.059536,
		19.528746, 20.183975, 18.235483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.674507, 19.610582, 18.958487>,  <19.179457, 19.578781, 18.277159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.674507, 19.610582, 18.958487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.586845, 19.967918, 18.801561>,  <19.534248, 20.182320, 18.707405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.586845, 19.967918, 18.801561>,  <19.674507, 19.610582, 18.958487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.586845, 19.967918, 18.801561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421628, 0.275897, 0.863777,
		0.879887, 0.354713, 0.316193,
		-0.219156, 0.893342, -0.392315,
		19.521099, 20.235922, 18.683867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.763123, 20.087284, 19.478848>,  <19.674507, 19.610582, 18.958487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.763123, 20.087284, 19.478848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.553055, 20.296402, 19.210257>,  <19.427013, 20.421873, 19.049103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.553055, 20.296402, 19.210257>,  <19.763123, 20.087284, 19.478848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.553055, 20.296402, 19.210257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504596, 0.444073, 0.740393,
		0.685257, 0.727659, 0.030584,
		-0.525172, 0.522793, -0.671478,
		19.395504, 20.453239, 19.008814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.804905, 20.781990, 19.752048>,  <19.763123, 20.087284, 19.478848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.804905, 20.781990, 19.752048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.485111, 20.760071, 19.512774>,  <19.293236, 20.746920, 19.369209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.485111, 20.760071, 19.512774>,  <19.804905, 20.781990, 19.752048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.485111, 20.760071, 19.512774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570962, 0.378718, 0.728406,
		0.186629, 0.923889, -0.334065,
		-0.799482, -0.054797, -0.598185,
		19.245266, 20.743631, 19.333319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.484823, 21.445724, 19.827557>,  <19.804905, 20.781990, 19.752048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.484823, 21.445724, 19.827557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.230354, 21.198372, 19.642998>,  <19.077673, 21.049959, 19.532263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.230354, 21.198372, 19.642998>,  <19.484823, 21.445724, 19.827557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.230354, 21.198372, 19.642998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708418, 0.231243, 0.666837,
		-0.305666, 0.751085, -0.585184,
		-0.636171, -0.618384, -0.461399,
		19.039503, 21.012857, 19.504578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.898386, 21.772511, 19.627974>,  <19.484823, 21.445724, 19.827557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.898386, 21.772511, 19.627974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.795578, 21.391365, 19.692467>,  <18.733894, 21.162678, 19.731163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.795578, 21.391365, 19.692467>,  <18.898386, 21.772511, 19.627974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.795578, 21.391365, 19.692467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810716, 0.303398, 0.500689,
		-0.526005, -0.002029, -0.850479,
		-0.257018, -0.952862, 0.161234,
		18.718473, 21.105507, 19.740837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.124016, 21.890635, 19.402975>,  <18.898386, 21.772511, 19.627974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.124016, 21.890635, 19.402975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.198273, 21.574387, 19.636370>,  <18.242826, 21.384638, 19.776407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.198273, 21.574387, 19.636370>,  <18.124016, 21.890635, 19.402975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.198273, 21.574387, 19.636370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784409, 0.238401, 0.572597,
		-0.591810, -0.563992, -0.575911,
		0.185643, -0.790618, 0.583488,
		18.253965, 21.337200, 19.811417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.502556, 21.648420, 19.524826>,  <18.124016, 21.890635, 19.402975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.502556, 21.648420, 19.524826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.697319, 21.445354, 19.809135>,  <17.814177, 21.323515, 19.979721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.697319, 21.445354, 19.809135>,  <17.502556, 21.648420, 19.524826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.697319, 21.445354, 19.809135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773036, 0.128363, 0.621240,
		-0.406618, -0.851939, -0.329942,
		0.486906, -0.507665, 0.710774,
		17.843391, 21.293055, 20.022367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.082569, 21.087181, 19.763592>,  <17.502556, 21.648420, 19.524826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.082569, 21.087181, 19.763592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.345703, 21.112392, 20.063799>,  <17.503584, 21.127520, 20.243923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.345703, 21.112392, 20.063799>,  <17.082569, 21.087181, 19.763592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.345703, 21.112392, 20.063799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750016, -0.036159, 0.660431,
		0.068766, -0.997356, 0.023488,
		0.657835, 0.063032, 0.750520,
		17.543055, 21.131302, 20.288956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.971626, 20.546299, 20.304529>,  <17.082569, 21.087181, 19.763592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.971626, 20.546299, 20.304529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.159019, 20.854019, 20.478289>,  <17.271456, 21.038651, 20.582544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.159019, 20.854019, 20.478289>,  <16.971626, 20.546299, 20.304529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.159019, 20.854019, 20.478289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667405, -0.013998, 0.744564,
		0.578873, -0.638736, 0.506875,
		0.468485, 0.769299, 0.434399,
		17.299564, 21.084808, 20.608608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.060894, 20.351845, 21.095560>,  <16.971626, 20.546299, 20.304529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.060894, 20.351845, 21.095560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.090405, 20.748974, 21.057913>,  <17.108110, 20.987251, 21.035324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.090405, 20.748974, 21.057913>,  <17.060894, 20.351845, 21.095560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.090405, 20.748974, 21.057913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541838, 0.119135, 0.831997,
		0.837238, -0.010388, 0.546739,
		0.073778, 0.992824, -0.094116,
		17.112537, 21.046822, 21.029678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.123203, 20.608522, 21.849632>,  <17.060894, 20.351845, 21.095560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.123203, 20.608522, 21.849632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.003555, 20.917610, 21.625692>,  <16.931767, 21.103064, 21.491329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.003555, 20.917610, 21.625692>,  <17.123203, 20.608522, 21.849632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.003555, 20.917610, 21.625692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599617, 0.304193, 0.740220,
		0.742285, 0.557109, 0.372346,
		-0.299119, 0.772720, -0.559850,
		16.913820, 21.149426, 21.457737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.277208, 21.291494, 22.243343>,  <17.123203, 20.608522, 21.849632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.277208, 21.291494, 22.243343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.968384, 21.289925, 21.989128>,  <16.783089, 21.288982, 21.836599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.968384, 21.289925, 21.989128>,  <17.277208, 21.291494, 22.243343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.968384, 21.289925, 21.989128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612286, 0.272672, 0.742129,
		0.170383, 0.962099, -0.212921,
		-0.772059, -0.003923, -0.635538,
		16.736767, 21.288748, 21.798466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.784727, 21.685932, 22.476902>,  <17.277208, 21.291494, 22.243343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.784727, 21.685932, 22.476902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.562584, 21.472034, 22.222147>,  <16.429298, 21.343695, 22.069294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.562584, 21.472034, 22.222147>,  <16.784727, 21.685932, 22.476902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.562584, 21.472034, 22.222147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791553, 0.105071, 0.602001,
		-0.254999, 0.838455, -0.481632,
		-0.555356, -0.534746, -0.636888,
		16.395977, 21.311611, 22.031080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.614367, 21.621990, 23.146435>,  <16.784727, 21.685932, 22.476902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.614367, 21.621990, 23.146435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.321739, 21.760281, 22.911390>,  <16.146164, 21.843254, 22.770365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.321739, 21.760281, 22.911390>,  <16.614367, 21.621990, 23.146435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.321739, 21.760281, 22.911390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677607, -0.273601, 0.682636,
		0.075233, 0.897562, 0.434422,
		-0.731566, 0.345724, -0.587610,
		16.102270, 21.863998, 22.735107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.129063, 22.104506, 23.611437>,  <16.614367, 21.621990, 23.146435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.129063, 22.104506, 23.611437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.980708, 21.936893, 23.279928>,  <15.891696, 21.836327, 23.081024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.980708, 21.936893, 23.279928>,  <16.129063, 22.104506, 23.611437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.980708, 21.936893, 23.279928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747475, -0.394901, 0.534167,
		-0.551113, 0.817599, -0.166751,
		-0.370884, -0.419029, -0.828770,
		15.869443, 21.811184, 23.031298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.411769, 22.173851, 23.662071>,  <16.129063, 22.104506, 23.611437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.411769, 22.173851, 23.662071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.491443, 21.867943, 23.416975>,  <15.539248, 21.684399, 23.269917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.491443, 21.867943, 23.416975>,  <15.411769, 22.173851, 23.662071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.491443, 21.867943, 23.416975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564405, -0.600679, 0.566243,
		-0.801107, 0.233047, -0.551287,
		0.199185, -0.764770, -0.612741,
		15.551198, 21.638512, 23.233152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.845089, 21.849373, 23.553658>,  <15.411769, 22.173851, 23.662071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.845089, 21.849373, 23.553658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.202373, 21.674854, 23.597147>,  <15.416742, 21.570143, 23.623241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.202373, 21.674854, 23.597147>,  <14.845089, 21.849373, 23.553658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.202373, 21.674854, 23.597147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324051, -0.456994, 0.828340,
		-0.311717, -0.775114, -0.549574,
		0.893209, -0.436298, 0.108724,
		15.470335, 21.543964, 23.629765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.197690, 22.034472, 22.888231>,  <14.845089, 21.849373, 23.553658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.197690, 22.034472, 22.888231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.838296, 22.209934, 22.881287>,  <14.622660, 22.315212, 22.877119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.838296, 22.209934, 22.881287>,  <15.197690, 22.034472, 22.888231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.838296, 22.209934, 22.881287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202373, 0.378771, -0.903093,
		-0.389574, -0.814930, -0.429094,
		-0.898486, 0.438658, -0.017361,
		14.568750, 22.341532, 22.876078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.999419, 21.843128, 22.217556>,  <15.197690, 22.034472, 22.888231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.999419, 21.843128, 22.217556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.804904, 22.181030, 22.306917>,  <14.688194, 22.383772, 22.360535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.804904, 22.181030, 22.306917>,  <14.999419, 21.843128, 22.217556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.804904, 22.181030, 22.306917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252853, 0.380772, -0.889426,
		-0.836414, -0.376029, -0.398764,
		-0.486288, 0.844757, 0.223403,
		14.659018, 22.434458, 22.373938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.444807, 22.017588, 21.670767>,  <14.999419, 21.843128, 22.217556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.444807, 22.017588, 21.670767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.594071, 22.325779, 21.877501>,  <14.683630, 22.510693, 22.001541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.594071, 22.325779, 21.877501>,  <14.444807, 22.017588, 21.670767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.594071, 22.325779, 21.877501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398632, 0.369876, -0.839217,
		-0.837761, 0.519189, -0.169113,
		0.373161, 0.770477, 0.516833,
		14.706019, 22.556923, 22.032551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.193007, 22.657187, 21.478880>,  <14.444807, 22.017588, 21.670767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.193007, 22.657187, 21.478880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.566607, 22.710476, 21.611481>,  <14.790768, 22.742449, 21.691042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.566607, 22.710476, 21.611481>,  <14.193007, 22.657187, 21.478880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.566607, 22.710476, 21.611481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234994, 0.469830, -0.850904,
		-0.269109, 0.872646, 0.407516,
		0.934001, 0.133222, 0.331502,
		14.846807, 22.750443, 21.710932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.464629, 23.379810, 21.391970>,  <14.193007, 22.657187, 21.478880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.464629, 23.379810, 21.391970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.772101, 23.124146, 21.382147>,  <14.956585, 22.970747, 21.376253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.772101, 23.124146, 21.382147>,  <14.464629, 23.379810, 21.391970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.772101, 23.124146, 21.382147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306417, 0.401664, -0.863003,
		0.561461, 0.655850, 0.504601,
		0.768681, -0.639161, -0.024555,
		15.002706, 22.932398, 21.374781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.989477, 23.768444, 21.207479>,  <14.464629, 23.379810, 21.391970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.989477, 23.768444, 21.207479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.097497, 23.397045, 21.105524>,  <15.162309, 23.174206, 21.044352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.097497, 23.397045, 21.105524>,  <14.989477, 23.768444, 21.207479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.097497, 23.397045, 21.105524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273445, 0.327781, -0.904316,
		0.923201, 0.174513, 0.342410,
		0.270051, -0.928496, -0.254888,
		15.178513, 23.118496, 21.029058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.559723, 23.857937, 20.765642>,  <14.989477, 23.768444, 21.207479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.559723, 23.857937, 20.765642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.461732, 23.476704, 20.694513>,  <15.402937, 23.247963, 20.651836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.461732, 23.476704, 20.694513>,  <15.559723, 23.857937, 20.765642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.461732, 23.476704, 20.694513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265989, 0.110304, -0.957644,
		0.932328, -0.281900, 0.226488,
		-0.244977, -0.953082, -0.177822,
		15.388239, 23.190779, 20.641167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.090399, 23.415279, 20.600315>,  <15.559723, 23.857937, 20.765642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.090399, 23.415279, 20.600315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.800544, 23.208851, 20.417637>,  <15.626630, 23.084993, 20.308031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.800544, 23.208851, 20.417637>,  <16.090399, 23.415279, 20.600315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.800544, 23.208851, 20.417637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415314, 0.201797, -0.887013,
		0.549920, -0.832436, 0.068101,
		-0.724639, -0.516070, -0.456694,
		15.583152, 23.054029, 20.280628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.395203, 23.125900, 20.003464>,  <16.090399, 23.415279, 20.600315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.395203, 23.125900, 20.003464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.006001, 23.079983, 19.923386>,  <15.772479, 23.052433, 19.875340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.006001, 23.079983, 19.923386>,  <16.395203, 23.125900, 20.003464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.006001, 23.079983, 19.923386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181515, 0.155004, -0.971095,
		0.142501, -0.981223, -0.129984,
		-0.973009, -0.114788, -0.200195,
		15.714098, 23.045544, 19.863327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.289124, 22.623823, 19.605249>,  <16.395203, 23.125900, 20.003464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.289124, 22.623823, 19.605249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.968858, 22.853996, 19.538534>,  <15.776699, 22.992100, 19.498505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.968858, 22.853996, 19.538534>,  <16.289124, 22.623823, 19.605249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.968858, 22.853996, 19.538534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163273, -0.058279, -0.984858,
		-0.576438, -0.815771, -0.047291,
		-0.800663, 0.575431, -0.166788,
		15.728659, 23.026627, 19.488499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.901203, 22.322763, 19.054665>,  <16.289124, 22.623823, 19.605249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.901203, 22.322763, 19.054665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.724236, 22.681248, 19.041571>,  <15.618056, 22.896339, 19.033714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.724236, 22.681248, 19.041571>,  <15.901203, 22.322763, 19.054665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.724236, 22.681248, 19.041571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053890, -0.063003, -0.996557,
		-0.895189, -0.439129, 0.076171,
		-0.442416, 0.896212, -0.032735,
		15.591512, 22.950111, 19.031750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.457570, 22.157167, 18.547190>,  <15.901203, 22.322763, 19.054665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.457570, 22.157167, 18.547190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.507997, 22.550011, 18.603151>,  <15.538253, 22.785717, 18.636728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.507997, 22.550011, 18.603151>,  <15.457570, 22.157167, 18.547190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.507997, 22.550011, 18.603151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018126, 0.138724, -0.990165,
		-0.991856, 0.127362, -0.000313,
		0.126066, 0.982107, 0.139903,
		15.545816, 22.844643, 18.645123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.084654, 22.410250, 18.032410>,  <15.457570, 22.157167, 18.547190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.084654, 22.410250, 18.032410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.362742, 22.681347, 18.128187>,  <15.529595, 22.844006, 18.185654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.362742, 22.681347, 18.128187>,  <15.084654, 22.410250, 18.032410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.362742, 22.681347, 18.128187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090900, 0.247548, -0.964602,
		-0.713026, 0.692377, 0.110494,
		0.695220, 0.677742, 0.239445,
		15.571308, 22.884670, 18.200022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.841031, 22.997520, 17.660654>,  <15.084654, 22.410250, 18.032410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.841031, 22.997520, 17.660654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.220838, 23.088104, 17.747494>,  <15.448722, 23.142454, 17.799599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.220838, 23.088104, 17.747494>,  <14.841031, 22.997520, 17.660654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.220838, 23.088104, 17.747494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167517, 0.219112, -0.961212,
		-0.265245, 0.949055, 0.170115,
		0.949517, 0.226459, 0.217102,
		15.505692, 23.156042, 17.812624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.120471, 23.615692, 17.217760>,  <14.841031, 22.997520, 17.660654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.120471, 23.615692, 17.217760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.460204, 23.446854, 17.344547>,  <15.664044, 23.345551, 17.420620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.460204, 23.446854, 17.344547>,  <15.120471, 23.615692, 17.217760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.460204, 23.446854, 17.344547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389270, 0.095281, -0.916183,
		0.356514, 0.901531, 0.245233,
		0.849333, -0.422094, 0.316970,
		15.715004, 23.320225, 17.439638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.638541, 23.993256, 16.894871>,  <15.120471, 23.615692, 17.217760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.638541, 23.993256, 16.894871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.843049, 23.677238, 17.030184>,  <15.965754, 23.487629, 17.111372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.843049, 23.677238, 17.030184>,  <15.638541, 23.993256, 16.894871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.843049, 23.677238, 17.030184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521898, -0.027315, -0.852571,
		0.682808, 0.612442, 0.398357,
		0.511269, -0.790043, 0.338283,
		15.996429, 23.440226, 17.131668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.452429, 24.091835, 16.821161>,  <15.638541, 23.993256, 16.894871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.452429, 24.091835, 16.821161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.388012, 23.697056, 16.821972>,  <16.349361, 23.460188, 16.822458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.388012, 23.697056, 16.821972>,  <16.452429, 24.091835, 16.821161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.388012, 23.697056, 16.821972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569243, -0.094562, -0.816713,
		0.806243, -0.130369, 0.577041,
		-0.161041, -0.986946, 0.002028,
		16.339699, 23.400972, 16.822580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.132204, 23.814856, 16.792900>,  <16.452429, 24.091835, 16.821161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.132204, 23.814856, 16.792900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.869446, 23.533287, 16.684837>,  <16.711792, 23.364346, 16.620001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.869446, 23.533287, 16.684837>,  <17.132204, 23.814856, 16.792900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.869446, 23.533287, 16.684837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618637, -0.298365, -0.726819,
		0.431019, -0.644572, 0.631466,
		-0.656894, -0.703921, -0.270156,
		16.672377, 23.322111, 16.603790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.599155, 23.212751, 16.782907>,  <17.132204, 23.814856, 16.792900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.599155, 23.212751, 16.782907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.265678, 23.115742, 16.584459>,  <17.065592, 23.057535, 16.465389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.265678, 23.115742, 16.584459>,  <17.599155, 23.212751, 16.782907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.265678, 23.115742, 16.584459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551505, -0.319703, -0.770475,
		0.028248, -0.915954, 0.400288,
		-0.833693, -0.242526, -0.496122,
		17.015570, 23.042984, 16.435623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.717587, 22.567499, 16.513958>,  <17.599155, 23.212751, 16.782907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.717587, 22.567499, 16.513958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.415474, 22.696098, 16.285507>,  <17.234207, 22.773258, 16.148436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.415474, 22.696098, 16.285507>,  <17.717587, 22.567499, 16.513958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.415474, 22.696098, 16.285507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519025, -0.238706, -0.820751,
		-0.400204, -0.916327, 0.013422,
		-0.755281, 0.321501, -0.571128,
		17.188889, 22.792549, 16.114168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.597940, 21.993441, 16.065929>,  <17.717587, 22.567499, 16.513958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.597940, 21.993441, 16.065929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.455616, 22.320122, 15.884205>,  <17.370222, 22.516130, 15.775169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.455616, 22.320122, 15.884205>,  <17.597940, 21.993441, 16.065929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.455616, 22.320122, 15.884205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343716, -0.337695, -0.876254,
		-0.869057, -0.467933, -0.160559,
		-0.355809, 0.816701, -0.454313,
		17.348873, 22.565132, 15.747911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.136406, 21.745865, 15.430073>,  <17.597940, 21.993441, 16.065929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.136406, 21.745865, 15.430073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.237652, 22.127296, 15.364811>,  <17.298399, 22.356155, 15.325654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.237652, 22.127296, 15.364811>,  <17.136406, 21.745865, 15.430073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.237652, 22.127296, 15.364811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338219, -0.245226, -0.908555,
		-0.906389, 0.174788, -0.384589,
		0.253116, 0.953579, -0.163154,
		17.313587, 22.413370, 15.315865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.866377, 21.976095, 14.816814>,  <17.136406, 21.745865, 15.430073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.866377, 21.976095, 14.816814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.123779, 22.277950, 14.868076>,  <17.278221, 22.459063, 14.898833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.123779, 22.277950, 14.868076>,  <16.866377, 21.976095, 14.816814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.123779, 22.277950, 14.868076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267206, -0.064575, -0.961473,
		-0.717288, 0.652957, -0.243198,
		0.643505, 0.754637, 0.128156,
		17.316832, 22.504341, 14.906523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.816406, 22.296293, 14.256712>,  <16.866377, 21.976095, 14.816814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.816406, 22.296293, 14.256712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.157204, 22.456249, 14.391886>,  <17.361681, 22.552223, 14.472990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.157204, 22.456249, 14.391886>,  <16.816406, 22.296293, 14.256712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.157204, 22.456249, 14.391886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366997, 0.004181, -0.930213,
		-0.373396, 0.916554, -0.143196,
		0.851991, 0.399890, 0.337933,
		17.412802, 22.576216, 14.493266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860975, 22.951248, 13.990920>,  <16.816406, 22.296293, 14.256712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.860975, 22.951248, 13.990920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.240955, 22.849087, 14.062874>,  <17.468945, 22.787790, 14.106047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.240955, 22.849087, 14.062874>,  <16.860975, 22.951248, 13.990920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.240955, 22.849087, 14.062874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209721, 0.094618, -0.973172,
		0.231533, 0.962193, 0.143446,
		0.949952, -0.255405, 0.179885,
		17.525942, 22.772465, 14.116839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.286194, 23.475620, 13.729989>,  <16.860975, 22.951248, 13.990920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.286194, 23.475620, 13.729989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.518810, 23.150673, 13.747276>,  <17.658381, 22.955706, 13.757648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.518810, 23.150673, 13.747276>,  <17.286194, 23.475620, 13.729989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.518810, 23.150673, 13.747276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337526, 0.192602, -0.921402,
		0.740192, 0.550422, 0.386201,
		0.581542, -0.812367, 0.043219,
		17.693274, 22.906963, 13.760242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.845789, 23.661297, 13.481492>,  <17.286194, 23.475620, 13.729989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.845789, 23.661297, 13.481492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.885246, 23.266613, 13.429848>,  <17.908920, 23.029802, 13.398861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.885246, 23.266613, 13.429848>,  <17.845789, 23.661297, 13.481492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.885246, 23.266613, 13.429848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501130, 0.161347, -0.850197,
		0.859731, 0.019163, 0.510387,
		0.098642, -0.986712, -0.129111,
		17.914839, 22.970600, 13.391114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.550428, 23.538673, 13.225068>,  <17.845789, 23.661297, 13.481492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.550428, 23.538673, 13.225068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.352753, 23.198784, 13.151587>,  <18.234148, 22.994850, 13.107497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.352753, 23.198784, 13.151587>,  <18.550428, 23.538673, 13.225068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.352753, 23.198784, 13.151587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483861, -0.093285, -0.870159,
		0.722258, -0.518909, 0.457249,
		-0.494188, -0.849724, -0.183704,
		18.204496, 22.943867, 13.096476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.065950, 22.992222, 12.962791>,  <18.550428, 23.538673, 13.225068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.065950, 22.992222, 12.962791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.703659, 22.861130, 12.855275>,  <18.486284, 22.782475, 12.790766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.703659, 22.861130, 12.855275>,  <19.065950, 22.992222, 12.962791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.703659, 22.861130, 12.855275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291108, -0.020057, -0.956480,
		0.308075, -0.944559, 0.113571,
		-0.905730, -0.327728, -0.268790,
		18.431940, 22.762812, 12.774638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.192234, 22.471024, 12.540279>,  <19.065950, 22.992222, 12.962791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.192234, 22.471024, 12.540279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.820583, 22.593399, 12.457216>,  <18.597593, 22.666824, 12.407378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.820583, 22.593399, 12.457216>,  <19.192234, 22.471024, 12.540279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.820583, 22.593399, 12.457216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268985, 0.173899, -0.947315,
		-0.253711, -0.936034, -0.243868,
		-0.929127, 0.305941, -0.207659,
		18.541845, 22.685181, 12.394918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.042692, 22.186340, 11.912828>,  <19.192234, 22.471024, 12.540279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.042692, 22.186340, 11.912828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.775742, 22.481720, 11.951410>,  <18.615572, 22.658947, 11.974559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.775742, 22.481720, 11.951410>,  <19.042692, 22.186340, 11.912828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.775742, 22.481720, 11.951410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026074, 0.106268, -0.993996,
		-0.744265, -0.665882, -0.051667,
		-0.667375, 0.738449, 0.096454,
		18.575529, 22.703255, 11.980347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.530245, 22.151159, 11.380642>,  <19.042692, 22.186340, 11.912828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.530245, 22.151159, 11.380642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.500336, 22.537170, 11.481145>,  <18.482391, 22.768778, 11.541447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.500336, 22.537170, 11.481145>,  <18.530245, 22.151159, 11.380642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.500336, 22.537170, 11.481145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050655, 0.255312, -0.965531,
		-0.995913, -0.059466, -0.067974,
		-0.074771, 0.965028, 0.251256,
		18.477905, 22.826679, 11.556521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.030029, 22.420050, 10.933467>,  <18.530245, 22.151159, 11.380642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.030029, 22.420050, 10.933467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.247204, 22.736202, 11.046970>,  <18.377508, 22.925894, 11.115072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.247204, 22.736202, 11.046970>,  <18.030029, 22.420050, 10.933467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.247204, 22.736202, 11.046970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206232, 0.202060, -0.957413,
		-0.814058, 0.578333, -0.053297,
		0.542934, 0.790381, 0.283760,
		18.410084, 22.973316, 11.132098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.833572, 22.887945, 10.552048>,  <18.030029, 22.420050, 10.933467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.833572, 22.887945, 10.552048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.183762, 23.040340, 10.670972>,  <18.393875, 23.131777, 10.742326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.183762, 23.040340, 10.670972>,  <17.833572, 22.887945, 10.552048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.183762, 23.040340, 10.670972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209735, 0.254713, -0.943998,
		-0.435379, 0.888803, 0.143089,
		0.875475, 0.380986, 0.297309,
		18.446404, 23.154636, 10.760164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.956013, 23.471066, 10.054475>,  <17.833572, 22.887945, 10.552048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.956013, 23.471066, 10.054475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.310314, 23.407589, 10.228951>,  <18.522894, 23.369503, 10.333636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.310314, 23.407589, 10.228951>,  <17.956013, 23.471066, 10.054475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.310314, 23.407589, 10.228951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451299, 0.074754, -0.889236,
		0.108508, 0.984494, 0.137831,
		0.885751, -0.158692, 0.436190,
		18.576040, 23.359982, 10.359807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.306585, 23.960138, 9.819676>,  <17.956013, 23.471066, 10.054475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.306585, 23.960138, 9.819676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.588802, 23.696922, 9.924893>,  <18.758133, 23.538992, 9.988024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.588802, 23.696922, 9.924893>,  <18.306585, 23.960138, 9.819676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.588802, 23.696922, 9.924893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533236, 0.248479, -0.808652,
		0.466766, 0.710802, 0.526204,
		0.705542, -0.658042, 0.263043,
		18.800465, 23.499510, 10.003806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.865791, 24.414040, 9.703692>,  <18.306585, 23.960138, 9.819676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.865791, 24.414040, 9.703692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.968536, 24.027584, 9.713457>,  <19.030184, 23.795710, 9.719316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.968536, 24.027584, 9.713457>,  <18.865791, 24.414040, 9.703692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.968536, 24.027584, 9.713457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563886, 0.129308, -0.815667,
		0.784892, 0.223278, 0.578006,
		0.256861, -0.966140, 0.024411,
		19.045595, 23.737741, 9.720780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.646585, 24.386717, 9.634769>,  <18.865791, 24.414040, 9.703692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.646585, 24.386717, 9.634769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.498299, 24.048172, 9.481806>,  <19.409327, 23.845045, 9.390028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.498299, 24.048172, 9.481806>,  <19.646585, 24.386717, 9.634769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.498299, 24.048172, 9.481806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575371, 0.113924, -0.809919,
		0.729052, -0.520278, 0.444740,
		-0.370716, -0.846364, -0.382409,
		19.387083, 23.794262, 9.367083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.257776, 24.025240, 9.390847>,  <19.646585, 24.386717, 9.634769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.257776, 24.025240, 9.390847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.942780, 23.870060, 9.199286>,  <19.753780, 23.776953, 9.084349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.942780, 23.870060, 9.199286>,  <20.257776, 24.025240, 9.390847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.942780, 23.870060, 9.199286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506819, 0.034524, -0.861361,
		0.350697, -0.921035, 0.169432,
		-0.787494, -0.387948, -0.478905,
		19.706532, 23.753675, 9.055614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.587557, 23.559755, 9.019692>,  <20.257776, 24.025240, 9.390847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.587557, 23.559755, 9.019692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.220364, 23.560646, 8.861047>,  <20.000048, 23.561180, 8.765860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.220364, 23.560646, 8.861047>,  <20.587557, 23.559755, 9.019692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.220364, 23.560646, 8.861047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395990, -0.051283, -0.916822,
		-0.022379, -0.998682, 0.046196,
		-0.917982, 0.002225, -0.396615,
		19.944969, 23.561314, 8.742063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.508995, 23.040817, 8.552587>,  <20.587557, 23.559755, 9.019692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.508995, 23.040817, 8.552587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.245628, 23.312855, 8.423616>,  <20.087608, 23.476078, 8.346234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.245628, 23.312855, 8.423616>,  <20.508995, 23.040817, 8.552587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.245628, 23.312855, 8.423616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151633, -0.299741, -0.941893,
		-0.737219, -0.669050, 0.094231,
		-0.658419, 0.680093, -0.322425,
		20.048103, 23.516882, 8.326889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.006289, 22.576326, 8.238907>,  <20.508995, 23.040817, 8.552587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.006289, 22.576326, 8.238907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.963047, 22.943455, 8.086108>,  <19.937101, 23.163731, 7.994429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.963047, 22.943455, 8.086108>,  <20.006289, 22.576326, 8.238907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.963047, 22.943455, 8.086108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171810, -0.361217, -0.916517,
		-0.979181, -0.164711, -0.118641,
		-0.108106, 0.917819, -0.381996,
		19.930614, 23.218801, 7.971509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.581099, 22.489113, 7.703103>,  <20.006289, 22.576326, 8.238907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.581099, 22.489113, 7.703103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.769707, 22.838100, 7.651775>,  <19.882872, 23.047493, 7.620979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.769707, 22.838100, 7.651775>,  <19.581099, 22.489113, 7.703103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.769707, 22.838100, 7.651775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163258, -0.229358, -0.959553,
		-0.866611, 0.431502, -0.250585,
		0.471522, 0.872469, -0.128318,
		19.911163, 23.099840, 7.613280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.248402, 22.756088, 7.144027>,  <19.581099, 22.489113, 7.703103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.248402, 22.756088, 7.144027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.599827, 22.946312, 7.161767>,  <19.810682, 23.060446, 7.172411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.599827, 22.946312, 7.161767>,  <19.248402, 22.756088, 7.144027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.599827, 22.946312, 7.161767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048652, 0.003265, -0.998811,
		-0.475139, 0.879677, -0.020268,
		0.878565, 0.475560, 0.044349,
		19.863396, 23.088980, 7.175072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.710058, 22.841084, 6.754241>,  <19.248402, 22.756088, 7.144027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.710058, 22.841084, 6.754241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.354794, 22.731762, 6.606470>,  <18.141636, 22.666170, 6.517807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.354794, 22.731762, 6.606470>,  <18.710058, 22.841084, 6.754241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.354794, 22.731762, 6.606470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452114, 0.375816, 0.808922,
		-0.082243, 0.885476, -0.457349,
		-0.888160, -0.273302, -0.369428,
		18.088345, 22.649771, 6.495642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.263237, 23.431339, 6.919597>,  <18.710058, 22.841084, 6.754241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.263237, 23.431339, 6.919597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.023075, 23.126144, 6.823792>,  <17.878979, 22.943027, 6.766310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.023075, 23.126144, 6.823792>,  <18.263237, 23.431339, 6.919597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.023075, 23.126144, 6.823792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532016, 0.157489, 0.831959,
		-0.597054, 0.626936, -0.500479,
		-0.600405, -0.762987, -0.239510,
		17.842955, 22.897249, 6.751939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.616852, 23.688457, 6.997248>,  <18.263237, 23.431339, 6.919597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.616852, 23.688457, 6.997248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.584637, 23.290543, 7.022275>,  <17.565308, 23.051794, 7.037291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.584637, 23.290543, 7.022275>,  <17.616852, 23.688457, 6.997248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.584637, 23.290543, 7.022275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595772, 0.098368, 0.797107,
		-0.799105, 0.026920, -0.600588,
		-0.080536, -0.994786, 0.062568,
		17.560476, 22.992107, 7.041045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.887781, 23.604731, 7.106806>,  <17.616852, 23.688457, 6.997248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.887781, 23.604731, 7.106806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.076508, 23.274075, 7.229479>,  <17.189743, 23.075680, 7.303082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.076508, 23.274075, 7.229479>,  <16.887781, 23.604731, 7.106806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.076508, 23.274075, 7.229479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581734, -0.030484, 0.812807,
		-0.662551, -0.561903, -0.495269,
		0.471816, -0.826641, 0.306681,
		17.218052, 23.026083, 7.321483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.260529, 23.157148, 7.234978>,  <16.887781, 23.604731, 7.106806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.260529, 23.157148, 7.234978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.586040, 23.051933, 7.442275>,  <16.781347, 22.988804, 7.566653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.586040, 23.051933, 7.442275>,  <16.260529, 23.157148, 7.234978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.586040, 23.051933, 7.442275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519858, 0.069211, 0.851444,
		-0.259830, -0.962300, -0.080420,
		0.813779, -0.263038, 0.518242,
		16.830173, 22.973022, 7.597748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.113503, 22.581219, 7.661748>,  <16.260529, 23.157148, 7.234978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.113503, 22.581219, 7.661748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.424824, 22.741711, 7.854936>,  <16.611616, 22.838005, 7.970848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.424824, 22.741711, 7.854936>,  <16.113503, 22.581219, 7.661748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.424824, 22.741711, 7.854936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429921, -0.220065, 0.875637,
		0.457617, -0.889149, 0.001221,
		0.778302, 0.401231, 0.482969,
		16.658314, 22.862080, 7.999826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.121859, 22.241190, 8.318216>,  <16.113503, 22.581219, 7.661748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.121859, 22.241190, 8.318216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.327618, 22.584141, 8.325099>,  <16.451073, 22.789911, 8.329228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.327618, 22.584141, 8.325099>,  <16.121859, 22.241190, 8.318216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.327618, 22.584141, 8.325099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261833, 0.137921, 0.955207,
		0.816602, -0.495861, 0.295437,
		0.514397, 0.857380, 0.017206,
		16.481937, 22.841354, 8.330261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.563005, 22.124113, 8.861033>,  <16.121859, 22.241190, 8.318216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.563005, 22.124113, 8.861033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.550972, 22.518120, 8.793113>,  <16.543751, 22.754524, 8.752360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.550972, 22.518120, 8.793113>,  <16.563005, 22.124113, 8.861033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.550972, 22.518120, 8.793113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221794, 0.159065, 0.962032,
		0.974629, 0.066605, 0.213685,
		-0.030086, 0.985019, -0.169802,
		16.541946, 22.813625, 8.742172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.872208, 22.409204, 9.522718>,  <16.563005, 22.124113, 8.861033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.872208, 22.409204, 9.522718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.643551, 22.692741, 9.357423>,  <16.506357, 22.862864, 9.258245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.643551, 22.692741, 9.357423>,  <16.872208, 22.409204, 9.522718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.643551, 22.692741, 9.357423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384668, 0.213335, 0.898064,
		0.724744, 0.672332, 0.150717,
		-0.571644, 0.708842, -0.413238,
		16.472057, 22.905394, 9.233452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.880615, 22.847843, 10.043179>,  <16.872208, 22.409204, 9.522718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.880615, 22.847843, 10.043179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.586853, 22.963127, 9.797388>,  <16.410595, 23.032297, 9.649914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.586853, 22.963127, 9.797388>,  <16.880615, 22.847843, 10.043179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.586853, 22.963127, 9.797388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532633, 0.316387, 0.784985,
		0.420652, 0.903789, -0.078848,
		-0.734407, 0.288209, -0.614477,
		16.366531, 23.049589, 9.613045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.730803, 23.523594, 10.342709>,  <16.880615, 22.847843, 10.043179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.730803, 23.523594, 10.342709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.410694, 23.390884, 10.142911>,  <16.218630, 23.311258, 10.023032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.410694, 23.390884, 10.142911>,  <16.730803, 23.523594, 10.342709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.410694, 23.390884, 10.142911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591709, 0.301890, 0.747491,
		-0.097204, 0.893750, -0.437906,
		-0.800270, -0.331773, -0.499495,
		16.170612, 23.291353, 9.993062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.226748, 23.990541, 10.430445>,  <16.730803, 23.523594, 10.342709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.226748, 23.990541, 10.430445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.017765, 23.665752, 10.326339>,  <15.892376, 23.470879, 10.263875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.017765, 23.665752, 10.326339>,  <16.226748, 23.990541, 10.430445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.017765, 23.665752, 10.326339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609323, 0.142014, 0.780101,
		-0.596461, 0.566153, -0.568950,
		-0.522456, -0.811974, -0.260264,
		15.861029, 23.422159, 10.248260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.441034, 24.243027, 10.429210>,  <16.226748, 23.990541, 10.430445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.441034, 24.243027, 10.429210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.482202, 23.848164, 10.478078>,  <15.506902, 23.611246, 10.507399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.482202, 23.848164, 10.478078>,  <15.441034, 24.243027, 10.429210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.482202, 23.848164, 10.478078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489631, 0.056634, 0.870088,
		-0.865834, -0.149367, -0.477515,
		0.102919, -0.987159, 0.122170,
		15.513078, 23.552015, 10.514729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.705333, 24.022985, 10.584465>,  <15.441034, 24.243027, 10.429210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.705333, 24.022985, 10.584465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.982921, 23.770519, 10.723050>,  <15.149473, 23.619040, 10.806201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.982921, 23.770519, 10.723050>,  <14.705333, 24.022985, 10.584465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.982921, 23.770519, 10.723050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579214, -0.203553, 0.789353,
		-0.427688, -0.748463, -0.506839,
		0.693970, -0.631165, 0.346463,
		15.191112, 23.581169, 10.826989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.293369, 23.372721, 10.832410>,  <14.705333, 24.022985, 10.584465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.293369, 23.372721, 10.832410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.624288, 23.323303, 11.051615>,  <14.822839, 23.293653, 11.183138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.624288, 23.323303, 11.051615>,  <14.293369, 23.372721, 10.832410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.624288, 23.323303, 11.051615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560552, -0.117483, 0.819743,
		-0.036887, -0.985361, -0.166443,
		0.827297, -0.123538, 0.548013,
		14.872477, 23.286240, 11.216019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.089025, 22.969616, 11.369967>,  <14.293369, 23.372721, 10.832410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.089025, 22.969616, 11.369967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.437032, 23.075405, 11.536400>,  <14.645836, 23.138878, 11.636259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.437032, 23.075405, 11.536400>,  <14.089025, 22.969616, 11.369967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.437032, 23.075405, 11.536400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396017, -0.127811, 0.909305,
		0.293666, -0.955886, -0.006462,
		0.870018, 0.264473, 0.416081,
		14.698037, 23.154747, 11.661224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.087345, 22.536808, 11.957057>,  <14.089025, 22.969616, 11.369967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.087345, 22.536808, 11.957057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.366677, 22.814079, 12.028434>,  <14.534277, 22.980442, 12.071259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.366677, 22.814079, 12.028434>,  <14.087345, 22.536808, 11.957057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.366677, 22.814079, 12.028434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069864, -0.182099, 0.980795,
		0.712358, -0.697386, -0.078737,
		0.698330, 0.693176, 0.178442,
		14.576177, 23.022032, 12.081966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.547355, 22.189306, 12.294832>,  <14.087345, 22.536808, 11.957057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.547355, 22.189306, 12.294832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.596591, 22.576286, 12.383277>,  <14.626133, 22.808474, 12.436343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.596591, 22.576286, 12.383277>,  <14.547355, 22.189306, 12.294832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.596591, 22.576286, 12.383277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051564, -0.216270, 0.974971,
		0.991055, -0.131411, 0.023265,
		0.123091, 0.967449, 0.221111,
		14.633518, 22.866522, 12.449611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.016762, 22.143705, 12.754336>,  <14.547355, 22.189306, 12.294832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.016762, 22.143705, 12.754336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.848676, 22.503571, 12.801703>,  <14.747824, 22.719490, 12.830124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.848676, 22.503571, 12.801703>,  <15.016762, 22.143705, 12.754336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.848676, 22.503571, 12.801703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088745, -0.170619, 0.981333,
		0.903075, 0.401862, 0.151537,
		-0.420215, 0.899665, 0.118419,
		14.722611, 22.773470, 12.837229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.350799, 22.444586, 13.284919>,  <15.016762, 22.143705, 12.754336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.350799, 22.444586, 13.284919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.006904, 22.645447, 13.247618>,  <14.800567, 22.765963, 13.225237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.006904, 22.645447, 13.247618>,  <15.350799, 22.444586, 13.284919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.006904, 22.645447, 13.247618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042952, 0.110849, 0.992909,
		0.508927, 0.857646, -0.073733,
		-0.859737, 0.502151, -0.093252,
		14.748982, 22.796093, 13.219642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.435756, 23.133396, 13.745473>,  <15.350799, 22.444586, 13.284919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.435756, 23.133396, 13.745473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.055667, 23.012299, 13.716017>,  <14.827614, 22.939640, 13.698343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.055667, 23.012299, 13.716017>,  <15.435756, 23.133396, 13.745473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.055667, 23.012299, 13.716017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042161, -0.109236, 0.993121,
		-0.308707, 0.946791, 0.091035,
		-0.950222, -0.302745, -0.073640,
		14.770600, 22.921474, 13.693925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.090295, 23.416174, 14.335264>,  <15.435756, 23.133396, 13.745473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.090295, 23.416174, 14.335264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.836160, 23.126781, 14.227251>,  <14.683679, 22.953146, 14.162443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.836160, 23.126781, 14.227251>,  <15.090295, 23.416174, 14.335264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.836160, 23.126781, 14.227251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173177, -0.207287, 0.962830,
		-0.752566, 0.658486, 0.006407,
		-0.635339, -0.723483, -0.270032,
		14.645558, 22.909737, 14.146241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.664686, 23.391582, 14.897309>,  <15.090295, 23.416174, 14.335264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.664686, 23.391582, 14.897309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.588656, 23.043732, 14.715046>,  <14.543038, 22.835022, 14.605688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.588656, 23.043732, 14.715046>,  <14.664686, 23.391582, 14.897309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.588656, 23.043732, 14.715046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088513, -0.447050, 0.890119,
		-0.977771, 0.209521, 0.008000,
		-0.190075, -0.869624, -0.455658,
		14.531634, 22.782845, 14.578348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.166468, 23.096081, 15.252828>,  <14.664686, 23.391582, 14.897309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.166468, 23.096081, 15.252828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.335574, 22.795815, 15.049744>,  <14.437038, 22.615654, 14.927893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.335574, 22.795815, 15.049744>,  <14.166468, 23.096081, 15.252828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.335574, 22.795815, 15.049744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103517, -0.596574, 0.795854,
		-0.900308, -0.283903, -0.329917,
		0.422765, -0.750666, -0.507711,
		14.462404, 22.570616, 14.897430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.720305, 22.554770, 15.278142>,  <14.166468, 23.096081, 15.252828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.720305, 22.554770, 15.278142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.076936, 22.376850, 15.244089>,  <14.290914, 22.270098, 15.223658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.076936, 22.376850, 15.244089>,  <13.720305, 22.554770, 15.278142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.076936, 22.376850, 15.244089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187708, -0.534031, 0.824364,
		-0.412137, -0.719004, -0.559622,
		0.891576, -0.444797, -0.085131,
		14.344408, 22.243410, 15.218550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.662990, 21.816023, 15.573194>,  <13.720305, 22.554770, 15.278142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.662990, 21.816023, 15.573194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.057658, 21.880966, 15.568832>,  <14.294459, 21.919933, 15.566216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.057658, 21.880966, 15.568832>,  <13.662990, 21.816023, 15.573194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.057658, 21.880966, 15.568832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081961, -0.437958, 0.895252,
		0.140578, -0.884213, -0.445427,
		0.986671, 0.162360, -0.010903,
		14.353660, 21.929674, 15.565561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.030018, 21.211575, 15.711986>,  <13.662990, 21.816023, 15.573194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.030018, 21.211575, 15.711986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.240449, 21.519920, 15.855658>,  <14.366708, 21.704927, 15.941860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.240449, 21.519920, 15.855658>,  <14.030018, 21.211575, 15.711986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.240449, 21.519920, 15.855658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178730, -0.312697, 0.932886,
		0.831443, -0.554967, -0.026726,
		0.526078, 0.770865, 0.359179,
		14.398273, 21.751181, 15.963411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.582829, 20.906536, 16.096025>,  <14.030018, 21.211575, 15.711986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.582829, 20.906536, 16.096025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.544358, 21.276310, 16.243629>,  <14.521276, 21.498175, 16.332191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.544358, 21.276310, 16.243629>,  <14.582829, 20.906536, 16.096025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.544358, 21.276310, 16.243629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015391, -0.372065, 0.928079,
		0.995245, 0.083580, 0.050012,
		-0.096177, 0.924436, 0.369009,
		14.515505, 21.553640, 16.354332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.750462, 20.791557, 16.760942>,  <14.582829, 20.906536, 16.096025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.750462, 20.791557, 16.760942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.599513, 21.161709, 16.775181>,  <14.508944, 21.383799, 16.783724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.599513, 21.161709, 16.775181>,  <14.750462, 20.791557, 16.760942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.599513, 21.161709, 16.775181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183991, -0.112592, 0.976458,
		0.907600, 0.361939, 0.212750,
		-0.377372, 0.925377, 0.035595,
		14.486301, 21.439322, 16.785860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.099838, 21.068989, 17.281759>,  <14.750462, 20.791557, 16.760942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.099838, 21.068989, 17.281759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.763909, 21.280758, 17.233738>,  <14.562352, 21.407820, 17.204926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.763909, 21.280758, 17.233738>,  <15.099838, 21.068989, 17.281759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.763909, 21.280758, 17.233738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241449, -0.166212, 0.956073,
		0.486212, 0.831917, 0.267417,
		-0.839821, 0.529422, -0.120051,
		14.511963, 21.439585, 17.197723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.079247, 21.493011, 17.875687>,  <15.099838, 21.068989, 17.281759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.079247, 21.493011, 17.875687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.704886, 21.442135, 17.744289>,  <14.480270, 21.411608, 17.665451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.704886, 21.442135, 17.744289>,  <15.079247, 21.493011, 17.875687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.704886, 21.442135, 17.744289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269158, -0.343377, 0.899804,
		-0.227247, 0.930545, 0.287132,
		-0.935902, -0.127194, -0.328495,
		14.424116, 21.403976, 17.645741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.684647, 21.823830, 18.314747>,  <15.079247, 21.493011, 17.875687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.684647, 21.823830, 18.314747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.402518, 21.605183, 18.134199>,  <14.233241, 21.473995, 18.025871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.402518, 21.605183, 18.134199>,  <14.684647, 21.823830, 18.314747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.402518, 21.605183, 18.134199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483719, -0.094345, 0.870124,
		-0.518208, 0.832052, -0.197865,
		-0.705321, -0.546616, -0.451369,
		14.190922, 21.441198, 17.998789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.064758, 22.092541, 18.452709>,  <14.684647, 21.823830, 18.314747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.064758, 22.092541, 18.452709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.974570, 21.711315, 18.371885>,  <13.920457, 21.482580, 18.323391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.974570, 21.711315, 18.371885>,  <14.064758, 22.092541, 18.452709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.974570, 21.711315, 18.371885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457163, -0.079648, 0.885810,
		-0.860328, 0.292099, -0.417748,
		-0.225471, -0.953066, -0.202060,
		13.906929, 21.425396, 18.311268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.406104, 22.075630, 18.537540>,  <14.064758, 22.092541, 18.452709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.406104, 22.075630, 18.537540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.523690, 21.693356, 18.543848>,  <13.594242, 21.463991, 18.547632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.523690, 21.693356, 18.543848>,  <13.406104, 22.075630, 18.537540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.523690, 21.693356, 18.543848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582322, -0.165989, 0.795832,
		-0.757949, -0.243128, -0.605312,
		0.293964, -0.955686, 0.015768,
		13.611879, 21.406651, 18.548578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.809870, 21.690443, 18.681248>,  <13.406104, 22.075630, 18.537540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.809870, 21.690443, 18.681248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.092101, 21.444210, 18.821657>,  <13.261440, 21.296471, 18.905903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.092101, 21.444210, 18.821657>,  <12.809870, 21.690443, 18.681248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.092101, 21.444210, 18.821657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555499, -0.172925, 0.813337,
		-0.439976, -0.768866, -0.463968,
		0.705579, -0.615582, 0.351021,
		13.303775, 21.259535, 18.926964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.408775, 20.954454, 18.843723>,  <12.809870, 21.690443, 18.681248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.408775, 20.954454, 18.843723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.760921, 20.987808, 19.030489>,  <12.972207, 21.007820, 19.142550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.760921, 20.987808, 19.030489>,  <12.408775, 20.954454, 18.843723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.760921, 20.987808, 19.030489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418191, -0.328005, 0.847071,
		0.223783, -0.940989, -0.253893,
		0.880362, 0.083385, 0.466915,
		13.025029, 21.012823, 19.170563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.416523, 20.375925, 19.252140>,  <12.408775, 20.954454, 18.843723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.416523, 20.375925, 19.252140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.705512, 20.598698, 19.416025>,  <12.878905, 20.732361, 19.514357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.705512, 20.598698, 19.416025>,  <12.416523, 20.375925, 19.252140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.705512, 20.598698, 19.416025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199302, -0.399675, 0.894728,
		0.662052, -0.728073, -0.177756,
		0.722472, 0.556930, 0.409712,
		12.922254, 20.765776, 19.538939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.913035, 19.965675, 19.628008>,  <12.416523, 20.375925, 19.252140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.913035, 19.965675, 19.628008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.931310, 20.325455, 19.801861>,  <12.942274, 20.541323, 19.906172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.931310, 20.325455, 19.801861>,  <12.913035, 19.965675, 19.628008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.931310, 20.325455, 19.801861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274098, -0.407100, 0.871286,
		0.960616, -0.158937, 0.227938,
		0.045686, 0.899449, 0.434631,
		12.945016, 20.595289, 19.932251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.445346, 19.540070, 19.836826>,  <12.913035, 19.965675, 19.628008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.445346, 19.540070, 19.836826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.416253, 19.154430, 19.938982>,  <13.398797, 18.923046, 20.000275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.416253, 19.154430, 19.938982>,  <13.445346, 19.540070, 19.836826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.416253, 19.154430, 19.938982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304513, -0.265307, -0.914814,
		0.949727, 0.011233, 0.312877,
		-0.072733, -0.964098, 0.255390,
		13.394433, 18.865200, 20.015598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.104982, 19.243118, 19.725248>,  <13.445346, 19.540070, 19.836826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.104982, 19.243118, 19.725248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.842849, 18.942280, 19.697279>,  <13.685569, 18.761776, 19.680498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.842849, 18.942280, 19.697279>,  <14.104982, 19.243118, 19.725248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.842849, 18.942280, 19.697279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279469, -0.155424, -0.947492,
		0.701737, -0.640465, 0.312042,
		-0.655334, -0.752096, -0.069923,
		13.646249, 18.716652, 19.676302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.488590, 18.672230, 19.405745>,  <14.104982, 19.243118, 19.725248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.488590, 18.672230, 19.405745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.097894, 18.602314, 19.356066>,  <13.863476, 18.560364, 19.326260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.097894, 18.602314, 19.356066>,  <14.488590, 18.672230, 19.405745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.097894, 18.602314, 19.356066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160748, -0.213596, -0.963606,
		0.141902, -0.961158, 0.236726,
		-0.976741, -0.174791, -0.124195,
		13.804872, 18.549877, 19.318808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.472535, 18.014259, 19.015903>,  <14.488590, 18.672230, 19.405745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.472535, 18.014259, 19.015903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.127862, 18.207718, 18.954470>,  <13.921058, 18.323793, 18.917610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.127862, 18.207718, 18.954470>,  <14.472535, 18.014259, 19.015903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.127862, 18.207718, 18.954470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116279, -0.106419, -0.987499,
		-0.493944, -0.868770, 0.035462,
		-0.861684, 0.483646, -0.153584,
		13.869357, 18.352812, 18.908394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.222288, 17.625975, 18.509613>,  <14.472535, 18.014259, 19.015903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.222288, 17.625975, 18.509613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.003964, 17.960339, 18.486473>,  <13.872971, 18.160957, 18.472589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.003964, 17.960339, 18.486473>,  <14.222288, 17.625975, 18.509613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.003964, 17.960339, 18.486473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140032, 0.022932, -0.989881,
		-0.826125, -0.548387, -0.129571,
		-0.545809, 0.835910, -0.057848,
		13.840221, 18.211111, 18.469118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.634562, 17.548960, 17.915449>,  <14.222288, 17.625975, 18.509613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.634562, 17.548960, 17.915449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.744750, 17.929474, 17.970831>,  <13.810863, 18.157784, 18.004059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.744750, 17.929474, 17.970831>,  <13.634562, 17.548960, 17.915449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.744750, 17.929474, 17.970831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005964, 0.145714, -0.989309,
		-0.961291, 0.271701, 0.045813,
		0.275472, 0.951286, 0.138453,
		13.827392, 18.214859, 18.012367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.332565, 17.932796, 17.208792>,  <13.634562, 17.548960, 17.915449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.332565, 17.932796, 17.208792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.559260, 18.206581, 17.392235>,  <13.695277, 18.370852, 17.502300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.559260, 18.206581, 17.392235>,  <13.332565, 17.932796, 17.208792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.559260, 18.206581, 17.392235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066560, 0.516773, -0.853531,
		-0.821206, 0.514252, 0.247316,
		0.566737, 0.684463, 0.458606,
		13.729281, 18.411921, 17.529816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.072933, 18.512548, 16.941418>,  <13.332565, 17.932796, 17.208792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.072933, 18.512548, 16.941418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414977, 18.645519, 17.100555>,  <13.620204, 18.725302, 17.196037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414977, 18.645519, 17.100555>,  <13.072933, 18.512548, 16.941418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.414977, 18.645519, 17.100555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284346, 0.340950, -0.896047,
		-0.433514, 0.879345, 0.197026,
		0.855110, 0.332425, 0.397844,
		13.671510, 18.745247, 17.219910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.120372, 19.261992, 16.790787>,  <13.072933, 18.512548, 16.941418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.120372, 19.261992, 16.790787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.489038, 19.134716, 16.879593>,  <13.710238, 19.058352, 16.932877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.489038, 19.134716, 16.879593>,  <13.120372, 19.261992, 16.790787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.489038, 19.134716, 16.879593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352789, 0.449139, -0.820862,
		0.161473, 0.834884, 0.526209,
		0.921665, -0.318188, 0.222014,
		13.765537, 19.039259, 16.946198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.627268, 19.867554, 16.746471>,  <13.120372, 19.261992, 16.790787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.627268, 19.867554, 16.746471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.863702, 19.550373, 16.687346>,  <14.005563, 19.360065, 16.651871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.863702, 19.550373, 16.687346>,  <13.627268, 19.867554, 16.746471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.863702, 19.550373, 16.687346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216239, 0.332323, -0.918042,
		0.777083, 0.510678, 0.367898,
		0.591086, -0.792949, -0.147814,
		14.041027, 19.312489, 16.643002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.165104, 20.177807, 16.473455>,  <13.627268, 19.867554, 16.746471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.165104, 20.177807, 16.473455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.197406, 19.795483, 16.360388>,  <14.216787, 19.566088, 16.292547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.197406, 19.795483, 16.360388>,  <14.165104, 20.177807, 16.473455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.197406, 19.795483, 16.360388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454536, 0.287704, -0.842985,
		0.887060, -0.060408, 0.457684,
		0.080755, -0.955812, -0.282669,
		14.221632, 19.508739, 16.275587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.824102, 20.118971, 16.185051>,  <14.165104, 20.177807, 16.473455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.824102, 20.118971, 16.185051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.632779, 19.789993, 16.061890>,  <14.517985, 19.592606, 15.987993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.632779, 19.789993, 16.061890>,  <14.824102, 20.118971, 16.185051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.632779, 19.789993, 16.061890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216750, 0.229204, -0.948939,
		0.851024, -0.520622, 0.068635,
		-0.478307, -0.822447, -0.307903,
		14.489286, 19.543259, 15.969519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.353845, 19.720182, 15.716081>,  <14.824102, 20.118971, 16.185051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.353845, 19.720182, 15.716081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.974708, 19.631439, 15.624538>,  <14.747226, 19.578194, 15.569613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.974708, 19.631439, 15.624538>,  <15.353845, 19.720182, 15.716081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.974708, 19.631439, 15.624538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209923, 0.105779, -0.971979,
		0.239848, -0.969325, -0.053689,
		-0.947842, -0.221857, -0.228854,
		14.690355, 19.564882, 15.555882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.501076, 19.252596, 15.129041>,  <15.353845, 19.720182, 15.716081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.501076, 19.252596, 15.129041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.116832, 19.361099, 15.104883>,  <14.886286, 19.426201, 15.090388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.116832, 19.361099, 15.104883>,  <15.501076, 19.252596, 15.129041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.116832, 19.361099, 15.104883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073706, 0.039146, -0.996512,
		-0.267947, -0.961710, -0.057597,
		-0.960610, 0.271258, -0.060394,
		14.828649, 19.442476, 15.086765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.340955, 19.045593, 14.489902>,  <15.501076, 19.252596, 15.129041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.340955, 19.045593, 14.489902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.026044, 19.280628, 14.564663>,  <14.837097, 19.421650, 14.609520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.026044, 19.280628, 14.564663>,  <15.340955, 19.045593, 14.489902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.026044, 19.280628, 14.564663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005525, 0.309832, -0.950775,
		-0.616574, -0.747492, -0.247170,
		-0.787278, 0.587589, 0.186904,
		14.789861, 19.456905, 14.620734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.847484, 18.864847, 13.947813>,  <15.340955, 19.045593, 14.489902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.847484, 18.864847, 13.947813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.773591, 19.225815, 14.103514>,  <14.729256, 19.442394, 14.196934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.773591, 19.225815, 14.103514>,  <14.847484, 18.864847, 13.947813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.773591, 19.225815, 14.103514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034396, 0.401762, -0.915098,
		-0.982187, -0.155659, -0.105258,
		-0.184732, 0.902418, 0.389251,
		14.718171, 19.496540, 14.220289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.272085, 19.213064, 13.591167>,  <14.847484, 18.864847, 13.947813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.272085, 19.213064, 13.591167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.443891, 19.523647, 13.775616>,  <14.546973, 19.709997, 13.886285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.443891, 19.523647, 13.775616>,  <14.272085, 19.213064, 13.591167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.443891, 19.523647, 13.775616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126442, 0.557297, -0.820629,
		-0.894165, 0.294165, 0.337543,
		0.429512, 0.776458, 0.461121,
		14.572744, 19.756584, 13.913952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.846400, 19.801647, 13.529427>,  <14.272085, 19.213064, 13.591167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.846400, 19.801647, 13.529427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.219119, 19.940247, 13.572681>,  <14.442750, 20.023407, 13.598635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.219119, 19.940247, 13.572681>,  <13.846400, 19.801647, 13.529427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.219119, 19.940247, 13.572681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128971, 0.594518, -0.793672,
		-0.339297, 0.725594, 0.598658,
		0.931796, 0.346500, 0.108137,
		14.498658, 20.044197, 13.605123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.841186, 20.582994, 13.240898>,  <13.846400, 19.801647, 13.529427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.841186, 20.582994, 13.240898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.224368, 20.470142, 13.261765>,  <14.454278, 20.402431, 13.274284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.224368, 20.470142, 13.261765>,  <13.841186, 20.582994, 13.240898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.224368, 20.470142, 13.261765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200981, 0.530104, -0.823770,
		0.204756, 0.799620, 0.564519,
		0.957957, -0.282130, 0.052167,
		14.511755, 20.385504, 13.277414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.190309, 21.147999, 13.070141>,  <13.841186, 20.582994, 13.240898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.190309, 21.147999, 13.070141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.455861, 20.857212, 12.999962>,  <14.615192, 20.682739, 12.957854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.455861, 20.857212, 12.999962>,  <14.190309, 21.147999, 13.070141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.455861, 20.857212, 12.999962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131480, 0.344413, -0.929566,
		0.736190, 0.594053, 0.324231,
		0.663881, -0.726967, -0.175448,
		14.655025, 20.639122, 12.947328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.731443, 21.498184, 12.835833>,  <14.190309, 21.147999, 13.070141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.731443, 21.498184, 12.835833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.784472, 21.120674, 12.714695>,  <14.816290, 20.894169, 12.642013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.784472, 21.120674, 12.714695>,  <14.731443, 21.498184, 12.835833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.784472, 21.120674, 12.714695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284550, 0.328920, -0.900468,
		0.949450, 0.033203, 0.312156,
		0.132573, -0.943774, -0.302845,
		14.824244, 20.837542, 12.623841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.414618, 21.403591, 12.685255>,  <14.731443, 21.498184, 12.835833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.414618, 21.403591, 12.685255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.241714, 21.102482, 12.486666>,  <15.137971, 20.921816, 12.367513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.241714, 21.102482, 12.486666>,  <15.414618, 21.403591, 12.685255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.241714, 21.102482, 12.486666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462331, 0.287689, -0.838740,
		0.774211, -0.592088, 0.223674,
		-0.432259, -0.752773, -0.496473,
		15.112036, 20.876650, 12.337724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.868285, 21.163712, 12.120902>,  <15.414618, 21.403591, 12.685255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.868285, 21.163712, 12.120902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.510863, 21.014286, 12.021294>,  <15.296411, 20.924631, 11.961529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.510863, 21.014286, 12.021294>,  <15.868285, 21.163712, 12.120902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.510863, 21.014286, 12.021294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230063, 0.095308, -0.968497,
		0.385530, -0.922695, 0.000780,
		-0.893553, -0.373564, -0.249022,
		15.242797, 20.902216, 11.946587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.041599, 20.921623, 11.562825>,  <15.868285, 21.163712, 12.120902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.041599, 20.921623, 11.562825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.642440, 20.896255, 11.557454>,  <15.402945, 20.881035, 11.554232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.642440, 20.896255, 11.557454>,  <16.041599, 20.921623, 11.562825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.642440, 20.896255, 11.557454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015448, -0.031484, -0.999385,
		0.062957, -0.997490, 0.032397,
		-0.997896, -0.063418, -0.013427,
		15.343071, 20.877230, 11.553426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.782791, 20.266687, 11.115327>,  <16.041599, 20.921623, 11.562825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.782791, 20.266687, 11.115327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.482944, 20.531216, 11.104527>,  <15.303035, 20.689932, 11.098046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.482944, 20.531216, 11.104527>,  <15.782791, 20.266687, 11.115327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.482944, 20.531216, 11.104527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086249, -0.138050, -0.986663,
		-0.656226, -0.737292, 0.160523,
		-0.749619, 0.661319, -0.027001,
		15.258058, 20.729610, 11.096426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.245778, 19.946356, 10.828477>,  <15.782791, 20.266687, 11.115327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.245778, 19.946356, 10.828477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.157836, 20.331322, 10.764702>,  <15.105071, 20.562302, 10.726437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.157836, 20.331322, 10.764702>,  <15.245778, 19.946356, 10.828477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.157836, 20.331322, 10.764702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110576, -0.186968, -0.976123,
		-0.969246, -0.196975, 0.147526,
		-0.219855, 0.962416, -0.159437,
		15.091880, 20.620047, 10.716870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.530978, 19.886375, 10.545094>,  <15.245778, 19.946356, 10.828477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.530978, 19.886375, 10.545094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.694789, 20.236290, 10.441527>,  <14.793076, 20.446239, 10.379388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.694789, 20.236290, 10.441527>,  <14.530978, 19.886375, 10.545094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.694789, 20.236290, 10.441527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001527, -0.284463, -0.958686,
		-0.912297, 0.392211, -0.117830,
		0.409526, 0.874786, -0.258916,
		14.817647, 20.498726, 10.363853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.080340, 20.207903, 10.059640>,  <14.530978, 19.886375, 10.545094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.080340, 20.207903, 10.059640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.432017, 20.383713, 9.986060>,  <14.643023, 20.489199, 9.941913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.432017, 20.383713, 9.986060>,  <14.080340, 20.207903, 10.059640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.432017, 20.383713, 9.986060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082192, -0.240377, -0.967194,
		-0.469324, 0.865468, -0.175212,
		0.879192, 0.439527, -0.183949,
		14.695775, 20.515572, 9.930876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.021785, 20.513807, 9.398025>,  <14.080340, 20.207903, 10.059640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.021785, 20.513807, 9.398025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.415830, 20.509533, 9.466655>,  <14.652257, 20.506968, 9.507833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.415830, 20.509533, 9.466655>,  <14.021785, 20.513807, 9.398025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.415830, 20.509533, 9.466655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169685, -0.099491, -0.980463,
		0.027547, 0.994981, -0.096197,
		0.985113, -0.010686, 0.171574,
		14.711364, 20.506327, 9.518127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.305943, 20.876963, 8.834452>,  <14.021785, 20.513807, 9.398025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.305943, 20.876963, 8.834452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.623591, 20.678589, 8.974976>,  <14.814180, 20.559565, 9.059290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.623591, 20.678589, 8.974976>,  <14.305943, 20.876963, 8.834452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.623591, 20.678589, 8.974976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400237, -0.008256, -0.916374,
		0.457363, 0.868320, 0.191936,
		0.794122, -0.495936, 0.351310,
		14.861828, 20.529808, 9.080369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.772871, 21.170118, 8.468863>,  <14.305943, 20.876963, 8.834452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.772871, 21.170118, 8.468863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.927243, 20.822094, 8.591534>,  <15.019867, 20.613279, 8.665136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.927243, 20.822094, 8.591534>,  <14.772871, 21.170118, 8.468863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.927243, 20.822094, 8.591534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225265, -0.233489, -0.945906,
		0.894602, 0.434137, 0.105884,
		0.385930, -0.870062, 0.306676,
		15.043022, 20.561075, 8.683537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.487786, 21.174025, 8.252055>,  <14.772871, 21.170118, 8.468863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.487786, 21.174025, 8.252055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.368041, 20.796425, 8.307548>,  <15.296194, 20.569864, 8.340843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.368041, 20.796425, 8.307548>,  <15.487786, 21.174025, 8.252055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.368041, 20.796425, 8.307548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218652, -0.209402, -0.953070,
		0.928748, -0.254980, 0.269095,
		-0.299363, -0.944000, 0.138730,
		15.278233, 20.513226, 8.349167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.954453, 20.790762, 7.956715>,  <15.487786, 21.174025, 8.252055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.954453, 20.790762, 7.956715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.647733, 20.534039, 7.952750>,  <15.463700, 20.380005, 7.950371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.647733, 20.534039, 7.952750>,  <15.954453, 20.790762, 7.956715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.647733, 20.534039, 7.952750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327026, -0.377335, -0.866414,
		0.552330, -0.667610, 0.499229,
		-0.766803, -0.641807, -0.009912,
		15.417692, 20.341497, 7.949777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.266239, 20.148571, 7.770101>,  <15.954453, 20.790762, 7.956715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.266239, 20.148571, 7.770101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.875216, 20.114792, 7.692897>,  <15.640603, 20.094524, 7.646574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.875216, 20.114792, 7.692897>,  <16.266239, 20.148571, 7.770101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.875216, 20.114792, 7.692897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209921, -0.467854, -0.858514,
		-0.017802, -0.879762, 0.475080,
		-0.977556, -0.084446, -0.193009,
		15.581949, 20.089458, 7.634994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.292425, 19.720053, 7.223159>,  <16.266239, 20.148571, 7.770101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.292425, 19.720053, 7.223159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.904502, 19.816639, 7.209513>,  <15.671747, 19.874590, 7.201325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.904502, 19.816639, 7.209513>,  <16.292425, 19.720053, 7.223159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.904502, 19.816639, 7.209513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053560, -0.347387, -0.936191,
		-0.237908, -0.906100, 0.349833,
		-0.969810, 0.241464, -0.034115,
		15.613559, 19.889078, 7.199278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.066608, 19.197727, 6.942827>,  <16.292425, 19.720053, 7.223159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.066608, 19.197727, 6.942827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.780128, 19.465843, 6.865090>,  <15.608239, 19.626713, 6.818449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.780128, 19.465843, 6.865090>,  <16.066608, 19.197727, 6.942827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.780128, 19.465843, 6.865090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166601, -0.434626, -0.885067,
		-0.677718, -0.601508, 0.422951,
		-0.716200, 0.670290, -0.194342,
		15.565268, 19.666929, 6.806788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.389140, 18.833120, 6.851610>,  <16.066608, 19.197727, 6.942827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.389140, 18.833120, 6.851610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.341781, 19.187630, 6.672503>,  <15.313365, 19.400335, 6.565038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.341781, 19.187630, 6.672503>,  <15.389140, 18.833120, 6.851610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.341781, 19.187630, 6.672503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241097, -0.463106, -0.852881,
		-0.963252, 0.006976, 0.268510,
		-0.118398, 0.886276, -0.447769,
		15.306261, 19.453512, 6.538172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.839141, 18.738804, 6.510734>,  <15.389140, 18.833120, 6.851610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.839141, 18.738804, 6.510734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.023414, 19.044289, 6.329842>,  <15.133977, 19.227581, 6.221306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.023414, 19.044289, 6.329842>,  <14.839141, 18.738804, 6.510734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.023414, 19.044289, 6.329842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294771, -0.348950, -0.889575,
		-0.837187, 0.543116, 0.064366,
		0.460682, 0.763714, -0.452231,
		15.161618, 19.273403, 6.194172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.414738, 19.024984, 5.878894>,  <14.839141, 18.738804, 6.510734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.414738, 19.024984, 5.878894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.790597, 19.106712, 5.769120>,  <15.016112, 19.155748, 5.703256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.790597, 19.106712, 5.769120>,  <14.414738, 19.024984, 5.878894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.790597, 19.106712, 5.769120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183205, -0.376958, -0.907931,
		-0.288957, 0.903414, -0.316776,
		0.939649, 0.204319, -0.274435,
		15.072492, 19.168009, 5.686790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.429388, 19.429031, 5.184856>,  <14.414738, 19.024984, 5.878894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.429388, 19.429031, 5.184856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.797599, 19.275082, 5.211695>,  <15.018525, 19.182713, 5.227798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.797599, 19.275082, 5.211695>,  <14.429388, 19.429031, 5.184856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.797599, 19.275082, 5.211695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044418, -0.273738, -0.960778,
		0.388144, 0.881443, -0.269079,
		0.920528, -0.384872, 0.067097,
		15.073757, 19.159620, 5.231824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.744065, 19.670279, 4.506876>,  <14.429388, 19.429031, 5.184856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.744065, 19.670279, 4.506876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.969937, 19.378914, 4.662081>,  <15.105460, 19.204096, 4.755204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.969937, 19.378914, 4.662081>,  <14.744065, 19.670279, 4.506876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.969937, 19.378914, 4.662081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235677, -0.308247, -0.921651,
		0.790945, 0.611883, -0.002391,
		0.564679, -0.728412, 0.388013,
		15.139341, 19.160391, 4.778485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.558443, 19.580824, 4.277625>,  <14.744065, 19.670279, 4.506876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.558443, 19.580824, 4.277625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.421264, 19.218807, 4.378252>,  <15.338956, 19.001596, 4.438628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.421264, 19.218807, 4.378252>,  <15.558443, 19.580824, 4.277625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.421264, 19.218807, 4.378252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177560, -0.325439, -0.928742,
		0.922420, -0.273843, 0.272308,
		-0.342949, -0.905041, 0.251568,
		15.318379, 18.947294, 4.453722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.882829, 19.232620, 3.749445>,  <15.558443, 19.580824, 4.277625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.882829, 19.232620, 3.749445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.613313, 18.968243, 3.881603>,  <15.451603, 18.809616, 3.960897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.613313, 18.968243, 3.881603>,  <15.882829, 19.232620, 3.749445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.613313, 18.968243, 3.881603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187663, -0.585532, -0.788629,
		0.714695, -0.469368, 0.518560,
		-0.673791, -0.660943, 0.330394,
		15.411176, 18.769960, 3.980721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.170969, 18.519632, 3.839347>,  <15.882829, 19.232620, 3.749445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.170969, 18.519632, 3.839347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.784165, 18.466869, 3.752176>,  <15.552083, 18.435211, 3.699873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.784165, 18.466869, 3.752176>,  <16.170969, 18.519632, 3.839347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.784165, 18.466869, 3.752176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250084, -0.654376, -0.713618,
		-0.048476, -0.744576, 0.665775,
		-0.967010, -0.131906, -0.217928,
		15.494062, 18.427298, 3.686797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.858954, 17.778269, 4.011991>,  <16.170969, 18.519632, 3.839347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.858954, 17.778269, 4.011991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.690085, 17.980968, 3.711332>,  <15.588764, 18.102589, 3.530936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.690085, 17.980968, 3.711332>,  <15.858954, 17.778269, 4.011991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.690085, 17.980968, 3.711332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168443, -0.770869, -0.614318,
		-0.890728, -0.385958, 0.240082,
		-0.422173, 0.506751, -0.751647,
		15.563434, 18.132994, 3.485838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.988729, 17.410595, 3.436673>,  <15.858954, 17.778269, 4.011991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.988729, 17.410595, 3.436673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.660501, 17.610195, 3.325201>,  <15.463564, 17.729956, 3.258318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.660501, 17.610195, 3.325201>,  <15.988729, 17.410595, 3.436673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.660501, 17.610195, 3.325201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080678, -0.583835, -0.807853,
		-0.565825, -0.640416, 0.519336,
		-0.820569, 0.499003, -0.278681,
		15.414330, 17.759895, 3.241597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.527170, 16.934984, 3.106512>,  <15.988729, 17.410595, 3.436673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.527170, 16.934984, 3.106512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.436881, 17.300297, 2.970886>,  <15.382708, 17.519484, 2.889510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.436881, 17.300297, 2.970886>,  <15.527170, 16.934984, 3.106512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.436881, 17.300297, 2.970886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079659, -0.364185, -0.927913,
		-0.970929, -0.182441, 0.154956,
		-0.225723, 0.913282, -0.339065,
		15.369164, 17.574282, 2.869166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.833009, 16.960079, 2.776459>,  <15.527170, 16.934984, 3.106512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.833009, 16.960079, 2.776459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.054288, 17.245853, 2.605085>,  <15.187056, 17.417318, 2.502261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.054288, 17.245853, 2.605085>,  <14.833009, 16.960079, 2.776459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.054288, 17.245853, 2.605085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088269, -0.461130, -0.882931,
		-0.828360, 0.526253, -0.192034,
		0.553198, 0.714434, -0.428433,
		15.220247, 17.460184, 2.476555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.543025, 17.223888, 2.148934>,  <14.833009, 16.960079, 2.776459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.543025, 17.223888, 2.148934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.941190, 17.261173, 2.157556>,  <15.180089, 17.283545, 2.162730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.941190, 17.261173, 2.157556>,  <14.543025, 17.223888, 2.148934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.941190, 17.261173, 2.157556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074874, -0.618717, -0.782038,
		-0.059560, 0.780064, -0.622858,
		0.995413, 0.093214, 0.021556,
		15.239814, 17.289137, 2.164023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.695290, 17.307022, 1.436465>,  <14.543025, 17.223888, 2.148934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.695290, 17.307022, 1.436465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.978621, 17.139942, 1.664076>,  <15.148621, 17.039694, 1.800643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.978621, 17.139942, 1.664076>,  <14.695290, 17.307022, 1.436465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.978621, 17.139942, 1.664076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078760, -0.754324, -0.651761,
		0.701473, 0.506479, -0.501412,
		0.708331, -0.417702, 0.569028,
		15.191121, 17.014631, 1.834784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.215093, 17.158018, 0.936302>,  <14.695290, 17.307022, 1.436465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.215093, 17.158018, 0.936302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.180600, 16.912746, 1.250391>,  <15.159904, 16.765583, 1.438844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.180600, 16.912746, 1.250391>,  <15.215093, 17.158018, 0.936302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.180600, 16.912746, 1.250391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012091, -0.787456, -0.616252,
		0.996202, -0.062635, 0.060490,
		-0.086232, -0.613180, 0.785222,
		15.154731, 16.728792, 1.485957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.663535, 16.534121, 0.932769>,  <15.215093, 17.158018, 0.936302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.663535, 16.534121, 0.932769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.314065, 16.466480, 1.115239>,  <15.104383, 16.425896, 1.224721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.314065, 16.466480, 1.115239>,  <15.663535, 16.534121, 0.932769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.314065, 16.466480, 1.115239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301164, -0.548414, -0.780091,
		0.382088, -0.818930, 0.428208,
		-0.873675, -0.169103, 0.456175,
		15.051963, 16.415749, 1.252092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.573547, 15.809759, 0.845998>,  <15.663535, 16.534121, 0.932769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.573547, 15.809759, 0.845998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.240077, 16.029915, 0.864136>,  <15.039995, 16.162008, 0.875019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.240077, 16.029915, 0.864136>,  <15.573547, 15.809759, 0.845998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.240077, 16.029915, 0.864136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285432, -0.359137, -0.888566,
		-0.472774, -0.753718, 0.456502,
		-0.833675, 0.550391, 0.045345,
		14.989974, 16.195032, 0.877740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.958425, 15.433391, 0.946590>,  <15.573547, 15.809759, 0.845998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.958425, 15.433391, 0.946590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.893722, 15.752514, 0.714267>,  <14.854899, 15.943988, 0.574874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.893722, 15.752514, 0.714267>,  <14.958425, 15.433391, 0.946590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.893722, 15.752514, 0.714267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219443, -0.602902, -0.767042,
		-0.962122, 0.003379, 0.272597,
		-0.161757, 0.797808, -0.580807,
		14.845194, 15.991857, 0.540025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.366972, 15.391100, 0.546547>,  <14.958425, 15.433391, 0.946590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.366972, 15.391100, 0.546547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.614718, 15.619568, 0.331085>,  <14.763367, 15.756649, 0.201808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.614718, 15.619568, 0.331085>,  <14.366972, 15.391100, 0.546547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.614718, 15.619568, 0.331085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114254, -0.613217, -0.781608,
		-0.776744, 0.545645, -0.314548,
		0.619366, 0.571171, -0.538655,
		14.800529, 15.790919, 0.169489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.045534, 15.349155, -0.028661>,  <14.366972, 15.391100, 0.546547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.045534, 15.349155, -0.028661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.430884, 15.430340, -0.098766>,  <14.662094, 15.479051, -0.140828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.430884, 15.430340, -0.098766>,  <14.045534, 15.349155, -0.028661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.430884, 15.430340, -0.098766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087823, -0.378728, -0.921332,
		-0.253371, 0.902980, -0.347032,
		0.963374, 0.202961, -0.175261,
		14.719896, 15.491228, -0.151344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.147321, 15.867625, -0.629735>,  <14.045534, 15.349155, -0.028661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.147321, 15.867625, -0.629735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.475156, 15.643414, -0.582268>,  <14.671857, 15.508886, -0.553788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.475156, 15.643414, -0.582268>,  <14.147321, 15.867625, -0.629735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.475156, 15.643414, -0.582268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152257, -0.412744, -0.898031,
		0.552353, 0.717947, -0.423625,
		0.819588, -0.560530, 0.118668,
		14.721032, 15.475254, -0.546668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.779377, 16.108536, -1.025420>,  <14.147321, 15.867625, -0.629735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.779377, 16.108536, -1.025420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.731282, 15.712612, -0.994893>,  <14.702426, 15.475059, -0.976577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.731282, 15.712612, -0.994893>,  <14.779377, 16.108536, -1.025420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.731282, 15.712612, -0.994893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202796, -0.050764, -0.977904,
		0.971811, -0.133056, -0.194626,
		-0.120236, -0.989808, 0.076316,
		14.695211, 15.415669, -0.971999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.086226, 16.578293, -1.577131>,  <14.779377, 16.108536, -1.025420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.086226, 16.578293, -1.577131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.705890, 16.553226, -1.698442>,  <14.477688, 16.538187, -1.771228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.705890, 16.553226, -1.698442>,  <15.086226, 16.578293, -1.577131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.705890, 16.553226, -1.698442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195635, -0.880706, -0.431374,
		-0.240063, -0.469499, 0.849671,
		-0.950840, -0.062668, -0.303275,
		14.420638, 16.534426, -1.789424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.604714, 16.834511, -2.148479>,  <15.086226, 16.578293, -1.577131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.604714, 16.834511, -2.148479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.609262, 17.229134, -2.213686>,  <14.611990, 17.465908, -2.252810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.609262, 17.229134, -2.213686>,  <14.604714, 16.834511, -2.148479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.609262, 17.229134, -2.213686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971511, -0.049492, -0.231769,
		-0.236722, -0.155739, -0.959014,
		0.011368, 0.986558, -0.163018,
		14.612672, 17.525101, -2.262592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.691273, 17.040178, -2.875127>,  <14.604714, 16.834511, -2.148479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.691273, 17.040178, -2.875127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.842216, 17.295116, -2.606384>,  <14.932781, 17.448078, -2.445138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.842216, 17.295116, -2.606384>,  <14.691273, 17.040178, -2.875127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.842216, 17.295116, -2.606384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923805, -0.208392, -0.321179,
		-0.064691, 0.741866, -0.667420,
		0.377357, 0.637344, 0.671859,
		14.955422, 17.486320, -2.404826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.075748, 17.567667, -3.203445>,  <14.691273, 17.040178, -2.875127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.075748, 17.567667, -3.203445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.221005, 17.559879, -2.830833>,  <15.308160, 17.555206, -2.607265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.221005, 17.559879, -2.830833>,  <15.075748, 17.567667, -3.203445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.221005, 17.559879, -2.830833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928208, -0.079329, -0.363506,
		0.080975, 0.996658, -0.010735,
		0.363143, -0.019470, 0.931530,
		15.329948, 17.554039, -2.551374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.520209, 18.193680, -3.181679>,  <15.075748, 17.567667, -3.203445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.520209, 18.193680, -3.181679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.606639, 17.923416, -2.899743>,  <15.658497, 17.761259, -2.730582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.606639, 17.923416, -2.899743>,  <15.520209, 18.193680, -3.181679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.606639, 17.923416, -2.899743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935144, -0.064362, -0.348373,
		0.280745, 0.734401, 0.617930,
		0.216074, -0.675658, 0.704839,
		15.671461, 17.720718, -2.688292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.214590, 18.364037, -3.048817>,  <15.520209, 18.193680, -3.181679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.214590, 18.364037, -3.048817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.176334, 17.984825, -2.927428>,  <16.153381, 17.757299, -2.854594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.176334, 17.984825, -2.927428>,  <16.214590, 18.364037, -3.048817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.176334, 17.984825, -2.927428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902972, -0.210933, -0.374365,
		0.418921, 0.238224, 0.876216,
		-0.095640, -0.948028, 0.303474,
		16.147642, 17.700417, -2.836385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.355719, 18.367931, -2.327137>,  <16.214590, 18.364037, -3.048817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.355719, 18.367931, -2.327137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.420582, 18.197304, -1.971218>,  <16.459499, 18.094927, -1.757666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.420582, 18.197304, -1.971218>,  <16.355719, 18.367931, -2.327137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.420582, 18.197304, -1.971218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318505, 0.830843, 0.456350,
		-0.933948, -0.357407, -0.001135,
		0.162160, -0.426569, 0.889800,
		16.469229, 18.069334, -1.704278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.668570, 18.340424, -1.907197>,  <16.355719, 18.367931, -2.327137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.668570, 18.340424, -1.907197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.007988, 18.412857, -1.708329>,  <16.211639, 18.456318, -1.589008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.007988, 18.412857, -1.708329>,  <15.668570, 18.340424, -1.907197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.007988, 18.412857, -1.708329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441636, 0.759896, 0.476986,
		-0.291423, -0.624313, 0.724780,
		0.848546, 0.181084, 0.497170,
		16.262552, 18.467182, -1.559178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.643826, 18.231300, -1.099623>,  <15.668570, 18.340424, -1.907197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.643826, 18.231300, -1.099623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.876523, 18.524715, -1.240191>,  <16.016142, 18.700766, -1.324531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.876523, 18.524715, -1.240191>,  <15.643826, 18.231300, -1.099623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.876523, 18.524715, -1.240191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503659, 0.664125, 0.552508,
		0.638669, -0.144427, 0.755806,
		0.581747, 0.733539, -0.351414,
		16.051046, 18.744778, -1.345616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.329449, 18.874464, -0.889051>,  <15.643826, 18.231300, -1.099623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.329449, 18.874464, -0.889051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.660974, 19.075634, -0.987141>,  <15.859888, 19.196337, -1.045996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.660974, 19.075634, -0.987141>,  <15.329449, 18.874464, -0.889051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.660974, 19.075634, -0.987141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387798, 0.832259, 0.396179,
		0.403341, -0.233259, 0.884820,
		0.828811, 0.502927, -0.245227,
		15.909617, 19.226513, -1.060709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.159152, 19.629829, -0.881365>,  <15.329449, 18.874464, -0.889051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.159152, 19.629829, -0.881365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.295472, 19.555820, -0.512665>,  <15.377264, 19.511415, -0.291445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.295472, 19.555820, -0.512665>,  <15.159152, 19.629829, -0.881365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.295472, 19.555820, -0.512665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270915, 0.919525, 0.284744,
		-0.900256, -0.346756, 0.263248,
		0.340800, -0.185024, 0.921749,
		15.397712, 19.500313, -0.236140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.739040, 19.924828, -0.398283>,  <15.159152, 19.629829, -0.881365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.739040, 19.924828, -0.398283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.089849, 19.867271, -0.214923>,  <15.300333, 19.832737, -0.104907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.089849, 19.867271, -0.214923>,  <14.739040, 19.924828, -0.398283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.089849, 19.867271, -0.214923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272948, 0.635966, 0.721836,
		-0.395393, -0.758184, 0.518480,
		0.877020, -0.143891, 0.458401,
		15.352955, 19.824104, -0.077403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.638030, 19.609770, 0.267716>,  <14.739040, 19.924828, -0.398283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.638030, 19.609770, 0.267716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.951217, 19.855808, 0.230579>,  <15.139129, 20.003431, 0.208297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.951217, 19.855808, 0.230579>,  <14.638030, 19.609770, 0.267716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.951217, 19.855808, 0.230579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494578, 0.706056, 0.506831,
		0.377302, -0.350914, 0.857031,
		0.782966, 0.615097, -0.092841,
		15.186107, 20.040337, 0.202727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.589395, 19.835009, 0.898982>,  <14.638030, 19.609770, 0.267716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.589395, 19.835009, 0.898982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.803824, 20.075222, 0.661669>,  <14.932482, 20.219351, 0.519281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.803824, 20.075222, 0.661669>,  <14.589395, 19.835009, 0.898982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.803824, 20.075222, 0.661669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367426, 0.798722, 0.476489,
		0.760015, -0.037447, 0.648826,
		0.536075, 0.600534, -0.593282,
		14.964646, 20.255383, 0.483684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.489143, 19.863632, 1.687142>,  <14.589395, 19.835009, 0.898982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.489143, 19.863632, 1.687142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.475680, 20.181648, 1.929390>,  <14.467603, 20.372458, 2.074739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.475680, 20.181648, 1.929390>,  <14.489143, 19.863632, 1.687142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.475680, 20.181648, 1.929390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173925, -0.592058, 0.786904,
		0.984183, 0.131818, -0.118349,
		-0.033659, 0.795042, 0.605620,
		14.465583, 20.420160, 2.111076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.054688, 20.084435, 2.199044>,  <14.489143, 19.863632, 1.687142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.054688, 20.084435, 2.199044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.956286, 19.709305, 2.297001>,  <14.897246, 19.484228, 2.355775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.956286, 19.709305, 2.297001>,  <15.054688, 20.084435, 2.199044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.956286, 19.709305, 2.297001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967095, -0.220572, 0.126790,
		-0.064890, 0.268024, 0.961224,
		-0.246002, -0.937823, 0.244891,
		14.882485, 19.427958, 2.370468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.349719, 19.889757, 2.882715>,  <15.054688, 20.084435, 2.199044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.349719, 19.889757, 2.882715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.308553, 19.590683, 2.620304>,  <15.283853, 19.411238, 2.462857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.308553, 19.590683, 2.620304>,  <15.349719, 19.889757, 2.882715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.308553, 19.590683, 2.620304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991001, -0.133826, -0.002942,
		-0.085594, -0.650427, 0.754731,
		-0.102916, -0.747687, -0.656028,
		15.277678, 19.366377, 2.423495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<17.724194, 17.595896, 15.092770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.061340, 17.807354, 15.132978>,  <18.263630, 17.934229, 15.157104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.061340, 17.807354, 15.132978>,  <17.724194, 17.595896, 15.092770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.061340, 17.807354, 15.132978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082096, 0.058291, -0.994918,
		-0.531819, 0.846839, 0.005732,
		0.842869, 0.528646, 0.100522,
		18.314201, 17.965948, 15.163136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.613834, 17.925148, 14.545487>,  <17.724194, 17.595896, 15.092770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.613834, 17.925148, 14.545487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.995922, 17.999531, 14.637554>,  <18.225174, 18.044161, 14.692795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.995922, 17.999531, 14.637554>,  <17.613834, 17.925148, 14.545487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.995922, 17.999531, 14.637554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205548, 0.142550, -0.968210,
		-0.212854, 0.972163, 0.097944,
		0.955219, 0.185955, 0.230168,
		18.282488, 18.055317, 14.706605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.867605, 18.501554, 14.092489>,  <17.613834, 17.925148, 14.545487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.867605, 18.501554, 14.092489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.176144, 18.284996, 14.226305>,  <18.361267, 18.155062, 14.306595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.176144, 18.284996, 14.226305>,  <17.867605, 18.501554, 14.092489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.176144, 18.284996, 14.226305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442934, 0.079231, -0.893046,
		0.456986, 0.837026, 0.300918,
		0.771345, -0.541397, 0.334540,
		18.407547, 18.122578, 14.326667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.456656, 18.853924, 13.957088>,  <17.867605, 18.501554, 14.092489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.456656, 18.853924, 13.957088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.623894, 18.492897, 13.998215>,  <18.724236, 18.276281, 14.022891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.623894, 18.492897, 13.998215>,  <18.456656, 18.853924, 13.957088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.623894, 18.492897, 13.998215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420957, 0.092204, -0.902382,
		0.804980, 0.420562, 0.418492,
		0.418094, -0.902566, 0.102817,
		18.749323, 18.222128, 14.029059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.105127, 18.908918, 13.642412>,  <18.456656, 18.853924, 13.957088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.105127, 18.908918, 13.642412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.044487, 18.513542, 13.641932>,  <19.008102, 18.276316, 13.641644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.044487, 18.513542, 13.641932>,  <19.105127, 18.908918, 13.642412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.044487, 18.513542, 13.641932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411221, -0.061966, -0.909427,
		0.898840, -0.138365, 0.415862,
		-0.151602, -0.988441, -0.001201,
		18.999006, 18.217010, 13.641571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.752972, 18.555178, 13.491114>,  <19.105127, 18.908918, 13.642412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.752972, 18.555178, 13.491114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.443485, 18.318352, 13.400938>,  <19.257793, 18.176256, 13.346832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.443485, 18.318352, 13.400938>,  <19.752972, 18.555178, 13.491114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.443485, 18.318352, 13.400938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352207, -0.106201, -0.929877,
		0.526605, -0.798862, 0.290699,
		-0.773717, -0.592064, -0.225439,
		19.211370, 18.140732, 13.333306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.002777, 18.178146, 12.997786>,  <19.752972, 18.555178, 13.491114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.002777, 18.178146, 12.997786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.613037, 18.104057, 12.946655>,  <19.379194, 18.059605, 12.915977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.613037, 18.104057, 12.946655>,  <20.002777, 18.178146, 12.997786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.613037, 18.104057, 12.946655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128844, 0.006573, -0.991643,
		0.184515, -0.982675, 0.017460,
		-0.974347, -0.185223, -0.127825,
		19.320732, 18.048491, 12.908308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.936502, 17.692415, 12.428078>,  <20.002777, 18.178146, 12.997786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.936502, 17.692415, 12.428078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.581707, 17.875137, 12.455159>,  <19.368830, 17.984770, 12.471408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.581707, 17.875137, 12.455159>,  <19.936502, 17.692415, 12.428078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.581707, 17.875137, 12.455159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007828, 0.131719, -0.991256,
		-0.461729, -0.879761, -0.113257,
		-0.886987, 0.456805, 0.067705,
		19.315611, 18.012178, 12.475471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.473114, 17.301229, 11.891033>,  <19.936502, 17.692415, 12.428078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.473114, 17.301229, 11.891033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.251286, 17.626919, 11.959723>,  <19.118189, 17.822332, 12.000937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.251286, 17.626919, 11.959723>,  <19.473114, 17.301229, 11.891033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.251286, 17.626919, 11.959723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268873, 0.019969, -0.962969,
		-0.787503, -0.580205, 0.207849,
		-0.554568, 0.814226, 0.171727,
		19.084915, 17.871187, 12.011242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.901688, 17.223360, 11.465686>,  <19.473114, 17.301229, 11.891033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.901688, 17.223360, 11.465686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.883507, 17.611591, 11.560272>,  <18.872599, 17.844530, 11.617024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.883507, 17.611591, 11.560272>,  <18.901688, 17.223360, 11.465686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.883507, 17.611591, 11.560272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280777, 0.214756, -0.935438,
		-0.958696, -0.108912, 0.262754,
		-0.045452, 0.970576, 0.236466,
		18.869871, 17.902763, 11.631212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.337860, 17.510742, 11.221553>,  <18.901688, 17.223360, 11.465686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.337860, 17.510742, 11.221553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.537613, 17.854897, 11.262253>,  <18.657465, 18.061390, 11.286673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.537613, 17.854897, 11.262253>,  <18.337860, 17.510742, 11.221553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.537613, 17.854897, 11.262253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274344, 0.268434, -0.923406,
		-0.821799, 0.433217, 0.370093,
		0.499381, 0.860387, 0.101749,
		18.687428, 18.113012, 11.292777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.834105, 18.148016, 11.130151>,  <18.337860, 17.510742, 11.221553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.834105, 18.148016, 11.130151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.207642, 18.265465, 11.048442>,  <18.431763, 18.335934, 10.999416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.207642, 18.265465, 11.048442>,  <17.834105, 18.148016, 11.130151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.207642, 18.265465, 11.048442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299320, 0.328825, -0.895702,
		-0.195830, 0.897585, 0.394958,
		0.933840, 0.293624, -0.204272,
		18.487793, 18.353552, 10.987161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.831934, 18.875807, 10.891540>,  <17.834105, 18.148016, 11.130151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.831934, 18.875807, 10.891540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.177597, 18.736473, 10.746272>,  <18.384995, 18.652872, 10.659112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.177597, 18.736473, 10.746272>,  <17.831934, 18.875807, 10.891540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.177597, 18.736473, 10.746272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204207, 0.416856, -0.885737,
		0.459921, 0.839580, 0.289098,
		0.864160, -0.348334, -0.363169,
		18.436846, 18.631973, 10.637321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.085682, 19.403164, 10.462647>,  <17.831934, 18.875807, 10.891540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.085682, 19.403164, 10.462647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.272758, 19.066704, 10.354032>,  <18.385004, 18.864828, 10.288862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.272758, 19.066704, 10.354032>,  <18.085682, 19.403164, 10.462647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.272758, 19.066704, 10.354032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004940, 0.304717, -0.952430,
		0.883879, 0.446783, 0.138357,
		0.467689, -0.841150, -0.271540,
		18.413065, 18.814360, 10.272570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.742702, 19.543394, 10.228855>,  <18.085682, 19.403164, 10.462647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.742702, 19.543394, 10.228855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.567760, 19.226307, 10.058998>,  <18.462795, 19.036055, 9.957084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.567760, 19.226307, 10.058998>,  <18.742702, 19.543394, 10.228855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.567760, 19.226307, 10.058998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091725, 0.430413, -0.897959,
		0.894600, -0.431676, -0.115531,
		-0.437354, -0.792717, -0.424643,
		18.436554, 18.988491, 9.931605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.828339, 19.712193, 9.490669>,  <18.742702, 19.543394, 10.228855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.828339, 19.712193, 9.490669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.653667, 19.353062, 9.467968>,  <18.548864, 19.137583, 9.454348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.653667, 19.353062, 9.467968>,  <18.828339, 19.712193, 9.490669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.653667, 19.353062, 9.467968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101512, 0.111859, -0.988526,
		0.893872, -0.425907, -0.139986,
		-0.436678, -0.897826, -0.056753,
		18.522663, 19.083714, 9.450942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.181490, 19.304398, 8.980151>,  <18.828339, 19.712193, 9.490669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.181490, 19.304398, 8.980151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.820709, 19.131802, 8.987011>,  <18.604240, 19.028244, 8.991127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.820709, 19.131802, 8.987011>,  <19.181490, 19.304398, 8.980151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.820709, 19.131802, 8.987011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011246, -0.063169, -0.997940,
		0.431686, -0.899903, 0.061828,
		-0.901954, -0.431491, 0.017149,
		18.550123, 19.002354, 8.992156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.231781, 19.026342, 8.374482>,  <19.181490, 19.304398, 8.980151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.231781, 19.026342, 8.374482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.840141, 18.996872, 8.450313>,  <18.605158, 18.979189, 8.495811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.840141, 18.996872, 8.450313>,  <19.231781, 19.026342, 8.374482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.840141, 18.996872, 8.450313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182692, -0.091087, -0.978942,
		0.089393, -0.993114, 0.075723,
		-0.979098, -0.073677, 0.189577,
		18.546412, 18.974770, 8.507186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.041943, 18.566349, 7.932351>,  <19.231781, 19.026342, 8.374482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.041943, 18.566349, 7.932351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.694366, 18.745369, 8.016864>,  <18.485821, 18.852781, 8.067572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.694366, 18.745369, 8.016864>,  <19.041943, 18.566349, 7.932351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.694366, 18.745369, 8.016864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266239, -0.062838, -0.961857,
		-0.417201, -0.892049, 0.173757,
		-0.868942, 0.447549, 0.211282,
		18.433683, 18.879633, 8.080249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.563190, 18.217953, 7.555343>,  <19.041943, 18.566349, 7.932351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.563190, 18.217953, 7.555343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.408775, 18.584000, 7.601875>,  <18.316126, 18.803629, 7.629795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.408775, 18.584000, 7.601875>,  <18.563190, 18.217953, 7.555343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.408775, 18.584000, 7.601875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206369, 0.037239, -0.977765,
		-0.899104, -0.401460, 0.174477,
		-0.386037, 0.915119, 0.116331,
		18.292965, 18.858536, 7.636775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.023046, 18.386660, 7.059102>,  <18.563190, 18.217953, 7.555343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.023046, 18.386660, 7.059102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.077400, 18.770393, 7.158069>,  <18.110012, 19.000633, 7.217449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.077400, 18.770393, 7.158069>,  <18.023046, 18.386660, 7.059102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.077400, 18.770393, 7.158069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497574, 0.282035, -0.820290,
		-0.856712, -0.011643, 0.515664,
		0.135884, 0.959333, 0.247416,
		18.118166, 19.058193, 7.232294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.461716, 18.772291, 6.762634>,  <18.023046, 18.386660, 7.059102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.461716, 18.772291, 6.762634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.727180, 19.066864, 6.815131>,  <17.886459, 19.243607, 6.846630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.727180, 19.066864, 6.815131>,  <17.461716, 18.772291, 6.762634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.727180, 19.066864, 6.815131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219974, 0.359829, -0.906716,
		-0.714959, 0.572881, 0.400800,
		0.663660, 0.736431, 0.131244,
		17.926279, 19.287794, 6.854504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.452656, 18.475210, 7.584561>,  <17.461716, 18.772291, 6.762634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.452656, 18.475210, 7.584561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.168499, 18.242455, 7.426197>,  <16.998005, 18.102800, 7.331179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.168499, 18.242455, 7.426197>,  <17.452656, 18.475210, 7.584561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.168499, 18.242455, 7.426197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123757, -0.450485, 0.884165,
		-0.692838, 0.677101, 0.248009,
		-0.710394, -0.581891, -0.395909,
		16.955381, 18.067886, 7.307425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.917278, 18.397417, 8.076281>,  <17.452656, 18.475210, 7.584561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.917278, 18.397417, 8.076281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.831306, 18.096977, 7.826592>,  <16.779724, 17.916714, 7.676779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.831306, 18.096977, 7.826592>,  <16.917278, 18.397417, 8.076281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.831306, 18.096977, 7.826592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484418, -0.473004, 0.735939,
		-0.848024, 0.460558, -0.262186,
		-0.214927, -0.751102, -0.624222,
		16.766829, 17.871647, 7.639326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.190388, 18.234037, 8.077110>,  <16.917278, 18.397417, 8.076281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.190388, 18.234037, 8.077110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.405003, 17.909977, 7.982637>,  <16.533772, 17.715540, 7.925954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.405003, 17.909977, 7.982637>,  <16.190388, 18.234037, 8.077110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.405003, 17.909977, 7.982637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357728, -0.471839, 0.805853,
		-0.764304, -0.347879, -0.542973,
		0.536535, -0.810153, -0.236183,
		16.565964, 17.666931, 7.911783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.671266, 17.736895, 8.274090>,  <16.190388, 18.234037, 8.077110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.671266, 17.736895, 8.274090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.025688, 17.554993, 8.238086>,  <16.238342, 17.445852, 8.216483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.025688, 17.554993, 8.238086>,  <15.671266, 17.736895, 8.274090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.025688, 17.554993, 8.238086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211828, -0.569883, 0.793954,
		-0.412347, -0.684422, -0.601278,
		0.886058, -0.454753, -0.090010,
		16.291506, 17.418568, 8.211082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.541336, 17.069136, 8.258572>,  <15.671266, 17.736895, 8.274090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.541336, 17.069136, 8.258572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.916238, 17.117859, 8.389241>,  <16.141178, 17.147093, 8.467643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.916238, 17.117859, 8.389241>,  <15.541336, 17.069136, 8.258572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.916238, 17.117859, 8.389241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218175, -0.525925, 0.822072,
		0.271943, -0.841763, -0.466350,
		0.937255, 0.121810, 0.326674,
		16.197414, 17.154402, 8.487244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.507802, 16.479666, 8.719371>,  <15.541336, 17.069136, 8.258572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.507802, 16.479666, 8.719371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.846496, 16.675251, 8.803233>,  <16.049711, 16.792603, 8.853550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.846496, 16.675251, 8.803233>,  <15.507802, 16.479666, 8.719371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.846496, 16.675251, 8.803233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038575, -0.336612, 0.940853,
		0.530616, -0.804740, -0.266159,
		0.846734, 0.488964, 0.209655,
		16.100515, 16.821939, 8.866130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.103119, 15.934711, 9.031562>,  <15.507802, 16.479666, 8.719371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.103119, 15.934711, 9.031562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.152710, 16.306683, 9.170045>,  <16.182465, 16.529865, 9.253135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.152710, 16.306683, 9.170045>,  <16.103119, 15.934711, 9.031562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.152710, 16.306683, 9.170045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015618, -0.347027, 0.937725,
		0.992162, -0.121666, -0.028500,
		0.123979, 0.929930, 0.346208,
		16.189903, 16.585661, 9.273908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.434097, 15.831939, 9.722961>,  <16.103119, 15.934711, 9.031562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.434097, 15.831939, 9.722961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.323605, 16.216190, 9.734881>,  <16.257309, 16.446741, 9.742033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.323605, 16.216190, 9.734881>,  <16.434097, 15.831939, 9.722961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.323605, 16.216190, 9.734881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084875, -0.055268, 0.994858,
		0.957336, 0.272282, 0.096800,
		-0.276232, 0.960629, 0.029800,
		16.240736, 16.504379, 9.743821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.800323, 16.169628, 10.262624>,  <16.434097, 15.831939, 9.722961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.800323, 16.169628, 10.262624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.474503, 16.394035, 10.203618>,  <16.279009, 16.528681, 10.168215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.474503, 16.394035, 10.203618>,  <16.800323, 16.169628, 10.262624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.474503, 16.394035, 10.203618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157917, 0.030234, 0.986989,
		0.558180, 0.827250, 0.063967,
		-0.814553, 0.561019, -0.147513,
		16.230137, 16.562342, 10.159364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.914120, 16.805578, 10.604791>,  <16.800323, 16.169628, 10.262624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.914120, 16.805578, 10.604791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.518353, 16.762894, 10.565464>,  <16.280891, 16.737284, 10.541868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.518353, 16.762894, 10.565464>,  <16.914120, 16.805578, 10.604791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.518353, 16.762894, 10.565464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105962, 0.068507, 0.992008,
		-0.099123, 0.991927, -0.079089,
		-0.989417, -0.106711, -0.098317,
		16.221527, 16.730881, 10.535969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.650671, 17.351044, 11.064429>,  <16.914120, 16.805578, 10.604791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.650671, 17.351044, 11.064429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.351292, 17.091537, 11.009400>,  <16.171663, 16.935833, 10.976383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.351292, 17.091537, 11.009400>,  <16.650671, 17.351044, 11.064429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.351292, 17.091537, 11.009400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062602, -0.137402, 0.988535,
		-0.660231, 0.748481, 0.062225,
		-0.748449, -0.648766, -0.137573,
		16.126757, 16.896908, 10.968128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.206316, 17.488939, 11.574370>,  <16.650671, 17.351044, 11.064429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.206316, 17.488939, 11.574370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.041943, 17.145630, 11.451405>,  <15.943318, 16.939644, 11.377625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.041943, 17.145630, 11.451405>,  <16.206316, 17.488939, 11.574370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.041943, 17.145630, 11.451405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356822, -0.158884, 0.920562,
		-0.838935, 0.487981, -0.240960,
		-0.410932, -0.858272, -0.307416,
		15.918663, 16.888149, 11.359179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.468694, 17.527275, 11.672565>,  <16.206316, 17.488939, 11.574370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.468694, 17.527275, 11.672565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.588479, 17.145702, 11.679864>,  <15.660350, 16.916758, 11.684243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.588479, 17.145702, 11.679864>,  <15.468694, 17.527275, 11.672565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.588479, 17.145702, 11.679864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388135, -0.104330, 0.915678,
		-0.871592, -0.281294, -0.401498,
		0.299463, -0.953933, 0.018247,
		15.678318, 16.859522, 11.685338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.908799, 17.140604, 11.774222>,  <15.468694, 17.527275, 11.672565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.908799, 17.140604, 11.774222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.225827, 16.928242, 11.894204>,  <15.416044, 16.800825, 11.966193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.225827, 16.928242, 11.894204>,  <14.908799, 17.140604, 11.774222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.225827, 16.928242, 11.894204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350344, 0.006152, 0.936601,
		-0.499091, -0.847409, -0.181123,
		0.792570, -0.530905, 0.299955,
		15.463598, 16.768970, 11.984191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.685856, 16.609436, 12.272564>,  <14.908799, 17.140604, 11.774222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.685856, 16.609436, 12.272564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.082509, 16.595310, 12.322230>,  <15.320501, 16.586836, 12.352030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.082509, 16.595310, 12.322230>,  <14.685856, 16.609436, 12.272564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.082509, 16.595310, 12.322230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127726, -0.128996, 0.983385,
		-0.018707, -0.991016, -0.132426,
		0.991633, -0.035310, 0.124165,
		15.379999, 16.584717, 12.359480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.820441, 16.188177, 12.759669>,  <14.685856, 16.609436, 12.272564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.820441, 16.188177, 12.759669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.163148, 16.393486, 12.739660>,  <15.368772, 16.516672, 12.727654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.163148, 16.393486, 12.739660>,  <14.820441, 16.188177, 12.759669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.163148, 16.393486, 12.739660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078738, -0.034333, 0.996304,
		0.509659, -0.857538, -0.069830,
		0.856766, 0.513274, -0.050023,
		15.420177, 16.547468, 12.724653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.260386, 15.860931, 13.278056>,  <14.820441, 16.188177, 12.759669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.260386, 15.860931, 13.278056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.424287, 16.220860, 13.218157>,  <15.522628, 16.436817, 13.182218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.424287, 16.220860, 13.218157>,  <15.260386, 15.860931, 13.278056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.424287, 16.220860, 13.218157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209206, 0.067086, 0.975568,
		0.887882, -0.431070, -0.160759,
		0.409753, 0.899821, -0.149747,
		15.547213, 16.490807, 13.173233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.873117, 15.827519, 13.627172>,  <15.260386, 15.860931, 13.278056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.873117, 15.827519, 13.627172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.761582, 16.210186, 13.593613>,  <15.694661, 16.439787, 13.573477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.761582, 16.210186, 13.593613>,  <15.873117, 15.827519, 13.627172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.761582, 16.210186, 13.593613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237698, 0.153399, 0.959150,
		0.930457, 0.247503, -0.270171,
		-0.278837, 0.956667, -0.083900,
		15.677932, 16.497187, 13.568442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<16.379021, 16.200468, 13.981442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.089249, 16.474865, 13.954262>,  <15.915386, 16.639503, 13.937954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.089249, 16.474865, 13.954262>,  <16.379021, 16.200468, 13.981442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.089249, 16.474865, 13.954262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192465, 0.295927, 0.935620,
		0.661937, 0.664711, -0.346408,
		-0.724428, 0.685993, -0.067951,
		15.871921, 16.680662, 13.933876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.640537, 16.872355, 14.280768>,  <16.379021, 16.200468, 13.981442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.640537, 16.872355, 14.280768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.241402, 16.887062, 14.302544>,  <16.001921, 16.895887, 14.315609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.241402, 16.887062, 14.302544>,  <16.640537, 16.872355, 14.280768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.241402, 16.887062, 14.302544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063733, 0.340907, 0.937934,
		0.015930, 0.939377, -0.342514,
		-0.997840, 0.036771, 0.054438,
		15.942050, 16.898094, 14.318875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.576330, 17.420631, 14.759953>,  <16.640537, 16.872355, 14.280768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.576330, 17.420631, 14.759953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.224903, 17.230129, 14.745539>,  <16.014046, 17.115828, 14.736891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.224903, 17.230129, 14.745539>,  <16.576330, 17.420631, 14.759953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.224903, 17.230129, 14.745539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097558, 0.105089, 0.989666,
		-0.467546, 0.873005, -0.138790,
		-0.878569, -0.476255, -0.036035,
		15.961332, 17.087254, 14.734728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.047405, 17.890068, 15.061954>,  <16.576330, 17.420631, 14.759953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.047405, 17.890068, 15.061954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.910760, 17.515583, 15.094944>,  <15.828773, 17.290892, 15.114738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.910760, 17.515583, 15.094944>,  <16.047405, 17.890068, 15.061954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.910760, 17.515583, 15.094944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035474, 0.100535, 0.994301,
		-0.939171, 0.336741, -0.067556,
		-0.341614, -0.936215, 0.082474,
		15.808276, 17.234718, 15.119686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.503168, 17.990248, 15.563739>,  <16.047405, 17.890068, 15.061954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.503168, 17.990248, 15.563739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.587291, 17.599651, 15.544828>,  <15.637764, 17.365294, 15.533482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.587291, 17.599651, 15.544828>,  <15.503168, 17.990248, 15.563739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.587291, 17.599651, 15.544828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010281, -0.050564, 0.998668,
		-0.977582, -0.209540, -0.020673,
		0.210306, -0.976492, -0.047277,
		15.650383, 17.306704, 15.530645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.989706, 17.567541, 15.870746>,  <15.503168, 17.990248, 15.563739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.989706, 17.567541, 15.870746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.329038, 17.356548, 15.889067>,  <15.532637, 17.229952, 15.900060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.329038, 17.356548, 15.889067>,  <14.989706, 17.567541, 15.870746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.329038, 17.356548, 15.889067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140355, -0.140626, 0.980064,
		-0.510527, -0.837845, -0.193332,
		0.848329, -0.527484, 0.045802,
		15.583536, 17.198303, 15.902807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.844784, 16.905449, 16.265478>,  <14.989706, 17.567541, 15.870746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.844784, 16.905449, 16.265478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.241967, 16.952446, 16.271547>,  <15.480277, 16.980644, 16.275188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.241967, 16.952446, 16.271547>,  <14.844784, 16.905449, 16.265478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.241967, 16.952446, 16.271547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003519, -0.157255, 0.987552,
		0.118418, -0.980543, -0.156561,
		0.992957, 0.117495, 0.015171,
		15.539854, 16.987694, 16.276098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.935262, 16.673126, 16.860651>,  <14.844784, 16.905449, 16.265478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.935262, 16.673126, 16.860651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.300006, 16.817635, 16.782682>,  <15.518852, 16.904339, 16.735901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.300006, 16.817635, 16.782682>,  <14.935262, 16.673126, 16.860651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.300006, 16.817635, 16.782682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269247, -0.167937, 0.948316,
		0.309863, -0.917214, -0.250406,
		0.911861, 0.361269, -0.194920,
		15.573565, 16.926016, 16.724207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.320115, 16.098001, 17.007565>,  <14.935262, 16.673126, 16.860651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.320115, 16.098001, 17.007565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.559806, 16.418209, 17.011469>,  <15.703621, 16.610334, 17.013811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.559806, 16.418209, 17.011469>,  <15.320115, 16.098001, 17.007565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.559806, 16.418209, 17.011469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151601, -0.125435, 0.980451,
		0.786094, -0.586033, -0.196524,
		0.599227, 0.800519, 0.009760,
		15.739574, 16.658365, 17.014397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.011499, 15.964145, 17.443262>,  <15.320115, 16.098001, 17.007565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.011499, 15.964145, 17.443262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.926536, 16.354969, 17.449373>,  <15.875557, 16.589464, 17.453039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.926536, 16.354969, 17.449373>,  <16.011499, 15.964145, 17.443262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.926536, 16.354969, 17.449373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155466, -0.049223, 0.986614,
		0.964734, 0.207193, 0.162355,
		-0.212411, 0.977061, 0.015276,
		15.862812, 16.648087, 17.453957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.427692, 16.246428, 17.930899>,  <16.011499, 15.964145, 17.443262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.427692, 16.246428, 17.930899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.128143, 16.505947, 17.876858>,  <15.948414, 16.661659, 17.844433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.128143, 16.505947, 17.876858>,  <16.427692, 16.246428, 17.930899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.128143, 16.505947, 17.876858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014406, 0.187876, 0.982087,
		0.662558, 0.737404, -0.131349,
		-0.748872, 0.648798, -0.135101,
		15.903481, 16.700586, 17.836327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.703640, 16.855934, 18.297077>,  <16.427692, 16.246428, 17.930899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.703640, 16.855934, 18.297077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.307125, 16.881195, 18.250847>,  <16.069216, 16.896351, 18.223108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.307125, 16.881195, 18.250847>,  <16.703640, 16.855934, 18.297077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.307125, 16.881195, 18.250847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102850, 0.176982, 0.978825,
		0.082269, 0.982186, -0.168945,
		-0.991289, 0.063151, -0.115578,
		16.009739, 16.900141, 18.216173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.516438, 17.454910, 18.646696>,  <16.703640, 16.855934, 18.297077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.516438, 17.454910, 18.646696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.141254, 17.322540, 18.605282>,  <15.916144, 17.243118, 18.580433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.141254, 17.322540, 18.605282>,  <16.516438, 17.454910, 18.646696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.141254, 17.322540, 18.605282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221432, 0.341875, 0.913285,
		-0.266831, 0.879551, -0.393942,
		-0.937960, -0.330924, -0.103538,
		15.859866, 17.223263, 18.574221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.882280, 18.068346, 18.733238>,  <16.516438, 17.454910, 18.646696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.882280, 18.068346, 18.733238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.752221, 17.707207, 18.845768>,  <15.674186, 17.490522, 18.913286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.752221, 17.707207, 18.845768>,  <15.882280, 18.068346, 18.733238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.752221, 17.707207, 18.845768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164236, 0.346881, 0.923418,
		-0.931292, 0.254045, -0.261069,
		-0.325149, -0.902848, 0.281324,
		15.654676, 17.436352, 18.930164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.326436, 18.203756, 19.161171>,  <15.882280, 18.068346, 18.733238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.326436, 18.203756, 19.161171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.360782, 17.817917, 19.260914>,  <15.381389, 17.586414, 19.320759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.360782, 17.817917, 19.260914>,  <15.326436, 18.203756, 19.161171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.360782, 17.817917, 19.260914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241543, 0.222661, 0.944499,
		-0.966584, -0.141329, -0.213873,
		0.085864, -0.964597, 0.249358,
		15.386540, 17.528538, 19.335722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.782290, 18.011896, 19.668653>,  <15.326436, 18.203756, 19.161171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.782290, 18.011896, 19.668653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.032807, 17.703659, 19.715883>,  <15.183118, 17.518717, 19.744221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.032807, 17.703659, 19.715883>,  <14.782290, 18.011896, 19.668653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.032807, 17.703659, 19.715883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126904, 0.048662, 0.990721,
		-0.769188, -0.635467, -0.067315,
		0.626294, -0.770594, 0.118073,
		15.220695, 17.472481, 19.751305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.450105, 17.486002, 20.107462>,  <14.782290, 18.011896, 19.668653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.450105, 17.486002, 20.107462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.848680, 17.455418, 20.121708>,  <15.087824, 17.437067, 20.130257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.848680, 17.455418, 20.121708>,  <14.450105, 17.486002, 20.107462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.848680, 17.455418, 20.121708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030361, 0.068831, 0.997166,
		-0.078694, -0.994694, 0.066265,
		0.996437, -0.076460, 0.035616,
		15.147611, 17.432480, 20.132393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.516672, 17.082493, 20.635769>,  <14.450105, 17.486002, 20.107462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.516672, 17.082493, 20.635769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.877097, 17.238750, 20.560423>,  <15.093352, 17.332506, 20.515215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.877097, 17.238750, 20.560423>,  <14.516672, 17.082493, 20.635769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.877097, 17.238750, 20.560423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075614, 0.286173, 0.955190,
		0.427048, -0.874928, 0.228321,
		0.901062, 0.390648, -0.188366,
		15.147416, 17.355944, 20.503914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.918165, 16.724789, 21.124947>,  <14.516672, 17.082493, 20.635769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.918165, 16.724789, 21.124947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.116393, 17.053387, 21.012123>,  <15.235330, 17.250546, 20.944429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.116393, 17.053387, 21.012123>,  <14.918165, 16.724789, 21.124947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.116393, 17.053387, 21.012123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060434, 0.291341, 0.954708,
		0.866463, -0.490170, 0.094734,
		0.495569, 0.821494, -0.282059,
		15.265064, 17.299835, 20.927505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.483850, 16.697325, 21.578485>,  <14.918165, 16.724789, 21.124947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.483850, 16.697325, 21.578485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.456351, 17.077206, 21.456282>,  <15.439852, 17.305134, 21.382959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.456351, 17.077206, 21.456282>,  <15.483850, 16.697325, 21.578485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.456351, 17.077206, 21.456282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078969, 0.310452, 0.947303,
		0.994504, 0.040998, -0.096340,
		-0.068746, 0.949705, -0.305508,
		15.435727, 17.362118, 21.364630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.930650, 17.061745, 21.944107>,  <15.483850, 16.697325, 21.578485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.930650, 17.061745, 21.944107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.693622, 17.353535, 21.807447>,  <15.551405, 17.528608, 21.725452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.693622, 17.353535, 21.807447>,  <15.930650, 17.061745, 21.944107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.693622, 17.353535, 21.807447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040904, 0.450837, 0.891668,
		0.804479, 0.514402, -0.296992,
		-0.592571, 0.729476, -0.341648,
		15.515850, 17.572378, 21.704952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.233473, 17.690233, 22.301405>,  <15.930650, 17.061745, 21.944107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.233473, 17.690233, 22.301405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.856969, 17.771992, 22.193884>,  <15.631066, 17.821047, 22.129372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.856969, 17.771992, 22.193884>,  <16.233473, 17.690233, 22.301405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.856969, 17.771992, 22.193884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198427, 0.309307, 0.930030,
		0.273235, 0.928737, -0.250580,
		-0.941259, 0.204395, -0.268800,
		15.574591, 17.833311, 22.113243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.114468, 18.365910, 22.390064>,  <16.233473, 17.690233, 22.301405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.114468, 18.365910, 22.390064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.770059, 18.169632, 22.443514>,  <15.563413, 18.051865, 22.475584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.770059, 18.169632, 22.443514>,  <16.114468, 18.365910, 22.390064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.770059, 18.169632, 22.443514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121165, 0.453114, 0.883180,
		-0.493921, 0.744248, -0.449597,
		-0.861023, -0.490696, 0.133626,
		15.511751, 18.022423, 22.483601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.609859, 18.866055, 22.614124>,  <16.114468, 18.365910, 22.390064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.609859, 18.866055, 22.614124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.517619, 18.505623, 22.761030>,  <15.462276, 18.289364, 22.849174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.517619, 18.505623, 22.761030>,  <15.609859, 18.866055, 22.614124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.517619, 18.505623, 22.761030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120712, 0.401012, 0.908085,
		-0.965532, 0.165070, -0.201244,
		-0.230599, -0.901078, 0.367264,
		15.448440, 18.235300, 22.871210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.335020, 18.965923, 22.692636>,  <15.609859, 18.866055, 22.614124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.335020, 18.965923, 22.692636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.666973, 19.128365, 22.845671>,  <16.866146, 19.225830, 22.937492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.666973, 19.128365, 22.845671>,  <16.335020, 18.965923, 22.692636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.666973, 19.128365, 22.845671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384257, 0.081158, -0.919652,
		-0.404524, 0.910216, -0.088697,
		0.829883, 0.406104, 0.382587,
		16.915937, 19.250196, 22.960447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.565025, 19.563099, 22.321936>,  <16.335020, 18.965923, 22.692636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.565025, 19.563099, 22.321936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.898533, 19.407005, 22.478165>,  <17.098637, 19.313349, 22.571903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.898533, 19.407005, 22.478165>,  <16.565025, 19.563099, 22.321936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.898533, 19.407005, 22.478165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434256, 0.026646, -0.900395,
		0.340957, 0.920331, 0.191677,
		0.833769, -0.390233, 0.390574,
		17.148663, 19.289936, 22.595337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.062361, 19.898268, 22.070887>,  <16.565025, 19.563099, 22.321936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.062361, 19.898268, 22.070887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.234268, 19.550663, 22.168961>,  <17.337412, 19.342100, 22.227804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.234268, 19.550663, 22.168961>,  <17.062361, 19.898268, 22.070887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.234268, 19.550663, 22.168961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482022, -0.008806, -0.876115,
		0.763514, 0.494711, 0.415098,
		0.429768, -0.869013, 0.245186,
		17.363199, 19.289959, 22.242516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.776791, 19.997601, 21.910997>,  <17.062361, 19.898268, 22.070887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.776791, 19.997601, 21.910997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.718830, 19.602066, 21.924908>,  <17.684053, 19.364746, 21.933254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.718830, 19.602066, 21.924908>,  <17.776791, 19.997601, 21.910997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.718830, 19.602066, 21.924908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427923, -0.094321, -0.898880,
		0.892124, -0.115367, 0.436812,
		-0.144902, -0.988835, 0.034778,
		17.675360, 19.305416, 21.935341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.392805, 19.791784, 21.455151>,  <17.776791, 19.997601, 21.910997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.392805, 19.791784, 21.455151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.163071, 19.464382, 21.460651>,  <18.025230, 19.267941, 21.463953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.163071, 19.464382, 21.460651>,  <18.392805, 19.791784, 21.455151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.163071, 19.464382, 21.460651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180808, -0.143221, -0.973035,
		0.798404, -0.556360, 0.230249,
		-0.574334, -0.818506, 0.013754,
		17.990770, 19.218830, 21.464777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.848206, 19.211983, 21.171309>,  <18.392805, 19.791784, 21.455151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.848206, 19.211983, 21.171309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.460052, 19.120827, 21.139246>,  <18.227161, 19.066133, 21.120008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.460052, 19.120827, 21.139246>,  <18.848206, 19.211983, 21.171309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.460052, 19.120827, 21.139246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117058, -0.153320, -0.981219,
		0.211319, -0.961540, 0.175455,
		-0.970382, -0.227889, -0.080156,
		18.168938, 19.052460, 21.115200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.885443, 18.880188, 20.583706>,  <18.848206, 19.211983, 21.171309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.885443, 18.880188, 20.583706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.487358, 18.861858, 20.618248>,  <18.248508, 18.850861, 20.638973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.487358, 18.861858, 20.618248>,  <18.885443, 18.880188, 20.583706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.487358, 18.861858, 20.618248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059668, -0.414998, -0.907864,
		0.077439, -0.908668, 0.410276,
		-0.995210, -0.045824, 0.086355,
		18.188795, 18.848112, 20.644154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.582916, 18.176781, 20.510401>,  <18.885443, 18.880188, 20.583706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.582916, 18.176781, 20.510401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.284725, 18.423145, 20.408487>,  <18.105810, 18.570965, 20.347340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.284725, 18.423145, 20.408487>,  <18.582916, 18.176781, 20.510401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.284725, 18.423145, 20.408487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183162, -0.556836, -0.810176,
		-0.640872, -0.557301, 0.527920,
		-0.745477, 0.615914, -0.254784,
		18.061083, 18.607920, 20.332052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.916588, 17.820963, 20.287422>,  <18.582916, 18.176781, 20.510401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.916588, 17.820963, 20.287422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.861694, 18.184422, 20.129673>,  <17.828758, 18.402496, 20.035023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.861694, 18.184422, 20.129673>,  <17.916588, 17.820963, 20.287422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.861694, 18.184422, 20.129673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221005, -0.416193, -0.882009,
		-0.965569, -0.033883, 0.257931,
		-0.137234, 0.908645, -0.394375,
		17.820524, 18.457014, 20.011360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.395603, 17.740488, 19.763002>,  <17.916588, 17.820963, 20.287422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.395603, 17.740488, 19.763002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.550148, 18.096264, 19.665333>,  <17.642874, 18.309731, 19.606731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.550148, 18.096264, 19.665333>,  <17.395603, 17.740488, 19.763002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.550148, 18.096264, 19.665333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142429, -0.204021, -0.968550,
		-0.911284, 0.408987, 0.047857,
		0.386361, 0.889441, -0.244173,
		17.666056, 18.363096, 19.592081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.044693, 17.919439, 19.179268>,  <17.395603, 17.740488, 19.763002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.044693, 17.919439, 19.179268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.351173, 18.176460, 19.176052>,  <17.535061, 18.330673, 19.174122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.351173, 18.176460, 19.176052>,  <17.044693, 17.919439, 19.179268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.351173, 18.176460, 19.176052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042502, 0.038188, -0.998367,
		-0.641196, 0.765289, 0.056570,
		0.766199, 0.642553, -0.008041,
		17.581034, 18.369226, 19.173639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.935389, 18.469122, 18.677032>,  <17.044693, 17.919439, 19.179268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.935389, 18.469122, 18.677032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.332340, 18.440933, 18.717459>,  <17.570511, 18.424021, 18.741714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.332340, 18.440933, 18.717459>,  <16.935389, 18.469122, 18.677032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.332340, 18.440933, 18.717459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095865, -0.073667, -0.992665,
		0.077400, 0.994790, -0.066350,
		0.992380, -0.070471, 0.101067,
		17.630054, 18.419792, 18.747780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.172859, 18.948233, 18.182053>,  <16.935389, 18.469122, 18.677032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.172859, 18.948233, 18.182053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.483631, 18.705078, 18.247602>,  <17.670094, 18.559185, 18.286932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.483631, 18.705078, 18.247602>,  <17.172859, 18.948233, 18.182053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.483631, 18.705078, 18.247602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204986, -0.001869, -0.978763,
		0.595284, 0.794021, 0.123156,
		0.776929, -0.607887, 0.163876,
		17.716709, 18.522713, 18.296764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.732697, 19.384533, 17.907196>,  <17.172859, 18.948233, 18.182053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.732697, 19.384533, 17.907196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.823986, 18.995354, 17.921564>,  <17.878759, 18.761847, 17.930185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.823986, 18.995354, 17.921564>,  <17.732697, 19.384533, 17.907196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.823986, 18.995354, 17.921564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197977, 0.010252, -0.980153,
		0.953268, 0.230805, 0.194961,
		0.228223, -0.972946, 0.035921,
		17.892452, 18.703470, 17.932341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.209526, 19.354481, 17.513865>,  <17.732697, 19.384533, 17.907196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.209526, 19.354481, 17.513865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.098812, 18.970367, 17.528002>,  <18.032383, 18.739901, 17.536484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.098812, 18.970367, 17.528002>,  <18.209526, 19.354481, 17.513865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.098812, 18.970367, 17.528002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110990, -0.068482, -0.991459,
		0.954500, -0.270498, 0.125536,
		-0.276785, -0.960281, 0.035343,
		18.015776, 18.682283, 17.538605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.746637, 19.050919, 17.165106>,  <18.209526, 19.354481, 17.513865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.746637, 19.050919, 17.165106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.447193, 18.785717, 17.166296>,  <18.267527, 18.626596, 17.167011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.447193, 18.785717, 17.166296>,  <18.746637, 19.050919, 17.165106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.447193, 18.785717, 17.166296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324047, -0.369799, -0.870772,
		0.578426, -0.650904, 0.491679,
		-0.748611, -0.663004, 0.002978,
		18.222610, 18.586817, 17.167189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.980614, 18.360626, 17.088940>,  <18.746637, 19.050919, 17.165106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.980614, 18.360626, 17.088940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.602207, 18.374668, 16.960052>,  <18.375164, 18.383093, 16.882719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.602207, 18.374668, 16.960052>,  <18.980614, 18.360626, 17.088940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.602207, 18.374668, 16.960052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309007, -0.202394, -0.929274,
		-0.097835, -0.978675, 0.180620,
		-0.946014, 0.035102, -0.322219,
		18.318403, 18.385199, 16.863386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.998623, 17.800726, 16.668371>,  <18.980614, 18.360626, 17.088940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.998623, 17.800726, 16.668371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.661198, 17.988358, 16.563780>,  <18.458742, 18.100937, 16.501024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.661198, 17.988358, 16.563780>,  <18.998623, 17.800726, 16.668371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.661198, 17.988358, 16.563780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129061, -0.295556, -0.946568,
		-0.521295, -0.832234, 0.188780,
		-0.843560, 0.469077, -0.261481,
		18.408129, 18.129080, 16.485336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.583994, 17.297602, 16.298302>,  <18.998623, 17.800726, 16.668371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.583994, 17.297602, 16.298302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.496819, 17.670990, 16.184366>,  <18.444513, 17.895023, 16.116005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.496819, 17.670990, 16.184366>,  <18.583994, 17.297602, 16.298302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.496819, 17.670990, 16.184366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130985, -0.261238, -0.956346,
		-0.967133, -0.245733, -0.065337,
		-0.217937, 0.933472, -0.284839,
		18.431437, 17.951031, 16.098915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.089369, 17.252317, 15.692967>,  <18.583994, 17.297602, 16.298302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.089369, 17.252317, 15.692967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.272194, 17.606808, 15.662775>,  <18.381889, 17.819502, 15.644660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.272194, 17.606808, 15.662775>,  <18.089369, 17.252317, 15.692967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.272194, 17.606808, 15.662775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241948, -0.205546, -0.948268,
		-0.855895, 0.415155, -0.308368,
		0.457062, 0.886226, -0.075480,
		18.409313, 17.872675, 15.640131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<15.477380, 15.669152, 11.103727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.608102, 16.040508, 11.174482>,  <15.686535, 16.263323, 11.216935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.608102, 16.040508, 11.174482>,  <15.477380, 15.669152, 11.103727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.608102, 16.040508, 11.174482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252376, 0.094640, -0.962990,
		-0.910772, 0.359351, -0.203374,
		0.326804, 0.928391, 0.176887,
		15.706143, 16.319025, 11.227549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.095391, 16.085564, 10.618714>,  <15.477380, 15.669152, 11.103727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.095391, 16.085564, 10.618714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.401784, 16.318733, 10.727138>,  <15.585620, 16.458635, 10.792192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.401784, 16.318733, 10.727138>,  <15.095391, 16.085564, 10.618714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.401784, 16.318733, 10.727138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143543, 0.255909, -0.955984,
		-0.626632, 0.771175, 0.112346,
		0.765981, 0.582924, 0.271058,
		15.631578, 16.493610, 10.808455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.917711, 16.671614, 10.288038>,  <15.095391, 16.085564, 10.618714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.917711, 16.671614, 10.288038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.308684, 16.696056, 10.368923>,  <15.543268, 16.710722, 10.417454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.308684, 16.696056, 10.368923>,  <14.917711, 16.671614, 10.288038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.308684, 16.696056, 10.368923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176490, 0.289786, -0.940678,
		-0.116081, 0.955139, 0.272461,
		0.977434, 0.061108, 0.202211,
		15.601914, 16.714388, 10.429586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.188659, 17.293091, 9.960025>,  <14.917711, 16.671614, 10.288038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.188659, 17.293091, 9.960025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.527946, 17.094387, 10.033517>,  <15.731518, 16.975164, 10.077612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.527946, 17.094387, 10.033517>,  <15.188659, 17.293091, 9.960025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.527946, 17.094387, 10.033517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382631, 0.334867, -0.861079,
		0.366225, 0.800683, 0.474116,
		0.848217, -0.496760, 0.183729,
		15.782411, 16.945358, 10.088635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.762990, 17.714794, 9.897544>,  <15.188659, 17.293091, 9.960025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.762990, 17.714794, 9.897544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.905919, 17.346855, 9.832800>,  <15.991676, 17.126091, 9.793954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.905919, 17.346855, 9.832800>,  <15.762990, 17.714794, 9.897544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.905919, 17.346855, 9.832800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390646, 0.304607, -0.868683,
		0.848360, 0.247171, 0.468179,
		0.357324, -0.919848, -0.161860,
		16.013117, 17.070900, 9.784242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.457272, 17.795223, 9.631661>,  <15.762990, 17.714794, 9.897544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.457272, 17.795223, 9.631661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.369240, 17.418835, 9.528792>,  <16.316420, 17.193001, 9.467071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.369240, 17.418835, 9.528792>,  <16.457272, 17.795223, 9.631661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.369240, 17.418835, 9.528792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368167, 0.164014, -0.915179,
		0.903337, -0.296095, 0.310338,
		-0.220080, -0.940971, -0.257172,
		16.303215, 17.136543, 9.451641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.089230, 17.567829, 9.243546>,  <16.457272, 17.795223, 9.631661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.089230, 17.567829, 9.243546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.785080, 17.332066, 9.134420>,  <16.602591, 17.190607, 9.068945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.785080, 17.332066, 9.134420>,  <17.089230, 17.567829, 9.243546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.785080, 17.332066, 9.134420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245259, 0.128373, -0.960920,
		0.601396, -0.797570, 0.046946,
		-0.760375, -0.589408, -0.272815,
		16.556967, 17.155243, 9.052576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.422981, 17.059114, 8.873824>,  <17.089230, 17.567829, 9.243546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.422981, 17.059114, 8.873824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.041718, 17.117863, 8.768059>,  <16.812960, 17.153111, 8.704599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.041718, 17.117863, 8.768059>,  <17.422981, 17.059114, 8.873824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.041718, 17.117863, 8.768059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269335, 0.014344, -0.962940,
		-0.137634, -0.989052, -0.053229,
		-0.953161, 0.146870, -0.264412,
		16.755770, 17.161924, 8.688735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.466976, 16.804543, 8.210504>,  <17.422981, 17.059114, 8.873824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.466976, 16.804543, 8.210504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.110889, 16.986435, 8.199699>,  <16.897238, 17.095572, 8.193217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.110889, 16.986435, 8.199699>,  <17.466976, 16.804543, 8.210504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.110889, 16.986435, 8.199699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202653, 0.342231, -0.917502,
		-0.407975, -0.822251, -0.396813,
		-0.890218, 0.454733, -0.027010,
		16.843824, 17.122854, 8.191596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.058640, 16.570902, 7.528412>,  <17.466976, 16.804543, 8.210504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.058640, 16.570902, 7.528412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.911758, 16.928555, 7.630932>,  <16.823629, 17.143147, 7.692443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.911758, 16.928555, 7.630932>,  <17.058640, 16.570902, 7.528412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.911758, 16.928555, 7.630932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085686, 0.306894, -0.947879,
		-0.926186, -0.326101, -0.189307,
		-0.367201, 0.894133, 0.256299,
		16.801598, 17.196795, 7.707821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.466713, 16.763760, 7.054688>,  <17.058640, 16.570902, 7.528412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.466713, 16.763760, 7.054688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.549152, 17.116463, 7.224407>,  <16.598616, 17.328085, 7.326239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.549152, 17.116463, 7.224407>,  <16.466713, 16.763760, 7.054688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.549152, 17.116463, 7.224407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061596, 0.444437, -0.893690,
		-0.976590, 0.158054, 0.145911,
		0.206099, 0.881757, 0.424297,
		16.610983, 17.380989, 7.351696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.048761, 17.256205, 6.739962>,  <16.466713, 16.763760, 7.054688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.048761, 17.256205, 6.739962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.339729, 17.472904, 6.908422>,  <16.514311, 17.602924, 7.009498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.339729, 17.472904, 6.908422>,  <16.048761, 17.256205, 6.739962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.339729, 17.472904, 6.908422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150309, 0.473044, -0.868122,
		-0.669528, 0.694792, 0.262672,
		0.727420, 0.541750, 0.421150,
		16.557955, 17.635429, 7.034767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.013628, 17.841856, 6.414094>,  <16.048761, 17.256205, 6.739962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.013628, 17.841856, 6.414094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.376308, 17.854397, 6.582337>,  <16.593916, 17.861921, 6.683283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.376308, 17.854397, 6.582337>,  <16.013628, 17.841856, 6.414094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.376308, 17.854397, 6.582337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337361, 0.544619, -0.767839,
		-0.253144, 0.838097, 0.483230,
		0.906700, 0.031351, 0.420608,
		16.648319, 17.863802, 6.708520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.196669, 18.446136, 6.178257>,  <16.013628, 17.841856, 6.414094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.196669, 18.446136, 6.178257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.532730, 18.306377, 6.344176>,  <16.734367, 18.222521, 6.443728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.532730, 18.306377, 6.344176>,  <16.196669, 18.446136, 6.178257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.532730, 18.306377, 6.344176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542291, 0.530407, -0.651605,
		0.007658, 0.772391, 0.635101,
		0.840156, -0.349400, 0.414798,
		16.784777, 18.201557, 6.468616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.234659, 18.984383, 5.545625>,  <16.196669, 18.446136, 6.178257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.234659, 18.984383, 5.545625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.877545, 19.071758, 5.388034>,  <15.663277, 19.124184, 5.293479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.877545, 19.071758, 5.388034>,  <16.234659, 18.984383, 5.545625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.877545, 19.071758, 5.388034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191307, 0.607946, 0.770586,
		0.407843, 0.763339, -0.500977,
		-0.892785, 0.218438, -0.393979,
		15.609710, 19.137289, 5.269840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.227755, 19.673857, 5.425865>,  <16.234659, 18.984383, 5.545625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.227755, 19.673857, 5.425865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.861205, 19.530800, 5.497812>,  <15.641275, 19.444965, 5.540981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.861205, 19.530800, 5.497812>,  <16.227755, 19.673857, 5.425865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.861205, 19.530800, 5.497812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056435, 0.560227, 0.826415,
		-0.396328, 0.747153, -0.533560,
		-0.916373, -0.357643, 0.179868,
		15.586293, 19.423508, 5.551773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.699726, 20.246910, 5.584372>,  <16.227755, 19.673857, 5.425865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.699726, 20.246910, 5.584372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.528852, 19.940044, 5.775776>,  <15.426327, 19.755924, 5.890618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.528852, 19.940044, 5.775776>,  <15.699726, 20.246910, 5.584372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.528852, 19.940044, 5.775776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217912, 0.600985, 0.768981,
		-0.877512, 0.224225, -0.423907,
		-0.427186, -0.767164, 0.478510,
		15.400696, 19.709896, 5.919329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.177114, 20.535690, 5.827106>,  <15.699726, 20.246910, 5.584372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.177114, 20.535690, 5.827106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.203547, 20.205288, 6.051015>,  <15.219407, 20.007046, 6.185360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.203547, 20.205288, 6.051015>,  <15.177114, 20.535690, 5.827106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.203547, 20.205288, 6.051015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226481, 0.533939, 0.814626,
		-0.971771, -0.180611, -0.151791,
		0.066083, -0.826007, 0.559772,
		15.223372, 19.957485, 6.218946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.737600, 20.586746, 6.451812>,  <15.177114, 20.535690, 5.827106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.737600, 20.586746, 6.451812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.991376, 20.300446, 6.568561>,  <15.143641, 20.128666, 6.638609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.991376, 20.300446, 6.568561>,  <14.737600, 20.586746, 6.451812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.991376, 20.300446, 6.568561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192678, 0.219238, 0.956457,
		-0.748573, -0.663052, 0.001184,
		0.634440, -0.715750, 0.291870,
		15.181708, 20.085720, 6.656122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.434062, 20.382788, 7.132768>,  <14.737600, 20.586746, 6.451812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.434062, 20.382788, 7.132768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.789664, 20.200874, 7.154093>,  <15.003025, 20.091726, 7.166887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.789664, 20.200874, 7.154093>,  <14.434062, 20.382788, 7.132768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.789664, 20.200874, 7.154093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038948, 0.040902, 0.998404,
		-0.456238, -0.889662, 0.018649,
		0.889005, -0.454783, 0.053311,
		15.056366, 20.064440, 7.170086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.339111, 19.794556, 7.505727>,  <14.434062, 20.382788, 7.132768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.339111, 19.794556, 7.505727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.723998, 19.899803, 7.533749>,  <14.954930, 19.962952, 7.550562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.723998, 19.899803, 7.533749>,  <14.339111, 19.794556, 7.505727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.723998, 19.899803, 7.533749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044504, -0.101849, 0.993804,
		0.268624, -0.959372, -0.086291,
		0.962216, 0.263119, 0.070055,
		15.012663, 19.978739, 7.554765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.398664, 19.498590, 8.126804>,  <14.339111, 19.794556, 7.505727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.398664, 19.498590, 8.126804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.687570, 19.765778, 8.055079>,  <14.860913, 19.926090, 8.012045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.687570, 19.765778, 8.055079>,  <14.398664, 19.498590, 8.126804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.687570, 19.765778, 8.055079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195841, 0.051126, 0.979302,
		0.663309, -0.742433, -0.093888,
		0.722266, 0.667967, -0.179311,
		14.904249, 19.966167, 8.001286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.910956, 19.279736, 8.542349>,  <14.398664, 19.498590, 8.126804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.910956, 19.279736, 8.542349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.015321, 19.661987, 8.487659>,  <15.077940, 19.891338, 8.454844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.015321, 19.661987, 8.487659>,  <14.910956, 19.279736, 8.542349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.015321, 19.661987, 8.487659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054400, 0.155960, 0.986264,
		0.963829, -0.249890, 0.092678,
		0.260911, 0.955632, -0.136725,
		15.093595, 19.948677, 8.446641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.579322, 19.412285, 9.026062>,  <14.910956, 19.279736, 8.542349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.579322, 19.412285, 9.026062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.386380, 19.754841, 8.952379>,  <15.270616, 19.960375, 8.908170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.386380, 19.754841, 8.952379>,  <15.579322, 19.412285, 9.026062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.386380, 19.754841, 8.952379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099448, 0.262464, 0.959804,
		0.870313, 0.444647, -0.211767,
		-0.482354, 0.856389, -0.184207,
		15.241673, 20.011757, 8.897118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.815807, 19.767857, 9.556336>,  <15.579322, 19.412285, 9.026062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.815807, 19.767857, 9.556336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.542951, 20.014511, 9.399141>,  <15.379236, 20.162504, 9.304824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.542951, 20.014511, 9.399141>,  <15.815807, 19.767857, 9.556336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.542951, 20.014511, 9.399141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153191, 0.405000, 0.901392,
		0.714993, 0.675080, -0.181804,
		-0.682142, 0.616638, -0.392989,
		15.338308, 20.199503, 9.281244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.001488, 20.470648, 9.708659>,  <15.815807, 19.767857, 9.556336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.001488, 20.470648, 9.708659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.608895, 20.507275, 9.641358>,  <15.373340, 20.529251, 9.600978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.608895, 20.507275, 9.641358>,  <16.001488, 20.470648, 9.708659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.608895, 20.507275, 9.641358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115052, 0.420478, 0.899978,
		0.153155, 0.902670, -0.402157,
		-0.981482, 0.091568, -0.168252,
		15.314451, 20.534744, 9.590882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.826925, 21.136864, 9.948804>,  <16.001488, 20.470648, 9.708659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.826925, 21.136864, 9.948804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.476356, 20.945744, 9.924839>,  <15.266014, 20.831072, 9.910460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.476356, 20.945744, 9.924839>,  <15.826925, 21.136864, 9.948804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.476356, 20.945744, 9.924839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181790, 0.213085, 0.959973,
		-0.445907, 0.852235, -0.273612,
		-0.876424, -0.477798, -0.059911,
		15.213428, 20.802404, 9.906866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.261587, 21.619549, 9.962805>,  <15.826925, 21.136864, 9.948804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.261587, 21.619549, 9.962805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.133414, 21.265709, 10.098337>,  <15.056511, 21.053406, 10.179657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.133414, 21.265709, 10.098337>,  <15.261587, 21.619549, 9.962805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.133414, 21.265709, 10.098337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152735, 0.401260, 0.903140,
		-0.934877, 0.237644, -0.263686,
		-0.320433, -0.884600, 0.338832,
		15.037285, 21.000330, 10.199986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.189538, 22.350685, 9.866412>,  <15.261587, 21.619549, 9.962805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.189538, 22.350685, 9.866412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.415345, 22.653450, 9.998111>,  <15.550829, 22.835110, 10.077129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.415345, 22.653450, 9.998111>,  <15.189538, 22.350685, 9.866412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.415345, 22.653450, 9.998111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467329, 0.035708, -0.883362,
		-0.680386, 0.652539, -0.333569,
		0.564517, 0.756913, 0.329246,
		15.584701, 22.880524, 10.096885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.138799, 22.762123, 9.330748>,  <15.189538, 22.350685, 9.866412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.138799, 22.762123, 9.330748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.446414, 22.902035, 9.544751>,  <15.630983, 22.985981, 9.673154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.446414, 22.902035, 9.544751>,  <15.138799, 22.762123, 9.330748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.446414, 22.902035, 9.544751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510388, 0.167875, -0.843399,
		-0.384817, 0.921669, -0.049420,
		0.769038, 0.349778, 0.535010,
		15.677126, 23.006968, 9.705255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.280352, 23.355204, 8.909679>,  <15.138799, 22.762123, 9.330748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.280352, 23.355204, 8.909679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.603433, 23.271950, 9.130332>,  <15.797281, 23.221996, 9.262724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.603433, 23.271950, 9.130332>,  <15.280352, 23.355204, 8.909679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.603433, 23.271950, 9.130332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568321, 0.025802, -0.822402,
		0.156939, 0.977759, 0.139129,
		0.807701, -0.208137, 0.551632,
		15.845743, 23.209509, 9.295821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.813567, 23.873823, 8.753758>,  <15.280352, 23.355204, 8.909679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.813567, 23.873823, 8.753758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.014557, 23.560051, 8.899187>,  <16.135151, 23.371788, 8.986444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.014557, 23.560051, 8.899187>,  <15.813567, 23.873823, 8.753758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.014557, 23.560051, 8.899187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522334, -0.059678, -0.850650,
		0.688975, 0.617336, 0.379749,
		0.502475, -0.784433, 0.363572,
		16.165298, 23.324720, 9.008259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.503124, 24.057926, 8.628216>,  <15.813567, 23.873823, 8.753758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.503124, 24.057926, 8.628216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.497395, 23.659447, 8.662593>,  <16.493958, 23.420359, 8.683219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.497395, 23.659447, 8.662593>,  <16.503124, 24.057926, 8.628216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.497395, 23.659447, 8.662593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595470, -0.077546, -0.799626,
		0.803250, 0.039722, 0.594317,
		-0.014324, -0.996197, 0.085942,
		16.493097, 23.360588, 8.688375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.227442, 23.849909, 8.367188>,  <16.503124, 24.057926, 8.628216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.227442, 23.849909, 8.367188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.997673, 23.523396, 8.391572>,  <16.859812, 23.327488, 8.406202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.997673, 23.523396, 8.391572>,  <17.227442, 23.849909, 8.367188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.997673, 23.523396, 8.391572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381804, -0.333062, -0.862146,
		0.724061, -0.471961, 0.502980,
		-0.574423, -0.816286, 0.060961,
		16.825346, 23.278509, 8.409861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.744617, 23.282589, 8.433029>,  <17.227442, 23.849909, 8.367188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.744617, 23.282589, 8.433029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.392254, 23.164837, 8.284793>,  <17.180836, 23.094185, 8.195851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.392254, 23.164837, 8.284793>,  <17.744617, 23.282589, 8.433029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.392254, 23.164837, 8.284793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450481, -0.281408, -0.847276,
		0.145136, -0.913317, 0.380509,
		-0.880910, -0.294383, -0.370590,
		17.127981, 23.076523, 8.173616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.885746, 22.674709, 8.267706>,  <17.744617, 23.282589, 8.433029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.885746, 22.674709, 8.267706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.552906, 22.759663, 8.062766>,  <17.353203, 22.810635, 7.939802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.552906, 22.759663, 8.062766>,  <17.885746, 22.674709, 8.267706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.552906, 22.759663, 8.062766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388585, -0.435896, -0.811786,
		-0.395742, -0.874578, 0.280180,
		-0.832100, 0.212384, -0.512350,
		17.303276, 22.823378, 7.909061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.611320, 21.954546, 7.910479>,  <17.885746, 22.674709, 8.267706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.611320, 21.954546, 7.910479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.495785, 22.284405, 7.715941>,  <17.426464, 22.482319, 7.599219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.495785, 22.284405, 7.715941>,  <17.611320, 21.954546, 7.910479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.495785, 22.284405, 7.715941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336687, -0.388051, -0.857938,
		-0.896222, -0.411553, -0.165563,
		-0.288840, 0.824646, -0.486344,
		17.409132, 22.531799, 7.570038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.592697, 21.709503, 7.176935>,  <17.611320, 21.954546, 7.910479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.592697, 21.709503, 7.176935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.541973, 22.103313, 7.128560>,  <17.511538, 22.339600, 7.099535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.541973, 22.103313, 7.128560>,  <17.592697, 21.709503, 7.176935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.541973, 22.103313, 7.128560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337453, -0.071830, -0.938598,
		-0.932762, -0.159835, -0.323123,
		-0.126811, 0.984527, -0.120937,
		17.503929, 22.398672, 7.092279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.099426, 21.860155, 6.568497>,  <17.592697, 21.709503, 7.176935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.099426, 21.860155, 6.568497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.317493, 22.190304, 6.627226>,  <17.448334, 22.388393, 6.662463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.317493, 22.190304, 6.627226>,  <17.099426, 21.860155, 6.568497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.317493, 22.190304, 6.627226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336138, -0.054770, -0.940219,
		-0.767988, 0.561928, -0.307297,
		0.545166, 0.825371, 0.146823,
		17.481043, 22.437916, 6.671273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.865118, 22.320610, 6.058145>,  <17.099426, 21.860155, 6.568497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.865118, 22.320610, 6.058145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.232803, 22.414360, 6.184711>,  <17.453415, 22.470610, 6.260650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.232803, 22.414360, 6.184711>,  <16.865118, 22.320610, 6.058145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.232803, 22.414360, 6.184711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346613, -0.100334, -0.932627,
		-0.186836, 0.966955, -0.173465,
		0.919213, 0.234373, 0.316413,
		17.508568, 22.484673, 6.279634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<13.518218, 22.619411, 13.455640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.890029, 22.738228, 13.543045>,  <14.113115, 22.809517, 13.595489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.890029, 22.738228, 13.543045>,  <13.518218, 22.619411, 13.455640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.890029, 22.738228, 13.543045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039119, 0.509795, -0.859406,
		-0.366674, 0.807389, 0.462248,
		0.929527, 0.297039, 0.218513,
		14.168887, 22.827339, 13.608599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.599642, 23.418568, 13.259933>,  <13.518218, 22.619411, 13.455640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.599642, 23.418568, 13.259933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.950336, 23.228081, 13.232939>,  <14.160751, 23.113789, 13.216743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.950336, 23.228081, 13.232939>,  <13.599642, 23.418568, 13.259933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.950336, 23.228081, 13.232939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156676, 0.415424, -0.896033,
		0.454742, 0.775009, 0.438828,
		0.876734, -0.476218, -0.067485,
		14.213356, 23.085215, 13.212693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.026534, 23.887289, 12.867273>,  <13.599642, 23.418568, 13.259933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.026534, 23.887289, 12.867273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.249259, 23.556541, 12.898891>,  <14.382894, 23.358093, 12.917863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.249259, 23.556541, 12.898891>,  <14.026534, 23.887289, 12.867273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.249259, 23.556541, 12.898891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450043, 0.220328, -0.865400,
		0.698156, 0.517439, 0.494807,
		0.556812, -0.826869, 0.079046,
		14.416303, 23.308481, 12.922606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.725761, 24.163391, 12.708061>,  <14.026534, 23.887289, 12.867273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.725761, 24.163391, 12.708061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.718423, 23.769772, 12.637282>,  <14.714020, 23.533600, 12.594815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.718423, 23.769772, 12.637282>,  <14.725761, 24.163391, 12.708061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.718423, 23.769772, 12.637282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354411, 0.159085, -0.921458,
		0.934910, -0.079618, 0.345840,
		-0.018346, -0.984049, -0.176948,
		14.712919, 23.474556, 12.584198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.354342, 23.948805, 12.452802>,  <14.725761, 24.163391, 12.708061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.354342, 23.948805, 12.452802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.144114, 23.635746, 12.319389>,  <15.017978, 23.447910, 12.239342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.144114, 23.635746, 12.319389>,  <15.354342, 23.948805, 12.452802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.144114, 23.635746, 12.319389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523478, 0.011538, -0.851961,
		0.670632, -0.622360, 0.403634,
		-0.525569, -0.782646, -0.333530,
		14.986444, 23.400951, 12.219330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.836358, 23.555944, 12.178834>,  <15.354342, 23.948805, 12.452802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.836358, 23.555944, 12.178834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.498845, 23.423267, 12.010070>,  <15.296337, 23.343660, 11.908812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.498845, 23.423267, 12.010070>,  <15.836358, 23.555944, 12.178834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.498845, 23.423267, 12.010070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483939, -0.130376, -0.865335,
		0.232019, -0.934335, 0.270529,
		-0.843783, -0.331694, -0.421911,
		15.245710, 23.323759, 11.883496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.023909, 22.998064, 11.783943>,  <15.836358, 23.555944, 12.178834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.023909, 22.998064, 11.783943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.675672, 23.110111, 11.622151>,  <15.466729, 23.177340, 11.525076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.675672, 23.110111, 11.622151>,  <16.023909, 22.998064, 11.783943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.675672, 23.110111, 11.622151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416018, -0.019802, -0.909141,
		-0.262674, -0.959762, -0.099294,
		-0.870592, 0.280116, -0.404480,
		15.414494, 23.194145, 11.500808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.964979, 22.602270, 11.219646>,  <16.023909, 22.998064, 11.783943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.964979, 22.602270, 11.219646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.723548, 22.893612, 11.089910>,  <15.578690, 23.068417, 11.012068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.723548, 22.893612, 11.089910>,  <15.964979, 22.602270, 11.219646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.723548, 22.893612, 11.089910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395589, -0.079620, -0.914970,
		-0.692246, -0.680560, -0.240072,
		-0.603577, 0.728354, -0.324339,
		15.542475, 23.112118, 10.992608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.583758, 22.240221, 10.693904>,  <15.964979, 22.602270, 11.219646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.583758, 22.240221, 10.693904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.549130, 22.633644, 10.630506>,  <15.528354, 22.869698, 10.592466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.549130, 22.633644, 10.630506>,  <15.583758, 22.240221, 10.693904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.549130, 22.633644, 10.630506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260143, -0.131256, -0.956607,
		-0.961682, -0.124045, -0.244503,
		-0.086570, 0.983557, -0.158496,
		15.523159, 22.928711, 10.582957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.873352, 21.873383, 10.596725>,  <15.583758, 22.240221, 10.693904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.873352, 21.873383, 10.596725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.897326, 21.474895, 10.621883>,  <14.911711, 21.235804, 10.636978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.897326, 21.474895, 10.621883>,  <14.873352, 21.873383, 10.596725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.897326, 21.474895, 10.621883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043389, 0.060350, 0.997234,
		-0.997259, -0.062499, -0.039608,
		0.059936, -0.996219, 0.062897,
		14.915307, 21.176029, 10.640753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.305634, 21.547777, 10.921884>,  <14.873352, 21.873383, 10.596725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.305634, 21.547777, 10.921884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.618207, 21.311615, 11.002666>,  <14.805750, 21.169918, 11.051136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.618207, 21.311615, 11.002666>,  <14.305634, 21.547777, 10.921884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.618207, 21.311615, 11.002666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267184, -0.024105, 0.963344,
		-0.563896, -0.806746, -0.176583,
		0.781431, -0.590406, 0.201957,
		14.852636, 21.134493, 11.063253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.040867, 21.100544, 11.493683>,  <14.305634, 21.547777, 10.921884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.040867, 21.100544, 11.493683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.427657, 21.000229, 11.475506>,  <14.659731, 20.940041, 11.464600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.427657, 21.000229, 11.475506>,  <14.040867, 21.100544, 11.493683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.427657, 21.000229, 11.475506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035755, -0.310008, 0.950061,
		-0.252348, -0.917062, -0.308737,
		0.966976, -0.250785, -0.045440,
		14.717750, 20.924992, 11.461873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.133884, 20.347109, 11.562658>,  <14.040867, 21.100544, 11.493683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.133884, 20.347109, 11.562658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.481252, 20.512291, 11.672434>,  <14.689672, 20.611401, 11.738299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.481252, 20.512291, 11.672434>,  <14.133884, 20.347109, 11.562658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.481252, 20.512291, 11.672434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030357, -0.508172, 0.860721,
		0.494903, -0.755796, -0.428769,
		0.868418, 0.412957, 0.274439,
		14.741777, 20.636179, 11.754766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.584026, 19.812098, 11.836618>,  <14.133884, 20.347109, 11.562658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.584026, 19.812098, 11.836618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.755342, 20.145416, 11.976439>,  <14.858130, 20.345407, 12.060332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.755342, 20.145416, 11.976439>,  <14.584026, 19.812098, 11.836618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.755342, 20.145416, 11.976439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076659, -0.418937, 0.904774,
		0.900385, -0.360707, -0.243305,
		0.428288, 0.833296, 0.349553,
		14.883828, 20.395405, 12.081306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.036118, 19.619057, 12.308516>,  <14.584026, 19.812098, 11.836618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.036118, 19.619057, 12.308516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.970107, 20.000244, 12.410195>,  <14.930501, 20.228956, 12.471203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.970107, 20.000244, 12.410195>,  <15.036118, 19.619057, 12.308516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.970107, 20.000244, 12.410195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055678, -0.248321, 0.967076,
		0.984716, 0.173746, -0.012080,
		-0.165026, 0.952968, 0.254200,
		14.920599, 20.286135, 12.486455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.546364, 19.739853, 12.812123>,  <15.036118, 19.619057, 12.308516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.546364, 19.739853, 12.812123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.277287, 20.032524, 12.856189>,  <15.115842, 20.208126, 12.882628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.277287, 20.032524, 12.856189>,  <15.546364, 19.739853, 12.812123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.277287, 20.032524, 12.856189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017143, -0.164256, 0.986269,
		0.739725, 0.661565, 0.123037,
		-0.672691, 0.731677, 0.110164,
		15.075480, 20.252028, 12.889237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.752323, 20.073709, 13.430133>,  <15.546364, 19.739853, 12.812123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.752323, 20.073709, 13.430133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.371072, 20.189468, 13.394814>,  <15.142321, 20.258924, 13.373622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.371072, 20.189468, 13.394814>,  <15.752323, 20.073709, 13.430133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.371072, 20.189468, 13.394814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148100, -0.191743, 0.970207,
		0.263844, 0.937808, 0.225616,
		-0.953128, 0.289396, -0.088299,
		15.085134, 20.276287, 13.368324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.635203, 20.503784, 13.996206>,  <15.752323, 20.073709, 13.430133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.635203, 20.503784, 13.996206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.275947, 20.381714, 13.869581>,  <15.060392, 20.308472, 13.793606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.275947, 20.381714, 13.869581>,  <15.635203, 20.503784, 13.996206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.275947, 20.381714, 13.869581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306948, -0.080355, 0.948328,
		-0.314843, 0.948900, -0.021502,
		-0.898141, -0.305174, -0.316562,
		15.006504, 20.290161, 13.774612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.115624, 20.788975, 14.495169>,  <15.635203, 20.503784, 13.996206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.115624, 20.788975, 14.495169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.947511, 20.476097, 14.311199>,  <14.846642, 20.288370, 14.200817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.947511, 20.476097, 14.311199>,  <15.115624, 20.788975, 14.495169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.947511, 20.476097, 14.311199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257699, -0.383102, 0.887031,
		-0.870030, 0.491327, -0.040559,
		-0.420284, -0.782196, -0.459925,
		14.821425, 20.241438, 14.173222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.528785, 20.655117, 14.852922>,  <15.115624, 20.788975, 14.495169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.528785, 20.655117, 14.852922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.563130, 20.317600, 14.641020>,  <14.583737, 20.115089, 14.513878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.563130, 20.317600, 14.641020>,  <14.528785, 20.655117, 14.852922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.563130, 20.317600, 14.641020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319058, -0.527006, 0.787696,
		-0.943837, 0.101389, -0.314470,
		0.085864, -0.843792, -0.529757,
		14.588889, 20.064463, 14.482093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.851794, 20.303232, 14.893164>,  <14.528785, 20.655117, 14.852922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.851794, 20.303232, 14.893164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.139153, 20.036381, 14.814331>,  <14.311569, 19.876270, 14.767032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.139153, 20.036381, 14.814331>,  <13.851794, 20.303232, 14.893164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.139153, 20.036381, 14.814331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216589, -0.483742, 0.847987,
		-0.661055, -0.566507, -0.492013,
		0.718398, -0.667130, -0.197081,
		14.354673, 19.836241, 14.755207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.469852, 19.740772, 15.072699>,  <13.851794, 20.303232, 14.893164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.469852, 19.740772, 15.072699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.862418, 19.669167, 15.100359>,  <14.097958, 19.626204, 15.116956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.862418, 19.669167, 15.100359>,  <13.469852, 19.740772, 15.072699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.862418, 19.669167, 15.100359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116664, -0.270433, 0.955644,
		-0.152370, -0.945949, -0.286291,
		0.981414, -0.179012, 0.069152,
		14.156842, 19.615463, 15.121104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.549413, 19.107979, 15.284369>,  <13.469852, 19.740772, 15.072699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.549413, 19.107979, 15.284369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.923366, 19.233078, 15.351519>,  <14.147738, 19.308138, 15.391809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.923366, 19.233078, 15.351519>,  <13.549413, 19.107979, 15.284369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.923366, 19.233078, 15.351519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016743, -0.511270, 0.859257,
		0.354561, -0.800494, -0.483214,
		0.934883, 0.312749, 0.167874,
		14.203831, 19.326902, 15.401880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<20.643843, 19.517973, 17.607386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.484905, 19.849072, 17.448917>,  <20.389544, 20.047731, 17.353836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.484905, 19.849072, 17.448917>,  <20.643843, 19.517973, 17.607386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.484905, 19.849072, 17.448917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217489, -0.334470, -0.916967,
		-0.891525, -0.450514, -0.047126,
		-0.397344, 0.827748, -0.396170,
		20.365702, 20.097395, 17.330067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.118063, 19.364946, 17.155369>,  <20.643843, 19.517973, 17.607386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.118063, 19.364946, 17.155369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.269924, 19.712677, 17.028793>,  <20.361040, 19.921316, 16.952848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.269924, 19.712677, 17.028793>,  <20.118063, 19.364946, 17.155369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.269924, 19.712677, 17.028793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063128, -0.316908, -0.946353,
		-0.922974, 0.379260, -0.065436,
		0.379651, 0.869328, -0.316439,
		20.383820, 19.973476, 16.933861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.790956, 19.427122, 16.464439>,  <20.118063, 19.364946, 17.155369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.790956, 19.427122, 16.464439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.032234, 19.746086, 16.471292>,  <20.177000, 19.937464, 16.475405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.032234, 19.746086, 16.471292>,  <19.790956, 19.427122, 16.464439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.032234, 19.746086, 16.471292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102814, -0.056437, -0.993098,
		-0.790940, 0.600792, -0.116028,
		0.603194, 0.797410, 0.017131,
		20.213192, 19.985310, 16.476433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.473846, 19.981611, 16.052040>,  <19.790956, 19.427122, 16.464439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.473846, 19.981611, 16.052040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.871861, 20.021004, 16.046328>,  <20.110670, 20.044640, 16.042900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.871861, 20.021004, 16.046328>,  <19.473846, 19.981611, 16.052040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.871861, 20.021004, 16.046328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016576, 0.022502, -0.999609,
		-0.098121, 0.994884, 0.024023,
		0.995036, 0.098481, -0.014283,
		20.170372, 20.050549, 16.042042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.581774, 20.486279, 15.588341>,  <19.473846, 19.981611, 16.052040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.581774, 20.486279, 15.588341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.936192, 20.302067, 15.609650>,  <20.148842, 20.191540, 15.622435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.936192, 20.302067, 15.609650>,  <19.581774, 20.486279, 15.588341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.936192, 20.302067, 15.609650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067488, 0.014445, -0.997616,
		0.458660, 0.887528, 0.043879,
		0.886046, -0.460527, 0.053272,
		20.202005, 20.163908, 15.625631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.990803, 20.824387, 15.197522>,  <19.581774, 20.486279, 15.588341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.990803, 20.824387, 15.197522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.188046, 20.477417, 15.224115>,  <20.306391, 20.269236, 15.240071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.188046, 20.477417, 15.224115>,  <19.990803, 20.824387, 15.197522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.188046, 20.477417, 15.224115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044876, -0.050957, -0.997692,
		0.868810, 0.494953, 0.013800,
		0.493107, -0.867425, 0.066483,
		20.335978, 20.217190, 15.244061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.529230, 20.911572, 14.751189>,  <19.990803, 20.824387, 15.197522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.529230, 20.911572, 14.751189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.518944, 20.515320, 14.804850>,  <20.512772, 20.277569, 14.837046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.518944, 20.515320, 14.804850>,  <20.529230, 20.911572, 14.751189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.518944, 20.515320, 14.804850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121873, -0.136301, -0.983143,
		0.992213, -0.008931, 0.124235,
		-0.025714, -0.990627, 0.134151,
		20.511230, 20.218132, 14.845095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.045326, 20.666607, 14.432828>,  <20.529230, 20.911572, 14.751189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.045326, 20.666607, 14.432828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.839176, 20.325020, 14.461473>,  <20.715487, 20.120068, 14.478661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.839176, 20.325020, 14.461473>,  <21.045326, 20.666607, 14.432828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.839176, 20.325020, 14.461473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277374, -0.245296, -0.928921,
		0.810833, -0.458881, 0.363288,
		-0.515377, -0.853966, 0.071613,
		20.684563, 20.068830, 14.482957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.477297, 20.245350, 14.137928>,  <21.045326, 20.666607, 14.432828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.477297, 20.245350, 14.137928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.116089, 20.077141, 14.102787>,  <20.899364, 19.976215, 14.081702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.116089, 20.077141, 14.102787>,  <21.477297, 20.245350, 14.137928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.116089, 20.077141, 14.102787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176970, -0.177788, -0.968025,
		0.391455, -0.889693, 0.234965,
		-0.903020, -0.420520, -0.087853,
		20.845182, 19.950985, 14.076431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.604380, 19.662251, 13.791717>,  <21.477297, 20.245350, 14.137928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.604380, 19.662251, 13.791717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.218166, 19.743813, 13.727011>,  <20.986439, 19.792749, 13.688188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.218166, 19.743813, 13.727011>,  <21.604380, 19.662251, 13.791717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.218166, 19.743813, 13.727011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140533, -0.114717, -0.983408,
		-0.219078, -0.972246, 0.082108,
		-0.965534, 0.203904, -0.161764,
		20.928507, 19.804983, 13.678481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.559446, 19.418266, 13.116160>,  <21.604380, 19.662251, 13.791717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.559446, 19.418266, 13.116160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.195683, 19.577702, 13.163664>,  <20.977425, 19.673363, 13.192165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.195683, 19.577702, 13.163664>,  <21.559446, 19.418266, 13.116160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.195683, 19.577702, 13.163664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197881, -0.163519, -0.966491,
		-0.365813, -0.902435, 0.227579,
		-0.909409, 0.398589, 0.118757,
		20.922859, 19.697277, 13.199291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.951136, 18.953091, 12.807469>,  <21.559446, 19.418266, 13.116160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.951136, 18.953091, 12.807469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.838905, 19.336632, 12.790120>,  <20.771566, 19.566755, 12.779711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.838905, 19.336632, 12.790120>,  <20.951136, 18.953091, 12.807469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.838905, 19.336632, 12.790120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186565, -0.098807, -0.977461,
		-0.941526, -0.266160, 0.206611,
		-0.280576, 0.958851, -0.043374,
		20.754732, 19.624287, 12.777108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.514496, 18.894295, 12.300961>,  <20.951136, 18.953091, 12.807469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.514496, 18.894295, 12.300961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.508423, 19.291504, 12.347736>,  <20.504778, 19.529829, 12.375802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.508423, 19.291504, 12.347736>,  <20.514496, 18.894295, 12.300961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.508423, 19.291504, 12.347736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396736, 0.101369, -0.912318,
		-0.917807, -0.060246, 0.392429,
		-0.015183, 0.993023, 0.116939,
		20.503868, 19.589411, 12.382818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.838787, 19.156803, 12.165758>,  <20.514496, 18.894295, 12.300961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.838787, 19.156803, 12.165758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.084320, 19.466915, 12.106228>,  <20.231640, 19.652983, 12.070510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.084320, 19.466915, 12.106228>,  <19.838787, 19.156803, 12.165758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.084320, 19.466915, 12.106228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300408, 0.055059, -0.952220,
		-0.730042, 0.629214, 0.266697,
		0.613835, 0.775279, -0.148826,
		20.268471, 19.699499, 12.061580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.139421, 19.133505, 11.952176>,  <19.838787, 19.156803, 12.165758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.139421, 19.133505, 11.952176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.034321, 18.757660, 11.864453>,  <18.971260, 18.532154, 11.811820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.034321, 18.757660, 11.864453>,  <19.139421, 19.133505, 11.952176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.034321, 18.757660, 11.864453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142552, -0.186995, 0.971963,
		-0.954275, 0.286646, -0.084810,
		-0.262750, -0.939610, -0.219307,
		18.955496, 18.475777, 11.798661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.541986, 19.030443, 12.322412>,  <19.139421, 19.133505, 11.952176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.541986, 19.030443, 12.322412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.709229, 18.680500, 12.224586>,  <18.809574, 18.470533, 12.165890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.709229, 18.680500, 12.224586>,  <18.541986, 19.030443, 12.322412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.709229, 18.680500, 12.224586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154199, -0.333674, 0.929992,
		-0.895217, -0.351120, -0.274412,
		0.418103, -0.874858, -0.244568,
		18.834660, 18.418043, 12.151216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.140793, 18.467409, 12.534062>,  <18.541986, 19.030443, 12.322412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.140793, 18.467409, 12.534062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.510502, 18.315628, 12.517378>,  <18.732327, 18.224560, 12.507367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.510502, 18.315628, 12.517378>,  <18.140793, 18.467409, 12.534062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.510502, 18.315628, 12.517378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120974, -0.394786, 0.910774,
		-0.362056, -0.836758, -0.410793,
		0.924273, -0.379446, -0.041708,
		18.787783, 18.201792, 12.504864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.057158, 17.820093, 12.831829>,  <18.140793, 18.467409, 12.534062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.057158, 17.820093, 12.831829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.448364, 17.901302, 12.850881>,  <18.683088, 17.950027, 12.862311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.448364, 17.901302, 12.850881>,  <18.057158, 17.820093, 12.831829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.448364, 17.901302, 12.850881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038280, -0.399308, 0.916017,
		0.204990, -0.894056, -0.398301,
		0.978015, 0.203021, 0.047629,
		18.741768, 17.962208, 12.865170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.310345, 17.216396, 13.093975>,  <18.057158, 17.820093, 12.831829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.310345, 17.216396, 13.093975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.575966, 17.507893, 13.160877>,  <18.735338, 17.682791, 13.201018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.575966, 17.507893, 13.160877>,  <18.310345, 17.216396, 13.093975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.575966, 17.507893, 13.160877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036562, -0.191781, 0.980757,
		0.746792, -0.657389, -0.100708,
		0.664053, 0.728739, 0.167256,
		18.775181, 17.726515, 13.211054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.805964, 16.939327, 13.586259>,  <18.310345, 17.216396, 13.093975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.805964, 16.939327, 13.586259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.841316, 17.337757, 13.588308>,  <18.862528, 17.576815, 13.589539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.841316, 17.337757, 13.588308>,  <18.805964, 16.939327, 13.586259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.841316, 17.337757, 13.588308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086718, -0.012819, 0.996150,
		0.992305, -0.087597, -0.087511,
		0.088381, 0.996074, 0.005124,
		18.867830, 17.636580, 13.589846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.183325, 17.013756, 14.129824>,  <18.805964, 16.939327, 13.586259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.183325, 17.013756, 14.129824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.035862, 17.383717, 14.092632>,  <18.947384, 17.605694, 14.070317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.035862, 17.383717, 14.092632>,  <19.183325, 17.013756, 14.129824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.035862, 17.383717, 14.092632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030395, 0.087976, 0.995659,
		0.929069, 0.369881, -0.004321,
		-0.368656, 0.924904, -0.092978,
		18.925264, 17.661188, 14.064738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.358158, 17.298864, 14.769605>,  <19.183325, 17.013756, 14.129824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.358158, 17.298864, 14.769605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.103733, 17.575993, 14.633709>,  <18.951078, 17.742270, 14.552172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.103733, 17.575993, 14.633709>,  <19.358158, 17.298864, 14.769605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.103733, 17.575993, 14.633709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270833, 0.211827, 0.939031,
		0.722546, 0.689296, 0.052904,
		-0.636063, 0.692821, -0.339739,
		18.912914, 17.783838, 14.531787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.490072, 18.019106, 14.969678>,  <19.358158, 17.298864, 14.769605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.490072, 18.019106, 14.969678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.097084, 18.003689, 14.896717>,  <18.861292, 17.994438, 14.852941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.097084, 18.003689, 14.896717>,  <19.490072, 18.019106, 14.969678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.097084, 18.003689, 14.896717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182235, 0.404902, 0.896016,
		0.039322, 0.913548, -0.404827,
		-0.982468, -0.038540, -0.182402,
		18.802343, 17.992126, 14.841996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.339159, 18.708099, 15.290081>,  <19.490072, 18.019106, 14.969678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.339159, 18.708099, 15.290081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.003651, 18.495903, 15.241028>,  <18.802345, 18.368586, 15.211596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.003651, 18.495903, 15.241028>,  <19.339159, 18.708099, 15.290081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.003651, 18.495903, 15.241028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276321, 0.220668, 0.935389,
		-0.469155, 0.818465, -0.331677,
		-0.838773, -0.530491, -0.122632,
		18.752018, 18.336756, 15.204238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.806282, 19.084673, 15.553219>,  <19.339159, 18.708099, 15.290081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.806282, 19.084673, 15.553219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.663898, 18.710873, 15.553226>,  <18.578468, 18.486593, 15.553231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.663898, 18.710873, 15.553226>,  <18.806282, 19.084673, 15.553219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.663898, 18.710873, 15.553226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412066, 0.156978, 0.897530,
		-0.838745, 0.319477, -0.440954,
		-0.355961, -0.934501, 0.000019,
		18.557110, 18.430523, 15.553232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.044159, 19.148561, 15.759751>,  <18.806282, 19.084673, 15.553219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.044159, 19.148561, 15.759751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.146931, 18.774223, 15.856232>,  <18.208593, 18.549620, 15.914120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.146931, 18.774223, 15.856232>,  <18.044159, 19.148561, 15.759751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.146931, 18.774223, 15.856232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400743, 0.123943, 0.907768,
		-0.879427, -0.329891, -0.343190,
		0.256929, -0.935847, 0.241200,
		18.224009, 18.493469, 15.928592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.358698, 18.757097, 16.062666>,  <18.044159, 19.148561, 15.759751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.358698, 18.757097, 16.062666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.696541, 18.580528, 16.183849>,  <17.899246, 18.474586, 16.256559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.696541, 18.580528, 16.183849>,  <17.358698, 18.757097, 16.062666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.696541, 18.580528, 16.183849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226034, 0.218960, 0.949192,
		-0.485330, -0.870174, 0.085159,
		0.844608, -0.441423, 0.302957,
		17.949923, 18.448101, 16.274736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.076643, 18.269962, 16.537090>,  <17.358698, 18.757097, 16.062666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.076643, 18.269962, 16.537090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.464573, 18.315212, 16.623480>,  <17.697330, 18.342361, 16.675314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.464573, 18.315212, 16.623480>,  <17.076643, 18.269962, 16.537090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.464573, 18.315212, 16.623480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226499, 0.090224, 0.969824,
		0.090224, -0.989476, 0.113124,
		-0.969824, -0.113124, -0.215975,
		17.755520, 18.349150, 16.688272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.678074, 17.611633, 16.520504>,  <17.076643, 18.269962, 16.537090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.678074, 17.611633, 16.520504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.365463, 17.371159, 16.587185>,  <16.177896, 17.226873, 16.627193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.365463, 17.371159, 16.587185>,  <16.678074, 17.611633, 16.520504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.365463, 17.371159, 16.587185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004193, -0.262142, -0.965020,
		0.623856, -0.754890, 0.202350,
		-0.781528, -0.601185, 0.166704,
		16.131004, 17.190804, 16.637196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.883768, 17.038143, 16.162556>,  <16.678074, 17.611633, 16.520504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.883768, 17.038143, 16.162556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.489792, 17.005371, 16.223452>,  <16.253407, 16.985708, 16.259989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.489792, 17.005371, 16.223452>,  <16.883768, 17.038143, 16.162556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.489792, 17.005371, 16.223452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134931, -0.186227, -0.973197,
		0.108088, -0.979084, 0.172367,
		-0.984942, -0.081933, 0.152238,
		16.194309, 16.980791, 16.269123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.620115, 16.426756, 15.939198>,  <16.883768, 17.038143, 16.162556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.620115, 16.426756, 15.939198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.297741, 16.663506, 15.934280>,  <16.104317, 16.805555, 15.931330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.297741, 16.663506, 15.934280>,  <16.620115, 16.426756, 15.939198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.297741, 16.663506, 15.934280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186996, -0.274220, -0.943311,
		-0.561693, -0.757950, 0.331682,
		-0.805937, 0.591874, -0.012294,
		16.055960, 16.841068, 15.930593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.011885, 16.060984, 15.508023>,  <16.620115, 16.426756, 15.939198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.011885, 16.060984, 15.508023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.912700, 16.448467, 15.512323>,  <15.853189, 16.680958, 15.514903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.912700, 16.448467, 15.512323>,  <16.011885, 16.060984, 15.508023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.912700, 16.448467, 15.512323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309959, -0.068819, -0.948256,
		-0.917845, -0.238465, 0.317325,
		-0.247963, 0.968710, 0.010749,
		15.838310, 16.739080, 15.515548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.309740, 16.046387, 15.207293>,  <16.011885, 16.060984, 15.508023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.309740, 16.046387, 15.207293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.478755, 16.407036, 15.170332>,  <15.580164, 16.623425, 15.148155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.478755, 16.407036, 15.170332>,  <15.309740, 16.046387, 15.207293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.478755, 16.407036, 15.170332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199406, -0.006974, -0.979892,
		-0.884138, 0.432466, 0.176843,
		0.422536, 0.901624, -0.092403,
		15.605515, 16.677523, 15.142612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.883628, 16.443462, 14.735127>,  <15.309740, 16.046387, 15.207293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.883628, 16.443462, 14.735127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.211947, 16.671940, 14.737183>,  <15.408939, 16.809027, 14.738416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.211947, 16.671940, 14.737183>,  <14.883628, 16.443462, 14.735127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.211947, 16.671940, 14.737183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048058, 0.078016, -0.995793,
		-0.569191, 0.817100, 0.091486,
		0.820800, 0.571193, 0.005138,
		15.458187, 16.843298, 14.738724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.635370, 17.064335, 14.360675>,  <14.883628, 16.443462, 14.735127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.635370, 17.064335, 14.360675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.031857, 17.011799, 14.354509>,  <15.269750, 16.980276, 14.350810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.031857, 17.011799, 14.354509>,  <14.635370, 17.064335, 14.360675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.031857, 17.011799, 14.354509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016724, -0.008886, -0.999821,
		0.131181, 0.991297, -0.011004,
		0.991217, -0.131342, -0.015413,
		15.329223, 16.972397, 14.349885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.904667, 17.531111, 13.840618>,  <14.635370, 17.064335, 14.360675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.904667, 17.531111, 13.840618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.182673, 17.246094, 13.879049>,  <15.349478, 17.075083, 13.902108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.182673, 17.246094, 13.879049>,  <14.904667, 17.531111, 13.840618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.182673, 17.246094, 13.879049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083125, -0.053101, -0.995123,
		0.714172, 0.699614, 0.022324,
		0.695017, -0.712545, 0.096079,
		15.391178, 17.032330, 13.907873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.400572, 17.729362, 13.334690>,  <14.904667, 17.531111, 13.840618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.400572, 17.729362, 13.334690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.442857, 17.339539, 13.413746>,  <15.468227, 17.105644, 13.461180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.442857, 17.339539, 13.413746>,  <15.400572, 17.729362, 13.334690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.442857, 17.339539, 13.413746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152524, -0.180511, -0.971675,
		0.982630, 0.132863, 0.129561,
		0.105713, -0.974558, 0.197640,
		15.474570, 17.047171, 13.473038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906834, 17.730703, 12.935675>,  <15.400572, 17.729362, 13.334690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.906834, 17.730703, 12.935675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.809112, 17.351467, 13.017099>,  <15.750479, 17.123924, 13.065954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.809112, 17.351467, 13.017099>,  <15.906834, 17.730703, 12.935675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.809112, 17.351467, 13.017099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104729, -0.234492, -0.966460,
		0.964027, -0.214792, 0.156580,
		-0.244304, -0.948092, 0.203561,
		15.735820, 17.067039, 13.078168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.512854, 17.219805, 12.696137>,  <15.906834, 17.730703, 12.935675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.512854, 17.219805, 12.696137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.155228, 17.040668, 12.699973>,  <15.940653, 16.933187, 12.702274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.155228, 17.040668, 12.699973>,  <16.512854, 17.219805, 12.696137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.155228, 17.040668, 12.699973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119276, -0.258647, -0.958580,
		0.431770, -0.855886, 0.284663,
		-0.894063, -0.447839, 0.009590,
		15.887009, 16.906317, 12.702850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.667130, 16.507023, 12.390017>,  <16.512854, 17.219805, 12.696137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.667130, 16.507023, 12.390017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.267395, 16.515209, 12.377963>,  <16.027554, 16.520121, 12.370731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.267395, 16.515209, 12.377963>,  <16.667130, 16.507023, 12.390017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.267395, 16.515209, 12.377963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019819, -0.388624, -0.921183,
		-0.030561, -0.921169, 0.387961,
		-0.999336, 0.020464, -0.030133,
		15.967594, 16.521349, 12.368923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.536867, 15.936281, 12.063612>,  <16.667130, 16.507023, 12.390017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.536867, 15.936281, 12.063612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.204861, 16.159336, 12.059404>,  <16.005657, 16.293169, 12.056880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.204861, 16.159336, 12.059404>,  <16.536867, 15.936281, 12.063612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.204861, 16.159336, 12.059404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100009, -0.167359, -0.980810,
		-0.548697, -0.813039, 0.194680,
		-0.830018, 0.557637, -0.010518,
		15.955855, 16.326628, 12.056249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.928740, 15.643803, 11.755415>,  <16.536867, 15.936281, 12.063612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.928740, 15.643803, 11.755415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.870162, 16.037647, 11.717266>,  <15.835015, 16.273954, 11.694377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.870162, 16.037647, 11.717266>,  <15.928740, 15.643803, 11.755415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.870162, 16.037647, 11.717266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016634, -0.093948, -0.995438,
		-0.989079, -0.147362, -0.002620,
		-0.146444, 0.984611, -0.095373,
		15.826229, 16.333031, 11.688654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<13.975986, 18.492786, 15.474747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.158828, 18.816151, 15.623087>,  <14.268533, 19.010168, 15.712091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.158828, 18.816151, 15.623087>,  <13.975986, 18.492786, 15.474747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.158828, 18.816151, 15.623087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145889, -0.343164, 0.927877,
		0.877366, -0.478240, -0.038924,
		0.457105, 0.808409, 0.370850,
		14.295959, 19.058674, 15.734342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.252373, 18.174490, 15.989655>,  <13.975986, 18.492786, 15.474747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.252373, 18.174490, 15.989655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.283402, 18.562817, 16.080431>,  <14.302020, 18.795813, 16.134897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.283402, 18.562817, 16.080431>,  <14.252373, 18.174490, 15.989655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.283402, 18.562817, 16.080431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031978, -0.225086, 0.973814,
		0.996474, -0.082799, 0.013584,
		0.077574, 0.970814, 0.226940,
		14.306675, 18.854061, 16.148514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.731200, 18.255678, 16.495728>,  <14.252373, 18.174490, 15.989655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.731200, 18.255678, 16.495728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.498906, 18.578491, 16.538515>,  <14.359529, 18.772179, 16.564188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.498906, 18.578491, 16.538515>,  <14.731200, 18.255678, 16.495728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.498906, 18.578491, 16.538515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147690, -0.233655, 0.961037,
		0.800584, 0.542310, 0.254883,
		-0.580735, 0.807034, 0.106967,
		14.324685, 18.820602, 16.570604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.009859, 18.700846, 17.070724>,  <14.731200, 18.255678, 16.495728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.009859, 18.700846, 17.070724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.620475, 18.784184, 17.032850>,  <14.386844, 18.834187, 17.010126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.620475, 18.784184, 17.032850>,  <15.009859, 18.700846, 17.070724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.620475, 18.784184, 17.032850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149106, -0.263550, 0.953052,
		0.173611, 0.941878, 0.287621,
		-0.973461, 0.208346, -0.094684,
		14.328437, 18.846687, 17.004444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.840455, 19.137716, 17.628429>,  <15.009859, 18.700846, 17.070724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.840455, 19.137716, 17.628429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.474420, 19.027012, 17.511116>,  <14.254798, 18.960590, 17.440727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.474420, 19.027012, 17.511116>,  <14.840455, 19.137716, 17.628429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.474420, 19.027012, 17.511116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242768, -0.202630, 0.948686,
		-0.321986, 0.939332, 0.118236,
		-0.915089, -0.276759, -0.293284,
		14.199893, 18.943985, 17.423130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.479211, 19.390341, 18.118158>,  <14.840455, 19.137716, 17.628429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.479211, 19.390341, 18.118158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.271117, 19.098473, 17.940649>,  <14.146261, 18.923351, 17.834143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.271117, 19.098473, 17.940649>,  <14.479211, 19.390341, 18.118158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.271117, 19.098473, 17.940649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409530, -0.242843, 0.879382,
		-0.749427, 0.639224, -0.172487,
		-0.520234, -0.729671, -0.443774,
		14.115047, 18.879572, 17.807516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.814354, 19.453590, 18.262863>,  <14.479211, 19.390341, 18.118158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.814354, 19.453590, 18.262863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.810586, 19.068565, 18.154507>,  <13.808325, 18.837549, 18.089493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.810586, 19.068565, 18.154507>,  <13.814354, 19.453590, 18.262863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.810586, 19.068565, 18.154507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275485, -0.257921, 0.926059,
		-0.961259, 0.083350, -0.262743,
		-0.009420, -0.962564, -0.270890,
		13.807760, 18.779797, 18.073240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.153002, 19.311050, 18.405510>,  <13.814354, 19.453590, 18.262863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.153002, 19.311050, 18.405510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.354781, 18.966175, 18.424135>,  <13.475848, 18.759251, 18.435310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.354781, 18.966175, 18.424135>,  <13.153002, 19.311050, 18.405510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.354781, 18.966175, 18.424135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367091, -0.165343, 0.915372,
		-0.781522, -0.478850, -0.399908,
		0.504447, -0.862186, 0.046563,
		13.506115, 18.707520, 18.438105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.707134, 18.871029, 18.735500>,  <13.153002, 19.311050, 18.405510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.707134, 18.871029, 18.735500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.068852, 18.704628, 18.773853>,  <13.285883, 18.604788, 18.796865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.068852, 18.704628, 18.773853>,  <12.707134, 18.871029, 18.735500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.068852, 18.704628, 18.773853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186494, -0.182908, 0.965280,
		-0.384020, -0.890779, -0.242984,
		0.904295, -0.416002, 0.095884,
		13.340141, 18.579828, 18.802618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.535929, 18.247620, 19.047091>,  <12.707134, 18.871029, 18.735500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.535929, 18.247620, 19.047091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.913318, 18.355980, 19.123480>,  <13.139751, 18.420996, 19.169313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.913318, 18.355980, 19.123480>,  <12.535929, 18.247620, 19.047091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.913318, 18.355980, 19.123480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222515, 0.090652, 0.970706,
		0.245654, -0.958329, 0.145807,
		0.943473, 0.270902, 0.190973,
		13.196360, 18.437250, 19.180771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.746523, 17.824587, 19.618717>,  <12.535929, 18.247620, 19.047091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.746523, 17.824587, 19.618717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.006358, 18.128315, 19.634024>,  <13.162259, 18.310553, 19.643208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.006358, 18.128315, 19.634024>,  <12.746523, 17.824587, 19.618717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.006358, 18.128315, 19.634024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019991, -0.067374, 0.997527,
		0.760023, -0.647218, -0.058945,
		0.649589, 0.759322, 0.038267,
		13.201235, 18.356112, 19.645504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.248021, 17.594198, 20.157513>,  <12.746523, 17.824587, 19.618717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.248021, 17.594198, 20.157513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.254405, 17.993015, 20.127436>,  <13.258235, 18.232306, 20.109390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.254405, 17.993015, 20.127436>,  <13.248021, 17.594198, 20.157513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.254405, 17.993015, 20.127436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060311, 0.076025, 0.995280,
		0.998052, -0.011349, 0.061346,
		0.015959, 0.997041, -0.075192,
		13.259192, 18.292128, 20.104877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.384450, 17.734472, 20.842083>,  <13.248021, 17.594198, 20.157513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.384450, 17.734472, 20.842083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.273612, 18.083263, 20.680653>,  <13.207109, 18.292538, 20.583796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.273612, 18.083263, 20.680653>,  <13.384450, 17.734472, 20.842083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.273612, 18.083263, 20.680653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090939, 0.394336, 0.914455,
		0.956529, 0.290091, -0.029971,
		-0.277094, 0.871978, -0.403575,
		13.190484, 18.344856, 20.559580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.779049, 18.268997, 21.218739>,  <13.384450, 17.734472, 20.842083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.779049, 18.268997, 21.218739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.430379, 18.407562, 21.080070>,  <13.221177, 18.490702, 20.996870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.430379, 18.407562, 21.080070>,  <13.779049, 18.268997, 21.218739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.430379, 18.407562, 21.080070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103290, 0.561620, 0.820923,
		0.479075, 0.751386, -0.453769,
		-0.871675, 0.346414, -0.346669,
		13.168877, 18.511486, 20.976070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.348757, 18.121998, 21.743771>,  <13.779049, 18.268997, 21.218739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.348757, 18.121998, 21.743771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.727511, 18.048012, 21.848988>,  <14.954764, 18.003620, 21.912117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.727511, 18.048012, 21.848988>,  <14.348757, 18.121998, 21.743771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.727511, 18.048012, 21.848988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226467, -0.197151, -0.953857,
		0.228291, 0.962766, -0.144791,
		0.946887, -0.184967, 0.263043,
		15.011578, 17.992521, 21.927900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.755186, 18.527695, 21.284798>,  <14.348757, 18.121998, 21.743771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.755186, 18.527695, 21.284798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.992543, 18.231647, 21.411358>,  <15.134957, 18.054020, 21.487293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.992543, 18.231647, 21.411358>,  <14.755186, 18.527695, 21.284798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.992543, 18.231647, 21.411358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243581, -0.209539, -0.946975,
		0.767172, 0.638998, 0.055939,
		0.593394, -0.740118, 0.316400,
		15.170561, 18.009611, 21.506277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.321205, 18.652384, 21.010864>,  <14.755186, 18.527695, 21.284798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.321205, 18.652384, 21.010864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.367223, 18.265850, 21.102919>,  <15.394834, 18.033930, 21.158152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.367223, 18.265850, 21.102919>,  <15.321205, 18.652384, 21.010864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.367223, 18.265850, 21.102919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219886, -0.201153, -0.954562,
		0.968718, 0.160421, 0.189342,
		0.115045, -0.966335, 0.230135,
		15.401736, 17.975950, 21.171959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.842369, 18.402077, 20.543808>,  <15.321205, 18.652384, 21.010864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.842369, 18.402077, 20.543808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.693355, 18.049858, 20.661015>,  <15.603946, 17.838528, 20.731339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.693355, 18.049858, 20.661015>,  <15.842369, 18.402077, 20.543808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.693355, 18.049858, 20.661015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333595, -0.421702, -0.843138,
		0.865986, -0.216350, 0.450844,
		-0.372535, -0.880545, 0.293015,
		15.581594, 17.785694, 20.748919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.302950, 17.867357, 20.372663>,  <15.842369, 18.402077, 20.543808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.302950, 17.867357, 20.372663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.930367, 17.724915, 20.402538>,  <15.706819, 17.639448, 20.420464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.930367, 17.724915, 20.402538>,  <16.302950, 17.867357, 20.372663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.930367, 17.724915, 20.402538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060463, -0.353897, -0.933328,
		0.358797, -0.864838, 0.351170,
		-0.931455, -0.356108, 0.074687,
		15.650930, 17.618082, 20.424944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.389154, 17.116587, 20.203684>,  <16.302950, 17.867357, 20.372663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.389154, 17.116587, 20.203684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.004120, 17.218922, 20.167971>,  <15.773099, 17.280323, 20.146544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.004120, 17.218922, 20.167971>,  <16.389154, 17.116587, 20.203684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.004120, 17.218922, 20.167971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064111, -0.535168, -0.842309,
		-0.263273, -0.805074, 0.531548,
		-0.962589, 0.255835, -0.089281,
		15.715343, 17.295671, 20.141186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.165968, 16.552240, 19.831388>,  <16.389154, 17.116587, 20.203684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.165968, 16.552240, 19.831388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.870776, 16.820206, 19.798876>,  <15.693662, 16.980984, 19.779367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.870776, 16.820206, 19.798876>,  <16.165968, 16.552240, 19.831388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.870776, 16.820206, 19.798876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150896, -0.281215, -0.947707,
		-0.657738, -0.687121, 0.308618,
		-0.737977, 0.669912, -0.081282,
		15.649383, 17.021179, 19.774490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.550855, 16.277977, 19.560648>,  <16.165968, 16.552240, 19.831388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.550855, 16.277977, 19.560648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.520471, 16.669640, 19.485300>,  <15.502240, 16.904636, 19.440090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.520471, 16.669640, 19.485300>,  <15.550855, 16.277977, 19.560648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.520471, 16.669640, 19.485300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197816, -0.199960, -0.959627,
		-0.977292, -0.035630, 0.208881,
		-0.075959, 0.979156, -0.188371,
		15.497683, 16.963387, 19.428789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.102531, 16.288483, 18.968040>,  <15.550855, 16.277977, 19.560648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.102531, 16.288483, 18.968040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.273969, 16.649761, 18.977388>,  <15.376831, 16.866528, 18.982998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.273969, 16.649761, 18.977388>,  <15.102531, 16.288483, 18.968040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.273969, 16.649761, 18.977388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005862, 0.028646, -0.999573,
		-0.903478, 0.428274, 0.017572,
		0.428594, 0.903195, 0.023370,
		15.402547, 16.920719, 18.984400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.688038, 16.647467, 18.456097>,  <15.102531, 16.288483, 18.968040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.688038, 16.647467, 18.456097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.046163, 16.823586, 18.483095>,  <15.261037, 16.929256, 18.499294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.046163, 16.823586, 18.483095>,  <14.688038, 16.647467, 18.456097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.046163, 16.823586, 18.483095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038945, 0.073573, -0.996529,
		-0.443735, 0.894832, 0.048724,
		0.895311, 0.440298, 0.067496,
		15.314756, 16.955675, 18.503344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.760882, 17.049738, 17.862932>,  <14.688038, 16.647467, 18.456097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.760882, 17.049738, 17.862932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.138930, 17.033043, 17.992550>,  <15.365759, 17.023026, 18.070320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.138930, 17.033043, 17.992550>,  <14.760882, 17.049738, 17.862932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.138930, 17.033043, 17.992550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325939, 0.051851, -0.943968,
		0.022595, 0.997782, 0.062608,
		0.945121, -0.041735, 0.324044,
		15.422466, 17.020523, 18.089764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.062416, 17.638939, 17.753250>,  <14.760882, 17.049738, 17.862932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.062416, 17.638939, 17.753250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.341395, 17.352470, 17.763554>,  <15.508783, 17.180590, 17.769735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.341395, 17.352470, 17.763554>,  <15.062416, 17.638939, 17.753250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.341395, 17.352470, 17.763554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082955, 0.044981, -0.995538,
		0.711817, 0.696473, 0.090782,
		0.697449, -0.716171, 0.025758,
		15.550631, 17.137619, 17.771280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.616137, 17.878328, 17.363695>,  <15.062416, 17.638939, 17.753250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.616137, 17.878328, 17.363695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.666665, 17.482296, 17.388298>,  <15.696982, 17.244677, 17.403059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.666665, 17.482296, 17.388298>,  <15.616137, 17.878328, 17.363695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.666665, 17.482296, 17.388298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026842, -0.058569, -0.997922,
		0.991626, 0.127711, 0.019177,
		0.126322, -0.990081, 0.061507,
		15.704562, 17.185272, 17.406750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.316376, 17.881367, 17.093328>,  <15.616137, 17.878328, 17.363695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.316376, 17.881367, 17.093328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.111713, 17.539185, 17.061312>,  <15.988916, 17.333876, 17.042103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.111713, 17.539185, 17.061312>,  <16.316376, 17.881367, 17.093328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.111713, 17.539185, 17.061312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173358, -0.011546, -0.984791,
		0.841520, -0.517749, 0.154207,
		-0.511656, -0.855454, -0.080040,
		15.958217, 17.282549, 17.037300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.178375, 17.823160, 17.080273>,  <16.316376, 17.881367, 17.093328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.178375, 17.823160, 17.080273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.514511, 18.038605, 17.104694>,  <17.716192, 18.167871, 17.119347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.514511, 18.038605, 17.104694>,  <17.178375, 17.823160, 17.080273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.514511, 18.038605, 17.104694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059493, -0.203592, 0.977246,
		0.538786, -0.817586, -0.203130,
		0.840339, 0.538612, 0.061052,
		17.766613, 18.200188, 17.123011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.654533, 17.407362, 17.528921>,  <17.178375, 17.823160, 17.080273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.654533, 17.407362, 17.528921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.779133, 17.787132, 17.544725>,  <17.853891, 18.014994, 17.554209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.779133, 17.787132, 17.544725>,  <17.654533, 17.407362, 17.528921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.779133, 17.787132, 17.544725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041947, -0.055278, 0.997590,
		0.949321, -0.309088, -0.057045,
		0.311496, 0.949426, 0.039511,
		17.872581, 18.071960, 17.556580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.321342, 17.462847, 17.895960>,  <17.654533, 17.407362, 17.528921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.321342, 17.462847, 17.895960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.184776, 17.838810, 17.897282>,  <18.102837, 18.064388, 17.898075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.184776, 17.838810, 17.897282>,  <18.321342, 17.462847, 17.895960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.184776, 17.838810, 17.897282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023315, 0.004954, 0.999716,
		0.939623, 0.341397, -0.023606,
		-0.341417, 0.939906, 0.003305,
		18.082352, 18.120781, 17.898273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.650702, 17.732952, 18.535355>,  <18.321342, 17.462847, 17.895960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.650702, 17.732952, 18.535355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.375069, 18.017353, 18.479292>,  <18.209690, 18.187994, 18.445654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.375069, 18.017353, 18.479292>,  <18.650702, 17.732952, 18.535355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.375069, 18.017353, 18.479292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059033, 0.137685, 0.988715,
		0.722276, 0.689578, -0.052904,
		-0.689081, 0.711003, -0.140155,
		18.168344, 18.230654, 18.437246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.833364, 18.299490, 19.000820>,  <18.650702, 17.732952, 18.535355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.833364, 18.299490, 19.000820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.457706, 18.370010, 18.882891>,  <18.232311, 18.412323, 18.812132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.457706, 18.370010, 18.882891>,  <18.833364, 18.299490, 19.000820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.457706, 18.370010, 18.882891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226987, 0.325709, 0.917818,
		0.257838, 0.928888, -0.265871,
		-0.939147, 0.176299, -0.294825,
		18.175962, 18.422899, 18.794443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.686674, 19.061478, 19.159901>,  <18.833364, 18.299490, 19.000820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.686674, 19.061478, 19.159901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.348419, 18.848026, 19.164574>,  <18.145466, 18.719955, 19.167377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.348419, 18.848026, 19.164574>,  <18.686674, 19.061478, 19.159901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.348419, 18.848026, 19.164574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229941, 0.383967, 0.894258,
		-0.481685, 0.753533, -0.447401,
		-0.845640, -0.533627, 0.011683,
		18.094727, 18.687939, 19.168079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.203016, 19.510410, 19.208063>,  <18.686674, 19.061478, 19.159901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.203016, 19.510410, 19.208063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.070999, 19.161766, 19.353041>,  <17.991789, 18.952579, 19.440027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.070999, 19.161766, 19.353041>,  <18.203016, 19.510410, 19.208063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.070999, 19.161766, 19.353041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013286, 0.388209, 0.921476,
		-0.943873, 0.299309, -0.139705,
		-0.330041, -0.871612, 0.362443,
		17.971987, 18.900282, 19.461773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.110149, 20.284704, 18.927315>,  <18.203016, 19.510410, 19.208063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.110149, 20.284704, 18.927315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.364464, 20.543022, 19.096418>,  <18.517052, 20.698013, 19.197880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.364464, 20.543022, 19.096418>,  <18.110149, 20.284704, 18.927315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.364464, 20.543022, 19.096418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646668, -0.146622, -0.748547,
		-0.421422, 0.749301, -0.510834,
		0.635787, 0.645794, 0.422759,
		18.555201, 20.736761, 19.223246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.340666, 20.743698, 18.411396>,  <18.110149, 20.284704, 18.927315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.340666, 20.743698, 18.411396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.613987, 20.718597, 18.702370>,  <18.777981, 20.703537, 18.876953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.613987, 20.718597, 18.702370>,  <18.340666, 20.743698, 18.411396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.613987, 20.718597, 18.702370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727843, -0.020320, -0.685442,
		0.057794, 0.997822, 0.031787,
		0.683304, -0.062750, 0.727433,
		18.818977, 20.699772, 18.920599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.745573, 21.173019, 18.168375>,  <18.340666, 20.743698, 18.411396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.745573, 21.173019, 18.168375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.945908, 20.953144, 18.435808>,  <19.066109, 20.821218, 18.596268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.945908, 20.953144, 18.435808>,  <18.745573, 21.173019, 18.168375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.945908, 20.953144, 18.435808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799656, -0.001743, -0.600457,
		0.331229, 0.835367, 0.438689,
		0.500837, -0.549689, 0.668583,
		19.096159, 20.788237, 18.636383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.361620, 21.545048, 18.298929>,  <18.745573, 21.173019, 18.168375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.361620, 21.545048, 18.298929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.409603, 21.159863, 18.395523>,  <19.438393, 20.928751, 18.453480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.409603, 21.159863, 18.395523>,  <19.361620, 21.545048, 18.298929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.409603, 21.159863, 18.395523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711012, -0.086427, -0.697848,
		0.692872, 0.255412, 0.674309,
		0.119960, -0.962961, 0.241484,
		19.445591, 20.870974, 18.467968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.095634, 21.391562, 18.227676>,  <19.361620, 21.545048, 18.298929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.095634, 21.391562, 18.227676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.929111, 21.027889, 18.224106>,  <19.829197, 20.809687, 18.221964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.929111, 21.027889, 18.224106>,  <20.095634, 21.391562, 18.227676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.929111, 21.027889, 18.224106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560641, -0.248961, -0.789747,
		0.715799, -0.333783, 0.613368,
		-0.416309, -0.909179, -0.008926,
		19.804218, 20.755135, 18.221428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.712059, 20.760275, 18.275835>,  <20.095634, 21.391562, 18.227676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.712059, 20.760275, 18.275835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.377037, 20.596569, 18.131060>,  <20.176023, 20.498344, 18.044193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.377037, 20.596569, 18.131060>,  <20.712059, 20.760275, 18.275835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.377037, 20.596569, 18.131060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489382, -0.267448, -0.830046,
		0.242909, -0.872338, 0.424290,
		-0.837556, -0.409266, -0.361941,
		20.125771, 20.473789, 18.022478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.894566, 20.034246, 18.025408>,  <20.712059, 20.760275, 18.275835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.894566, 20.034246, 18.025408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.575615, 20.183418, 17.835625>,  <20.384245, 20.272921, 17.721754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.575615, 20.183418, 17.835625>,  <20.894566, 20.034246, 18.025408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.575615, 20.183418, 17.835625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289686, -0.453171, -0.843041,
		-0.529407, -0.809667, 0.253315,
		-0.797377, 0.372930, -0.474460,
		20.336401, 20.295298, 17.693287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<13.205536, 21.655577, 20.588459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.110572, 21.335304, 20.368443>,  <13.053594, 21.143141, 20.236433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.110572, 21.335304, 20.368443>,  <13.205536, 21.655577, 20.588459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.110572, 21.335304, 20.368443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665858, 0.278146, -0.692291,
		0.707297, -0.530605, 0.467106,
		-0.237410, -0.800683, -0.550040,
		13.039349, 21.095100, 20.203430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.886408, 21.489594, 20.122091>,  <13.205536, 21.655577, 20.588459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.886408, 21.489594, 20.122091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.594748, 21.287327, 19.937637>,  <13.419753, 21.165968, 19.826965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.594748, 21.287327, 19.937637>,  <13.886408, 21.489594, 20.122091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.594748, 21.287327, 19.937637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540306, -0.011811, -0.841386,
		0.420013, -0.862649, 0.281827,
		-0.729149, -0.505665, -0.461133,
		13.376004, 21.135628, 19.799297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.163501, 21.002106, 19.787680>,  <13.886408, 21.489594, 20.122091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.163501, 21.002106, 19.787680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.812856, 21.030373, 19.597288>,  <13.602468, 21.047333, 19.483053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.812856, 21.030373, 19.597288>,  <14.163501, 21.002106, 19.787680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.812856, 21.030373, 19.597288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463429, -0.142334, -0.874628,
		-0.129552, -0.987293, 0.092025,
		-0.876613, 0.070663, -0.475980,
		13.549872, 21.051573, 19.454494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.177272, 20.380234, 19.242264>,  <14.163501, 21.002106, 19.787680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.177272, 20.380234, 19.242264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.897489, 20.644924, 19.134279>,  <13.729619, 20.803738, 19.069489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.897489, 20.644924, 19.134279>,  <14.177272, 20.380234, 19.242264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.897489, 20.644924, 19.134279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439436, 0.100319, -0.892654,
		-0.563610, -0.743004, -0.360955,
		-0.699457, 0.661726, -0.269962,
		13.687652, 20.843441, 19.053291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.826579, 20.134310, 18.733286>,  <14.177272, 20.380234, 19.242264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.826579, 20.134310, 18.733286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.763198, 20.527359, 18.694624>,  <13.725169, 20.763189, 18.671427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.763198, 20.527359, 18.694624>,  <13.826579, 20.134310, 18.733286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.763198, 20.527359, 18.694624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422029, -0.021098, -0.906337,
		-0.892628, -0.184403, -0.411353,
		-0.158452, 0.982624, -0.096656,
		13.715662, 20.822145, 18.665627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.500005, 20.236147, 18.012632>,  <13.826579, 20.134310, 18.733286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.500005, 20.236147, 18.012632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.625058, 20.606987, 18.095329>,  <13.700090, 20.829491, 18.144947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.625058, 20.606987, 18.095329>,  <13.500005, 20.236147, 18.012632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.625058, 20.606987, 18.095329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341999, 0.093192, -0.935068,
		-0.886170, 0.363040, -0.287933,
		0.312634, 0.927101, 0.206744,
		13.718848, 20.885117, 18.157352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.334664, 20.633327, 17.464304>,  <13.500005, 20.236147, 18.012632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.334664, 20.633327, 17.464304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.608191, 20.873497, 17.630138>,  <13.772308, 21.017599, 17.729639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.608191, 20.873497, 17.630138>,  <13.334664, 20.633327, 17.464304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.608191, 20.873497, 17.630138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256491, 0.334125, -0.906958,
		-0.683084, 0.726532, 0.074477,
		0.683819, 0.600426, 0.414585,
		13.813337, 21.053625, 17.754515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.199979, 21.273550, 17.237522>,  <13.334664, 20.633327, 17.464304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.199979, 21.273550, 17.237522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.574941, 21.319729, 17.368942>,  <13.799917, 21.347435, 17.447794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.574941, 21.319729, 17.368942>,  <13.199979, 21.273550, 17.237522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.574941, 21.319729, 17.368942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211359, 0.561210, -0.800231,
		-0.276770, 0.819582, 0.501680,
		0.937404, 0.115445, 0.328552,
		13.856162, 21.354362, 17.467508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.361815, 22.034655, 17.055735>,  <13.199979, 21.273550, 17.237522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.361815, 22.034655, 17.055735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.701386, 21.827030, 17.095524>,  <13.905129, 21.702456, 17.119398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.701386, 21.827030, 17.095524>,  <13.361815, 22.034655, 17.055735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.701386, 21.827030, 17.095524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369786, 0.448887, -0.813485,
		0.377597, 0.727375, 0.573015,
		0.848928, -0.519063, 0.099475,
		13.956065, 21.671310, 17.125366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.905312, 22.521778, 17.056849>,  <13.361815, 22.034655, 17.055735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.905312, 22.521778, 17.056849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.079827, 22.188671, 16.920527>,  <14.184537, 21.988806, 16.838734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.079827, 22.188671, 16.920527>,  <13.905312, 22.521778, 17.056849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.079827, 22.188671, 16.920527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274631, 0.483920, -0.830903,
		0.856872, 0.268918, 0.439833,
		0.436289, -0.832769, -0.340804,
		14.210714, 21.938841, 16.818285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.588680, 22.779226, 16.740166>,  <13.905312, 22.521778, 17.056849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.588680, 22.779226, 16.740166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.559590, 22.398312, 16.621599>,  <14.542136, 22.169764, 16.550459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.559590, 22.398312, 16.621599>,  <14.588680, 22.779226, 16.740166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.559590, 22.398312, 16.621599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191524, 0.278340, -0.941194,
		0.978790, -0.125220, 0.162143,
		-0.072726, -0.952285, -0.296419,
		14.537772, 22.112625, 16.532673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.090552, 22.750555, 16.260368>,  <14.588680, 22.779226, 16.740166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.090552, 22.750555, 16.260368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.882405, 22.418739, 16.179295>,  <14.757517, 22.219650, 16.130650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.882405, 22.418739, 16.179295>,  <15.090552, 22.750555, 16.260368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.882405, 22.418739, 16.179295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101124, 0.175820, -0.979214,
		0.847933, -0.530048, -0.007605,
		-0.520368, -0.829540, -0.202684,
		14.726295, 22.169878, 16.118490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.802427, 22.449907, 16.344898>,  <15.090552, 22.750555, 16.260368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.802427, 22.449907, 16.344898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.104046, 22.700199, 16.424772>,  <16.285017, 22.850374, 16.472696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.104046, 22.700199, 16.424772>,  <15.802427, 22.449907, 16.344898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.104046, 22.700199, 16.424772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361152, 0.141054, 0.921777,
		0.548620, -0.767179, 0.332346,
		0.754046, 0.625732, 0.199683,
		16.330259, 22.887918, 16.484678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.154625, 22.131100, 16.857248>,  <15.802427, 22.449907, 16.344898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.154625, 22.131100, 16.857248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.208958, 22.526825, 16.836050>,  <16.241558, 22.764259, 16.823332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.208958, 22.526825, 16.836050>,  <16.154625, 22.131100, 16.857248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.208958, 22.526825, 16.836050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278730, 0.089491, 0.956191,
		0.950715, -0.115109, 0.287907,
		0.135831, 0.989314, -0.052996,
		16.249706, 22.823620, 16.820150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.663181, 22.346367, 17.377176>,  <16.154625, 22.131100, 16.857248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.663181, 22.346367, 17.377176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.449749, 22.679119, 17.316158>,  <16.321690, 22.878771, 17.279547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.449749, 22.679119, 17.316158>,  <16.663181, 22.346367, 17.377176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.449749, 22.679119, 17.316158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371518, -0.068510, 0.925894,
		0.759781, 0.550711, 0.345614,
		-0.533578, 0.831879, -0.152547,
		16.289675, 22.928682, 17.270393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.816946, 22.742847, 17.908812>,  <16.663181, 22.346367, 17.377176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.816946, 22.742847, 17.908812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.483082, 22.902889, 17.757414>,  <16.282763, 22.998915, 17.666574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.483082, 22.902889, 17.757414>,  <16.816946, 22.742847, 17.908812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.483082, 22.902889, 17.757414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335604, 0.175433, 0.925523,
		0.436705, 0.899523, -0.012151,
		-0.834661, 0.400103, -0.378496,
		16.232683, 23.022921, 17.643866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.758917, 23.363243, 18.086477>,  <16.816946, 22.742847, 17.908812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.758917, 23.363243, 18.086477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.371765, 23.295341, 18.012293>,  <16.139475, 23.254601, 17.967781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.371765, 23.295341, 18.012293>,  <16.758917, 23.363243, 18.086477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.371765, 23.295341, 18.012293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180738, -0.043011, 0.982590,
		-0.174775, 0.984548, 0.010949,
		-0.967878, -0.169753, -0.185463,
		16.081402, 23.244415, 17.956654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.406210, 23.830429, 18.479380>,  <16.758917, 23.363243, 18.086477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.406210, 23.830429, 18.479380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.150482, 23.533661, 18.398561>,  <15.997046, 23.355600, 18.350071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.150482, 23.533661, 18.398561>,  <16.406210, 23.830429, 18.479380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.150482, 23.533661, 18.398561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187069, -0.104794, 0.976741,
		-0.745837, 0.662248, -0.071794,
		-0.639321, -0.741921, -0.202046,
		15.958686, 23.311085, 18.337948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.712911, 24.115562, 18.713398>,  <16.406210, 23.830429, 18.479380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.712911, 24.115562, 18.713398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.653558, 23.719994, 18.711952>,  <15.617946, 23.482653, 18.711084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.653558, 23.719994, 18.711952>,  <15.712911, 24.115562, 18.713398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.653558, 23.719994, 18.711952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253233, 0.034464, 0.966791,
		-0.955958, 0.144369, -0.255542,
		-0.148382, -0.988924, -0.003613,
		15.609043, 23.423317, 18.710869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.121168, 24.156067, 19.186653>,  <15.712911, 24.115562, 18.713398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.121168, 24.156067, 19.186653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.280732, 23.794701, 19.123777>,  <15.376471, 23.577881, 19.086052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.280732, 23.794701, 19.123777>,  <15.121168, 24.156067, 19.186653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.280732, 23.794701, 19.123777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307499, -0.293282, 0.905223,
		-0.863895, -0.312766, -0.394793,
		0.398909, -0.903417, -0.157190,
		15.400405, 23.523676, 19.076620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.593147, 23.656219, 19.476934>,  <15.121168, 24.156067, 19.186653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.593147, 23.656219, 19.476934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.937173, 23.453529, 19.453209>,  <15.143588, 23.331915, 19.438974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.937173, 23.453529, 19.453209>,  <14.593147, 23.656219, 19.476934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.937173, 23.453529, 19.453209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174184, -0.400918, 0.899402,
		-0.479534, -0.763210, -0.433079,
		0.860062, -0.506729, -0.059315,
		15.195192, 23.301512, 19.435415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.468250, 22.992308, 19.669800>,  <14.593147, 23.656219, 19.476934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.468250, 22.992308, 19.669800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.862739, 23.024456, 19.727638>,  <15.099432, 23.043745, 19.762341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.862739, 23.024456, 19.727638>,  <14.468250, 22.992308, 19.669800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.862739, 23.024456, 19.727638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121406, -0.242096, 0.962627,
		0.112371, -0.966918, -0.229003,
		0.986222, 0.080369, 0.144594,
		15.158606, 23.048567, 19.771017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.633147, 22.302813, 19.782059>,  <14.468250, 22.992308, 19.669800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.633147, 22.302813, 19.782059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.907409, 22.545902, 19.942331>,  <15.071965, 22.691757, 20.038496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.907409, 22.545902, 19.942331>,  <14.633147, 22.302813, 19.782059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.907409, 22.545902, 19.942331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178649, -0.393123, 0.901964,
		0.705665, -0.690017, -0.160976,
		0.685654, 0.607727, 0.400683,
		15.113105, 22.728220, 20.062536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.878703, 22.007444, 20.402441>,  <14.633147, 22.302813, 19.782059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.878703, 22.007444, 20.402441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.050973, 22.362206, 20.469278>,  <15.154335, 22.575062, 20.509380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.050973, 22.362206, 20.469278>,  <14.878703, 22.007444, 20.402441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.050973, 22.362206, 20.469278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082340, -0.222986, 0.971338,
		0.898743, -0.404572, -0.169062,
		0.430675, 0.886904, 0.167095,
		15.180176, 22.628277, 20.519407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.528441, 21.908133, 20.670416>,  <14.878703, 22.007444, 20.402441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.528441, 21.908133, 20.670416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.405971, 22.267509, 20.796310>,  <15.332488, 22.483135, 20.871847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.405971, 22.267509, 20.796310>,  <15.528441, 21.908133, 20.670416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.405971, 22.267509, 20.796310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111518, -0.294486, 0.949127,
		0.945420, 0.325699, -0.010027,
		-0.306176, 0.898442, 0.314735,
		15.314117, 22.537043, 20.890730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.944333, 22.042053, 21.222923>,  <15.528441, 21.908133, 20.670416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.944333, 22.042053, 21.222923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.641282, 22.300018, 21.263090>,  <15.459452, 22.454798, 21.287191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.641282, 22.300018, 21.263090>,  <15.944333, 22.042053, 21.222923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.641282, 22.300018, 21.263090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116116, -0.018219, 0.993069,
		0.642274, 0.764037, -0.061082,
		-0.757628, 0.644915, 0.100419,
		15.413994, 22.493492, 21.293217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.507765, 22.150017, 20.896515>,  <15.944333, 22.042053, 21.222923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.507765, 22.150017, 20.896515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.692894, 21.855843, 21.094475>,  <16.803972, 21.679338, 21.213251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.692894, 21.855843, 21.094475>,  <16.507765, 22.150017, 20.896515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.692894, 21.855843, 21.094475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711896, -0.024300, -0.701865,
		0.528202, 0.677159, 0.512307,
		0.462825, -0.735436, 0.494901,
		16.831741, 21.635212, 21.242945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.222546, 22.307375, 21.147337>,  <16.507765, 22.150017, 20.896515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.222546, 22.307375, 21.147337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.213570, 21.911663, 21.089617>,  <17.208183, 21.674236, 21.054985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.213570, 21.911663, 21.089617>,  <17.222546, 22.307375, 21.147337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.213570, 21.911663, 21.089617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713633, 0.085232, -0.695316,
		0.700160, -0.118580, 0.704070,
		-0.022441, -0.989280, -0.144299,
		17.206837, 21.614880, 21.046328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.922590, 22.002377, 21.230087>,  <17.222546, 22.307375, 21.147337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.922590, 22.002377, 21.230087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.743202, 21.694130, 21.048967>,  <17.635569, 21.509182, 20.940296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.743202, 21.694130, 21.048967>,  <17.922590, 22.002377, 21.230087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.743202, 21.694130, 21.048967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799790, -0.119834, -0.588197,
		0.399013, -0.625933, 0.670072,
		-0.448470, -0.770615, -0.452799,
		17.608662, 21.462946, 20.913128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.454947, 21.468359, 21.167917>,  <17.922590, 22.002377, 21.230087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.454947, 21.468359, 21.167917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.175598, 21.375759, 20.897013>,  <18.007990, 21.320200, 20.734470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.175598, 21.375759, 20.897013>,  <18.454947, 21.468359, 21.167917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.175598, 21.375759, 20.897013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715423, -0.253756, -0.650983,
		-0.021157, -0.939157, 0.342836,
		-0.698372, -0.231500, -0.677263,
		17.966087, 21.306309, 20.693834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.629810, 20.757875, 20.953714>,  <18.454947, 21.468359, 21.167917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.629810, 20.757875, 20.953714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.375950, 20.895496, 20.676920>,  <18.223635, 20.978069, 20.510843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.375950, 20.895496, 20.676920>,  <18.629810, 20.757875, 20.953714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.375950, 20.895496, 20.676920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601455, -0.342354, -0.721835,
		-0.485256, -0.874311, 0.010341,
		-0.634649, 0.344055, -0.691988,
		18.185555, 20.998713, 20.469324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.407520, 20.233372, 20.552914>,  <18.629810, 20.757875, 20.953714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.407520, 20.233372, 20.552914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.383335, 20.566170, 20.332321>,  <18.368824, 20.765848, 20.199966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.383335, 20.566170, 20.332321>,  <18.407520, 20.233372, 20.552914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.383335, 20.566170, 20.332321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505549, -0.450863, -0.735625,
		-0.860677, -0.323276, -0.393354,
		-0.060462, 0.831995, -0.551479,
		18.365196, 20.815767, 20.166878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.205009, 20.029961, 19.899588>,  <18.407520, 20.233372, 20.552914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.205009, 20.029961, 19.899588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.333172, 20.385571, 19.768759>,  <18.410069, 20.598936, 19.690262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.333172, 20.385571, 19.768759>,  <18.205009, 20.029961, 19.899588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.333172, 20.385571, 19.768759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510631, -0.452908, -0.730842,
		-0.797870, 0.067152, -0.599078,
		0.320405, 0.889024, -0.327072,
		18.429293, 20.652277, 19.670637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.616768, 19.751738, 19.741766>,  <18.205009, 20.029961, 19.899588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.616768, 19.751738, 19.741766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.710754, 19.367569, 19.801607>,  <17.767147, 19.137068, 19.837511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.710754, 19.367569, 19.801607>,  <17.616768, 19.751738, 19.741766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.710754, 19.367569, 19.801607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105690, 0.127753, 0.986158,
		-0.966240, -0.247526, -0.071489,
		0.234967, -0.960422, 0.149601,
		17.781244, 19.079443, 19.846487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.190077, 19.604670, 20.283735>,  <17.616768, 19.751738, 19.741766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.190077, 19.604670, 20.283735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.452175, 19.303318, 20.305929>,  <17.609434, 19.122507, 20.319244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.452175, 19.303318, 20.305929>,  <17.190077, 19.604670, 20.283735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.452175, 19.303318, 20.305929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130672, -0.040698, 0.990590,
		-0.744030, -0.656328, -0.125112,
		0.655244, -0.753377, 0.055483,
		17.648748, 19.077305, 20.322575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.918535, 19.099333, 20.658745>,  <17.190077, 19.604670, 20.283735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.918535, 19.099333, 20.658745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.309597, 19.016201, 20.671406>,  <17.544233, 18.966322, 20.679003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.309597, 19.016201, 20.671406>,  <16.918535, 19.099333, 20.658745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.309597, 19.016201, 20.671406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030283, 0.009767, 0.999494,
		-0.208032, -0.978117, 0.003255,
		0.977653, -0.207829, 0.031652,
		17.602894, 18.953854, 20.680901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.895521, 18.565666, 21.173304>,  <16.918535, 19.099333, 20.658745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.895521, 18.565666, 21.173304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.264851, 18.707481, 21.114277>,  <17.486448, 18.792570, 21.078861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.264851, 18.707481, 21.114277>,  <16.895521, 18.565666, 21.173304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.264851, 18.707481, 21.114277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150633, 0.019097, 0.988405,
		0.353247, -0.934846, -0.035773,
		0.923324, 0.354540, -0.147565,
		17.541847, 18.813843, 21.070007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.228664, 18.172657, 21.500309>,  <16.895521, 18.565666, 21.173304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.228664, 18.172657, 21.500309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.460812, 18.498367, 21.495832>,  <17.600100, 18.693794, 21.493147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.460812, 18.498367, 21.495832>,  <17.228664, 18.172657, 21.500309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.460812, 18.498367, 21.495832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057018, 0.054342, 0.996893,
		0.812356, -0.577926, 0.077967,
		0.580368, 0.814278, -0.011193,
		17.634922, 18.742651, 21.492476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.722343, 18.018486, 22.045830>,  <17.228664, 18.172657, 21.500309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.722343, 18.018486, 22.045830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.720490, 18.417526, 22.018190>,  <17.719378, 18.656950, 22.001608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.720490, 18.417526, 22.018190>,  <17.722343, 18.018486, 22.045830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.720490, 18.417526, 22.018190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076651, 0.068539, 0.994700,
		0.997047, 0.009907, 0.076149,
		-0.004635, 0.997599, -0.069096,
		17.719099, 18.716806, 21.997461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.991966, 18.213840, 22.676891>,  <17.722343, 18.018486, 22.045830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.991966, 18.213840, 22.676891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.813942, 18.547123, 22.545630>,  <17.707127, 18.747093, 22.466873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.813942, 18.547123, 22.545630>,  <17.991966, 18.213840, 22.676891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.813942, 18.547123, 22.545630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278799, 0.219313, 0.934972,
		0.850994, 0.507609, 0.134689,
		-0.445061, 0.833207, -0.328155,
		17.680424, 18.797085, 22.447184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.266090, 18.757555, 22.975748>,  <17.991966, 18.213840, 22.676891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.266090, 18.757555, 22.975748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.909397, 18.897511, 22.860933>,  <17.695381, 18.981483, 22.792046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.909397, 18.897511, 22.860933>,  <18.266090, 18.757555, 22.975748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.909397, 18.897511, 22.860933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211307, 0.238964, 0.947758,
		0.400201, 0.905800, -0.139158,
		-0.891733, 0.349889, -0.287035,
		17.641876, 19.002478, 22.774822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.033670, 19.369989, 23.381605>,  <18.266090, 18.757555, 22.975748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.033670, 19.369989, 23.381605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.681625, 19.213238, 23.274397>,  <17.470398, 19.119186, 23.210072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.681625, 19.213238, 23.274397>,  <18.033670, 19.369989, 23.381605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.681625, 19.213238, 23.274397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312201, 0.052406, 0.948570,
		-0.357679, 0.918523, -0.168468,
		-0.880112, -0.391879, -0.268019,
		17.417591, 19.095675, 23.193991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.818254, 20.197031, 7.079649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.538521, 19.918171, 7.016516>,  <18.370682, 19.750854, 6.978636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.538521, 19.918171, 7.016516>,  <18.818254, 20.197031, 7.079649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.538521, 19.918171, 7.016516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017147, -0.237108, 0.971332,
		-0.714590, 0.676578, 0.177772,
		-0.699333, -0.697153, -0.157833,
		18.328720, 19.709024, 6.969166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.333178, 20.269300, 7.581568>,  <18.818254, 20.197031, 7.079649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.333178, 20.269300, 7.581568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.272930, 19.889805, 7.470422>,  <18.236782, 19.662107, 7.403734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.272930, 19.889805, 7.470422>,  <18.333178, 20.269300, 7.581568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.272930, 19.889805, 7.470422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128708, -0.259861, 0.957030,
		-0.980177, 0.179912, -0.082970,
		-0.150621, -0.948738, -0.277866,
		18.227743, 19.605183, 7.387062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.715240, 19.958754, 7.984224>,  <18.333178, 20.269300, 7.581568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.715240, 19.958754, 7.984224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.890911, 19.616600, 7.874355>,  <17.996313, 19.411308, 7.808434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.890911, 19.616600, 7.874355>,  <17.715240, 19.958754, 7.984224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.890911, 19.616600, 7.874355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148309, -0.370569, 0.916888,
		-0.886075, -0.361938, -0.289606,
		0.439176, -0.855383, -0.274673,
		18.022663, 19.359985, 7.791954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.347467, 19.496639, 8.363054>,  <17.715240, 19.958754, 7.984224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.347467, 19.496639, 8.363054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.692295, 19.310810, 8.282051>,  <17.899191, 19.199312, 8.233449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.692295, 19.310810, 8.282051>,  <17.347467, 19.496639, 8.363054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.692295, 19.310810, 8.282051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011170, -0.382074, 0.924064,
		-0.506668, -0.798869, -0.324185,
		0.862070, -0.464572, -0.202508,
		17.950916, 19.171438, 8.221299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.232216, 18.909613, 8.854303>,  <17.347467, 19.496639, 8.363054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.232216, 18.909613, 8.854303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.618401, 18.920856, 8.750692>,  <17.850111, 18.927603, 8.688526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.618401, 18.920856, 8.750692>,  <17.232216, 18.909613, 8.854303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.618401, 18.920856, 8.750692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257272, -0.259990, 0.930708,
		-0.041182, -0.965202, -0.258242,
		0.965461, 0.028110, -0.259027,
		17.908039, 18.929289, 8.672984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.471788, 18.529634, 9.330432>,  <17.232216, 18.909613, 8.854303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.471788, 18.529634, 9.330432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.831070, 18.625832, 9.183248>,  <18.046638, 18.683550, 9.094937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.831070, 18.625832, 9.183248>,  <17.471788, 18.529634, 9.330432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.831070, 18.625832, 9.183248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427839, -0.286100, 0.857380,
		0.100921, -0.927529, -0.359869,
		0.898203, 0.240494, -0.367960,
		18.100531, 18.697979, 9.072860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.970243, 17.952583, 9.277330>,  <17.471788, 18.529634, 9.330432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.970243, 17.952583, 9.277330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.178528, 18.289490, 9.333109>,  <18.303497, 18.491634, 9.366576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.178528, 18.289490, 9.333109>,  <17.970243, 17.952583, 9.277330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.178528, 18.289490, 9.333109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409186, -0.389572, 0.825107,
		0.749285, -0.372582, -0.547498,
		0.520710, 0.842268, 0.139445,
		18.334742, 18.542170, 9.374943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.663891, 17.739101, 9.376812>,  <17.970243, 17.952583, 9.277330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.663891, 17.739101, 9.376812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.609982, 18.099709, 9.541299>,  <18.577637, 18.316072, 9.639991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.609982, 18.099709, 9.541299>,  <18.663891, 17.739101, 9.376812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.609982, 18.099709, 9.541299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315697, -0.354311, 0.880227,
		0.939240, 0.248450, -0.236855,
		-0.134772, 0.901519, 0.411218,
		18.569550, 18.370165, 9.664664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.025763, 17.702860, 9.977127>,  <18.663891, 17.739101, 9.376812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.025763, 17.702860, 9.977127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.845718, 18.053524, 10.045091>,  <18.737692, 18.263922, 10.085869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.845718, 18.053524, 10.045091>,  <19.025763, 17.702860, 9.977127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.845718, 18.053524, 10.045091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271121, -0.047126, 0.961391,
		0.850818, 0.478800, -0.216468,
		-0.450113, 0.876658, 0.169908,
		18.710684, 18.316521, 10.096064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.560659, 18.221365, 10.255012>,  <19.025763, 17.702860, 9.977127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.560659, 18.221365, 10.255012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.193226, 18.341057, 10.358287>,  <18.972765, 18.412872, 10.420252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.193226, 18.341057, 10.358287>,  <19.560659, 18.221365, 10.255012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.193226, 18.341057, 10.358287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244340, -0.083499, 0.966088,
		0.310641, 0.950520, 0.003587,
		-0.918586, 0.299230, 0.258189,
		18.917650, 18.430826, 10.435743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.712959, 18.671589, 10.746217>,  <19.560659, 18.221365, 10.255012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.712959, 18.671589, 10.746217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.326229, 18.600517, 10.819625>,  <19.094191, 18.557875, 10.863669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.326229, 18.600517, 10.819625>,  <19.712959, 18.671589, 10.746217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.326229, 18.600517, 10.819625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187031, -0.003068, 0.982349,
		-0.173982, 0.984083, 0.036198,
		-0.966825, -0.177681, 0.183520,
		19.036182, 18.547213, 10.874681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.589802, 19.050541, 11.330281>,  <19.712959, 18.671589, 10.746217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.589802, 19.050541, 11.330281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.299782, 18.775169, 11.322613>,  <19.125769, 18.609947, 11.318011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.299782, 18.775169, 11.322613>,  <19.589802, 19.050541, 11.330281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.299782, 18.775169, 11.322613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081015, 0.057614, 0.995046,
		-0.683913, 0.723013, -0.097546,
		-0.725051, -0.688428, -0.019172,
		19.082266, 18.568642, 11.316861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.385757, 19.727171, 11.594582>,  <19.589802, 19.050541, 11.330281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.385757, 19.727171, 11.594582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.772362, 19.820381, 11.637579>,  <20.004324, 19.876307, 11.663378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.772362, 19.820381, 11.637579>,  <19.385757, 19.727171, 11.594582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.772362, 19.820381, 11.637579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009745, 0.451906, -0.892012,
		-0.256437, 0.861093, 0.439043,
		0.966512, 0.233023, 0.107494,
		20.062315, 19.890287, 11.669827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.538874, 20.489887, 11.504725>,  <19.385757, 19.727171, 11.594582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.538874, 20.489887, 11.504725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.879177, 20.304794, 11.405057>,  <20.083359, 20.193739, 11.345256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.879177, 20.304794, 11.405057>,  <19.538874, 20.489887, 11.504725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.879177, 20.304794, 11.405057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062451, 0.381739, -0.922158,
		0.521830, 0.800096, 0.295871,
		0.850760, -0.462732, -0.249169,
		20.134405, 20.165974, 11.330306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.918324, 20.928974, 11.046420>,  <19.538874, 20.489887, 11.504725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.918324, 20.928974, 11.046420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.058075, 20.566555, 10.950911>,  <20.141926, 20.349104, 10.893604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.058075, 20.566555, 10.950911>,  <19.918324, 20.928974, 11.046420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.058075, 20.566555, 10.950911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000142, 0.254783, -0.966998,
		0.936982, 0.337881, 0.088886,
		0.349377, -0.906047, -0.238775,
		20.162888, 20.294741, 10.879278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.426140, 21.079838, 10.611795>,  <19.918324, 20.928974, 11.046420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.426140, 21.079838, 10.611795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.380356, 20.689392, 10.537929>,  <20.352884, 20.455126, 10.493608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.380356, 20.689392, 10.537929>,  <20.426140, 21.079838, 10.611795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.380356, 20.689392, 10.537929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227904, 0.155130, -0.961246,
		0.966933, -0.152111, 0.204704,
		-0.114461, -0.976113, -0.184667,
		20.346018, 20.396559, 10.482529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.068380, 20.834171, 10.217586>,  <20.426140, 21.079838, 10.611795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.068380, 20.834171, 10.217586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.766670, 20.577900, 10.160173>,  <20.585644, 20.424137, 10.125726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.766670, 20.577900, 10.160173>,  <21.068380, 20.834171, 10.217586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.766670, 20.577900, 10.160173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316737, -0.163587, -0.934300,
		0.575106, -0.750181, 0.326316,
		-0.754275, -0.640678, -0.143530,
		20.540388, 20.385696, 10.117114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.339756, 20.181454, 9.959407>,  <21.068380, 20.834171, 10.217586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.339756, 20.181454, 9.959407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.952950, 20.206314, 9.860602>,  <20.720865, 20.221230, 9.801320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.952950, 20.206314, 9.860602>,  <21.339756, 20.181454, 9.959407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.952950, 20.206314, 9.860602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246252, -0.019706, -0.969005,
		-0.065094, -0.997872, 0.003751,
		-0.967017, 0.062152, -0.247011,
		20.662844, 20.224958, 9.786499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.461933, 20.002718, 9.356936>,  <21.339756, 20.181454, 9.959407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.461933, 20.002718, 9.356936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.076191, 20.106579, 9.336549>,  <20.844746, 20.168896, 9.324316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.076191, 20.106579, 9.336549>,  <21.461933, 20.002718, 9.356936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.076191, 20.106579, 9.336549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072598, 0.074395, -0.994583,
		-0.254456, -0.962832, -0.090593,
		-0.964356, 0.259654, -0.050969,
		20.786884, 20.184475, 9.321258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.171085, 19.620857, 8.819122>,  <21.461933, 20.002718, 9.356936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.171085, 19.620857, 8.819122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.923389, 19.932949, 8.854420>,  <20.774773, 20.120205, 8.875598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.923389, 19.932949, 8.854420>,  <21.171085, 19.620857, 8.819122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.923389, 19.932949, 8.854420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000432, 0.112720, -0.993627,
		-0.785203, -0.615253, -0.070138,
		-0.619238, 0.780229, 0.088243,
		20.737617, 20.167017, 8.880893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.779167, 19.577477, 8.301156>,  <21.171085, 19.620857, 8.819122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.779167, 19.577477, 8.301156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.707275, 19.963223, 8.378818>,  <20.664141, 20.194670, 8.425414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.707275, 19.963223, 8.378818>,  <20.779167, 19.577477, 8.301156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.707275, 19.963223, 8.378818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086417, 0.212082, -0.973423,
		-0.979913, -0.158176, -0.121455,
		-0.179730, 0.964366, 0.194153,
		20.653357, 20.252533, 8.437063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.203449, 19.819794, 7.888210>,  <20.779167, 19.577477, 8.301156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.203449, 19.819794, 7.888210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.436855, 20.129765, 7.985370>,  <20.576899, 20.315748, 8.043665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.436855, 20.129765, 7.985370>,  <20.203449, 19.819794, 7.888210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.436855, 20.129765, 7.985370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093667, 0.232880, -0.967984,
		-0.806684, 0.587582, 0.063304,
		0.583513, 0.774928, 0.242898,
		20.611910, 20.362244, 8.058239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.029095, 20.346519, 7.346986>,  <20.203449, 19.819794, 7.888210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.029095, 20.346519, 7.346986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.351463, 20.521595, 7.506446>,  <20.544884, 20.626640, 7.602122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.351463, 20.521595, 7.506446>,  <20.029095, 20.346519, 7.346986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.351463, 20.521595, 7.506446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100315, 0.562673, -0.820571,
		-0.583463, 0.701305, 0.409563,
		0.805920, 0.437687, 0.398650,
		20.593239, 20.652901, 7.626041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.941097, 21.027189, 7.195792>,  <20.029095, 20.346519, 7.346986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.941097, 21.027189, 7.195792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.330196, 20.977734, 7.274247>,  <20.563656, 20.948059, 7.321321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.330196, 20.977734, 7.274247>,  <19.941097, 21.027189, 7.195792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.330196, 20.977734, 7.274247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225330, 0.703435, -0.674096,
		-0.054626, 0.699923, 0.712126,
		0.972750, -0.123640, 0.196139,
		20.622021, 20.940641, 7.333089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.178860, 21.671967, 7.290401>,  <19.941097, 21.027189, 7.195792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.178860, 21.671967, 7.290401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.482964, 21.442616, 7.168259>,  <20.665426, 21.305004, 7.094974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.482964, 21.442616, 7.168259>,  <20.178860, 21.671967, 7.290401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.482964, 21.442616, 7.168259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330743, 0.746216, -0.577729,
		0.559118, 0.338231, 0.756960,
		0.760261, -0.573377, -0.305355,
		20.711042, 21.270603, 7.076652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.682142, 22.123999, 7.190428>,  <20.178860, 21.671967, 7.290401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.682142, 22.123999, 7.190428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.756306, 21.798817, 6.969621>,  <20.800804, 21.603706, 6.837136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.756306, 21.798817, 6.969621>,  <20.682142, 22.123999, 7.190428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.756306, 21.798817, 6.969621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476126, 0.565734, -0.673238,
		0.859610, -0.138007, 0.491961,
		0.185408, -0.812957, -0.552019,
		20.811928, 21.554930, 6.804015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.061810, 22.618723, 6.779893>,  <20.682142, 22.123999, 7.190428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.061810, 22.618723, 6.779893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.854141, 22.939312, 6.661165>,  <20.729540, 23.131666, 6.589929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.854141, 22.939312, 6.661165>,  <21.061810, 22.618723, 6.779893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.854141, 22.939312, 6.661165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233882, 0.200806, 0.951302,
		0.822047, 0.563308, 0.083198,
		-0.519170, 0.801474, -0.296819,
		20.698391, 23.179754, 6.572119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.096504, 23.150387, 7.266512>,  <21.061810, 22.618723, 6.779893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.096504, 23.150387, 7.266512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.772640, 23.234913, 7.047498>,  <20.578321, 23.285629, 6.916089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.772640, 23.234913, 7.047498>,  <21.096504, 23.150387, 7.266512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.772640, 23.234913, 7.047498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501362, 0.235954, 0.832444,
		0.305103, 0.948510, -0.085096,
		-0.809660, 0.211317, -0.547537,
		20.529743, 23.298307, 6.883237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.927774, 23.829746, 7.288225>,  <21.096504, 23.150387, 7.266512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.927774, 23.829746, 7.288225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.598671, 23.607834, 7.238773>,  <20.401209, 23.474686, 7.209102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.598671, 23.607834, 7.238773>,  <20.927774, 23.829746, 7.288225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.598671, 23.607834, 7.238773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375172, 0.366673, 0.851350,
		-0.426982, 0.746838, -0.509822,
		-0.822759, -0.554782, -0.123630,
		20.351843, 23.441399, 7.201684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.454182, 24.274815, 7.498647>,  <20.927774, 23.829746, 7.288225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.454182, 24.274815, 7.498647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.283092, 23.913906, 7.520418>,  <20.180439, 23.697361, 7.533481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.283092, 23.913906, 7.520418>,  <20.454182, 24.274815, 7.498647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.283092, 23.913906, 7.520418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519383, 0.294603, 0.802153,
		-0.739794, 0.314830, -0.594632,
		-0.427722, -0.902270, 0.054428,
		20.154776, 23.643225, 7.536747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.845226, 24.525820, 7.707053>,  <20.454182, 24.274815, 7.498647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.845226, 24.525820, 7.707053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.839832, 24.128841, 7.755831>,  <19.836596, 23.890654, 7.785097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.839832, 24.128841, 7.755831>,  <19.845226, 24.525820, 7.707053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.839832, 24.128841, 7.755831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583233, 0.106867, 0.805245,
		-0.812193, -0.060263, -0.580268,
		-0.013485, -0.992445, 0.121944,
		19.835787, 23.831108, 7.792414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.125357, 24.244703, 7.812708>,  <19.845226, 24.525820, 7.707053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.125357, 24.244703, 7.812708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.402050, 24.010193, 7.981364>,  <19.568066, 23.869486, 8.082558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.402050, 24.010193, 7.981364>,  <19.125357, 24.244703, 7.812708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.402050, 24.010193, 7.981364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497935, 0.035656, 0.866481,
		-0.523033, -0.809325, -0.267264,
		0.691735, -0.586279, 0.421640,
		19.609571, 23.834309, 8.107857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.780378, 23.616737, 8.114431>,  <19.125357, 24.244703, 7.812708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.780378, 23.616737, 8.114431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.136841, 23.622280, 8.295824>,  <19.350719, 23.625607, 8.404659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.136841, 23.622280, 8.295824>,  <18.780378, 23.616737, 8.114431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.136841, 23.622280, 8.295824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444927, -0.168840, 0.879507,
		0.088756, -0.985546, -0.144297,
		0.891158, 0.013859, 0.453482,
		19.404188, 23.626436, 8.431869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.818699, 23.005854, 8.460854>,  <18.780378, 23.616737, 8.114431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.818699, 23.005854, 8.460854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.084232, 23.237320, 8.650369>,  <19.243553, 23.376200, 8.764077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.084232, 23.237320, 8.650369>,  <18.818699, 23.005854, 8.460854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.084232, 23.237320, 8.650369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387295, -0.275955, 0.879688,
		0.639787, -0.767462, 0.040926,
		0.663833, 0.578664, 0.473787,
		19.283382, 23.410919, 8.792504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.216202, 22.624161, 8.933782>,  <18.818699, 23.005854, 8.460854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.216202, 22.624161, 8.933782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.233086, 22.991596, 9.090963>,  <19.243216, 23.212057, 9.185272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.233086, 22.991596, 9.090963>,  <19.216202, 22.624161, 8.933782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.233086, 22.991596, 9.090963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405058, -0.343799, 0.847190,
		0.913316, -0.194927, 0.357570,
		0.042208, 0.918589, 0.392954,
		19.245749, 23.267174, 9.208850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.412300, 22.495697, 9.591425>,  <19.216202, 22.624161, 8.933782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.412300, 22.495697, 9.591425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.291603, 22.874588, 9.634706>,  <19.219185, 23.101923, 9.660674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.291603, 22.874588, 9.634706>,  <19.412300, 22.495697, 9.591425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.291603, 22.874588, 9.634706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169387, -0.164949, 0.971648,
		0.938221, 0.274861, 0.210220,
		-0.301744, 0.947229, 0.108201,
		19.201080, 23.158756, 9.667166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.675808, 22.645103, 10.193599>,  <19.412300, 22.495697, 9.591425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.675808, 22.645103, 10.193599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.408600, 22.940464, 10.156705>,  <19.248274, 23.117682, 10.134568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.408600, 22.940464, 10.156705>,  <19.675808, 22.645103, 10.193599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.408600, 22.940464, 10.156705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185629, -0.045325, 0.981574,
		0.720617, 0.672835, 0.167347,
		-0.668022, 0.738403, -0.092236,
		19.208193, 23.161985, 10.129034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.794991, 23.135782, 10.746486>,  <19.675808, 22.645103, 10.193599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.794991, 23.135782, 10.746486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.411514, 23.191132, 10.647075>,  <19.181429, 23.224340, 10.587428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.411514, 23.191132, 10.647075>,  <19.794991, 23.135782, 10.746486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.411514, 23.191132, 10.647075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250861, 0.000604, 0.968023,
		0.134098, 0.990380, 0.034133,
		-0.958690, 0.138372, -0.248528,
		19.123907, 23.232643, 10.572516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.594341, 23.535089, 11.268257>,  <19.794991, 23.135782, 10.746486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.594341, 23.535089, 11.268257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.246067, 23.424515, 11.105536>,  <19.037102, 23.358170, 11.007902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.246067, 23.424515, 11.105536>,  <19.594341, 23.535089, 11.268257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.246067, 23.424515, 11.105536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409697, -0.049997, 0.910851,
		-0.272132, 0.959730, -0.069724,
		-0.870685, -0.276437, -0.406804,
		18.984861, 23.341583, 10.983494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.101109, 23.856064, 11.703716>,  <19.594341, 23.535089, 11.268257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.101109, 23.856064, 11.703716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.854816, 23.603790, 11.514777>,  <18.707041, 23.452425, 11.401414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.854816, 23.603790, 11.514777>,  <19.101109, 23.856064, 11.703716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.854816, 23.603790, 11.514777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417251, -0.247540, 0.874429,
		-0.668415, 0.735499, -0.110737,
		-0.615730, -0.630686, -0.472347,
		18.670097, 23.414585, 11.373073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.408012, 24.067348, 11.892965>,  <19.101109, 23.856064, 11.703716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.408012, 24.067348, 11.892965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.424519, 23.681583, 11.788500>,  <18.434422, 23.450125, 11.725821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.424519, 23.681583, 11.788500>,  <18.408012, 24.067348, 11.892965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.424519, 23.681583, 11.788500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462198, -0.250162, 0.850760,
		-0.885816, 0.085604, -0.456072,
		0.041264, -0.964412, -0.261163,
		18.436897, 23.392260, 11.710151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.768616, 23.684162, 12.141666>,  <18.408012, 24.067348, 11.892965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.768616, 23.684162, 12.141666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.008961, 23.372219, 12.071479>,  <18.153168, 23.185053, 12.029366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.008961, 23.372219, 12.071479>,  <17.768616, 23.684162, 12.141666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.008961, 23.372219, 12.071479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507597, -0.541824, 0.669905,
		-0.617504, -0.313450, -0.721413,
		0.600861, -0.779856, -0.175472,
		18.189220, 23.138262, 12.018838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.340916, 23.032042, 12.150779>,  <17.768616, 23.684162, 12.141666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.340916, 23.032042, 12.150779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.721367, 22.935486, 12.227814>,  <17.949636, 22.877552, 12.274035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.721367, 22.935486, 12.227814>,  <17.340916, 23.032042, 12.150779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.721367, 22.935486, 12.227814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270904, -0.352893, 0.895588,
		-0.148223, -0.903990, -0.401039,
		0.951126, -0.241390, 0.192587,
		18.006704, 22.863068, 12.285590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.267302, 22.344847, 12.411716>,  <17.340916, 23.032042, 12.150779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.267302, 22.344847, 12.411716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.624744, 22.491669, 12.515053>,  <17.839211, 22.579762, 12.577054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.624744, 22.491669, 12.515053>,  <17.267302, 22.344847, 12.411716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.624744, 22.491669, 12.515053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106270, -0.386176, 0.916283,
		0.436093, -0.846249, -0.306082,
		0.893605, 0.367057, 0.258340,
		17.892826, 22.601786, 12.592555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.544575, 21.839550, 12.751540>,  <17.267302, 22.344847, 12.411716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.544575, 21.839550, 12.751540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.743145, 22.168896, 12.861543>,  <17.862288, 22.366503, 12.927545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.743145, 22.168896, 12.861543>,  <17.544575, 21.839550, 12.751540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.743145, 22.168896, 12.861543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195176, -0.202823, 0.959567,
		0.845853, -0.530029, 0.060015,
		0.496426, 0.823367, 0.275007,
		17.892073, 22.415905, 12.944045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.880970, 21.715767, 13.396766>,  <17.544575, 21.839550, 12.751540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.880970, 21.715767, 13.396766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.931797, 22.112499, 13.401253>,  <17.962294, 22.350538, 13.403945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.931797, 22.112499, 13.401253>,  <17.880970, 21.715767, 13.396766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.931797, 22.112499, 13.401253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243987, 0.020292, 0.969566,
		0.961418, -0.125937, 0.244572,
		0.127067, 0.991830, 0.011218,
		17.969917, 22.410048, 13.404618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.344025, 21.827667, 13.905531>,  <17.880970, 21.715767, 13.396766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.344025, 21.827667, 13.905531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.153263, 22.175411, 13.853725>,  <18.038807, 22.384058, 13.822642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.153263, 22.175411, 13.853725>,  <18.344025, 21.827667, 13.905531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.153263, 22.175411, 13.853725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114873, 0.084438, 0.989785,
		0.871416, 0.486910, 0.059597,
		-0.476904, 0.869361, -0.129513,
		18.010191, 22.436220, 13.814872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.754538, 22.271786, 14.297330>,  <18.344025, 21.827667, 13.905531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.754538, 22.271786, 14.297330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.380741, 22.408184, 14.256449>,  <18.156464, 22.490023, 14.231920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.380741, 22.408184, 14.256449>,  <18.754538, 22.271786, 14.297330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.380741, 22.408184, 14.256449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099595, 0.025196, 0.994709,
		0.341767, 0.939727, 0.010416,
		-0.934492, 0.340996, -0.102203,
		18.100393, 22.510483, 14.225788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.626543, 22.856239, 14.904829>,  <18.754538, 22.271786, 14.297330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.626543, 22.856239, 14.904829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.246925, 22.785145, 14.800735>,  <18.019154, 22.742487, 14.738279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.246925, 22.785145, 14.800735>,  <18.626543, 22.856239, 14.904829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.246925, 22.785145, 14.800735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276708, 0.074799, 0.958039,
		-0.150814, 0.981231, -0.120169,
		-0.949046, -0.177738, -0.260234,
		17.962212, 22.731823, 14.722666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.165237, 23.399078, 15.083906>,  <18.626543, 22.856239, 14.904829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.165237, 23.399078, 15.083906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.912979, 23.090649, 15.048727>,  <17.761623, 22.905592, 15.027619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.912979, 23.090649, 15.048727>,  <18.165237, 23.399078, 15.083906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.912979, 23.090649, 15.048727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540329, 0.354903, 0.762947,
		-0.557074, 0.528670, -0.640450,
		-0.630645, -0.771072, -0.087948,
		17.723785, 22.859327, 15.022343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.506107, 23.704376, 15.192018>,  <18.165237, 23.399078, 15.083906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.506107, 23.704376, 15.192018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.432201, 23.312599, 15.224396>,  <17.387857, 23.077534, 15.243823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.432201, 23.312599, 15.224396>,  <17.506107, 23.704376, 15.192018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.432201, 23.312599, 15.224396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734072, 0.192303, 0.651275,
		-0.653453, 0.060913, -0.754512,
		-0.184766, -0.979443, 0.080946,
		17.376772, 23.018766, 15.248679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.822529, 23.598831, 15.153506>,  <17.506107, 23.704376, 15.192018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.822529, 23.598831, 15.153506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.952389, 23.272587, 15.345081>,  <17.030304, 23.076839, 15.460027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.952389, 23.272587, 15.345081>,  <16.822529, 23.598831, 15.153506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.952389, 23.272587, 15.345081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687661, 0.144132, 0.711581,
		-0.649404, -0.560361, -0.514072,
		0.324648, -0.815611, 0.478938,
		17.049784, 23.027903, 15.488763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.248423, 23.288980, 15.327639>,  <16.822529, 23.598831, 15.153506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.248423, 23.288980, 15.327639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.543835, 23.167408, 15.568369>,  <16.721083, 23.094463, 15.712808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.543835, 23.167408, 15.568369>,  <16.248423, 23.288980, 15.327639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.543835, 23.167408, 15.568369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551919, 0.240151, 0.798569,
		-0.387240, -0.921929, 0.009613,
		0.738533, -0.303933, 0.601826,
		16.765394, 23.076229, 15.748917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.898360, 22.856653, 15.760502>,  <16.248423, 23.288980, 15.327639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.898360, 22.856653, 15.760502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.240753, 22.955940, 15.941912>,  <16.446188, 23.015512, 16.050756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.240753, 22.955940, 15.941912>,  <15.898360, 22.856653, 15.760502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.240753, 22.955940, 15.941912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493979, 0.133779, 0.859121,
		0.152604, -0.959415, 0.237140,
		0.855977, 0.248247, 0.453515,
		16.497547, 23.030405, 16.077969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.614736, 22.149214, 15.596436>,  <15.898360, 22.856653, 15.760502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.614736, 22.149214, 15.596436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.217797, 22.101078, 15.607529>,  <14.979634, 22.072197, 15.614184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.217797, 22.101078, 15.607529>,  <15.614736, 22.149214, 15.596436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.217797, 22.101078, 15.607529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055545, 0.234355, -0.970563,
		0.110298, -0.964674, -0.239246,
		-0.992345, -0.120341, 0.027734,
		14.920094, 22.064976, 15.615849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.526320, 21.874357, 14.919304>,  <15.614736, 22.149214, 15.596436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.526320, 21.874357, 14.919304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.155131, 21.976994, 15.027399>,  <14.932418, 22.038576, 15.092257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.155131, 21.976994, 15.027399>,  <15.526320, 21.874357, 14.919304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.155131, 21.976994, 15.027399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164660, 0.368214, -0.915044,
		-0.334298, -0.893633, -0.299442,
		-0.927972, 0.256591, 0.270239,
		14.876740, 22.053970, 15.108471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.959352, 21.498905, 14.430167>,  <15.526320, 21.874357, 14.919304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.959352, 21.498905, 14.430167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.803317, 21.837093, 14.576052>,  <14.709696, 22.040007, 14.663582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.803317, 21.837093, 14.576052>,  <14.959352, 21.498905, 14.430167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.803317, 21.837093, 14.576052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172934, 0.321769, -0.930891,
		-0.904391, -0.426202, 0.020692,
		-0.390090, 0.845468, 0.364710,
		14.686290, 22.090734, 14.685465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.441182, 21.587664, 14.064767>,  <14.959352, 21.498905, 14.430167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.441182, 21.587664, 14.064767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.448577, 21.957962, 14.215843>,  <14.453013, 22.180141, 14.306489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.448577, 21.957962, 14.215843>,  <14.441182, 21.587664, 14.064767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.448577, 21.957962, 14.215843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192742, 0.373970, -0.907192,
		-0.981075, -0.056026, 0.185343,
		0.018486, 0.925747, 0.377691,
		14.454123, 22.235685, 14.329150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.890033, 21.918009, 13.826304>,  <14.441182, 21.587664, 14.064767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.890033, 21.918009, 13.826304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.145926, 22.209602, 13.923731>,  <14.299462, 22.384558, 13.982187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.145926, 22.209602, 13.923731>,  <13.890033, 21.918009, 13.826304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.145926, 22.209602, 13.923731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119947, 0.407707, -0.905201,
		-0.759180, 0.549872, 0.348263,
		0.639734, 0.728983, 0.243567,
		14.337847, 22.428297, 13.996801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
