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
	<1.155059, -0.134587, 0.885642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.969685, -0.243172, 1.223053>,  <0.858460, -0.308322, 1.425499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.969685, -0.243172, 1.223053>,  <1.155059, -0.134587, 0.885642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.969685, -0.243172, 1.223053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771007, 0.345681, 0.534839,
		-0.436780, 0.898228, 0.049098,
		-0.463435, -0.271462, 0.843526,
		0.830654, -0.324610, 1.476111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.146272, 0.476935, 1.163196>,  <1.155059, -0.134587, 0.885642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.146272, 0.476935, 1.163196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.150364, 0.158745, 1.405556>,  <1.152819, -0.032169, 1.550972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.150364, 0.158745, 1.405556>,  <1.146272, 0.476935, 1.163196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.150364, 0.158745, 1.405556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788799, 0.378823, 0.484033,
		-0.614566, 0.472981, 0.631346,
		0.010230, -0.795476, 0.605899,
		1.153433, -0.079898, 1.587325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.380200, 0.692730, 1.791917>,  <1.146272, 0.476935, 1.163196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.380200, 0.692730, 1.791917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.414810, 0.297104, 1.839691>,  <1.435576, 0.059728, 1.868356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.414810, 0.297104, 1.839691>,  <1.380200, 0.692730, 1.791917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.414810, 0.297104, 1.839691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708366, 0.145377, 0.690712,
		-0.700522, 0.024839, 0.713199,
		0.086526, -0.989065, 0.119435,
		1.440768, 0.000385, 1.875522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.179248, 0.550143, 2.482654>,  <1.380200, 0.692730, 1.791917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.179248, 0.550143, 2.482654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.457405, 0.322182, 2.307549>,  <1.624299, 0.185405, 2.202485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.457405, 0.322182, 2.307549>,  <1.179248, 0.550143, 2.482654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.457405, 0.322182, 2.307549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691483, 0.364793, 0.623520,
		-0.195653, -0.736298, 0.647754,
		0.695393, -0.569904, -0.437765,
		1.666023, 0.151210, 2.176219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.433646, 0.100842, 2.967565>,  <1.179248, 0.550143, 2.482654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.433646, 0.100842, 2.967565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.772770, 0.106895, 2.755531>,  <1.976244, 0.110528, 2.628311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.772770, 0.106895, 2.755531>,  <1.433646, 0.100842, 2.967565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.772770, 0.106895, 2.755531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524246, 0.126696, 0.842090,
		0.079901, -0.991826, 0.099482,
		0.847811, 0.015131, -0.530084,
		2.027113, 0.111436, 2.596506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.905968, -0.359933, 3.341676>,  <1.433646, 0.100842, 2.967565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.905968, -0.359933, 3.341676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.105774, -0.084747, 3.131081>,  <2.225657, 0.080364, 3.004723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.105774, -0.084747, 3.131081>,  <1.905968, -0.359933, 3.341676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.105774, -0.084747, 3.131081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532333, 0.235707, 0.813058,
		0.683453, -0.686401, -0.248487,
		0.499514, 0.687965, -0.526489,
		2.255628, 0.121642, 2.973134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.591192, -0.517604, 3.441966>,  <1.905968, -0.359933, 3.341676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.591192, -0.517604, 3.441966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.638798, -0.143311, 3.309158>,  <2.667361, 0.081266, 3.229474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.638798, -0.143311, 3.309158>,  <2.591192, -0.517604, 3.441966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.638798, -0.143311, 3.309158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588466, 0.202859, 0.782660,
		0.799715, -0.288530, -0.526504,
		0.119015, 0.935734, -0.332019,
		2.674502, 0.137410, 3.209553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.352061, -0.433051, 3.354466>,  <2.591192, -0.517604, 3.441966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.352061, -0.433051, 3.354466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.176468, -0.077515, 3.407013>,  <3.071112, 0.135807, 3.438541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.176468, -0.077515, 3.407013>,  <3.352061, -0.433051, 3.354466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.176468, -0.077515, 3.407013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621646, 0.194893, 0.758665,
		0.648730, 0.414704, -0.638099,
		-0.438983, 0.888840, 0.131366,
		3.044773, 0.189137, 3.446423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.953964, 0.199415, 4.839627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.661370, 0.461060, 4.916641>,  <3.485814, 0.618046, 4.962850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.661370, 0.461060, 4.916641>,  <3.953964, 0.199415, 4.839627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.661370, 0.461060, 4.916641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366850, -0.139514, -0.919759,
		-0.574764, -0.743420, 0.342013,
		-0.731484, 0.654112, 0.192536,
		3.441925, 0.657293, 4.974402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.137722, -0.049358, 4.595227>,  <3.953964, 0.199415, 4.839627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.137722, -0.049358, 4.595227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.171468, 0.348419, 4.570045>,  <3.191715, 0.587086, 4.554936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.171468, 0.348419, 4.570045>,  <3.137722, -0.049358, 4.595227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.171468, 0.348419, 4.570045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341470, -0.030501, -0.939398,
		-0.936099, 0.100750, 0.337000,
		0.084366, 0.994444, -0.062955,
		3.196777, 0.646752, 4.551159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.511287, 0.162708, 4.388362>,  <3.137722, -0.049358, 4.595227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.511287, 0.162708, 4.388362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.785919, 0.443222, 4.311623>,  <2.950698, 0.611531, 4.265579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.785919, 0.443222, 4.311623>,  <2.511287, 0.162708, 4.388362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.785919, 0.443222, 4.311623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265053, -0.004287, -0.964224,
		-0.677020, 0.712867, 0.182935,
		0.686580, 0.701286, -0.191849,
		2.991893, 0.653608, 4.254068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.265569, 0.788918, 4.129683>,  <2.511287, 0.162708, 4.388362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.265569, 0.788918, 4.129683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.635400, 0.742279, 3.984596>,  <2.857298, 0.714295, 3.897545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.635400, 0.742279, 3.984596>,  <2.265569, 0.788918, 4.129683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.635400, 0.742279, 3.984596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380779, -0.250703, -0.890031,
		0.012842, 0.961017, -0.276193,
		0.924577, -0.116598, -0.362715,
		2.912773, 0.707300, 3.875782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.413111, 1.326003, 3.458744>,  <2.265569, 0.788918, 4.129683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.413111, 1.326003, 3.458744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.598598, 0.972061, 3.476624>,  <2.709890, 0.759696, 3.487351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.598598, 0.972061, 3.476624>,  <2.413111, 1.326003, 3.458744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.598598, 0.972061, 3.476624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274388, -0.191401, -0.942378,
		0.842423, 0.424732, -0.331550,
		0.463717, -0.884855, 0.044700,
		2.737713, 0.706605, 3.490033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.827690, 1.340247, 2.868573>,  <2.413111, 1.326003, 3.458744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.827690, 1.340247, 2.868573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.766400, 0.955399, 2.958771>,  <2.729627, 0.724490, 3.012889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.766400, 0.955399, 2.958771>,  <2.827690, 1.340247, 2.868573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.766400, 0.955399, 2.958771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212681, -0.190733, -0.958325,
		0.965033, -0.194796, -0.175399,
		-0.153223, -0.962120, 0.225493,
		2.720433, 0.666762, 3.026419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.061795, 0.993005, 2.258951>,  <2.827690, 1.340247, 2.868573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.061795, 0.993005, 2.258951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.834620, 0.734909, 2.463348>,  <2.698316, 0.580051, 2.585987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.834620, 0.734909, 2.463348>,  <3.061795, 0.993005, 2.258951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.834620, 0.734909, 2.463348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427682, -0.299094, -0.853013,
		0.703233, -0.702999, -0.106092,
		-0.567935, -0.645240, 0.510993,
		2.664240, 0.541337, 2.616646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.191520, 0.311812, 2.001273>,  <3.061795, 0.993005, 2.258951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.191520, 0.311812, 2.001273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.837846, 0.259689, 2.180710>,  <2.625641, 0.228416, 2.288372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.837846, 0.259689, 2.180710>,  <3.191520, 0.311812, 2.001273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.837846, 0.259689, 2.180710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391846, -0.315899, -0.864098,
		0.254308, -0.939802, 0.228253,
		-0.884186, -0.130306, 0.448593,
		2.572590, 0.220597, 2.315288>
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
