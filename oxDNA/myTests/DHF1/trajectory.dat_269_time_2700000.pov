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
	<1.152207, 5.563669, 0.922602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.894352, 5.572693, 1.228264>,  <0.739639, 5.578107, 1.411661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.894352, 5.572693, 1.228264>,  <1.152207, 5.563669, 0.922602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.894352, 5.572693, 1.228264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614492, -0.579355, 0.535487,
		0.454797, 0.814763, 0.359612,
		-0.644638, 0.022559, 0.764155,
		0.700960, 5.579461, 1.457510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.502616, 5.570640, 1.613358>,  <1.152207, 5.563669, 0.922602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.502616, 5.570640, 1.613358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.153576, 5.384201, 1.671768>,  <0.944152, 5.272338, 1.706814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.153576, 5.384201, 1.671768>,  <1.502616, 5.570640, 1.613358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.153576, 5.384201, 1.671768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472496, -0.729762, 0.494161,
		-0.123763, 0.500201, 0.857019,
		-0.872600, -0.466097, 0.146025,
		0.891796, 5.244372, 1.715576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.389234, 5.451616, 2.221859>,  <1.502616, 5.570640, 1.613358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.389234, 5.451616, 2.221859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.214806, 5.155716, 2.016876>,  <1.110149, 4.978176, 1.893887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.214806, 5.155716, 2.016876>,  <1.389234, 5.451616, 2.221859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.214806, 5.155716, 2.016876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421963, -0.671050, 0.609622,
		-0.794852, 0.049601, 0.604773,
		-0.436071, -0.739751, -0.512455,
		1.083984, 4.933791, 1.863140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.247816, 4.943751, 2.711451>,  <1.389234, 5.451616, 2.221859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.247816, 4.943751, 2.711451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.276524, 4.774506, 2.350159>,  <1.293748, 4.672958, 2.133384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.276524, 4.774506, 2.350159>,  <1.247816, 4.943751, 2.711451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.276524, 4.774506, 2.350159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428965, -0.804445, 0.410923,
		-0.900466, -0.416945, 0.123768,
		0.071768, -0.423114, -0.903230,
		1.298054, 4.647572, 2.079190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.998534, 4.262373, 2.782998>,  <1.247816, 4.943751, 2.711451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.998534, 4.262373, 2.782998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.247017, 4.235703, 2.470676>,  <1.396107, 4.219700, 2.283283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.247017, 4.235703, 2.470676>,  <0.998534, 4.262373, 2.782998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.247017, 4.235703, 2.470676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346664, -0.870197, 0.350116,
		-0.702798, -0.488171, -0.517458,
		0.621207, -0.066676, -0.780805,
		1.433379, 4.215700, 2.236435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.179807, 3.543689, 2.720718>,  <0.998534, 4.262373, 2.782998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.179807, 3.543689, 2.720718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.447048, 3.685989, 2.459312>,  <1.607393, 3.771369, 2.302469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.447048, 3.685989, 2.459312>,  <1.179807, 3.543689, 2.720718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.447048, 3.685989, 2.459312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576862, -0.802395, 0.152945,
		-0.469965, -0.479170, -0.741302,
		0.668104, 0.355750, -0.653513,
		1.647479, 3.792714, 2.263258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.318134, 2.991245, 2.115434>,  <1.179807, 3.543689, 2.720718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.318134, 2.991245, 2.115434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.626823, 3.240967, 2.163910>,  <1.812037, 3.390800, 2.192996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.626823, 3.240967, 2.163910>,  <1.318134, 2.991245, 2.115434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.626823, 3.240967, 2.163910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629096, -0.777326, -0.001651,
		0.093174, 0.077515, -0.992628,
		0.771723, 0.624305, 0.121191,
		1.858340, 3.428258, 2.200267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.769957, 2.689801, 1.765707>,  <1.318134, 2.991245, 2.115434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.769957, 2.689801, 1.765707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.963413, 2.921555, 2.028130>,  <2.079487, 3.060606, 2.185583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.963413, 2.921555, 2.028130>,  <1.769957, 2.689801, 1.765707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.963413, 2.921555, 2.028130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726389, -0.683866, 0.068455,
		0.488316, 0.443444, -0.751602,
		0.483639, 0.579383, 0.656055,
		2.108505, 3.095369, 2.224946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.643614, 2.133465, 2.288764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.581233, 2.239319, 2.669426>,  <3.543804, 2.302831, 2.897823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.581233, 2.239319, 2.669426>,  <3.643614, 2.133465, 2.288764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.581233, 2.239319, 2.669426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574583, 0.759363, -0.305324,
		-0.803451, -0.594421, 0.033630,
		-0.155953, 0.264636, 0.951655,
		3.534447, 2.318710, 2.954922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.830587, 2.085994, 2.477270>,  <3.643614, 2.133465, 2.288764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.830587, 2.085994, 2.477270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.075939, 2.373383, 2.608459>,  <3.223150, 2.545815, 2.687173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.075939, 2.373383, 2.608459>,  <2.830587, 2.085994, 2.477270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.075939, 2.373383, 2.608459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690962, 0.689308, -0.217777,
		-0.382541, -0.093037, 0.919243,
		0.613380, 0.718470, 0.327973,
		3.259953, 2.588924, 2.706851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.610182, 2.545133, 3.090010>,  <2.830587, 2.085994, 2.477270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.610182, 2.545133, 3.090010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.826950, 2.736191, 2.813408>,  <2.957010, 2.850826, 2.647446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.826950, 2.736191, 2.813408>,  <2.610182, 2.545133, 3.090010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.826950, 2.736191, 2.813408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808426, 0.521163, -0.273563,
		0.229721, 0.707280, 0.668568,
		0.541918, 0.477645, -0.691506,
		2.989525, 2.879484, 2.605956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.614382, 3.268736, 3.150756>,  <2.610182, 2.545133, 3.090010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.614382, 3.268736, 3.150756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.709515, 3.222458, 2.764999>,  <2.766595, 3.194691, 2.533545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.709515, 3.222458, 2.764999>,  <2.614382, 3.268736, 3.150756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.709515, 3.222458, 2.764999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582422, 0.777595, -0.236919,
		0.777316, 0.618030, 0.117553,
		0.237832, -0.115695, -0.964391,
		2.780865, 3.187749, 2.475682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.807867, 3.922604, 2.907209>,  <2.614382, 3.268736, 3.150756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.807867, 3.922604, 2.907209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.623990, 3.677505, 2.650078>,  <2.513664, 3.530447, 2.495799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.623990, 3.677505, 2.650078>,  <2.807867, 3.922604, 2.907209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.623990, 3.677505, 2.650078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634053, 0.733271, -0.245540,
		0.621820, 0.294715, -0.725591,
		-0.459691, -0.612745, -0.642828,
		2.486083, 3.493682, 2.457229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.914587, 4.258644, 2.290324>,  <2.807867, 3.922604, 2.907209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.914587, 4.258644, 2.290324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.601755, 4.011124, 2.260826>,  <2.414056, 3.862611, 2.243127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.601755, 4.011124, 2.260826>,  <2.914587, 4.258644, 2.290324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.601755, 4.011124, 2.260826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558071, 0.748109, -0.359011,
		0.277326, -0.239620, -0.930415,
		-0.782078, -0.618801, -0.073745,
		2.367132, 3.825483, 2.238703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.608690, 4.341478, 1.586176>,  <2.914587, 4.258644, 2.290324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.608690, 4.341478, 1.586176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.309276, 4.177582, 1.794716>,  <2.129627, 4.079244, 1.919840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.309276, 4.177582, 1.794716>,  <2.608690, 4.341478, 1.586176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.309276, 4.177582, 1.794716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620057, 0.711155, -0.331342,
		-0.234997, -0.571289, -0.786388,
		-0.748536, -0.409741, 0.521351,
		2.084715, 4.054659, 1.951121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.048709, 4.323183, 1.114946>,  <2.608690, 4.341478, 1.586176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.048709, 4.323183, 1.114946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.897208, 4.302750, 1.484581>,  <1.806307, 4.290490, 1.706362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.897208, 4.302750, 1.484581>,  <2.048709, 4.323183, 1.114946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.897208, 4.302750, 1.484581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639552, 0.736166, -0.221436,
		-0.668970, -0.674871, -0.311494,
		-0.378752, -0.051083, 0.924087,
		1.783582, 4.287425, 1.761807>
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
