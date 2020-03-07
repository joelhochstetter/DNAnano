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
	<5.687963, 4.086215, 2.967978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.419712, 3.902977, 3.201357>,  <5.258762, 3.793034, 3.341384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.419712, 3.902977, 3.201357>,  <5.687963, 4.086215, 2.967978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.419712, 3.902977, 3.201357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717513, 0.600182, -0.353491,
		-0.188242, -0.655691, -0.731187,
		-0.670626, -0.458095, 0.583446,
		5.218524, 3.765548, 3.376391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.169656, 3.901088, 2.460672>,  <5.687963, 4.086215, 2.967978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.169656, 3.901088, 2.460672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.041534, 3.955580, 2.835659>,  <4.964661, 3.988275, 3.060651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.041534, 3.955580, 2.835659>,  <5.169656, 3.901088, 2.460672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.041534, 3.955580, 2.835659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654800, 0.683298, -0.323020,
		-0.684575, -0.717319, -0.129660,
		-0.320304, 0.136230, 0.937468,
		4.945443, 3.996449, 3.116899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.452592, 3.967817, 2.353670>,  <5.169656, 3.901088, 2.460672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.452592, 3.967817, 2.353670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.571423, 4.132351, 2.698356>,  <4.642721, 4.231071, 2.905167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.571423, 4.132351, 2.698356>,  <4.452592, 3.967817, 2.353670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.571423, 4.132351, 2.698356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583453, 0.792582, -0.177189,
		-0.755862, -0.450130, 0.475452,
		0.297076, 0.411335, 0.861713,
		4.660545, 4.255751, 2.956870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.912549, 4.086532, 2.694754>,  <4.452592, 3.967817, 2.353670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.912549, 4.086532, 2.694754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.183617, 4.345531, 2.834188>,  <4.346257, 4.500931, 2.917849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.183617, 4.345531, 2.834188>,  <3.912549, 4.086532, 2.694754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.183617, 4.345531, 2.834188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703568, 0.708781, 0.051207,
		-0.213915, -0.279955, 0.935877,
		0.677668, 0.647498, 0.348586,
		4.386917, 4.539781, 2.938764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.478565, 4.443983, 3.199353>,  <3.912549, 4.086532, 2.694754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.478565, 4.443983, 3.199353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.806030, 4.664501, 3.135025>,  <4.002510, 4.796812, 3.096428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.806030, 4.664501, 3.135025>,  <3.478565, 4.443983, 3.199353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.806030, 4.664501, 3.135025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543571, 0.834230, 0.092689,
		0.185259, 0.011536, 0.982622,
		0.818663, 0.551296, -0.160820,
		4.051630, 4.829890, 3.086779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.547838, 4.959646, 3.680024>,  <3.478565, 4.443983, 3.199353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.547838, 4.959646, 3.680024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.759457, 5.088549, 3.366015>,  <3.886428, 5.165890, 3.177610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.759457, 5.088549, 3.366015>,  <3.547838, 4.959646, 3.680024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.759457, 5.088549, 3.366015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620780, 0.777695, -0.099111,
		0.578569, 0.539761, 0.611487,
		0.529047, 0.322257, -0.785023,
		3.918171, 5.185225, 3.130509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.622781, 5.712438, 3.748195>,  <3.547838, 4.959646, 3.680024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.622781, 5.712438, 3.748195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.697262, 5.645033, 3.361014>,  <3.741951, 5.604590, 3.128706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.697262, 5.645033, 3.361014>,  <3.622781, 5.712438, 3.748195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.697262, 5.645033, 3.361014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390731, 0.891225, -0.230319,
		0.901475, 0.421095, 0.100105,
		0.186203, -0.168513, -0.967952,
		3.753123, 5.594479, 3.070629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.932638, 6.332317, 3.557267>,  <3.622781, 5.712438, 3.748195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.932638, 6.332317, 3.557267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.785660, 6.147621, 3.234335>,  <3.697473, 6.036804, 3.040576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.785660, 6.147621, 3.234335>,  <3.932638, 6.332317, 3.557267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.785660, 6.147621, 3.234335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423669, 0.855858, -0.296667,
		0.827942, 0.233032, -0.510106,
		-0.367446, -0.461739, -0.807330,
		3.675426, 6.009099, 2.992136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.235897, 1.787586, 2.647969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.511566, 1.671871, 2.382232>,  <2.676968, 1.602442, 2.222789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.511566, 1.671871, 2.382232>,  <2.235897, 1.787586, 2.647969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.511566, 1.671871, 2.382232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455684, -0.539817, 0.707778,
		-0.563380, -0.790511, -0.240200,
		0.689170, -0.289293, -0.664345,
		2.718318, 1.585085, 2.182929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.310187, 1.010618, 2.783538>,  <2.235897, 1.787586, 2.647969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.310187, 1.010618, 2.783538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.630409, 1.164761, 2.599969>,  <2.822543, 1.257246, 2.489827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.630409, 1.164761, 2.599969>,  <2.310187, 1.010618, 2.783538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.630409, 1.164761, 2.599969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592535, -0.623424, 0.510143,
		-0.089516, -0.680325, -0.727423,
		0.800556, 0.385357, -0.458923,
		2.870576, 1.280368, 2.462292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.733713, 0.460162, 2.457659>,  <2.310187, 1.010618, 2.783538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.733713, 0.460162, 2.457659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.987648, 0.765645, 2.504527>,  <3.140009, 0.948935, 2.532648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.987648, 0.765645, 2.504527>,  <2.733713, 0.460162, 2.457659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.987648, 0.765645, 2.504527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728843, -0.642258, 0.237261,
		0.256452, -0.065223, -0.964354,
		0.634838, 0.763709, 0.117171,
		3.178100, 0.994758, 2.539679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.328803, 0.377618, 1.966836>,  <2.733713, 0.460162, 2.457659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.328803, 0.377618, 1.966836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.430443, 0.593142, 2.288113>,  <3.491426, 0.722456, 2.480879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.430443, 0.593142, 2.288113>,  <3.328803, 0.377618, 1.966836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.430443, 0.593142, 2.288113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734582, -0.647717, 0.202118,
		0.629145, 0.538652, -0.560384,
		0.254099, 0.538810, 0.803192,
		3.506672, 0.754784, 2.529071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.959755, 0.470365, 1.816488>,  <3.328803, 0.377618, 1.966836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.959755, 0.470365, 1.816488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.908401, 0.508075, 2.211381>,  <3.877589, 0.530701, 2.448318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.908401, 0.508075, 2.211381>,  <3.959755, 0.470365, 1.816488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.908401, 0.508075, 2.211381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806272, -0.569705, 0.159254,
		0.577446, 0.816424, -0.002869,
		-0.128384, 0.094274, 0.987234,
		3.869886, 0.536357, 2.507551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.660642, 0.484187, 2.066537>,  <3.959755, 0.470365, 1.816488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.660642, 0.484187, 2.066537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.426018, 0.411797, 2.382308>,  <4.285244, 0.368362, 2.571770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.426018, 0.411797, 2.382308>,  <4.660642, 0.484187, 2.066537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.426018, 0.411797, 2.382308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665404, -0.663358, 0.342334,
		0.461719, 0.726088, 0.509521,
		-0.586560, -0.180975, 0.789427,
		4.250050, 0.357504, 2.619136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.030051, 0.618106, 2.674742>,  <4.660642, 0.484187, 2.066537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.030051, 0.618106, 2.674742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.734131, 0.369373, 2.777520>,  <4.556579, 0.220134, 2.839186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.734131, 0.369373, 2.777520>,  <5.030051, 0.618106, 2.674742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.734131, 0.369373, 2.777520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623755, -0.490697, 0.608397,
		-0.252238, 0.610363, 0.750888,
		-0.739801, -0.621831, 0.256944,
		4.512190, 0.182824, 2.854603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.290775, 0.373529, 3.329595>,  <5.030051, 0.618106, 2.674742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.290775, 0.373529, 3.329595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.018593, 0.113686, 3.193954>,  <4.855284, -0.042220, 3.112569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.018593, 0.113686, 3.193954>,  <5.290775, 0.373529, 3.329595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.018593, 0.113686, 3.193954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446628, -0.734523, 0.510881,
		-0.580951, 0.196178, 0.789943,
		-0.680455, -0.649607, -0.339103,
		4.814456, -0.081197, 3.092223>
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
