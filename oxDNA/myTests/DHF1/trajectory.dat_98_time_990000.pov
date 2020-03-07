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
	<3.983402, 0.532141, 5.518797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.650741, 0.613670, 5.725411>,  <3.451144, 0.662588, 5.849380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.650741, 0.613670, 5.725411>,  <3.983402, 0.532141, 5.518797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.650741, 0.613670, 5.725411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291572, 0.631368, -0.718582,
		-0.472588, -0.748218, -0.465650,
		-0.831653, 0.203823, 0.516536,
		3.401245, 0.674817, 5.880373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.348806, 0.438024, 5.161572>,  <3.983402, 0.532141, 5.518797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.348806, 0.438024, 5.161572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.331055, 0.740593, 5.422603>,  <3.320404, 0.922135, 5.579221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.331055, 0.740593, 5.422603>,  <3.348806, 0.438024, 5.161572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.331055, 0.740593, 5.422603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191120, 0.634726, -0.748730,
		-0.980563, -0.157948, 0.116399,
		-0.044378, 0.756423, 0.652575,
		3.317741, 0.967520, 5.618375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.658308, 0.831160, 5.137611>,  <3.348806, 0.438024, 5.161572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.658308, 0.831160, 5.137611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.975585, 1.060837, 5.218751>,  <3.165952, 1.198643, 5.267435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.975585, 1.060837, 5.218751>,  <2.658308, 0.831160, 5.137611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.975585, 1.060837, 5.218751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228514, 0.589408, -0.774842,
		-0.564468, 0.568246, 0.598726,
		0.793194, 0.574191, 0.202850,
		3.213544, 1.233094, 5.279606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.466663, 1.533999, 4.971756>,  <2.658308, 0.831160, 5.137611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.466663, 1.533999, 4.971756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.866555, 1.542992, 4.969476>,  <3.106491, 1.548387, 4.968107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.866555, 1.542992, 4.969476>,  <2.466663, 1.533999, 4.971756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.866555, 1.542992, 4.969476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017274, 0.557726, -0.829846,
		-0.015476, 0.829721, 0.557964,
		0.999731, 0.022481, -0.005702,
		3.166475, 1.549736, 4.967765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.788484, 2.263059, 4.982028>,  <2.466663, 1.533999, 4.971756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.788484, 2.263059, 4.982028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.049636, 2.023064, 4.797090>,  <3.206327, 1.879066, 4.686127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.049636, 2.023064, 4.797090>,  <2.788484, 2.263059, 4.982028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.049636, 2.023064, 4.797090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059661, 0.649224, -0.758254,
		0.755109, 0.467464, 0.459660,
		0.652879, -0.599988, -0.462345,
		3.245500, 1.843067, 4.658386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.331095, 2.670111, 4.821146>,  <2.788484, 2.263059, 4.982028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.331095, 2.670111, 4.821146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.346159, 2.372780, 4.553999>,  <3.355197, 2.194381, 4.393711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.346159, 2.372780, 4.553999>,  <3.331095, 2.670111, 4.821146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.346159, 2.372780, 4.553999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099570, 0.667807, -0.737645,
		0.994318, -0.038721, 0.099162,
		0.037659, -0.743327, -0.667867,
		3.357456, 2.149782, 4.353639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.867819, 2.922398, 4.267873>,  <3.331095, 2.670111, 4.821146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.867819, 2.922398, 4.267873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.700699, 2.606789, 4.087702>,  <3.600427, 2.417423, 3.979599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.700699, 2.606789, 4.087702>,  <3.867819, 2.922398, 4.267873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.700699, 2.606789, 4.087702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067907, 0.521505, -0.850542,
		0.905998, -0.324769, -0.271465,
		-0.417800, -0.789024, -0.450428,
		3.575359, 2.370082, 3.952574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.325813, 2.704425, 3.791235>,  <3.867819, 2.922398, 4.267873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.325813, 2.704425, 3.791235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.950332, 2.630981, 3.674528>,  <3.725044, 2.586915, 3.604504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.950332, 2.630981, 3.674528>,  <4.325813, 2.704425, 3.791235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.950332, 2.630981, 3.674528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081732, 0.703691, -0.705790,
		0.334902, -0.686372, -0.645549,
		-0.938702, -0.183608, -0.291766,
		3.668722, 2.575899, 3.586998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.338189, 3.423239, 2.731805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.004337, 3.433861, 2.511736>,  <3.804027, 3.440234, 2.379694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.004337, 3.433861, 2.511736>,  <4.338189, 3.423239, 2.731805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.004337, 3.433861, 2.511736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517268, -0.381034, 0.766320,
		-0.189286, 0.924180, 0.331757,
		-0.834628, 0.026553, -0.550173,
		3.753949, 3.441827, 2.346684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.907885, 3.264029, 3.207095>,  <4.338189, 3.423239, 2.731805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.907885, 3.264029, 3.207095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.670082, 3.248070, 2.885855>,  <3.527400, 3.238495, 2.693111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.670082, 3.248070, 2.885855>,  <3.907885, 3.264029, 3.207095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.670082, 3.248070, 2.885855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621720, -0.610577, 0.490570,
		-0.509927, 0.790951, 0.338188,
		-0.594507, -0.039897, -0.803100,
		3.491730, 3.236101, 2.644925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.221338, 3.507545, 3.376151>,  <3.907885, 3.264029, 3.207095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.221338, 3.507545, 3.376151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.243031, 3.238968, 3.080523>,  <3.256046, 3.077822, 2.903146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.243031, 3.238968, 3.080523>,  <3.221338, 3.507545, 3.376151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.243031, 3.238968, 3.080523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380740, -0.698146, 0.606324,
		-0.923090, 0.248512, -0.293507,
		0.054232, -0.671442, -0.739070,
		3.259300, 3.037535, 2.858801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.630618, 3.124053, 3.424277>,  <3.221338, 3.507545, 3.376151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.630618, 3.124053, 3.424277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.931591, 2.910400, 3.270107>,  <3.112175, 2.782209, 3.177606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.931591, 2.910400, 3.270107>,  <2.630618, 3.124053, 3.424277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.931591, 2.910400, 3.270107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169513, -0.722473, 0.670297,
		-0.636484, -0.439019, -0.634154,
		0.752432, -0.534130, -0.385423,
		3.157320, 2.750161, 3.154480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.529768, 2.313081, 3.247786>,  <2.630618, 3.124053, 3.424277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.529768, 2.313081, 3.247786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.917301, 2.379219, 3.321569>,  <3.149821, 2.418902, 3.365839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.917301, 2.379219, 3.321569>,  <2.529768, 2.313081, 3.247786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.917301, 2.379219, 3.321569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018365, -0.790523, 0.612157,
		0.247037, -0.589689, -0.768921,
		0.968832, 0.165346, 0.184459,
		3.207951, 2.428823, 3.376907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.865463, 1.609423, 3.200917>,  <2.529768, 2.313081, 3.247786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.865463, 1.609423, 3.200917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.073868, 1.840431, 3.452318>,  <3.198911, 1.979036, 3.603159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.073868, 1.840431, 3.452318>,  <2.865463, 1.609423, 3.200917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.073868, 1.840431, 3.452318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045600, -0.754121, 0.655150,
		0.852330, -0.312682, -0.419241,
		0.521013, 0.577521, 0.628502,
		3.230172, 2.013688, 3.640869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.448174, 1.161040, 3.498523>,  <2.865463, 1.609423, 3.200917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.448174, 1.161040, 3.498523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.437588, 1.461311, 3.762577>,  <3.431236, 1.641474, 3.921010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.437588, 1.461311, 3.762577>,  <3.448174, 1.161040, 3.498523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.437588, 1.461311, 3.762577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143656, -0.650657, 0.745659,
		0.989274, 0.114566, -0.090620,
		-0.026465, 0.750680, 0.660136,
		3.429648, 1.686515, 3.960618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.904703, 0.913167, 4.083714>,  <3.448174, 1.161040, 3.498523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.904703, 0.913167, 4.083714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.706722, 1.217796, 4.251060>,  <3.587934, 1.400574, 4.351468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.706722, 1.217796, 4.251060>,  <3.904703, 0.913167, 4.083714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.706722, 1.217796, 4.251060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031255, -0.465562, 0.884463,
		0.868358, 0.450842, 0.206628,
		-0.494951, 0.761573, 0.418366,
		3.558237, 1.446268, 4.376570>
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
